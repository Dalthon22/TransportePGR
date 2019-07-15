const express = require('express')
const router = express.Router();
const controller = require('../controllers/c_car');

/*GET Car List*/
router.get('/', (req, res) => {
    controller.getList(req, res);
});

/*GET Add*/
router.get('/add', (req, res) => {
    controller.getAdd(req, res);
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
    state = state.toLowerCase();
    engine = state.toUpperCase();
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