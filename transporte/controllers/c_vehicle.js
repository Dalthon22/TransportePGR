const Vehicle = require('../models/m_vehicle');
const Sequelize = require('sequelize');
const querystring = require('querystring');
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
        let vehicle = await Vehicle.findByPk(_id);
        let exist = (vehicle) ? true : false;
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
        let vehicle = await Vehicle.count({
            where: {
                plate: _plate
            }
        });
        console.log(vehicle);
        let is_registered = (vehicle >= 1) ? true : false;
        console.log(is_registered);
        return is_registered;
    }

    //Valida la existencia de un vehiculo por su placa y envia una respuesta
    async existsResponse(_plate, req, res) {
        try {
            if (!await this.existByPlate(_plate)) {
                res.send({
                    type: 0,
                });
            } else {
                console.log('Error. Ya existe la placa: ' + _plate);
                res.send({
                    type: 1,
                    message: "El número de matrícula: " + _plate + " ya está asociada a un vehículo."
                });
            }
        } catch (error) {
            console.log(error);
        }
    }

    //Obtiene todos los reguistros almacenados en la tabla
    async getList(req, res) {
        try {
            var vehicles = await Vehicle.findAll({
                order: Sequelize.literal('plate ASC')
            });
            console.log(vehicles);
            var test = {
                t: "this is a test",
                list: vehicles
            };
            var query = querystring.parse(req.originalUrl);
            console.log(query);
            return res.render('../views/vehicle/list.html', {
                vehicles
            });
        } catch (Error) {
            console.log(Error)
        }
    }

    async getCreate(req, res) {
        const states = this.getStateList();
        var plate = querystring.parse(req.originalUrl);
        var vehicle;
        if (plate) {
            vehicle = await this.findByPlate(plate);
        }
        console.log(plate);
        return res.render('../views/vehicle/create.html', {
            states,
            vehicle
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
                //const query = querystring.
                /* res.render('./vehicle/list.html',{

                }); */
                const query = querystring.stringify({
                    title: "Guardado exitoso",
                    message: "Vehiculo registrado",
                    class: "success"
                });
                res.send({
                    redirect: "/vehiculos?&" + query,
                    status: 200
                });
            } else {
                res.render('../views/vehicle/create.html', {
                    errors: errors.array(),
                    states,
                    vehicle
                })
            }
        } catch (error) {
            console.log(error);
            res.send({
                type: 1,
                title: "Error al guardar",
                message: "El vehículo no pudo ser guardado. " + error,
            });
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