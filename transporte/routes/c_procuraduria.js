const express = require('express');
const router = express.Router();
const Procuraduria = require('../models/m_procuraduria');
const services = require('../services/s_procuraduria');
const bodyParser = require('body-parser');

// Get procuradurías list
router.get('/', (req, res) => {
    services.getAll()
        .then(Procuraduria => res.render('../views/procuraduria/list.html', {
            Procuraduria
        }))
        .catch(err => console.log(err))
});

// Display create procuradurías form
router.get('/add', (req, res) => res.render('../views/procuraduria/add.html')
    .catch(err => console.log(err)));

router.post('/add', (req, res) => {
    let {
        name,
        address
    } = req.body;
    services.create(name, address)
        .then(res.redirect('/instituciones'))
        .catch(err => console.log(err));
})

module.exports = router;