const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const UserRol = require('./m_user_role');

const User = db.define('SGT_Usuario', {
    first_name: {
        type: Sequelize.STRING(75),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    last_name: {
        type: Sequelize.STRING(75),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    is_unit_boss: {
        type: Sequelize.BOOLEAN,
        defaultValue: false,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    email: {
        type: Sequelize.STRING(100),
        unique: true,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    password: {
        type: Sequelize.STRING(25),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    active: {
        type: Sequelize.BOOLEAN,
        allowNull: false,
        defaultValue: false
    },
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

User.hasMany(UserRol, {
    foreignKey: 'user_id',
    onDelete: 'cascade'
});

module.exports = User;