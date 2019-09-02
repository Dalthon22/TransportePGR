const Sequelize = require('sequelize');
const db = require('../dbconfig/conex');

const Voucher_procu_assign = db.define('voucher_procu_assign', {
  date_procu_voucher: {
    type: Sequelize.DATE,
    allowNull: false,
    validate: {
      notEmpty: true,
    }
  }
}, {
  underscored: true,
  timestamps: true,
  createdAt: 'created_at',
  updatedAt: 'updated_at',
  freezeTableName: true,
});

module.exports = Voucher_procu_assign;