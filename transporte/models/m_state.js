const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Cities = require('../models/m_city');

const State = db.define('state', {
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

Cities.sync();
State.hasMany(Cities, {
    foreignKey: 'state_id'
});
State.sync();
module.exports = State;