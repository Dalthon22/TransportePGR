const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const Route = require('./m_route');

const Procuraduria = db.define('procuraduria', {

    name: {
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
    },
},  {
        underscored: true,
        timestamps: true,
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        freezeTableName: true,
})

Procuraduria.hasMany(Route, {foreignKey: 'idProcuraduria'});
Procuraduria.sync();
Route.sync();
module.exports = Procuraduria;