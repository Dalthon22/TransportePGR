const express = require('express');
const router = express.Router();
const controller = require('../controllers/c_procuraduria');
const { body } = require('express-validator');

// Get procuradurías list
router.get('/', (req, res) => {
    controller.getList(req, res);
});

// Display create procuradurías form
router.get('/add', (req, res) => {
    controller.getCreate(req, res);
});

// Display update procuradurías form
router.get('/update', (req, res) => {
    controller.getUpdate(req, res);
});

//Saves edited procuraduría
router.post('/gestionar', [
    //Validations
    body('name', 'Ingrese el nombre de la procuraduría.').not().isEmpty(),
    body('name', 'El nombre debe ser menor a 250 caracteres.').isLength({
        max: 250
    }),
    body('name', 'El nombre debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9. ]+$/i),
    body('detail', 'Ingrese el detalle de la dirección.').not().isEmpty(),
    body('detail', 'El detalle debe ser menor a 250 caracteres.').isLength({
        max: 250
    }),
    body('detail', 'El detalle debe contener solo caracteres alfanuméricos.').matches(/^[a-zA-Záéíóú0-9. ]+$/i),
    body('departamento', 'No seleccionó un departamento.').not().isEmpty(),
    body('municipio', 'No seleccionó un municipio').not().isEmpty()
], (req, res) => {
    let { procu_id } = req.body;
    if (procu_id) {
        controller.updateProcuraduria(req, res);
    } else {
        controller.createProcuraduria(req, res);
    }
});
module.exports = router;