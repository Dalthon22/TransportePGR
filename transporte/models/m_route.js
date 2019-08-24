const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');
const City = require('../models/m_city');
const Department = require('./m_department');

const Route = db.define('route', {
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
  },
}, {
  underscored: true,
  timestamps: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  freezeTableName: true,
});

Route.belongsTo(City, {
  foreignKey: 'city_id',
});

Route.belongsTo(Department, {
  foreignKey: 'department_id'
});

module.exports = Route;
