const express = require('express');
const router = express.Router();
const controller = require('../controllers/c_driver');
const {
    body
} = require('express-validator');

router.get('/', (req, res) => {
    controller.getList(req, res);
});

router.get('/nuevo', (req, res) => {
    controller.getAdd(req, res);
});

router.post('/gestionar', [
    //Validations
    body('first_name', 'El/Los nombres deben ser menores a 150 caracteres.').isLength({
        max: 150
    }),
    body('last_name', 'El/Los Apellidos deben ser menores a 150 caracteres.').isLength({
        max: 150
    }),
    body('first_name', 'Ingrese el nombre de la dirección.').not().isEmpty(),
    body('last_name', 'Ingrese el nombre de la dirección.').not().isEmpty(),

    /* body('name', 'El nombre debe contener solo caracteres alfanuméricos.').not().isAlphanumeric(), */
    body('detail', 'El detalle debe ser menor a 150 caracteres.').isLength({
        max: 200
    }),
    /* body('detail', 'El detalle debe contener solo caracteres alfanuméricos.').not().isAlphanumeric(), */
    body('departamento', 'No seleccionó un departamento.').not().isEmpty(),
    body('municipio', 'No seleccionó un municipio').not().isEmpty()
], (req, res) => {
    let fplace_id = req.body.fplace_id;
    console.log(fplace_id);
    if (fplace_id) {
        controller.updateFrequentPlace(req, res);
    } else {
        controller.createFrequentPlace(req, res);
    }
});
module.exports = router;