const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const Car = db.define('Car', {
    id: {
        type: Sequelize.INTEGER,
        allowNull: false,
        primaryKey: true,
        unique: true,
        validation: {
            isNumeric: true,
            notEmpty: true
        },
        autoIncrement: true,
        comment: 'Llave primaria'
    },
    state: {
        type: Sequelize.ENUM(0, 1, 2),
        defaultValue: 0,
        allowNull: false,
        validation: {
            notEmpty: true
        }
    },
}, {
    underscored: true,
    timestamps: true,
    paranoid: true,
    freezeTableName: true,
    singular: 'Car',
    plural: 'Cars',
    tableName: 'car',
    engine: 'Default',
    comment: 'Modelo que permitira dar mantenimiento a los datos relacionados con la flota vehicular',
    indexes: [{
        unique: true,
        name: 'Car_ix_1',
        method: 'BTREE',
        fields: ['id']
    }]
});

module.exports = Car;