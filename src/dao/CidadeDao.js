import {Sequelize, DataTypes} from 'sequelize';

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

export default sequelize.define('cidades',{
        id: {
          type: DataTypes.INTEGER,
          primaryKey: true,
          autoIncrement: true
        },
        nome:{
            type: DataTypes.STRING
        },
        estado:{
            type: DataTypes.STRING
        }
},{
    tableName: 'cidades'
});
