const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Routes = require('../models/m_route');

const City = db.define('city', {
    cnr_code: {
        type: Sequelize.STRING(4),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    name: {
        type: Sequelize.STRING(50),
        allowNull: false,
        get() {
            return this.getDataValue('name');
        },
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

City.hasMany(Routes, {
    foreignKey: 'city_id'
});

module.exports = City;