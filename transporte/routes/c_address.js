const express = require('express');
const router = express.Router();
const controller = require('../services/s_address');
const { body } = require('express-validator');

//get addresses list
router.get('/', (req, res) => {
    controller.getList(req, res);
});

// Show add form and Get Departamentos list
router.get('/add', (req, res) => {
    controller.getDepartmentList(req, res);
});

//Gets Municipios depending on the selected Departamento
router.get('/getMunicipios', (req, res) => {
    controller.getMunicipiosByDepartamento(req, res);
});

//Saves the new address in the DB.
router.post('/add', [
    //Validations
    body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({ max: 40 }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9 ]+$/i),
    body('detail', 'Ingrese el detalle de la dirección.').not().isEmpty(),
    body('detail', 'El detalle debe ser menor a 250 caracteres.').isLength({ max: 250 }),
    body('detail', 'El detalle debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9 ]+$/i),
    body('departamento', 'No seleccionó un departamento.').not().isEmpty(),
    body('municipio', 'No seleccionó un municipio').not().isEmpty()
], (req, res) => {
    controller.createAddress(req, res);
});

//Show edit form
router.get('/update', (req, res) => {
    controller.getUpdate(req, res);
});

//Saves edited address
router.post('/update', [
    //Validations
    body('name', 'El nombre debe ser menor a 40 caracteres.').isLength({ max: 40 }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9 ]+$/i),
    body('detail', 'Ingrese el detalle de la dirección.').not().isEmpty(),
    body('detail', 'El detalle debe ser menor a 250 caracteres.').isLength({ max: 250 }),
    body('detail', 'El detalle debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9 ]+$/i),
    body('departamento', 'No seleccionó un departamento.').not().isEmpty(),
    body('municipio', 'No seleccionó un municipio').not().isEmpty()
], (req, res) => {
    controller.updateAddress(req, res);
});

module.exports = router;
