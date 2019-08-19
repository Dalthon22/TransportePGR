const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
//const Routes = require('./m_route');
//const Cars = require('./m_car');
const Address = require('./m_address');
//const Frequent_Place = require('./m_frequent_place');

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
});
Procuraduria.hasMany(Frequent_Place, {
    foreignKey: 'frequent_place_id'
});
Procuraduria.hasMany(Cars, {
    foreignKey: 'procuraduria_id'
}); */
Procuraduria.belongsTo(Address, {
    foreignKey: 'address_id'
});

module.exports = Procuraduria;