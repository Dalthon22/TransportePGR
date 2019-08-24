const express = require('express')
const {
    body
} = require('express-validator');
const router = express.Router();
const controller = require('../controllers/c_vehicle');

/*GET List*/
router.get('/', (req, res) => {
    controller.getList(req, res);

});

/*GET Create*/
router.get('/gestionar', (req, res) => {
    controller.getCreate(req, res);
});

/*POST Create*/
router.post('/gestionar',
    [
        body('brand', 'Debe ingresar la marca del vehículo').not().isEmpty(),
        body('chassis', 'Debe ingresar el número chasis del vehículo').not().isEmpty(),
        body('model', 'Debe ingresar modelo del vehículo').not().isEmpty(),
        body('engine', 'Debe ingresar número de motor del vehículo').not().isEmpty()
        .not().isAlphanumeric()
        .isLength({
            min: 10
        }).withMessage('El número del motor debe contener al menos 10 carácteres alfanúmericos'),
        body('state', 'Debe ingresar el estado del vehículo').not().isEmpty(),
        body('seats', 'Debe ingresar la cantidad de asientos').not().isEmpty()
        .not().toInt().withMessage('Debe ingresar una cantidad númerica')
    ], (req, res) => {
        let vehicle_id = req.body;
        if (vehicle_id) {
            controller.create(req, res);
        } else {
            controller.create(req, res);
        }
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