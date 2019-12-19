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
const route_conditions = require('../models/m_route_conditions');
const User = require('./m_user');
const Rol = require('./m_role');
const UserRol = require('./m_user_role');
const ProcurementBill = require('./m_bill');
const CosumedBill = require('./m_bill_close');
const Mision = require('../models/m_mision');
const Driver = require('../models/m_driver');

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
            alter: true
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
        route_conditions.sync({
            alter: true
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
        ProcurementBill.sync({
            alter: true
        })
        CosumedBill.sync({
            alter: true
        })
    }
};

module.exports = Migration;