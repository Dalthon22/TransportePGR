const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const City = require('../models/m_city');
const Department = require('./m_department');

const Address = db.define('address', {
    name: {
        type: Sequelize.STRING(250),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    detail: {
        type: Sequelize.STRING(250),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    created_by: {
        type: Sequelize.INTEGER
    },
    updated_by: {
        type: Sequelize.INTEGER
    },
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

Address.belongsTo(City, {
    foreignKey: 'city_id',
});

Address.belongsTo(Department, {
    foreignKey: 'department_id'
});

module.exports = Address;