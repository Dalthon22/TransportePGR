const express = require('express');
const router = express.Router();
//const Procuraduria = require('../models/m_procuraduria');
const services = require('../services/s_procuraduria');

// Get procuradurías list
router.get('/', (req, res) => Procuraduria = services.getAll()
.then(res.render('../views/instituciones/list.html'), {Procuraduria})
.catch(err => console.log(err)));

// Display create procuradurías form
router.get('/add', (req, res) => { res.render('../views/instituciones/add.html')
//.catch(err => console.log(err))
});

router.post('/add', (req, res) => {
    console.log(req.body);
    res.redirect('/instituciones');
    /*let{
        name,
        address,
    } = req.body;
    console.log (name+address);
    services.Create(name, address)
    .then(procuraduria => res.redirect('/instituciones'))
    .catch(err => console.log(err));*/
});

router.post('/mostrar', (req, res) => {
    let{
        name,
        address,
    } = req.body;
    console.log (name+address);
    services.Create(name, address)
    .then(procuraduria => res.redirect('/instituciones'))
    .catch(err => console.log(err));
    //res.render('../views/route/list.html')
});

module.exports = router;