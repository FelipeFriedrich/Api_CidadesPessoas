const Sequelize = require('sequelize');

//const path = 'mysql://root:admin@localhost:3306/desafio';

//const sequelize = new Sequelize(path, { operatorsAliases: false });

const sequelize = new Sequelize('codementor', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql',
    pool: {
      max: 10,
      min: 0,
      acquire: 30000,
      idle: 10000
    }
  });

module.exports = sequelize;