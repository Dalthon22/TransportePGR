const express = require('express')
const router = express.Router();
const db = require('../dbconfig/conex');
const jwt = require('jsonwebtoken');
const Sequelize = require('sequelize');
const Employee = require('../models/m_employee');
const secret_token = require('../dbconfig/secret_token');
const cookieParser = require('cookie-parser');
var app = express();
const moment = require('moment');
const asyncHandler = require('./async');

exports.protect = (req, res, next) => {
    console.log("se verificará la sesión")
    let token;
    if (req.cookies.token) {
        token = req.cookies.token;
    }

    if (!token) {
        console.log("Sesión no válida")
        res.redirect('/login');
    } else {
        try {
            //Verificar el token
            console.log('sesión válida')
            const decoded = jwt.verify(token, secret_token);
            console.log("token decodificado:" + decoded);
            next();
        } catch (err) {
            console.log(err)
            console.log("Ocurrio un error, la sesión no es válida")
            res.redirect('/login');
        }
    }
}