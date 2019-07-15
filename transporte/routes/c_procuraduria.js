const express = require('express');
const router = express.Router();
const services = require('../controllers/s_procuraduria');

// Get procuradurías list
router.get('/', (req, res) => {
    Procuraduria = services.getAll()
        .then(Procuraduria => res.render('../views/procuraduria/list.html', {
            Procuraduria
        }))
        .catch(err => console.log(err))
});

// Display create procuradurías form
router.get('/add', (req, res) => res.render('../views/procuraduria/add.html'));

router.post('/add', (req, res) => {
    let {
        name,
        address
    } = req.body;
    console.log(req.body);
    services.create(name, address)
        .then(res.redirect('/instituciones'))
        .catch(err => console.log(err));
});

module.exports = router;
