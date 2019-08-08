const express = require('express');
const router = express.Router();
const services = require('../services/s_procuraduria');
const { body, validationResult } = require('express-validator');

// Get procuradurías list
router.get('/', (req, res) => {
    Procuraduria = services.getAll()
        .then(Procuraduria => res.render('../views/procuraduria/list.html', {
            Procuraduria
        }))
        .catch(err => console.log(err))
});

// Display create procuradurías form
router.get('/add', (req, res) => res.render('../views/procuraduria/add.html'));

router.post('/add', [
    body('name', 'Ingrese el nombre de la procuraduría.').not().isEmpty(),
    body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({ max: 40 }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').not().isAlphanumeric(),
],
    (req, res) => {
        const errors = validationResult(req);
        let {
            name,
        } = req.body;
        console.log(errors.array());
        if (!errors.isEmpty()) {
            res.render('../views/procuraduria/add.html', {
                name, errors: errors.array()
            });
        }
        else {
            console.log(req.body);
            services.create(name)
                .then(res.redirect('/instituciones'))
                .catch(err => console.log(err))
        }
    });

    router.get('/update', (req, res) => {
        procu_id = req.query.procu_id;
        console.log(procu_id);
        Procu = services.getProcuraduriaByID(procu_id)
        .then(Procu => res.render('../views/procuraduria/edit.html', {
            Procu
        }))
        .catch(err => console.log(err))
    }
    );

    router.post('/update', [
        body('name', 'Ingrese el nombre de la procuraduría.').not().isEmpty(),
        body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({ max: 40 }),
        body('name', 'El nombre debe contener solo caracteres alfanuméricos.').not().isAlphanumeric(),
    ],
        (req, res) => {
            const errors = validationResult(req);
            let {
                procu_id,
                name,
            } = req.body;
            console.log(errors.array());
            if (!errors.isEmpty()) {
                res.render('../views/procuraduria/edit.html', {
                    name, errors: errors.array()
                });
            }
            else {
                console.log(req.body);
                services.update(procu_id, name)
                    .then(res.redirect('/instituciones'))
                    .catch(err => console.log(err))
            }
        });
module.exports = router;
