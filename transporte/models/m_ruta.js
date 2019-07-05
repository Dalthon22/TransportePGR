const Sequelize = require('sequelize');
const db = require('../conex/conex');

const Ruta = db.define('ruta', {
  name: {
    type: Sequelize.STRING,
    allowNull: false,
    validate: {
      isAlphanumeric: true,
      notEmpty: true,
    }
  },

  service_days: {
    type: Sequelize.STRING,
    allowNull: false,
    validate: {
      isAlphanumeric: true,
      notEmpty: true,
    }
  },
  created_by: {
    type: Sequelize.STRING
  },

  updated_by: {
    type: Sequelize.STRING
  }
}, {
  underscored: true,
  timestamps: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
})

module.exports = Ruta;