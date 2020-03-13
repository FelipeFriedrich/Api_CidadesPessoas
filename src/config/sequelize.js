const Sequelize = require('sequelize');

const path = 'mysql://root:admin@localhost:3306/desafio';

const sequelize = new Sequelize(path, { operatorsAliases: false });


module.exports = sequelize;