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
-- Table structure for table `gx_droplist_value`
--

DROP TABLE IF EXISTS `gx_droplist_value`;
CREATE TABLE `gx_droplist_value` (
  `update_by` varchar(32) default '',
  `create_by` varchar(32) default '',
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active_flag` int(4) default '0',
  `id` varchar(32) NOT NULL default '',
  `value` varchar(255) default '',
  `droplist_name_id` varchar(32) default '',
  `description` varchar(255) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_droplist_value`
--


/*!40000 ALTER TABLE `gx_droplist_value` DISABLE KEYS */;
LOCK TABLES `gx_droplist_value` WRITE;
INSERT INTO `gx_droplist_value` VALUES ('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:43','2007-09-26 14:17:04',1,'ff808081153c589b01153c5946ad0001','String','ff808081153bcda301153bce42640001','String'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:44','2007-09-26 14:17:27',1,'ff808081153c6d5601153c6e1a6e0001','Number','ff808081153bcda301153bce42640001','Number'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:46','2007-10-23 18:06:01',1,'ff808081153c724b01153c7430e70001','Table','ff808081153bcda301153bce42640001','Table'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:49','2007-09-26 14:17:59',1,'ff80808115408aa7011540ade5ec0006','Date','ff808081153bcda301153bce42640001','Date'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:56','2007-10-17 15:47:00',1,'ff80808115422db90115423307c10002','text','ff80808115422db9011542327c580001','Textfield'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:57','2007-09-26 21:23:18',1,'ff80808115422db90115423349760003','textarea','ff80808115422db9011542327c580001','Textarea'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:58','2007-09-26 21:23:45',1,'ff80808115422db901154233b5300004','radio','ff80808115422db9011542327c580001','Radio Button'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:00','2007-09-26 21:24:28',1,'ff80808115422db9011542345ab40005','checkbox','ff80808115422db9011542327c580001','Check Box'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:01','2007-09-26 21:25:03',1,'ff80808115422db901154234e44d0006','select','ff80808115422db9011542327c580001','Droplist Select Box'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:02','2007-09-26 21:25:30',1,'ff80808115422db9011542354dee0007','file','ff80808115422db9011542327c580001','File Upload'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:04','2007-09-26 21:25:59',1,'ff80808115422db901154235bdec0008','reference','ff80808115422db9011542327c580001','Reference Table'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:11','2007-09-26 22:31:17',1,'ff80808115425bc40115427185fd0002','Indonesia','ff80808115425bc401154271168a0001','Indonesia'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:12','2007-09-26 22:31:50',1,'ff80808115425bc40115427208120003','USA','ff80808115425bc401154271168a0001','United States of America'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:13','2007-09-26 22:32:09',1,'ff80808115425bc401154272533c0004','UK','ff80808115425bc401154271168a0001','United Kingdom'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:15','2007-09-26 22:32:22',1,'ff80808115425bc40115427287080005','Malaysia','ff80808115425bc401154271168a0001','Malaysia'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:17','2007-09-26 23:00:28',1,'ff8080811542796a0115428c3e8a0001','Japanese','ff80808115425bc401154271168a0001','Japanese'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:32','2007-09-27 07:29:10',1,'ff8080811542f5340115445dfabb0001','hidden','ff80808115422db9011542327c580001','Hidden'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 14:51:16','2007-10-17 14:51:16',1,'ff80808115ace81f0115acf1eaae0003','default','ff80808115ace81f0115acef78020002','Default'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 14:51:36','2007-10-17 14:51:36',1,'ff80808115ace81f0115acf239340004','extended','ff80808115ace81f0115acef78020002','Extended'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-23 18:06:13','2007-10-23 18:06:13',1,'ff80808115cc81140115cc8a8dbe0001','Droplist','ff808081153bcda301153bce42640001','Droplist');

UNLOCK TABLES;
/*!40000 ALTER TABLE `gx_droplist_value` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

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
-- Table structure for table `gx_db_column`
--

DROP TABLE IF EXISTS `gx_db_column`;
CREATE TABLE `gx_db_column` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `create_by` varchar(32) default '',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '1',
  `table_id` varchar(32) default '',
  `name` varchar(255) default '',
  `description` varchar(255) default '',
  `db_column` varchar(255) default '',
  `element_id` varchar(32) default '',
  `length` int(11) default '0',
  `min_length` int(11) default '0',
  `max_length` int(11) default '100',
  `mandatory_flag` int(11) default '0',
  `key_column_flag` int(11) default '0',
  `parent_link_column_flag` int(11) default '0',
  `encrypted_flag` int(11) default '0',
  `reference_flag` int(11) default '0',
  `reference_droplist_id` varchar(32) default '',
  `reference_table_id` varchar(32) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_db_column`
--


/*!40000 ALTER TABLE `gx_db_column` DISABLE KEYS */;
LOCK TABLES `gx_db_column` WRITE;
INSERT INTO `gx_db_column` VALUES ('ff80808115ac439e0115ac4ba7390002','2007-10-17 11:49:40','96f673bc-283e-4b75-b63d-6edc','2007-10-17 12:30:29','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Username','Login Username','','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,NULL,NULL),('ff80808115ac439e0115ac4bc4e80003','2007-10-17 11:49:47','96f673bc-283e-4b75-b63d-6edc','2007-10-17 12:30:19','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Password','Login Password','','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,1,0,NULL,NULL),('ff80808115ac5c060115ac68c4960001','2007-10-17 12:21:28','96f673bc-283e-4b75-b63d-6edc','2007-10-17 12:34:08','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Email','User Email','email','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,NULL,NULL),('ff80808115ac5c060115ac74afd00002','2007-10-17 12:34:29','96f673bc-283e-4b75-b63d-6edc','2007-10-17 12:34:29','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Id','Primary Key','id','ff808081153c589b01153c5946ad0001',32,0,100,0,1,0,0,0,NULL,NULL),('ff80808115ad52df0115ad62821a0002','2007-10-17 16:54:15','96f673bc-283e-4b75-b63d-6edc','2007-10-17 16:54:15','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ad52df0115ad5fc9810001','window type','Window Type','window_type_id','ff808081153c724b01153c7430e70001',0,0,100,0,0,0,0,2,'ff80808115ace81f0115acef78020002',NULL),('ff80808115b6b1dd0115b6e71b440002','2007-10-19 13:15:40','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:15:40','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6e593070001','no','No','po_no','ff808081153c589b01153c5946ad0001',50,0,100,0,0,0,0,2,NULL,NULL),('ff80808115b6b1dd0115b6e8a35f0003','2007-10-19 13:17:20','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:18:58','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6e593070001','supplier_name','Supplier Name','supplier','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,NULL,NULL),('ff80808115b6b1dd0115b6edda910005','2007-10-19 13:23:02','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:23:02','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','no','No','no','ff808081153c589b01153c5946ad0001',50,0,100,0,0,0,0,0,NULL,NULL),('ff80808115b6b1dd0115b6ee563a0006','2007-10-19 13:23:33','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:23:33','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','name','Product Name','product_name','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,NULL,NULL),('ff80808115b6b1dd0115b6ef61fe0007','2007-10-19 13:24:42','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:24:42','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','quantity','Product Quantity','product_quantity','ff808081153c6d5601153c6e1a6e0001',11,0,100,0,0,0,0,0,NULL,NULL),('ff80808115b6b1dd0115b6f02a440008','2007-10-19 13:25:33','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:25:33','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','po_no','Purchase Order Number','po_no','ff808081153c724b01153c7430e70001',0,0,100,0,0,0,0,1,NULL,'ff80808115b6b1dd0115b6e593070001');
UNLOCK TABLES;
/*!40000 ALTER TABLE `gx_db_column` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

