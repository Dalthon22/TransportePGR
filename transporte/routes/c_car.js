const express = require('express')
const router = express.Router();
const services = require('../services/s_car');

/*GET Car List*/
router.get('/', (req, res) => {
    let states_map = new Map();
    states_map.set('Funcional', 'Funcional').set('Mantenimiento', 'En Mantenimiento').set('Dañado', 'Dañado');
    const states = states_map.entries();
    services.getAll()
        .then(cars => res.render('../views/car/list.html', {
            cars,
            states
        }))
        .catch(error => console.log(error))
});

/*Get Add a car */
router.post('/add', (req, res) => {
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

module.exports = router