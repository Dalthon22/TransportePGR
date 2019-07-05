const express = require('express');
const router = express.Router();
const Procuraduria = require('../models/m_procuraduria');
const services = require('../services/s_procuraduria');
var nunjucks = require('nunjucks');


// Get procuradurías list
router.get('/', (req, res) => Procuraduria = services.getAll()
.then(res.render('../views/procuraduria/list.html'), {Procuraduria})
.catch(err => console.log(err)));

// Display create procuradurías form

router.get('/add', (req, res) => res.render('../views/procuraduria/add.html'));
module.exports = router;