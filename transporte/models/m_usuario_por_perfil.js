const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const UserRol = db.define('SGT_UsuarioRol', {}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

module.exports = UserRol;