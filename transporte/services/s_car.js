const Car = require('../models/m_car');
const Migration = require('../models/migrations');

class car_services {
    constructor() {
        //new Migration();
    }
    getAll() {
        return Car.findAll();
    }

    create(brand, chassis, state, model, engine, plate, seats) {
        const create_at = new Date();
        //Insert into table
        return Car.create({
            brand,
            chassis,
            state,
            model,
            engine,
            plate,
            seats,
            create_at
        });
    }
};

module.exports = new car_services();