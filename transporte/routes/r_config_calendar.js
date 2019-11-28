const express = require('express');
const router = express.Router();
const controller = require('../controllers/c_config_calendar');



/*Get configuracion calendario list*/
router.get('/', (req, res) => {
    controller.getList(req, res);
});

module.exports = router