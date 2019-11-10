const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const route_conditions = db.define('SGT_Condiciones_Ruta', {
    monday: {
        type: Sequelize.BOOLEAN,
        allowNull: true
    },
    tuesday: {
        type: Sequelize.BOOLEAN,
        allowNull: true
    },
    wednesday: {
        type: Sequelize.BOOLEAN,
        allowNull: true
    },
    thursday: {
        type: Sequelize.BOOLEAN,
        allowNull: true
    },
    friday: {
        type: Sequelize.BOOLEAN,
        allowNull: true
    },
    saturday: {
        type: Sequelize.BOOLEAN,
        allowNull: true
    },
    sunday: {
        type: Sequelize.BOOLEAN,
        allowNull: true
    },
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

module.exports = route_conditions;