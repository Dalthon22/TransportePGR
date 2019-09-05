const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');
const Folo6 = require('../models/m_folo6');
var moment = require('moment');

/* const Migration = require('../models/migrations');
 */
const {
    body,
    check,
    validationResult
} = require('../middleware/expresse-validator');


class voucher_controllers {
    constructor() {
        //var migrate = new Migration();
    }

    /*  async ifExist(numVoucher, req, res) {
        console.log("Desde router recibi este numero de vale: " + numVoucher);
        var b = false;
        var num = parseInt(numVoucher);
        console.log("Numero de vale que se buscara: " + num);
        try {
            console.log("Voy a buscar")
            let v = await Voucher.count({
                where: {
                    num_voucher: num
                }
            });
            console.log("Ya busque we, y me salen: " + v);
            b = (v >= 1) ? true : false;
            console.log("Ya te mando a buscar desde router el vale: " + num);
            console.log("B es igual: " + b)
            if (b === true) {
                console.log("Si we la rego la doña");
                res.send({
                    type: 1,
                    message: "El vale numero: " + num + " ya ha sido registrado"
                });
                throw new Error('El numero de vale ya ha se registro');
            } else {
                console.log("Esta limpio, por esta vez...");
                res.send({
                    type: 0,
                });
            }
        } catch (err) {
            console.log(err);
        }
    }
 */
    //Metodo find por id
    /*    static async findById(num_voucher) {
           let voucher = await Car.findByPk(num_voucher);
           return voucher;
       } */

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
                console.log("Aqui vengo con mi flow");
                res.render('../views/frequent_places/add.html', {
                    date_entry_bill,
                    bill_num,
                    provider,
                    price,
                    first_voucher,
                    last_voucher,
                    errors: errors.array()
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

                    let f = await Folo6.create({
                        request_unit: emp.unit_id,
                        off_date: date,
                        off_hour: t,
                        return_hour: t1,
                        passengers_number: form.passengers_i,
                        with_driver: motorista,
                        person_who_drive: form.name_driver_i,
                        license_type: form.license_ls_id,
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
};

module.exports = new voucher_controllers();