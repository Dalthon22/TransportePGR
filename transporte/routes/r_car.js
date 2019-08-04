const express = require('express')
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
router.post('/create', (req, res) => {
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