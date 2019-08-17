const router = require('../middleware/router');
const controller = require('../controllers/c_voucher');

router.get('/agregar_vales', (req, res) => {
    res.render('./voucher/add_voucher.html');
});
router.post('/agregar_vales', (req, res) => {
    controller.create(req, res);

});

module.exports = router;
const express = require('express')
const {
    body,
    check,
    validationResult
} = require('../middleware/expresse-validator');

/*GET List*/
router.get('/', (req, res) => {
    controller.getList(req, res);

});

/*GET Create*/
router.get('/create', (req, res) => {
    controller.getCreate(req, res);
});

/*POST Create*/
/* router.post('/create',
    [
        body('brand', 'Debe ingresar la marca del vehículo').not().isEmpty(),
        body('chassis', 'Debe ingresar el número chasis del vehículo').not().isEmpty(),
        body('model', 'Debe ingresar modelo del vehículo').not().isEmpty(),
        body('engine', 'Debe ingresar número de motor del vehículo').not().isEmpty()
        .not().isAlphanumeric()
        .isLength({
            min: 10
        }).withMessage('El número del motor debe contener al menos 10 carácteres alfanúmericos'),
        body('state', 'Debe ingresar el estado del vehículo').not().isEmpty(),
        body('seats', 'Debe ingresar la cantidad de asientos').not().isEmpty()
        .not().toInt().withMessage('Debe ingresar una cantidad númerica')
    ], (req, res) => {
        controller.create(req, res);
    }); */

module.exports = router