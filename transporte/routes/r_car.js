const express = require('express')
const {
    body,
    check,
    validationResult
} = require('../middleware/expresse-validator');
const router = express.Router();
const controller = require('../controllers/c_car');

/*GET List*/
router.get('/', (req, res) => {
    controller.getList(req, res);

});

/*GET Create*/
router.get('/create', (req, res) => {
    controller.getCreate(req, res);
});

/*POST Create*/
router.post('/create',
    [
        body('brand', 'Debe ingresar la marca del vehículo').not().isEmpty(),
        body('chassis', 'Debe ingresar el número chasis del vehículo').not().isEmpty(),
        body('model', 'Debe ingresar modelo del vehículo').not().isEmpty(),
        body('engine', 'Debe ingresar número de motor del vehículo').not().isEmpty()
        .not().isAlphanumeric()
        .isLength({
            min: 10
        }).withMessage('El número del motor debe contener al menos 10 carácteres alfanúmericos'),
        /* body('plate', 'Debe ingresar la placa del vehículo').not().isEmpty()
        .custom(value => {
            let in_used = await controller.existByPlate(value);
            console.log(in_used);
            if (!in_used) {
                return Promise.ok();
            }
        }).withMessage('Ya está en uso'), */
        check('state', 'Debe ingresar el estado del vehículo').not().isEmpty(),
        check('seats', 'Debe ingresar la cantidad de asientos').not().isEmpty()
        .not().toInt().withMessage('Debe ingresar una cantidad númerica')
        .custom(value => {
            if (value < 2 || value > 40) {
                return Promise.reject('El número no puede ser inferior a 1 o superior a 40');
            }
        })
    ], (req, res) => {
        controller.create(req, res);
    });

/*POST Add a car */
/* router.post('/add', (req, res) => {
    var success = true;
    let id;
    let {
        brand,
        chassis,
        state,
        model,
        engine,
        plate,
        seats,
    } = req.body;
    
    //Actualizacion
    services.getByPlate(plate)
        .then(tuple => {
            console.log(tuple.id)
            id = tuple.id;
            if (id) {
                services.update(brand,
                        chassis,
                        state,
                        model,
                        engine,
                        plate,
                        seats, id)
                    .then(car => {
                        console.log(car);
                        res.redirect('/vehiculos');
                    })
                    .catch(error => console.log(error))
            } else {
                services.create(brand, chassis, state, model, engine, plate, seats)
                    .then(car => {
                        console.log(car);
                        res.redirect('/vehiculos');
                    })
                    .catch(error => console.log(error));
            }
        })
        .catch(error => console.log(error))
});
 */
module.exports = router