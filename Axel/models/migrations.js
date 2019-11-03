const Department = require('./m_department');
const City = require('../models/m_city');
const Vehicle = require('../models/m_vehicle');
const Procuraduria = require('../models/m_procuraduria');
const Address = require('../models/m_address');
//const Route = require('../models/m_route');
const Frequent_Place = require('../models/m_frequent_place');
const Places_Container = require('../models/m_places_container');
const Folo_06 = require('../models/m_folo06');

class Migration {
    constructor() {
        Department.sync();
        City.sync();
        Address.sync();
        Procuraduria.sync();
        Vehicle.sync();
        Frequent_Place.sync();
        /* Route.sync(); */
        Places_Container.sync();
        Folo_06.sync();
    }
}

module.exports = Migration;