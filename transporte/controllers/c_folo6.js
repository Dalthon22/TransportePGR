const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');
const Folo6 = require('../models/m_folo6');
var moment = require('moment');
moment.locale("Es-SV")
/* const Migration = require('../models/migrations');
 */
const {
    body,
    check,
    validationResult
} = require('../middleware/expresse-validator');

class folo6_controllers {
    constructor() {
        //var migrate = new Migration();
    }
    //Método que envía los folos ingresados de forma que puedan ser renderizados en un datatable; incluye iconos de eliminado y de edición.
    async getList(req, res) {
        var day, mont, year;
        try {
            /******FALTA: LISTAR LOS VALES QUE CORRESPONDEN A UN SOLO EMPLEADO*/
            var folos = await Folo6.findAll({
                attributes: ['id', 'off_date', 'off_hour', 'return_hour', 'passengers_number', 'with_driver']
            });
            //console.log(d);
            //data contendrá todos los folos extraídos de la BD
            var data = [];
            folos.forEach((row, i) => {
                var el = new Object();
                //La BD envia las fechas y horas en formato utc por ello se debe convertir al formato especificado en el método format(). Revisar documentación de moment.js
                el.off_date = moment.utc(row.off_date).format("DD MMMM YYYY");
                el.off_hour = moment.utc(row.off_hour).format("h:mm A");
                el.return_hour = moment.utc(row.return_hour).format("h:mm A");
                el.passengers_number = row.passengers_number;
                //Si with_driver = true, envía la cadena "Si"
                el.with_driver = row.with_driver ? "Si" : "No";
                //Icono para visualizar el folo. Enlance y un icono de lapiz para editar el folo. Un icono de eliminado. Ambos tiene por identificardor el id del folo que ha ido a traer a la BD
                //var today = moment().format("DD MMMM YYYY");
                var trully = moment().isBefore(moment.utc(row.off_date).format("DD MMMM YYYY"))
                console.log("FECHA ES: " + trully);
                if (trully)
                    el.buttons = '<i id="' + row.id + '" class="print link icon "></i><i id="' + row.id + '" class="file alternate outline link icon "></i><a href="/solicitud_nueva/' + row.id + '"><i class="pencil yellow alternate link icon"></i></a><i class="remove grey alternate link icon" id="' + row.id + '"></i>';
                else
                    el.buttons = '<i id="' + row.id + '" class="print link icon "></i><i id="' + row.id + '" class="file alternate outline link icon "></i>'



                data.push(el);
            });
            // console.dir(data);
            //Envío de los folos en formato JSON
            res.send({
                data: data
            });
        } catch (error) {
            console.log(error);
        }
    };
    //Envía el folo solicitado en el formato en que fueron ingresados. Este se utiliza principalmente en la pantalla para hacer el update al folo6
    async getOne(req, res) {
        try {
            var folo = await Folo6.findAll({
                where: {
                    id: req.params.id
                },
                attributes: ['id', 'off_date', 'off_hour', 'return_hour', 'passengers_number', 'with_driver', 'person_who_drive', 'license_type', 'mission', 'observation', 'created_at', 'employee_id']
            });
            console.dir(folo);
            var el = new Object();
            folo.forEach((folo, i) => {
                el.id = folo.id;
                //La BD envia las fechas y horas en formato utc por ello se debe convertir al formato especificado en el método format(). Revisar documentación de moment.js
                el.off_date = moment.utc(folo.off_date).format("DD/MM/YYYY");
                el.off_hour = moment.utc(folo.off_hour).format("h:mm A");
                el.return_hour = moment.utc(folo.return_hour).format("h:mm A");
                el.passengers_number = folo.passengers_number;
                //Se envía '1' ó '0' por que el checkbox "Con motorista" reconoce ambos como estados válidos.
                el.with_driver = folo.with_driver ? 1 : 0;
                el.person_who_drive = folo.person_who_drive;
                el.license_type = folo.license_type;
                el.mission = folo.mission;
                el.observation = folo.observation;
                el.created_at = moment.utc(folo.created_at).format("DD/MM/YYYY");
                el.employee_id = folo.employee_id;
            });

            console.log(el);
            // console.dir(data);
            res.render('./folo6/folo6_edit.html', {
                folo: el
            });
            //return folo;
        } catch (error) {
            console.log(error);
        }
    };
    //Método para enviar en forma de string todos los atributos del folo 6 se utiliza para mostrar en un modal el folo ya sea para ver todos los atributos o para eliminarlos
    //*** FALTA MANDAR COMO STRING LAS DIRECCIONES */
    async foloToString(req, res) {
        try {
            var folo = await Folo6.findAll({
                where: {
                    id: req.params.id
                },
                attributes: ['id', 'off_date', 'off_hour', 'return_hour', 'passengers_number', 'with_driver', 'person_who_drive', 'license_type', 'mission', 'observation', 'created_at', 'employee_id']
            });
            console.dir(folo);
            var el = new Object();
            folo.forEach((folo, i) => {
                el.id = folo.id;
                //La BD envia las fechas y horas en formato utc por ello se debe convertir al formato especificado en el método format(). Revisar documentación de moment.js
                el.off_date = moment.utc(folo.off_date).format("DD/MM/YYYY");
                el.off_hour = moment.utc(folo.off_hour).format("h:mm A");
                el.return_hour = moment.utc(folo.return_hour).format("h:mm A");
                el.passengers_number = folo.passengers_number;
                el.with_driver = folo.with_driver ? 1 : 0;
                el.person_who_drive = folo.person_who_drive;
                el.license_type = folo.license_type;
                el.mission = folo.mission;
                el.observation = folo.observation;
                el.created_at = moment.utc(folo.created_at).format("DD/MM/YYYY");
                el.employee_id = folo.employee_id;
            });

            console.log(el);
            // console.dir(data);
            //Envía los datos de 'el' a la vista. En ella se debe acceder a sus atributos en forma: data.folo.x; x es cualquier atributo del folo enviado
            res.send({
                folo: el
            });
            //return folo;
        } catch (error) {
            console.log(error);
        }
    };
    //Este metodo recibe los parametros del req y con ellos crea el folo en la BD
    async createFolo6(req, res) {
        var form, emp, date, motorista;
        //Convierte los json enviados por un post de ajax
        motorista = JSON.parse(req.body.motorista);
        console.dir("form: " + JSON.stringify(motorista + "Y del tipo:" + typeof (motorista)));
        form = JSON.parse(req.body.form);
        console.dir("form: " + JSON.stringify(form));
        emp = JSON.parse(req.body.emp);
        console.dir("emp: " + JSON.stringify(emp) + "id: " + emp.id);

        try {
            const errors = validationResult(req);
            //Conversion al formato permitido por sequelize YYYY-MM-DD y horas HH:mm (Formato 24 hrs)
            date = moment(form.calendar1, "DD/MM/YYYY").format("YYYY-MM-DD");
            var t = moment(form.time, ["h:mm A"]).format("HH:mm");
            var t1 = moment(form.time1, ["h:mm A"]).format("HH:mm");

            //errors es una variable declara para las validaciones realizadas en express
            //console.log(errors.array());

            if (!errors.isEmpty()) {
                res.send({
                    title: "Error al guardar los datos",
                    message: "Ocurrio un error mientras se guardaban los datos, intente de nuevo, si el error persiste recargue la pagina o contacte a soporte",
                    type: 1
                });
            } else {
                console.log("Estoy en el create");
                //Si en el folo 6 selecciono motorista se llenará con estos datos la BD
                if (motorista) {
                    let f = await Folo6.create({
                        request_unit: emp.unit_id,
                        off_date: date,
                        off_hour: t,
                        return_hour: t1,
                        passengers_number: form.passengers_i,
                        with_driver: motorista,
                        person_who_drive: null,
                        license_type: null,
                        mission: form.mision_i,
                        observation: form.details_i,
                        employee_id: emp.id,
                        // procuraduria_id: emp.procuraduria_id
                    });
                    //Folo creado
                    console.dir("Folo creado" + f);

                } else {
                    //Si en el folo 6 NO selecciono motorista se llenará con estos datos la BD

                    let f = await Folo6.create({
                        request_unit: emp.unit_id,
                        off_date: date,
                        off_hour: t,
                        return_hour: t1,
                        passengers_number: form.passengers_i,
                        with_driver: motorista,
                        person_who_drive: form.name_driver_i,
                        license_type: form.license_ls,
                        mission: form.mision_i,
                        observation: form.details_i,
                        employee_id: emp.id,
                        //procuraduria_id: emp.procuraduria_id
                    });
                    console.dir("Folo creado" + f);
                }

                //Departamento
                console.log("sali del create");
                //Datos que se envían a la vista 
                res.send({
                    message: "Datos agregados con exito",
                    type: 0,
                    redirect: "/home",
                    status: 200
                });
            }
        } catch (err) {
            console.log("Ocurrio en el método create" + err);
            res.send({
                title: "Error al guardar los datos",
                message: "Ocurrio un error mientras se guardaban los datos, intente de nuevo, si el error persiste recargue la pagina o contacte a soporte",
                type: 1
            });
            //throw new Error(" Ocurre ingresando los vales en la BD " + err);
        }
    }
    //Recibe los datos actulizados para un registro de folo 6
    async editFolo6(req, res) {
        var form, emp, date, motorista;
        motorista = JSON.parse(req.body.motorista);
        console.dir("form: " + JSON.stringify(motorista + "Y del tipo:" + typeof (motorista)));
        form = JSON.parse(req.body.form);
        console.dir("form: " + JSON.stringify(form));
        emp = JSON.parse(req.body.emp);
        console.dir("emp: " + JSON.stringify(emp) + "id: " + emp.id);

        try {
            console.log("Solicito editar el folo con id: " + form.folo_id);

            //errors es una variable declara para las validaciones realizadas en express
            //console.log(errors.array());            //Conversion al formato permitido por sequelize YYYY-MM-DD y horas HH:mm (Formato 24 hrs)
            date = moment(form.calendar1, "DD/MM/YYYY").format("YYYY-MM-DD");
            var t = moment(form.time, ["h:mm A"]).format("HH:mm");
            var t1 = moment(form.time1, ["h:mm A"]).format("HH:mm");

            console.log(errors.array());
            if (!errors.isEmpty()) {
                res.send({
                    title: "Error al guardar los datos",
                    message: "Ocurrio un error mientras se guardaban los cambios, intente de nuevo, si el error persiste recargue la pagina o contacte a soporte",
                    type: 1
                });
            } else {
                console.log("Estoy en el edit");
                if (motorista) {
                    console.log("Estoy en el true del edit");

                    let f = await Folo6.update({
                        request_unit: emp.unit_id,
                        off_date: date,
                        off_hour: t,
                        return_hour: t1,
                        passengers_number: form.passengers_i,
                        with_driver: motorista,
                        person_who_drive: null,
                        license_type: null,
                        mission: form.mision_i,
                        observation: form.details_i,
                        employee_id: emp.id,
                        // procuraduria_id: emp.procuraduria_id
                    }, {
                        where: {
                            id: form.folo_id
                        }
                    });
                    console.dir("Folo actualizado" + f);

                } else {
                    console.log("Estoy en el else del edit");
                    console.log("En el controller me dice que tiene esta licencia" + form.license_ls);
                    let f = await Folo6.update({
                        request_unit: emp.unit_id,
                        off_date: date,
                        off_hour: t,
                        return_hour: t1,
                        passengers_number: form.passengers_i,
                        with_driver: motorista,
                        person_who_drive: form.name_driver_i,
                        license_type: form.license_ls,
                        mission: form.mision_i,
                        observation: form.details_i,
                        employee_id: emp.id,
                        //procuraduria_id: emp.procuraduria_id
                    }, {
                        where: {
                            id: form.folo_id
                        }
                    });
                    console.dir("Folo actualizado" + f);
                }

                //Departamento
                console.log("sali del create");
                res.send({
                    message: "Datos actualizados con exito",
                    type: 0,
                    redirect: "/home",
                    status: 200
                });
            }
        } catch (err) {
            console.log("Ocurrio en el método edit" + err);
            res.send({
                title: "Error al guardar los cambios",
                message: "Ocurrio un error mientras se actualizaban los datos, intente de nuevo, si el error persiste recargue la pagina o contacte a soporte",
                type: 1
            });
            //throw new Error(" Ocurre ingresando los vales en la BD " + err);
        }
    }
    //Elima el folo indicado como parametros en req.params.id 
    async deleteFolo(req, res) {
        try {
            var folo = await Folo6.destroy({
                where: {
                    id: req.params.id
                },
            });
            res.send({
                    type: 0,
                    title: "Datos eliminados con éxito",
                    message: "Folo" + req.params.id + " eliminado con exito",
                }

            );
        } catch (err) {
            res.send({
                title: "Error al eliminar los datos",
                message: "Ocurrio un error mientras se eliminaban los datos, intente de nuevo, si el error persiste recargue la pagina o contacte a soporte",
                type: 1
            });
        }
    }
}

module.exports = new folo6_controllers();