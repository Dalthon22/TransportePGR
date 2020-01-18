const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Unit = require('./m_unit');
const Employee = require('./m_employee');
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
        defaultValue: '0',
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
    hasTrigger: true
});

User.hasMany(UserRol, {
    foreignKey: 'user_id',
    onDelete: 'cascade'
});

User.belongsTo(Employee, {
    foreignKey: 'id_boss'
});

User.belongsTo(Unit, {
    foreignKey: 'unit_id'
})

module.exports = User;