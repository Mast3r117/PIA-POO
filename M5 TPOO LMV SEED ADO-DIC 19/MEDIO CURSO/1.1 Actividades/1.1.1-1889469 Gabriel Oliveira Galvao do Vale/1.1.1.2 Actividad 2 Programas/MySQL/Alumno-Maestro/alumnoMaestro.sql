-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sitFime2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sitFime2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sitFime2` DEFAULT CHARACTER SET utf8 ;
USE `sitFime2` ;

-- -----------------------------------------------------
-- Table `sitFime2`.`alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sitFime2`.`alumno` (
  `matr_al` INT NOT NULL,
  `nom_al` VARCHAR(50) NOT NULL,
  `edad_al` INT NOT NULL,
  `dir_al` VARCHAR(100) NOT NULL,
  `tel_al` INT NOT NULL,
  `carre_al` VARCHAR(5) NOT NULL,
  `proce_al` VARCHAR(45) NOT NULL,
  `corr_al` VARCHAR(25) NOT NULL,
  `plan_al` INT NULL,
  PRIMARY KEY (`matr_al`),
  UNIQUE INDEX `matricula_UNIQUE` (`matr_al` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sitFime2`.`maestro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sitFime2`.`maestro` (
  `no_mae` INT NOT NULL,
  `nom_mae` VARCHAR(50) NOT NULL,
  `dir_mae` VARCHAR(100) NOT NULL,
  `tel_mae` INT NOT NULL,
  `carre_mae` VARCHAR(5) NOT NULL,
  `proce_mae` VARCHAR(45) NOT NULL,
  `coord_mae` VARCHAR(45) NOT NULL,
  `corr_mae` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no_mae`),
  UNIQUE INDEX `no_mae_UNIQUE` (`no_mae` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sitFime2`.`detalleAlumnoMaestro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sitFime2`.`detalleAlumnoMaestro` (
  `alumno_matr_al` INT NOT NULL,
  `maestro_no_mae` INT NOT NULL,
  PRIMARY KEY (`alumno_matr_al`, `maestro_no_mae`),
  INDEX `fk_alumno_has_maestro_maestro1_idx` (`maestro_no_mae` ASC) VISIBLE,
  INDEX `fk_alumno_has_maestro_alumno_idx` (`alumno_matr_al` ASC) VISIBLE,
  CONSTRAINT `fk_alumno_has_maestro_alumno`
    FOREIGN KEY (`alumno_matr_al`)
    REFERENCES `sitFime2`.`alumno` (`matr_al`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_alumno_has_maestro_maestro1`
    FOREIGN KEY (`maestro_no_mae`)
    REFERENCES `sitFime2`.`maestro` (`no_mae`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
