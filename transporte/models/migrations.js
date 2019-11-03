const Department = require('./m_department');
const City = require('../models/m_city');
const Vehicle = require('../models/m_vehicle');
const Procuraduria = require('../models/m_procuraduria');
const Address = require('../models/m_address');
//const Route = require('../models/m_route');
const Frequent_Place = require('../models/m_frequent_place');
const Voucher = require('./m_voucher');
const Voucher_procu_assign = require('./m_voucher_procu_assign');
const Voucher_folo6_assign = require('./m_voucher_folo6_assign');
const Folo6 = require('./m_folo6');
const Employee = require('./m_employee');
const Unit = require('./m_unit');
const Places_container = require('./m_places_container');
const Car = require('./car');

class Migration {
    constructor() {
        Car.sync();
        Department.sync();
        City.sync();
        Address.sync({
            alter: false
        });
        Procuraduria.sync({
            alter: false
        });
        Vehicle.sync({
            alter: false
        });
        Frequent_Place.sync({
            alter: false
        });
        Voucher.sync({
            alter: false
        });
        Unit.sync({
            alter: false
        });
        Employee.sync({
            alter: false
        });
        Folo6.sync({
            alter: false
        });
        Places_container.sync({
            alter: false
        });
        Voucher_procu_assign.sync({
            alter: false
        });
        Voucher_folo6_assign.sync({
            alter: false
        });
        /* Route.sync(); */
    }
}

module.exports = Migration;