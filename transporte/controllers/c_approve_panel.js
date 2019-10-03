const folo6 = require('../models/m_folo6');
const employee = require('../models/m_employee');
const department_controller = require('../controllers/c_department');
const municipio_controller = require('../controllers/c_city');

const {
    validationResult
} = require('express-validator');
class approve_panel_controller {

    async getList(req, res) {
        try {
            var folos = await folo6.findAll({
                include: [
                    employee
                ]
            });
            console.log(folos);
            return res.render('../views/folo06_approve_panel_boss_unit.html', {
                folos
            });
        } catch (error) {
            console.log(error);
        }
    };
}
module.exports = new approve_panel_controller();