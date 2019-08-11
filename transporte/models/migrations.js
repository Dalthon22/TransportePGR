const Department = require('./m_deparment');
const City = require('../models/m_city');

const Route = require('../models/m_route');

const Address = require('../models/m_address');
const Frequent_Place = require('../models/m_frequent_place');

class Migration {
    constructor() {

        Frequent_Place.sync();
        Route.sync();

        Address.sync();
        City.sync();
        Department.sync();
    }
}

module.exports = Migration;