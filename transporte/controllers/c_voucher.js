const Vouchers = require('../models/voucher');
const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');
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

    //Metodo find por id
    static async findById(num_voucher) {
        let voucher = await Car.findByPk(num_voucher);
        return voucher;
    }

    async createVoucher(req, res) {
        try {
            console.log(Vouchers.Vouchers);

            const errors = validationResult(req);
            let {
                date_entry_bill,
                bill_num,
                provider,
                price,
                first_voucher,
                last_voucher
            } = req.body;
            console.log(errors.array());
            if (!errors.isEmpty()) {} else {
                try {
                    do {
                        Vouchers.Vouchers.create({
                            num_voucher: first_voucher,
                            price,
                            condition: "Disponible",
                            date_entry: date_entry_bill,
                            voucher_provider: provider,
                            num_entry_bill: bill_num,
                            date_entry_bill
                        });
                        first_voucher++;
                    }
                    while (first_voucher == last_voucher);
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