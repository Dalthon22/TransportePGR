const express = require('express');
const router = express.Router();
const db = require('../conex/conex');
const Procuraduria = require('../models/procuraduria_m');
const procuraduriaServices = require('../services/s_procuraduria');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

// Get procuradurías list
router.get('/', (req, res) => procuraduriaServices.getAll());

// Display create procuradurías form
router.get('/create', (req, res) => res.render('create'));
module.exports = router;
