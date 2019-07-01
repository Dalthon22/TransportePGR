const express = require('express')
const router = express.Router();
const service = require('../services/s_car');

/*GET  drivers list*/
router.get('/', function (req, res, next) {
    res.send('respond with a resource');
});

module.exports = router