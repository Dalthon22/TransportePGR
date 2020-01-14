const express = require('express')
const router = express.Router();
const db = require('../dbconfig/conex');
const jwt = require('jsonwebtoken');
const Sequelize = require('sequelize');
const Employee = require('../models/m_employee');
const secret_token = require('../dbconfig/secret_token');
const cookieParser = require('cookie-parser');
const Roles = require('../models/m_role');

var app = express();
const moment = require('moment')

router.get('/login', (req, res) => {
    res.render('login.html');
});

router.post('/auth', async (req, res) => {
    var username = req.body.username;
    var password = req.body.password;
    if (username && password) {
        console.log("ire a buscar");
        await db.query('SELECT * FROM SIS_Usuarios WHERE CorreoElectronicoUsuario = ? AND ClaveUsuario = ?', {
                replacements: [username, password],
                type: db.QueryTypes.SELECT
            }).then(async (results) => {
                console.log(results);
                if (results.length > 0) {
                    var usuario = results[0].NombresUsuario;
                    console.log("usuario encontrado");
                    //Get employee
                    let array = await Employee.findAll({
                        attributes: ['id', 'first_name', 'last_name', 'is_unit_boss', 'unit_id'],
                        where: {
                            user_id: results[0].Id,
                        }
                    })
                    let Emp = array[0];
                    console.log(Emp);

                    //create and assign token
                    const token = jwt.sign({
                        Emp
                    }, secret_token);
                    console.log(token)

                    const options = {
                        /*EXPIRACIÓN DE COOKIE*/
                        expires: moment().add(1, 'months').toDate(),
                        httpOnly: true
                    }
                    var url = encodeURI('/home?usuario=' + usuario);
                    /*ENVIO DE COOKIE */
                    res.cookie('token', token, options).redirect(url);
                } else {
                    res.send('Incorrect Username and/or Password!');
                }
                res.end();
            })
            .catch(error => console.log(error));
    } else {
        res.send('Please enter Username and Password!');
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