const Asignacion = require('../models/m_voucher_folo6_assign');
const Vehiculo = require('../models/m_vehicle');
const employee = require('../models/m_employee');
const folo6 = require('../models/m_folo6');
const folo6_approve = require('../models/m_folo6_approve_state');
const Vales = require('../models/m_voucher');
const Vehicle_folo6_assign = require('../models/m_vehicle_folo6_assign');

//Manejo de fechas
var moment = require('moment');
moment.locale("Es-SV")

const {
    validationResult
} = require('express-validator');

class assign_controller {
    constructor() {}

    async getAsignarVales(req, res) {
        try {
            /* Se buscan todos los folos que hayan sido aprobados por cada unidad */
            /* Se hace un join de Empleados,Folo6 y folo6_apporve */
            var folos = await folo6.findAll({
                include: [{
                    model: Vehicle_folo6_assign,
                    raw: true,
                    required: true,
                    include: [{
                        model: Vehiculo,
                        raw: true,
                    }]
                }, {
                    model: folo6_approve,
                    /*                     where: {
                                            transport_unit_approve: 1,
                                            car: 1, //Vehiculo asignado
                                            driver: 1,
                                            gasoline: 0, //Aprobados
                                            cancel_tunit_detail: null //Que no haya sido cancelado
                                        } */
                }]
            });
            console.log(folos);
            /* Se enviara un array con todos los folos con los datos a mostrar */
            var data = [];
            /* Recorremos cada empleado y luego por todos los folos que tienen */
            folos.forEach((folo, i) => {
                /* Se asignara a una variable el para luego ñadirla a la data */
                var el = new Object();
                console.log(folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo);
                el.V_model = folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo.model;
                el.V_brand = folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo.brand;
                el.V_Plate = folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo.plate;
                el.V_id = folo.SGT_Vehiculo_Asignado_Folo6.SGT_Vehiculo.id;
                el.Veh_f06_id = folo.SGT_Vehiculo_Asignado_Folo6.id;
                var formatted_date = moment.utc(folo.off_date).format("DD MMMM YYYY");
                el.off_date = formatted_date;
                el.passengers_number = folo.passengers_number;
                el.mission = folo.mission;
                el.folo6id = folo.id;
                el.wDriver = folo.with_driver;
                el.off_hour = moment.utc(folo.off_hour).format("h:mm A");
                data.push(el);

            });
            var Cars = await Vehiculo.findAll({
                where: {
                    state: 'Funcional',
                }
            });
            return res.render('../views/voucher/assign.html', {
                Cars,
                data,
            });
        } catch (error) {
            console.log(error);
        }
    };
    async crearAsignacionVales(req, res) {
        try {
            const errors = validationResult(req);
            let {
                license_type,
                cant,
                foloA_id,
                fecha_folo
            } = req.body;
            if (!errors.isEmpty()) {
                getAsignar(req, res);
            } else {
                console.log(cant);
                console.log(license_type);
                console.log(foloA_id);
                try {
                    var vales_lista = await Vales.findAll({
                        attributes: ['num_voucher'],
                        top: cant,
                        where: {
                            condition: 'Disponible',
                        }
                    });
                    var fecha = moment.utc(fecha_folo, 'DD MMMM YYYY').format('YYYY/MM/DD')
                    for (var i = 0; i < cant; i++) {
                        console.log(vales_lista[i].num_voucher);
                        await Asignacion.create({
                            date_voucher_f6: fecha,
                            num_voucher: vales_lista[i].num_voucher,
                            folo6_id: foloA_id,
                            vehicle_plate: license_type
                        });
                        await Vales.update({
                            condition: 'Asignado',
                        }, {
                            where: {
                                num_voucher: vales_lista[i].num_voucher
                            }
                        });
                    }
                    await folo6_approve.update({
                        car: 1,
                        gasoline: 1
                    }, {
                        where: {
                            folo06_id: foloA_id
                        }
                    });
                    res.redirect('/asignar_recursos');
                } catch (errors) {
                    console.log(errors);
                    res.redirect('/asignar_recursos');
                }
            }
        } catch (error) {
            console.log(error);
        }
    };

    async getAsignaciones(req, res) {
        var plate = "P1234";

    }

}

module.exports = new assign_controller();