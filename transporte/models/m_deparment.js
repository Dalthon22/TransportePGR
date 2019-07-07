const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Cities = require('./m_city');

const Deparment = db.define('deparment', {
    cnr_code: {
        type: Sequelize.STRING(2),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    name: {
        type: Sequelize.STRING(50),
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

Deparment.hasMany(Cities, {
    foreignKey: 'deparment_id'
});

module.exports = Deparment;