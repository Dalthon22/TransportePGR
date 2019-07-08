const express = require('express')
const router = express.Router();
const services = require('../services/s_car');

/*GET Car List*/
router.get('/', (req, res) => {
    let states_map = new Map();
    states_map.set('Funcional', 'Funcional').set('Mantenimiento', 'En Mantenimiento').set('Dañado', 'Dañado');
    const states = states_map.entries();

    /* if (request.session.loggedin === true) {
        services.getAll()
            .then(cars => res.render('../views/car/list.html', {
                cars
            }))
            .catch(error => console.log(error))
    } else {
        response.send('Please login to view this page!');
    }
    res.end(); */
    services.getAll()
        .then(cars => res.render('../views/car/list.html', {
            cars,
            states
        }))
        .catch(error => console.log(error))
});

/*Get Add a car */
router.get('/add', (req, res) => {
    let {
        brand,
        model,
        plate,
        chassis,
        engine,
        seats
    } = req.body;
    if (services.create()) {
        res.redirect('index.html');
    } else {
        res.redirect('/');
    }
});

module.exports = router