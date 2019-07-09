const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const Route = db.define('route', {

  name: {
    type: Sequelize.STRING, allowNull: false,
    validate: {
        isAlphanumeric: true,
        notEmpty: true,
    }
  },

  service_days: {
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
  },
},  {
  underscored: true,
  timestamps: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  freezeTableName: true,
})

module.exports = Route;