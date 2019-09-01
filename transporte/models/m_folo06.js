const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const Folo_06 = db.define('folo06', {
    date_of_done: {
        type: Sequelize.DATE,
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    applicant_name: {
        type: Sequelize.STRING(100),
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    requesting_unit: {
        type: Sequelize.STRING(150),
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    off_date: {
        type: Sequelize.DATE,
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    off_hour: {
        type: Sequelize.TIME,
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    return_hour: {
        type: Sequelize.TIME,
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    passengers_number: {
        type: Sequelize.INTEGER,
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    with_driver: {
        type: Sequelize.BOOLEAN,
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    person_who_will_drive: {
        type: Sequelize.STRING(100),
        allownull: false,
        validate: {
            notEmpty: true
        }
    }, //No agregué el tipo de licencia porque en la última reunión en la PGR se acordó que no iría
    mission: {
        type: Sequelize.STRING(150),
        allownull: false,
        validate: {
            notEmpty: true
        }
    },
    observation: {
        type: Sequelize.STRING(150),
        allownull: false,
        validate: {
            notEmpty: true
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

module.exports = Folo_06;