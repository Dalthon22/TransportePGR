const db = require('../dbconfig/conex');
const Car = require('../models/m_car');

class car_services {
    constructor() {}
    getAll() {
        Car.findAll()
            .then(cars => {
                console.log(cars);
                return cars;
            })
            .catch(error => console.log(error));
    }

    create() {
        //var car = new Car();
        //car = car_new;
        const data = {
            brand: 'Toyota',
            model: 'Corolla SE',
            plate: 'P698632',
            chassis: 'Negro',
            engine: 1.8,
            seats: 5
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