const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Vehicle = require('./m_vehicle');

const Voucher_folo6_assign = db.define('SGT_Vales_Asignados_Folo6', {
    date_voucher_f6: {
        type: Sequelize.DATE,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    }
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

Voucher_folo6_assign.belongsTo(Vehicle, {
    foreignKey: 'vehicle_id'
});


module.exports = Voucher_folo6_assign;