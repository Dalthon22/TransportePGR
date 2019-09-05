const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Voucher_folo6_assign = require('./m_voucher_folo6_assign');

const Folo6 = db.define('folo6', {
    request_unit: {
        type: Sequelize.INTEGER,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    off_date: {
        type: Sequelize.DATE,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    off_hour: {
        type: Sequelize.TIME,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    return_hour: {
        type: Sequelize.TIME,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    passengers_number: {
        type: Sequelize.INTEGER,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    with_driver: {
        type: Sequelize.BOOLEAN,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    person_who_drive: {
        type: Sequelize.STRING(100),
        allowNull: true,
    },
    license_type: {
        type: Sequelize.STRING(30),
        allowNull: true,
    },
    mission: {
        type: Sequelize.STRING(150),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    observation: {
        type: Sequelize.STRING(150),
        allowNull: true,
    },
    created_by: {
        type: Sequelize.INTEGER,
        allowNull: true,
    },
    updated_by: {
        type: Sequelize.INTEGER,
        allowNull: true,
    },
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

Folo6.hasMany(Voucher_folo6_assign);

module.exports = Folo6;