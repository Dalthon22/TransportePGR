const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

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


State.sync();
module.exports = State;