const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Address = require('../models/m_address');
const Frequent_Place = require('../models/m_frequent_place');
const Folo_06 = require('../models/m_folo06');

const Places_Container = db.define('places_container', {
    date_of_visit: {
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

Address.hasOne(Places_Container, {
    foreignKey: 'address_id',
});

Frequent_Place.hasOne(Places_Container, {
    foreignKey: 'frequent_place_id'
});

Folo_06.hasOne(Places_Container, {
    foreignKey: 'folo06_id'
});

module.exports = Places_Container;