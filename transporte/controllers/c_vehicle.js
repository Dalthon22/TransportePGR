/*
21062019_DD
Controlador del modelo Vehicle
*/

const Vehicle = require('../models/m_vehiculo');
const TipoVehiculo = require('../models/m_tipo_vehiculo');
const CodigoEstado = require('../models/m_estado_vehiculo');
const TipoVehiculoController = require('./c_tipo_vehiculo');
const EstadoVehiculoController = require('./c_estado_vehiculo');
const OficinasResponsableController = require('./c_oficina_responsable');
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
                NumeroMatriculaVehiculo: _plate
            }
        })
        return vehicle;
    }

    //Encuentra el registro y devuelve true si existe
    //Parametro: _plate Campo único en la tabla
    async existByPlate(_plate) {
        let vehicle = await Vehicle.count({
            where: {
                NumeroPlacaVehiculo: _plate
            }
        });
        console.log(vehicle);
        let is_registered = (vehicle >= 1) ? true : false;
        console.log(is_registered);
        return is_registered;
    }

    //Encuentra el registro y devuelve true si existe
    //Parametro: _engine Campo único en la tabla
    async existByEngine(_engine) {
        let vehicle = await Vehicle.count({
            where: {
                NumeroMotorVehiculo: _engine
            }
        });
        console.log(vehicle);
        let is_registered = (vehicle >= 1) ? true : false;
        console.log(is_registered);
        return is_registered;
    }

    //Encuentra el registro y devuelve true si existe
    //Parametro: _chasis Campo único en la tabla
    async existByChassis(_chasis) {
        let vehicle = await Vehicle.count({
            where: {
                NumeroChasisVehiculo: _chasis
            }
        });
        console.log(vehicle);
        let is_registered = (vehicle >= 1) ? true : false;
        console.log(is_registered);
        return is_registered;
    }

    //Encuentra el registro y devuelve true si existe
    //Parametro: _code Campo único y llave primaria en la tabla
    async existByCode(_code) {
        let vehicle = await Vehicle.count({
            where: {
                CodigoActivoFijo: _code
            }
        });
        console.log(vehicle);
        let is_registered = (vehicle >= 1) ? true : false;
        console.log(is_registered);
        return is_registered;
    }

    //Valida la existencia de un vehiculo por su placa y envia una respuesta
    //Parametro: _plate (matircula)
    async existsResponse(_plate, req, res) {
        try {
            if (!await this.existByPlate(_plate)) {
                res.send({
                    type: 0,
                    message: "El número de matrícula: " + _plate + " es valido"
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
            var vehicles = [];
            var vehiculos = await Vehicle.findAll({
                attributes: ['CodigoActivoFijo', 'NumeroPlacaVehiculo',
                    'MarcaVehiculo', 'ModeloVehiculo',
                    'CodigoTipoVehiculo', 'CapacidadPersonaVehiculo',
                    'KilometrajeActual', 'CodigoEstado'
                ],
                include: [{
                    model: TipoVehiculo,
                    raw: true,
                    required: false
                }, {
                    model: CodigoEstado,
                    raw: true,
                    required: false
                }],
                order: Sequelize.literal('CodigoActivoFijo ASC')
            });
            console.log(vehiculos);
            vehiculos.forEach((record) => {
                var v = new Object();
                v.codigo = record.CodigoActivoFijo;
                v.matricula = record.NumeroMatriculaVehiculo;
                v.descripcion = record.TRA_TipoVehiculo.TipoVehiculo + ":" + record.MarcaVehiculo + "-" + record.ModeloVehiculo;
                v.capacidad = record.CapacidadPersonaVehiculo;
                v.estado = record.TRA_EstadoVehiculo.EstadoVehiculo;
                v.Kilometraje = record.KilometrajeActual;
                vehicles.push(v);
            })
            return res.render('../views/vehicle/list.html', {
                vehicles
            });
        } catch (Error) {
            console.log(Error)
        }
    }

    //Renderiza el formulario de ingreso de vehiculo
    //Para editar o ingresar un nuevo vehiculo
    async getCreate(req, res) {
        try {
            const states = await EstadoVehiculoController.getList();
            const offices = await OficinasResponsableController.getList();
            const types = await TipoVehiculoController.getList();
            console.log("Estados: " + states);
            console.log("Oficinas: " + offices);
            console.log("Tipos: " + types);
            var plate = req.query.matricula;
            var vehicle;
            console.log(plate);
            if (plate) {
                vehicle = await this.findByPlate(plate);
            }
            return res.render('../views/vehicle/create.html', {
                states,
                types,
                offices,
                vehicle
            })
        } catch (error) {
            console.log("Error en getCreate" + error)
        }
    }

    //Metodo que inserta el nuevo vehiculo. Post gestionar
    //Recibe los parametros request y response, respectivamente
    async create(req, res) {
        try {
            var errs = validationResult(req);
            var errors = [];
            errors = errs.array();
            let {
                brand,
                chassis,
                model,
                engine,
                plate,
                state,
                seats,
                code,
                vin,
                type,
                year,
                color,
                office,
                mileage,
                observations
            } = req.body;
            var exist_by_plate = await this.existByPlate(plate);
            var exist_by_engine = await this.existByEngine(engine);
            var exist_by_chassis = await this.existByChassis(chassis);
            var exist_by_code = await this.existByCode(code);
            console.log("Existencia por placa: " + exist_by_plate);
            console.log(brand,
                chassis,
                model,
                engine,
                plate,
                state,
                seats,
                code,
                vin,
                type,
                year,
                color,
                office,
                mileage,
                observations);
            /* if (errs.isEmpty() && !exist_by_plate && !exist_by_engine && !exist_by_chassis) {
                await Vehicle.create({
                    brand,
                    chassis,
                    model,
                    engine,
                    plate,
                    state,
                    seats,
                    code,
                    vin,
                    type,
                    year,
                    color,
                    office,
                    mileage,
                    observations
                });
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
                if (exist_by_plate) {
                    errors.push({
                        msg: "La matrícula ya existe en la base de datos"
                    });
                }
                if (exist_by_chassis) {
                    errors.push({
                        msg: "El número de chassis ya existe en la base de datos"
                    });
                }
                if (exist_by_engine) {
                    errors.push({
                        msg: "El número de motor ya existe en la base de datos"
                    });
                }
                res.send({
                    title: "Error en la información",
                    errors: errors
                })
            } */
        } catch (error) {
            console.log(error);
            res.send({
                title: "Error al guardar",
                message: "El vehículo no pudo ser guardado. " + error,
            });
        }
    }

    //Metodo que actualiza el nuevo vehiculo. Post gestionar
    //Recibe los parametros request y response, respectivamente
    async update(req, res) {
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
                vehicle_id,
            } = req.body;
            let vehicle = req.body;
            if (errors.isEmpty()) {
                await Vehicle.update({
                    brand,
                    chassis,
                    model,
                    engine,
                    plate,
                    state,
                    seats,
                }, {
                    where: {
                        id: vehicle_id
                    }
                });
                const query = querystring.stringify({
                    title: "Guardado exitoso",
                    message: "Vehiculo actualizado",
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
                    vehicle,
                })
            }
        } catch (error) {
            console.log(error);
            res.send({
                type: 1,
                title: "Error al actualizar",
                message: "El vehículo no pudo ser guardado. " + error,
            });
        }
    }
};

module.exports = new Vehicle_controller();