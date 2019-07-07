const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Cities = require('./m_city');

const Deparment = db.define('deparment', {
    created_by: {
        type: Sequelize.INTEGER
    },
    updated_by: {
        type: Sequelize.INTEGER
    },
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
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
});

Deparment.hasMany(Cities, {
    foreignKey: 'deparment_id'
});
Deparment.sync();
Cities.sync();
module.exports = Deparment;