const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const User = require('./m_user');
const Rol = require('./m_role');

const UserRol = db.define('SGT_UsuarioRol', {
    CodigoUsuario: {
        type: Sequelize.STRING(10),
        primaryKey: true,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    CodigoRol: {
        type: Sequelize.STRING(50),
        primaryKey: true,
        allowNull: false,
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

UserRol.belongsTo(User, {
    foreignKey: 'CodigoUsuario'
});

UserRol.belongsTo(Rol, {
    foreignKey: 'CodigoRol'
});

module.exports = UserRol;