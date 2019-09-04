const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');
const Folo6 = require('../models/m_folo6');

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
        var form, emp, date;
        form = JSON.parse(req.body.form);
        console.dir("form: " + JSON.stringify(form));
        emp = JSON.parse(req.body.emp);
        console.dir("emp: " + JSON.stringify(emp));

        try {
            const errors = validationResult(req);
            //Conversion al formato permitido por sequelize YYYY-MM-DD
            date = new Date(form.calendar1.slice(-4) + '-' +
                form.calendar1.substring(3, 5) + '-' + form.calendar1.substring(0, 2));
            console.log("Horas=" + form.time + " Y " + form.time1);
            /* console.log(errors.array());
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
                console.log("Estoy en el else del create");
                do {
                    await Folo6.create({
                        request_unit: emp.unit_id,
                        price,
                        condition: "Disponible",
                        date_entry: date,
                        voucher_provider: provider,
                        num_entry_bill: bill_num,
                        date_entry_bill: date,
                    });
                    primer++;
                }
                while (primer <= ultimo);
                console.log(primer);
                console.log(ultimo);
                //Departamento
                console.log("sali del create");

                res.json({
                    message: "Datos agregados con exito",
                    type: 0
                }); 
            }*/
        } catch (err) {
            console.log("Ocurrio en el método create" + err);
            res.send({
                title: "Error al guardar los datos",
                message: "Ocurrio un error mientras se guardaban los datos, intente de nuevo, si el error persiste recargue la pagina o contacte a soporte",
                message1: "Error al ingresar el vale No: " + primer,
                type: 1
            });
            //throw new Error(" Ocurre ingresando los vales en la BD " + err);
        }
    }
};

module.exports = new voucher_controllers();