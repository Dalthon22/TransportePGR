const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const Route = db.define('route', {
  name: {
    type: Sequelize.STRING,
    allowNull: false,
    validate: {
      isAlphanumeric: true,
      notEmpty: true,
    }
  },
  service_days: {
    type: Sequelize.STRING(7),
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
  },
}, {
  underscored: true,
  timestamps: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  freezeTableName: true,
});

module.exports = Route;
