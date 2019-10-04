const Department = require('./m_department');
const City = require('../models/m_city');
const Vehicle = require('../models/m_vehicle');
const Procuraduria = require('../models/m_procuraduria');
const Address = require('../models/m_address');
const Route = require('../models/m_route');
const Frequent_Place = require('../models/m_frequent_place');
const Employee = require('../models/m_employee');
const Folo6 = require('../models/m_folo6');
const Folo6_Approve_State = require('../models/m_folo6_approve_state');
const Places_Containter = require('../models/m_places_container');
const unit = require('../models/m_unit');
const voucher_folo6_assign = require('../models/m_voucher_folo6_assign');
const voucher_procu_assign = require('../models/m_voucher_procu_assign');
const voucher = require('../models/m_voucher');

class Migration {
    constructor() {
        Department.sync();
        City.sync();
        Address.sync();
        Procuraduria.sync();
        Vehicle.sync();
        Frequent_Place.sync();
        Employee.sync();
        Folo6.sync();
        Folo6_Approve_State.sync();
        Places_Containter.sync();
        unit.sync();
        voucher_folo6_assign.sync();
        voucher_procu_assign.sync();
        voucher.sync();
        Route.sync();
    }
}

module.exports = Migration;