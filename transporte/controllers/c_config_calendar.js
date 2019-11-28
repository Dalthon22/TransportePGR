const Routes = require("../models/m_route");
const Sequelize = require('sequelize');

class Config_calendar_controller {

    constructor() {};

    async getList(req, res) {
        try {
            var route_list = await Routes.findAll({
                order: Sequelize.literal('name ASC')
            });
            console.log(route_list);
            return res.render('../views/config_calendar/select_routes.html', {
                route_list
            });
        } catch (error) {
            console.log(error);
        }
    }
};

module.exports = new Config_calendar_controller();