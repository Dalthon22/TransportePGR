const router = require('../middleware/router');
const controller = require('../controllers/c_voucher');
const express = require('express')
const {
    body,
    check,
    validationResult
} = require('../middleware/expresse-validator');

router.get('/vales', (req, res) => {
    res.render('./voucher/add_voucher.html');
});
router.get('/vales/list', (req, res) => {
    controller.getList(req, res);
});

router.post('/vales/add',
    /*  [
         body('first_voucher', "Debe ingresar el numero del voucher").not().isEmpty(),
         body('first_voucher').isInt().withMessage('Debe ser un numero'),
     ], */
    (req, res) => {
        // Handle the request somehow
        console.log(req.body);
        controller.createVoucher(req, res);
    });

router.get('/vales/:num',
    (req, res) => {
        const num = req.params.num;
        controller.ifExist(num, req, res);
    });

module.exports = router;