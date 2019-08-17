'use strict';
module.exports = (sequelize, DataTypes) => {
  const Procuraduria = sequelize.define('Procuraduria', {
    procu_name: DataTypes.STRING
  }, {});
  Procuraduria.associate = function (models) {
    // associations can be defined here
    Procuraduria.belongsToMany(models.Vouchers, {
      through: "voucher_procu_assign",
      as: "vouchers",
      foreignKey: "id_procu"
    });
  };
  return Procuraduria;
};