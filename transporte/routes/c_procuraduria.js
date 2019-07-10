const express = require('express');
const router = express.Router();
//const Procuraduria = require('../models/m_procuraduria');
const services = require('../services/s_procuraduria');

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
        procuraduria_name,
        address
    } = req.body;
    services.create(procuraduria_name, address)
        .then(res.redirect('../views/procuraduria/list.html'))
        .catch(err => console.log(err));
})

module.exports = router;
