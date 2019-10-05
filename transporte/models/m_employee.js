const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Folo6 = require('./m_folo6');
//const Procuraduria = require('./m_procuraduria');

const Employee = db.define('employee', {
    first_name: {
        type: Sequelize.STRING(75),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    last_name: {
        type: Sequelize.STRING(75),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    is_unit_boss: {
        type: Sequelize.BOOLEAN,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    user_name: {
        type: Sequelize.STRING(75),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    user_pass: {
        type: Sequelize.STRING(75),
        allowNull: false,
        validate: {
            notEmpty: true,
        }
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

Employee.hasMany(Folo6, {
    foreignKey: 'employee_id'
});

Employee.belongsTo(Employee, {
    foreignKey: 'id_boss'
});
module.exports = Employee;
