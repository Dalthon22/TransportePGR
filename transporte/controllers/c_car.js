const Car = require('../models/m_car');
const db = require('../dbconfig/conex');
const Sequelize = require('sequelize');
const Migration = require('../models/migrations');
const {
    body,
    check,
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
    async existByPlate(_plate) {
        let is_registered = false;
        let car = await Car.findOne({
            attributes: ['id'],
            where: {
                plate: _plate
            }
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
        try {
            /* //this.validator();
            [
                body('brand', 'Debe ingresar la marca del vehículo').not().isEmpty(),
                body('chassis', 'Debe ingresar el número chasis del vehículo').not().isEmpty(),
                body('model', 'Debe ingresar modelo del vehículo').not().isEmpty(),
                body('engine', 'Debe ingresar número de motor del vehículo').not().isEmpty()
                .not().isAlphanumeric()
                .isLength({
                    min: 10
                }).withMessage('El número del motor debe contener al menos 10 carácteres alfanúmericos')
            ] */
            const errors = validationResult(req);
            if (errors.isEmpty()) {
                console.log('Everything is ok. You can create the object');
                this.getList(req, res);
            } else {
                console.log(errors.array());
                this.getCreate(req, res);
            }
        } catch (error) {
            console.log('This is the error when creating: ' + error);
        }

        /* let {
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

        if (this.existByPlate(plate)) {
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
        } */

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

    async validator() {
        [
            body('brand', 'Debe ingresar la marca del vehículo').not().isEmpty(),
            body('chassis', 'Debe ingresar el número chasis del vehículo').not().isEmpty(),
            body('model', 'Debe ingresar modelo del vehículo').not().isEmpty(),
            body('engine', 'Debe ingresar número de motor del vehículo').not().isEmpty()
            .not().isAlphanumeric()
            .isLength({
                min: 10
            }).withMessage('El número del motor debe contener al menos 10 carácteres alfanúmericos')
        ]
        /*  [
             check('brand', 'Debe ingresar la marca del vehículo').isEmpty(),
             check('chassis', 'Debe ingresar el número chasis del vehículo').isEmpty(),
             check('model', 'Debe ingresar modelo del vehículo').isEmpty(),
             check('engine', 'Debe ingresar número de motor del vehículo').isEmpty()
             .isAlphanumeric()
             .isLength({
                 min: 10
             }).withMessage('El número del motor debe contener al menos 10 carácteres alfanúmericos'),
             await check('plate').custom(value => {
                 let msg = 'La placa ya ha sido registrada en otro vehículo';
                 let in_used = this.existByPlate(value);
                 if (in_used) {
                     return Promise.reject(msg);
                 }
             }),
             check('state', 'Debe ingresar el estado del vehículo').isEmpty(),
             await check('seats', 'Debe ingresar una cantidad númerica').toInt()
             .custom(value => {
                 if (value < 2 || value > 40) {
                     return Promise.reject('El número no puede ser inferior a 1 o superior a 40');
                 }
             })
         ] */

        //return validationResult(req);
    }
};

module.exports = new car_controllers();