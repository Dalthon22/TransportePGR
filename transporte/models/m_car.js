const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const Car = db.define('car', {
    created_by: {
        type: Sequelize.INTEGER
    },
    updated_by: {
        type: Sequelize.INTEGER
    },
    brand: {
        type: Sequelize.STRING(50),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    model: {
        type: Sequelize.STRING(50),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    plate: {
        type: Sequelize.STRING(10),
        allowNull: false,
        unique: true,
        validate: {
            isAlphanumeric: true,
            notEmpty: true,
        }
    },
    chassis: {
        type: Sequelize.STRING(20),
        allowNull: false,
    },
    engine: {
        type: Sequelize.STRING(25),
        allowNull: false,
        validate: {
            isAlphanumeric: true,
        }
    },
    seats: {
        type: Sequelize.INTEGER,
        allowNull: false,
        validate: {
            isNumeric: true,
        }
    },
    state: {
        type: Sequelize.STRING(25),
        defaultValue: 'funcional',
        allowNull: false,
        validate: {
            isAlpha: true,
            isLowercase: {
                msg: 'Debe estar en minúscula'
            }
        }
    },
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
});

Car.sync();
module.exports = Car;