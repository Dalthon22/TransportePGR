const User_Controller = require('./c_user');
const user_role_controller = require('../controllers/c_user_role');
const secret_token = require('../dbconfig/secret_token');
const employee_controller = require('./c_employee');
const querystring = require('querystring');

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

                //Para traer los roles por sus nombres que permita identificar más fácilmente que rol le pertenece y una vez iniciada sesión, a que pantalla se le va a redirigir
                var roles_names = this.getRolesNamesCodedToken(token)
                //redirección según rol
                var url = this.redirectByRol(roles_names);

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

        const query = querystring.stringify({
            bye: true,
        });
        res.redirect('/login?' + query)
    }

    getRolesNames(token) {
        var roles = [];
        token.roles.forEach(el => {
            roles.push(el.codigo_rol);
        });
        console.log(roles);
        return roles;
    }

    getRolesNamesCodedToken(coded_token) {
        const token = this.decode_token(coded_token);
        var roles = [];
        token.roles.forEach(el => {
            roles.push(el.codigo_rol);
        });
        console.log(roles);
        return roles;
    }

    redirectByRol(roles_names) {
        var url = encodeURI('/home');;

        if (roles_names.includes('emp')) url = encodeURI('/home');
        if (roles_names.includes('unitC ')) url = encodeURI('/vales');
        if (roles_names.includes('adminIT')) url = encodeURI('/usuarios');
        if (roles_names.includes('adminV')) url = encodeURI('/asignacion_de_combustible/vales');
        if (roles_names.includes('adminVe')) url = encodeURI('/vehiculos');
        if (roles_names.includes('adminR')) url = encodeURI('/control_de_ruta');
        if (roles_names.includes('uBoss')) url = encodeURI('/panel_de_aprobacion');
        if (roles_names.includes('adminTrans')) url = encodeURI('/panel_de_aprobacion/nuevos_requerimientos');

        return url
    }

};

module.exports = new auth_controller();