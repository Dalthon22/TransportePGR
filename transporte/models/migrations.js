const Department = require('../models/m_deparment');
const City = require('../models/m_city');
const Car = require('../models/m_car');
const Route = require('../models/m_route');
const Procuraduria = require('../models/m_procuraduria');
const Address = require('../models/m_address');
const Frequent_Place = require('../models/m_frequent_place');

class Migration {
    constructor() {
        Department.sync();
        City.sync();
        Address.sync();
        Frequent_Place.sync();
        Procuraduria.sync();
        Car.sync();
        Route.sync();
    }
}

module.exports = Migration;