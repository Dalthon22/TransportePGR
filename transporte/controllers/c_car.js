const Car = require('../models/m_car');
const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');


class car_controllers {
    constructor() {
        //new Migration();
    }

    async getAdd(req, res) {
        let states_map = new Map();
        states_map.set('Funcional', 'Funcional').set('Mantenimiento', 'En Mantenimiento').set('Dañado', 'Dañado');
        const states = states_map.entries();
        return res.render('../views/car/create.html', {
            states
        })
    }

    async getList(req, res) {
        try {
            var cars = await Car.findAll({
                order: Sequelize.literal('created_at DESC')
            });
            return res.render('../views/car/list.html', {
                cars
            });
        } catch (Error) {
            console.log(Error)
        }
    }

    getByPlate(plate) {
        return Car.findOne({
            plate: plate
        });
        /* return db.query('SELECT * FROM car WHERE plate = ?', {
            replacements: [plate],
            type: db.QueryTypes.SELECT
        }); */
    }

    create(brand, chassis, state, model, engine, plate, seats) {
        const created_at = new Date();
        //Insert into table
        return Car.create({
            brand,
            chassis,
            state,
            model,
            engine,
            plate,
            seats,
            created_at
        });
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