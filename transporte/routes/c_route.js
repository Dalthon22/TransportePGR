const express = require('express');
const router = express.Router();
const Route = require('../models/m_route');
const services = require('../services/s_route');
const bodyParser = require('body-parser');

// Get route list
router.get('/', (req, res) => {
    services.getAll()
        .then(Routes => res.render('../views/route/list.html', {
            Routes
        }))
        .catch(err => console.log(err))
});

// Display create route form
router.get('/add', (req, res) => res.render('../views/route/add.html')
    .catch(err => console.log(err)));

router.post('/add', (req, res) => {
    let {
        route_name,
        service_days
    } = req.body;
    services.create(route_name, service_days)
        .then(res.redirect('../views/route/list.html'))
        .catch(err => console.log(err));
})

module.exports = router;