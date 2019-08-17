'use strict';
module.exports = (sequelize, DataTypes) => {
  const Voucher = sequelize.define('Voucher', {
    num_voucher: DataTypes.INTEGER,
    price: DataTypes.DECIMAL,
    condition: DataTypes.STRING,
    date_entry: DataTypes.DATE,
    voucher_provider: DataTypes.STRING,
    num_entry_bill: DataTypes.INTEGER,
    date_entry_bill: DataTypes.DATE,
    num_close_bill: DataTypes.INTEGER,
    date_close_bill: DataTypes.DATE
  }, {});
  Voucher.associate = function (models) {
    Voucher.belongsToMany(models.Procuradurias, {
      through: "voucher_procu_assign",
      as: "procuradurias",
      foreignKey: "num_voucher"
    });
  };
  return Voucher;
};