-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS
, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS
, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE
, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ToolRental
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ToolRental
-- -----------------------------------------------------
CREATE SCHEMA
IF NOT EXISTS `ToolRental` DEFAULT CHARACTER
SET utf8 ;
USE `ToolRental`
;

-- -----------------------------------------------------
-- Table `ToolRental`.`Customer`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `ToolRental`.`Customer`
(
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR
(45) NOT NULL,
  `Phone` VARCHAR
(45) NULL,
  `Street` VARCHAR
(100) NOT NULL,
  `City` VARCHAR
(45) NOT NULL,
  `State` VARCHAR
(45) NOT NULL,
  `Country` VARCHAR
(45) NOT NULL,
  `Zipcode` INT NOT NULL,
  PRIMARY KEY
(`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ToolRental`.`CustomerCredentials`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `ToolRental`.`CustomerCredentials`
(
  `ID` INT NOT NULL AUTO_INCREMENT,
  `FK_CustomerID` INT NULL,
  `UserName` VARCHAR
(100) NULL,
  `Password` VARCHAR
(200) NULL,
  PRIMARY KEY
(`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ToolRental`.`Cust_Order`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `ToolRental`.`Cust_Order`
(
  `Cust_Order_ID` INT NOT NULL AUTO_INCREMENT,
  `FK_CustomerID` INT NOT NULL,
  `FK_OrderID` INT NOT NULL,
  PRIMARY KEY
(`Cust_Order_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ToolRental`.`Product_Category`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `ToolRental`.`Product_Category`
(
  `ProductCategoryID` INT NOT NULL,
  `CategoryName` VARCHAR
(100) NOT NULL,
  PRIMARY KEY
(`ProductCategoryID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ToolRental`.`Order`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `ToolRental`.`Order`
(
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `FK_ProductID` INT NOT NULL,
  `OrderDate` DATE NULL,
  `PickUpDate` DATE NULL,
  `OrderQuantity` INT NULL,
  `PickUp` TINYINT NULL,
  `OrderCost` DECIMAL NULL,
  PRIMARY KEY
(`OrderID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ToolRental`.`Product`
-- -----------------------------------------------------
CREATE TABLE
IF NOT EXISTS `ToolRental`.`Product`
(
  `ProductID` INT NOT NULL AUTO_INCREMENT,
  `Product_Name` VARCHAR
(100) NULL,
  `SupplierID` INT NOT NULL,
  `UnitPrice` DECIMAL NULL,
  `UnitsInStock` INT NULL,
  `UnitsOnOrder` INT NULL,
  `Availability` TINYINT NULL,
  `Image` VARCHAR
(1000) NULL,
  `FK_CategoryID` INT NOT NULL,
  PRIMARY KEY
(`ProductID`))
ENGINE = InnoDB;


SET SQL_MODE
=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS
=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS
=@OLD_UNIQUE_CHECKS;
