const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const UserRol = db.define('SIS_UsuariosPorPerfil', {}, {
    underscored: false,
    timestamps: false,
    /*  createdAt: 'created_at',
     updatedAt: 'updated_at', */
    freezeTableName: true,
});

UserRol.removeAttribute('id');

module.exports = UserRol;