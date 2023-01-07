SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

USE `v206`;

DROP TABLE IF EXISTS `notices`;
CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `title_es` varchar(200) NOT NULL DEFAULT '',
  `description` text NOT NULL DEFAULT '',
  `description_es` text NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `notice_type` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

alter table users add webadmin int not null default 0;