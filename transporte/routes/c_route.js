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

//Save route
router.post('/add', [
    //Validations
    body('name', 'Ingrese el nombre de la ruta estándar.').not().isEmpty(),
    body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({ max: 40 }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').not().isAlphanumeric(),
    body('departamento', 'No seleccionó un departamento.').not().isEmpty(),
    body('municipio', 'No seleccionó un municipio').not().isEmpty()
],
    (req, res) => {
        //if there are errors, renders the same form, otherwise saves the new route in the DB.
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