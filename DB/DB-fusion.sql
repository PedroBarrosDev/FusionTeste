-- MySQL Script generated by MySQL Workbench
-- Fri Feb 21 15:47:58 2025
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fusionsql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fusionsql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fusionsql` DEFAULT CHARACTER SET utf8 ;
USE `fusionsql` ;

-- -----------------------------------------------------
-- Table `fusionsql`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fusionsql`.`Produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT(255) NOT NULL,
  `price` DECIMAL NOT NULL,
  `quantity` INT NOT NULL,
  `created_at` DATE NOT NULL,
  `updated_at` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
