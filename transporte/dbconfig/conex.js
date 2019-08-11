const Sequelize = require('sequelize');

//Local db connection
const dbConex = new Sequelize('sigestran', 'dm15012', 'dm15012+', {
  host: 'localhost',
  dialect: 'mssql',
  dialectOptions: {
    options: {
      encrypt: true,
    }
  },
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  },
});

//Daton: Local db connection
/* const dbConex = new Sequelize('sigestran', 'dm15012', 'Cdalton2019', {
  host: 'sigestran.database.windows.net',
  dialect: 'mssql',
  dialectOptions: {
    options: {
      encrypt: true,
    }
  },

  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  },

}); */

module.exports = dbConex;