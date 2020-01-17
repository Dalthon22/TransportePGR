const express = require('express')
const router = express.Router();
const db = require('../dbconfig/conex');
const jwt = require('jsonwebtoken');
const Sequelize = require('sequelize');
const Employee = require('../models/m_employee');
const secret_token = require('../dbconfig/secret_token');
const cookieParser = require('cookie-parser');
const Roles = require('../controllers/c_user_role');
const auth_controller = require('../controllers/c_auth');

var app = express();
const moment = require('moment')

router.get('/login', (req, res) => {
    res.render('login.html');
});

router.post('/auth', async (req, res) => {
    var username = req.body.username;
    var password = req.body.password;
    if (username && password) {
        await auth_controller.log_in(username, password, req, res);
    } else {
        res.render('../views/login.html', {
            err_message: 'Usuario o contraseña no han sido ingresados',
            err_title: 'Datos incompletos'
        });
        res.end();
    }
});

router.get('/home', (req, res) => {
    var username = req.query.usuario;
    console.log("token")
    console.log(req.cookies.token);
    res.render('home.html', {
        username
    });
});

module.exports = router;