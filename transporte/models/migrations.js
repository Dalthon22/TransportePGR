const Department = require('./m_department');
const City = require('../models/m_city');
const Vehicle = require('../models/m_vehicle');
const Procuraduria = require('../models/m_procuraduria');
const Address = require('../models/m_address');
const Voucher = require('./m_voucher');
const Voucher_procu_assign = require('./m_voucher_procu_assign');
const Folo6 = require('./m_folo6');
const Employee = require('./m_employee');
const Unit = require('./m_unit');
const Places_container = require('./m_places_container');


//const Route = require('../models/m_route');
const Frequent_Place = require('../models/m_frequent_place');

class Migration {
    constructor() {
        Department.sync();
        City.sync();
        Address.sync();
        Procuraduria.sync();
        Vehicle.sync();
        Frequent_Place.sync();
        Voucher.sync();
        Voucher_procu_assign.sync();
        Folo6.sync();
        Employee.sync();
        Unit.sync();
        Places_container.sync();
    }
}

module.exports = Migration;