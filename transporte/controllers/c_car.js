const Car = require('../models/m_car');
const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');
const Migration = require('../models/migrations');
const {
    body,
    validationResult
} = require('../middleware/expresse-validator');


class car_controllers {
    constructor() {
        //var migrate = new Migration();
    }

    //Metodo find por id
    static async find(_id) {
        let vehicle = await Car.findByPk(_id);
        return vehicle;
    }

    //Metodo exist atraves del id
    static async existByPlate(_id) {
        let exist = false;
        let car = await Car.findByPk(_id);
        if (car) {
            exist = true;
        }
        return exist;
    }

    //Metodo find por la placa
    static async findByPlate(_plate) {
        let vehicle = await Car.findOne({
            where: {
                plate: _plate
            }
        })
        return vehicle;
    }

    //Metodo exist atraves de la placa
    static async existByPlate(plate) {
        let is_registered = false;
        let car = await Car.findOne({
            plate: plate
        });

        if (car) {
            is_registered = true;
        }
        return is_registered;
    }

    async getList(req, res) {
        try {
            var cars = await Car.findAll({
                order: Sequelize.literal('plate DESC')
            });
            console.log(cars)
            return res.render('../views/car/list.html', {
                cars
            });
        } catch (Error) {
            console.log(Error)
        }
    }

    getCreate(req, res) {
        let states_map = new Map();
        states_map.set('Funcional', 'Funcional').set('Mantenimiento', 'En Mantenimiento').set('Dañado', 'Dañado');
        const states = states_map.entries();
        return res.render('../views/car/create.html', {
            states
        })
    }

    async create(req, res) {
        let {
            brand,
            chassis,
            model,
            engine,
            plate,
            state,
            seats,
        } = req.body;
        const created_at = new Date();
        state = state.toLowerCase();
        engine = engine.toUpperCase();

        if (findByPlate(plate)) {
            console.log('Plate already exists');
        } else {
            let success = await Car.create({
                brand,
                chassis,
                model,
                engine,
                plate,
                state,
                seats,
                created_at
            });
            console.log(success);
        }

    }

    update(id, ...seats) {
        const updated_at = new Date();
        return Car.update({
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

module.exports = new car_controllers();