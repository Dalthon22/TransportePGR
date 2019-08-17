'use strict';
module.exports = {
  up: (queryInterface, Sequelize) => {
    return queryInterface.createTable('Vouchers', {
      num_voucher: {
        allowNull: false,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      price: {
        type: Sequelize.DECIMAL
      },
      condition: {
        type: Sequelize.STRING
      },
      date_entry: {
        type: Sequelize.DATE
      },
      voucher_provider: {
        type: Sequelize.STRING
      },
      num_entry_bill: {
        type: Sequelize.INTEGER
      },
      date_entry_bill: {
        type: Sequelize.DATE
      },
      num_close_bill: {
        allowNull: true,
        type: Sequelize.INTEGER
      },
      date_close_bill: {
        allowNull: true,
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
    return queryInterface.dropTable('Vouchers');
  }
};