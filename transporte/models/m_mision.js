const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const Mision = db.define('mision', {
    name: {
        type: Sequelize.STRING(250),
        allowNull: false,
        unique: true,
        validate: {
            notEmpty: true,
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


module.exports = Mision;