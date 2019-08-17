'use strict';
module.exports = (sequelize, DataTypes) => {
  const voucher_procu_assign = sequelize.define('voucher_procu_assign', {
    num_voucher: DataTypes.INTEGER,
    id_procu: DataTypes.INTEGER,
    date_procu_voucher: DataTypes.DATE
  }, {});
  voucher_procu_assign.associate = function(models) {
    // associations can be defined here
  };
  return voucher_procu_assign;
};