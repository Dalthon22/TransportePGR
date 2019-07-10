const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const City = require('../models/m_city');

const Address = db.define('address', {
    detail: {
        type: Sequelize.STRING(250),
        allowNull: false,
        validate: {
            isAlphanumeric: true,
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

module.exports = Address;