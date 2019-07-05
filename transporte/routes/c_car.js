const express = require('express')
const router = express.Router();
const services = require('../services/s_car');
const Car = require('../models/m_car');

/*GET Car List*/
router.get('/', (req, res, next) => {
    let cars = services.getAll()
    if (cars) {
        res.render('../views/Cars/list.html');
    } else {
        res.render('../views/Cars/list.html');
    }
});

/*Get Add a car */
router.get('/add', (req, res) => {
    if (services.create()) {
        res.redirect('index');
    } else {
        res.redirect('/');
    }
})

module.exports = router