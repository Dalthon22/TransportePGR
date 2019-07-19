const express = require('express');
const router = express.Router();
const services = require('../services/s_route');
const { body, validationResult } = require('express-validator');

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

router.post('/add', [
    body('name', 'Ingrese el nombre de la ruta estándar.').not().isEmpty()
],
    (req, res) => {
        const errors = validationResult(req);
        let {
            name,
        } = req.body;
        console.log(errors.array());
        if (!errors.isEmpty()) {
            res.render('../views/route/add.html', {
                name, errors: errors.array()
            });
        }
        else {
            console.log(body);
            services.create(name)
                .then(res.redirect('/rutas'))
                .catch(err => console.log(err));
        }
    });

module.exports = router;