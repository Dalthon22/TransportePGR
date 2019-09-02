const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
//const Routes = require('./m_route');
const Vehicles = require('./m_vehicle');
const Address = require('./m_address');
const Frequent_Place = require('./m_frequent_place');
const Voucher = require('./m_voucher');

const Procuraduria = db.define('procuraduria', {
    name: {
        type: Sequelize.STRING,
        allowNull: false,
        validate: {
            notEmpty: true,
        }
    },
    created_by: {
        type: Sequelize.INTEGER
    },
    updated_by: {
        type: Sequelize.INTEGER
    }
}, {
    underscored: true,
    timestamps: true,
    createdAt: 'created_at',
    updatedAt: 'updated_at',
    freezeTableName: true,
});

/* Procuraduria.hasMany(Routes, {
    foreignKey: 'procuraduria_id'
}); */
Procuraduria.hasMany(Frequent_Place, {
    foreignKey: 'frequent_place_id'
});
Procuraduria.hasMany(Vehicles, {
    foreignKey: 'procuraduria_id'
});
Procuraduria.belongsTo(Address, {
    foreignKey: 'address_id'
});
//Para permitir tener un registro de los vales que son adjudicados a una procuraduria
Procuraduria.belongsToMany(Voucher, {
    through: "m_voucher_procu_assign",
    as: "voucher",
    foreignKey: "procuraduria_id"
});

module.exports = Procuraduria;