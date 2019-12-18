const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Folo6 = require ('./m_folo6');
const Driver = require('./m_driver');

const driver_folo6_assign = db.define('SGT_Asignacion_Folo6_Motorista', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
    }
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

driver_folo6_assign.belongsTo(Folo6, {
    foreignKey: 'folo06_id'
});

driver_folo6_assign.belongsTo(Driver, {
    foreignKey: 'driver_id'
});

module.exports = driver_folo6_assign;