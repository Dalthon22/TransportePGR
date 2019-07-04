const Sequelize = require('sequelize');
const db = require('../conex/conex');
const Ruta = require('./ruta_m');

const Procuraduria = db.define('procuraduria', {

    procuraduriaName: {
        type: Sequelize.STRING, allowNull: false,
        validate: {
            isAlphanumeric: true,
            notEmpty: true,
        }
    },

    createdAt:{
        type: Sequelize.DATE
    },

    updatedAt:{
        type: Sequelize.DATE
    },

    created_by:{
        type: Sequelize.STRING
    },

    updated_by:{
        type: Sequelize.STRING
    }
})

Procuraduria.hasMany(Ruta, {foreignKey: 'idProcuraduria'});
Procuraduria.sync();
Ruta.sync();
module.exports = Procuraduria;