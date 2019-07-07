const Car = require('../models/m_car');
const Migration = require('../models/migrations');

class car_services {
    constructor() {
        //new Migration();
    }
    getAll() {
        return Car.findAll();
    }

    create() {
        const data = {
            brand: 'Peogeut',
            model: '206',
            plate: 'P678932',
            chassis: 'YC145632',
            engine: 1.0,
            seats: 4,
            state: 'Dañado'
        }

        let {
            brand,
            model,
            plate,
            chassis,
            engine,
            seats
        } = data;

        //Insert into table
        Car.create({
                brand,
                model,
                plate,
                chassis,
                engine,
                seats
            })
            .then(car => {
                return car;
            })
            .catch(error => console.log(error));
    }
};

module.exports = new car_services();