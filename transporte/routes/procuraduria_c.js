const express = require('express');
const router = express.Router();
const Procuraduria = require('../models/m_procuraduria');
const services = require('../services/s_procuraduria');
var nunjucks = require('nunjucks');


// Get procuradurías list
router.get('/', (req, res, next) =>{
    let procuradurias = services.getAll()
    if (procuradurias) {
        res.render('../views/procuraduria/list.html'), {
            procuradurias
        };
    } else {
        res.render('../views/procuraduria/list.html'), {
            procuradurias
        };
    }
});
// Display create procuradurías form
router.get('/add', (req, res) => res.render('../views/procuraduria/createProcuradurias'));
module.exports = router;