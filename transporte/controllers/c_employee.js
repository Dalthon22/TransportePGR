const Sequelize = require('sequelize');
const Employee = require('../models/m_employee');
const Unit = require('../models/m_unit');

//Manejo de fechas
var moment = require('moment');
moment.locale("Es-SV")

const {
    body,
    check,
    validationResult
} = require('express-validator');

class employee_controller {
    constructor() {

    }
    //Metodo find por id
    async findById(id, req, res) {
        try {
            let emp = await Employee.findByPk(id, {
                attributes: ['id', 'first_name', 'last_name', 'is_unit_boss', 'unit_id']
            });
            console.log("El empleado recibido" + emp);
            let unit = await Unit.findByPk(emp.unit_id, {
                attributes: ['name_unit']
            });
            res.send({
                emp,
                unit
            });
        } catch (err) {
            console.log(err);
        }
    }

    async findById1(id) {
        try {
            var emp = new Object();
            emp.unit = new Object();
            await Employee.findByPk(id, {
                attributes: ['id', 'first_name', 'last_name', 'is_unit_boss', 'unit_id']
            }).then(employee => {
                //    console.log("El empleado recibido" + employee + " De tipo " + typeof (employee));
                emp.id = employee.id;
                emp.first_name = employee.first_name;
                emp.last_name = employee.last_name;
                emp.is_unit_boss = employee.is_unit_boss;
                emp.unit.id = employee.unit_id;
            });

            await Unit.findByPk(emp.unit.id, {
                attributes: ['name_unit']
            }).then(unit => {
                // console.log("DE LA UNIDAD" + unit + " De tipo " + typeof (unit));
                emp.unit.name = unit.name_unit
            });

            //console.dir("Empleado FINAL RESULT : " + JSON.stringify(emp));
            return emp;
        } catch (err) {
            console.log(err);
        }
    }

};

module.exports = new employee_controller();