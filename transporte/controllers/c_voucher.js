const Car = require('../models/voucher');
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
            const errors = validationResult(req);
            let {
                name,
                detail,
                departamento,
                municipio
            } = req.body;
            console.log(errors.array());
            if (!errors.isEmpty()) {
                let Departamentos = await department_controller.getList();
                res.render('../views/frequent_places/add.html', {
                    name,
                    detail,
                    departamento,
                    Departamentos,
                    municipio,
                    errors: errors.array()
                });
            } else {
                try {
                    frequent_place.create({
                        name,
                        detail,
                        city_id: municipio,
                        department_id: departamento
                    });
                    let Mstate2 = true;
                    let Departamentos = await department_controller.getList();
                    res.render('../views/frequent_places/add.html', {
                        Departamentos,
                        Mstate2
                    })
                } catch (error) {
                    console.log(error);
                    let Mstate = true;
                    let Departamentos = await department_controller.getList();
                    res.render('../views/frequent_places/add.html', {
                        Departamentos,
                        Mstate
                    });
                }
            }
        } catch (error) {
            console.log(error);
        }
    }




};

module.exports = new voucher_controllers();