const express = require('express')
const router = express.Router();
const controller = require('../controllers/c_approve_panel');
const {
    body
} = require('express-validator');

router.get('/panel_de_aprobacion', (req, res) => {
    controller.getListUnit(req, res);
});

router.post('/panel_de_aprobacion', (req, res) => {
    let aod = req.body.aprobacion;
    if (aod == 1) {
        controller.AprobarFoloUnidad(req, res);
    } else {
        controller.CancelarFoloUnidad(req, res);
    }
});

router.get('/nuevos_requerimientos', (req, res) => {
    controller.getListAllNew(req, res);
});

router.post('/nuevos_requerimientos', (req, res) => {
    let aod = req.body.aprobacion;
    if (aod == 1) {
        controller.AprobeFoloTransport(req, res);
    } else {
        controller.CancelarFoloTransporte(req, res);
    }
});

module.exports = router;