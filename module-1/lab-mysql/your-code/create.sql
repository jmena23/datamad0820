-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema paraborrar
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema paraborrar
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `paraborrar` DEFAULT CHARACTER SET utf8 ;
USE `paraborrar` ;

-- -----------------------------------------------------
-- Table `paraborrar`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paraborrar`.`car` (
  `id` INT NOT NULL,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` INT(4) NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paraborrar`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paraborrar`.`Customer` (
  `id` INT NOT NULL,
  `Customer_id` INT(5) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State/Province` VARCHAR(45) NOT NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Postal` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paraborrar`.`Salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paraborrar`.`Salesperson` (
  `id` INT NOT NULL,
  `STAFF_id` VARCHAR(5) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Store` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `paraborrar`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `paraborrar`.`Invoice` (
  `id` INT NOT NULL,
  `Invoicenumber` VARCHAR(45) NOT NULL,
  `Date` DATE NOT NULL,
  `car_id` INT NOT NULL,
  `Customer_id` INT NOT NULL,
  `Salesperson_id` INT NOT NULL,
  PRIMARY KEY (`id`, `car_id`, `Customer_id`, `Salesperson_id`),
  INDEX `fk_Invoice_car_idx` (`car_id` ASC) VISIBLE,
  INDEX `fk_Invoice_Customer1_idx` (`Customer_id` ASC) VISIBLE,
  INDEX `fk_Invoice_Salesperson1_idx` (`Salesperson_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoice_car`
    FOREIGN KEY (`car_id`)
    REFERENCES `paraborrar`.`car` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Customer1`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `paraborrar`.`Customer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoice_Salesperson1`
    FOREIGN KEY (`Salesperson_id`)
    REFERENCES `paraborrar`.`Salesperson` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
