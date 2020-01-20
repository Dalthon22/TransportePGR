const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const TipoVehiculo = db.define('TRA_TipoVehiculo', {
    TipoVehiculo: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    TipoVehiculo: {
        type: Sequelize.CHAR(20),
        allowNull: false,
        unique: true,
        validate: {
            notEmpty: true,
        }
    }
}, {
    underscored: true,
    timestamps: false,
    freezeTableName: true,
});

module.exports = TipoVehiculo;