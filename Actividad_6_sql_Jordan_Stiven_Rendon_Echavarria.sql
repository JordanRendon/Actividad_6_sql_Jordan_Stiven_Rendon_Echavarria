-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Volcando estructura para tabla los_animales.developments_embryonary
DROP TABLE IF EXISTS `developments_embryonary`;
CREATE TABLE IF NOT EXISTS `developments_embryonary` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.developments_embryonary: ~2 rows (aproximadamente)
DELETE FROM `developments_embryonary`;
INSERT INTO `developments_embryonary` (`id`, `name`) VALUES
	(1, 'Oviparos'),
	(2, 'Viviparos'),
	(3, 'Ovoviviparos');

-- Volcando estructura para tabla los_animales.forms_of_displacement
DROP TABLE IF EXISTS `forms_of_displacement`;
CREATE TABLE IF NOT EXISTS `forms_of_displacement` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.forms_of_displacement: ~5 rows (aproximadamente)
DELETE FROM `forms_of_displacement`;
INSERT INTO `forms_of_displacement` (`id`, `name`) VALUES
	(1, 'Aereos'),
	(2, 'Cuadrupedos'),
	(3, 'Rastreros '),
	(4, 'Acuaticos '),
	(5, 'Bipedo'),
	(6, 'Terrestre');

-- Volcando estructura para tabla los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats: ~2 rows (aproximadamente)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `name`) VALUES
	(1, 'Terrestres'),
	(2, 'Acuaticos '),
	(3, 'Aereos ');

-- Volcando estructura para tabla los_animales.habitats_species_animal
DROP TABLE IF EXISTS `habitats_species_animal`;
CREATE TABLE IF NOT EXISTS `habitats_species_animal` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `species_animal_id` tinyint(4) NOT NULL,
  `habitats_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats_species_animal: ~0 rows (aproximadamente)
DELETE FROM `habitats_species_animal`;
INSERT INTO `habitats_species_animal` (`id`, `species_animal_id`, `habitats_id`) VALUES
	(1, 1, 2),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 3),
	(5, 5, 1),
	(6, 6, 1),
	(7, 7, 1),
	(8, 8, 1),
	(9, 9, 1),
	(10, 10, 1),
	(11, 11, 3),
	(12, 12, 1),
	(13, 13, 1),
	(14, 14, 2),
	(15, 15, 1),
	(16, 16, 1),
	(17, 17, 1),
	(18, 18, 1),
	(19, 19, 2);

-- Volcando estructura para tabla los_animales.species_animal
DROP TABLE IF EXISTS `species_animal`;
CREATE TABLE IF NOT EXISTS `species_animal` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `population` varchar(50) NOT NULL,
  `types_of_food_id` tinyint(4) NOT NULL,
  `developments_embrionario_id` tinyint(4) NOT NULL,
  `state_of_conservation_id` tinyint(4) NOT NULL,
  `forms_of_desplace_id` tinyint(4) NOT NULL,
  `types_of_especie_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.species_animal: ~18 rows (aproximadamente)
DELETE FROM `species_animal`;
INSERT INTO `species_animal` (`id`, `name`, `population`, `types_of_food_id`, `developments_embrionario_id`, `state_of_conservation_id`, `forms_of_desplace_id`, `types_of_especie_id`) VALUES
	(1, 'Ballena', '239 000 ejemplares', 2, 2, 1, 4, 4),
	(2, 'Pulpo', 'mas de 800 ejemplares', 2, 1, 1, 4, 4),
	(3, 'Mucielago', '1,100 ejemplares', 10, 2, 1, 1, 1),
	(4, 'Aguila Real', '60 ejemplares', 2, 2, 2, 1, 2),
	(5, 'Serpiente', '11,000 ejemplares', 7, 1, 1, 3, 3),
	(6, 'Chimpancés ', '250,000 ejemplares', 3, 2, 1, 5, 1),
	(7, 'Brontosaurio', '3 ejemplares', 1, 1, 3, 2, 11),
	(8, 'Koala', '80 ejemplares ', 3, 3, 2, 2, 6),
	(9, 'Jaguar', '64,000 ejemplares', 1, 2, 2, 2, 7),
	(10, 'Ranas', '4,780 ejemplares ', 8, 1, 1, 2, 9),
	(11, 'Mariposa', '150,000 ejemplares', 1, 1, 1, 1, 5),
	(12, 'Escarabajo', '375,000 ejemplares', 6, 3, 1, 6, 5),
	(13, 'Dodo', '1,785 ejemplares', 1, 1, 3, 5, 13),
	(14, 'Estrella de mar', '2,000 ejemplares', 9, 1, 1, 4, 8),
	(15, 'Hormiga', '13,000 ejemplares', 4, 1, 1, 6, 5),
	(16, 'Garrapata', '850 ejemplares', 5, 1, 1, 6, 5),
	(17, 'Camaleon ', '161 ejemplares', 8, 1, 1, 2, 3),
	(18, 'Oso perezoso ', '1,500 ejemplares ', 7, 2, 1, 2, 1),
	(19, 'Delfín de Baiji', '5,000 ejemplajes', 2, 2, 3, 4, 4);

-- Volcando estructura para tabla los_animales.state_of_conservation
DROP TABLE IF EXISTS `state_of_conservation`;
CREATE TABLE IF NOT EXISTS `state_of_conservation` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.state_of_conservation: ~2 rows (aproximadamente)
DELETE FROM `state_of_conservation`;
INSERT INTO `state_of_conservation` (`id`, `name`) VALUES
	(1, 'Bajo riesgo'),
	(2, 'Amenazado'),
	(3, 'En extincion ');

-- Volcando estructura para tabla los_animales.types_of_especies
DROP TABLE IF EXISTS `types_of_especies`;
CREATE TABLE IF NOT EXISTS `types_of_especies` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.types_of_especies: ~11 rows (aproximadamente)
DELETE FROM `types_of_especies`;
INSERT INTO `types_of_especies` (`id`, `name`) VALUES
	(1, 'Mamiferos'),
	(2, 'Aves'),
	(3, 'Reptiles'),
	(4, 'Marinos'),
	(5, 'Insectos'),
	(6, 'Marcupial'),
	(7, 'Felinos'),
	(8, 'Asteroidea'),
	(9, 'Anfibios'),
	(10, 'Lombrices'),
	(11, 'Brontosaurus'),
	(13, 'Raphus cucullatus');

-- Volcando estructura para tabla los_animales.types_of_food
DROP TABLE IF EXISTS `types_of_food`;
CREATE TABLE IF NOT EXISTS `types_of_food` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.types_of_food: ~10 rows (aproximadamente)
DELETE FROM `types_of_food`;
INSERT INTO `types_of_food` (`id`, `name`) VALUES
	(1, 'Herbivoros'),
	(2, 'Carnivoros'),
	(3, 'Omnivoros'),
	(4, 'Descomponedores'),
	(5, 'Parasitos'),
	(6, 'Copogafos'),
	(7, 'Folivoro'),
	(8, 'Insectivoro'),
	(9, 'Espongivoros'),
	(10, 'Frugivoros ');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
