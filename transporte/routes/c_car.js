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
    services.create(brand, chassis, state, model, engine, plate, seats)
        .then(car => res.redirect('/vehiculos'))
        .catch(error => console.log(error));
});

module.exports = router