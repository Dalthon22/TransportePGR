const express = require('express');
const router = express.Router();
const Procuraduria = require('../models/m_procuraduria');
const services = require('../services/s_procuraduria');
const bodyParser = require('body-parser');

// Get procuradurías list
router.get('/', (req, res) => Procuraduria = services.getAll()
.then(res.render('../views/instituciones/list.html'), {Procuraduria})
.catch(err => console.log(err)));

// Display create procuradurías form
router.get('/add', (req, res) => res.render('../views/instituciones/add.html')
.catch(err => console.log(err)));

router.post('/add', (req, res) => {
    let{
        name,
        address,
    } = req.body;
    services.Create(name, address)
    .then(res.render('/instituciones'))
    .catch(err => console.log(err));
});

module.exports = router;
