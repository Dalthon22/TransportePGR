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
    async getList(req, res) {
        try {
            /******FALTA: LISTAR LOS VALES QUE CORRESPONDEN A UN SOLO EMPLEADO*/
            var folos = await Folo6.findAll({
                attributes: ['id', 'off_date', 'off_hour', 'return_hour', 'passengers_number', 'with_driver']
            });
            //console.log(d);
            var data = [];
            folos.forEach((row, i) => {
                var el = new Object();
                el.off_date = moment.utc(row.off_date).format("DD MMMM YYYY");
                el.off_hour = moment.utc(row.off_hour).format("h:mm A");
                el.return_hour = moment.utc(row.return_hour).format("h:mm A");
                el.passengers_number = row.passengers_number;
                el.with_driver = row.with_driver ? "Si" : "No";
                el.buttons = '<a href="/solicitud_nueva/' + row.id + '"><i class="pencil yellow alternate link icon"></i></a><i class="remove grey alternate link icon" id="' + row.id + '"></i>';
                data.push(el);
            });
            // console.dir(data);

            res.send({
                data: data
            });
        } catch (error) {
            console.log(error);
        }
    };
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
            res.render('./folo6/folo6_edit.html', {
                folo: el
            });
            //return folo;
        } catch (error) {
            console.log(error);
        }
    };

    async createFolo6(req, res) {
        var form, emp, date, motorista;
        motorista = JSON.parse(req.body.motorista);
        console.dir("form: " + JSON.stringify(motorista + "Y del tipo:" + typeof (motorista)));
        form = JSON.parse(req.body.form);
        console.dir("form: " + JSON.stringify(form));
        emp = JSON.parse(req.body.emp);
        console.dir("emp: " + JSON.stringify(emp) + "id: " + emp.id);

        try {
            const errors = validationResult(req);
            //Conversion al formato permitido por sequelize YYYY-MM-DD
            date = new Date(form.calendar1.slice(-4) + '-' +
                form.calendar1.substring(3, 5) + '-' + form.calendar1.substring(0, 2));
            console.log("Horas=" + form.time + " Y " + form.time1);
            var t = moment(form.time, ["h:mm A"]).format("HH:mm");
            var t1 = moment(form.time1, ["h:mm A"]).format("HH:mm");
            console.log("Horas 24=" + t + " Y " + t1);
            console.log(motorista)

            console.log(errors.array());
            if (!errors.isEmpty()) {
                res.send({
                    title: "Error al guardar los datos",
                    message: "Ocurrio un error mientras se guardaban los datos, intente de nuevo, si el error persiste recargue la pagina o contacte a soporte",
                    type: 1
                });
            } else {
                console.log("Estoy en el create");
                if (motorista) {
                    console.log("Estoy en el true del create");

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
                    console.dir("Folo creado" + f);

                } else {
                    console.log("Estoy en el else del create");
                    console.log("En el controller me dice que tiene esta licecia" + form.license_ls);
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

            const errors = validationResult(req);
            //Conversion al formato permitido por sequelize YYYY-MM-DD
            date = new Date(form.calendar1.slice(-4) + '-' +
                form.calendar1.substring(3, 5) + '-' + form.calendar1.substring(0, 2));
            console.log("Horas=" + form.time + " Y " + form.time1);
            var t = moment(form.time, ["h:mm A"]).format("HH:mm");
            var t1 = moment(form.time1, ["h:mm A"]).format("HH:mm");
            console.log("Horas 24=" + t + " Y " + t1);
            console.log(motorista)

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

};

module.exports = new folo6_controllers();