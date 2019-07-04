const Sequelize = require('sequelize');
const db = require('../conex/conex');

const Ruta = db.define('ruta', {

  routeName: {
    type: Sequelize.STRING, allowNull: false,
    validate: {
        isAlphanumeric: true,
        notEmpty: true,
    }
  },

  serviceDays: {
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

module.exports = Ruta;