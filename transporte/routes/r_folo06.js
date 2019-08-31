const express = require('express');
const router = express.Router();
const controller = require('../controllers/c_folo06');
const {
    body
} = require('express-validator');

//get folo06 list
router.get('/', (req, res) => {
    controller.getList(req, res);
});

// Show add form and Get Departamentos list
router.get('/add', (req, res) => {
    controller.getDepartmentList(req, res);
});