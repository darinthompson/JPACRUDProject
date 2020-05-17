-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema default_schema
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema beers_of_the_world_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `beers_of_the_world_db` ;

-- -----------------------------------------------------
-- Schema beers_of_the_world_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beers_of_the_world_db` DEFAULT CHARACTER SET utf8 ;
USE `beers_of_the_world_db` ;

-- -----------------------------------------------------
-- Table `beer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `beer` ;

CREATE TABLE IF NOT EXISTS `beer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `brewery` VARCHAR(45) NULL,
  `description` VARCHAR(2000) NOT NULL,
  `rating` DOUBLE NULL,
  `abv` DOUBLE NULL,
  `srm` INT NULL,
  `style` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS beerdrinker@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'beerdrinker'@'localhost' IDENTIFIED BY 'beerdrinker';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'beerdrinker'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'beerdrinker'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `beer`
-- -----------------------------------------------------
START TRANSACTION;
USE `beers_of_the_world_db`;
INSERT INTO `beer` (`id`, `name`, `brewery`, `description`, `rating`, `abv`, `srm`, `style`) VALUES (1, 'beer', 'homebrew', 'The homiest home brew. With notes of toffee and carmel', 5.5, 7.2, 45, 'lager');
INSERT INTO `beer` (`id`, `name`, `brewery`, `description`, `rating`, `abv`, `srm`, `style`) VALUES (2, 'Mountain Brew', 'Foot Hill brewery', 'Dewiest Mountain Brew', 10, 5.6, 56, 'ipa');
INSERT INTO `beer` (`id`, `name`, `brewery`, `description`, `rating`, `abv`, `srm`, `style`) VALUES (3, 'Juicy Hazy', 'Sierra Nevada', 'Juice bomb, most fought over', 8.5, 7.0, 65, 'ipa');
INSERT INTO `beer` (`id`, `name`, `brewery`, `description`, `rating`, `abv`, `srm`, `style`) VALUES (4, 'Two Hearted Ale', 'Belles', 'Deep amber slightly hazy ipa', 10.0, 7.0, 77, 'ipa');

COMMIT;

