const express = require('express');
const router = express.Router();
const controller = require('../controllers/c_assign');
const {
    body
} = require('express-validator');

router.get('/vales', (req, res) => {
    controller.getAsignarVales(req, res);
});

router.post('/vales', (req, res) => {
    controller.crearAsignacionVales(req, res);
});

module.exports = router;