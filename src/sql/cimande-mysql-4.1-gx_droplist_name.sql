-- MySQL dump 10.9
--
-- Host: localhost    Database: cimande
-- ------------------------------------------------------
-- Server version	4.1.15-Debian_1ubuntu5-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gx_droplist_name`
--

DROP TABLE IF EXISTS `gx_droplist_name`;
CREATE TABLE `gx_droplist_name` (
  `update_by` varchar(32) default '',
  `create_by` varchar(32) default '',
  `id` varchar(32) NOT NULL default '0',
  `name` varchar(255) default '[NULL]',
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `active_flag` tinyint(4) default '1',
  `parent_id` varchar(32) default '',
  `description` varchar(255) default '[NULL]',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_droplist_name`
--


/*!40000 ALTER TABLE `gx_droplist_name` DISABLE KEYS */;
LOCK TABLES `gx_droplist_name` WRITE;
INSERT INTO `gx_droplist_name` VALUES ('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff808081153bcda301153bce42640001','columndatatype','2007-10-17 08:54:53','2007-09-26 14:16:05',1,NULL,'Column Data Type'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115422db9011542327c580001','fielddatatype','2007-09-26 21:22:25','2007-09-26 21:22:25',1,NULL,'Field Data Type'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115425bc401154271168a0001','country','2007-09-26 22:30:48','2007-09-26 22:30:48',1,NULL,'Country'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115ace81f0115acee87d70001','GxWindow','2007-10-17 14:47:34','2007-10-17 14:47:34',1,NULL,'Used in GxWindow'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115ace81f0115acef78020002','window_type','2007-10-17 14:49:20','2007-10-17 16:42:01',1,'ff80808115ace81f0115acee87d70001','Window Type');
UNLOCK TABLES;
/*!40000 ALTER TABLE `gx_droplist_name` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

