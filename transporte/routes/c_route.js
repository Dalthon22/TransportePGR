const express = require('express');
const router = express.Router();
const services = require('../services/s_route');

// Get route list
router.get('/', (req, res) => {
    Routes = services.getAll()
        .then(Routes => res.render('../views/route/list.html', {
            Routes
        }))
        .catch(err => console.log(err))
});

// Display create route form
router.get('/add', (req, res) => res.render('../views/route/add.html'));

router.post('/add', (req, res) => {
    let {
        name,
    } = req.body;
    services.create(name)
        .then(res.redirect('/rutas'))
        .catch(err => console.log(err));
})

module.exports = router;