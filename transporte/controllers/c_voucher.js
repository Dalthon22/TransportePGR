const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');
//const Vouchers = require('../models/voucher');
var models = require('../models');

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

    async ifExist(numVoucher) {
        var b = false;
        console.log("Voy a buscar")
        let v = await models.Voucher.count({
            where: {
                num_voucher: numVoucher
            }
        }) //.then(count => {
        console.log("Ya busque we, y me salen: " + " //" + v);
        b = (v >= 1) ? true : false;
        return b;
        // });
    }

    //Metodo find por id
    static async findById(num_voucher) {
        let voucher = await Car.findByPk(num_voucher);
        return voucher;
    }

    async createVoucher(req, res) {
        var primer, ultimo;
        var date;

        try {
            const errors = validationResult(req);

            let {
                date_entry_bill,
                bill_num,
                provider,
                price,
                first_voucher,
                last_voucher,
            } = req.body;
            console.log(date_entry_bill);
            //Conversion al formato permitido por sequelize YYYY-MM-DD
            date = new Date(date_entry_bill.slice(-4) + '-' +
                date_entry_bill.substring(3, 5) + '-' + date_entry_bill.substring(0, 2));
            console.log(date);
            primer = parseInt(first_voucher);
            ultimo = parseInt(last_voucher);
            console.log(errors.array());

            if (!errors.isEmpty()) {
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
                try {
                    do {
                        models.Voucher.create({
                            num_voucher: primer,
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
                    /*  let Mstate2 = true;
                     let Departamentos = await department_controller.getList(); */
                    res.render('./voucher/add_voucher.html', {
                        //Departamentos
                    })
                } catch (error) {
                    console.log(error);
                    /*   let Mstate = true;
                      let Departamentos = await department_controller.getList(); */
                    res.render('./voucher/add_voucher.html', {
                        /* Departamentos,
                        Mstate */
                    });
                }
            }
        } catch (error) {
            console.log(error);
        }
    }




};

module.exports = new voucher_controllers();