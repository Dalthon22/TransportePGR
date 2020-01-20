const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const Vehiculo = db.define('TRA_Vehiculos', {
    CodigoActivoFijo: {
        type: Sequelize.CHAR(21),
        primaryKey: true,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    NumeroPlacaVehiculo: {
        type: Sequelize.CHAR(10),
        allowNull: false,
        unique: true,
        validate: {
            notEmpty: true,
        }
    },
    NumeroChasisVehiculo: {
        type: Sequelize.STRING(50),
        allowNull: false,
        unique: true,
        validate: {
            notEmpty: true,
        }
    },
    NumeroMotorVehiculo: {
        type: Sequelize.STRING(50),
        allowNull: false,
        unique: true,
        validate: {
            notEmpty: true,
        }
    },
    NumeroVINVehiculo: {
        type: Sequelize.STRING(50),
        allowNull: false,
        unique: true,
        validate: {
            notEmpty: true,
        }
    },
    MarcaVehiculo: {
        type: Sequelize.STRING(50),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    ModeloVehiculo: {
        type: Sequelize.STRING(50),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    ColorVehiculo: {
        type: Sequelize.STRING(50),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    AnnoVehiculo: {
        type: Sequelize.CHAR(4),
        allowNull: false,
        validate: {
            isNumeric: true,
        }
    },
    CapacidadPersonaVehiculo: {
        type: Sequelize.TINYINT,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    TipoCombustibleVehiculo: {
        type: Sequelize.STRING(1),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    ObservacionesVehiculo: {
        type: Sequelize.TEXT,
        allowNull: true,
        validate: {
            notEmpty: false,
        }
    },
    KilometrajeActual: {
        type: Sequelize.CHAR(10),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    }
}, {
    underscored: true,
    timestamps: false,
    freezeTableName: true,
});

module.exports = Vehiculo;