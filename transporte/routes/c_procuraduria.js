const express = require('express');
const router = express.Router();
const controller = require('../services/s_procuraduria');
const { body } = require('express-validator');

// Get procuradurías list
router.get('/', (req, res) => {
    controller.getList(req, res);
});

// Display create procuradurías form
router.get('/add', (req, res) => res.render('../views/procuraduria/add.html'));

//Saves new procuraduría
router.post('/add', [
    //Validations
    body('name', 'Ingrese el nombre de la procuraduría.').not().isEmpty(),
    body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({ max: 40 }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9 ]+$/i)
],
    (req, res) => {
        controller.createProcuraduria(req, res);
    });

//Shows edit form
router.get('/update', (req, res) => {
    controller.getUpdate(req, res);
});

//Saves edited procuraduría
router.post('/update', [
    //Validations
    body('name', 'Ingrese el nombre de la procuraduría.').not().isEmpty(),
    body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({ max: 40 }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9 ]+$/i),
], (req, res) => {
    controller.updateProcuraduria(req, res);
});
module.exports = router;
