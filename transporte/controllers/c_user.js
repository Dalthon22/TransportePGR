const Sequelize = require('sequelize');
const querystring = require('querystring');
const User_Role_Controller = require('./c_user_role');
const User = require('../models/m_user');
const User_Role = require('../models/m_user_role');
const Role_Controller = require('./c_role');


//Manejo de fechas
var moment = require('moment');
moment.locale("Es-SV")

const {
    body,
    check,
    validationResult
} = require('express-validator');

class user_controller {
    constructor() {

    }

    //Encuentra el registro y devuelve true si existe
    //Parametro: email Campo único en la tabla
    async existByEmail(email) {
        let user = await User.count({
            where: {
                email: email
            }
        });
        console.log(user);
        let is_registered = (user >= 1) ? true : false;
        console.log(is_registered);
        return is_registered;
    }

    //Encuentra el registro y devuelve true si existe
    //Parametro: email Campo único en la tabla
    async getById(user_id) {
        let user = await User.findByPk(user_id);
        console.log(user);
        return user;
    }

    /*Obtiene el listado de los usarios y los renderiza en pantalla*/
    async getList(req, res) {
        try {
            var emps = await User.findAll({
                order: Sequelize.literal('id ASC')
            });
            var users = [];
            emps.forEach((record) => {
                var user = new Object();
                user.id = record.id;
                user.name = record.first_name + ' ' + record.last_name;
                user.email = record.email;
                user.active = record.active;
                user.is_unit_boss = record.is_unit_boss;
                user.created_at = moment.parseZone(record.created_at).local().format("DD/MM/YYYY h:mm A");
                users.push(user);
            })
            console.log(users);
            res.render('../views/user/list.html', {
                users
            });
        } catch (error) {
            console.log(error);
        }
    }

    /*Obtiene el formulario de creación/actulización de un usuarios */
    async getAdd(req, res) {
        try {
            var user, roles, selected_roles;
            var selected_role_codes = [];
            var selected_role_names = [];
            var user_id = req.query.user_id;
            roles = await Role_Controller.getList();
            console.log(user_id);
            if (user_id) {
                user = await User.findOne({
                    where: {
                        id: user_id
                    },
                    include: [{
                        model: User_Role,
                        raw: true,
                        required: true
                    }]
                });

                if (user.SGT_UsuarioRols || user.SGT_UsuarioRol) {
                    //Llena el array con los codigo de los roles
                    user.SGT_UsuarioRols.forEach(code => {
                        selected_role_codes.push(code.codigo_rol);
                    })
                    //Llena el array con los nombres de los roles
                    for (var i in selected_role_codes) {
                        var name = await Role_Controller.getNameByCode(selected_role_codes[i]);
                        selected_role_names.push(name);
                    }
                }
            }
            selected_roles = selected_role_names.toString();
            console.log(user);
            console.log("Roles: " + selected_roles);
            return res.render('../views/user/add.html', {
                user,
                roles,
                selected_roles
            });
        } catch (error) {
            console.log("Error en getCreate" + error)
        }
    }

    async createOrUpdateUser(req, res) {
        var is_unit_boss, active, query, new_user;
        let {
            first_name,
            last_name,
            unit_boss,
            email,
            password,
            is_active,
            user_id,
            roles
        } = req.body;
        try {
            const errors = validationResult(req);
            console.log(errors);
            if (errors.isEmpty()) {
                is_unit_boss = unit_boss == 'on' ? true : false;
                active = is_active == 'on' ? true : false;
                if (user_id) {
                    /*Actuliza un registro existente */
                    await User.update({
                        first_name,
                        last_name,
                        is_unit_boss,
                        email,
                        password,
                        active,
                    }, {
                        where: {
                            id: user_id
                        }
                    });
                    new_user = await this.getById(user_id);
                    query = querystring.stringify({
                        title: "Guardado exitoso",
                        message: "Usuario actualizado",
                        class: "success"
                    });
                } else {
                    /*Crea un nuevo registro */
                    var seqObjct = await User.create({
                        first_name,
                        last_name,
                        is_unit_boss,
                        email,
                        password,
                        active,
                    });
                    //Doble parseo para poder acceder a los atributos del objecto User
                    new_user = JSON.parse(JSON.stringify(seqObjct))
                    console.log("Roles en user_controller: " + roles);

                    query = querystring.stringify({
                        title: "Guardado exitoso",
                        message: "Usuario registrado",
                        class: "success"
                    });
                }
                if (roles) {
                    await User_Role_Controller.createOrUpdate(new_user, roles);
                }
                res.send({
                    redirect: "/usuarios?&" + query,
                    status: 200
                });
            } else {
                res.send({
                    title: "Error en la información",
                    errors: errors.array()
                })
            }
        } catch (error) {
            console.log(error);
            if (this.existByEmail(email)) {
                error = 'El correo electrónico ya existe en la base de datos';
            }
            res.send({
                title: "Error al guardar",
                message: "El usuario no pudo ser guardado. " + error,
            });
        }

    }
};

module.exports = new user_controller();