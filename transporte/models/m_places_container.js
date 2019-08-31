const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Address = require('../models/m_address');
const Frequent_Place = require('../models/m_frequent_place');

const Places_Container = db.define('places_container', {
    date_of_visit: {
        type: Sequelize.STRING(250),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
}, {
        underscored: true,
        timestamps: true,
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        freezeTableName: true,
    });

Address.hasOne(Places_Container, {
    foreignKey: 'address_id',
});

Frequent_Place.hasOne(Places_Container, {
    foreignKey: 'frequent_place_id'
});

module.exports = Places_Container;