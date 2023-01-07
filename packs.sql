SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

USE `v206`;

DROP TABLE IF EXISTS `packs`;
CREATE TABLE IF NOT EXISTS `packs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `picture` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `price` float(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `pack_items`;
CREATE TABLE IF NOT EXISTS `pack_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pack_id` int(11) NOT NULL,
  `item_type` int(11) NOT NULL DEFAULT 5,
  `item_id` int(11) NOT NULL DEFAULT 4000000,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `item_name` varchar(100),
  PRIMARY KEY (`id`),
  INDEX (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

DROP TABLE IF EXISTS `nxcode`;
CREATE TABLE IF NOT EXISTS `nxcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(17) NOT NULL UNIQUE,
  `retriever` varchar(13) DEFAULT NULL,
  `expiration` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_id` varchar(50),
  `pack_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11),
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  INDEX (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;