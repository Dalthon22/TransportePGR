const Car = require('../models/m_car');
const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');


class car_services {
    constructor() {
        //new Migration();
    }
    getAll() {
        return Car.findAll({
            order: Sequelize.literal('created_at DESC')
        });
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

module.exports = new car_services();