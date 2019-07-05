const Sequelize = require('sequelize');
const db = require('../conex/conex');
const Ruta = require('./m_ruta');

const Procuraduria = db.define('procuraduria', {
    name: {
        type: Sequelize.STRING,
        allowNull: false,
        validate: {
            isAlphanumeric: true,
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
    updatedAt: 'updated_at'
})

Procuraduria.hasMany(Ruta, {
    foreignKey: 'idProcuraduria'
});
Procuraduria.sync();
Ruta.sync();
module.exports = Procuraduria;