const Folo6_state = require('../models/m_folo6_approve_state');
const Folo6 = require('../models/m_folo6');
const Driver = require('../models/m_driver');
const Driver_assign = require('../models/m_driver_assign');
const moment = require('moment');
const Vehicle = require('../models/m_vehicle');
const Vehicle_assign = require('../models/m_vehicle_folo6_assign');

moment.locale("Es-SV");

class driver_assign_controller {
    constructor() {}

    async getAssign(req, res) {
        try {
            //id del folo a asignarle un motorista
            let folo06_id = req.query.folo06_id;
            //Necesario para ir a cambiar el estado a "Asignado" en la tabla de estados de solicitudes
            let state_id = req.query.state_id;
            //obtengo todos los motoristas en la base para mostrarlos en un dropdown
            var folo = await Folo6.findOne({
                where: {
                    id: folo06_id
                },
                attributes: ['with_driver']
            });
            let WDriver = folo.with_driver;
            let motoristas;
            let vehiculos;
            if (WDriver == true) {
                motoristas = await Driver.findAll();
            }
            vehiculos = await Vehicle.findAll({
                where: {
                    state: 'Funcional',
                }
            });
            res.render('../views/driver_assign/assign.html', {
                WDriver,
                vehiculos,
                motoristas,
                folo06_id,
                state_id
            }); //renderizado de páginas
            /* console.log(motoristas); */ //muestra en consola el listado de motoristas obtenidos
        } catch (error) {
            console.log(error);
        };
    };
    async getList(req, res) {
        try {
            /*Obtiene todos los registros de la tabla de estado de solicitudes que ya han sido
            aprobados por el jefe de transporte pero no han sido asignados a un motorista*/
            let folos_ids = await Folo6_state.findAll({
                where: {
                    transport_unit_approve: 1,
                    driver_assigned: 0
                }
            });
            //arrays que contienen únicamente los ids de los folos y de los estados de los folos
            let values = [];
            /*Se inicializa con un valor a 0 porque en la vista cuando recorro todos los folos
            también necesito recorrer el array de estados. Para esto ocupo la variable
            'loop.index'(variable interna de Nunjucks) como índice del arreglo de estados para recorrerlo.
            
            Esta variable comienza en 1, los arrays en 0, entonces al asignar ids de estado se salta
            la primera posición del array si no lo inicializo. Se inicia con valor 0 ya que nunca
            existirá un id cuyo valor sea 0 en la BD.

            Acá posiblemente la relación Estado_Folo (padre) -> Folo06 (hijo) esté mala y 
            sea necesaria hacerla bidireccional, ya que este problema se arreglaría enviando 
            el estado de la solicitud como una FK dentro del Folo.*/
            let state_ids_values = [0];
            //Ciclo de extracción y asignación de ids de folo y de estado.
            folos_ids.forEach(element => {
                var v = element.folo06_id;
                var i = element.id;
                values.push(v);
                state_ids_values.push(i);
            });
            //Muestra en consola los valores obtenidos como comprobación
            /* console.log(values);
            console.log(state_ids_values); */
            let Folos;
            /*Obtiene de la base todos los folos cuyos ids estén en el array 'values' y hayan
            seleccionado que sí quieren motorista*/
            Folos = await Folo6.findAll({
                where: {
                    id: values
                    /* with_driver: 1, */
                }
            });
            //Se muestra en consola el listado de folos obtenido como comprobación
            /* console.log(Folos); */
            var data = [];
            Folos.forEach(folo => {
                var el = new Object();
                el.id = folo.id;
                //La BD envia las fechas y horas en formato utc por ello se debe convertir al formato especificado en el método format(). Revisar documentación de moment.js
                el.off_date = moment.utc(folo.off_date).format("DD/MM/YYYY");
                el.off_hour = moment.utc(folo.off_hour).format("h:mm A");
                el.return_hour = moment.utc(folo.return_hour).format("h:mm A");
                el.passengers_number = folo.passengers_number;
                el.mission = folo.mission;
                el.created_at = moment.utc(folo.created_at).utcOffset("-06:00").format("DD/MM/YYYY");
                el.employee_id = folo.employee_id;
                data.push(el);
            });
            console.log(data);
            res.render('../views/driver_assign/list.html', {
                Folos: data,
                ids: state_ids_values
            }); //Renderizado de formulario.
        } catch (error) {
            console.log(error); //Muestra errores en consola.
        };
    };

    async asignarMotorista(req, res) {
        try {
            //Obtiene del cuerpo de la petición los ids del folo, estado de folo y motorista seleccionado
            let {
                WDriver,
                folo06_id,
                driver_id,
                state_id,
                vehicle_id
            } = req.body;
            //Muestra en consola el cuerpo de la petición
            console.log(req.body);
            //Se crea la asignación con el id del folo y el id del motorista asignado a dicho folo
            if (WDriver == "true") {
                await Driver_assign.create({
                    driver_id,
                    folo06_id,
                });
            }
            await Vehicle_assign.create({
                vehicle_id,
                folo06_id,
            });
            //Actualizo el estado de la solicitud a 'asignado'.
            await Folo6_state.update({
                driver_assigned: 1,
                car: 1
            }, {
                where: {
                    id: state_id
                }
            });
            //Regresa al listado de solicitudes sin asignar.
            res.redirect('/control_de_ruta');
        } catch (error) {
            console.log(error); //Muestra errores en consola.
        };
    };
};

module.exports = new driver_assign_controller();