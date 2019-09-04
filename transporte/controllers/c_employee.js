const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');
const Employee = require('../models/m_employee');

/* const Migration = require('../models/migrations');
 */
const {
    body,
    check,
    validationResult
} = require('../middleware/expresse-validator');

class employee_controllers {
    constructor() {
        //var migrate = new Migration();
    }
    //Metodo find por id
    async findById(id, req, res) {
        try {
            let emp = await Employee.findByPk(id, {
                attributes: ['id', 'first_name', 'last_name', 'is_unit_boss', 'unit_id']
            });
            console.log(emp);
            res.send({
                emp
            });
        } catch (err) {
            console.log(err);
        }
    }
};

module.exports = new employee_controllers();