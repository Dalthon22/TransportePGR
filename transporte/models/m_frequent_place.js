const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const City = require('../models/m_city');
const Department = require('./m_deparment');

const Frequent_Place = db.define('frequent_place', {
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

Frequent_Place.belongsTo(City, {
    foreignKey: 'city_id',
});

Frequent_Place.belongsTo(Department, {
    foreignKey: 'department_id'
});

module.exports = Frequent_Place;