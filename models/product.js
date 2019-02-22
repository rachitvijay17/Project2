module.exports = function(sequelize, DataTypes) {
  var Product = sequelize.define("Product", {
    text: DataTypes.STRING,
    description: DataTypes.TEXT
  });
  return Example;
};
