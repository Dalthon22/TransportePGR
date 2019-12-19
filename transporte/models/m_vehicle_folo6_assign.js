const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Vehicle = require('./m_vehicle');

const Vehicle_folo6_assign = db.define('SGT_Vehiculo_Asignado_Folo6', {
    mileage: {
        type: Sequelize.INTEGER,
        allowNull: true,
    },
    end_mileage: {
        type: Sequelize.INTEGER,
        allowNull: true,
    }
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

Vehicle_folo6_assign.belongsTo(Vehicle, {
    foreignKey: 'vehicle_id',
});

module.exports = Vehicle_folo6_assign;