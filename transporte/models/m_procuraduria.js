const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Ruta = require('./m_ruta');

const Procuraduria = db.define('procuraduria', {

    procuraduria_name: {
        type: Sequelize.STRING, allowNull: false,
        validate: {
            isAlphanumeric: true,
            notEmpty: true,
        }
    },

    address:{
        type: Sequelize.STRING,
        validate:{
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
//Procuraduria.sync();
//Ruta.sync();
module.exports = Procuraduria;