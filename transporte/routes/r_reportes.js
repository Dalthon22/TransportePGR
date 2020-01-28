const express = require('express')
const router = express.Router();
const controller = require('../controllers/c_user');
const unit_controller = require('../controllers/c_unit');
const employee_controller = require('../controllers/c_employee');
const {
    body,
} = require('express-validator');

router.get('/', (req, res) => {
    res.render('reportes/reporte.html')
});

module.exports = router;