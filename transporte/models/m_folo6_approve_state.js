const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const folo6 = require('./m_folo6');

const Folo6_Approve_State = db.define('folo6_approve_state', {
    request_unit_approve: {
        type: Sequelize.BOOLEAN,
        allowNull: true,
    },
    unit_cancel_detail: {
        type: Sequelize.STRING(250),
    },
    transport_unit_approve: {
        type: Sequelize.BOOLEAN,
        allowNull: true,
    },
    cancel_tunit_detail: {
        type: Sequelize.STRING(250),
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

Folo6_Approve_State.belongsTo(folo6, {
    foreignKey: 'folo_id',
});


module.exports = Folo6_Approve_State;