const Driver = require('../models/m_driver');
const {
    validationResult
} = require('express-validator');

class driver_controller {
    constructor() {}

    async getList(req, res) {
        try {
            var motoristas = await Driver.findAll();
            return res.render('../views/driver/list.html', {
                motoristas
            });
        } catch (error) {
            console.log(error);
        }
    };

    async getAdd(req, res) {
        try {
            const meses = this.getMonthList();
            const tipos = this.getLicenseType();
            var driver_id = req.query.driver_id;
            var driver;
            if (driver_id) {
                driver = await this.findByPk(driver_id);
            }
            return res.render('../views/driver/add.html', {
                driver,
                meses,
                tipos
            })
        } catch (error) {
            console.log(error);
        }
    };

    getMonthList() {
        let month_map = new Map();
        month_map.set('Enero', 'Enero').set('Febrero', 'Febrero').set('Marzo', 'Marzo').set('Abril', 'Abril').set('Mayo', 'Mayo').set('Junio', 'Junio').set('Julio', 'Julio').set('Agosto', 'Agosto').set('Septiembre', 'Septiembre').set('Octubre', 'Octubre').set('Noviembre', 'Noviemnbre').set('Diciembre', 'Diciembre');
        return month_map.entries();
    }
    getLicenseType() {
        let license_type_map = new Map();
        license_type_map.set('Particular', 'Particular').set('Liviana', 'Liviana').set('Pesada', 'Pesada').set('Pesada-T', 'Pesada-T');
        return license_type_map.entries();
    }
}

module.exports = new driver_controller();