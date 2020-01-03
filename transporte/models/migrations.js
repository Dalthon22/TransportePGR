const Department = require('./m_department');
const City = require('./m_city');
const Vehicle = require('./m_vehicle');
const Procuraduria = require('./m_procuraduria');
const Address = require('./m_address');
const Route = require('./m_route');
const Frequent_Place = require('./m_frequent_place');
const Voucher = require('./m_voucher');
const Voucher_procu_assign = require('./m_voucher_procu_assign');
const Voucher_folo6_assign = require('./m_voucher_folo6_assign');
const Folo6 = require('./m_folo6');
const Employee = require('./m_employee');
const Unit = require('./m_unit');
const Places_container = require('./m_places_container');
const Folo6_Approve_State = require('./m_folo6_approve_state');
const Route_conditions = require('../models/m_route_conditions');
const User = require('./m_user');
const Rol = require('./m_role');
const UserRol = require('./m_user_role');
const ProcurementBill = require('./m_bill');
const CosumedBill = require('./m_bill_close');
const Mision = require('../models/m_mision');
const Driver = require('./m_driver');
const Driver_assign = require('./m_driver_assign');
const Vehicle_folo6_assign = require('../models/m_vehicle_folo6_assign');

class Migration {
    constructor() {
        Department.sync();
        City.sync();
        Driver.sync({
            alter: true
        });
        Mision.sync({
            alter: true
        });
        Address.sync({
            alter: true
        });
        Procuraduria.sync({
            alter: true
        });
        Vehicle.sync({
            alter: true
        });
        Frequent_Place.sync({
            alter: true
        });
        Voucher.sync({
            alter: false
        });
        Unit.sync({
            alter: true
        });
        Employee.sync({
            alter: true
        });
        Folo6.sync({
            alter: true
        });
        Places_container.sync({
            alter: true
        });
        Voucher_procu_assign.sync({
            alter: true
        });
        Voucher_folo6_assign.sync({
            alter: true
        });
        Folo6_Approve_State.sync({
            alter: true
        });
        Route_conditions.sync({
            alter: false
        });
        Route.sync({
            alter: true
        });
        User.sync({
            alter: true
        });
        Rol.sync({
            alter: true
        });
        UserRol.sync({
            alter: true
        });
        Vehicle_folo6_assign.sync({
            alter: false
        });
        ProcurementBill.sync({
            alter: true
        });
        CosumedBill.sync({
            alter: true
        });
        Driver_assign.sync({
            alter: true
        });
    };
};

module.exports = Migration;
