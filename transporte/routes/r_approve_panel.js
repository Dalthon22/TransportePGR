const router = require('../middleware/router');
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

router.get('/nuevos_Requerimientos', (req, res) => {
    controller.getListAllNew(req, res);
});

module.exports = router;