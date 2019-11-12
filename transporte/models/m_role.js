const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const UserRol = require('./m_user_role');

const Role = db.define('SGT_Rol', {
    name: {
        type: Sequelize.STRING(50),
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
/* 
User.hasMany(UserRol, {
    foreignKey: 'CodigoRol'
}); */

module.exports = Role;