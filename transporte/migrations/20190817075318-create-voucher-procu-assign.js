'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('voucher_procu_assigns', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      num_voucher: {
        type: Sequelize.INTEGER,
        onDelete: "CASCADE",
        references: {
          model: "Vouchers",
          key: "num_voucher"
        }
      },
      id_procu: {
        type: Sequelize.INTEGER,
        onDelete: "CASCADE",
        references: {
          model: "Procuradurias",
          key: "id_procu"
        }
      },
      date_procu_voucher: {
        type: Sequelize.DATE
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  down: (queryInterface, Sequelize) => {
    return queryInterface.dropTable('voucher_procu_assigns');
  }
};