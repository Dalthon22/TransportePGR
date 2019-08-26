const Vehicle = require('../models/m_vehicle');
const Sequelize = require('sequelize');
const {
    validationResult
} = require('express-validator');

//Clase controller que contiene todos los metodos necesarios para la gestion
//de vehiculos
class Vehicle_controller {
    constructor() {

    }

    getStateList() {
        let states_map = new Map();
        states_map.set('Funcional', 'Funcional').set('Mantenimiento', 'En Mantenimiento').set('Dañado', 'Dañado');
        return states_map.entries();
    }

    //Encuntra un registro por el id
    //Parametro: _id Llave primaria de la tabla
    async findById(_id) {
        let vehicle = await Vehicle.findByPk(_id);
        return vehicle;
    }

    //Encuentra el registro y devuelve true si existe
    //Parametro: _id Llave primaria de la tabla
    async existById(_id) {
        let exist = false;
        let vehicle = await Vehicle.findByPk(_id);
        if (vehicle) {
            exist = true;
        }
        return exist;
    }

    //Encuntra un registro por el placa
    //Parametro: _plate Campo único en la tabla
    async findByPlate(_plate) {
        let vehicle = await Vehicle.findOne({
            where: {
                plate: _plate
            }
        })
        return vehicle;
    }

    //Encuentra el registro y devuelve true si existe
    //Parametro: _plate Campo único en la tabla
    async existByPlate(_plate) {
        let is_registered = false;
        let vehicle = await Vehicle.findOne({
            attributes: ['id'],
            where: {
                plate: _plate
            }
        });
        console.log(vehicle);
        if (vehicle) {
            is_registered = true;
        }
        console.log(is_registered);
        return is_registered;
    }

    //Obtiene todos los reguistros almacenados en la tabla
    async getList(req, res) {
        try {
            var vehicles = await Vehicle.findAll({
                order: Sequelize.literal('plate DESC')
            });
            console.log(vehicles)
            return res.render('../views/vehicle/list.html', {
                vehicles
            });
        } catch (Error) {
            console.log(Error)
        }
    }

    getCreate(req, res) {
        const states = this.getStateList();
        return res.render('../views/vehicle/create.html', {
            states
        })
    }

    async create(req, res) {
        try {
            const errors = validationResult(req);
            const states = this.getStateList();
            let {
                brand,
                chassis,
                model,
                engine,
                plate,
                state,
                seats,
            } = req.body;
            let vehicle = req.body;
            if (errors.isEmpty()) {
                const created_at = new Date();
                if (this.existByPlate(plate) === false) {
                    await Vehicle.create({
                        brand,
                        chassis,
                        model,
                        engine,
                        plate,
                        state,
                        seats,
                        created_at
                    });
                    res.redirect('/vehiculos');
                } else {
                    res.render('../views/vehicle/create.html', {
                        plate_error: "El número de placa ya existe!",
                        states,
                        vehicle
                    })
                }
            } else {
                res.render('../views/vehicle/create.html', {
                    errors: errors.array(),
                    states,
                    vehicle
                })
            }
        } catch (error) {
            console.log(error);
        }
    }

    update(id, ...seats) {
        const updated_at = new Date();
        return Vehicle.update({
            brand,
            chassis,
            state,
            model,
            engine,
            plate,
            seats,
            updated_at
        }, {
            where: {
                id: id
            }
        })
    }
};

module.exports = new Vehicle_controller();