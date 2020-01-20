const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const UserRol = require('./m_usuario_por_perfil');

const Role = db.define('SGT_Rol', {
    codigo_rol: {
        type: Sequelize.STRING(10),
        primaryKey: true,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    name: {
        type: Sequelize.STRING(50),
        allowNull: false,
        unique: true,
        validate: {
            notEmpty: true,
        }
    }
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

Role.hasMany(UserRol, {
    foreignKey: 'codigo_rol',
    onDelete: 'cascade'
});

module.exports = Role;