const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
//const Routes = require('./m_route');
const Vehicles = require('./m_vehicle');
const Address = require('./m_address');
const Frequent_Place = require('./m_frequent_place');

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
    foreignKey: 'procuraduria_id'
});
Procuraduria.hasMany(Vehicles, {
    foreignKey: 'procuraduria_id'
});
Procuraduria.hasMany(Address, {
    as: 'address',
    foreignKey: 'procuraduria_id'
});

module.exports = Procuraduria;