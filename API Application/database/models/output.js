'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Output extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Output.init({
    nama_penyakit: DataTypes.STRING,
    definisi: DataTypes.TEXT,
    penyebab: DataTypes.TEXT,
  }, {
    sequelize,
    modelName: 'Output',
  });
  return Output;
};