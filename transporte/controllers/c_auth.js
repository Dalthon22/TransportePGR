const User_Controller = require('./c_user');
const user_role_controller = require('../controllers/c_user_role');
const secret_token = require('../dbconfig/secret_token');
const employee_controller = require('./c_employee');

//Seguridad
const db = require('../dbconfig/conex');
const jwt = require('jsonwebtoken');

//Manejo de fechas
var moment = require('moment');
moment.locale("Es-SV")

const {
    body,
    check,
    validationResult
} = require('express-validator');

class auth_controller {
    constructor() {

    }
    async log_in(username, password, req, res) {
        try {
            /* Buscar por mail, para ver si existe el usuario */
            //console.dir("Existe por mail: " + User_Controller.existByEmail(username)):
            /* Consulta a tabla de SGT_USUARIO */
            let user = await User_Controller.getByMail(username, password, req, res)
            if (user) {
                console.log("usuario encontrado");
                /* Consulta a la tabla de SIS_USUARIO */
                /*  await db.query('SELECT * FROM SIS_Usuarios WHERE CorreoElectronicoUsuario = ? AND ClaveUsuario = ?', {
                         replacements: [username, password],
                         type: db.QueryTypes.SELECT */

                //console.dir(user);

                let roles = await user_role_controller.getList(user);
                console.dir(roles);
                //create and assign token
                const token = jwt.sign({
                    user,
                    roles
                }, secret_token);
                console.log(token)

                const options = {
                    /*EXPIRACIÓN DE COOKIE*/
                    expires: moment().add(1, 'months').toDate(),
                    httpOnly: true
                }
                var url = encodeURI('/home');

                /*ENVIO DE COOKIE */
                res.cookie('token', token, options).redirect(url);
                res.end();
            } else {
                res.render('../views/login.html', {
                    err_message: 'Por favor ingrese nuevamente sus datos',
                    err_title: 'Usuario o contraseña son incorrectos'
                });
            }
        } catch (error) {
            console.log(error)
            res.render('../views/login.html', {
                err_message: 'Por favor intente de nuevo, si el error persiste contacte a soporte técnico',
                err_title: 'Ocurrió un error mientras se iniciba la sesión'
            });
        }
    }

    decode_token(coded_token) {
        var decoded = jwt.verify(coded_token, secret_token);
        return decoded
    }


    //función para el logout o eliminación de la cookie
    log_out(req, res) {
        res.cookie('token', 'none', {
            expires: moment().add(10, 'seconds').toDate(),
            httpOnly: true
        })
        res.redirect('/login');
    }

    getRolesNames(token) {
        var roles = [];
        token.roles.forEach(el => {
            roles.push(el.codigo_rol);
        });
        console.log(roles);
        return roles;
    }



};

module.exports = new auth_controller();