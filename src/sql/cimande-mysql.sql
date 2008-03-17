# Connection: localhost
# Host: localhost
# Saved: 2008-03-17 15:24:16
# 
-- MySQL dump 10.11
--
-- Host: localhost    Database: cimande
-- ------------------------------------------------------
-- Server version	5.0.45-Debian_1ubuntu3-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_item`
--

DROP TABLE IF EXISTS `app_item`;
CREATE TABLE `app_item` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `create_by` varchar(32) default '',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '1',
  `code` varchar(255) default '',
  `name` varchar(255) default '',
  `description` varchar(255) default '',
  `price` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_item`
--

LOCK TABLES `app_item` WRITE;
/*!40000 ALTER TABLE `app_item` DISABLE KEYS */;
INSERT INTO `app_item` VALUES ('ff80818116b4413a0116b441bc660001','2007-12-07 17:58:35','ff80818116aec0e00116aed72e150009','2007-12-07 11:03:22','ff80818116aec0e00116aed72e150009',1,'0001','satu','Satu',1000);
/*!40000 ALTER TABLE `app_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_user`
--

DROP TABLE IF EXISTS `backend_user`;
CREATE TABLE `backend_user` (
  `id` varchar(32) NOT NULL default '',
  `username` varchar(128) NOT NULL default '',
  `password` varchar(30) NOT NULL default '',
  `first_name` varchar(128) default NULL,
  `last_name` varchar(128) default NULL,
  `company_id` varchar(32) default NULL,
  `job_position_id` varchar(32) default NULL,
  `email` varchar(128) default NULL,
  `address1` varchar(255) default NULL,
  `address2` varchar(255) default NULL,
  `city` varchar(128) default NULL,
  `description` varchar(255) default NULL,
  `role_id` varchar(32) default '0',
  `calendar_flag` tinyint(1) NOT NULL default '1',
  `project_flag` tinyint(1) NOT NULL default '0',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active_flag` tinyint(1) NOT NULL default '1',
  `status_id` char(2) NOT NULL default 'ic',
  `site_id` varchar(32) default NULL,
  `reward_point` int(11) default NULL,
  `name_visible` tinyint(1) default NULL,
  `email_visible` tinyint(1) default NULL,
  `jive_id` bigint(20) NOT NULL auto_increment,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jive_id` (`jive_id`),
  UNIQUE KEY `username` (`username`),
  KEY `status_id` (`status_id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_user`
--

LOCK TABLES `backend_user` WRITE;
/*!40000 ALTER TABLE `backend_user` DISABLE KEYS */;
INSERT INTO `backend_user` VALUES ('1','admin','YWRtaW4=','Administrator','Workspace','F337B149F1D7EB47954BF7EF7','402881ed066f41ff01066f531b76','admin@meruvian.org','Grand Wijaya Center Jl Wijaya II','Blok H No 41','Jakarta Selatan','','1',1,1,NULL,'2005-08-12 11:28:20','1','2007-12-05 08:00:26',1,'ip','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,1),('96f673bc-283e-4b75-b63d-6edc','gxadmin','Z3hhZG1pbg==','GX','Admin','F337B149F1D7EB47954BF7EF7','402881ed066f41ff01066f531b76','','','','','','ff808081151cf62001151cfc5907',1,0,'1','2007-09-19 16:04:47',NULL,'0000-00-00 00:00:00',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,4),('ff8080811647fd6c01164806d2ea0006','leo','bGVv','Leo','Haryanto','F337B149F1D7EB47954BF7EF7','402881ed066f41ff01066f531b76','leo@intercitra.com','','','Jakarta','','ff8080811647fd6c011647fe2fef0002',1,0,'1','2007-11-16 17:35:15','1','2007-11-30 10:10:48',1,'ic',NULL,NULL,NULL,NULL,9),('ff80808116a8ab3b0116a8bf01b10002','rizal','cml6YWw=','abdul','rizal','F337B149F1D7EB47954BF7EF7','402881ed066f41ff01066f531b76','','','','','','1',1,0,'1','2007-12-05 12:19:57','1','2007-12-05 05:19:57',1,'ic',NULL,NULL,NULL,NULL,10),('ff80808116a9809c0116a98fd0e70001','cecep','Y2VjZXA=','hai','hai','F337B149F1D7EB47954BF7EF7','402881ed066f41ff01066f531b76','','','','','','ff808081151cf62001151cfc5907',1,0,'1','2007-12-05 16:08:02','1','2007-12-05 11:02:44',1,'ic',NULL,NULL,NULL,NULL,11),('ff80818116aec0e00116aed72e150009','training','dHJhaW5pbmc=','Training','MVC','F337B149F1D7EB47954BF7EF7','402881ed066f41ff01066f531b76','','','','','','ff80818116aec0e00116aecece930005',1,0,'1','2007-12-06 16:44:05','1','2007-12-06 09:44:05',1,'ic',NULL,NULL,NULL,NULL,12);
/*!40000 ALTER TABLE `backend_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(32) NOT NULL default '',
  `descriptor_id` varchar(32) default NULL,
  `code` char(3) NOT NULL default '',
  `iparentcode` varchar(32) default NULL,
  `url_category_image` varchar(255) default NULL,
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `osml_id` varchar(32) default '0',
  `status_id` varchar(32) default 'ic',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('402881b709be21e60109be223cd9','ff80808105857360010585bf3f3a','589','402881b709bdfd9b0109bdfdbba2','ari.gif','dsad\r\n        	\r\n	',1,'1','2006-03-03 10:24:08','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05ccb32a0105ccc27179','1','dsc',NULL,'','descriptor',1,'1','2005-08-19 10:22:39','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cdd88938','EE163461EFCD80B5C80D88A308','evn',NULL,'','event parent',1,'1','2005-08-19 15:26:24','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cddb412e','31','mdf',NULL,'','module function parent',1,'1','2005-08-19 15:29:22','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cddf0499','7','sec',NULL,'','section parent',1,'1','2005-08-19 15:33:29','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cde43c12','13','bus',NULL,'','back end user profile parent',1,'1','2005-08-19 15:39:11','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cde99219','2','sit',NULL,'','site parent',1,'1','2005-08-19 15:45:00','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d5768b',NULL,'oke',NULL,'','category ok',1,'1','2005-08-23 17:15:04','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d705f2',NULL,'poi',NULL,'','Age poi',1,'1','2005-08-23 17:16:46','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d84ba6',NULL,'col',NULL,'','colection',1,'1','2005-08-23 17:18:10','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d8a79d',NULL,'ctr',NULL,'','country',1,'1','2005-08-23 17:18:33','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d9381f',NULL,'faq',NULL,'faq.jpg','faq f',1,'1','2005-08-23 17:19:10','1','2005-08-24 04:02:02','0','ic',NULL),('4028817a05e2d2140105e2d983c6',NULL,'itm',NULL,'','item',1,'1','2005-08-23 17:19:30','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2da47c3',NULL,'md2','4028817a05cdd1d80105cddb412e','','module function',1,'1','2005-08-23 17:20:20','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2e89a70',NULL,'wf2',NULL,'','workflow role',1,'1','2005-08-23 17:35:58','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e6973b0105e6a33932',NULL,'luk',NULL,'','test',1,'1','2005-08-24 10:58:40','','0000-00-00 00:00:00','0','ic',NULL),('ff80808106067a250106067ac6bd',NULL,'oki',NULL,'saas','adda',1,'1','2005-08-30 15:22:21','1','2005-08-30 08:37:28','0','ic',NULL),('402881b709bdfd9b0109bdfdbba2',NULL,'ttt',NULL,NULL,'sdasd\r\n        	\r\n	',1,'1','2006-03-03 09:44:15','','0000-00-00 00:00:00','0','ic',NULL),('402881b709be135e0109be138332',NULL,'der',NULL,NULL,'dafas\r\n        	\r\n	',1,'1','2006-03-03 10:08:03','','0000-00-00 00:00:00','0','ic',NULL),('402881b709be135e0109be13d624','F7D31BDF6B4015D5066BA1910E','wrt',NULL,NULL,'dsasad\r\n        	\r\n	',1,'1','2006-03-03 10:08:24','','0000-00-00 00:00:00','0','ic',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `active_flag` tinyint(1) NOT NULL default '0',
  `id` varchar(32) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `address` text,
  `state` varchar(128) default NULL,
  `zip_number` varchar(10) default NULL,
  `telephone` varchar(128) default NULL,
  `faximile` varchar(128) default NULL,
  `website` varchar(128) default NULL,
  `email` varchar(128) default NULL,
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `osml_id` varchar(32) default '0',
  `status_id` varchar(32) default 'ic',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (0,'F337B149F1D7EB47954BF7EF7','PT. Intercitra Prima Integrasi','Cempaka Putih Tengah II Blok C No. 21\r\nJakarta Pusat','Jakarta','14520','4260933','4260933','www.intercitra.com','frans@intercitra.com','F162B448063A847','2003-02-07 16:51:14',NULL,'0000-00-00 00:00:00','0','ic','F199E755B97B662FC248CAC80');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptor`
--

DROP TABLE IF EXISTS `descriptor`;
CREATE TABLE `descriptor` (
  `id` varchar(32) NOT NULL default '',
  `descriptor_group_id` varchar(32) NOT NULL default '0',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) default NULL,
  `url_descriptor` varchar(255) default NULL,
  `descriptor_flag` tinyint(1) default '0',
  `active_flag` tinyint(1) default '1',
  `url_action` varchar(255) default NULL,
  `type_flag` char(1) NOT NULL default '1',
  `window_id` varchar(32) default '',
  `wizard_id` varchar(32) default NULL,
  `site_id` varchar(32) default NULL,
  `collection_default` varchar(128) default 'description',
  PRIMARY KEY  (`id`),
  KEY `update_by` (`update_by`),
  KEY `create_by` (`create_by`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `descriptor`
--

LOCK TABLES `descriptor` WRITE;
/*!40000 ALTER TABLE `descriptor` DISABLE KEYS */;
INSERT INTO `descriptor` VALUES ('1','0',NULL,'2005-08-05 17:09:15','1','2007-10-30 05:26:19','descriptor','Descriptor','descriptor.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685',NULL),('6','0',NULL,'2005-08-05 17:17:33','1','2007-10-30 05:26:19','category','Category','category.xml',1,1,'http://www.test.com?action=test','2',NULL,'','EE185CE0B82B41C1724F284685',''),('7','0',NULL,'2002-05-29 00:00:00','1','2007-10-30 05:26:19','section','Section','section.xml',1,1,'','2',NULL,NULL,'EE185CE0B82B41C1724F284685',NULL),('14','0',NULL,'2005-08-19 10:08:57','1','2007-10-30 05:26:19','workflow_role','Workflow Role','workflow_role.xml',1,1,'','2',NULL,NULL,'EE185CE0B82B41C1724F284685',NULL),('22','0',NULL,'2005-09-19 23:49:01','1','2007-10-30 05:26:19','template','Template','template.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685',NULL),('25','0',NULL,'2002-05-29 00:00:00','1','2007-10-30 05:26:19','ads_banner','Ads Banner\r\n		','ads_banner.xml',1,1,'','0',NULL,NULL,'EE185CE0B82B41C1724F284685',NULL),('31','0',NULL,'2005-08-12 11:31:40','1','2007-10-30 05:26:19','module_function','Module Function','module_function.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685',NULL),('32','0','','2002-05-29 00:00:00','1','2007-10-30 05:26:19','role_privilage','Role Privilage','role_privilage.xml',1,1,'','2',NULL,NULL,'EE185CE0B82B41C1724F284685',NULL),('2','0',NULL,'2005-08-05 17:10:38','1','2007-10-30 05:26:19','site','Site','site.xml',1,1,'','2',NULL,'','EE185CE0B82B41C1724F284685',''),('EACA4B7F9596396050B73AB5EF','0','1','2005-09-19 23:49:51','1','2007-10-30 05:26:19','descriptor_group','Descriptor Group','descriptor_group.xml',0,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685',NULL),('EE187CB92554E9877310D9041D','0','1','2002-06-27 00:00:00','1','2007-10-30 05:26:19','assign_user_site','Assign User to a Site','EE188C8D1BCFFF7C61672BFA2Cassign_user_site.xml',0,0,'','0',NULL,'','EE185CE0B82B41C1724F284685',''),('F332B5D5577E444B78297AFE84','0','1','2005-09-19 23:48:08','1','2007-10-30 05:26:19','company','Company','F33682657AE8F60C0818178F40company.xml',0,1,'','2',NULL,'','EE185CE0B82B41C1724F284685','name'),('EE8C6A49BC200D77F9DD3F92AA','0','1','2002-06-27 00:00:00','1','2007-10-30 05:26:19','user_site','User Manager','EE8C72398F20734B22553E88D6user_site.xml',0,1,'../module/user_site/index.jsp?','1',NULL,'','EE185CE0B82B41C1724F284685',''),('EE399186B35C580610D4EDD7A3','0','1','2002-06-10 00:00:00','1','2007-10-30 05:26:19','collection_descriptor','Collection Content','EE39A7FDB43CDFD00B21EA6672coll_desc.xml',0,1,'../module/collection_content/first.jsp?','1',NULL,'','EE185CE0B82B41C1724F284685',NULL),('EE39DC68885D4E61299258E68D','0','1','2005-09-19 23:49:11','1','2007-10-30 05:26:19','theme','Theme','EED8830E5DF4DF47FBE1F6926theme.xml',0,1,'','2',NULL,'','EE185CE0B82B41C1724F284685',''),('EE39EDBA36471BA27231DAFF78','0','1','2005-09-19 23:49:04','1','2007-10-30 05:26:19','template_object','Template Object','EE39F3ECCA8734EFBD690B00F3template_object.xml',0,1,'','2',NULL,'','EE185CE0B82B41C1724F284685',NULL),('EE39EDFFA5C0438D014F92A9A3','0','1','2005-09-19 23:49:06','1','2007-10-30 05:26:19','template_object_detail','Template Object Detail','EE39F3CD5646776D7FAE7F49C6template_object_detail.xml',0,1,'','2',NULL,'','EE185CE0B82B41C1724F284685',NULL),('EEB49F22144357635AD6A684B6','0','1','2002-07-19 00:00:00','1','2007-11-28 08:18:41','rolemanager','Role Manager','',0,1,'','2',NULL,'','EE185CE0B82B41C1724F284685',''),('EED88F7EFBC8DFF1C5A048C73D','0','1','2005-09-19 23:48:55','1','2007-10-30 05:26:19','skin','Skin','EED93484525906F379F20E6364skin.xml',0,1,'','2',NULL,'','EE185CE0B82B41C1724F284685',''),('EF1F0CD62F63F3B0A7205D5BC4','0','1','2002-07-19 00:00:00','1','2007-11-28 08:17:55','rsp','Role Site Privilage','',0,1,'','2',NULL,'','EE185CE0B82B41C1724F284685',''),('F2E587923AC44C8979FBF2F26C','0','1','2005-09-19 23:48:26','1','2007-10-30 05:26:19','job_position','Job Position','F2E59F1CD7D0A8F31C1B034C4Bjob_position.xml',0,1,'','2',NULL,'','EE185CE0B82B41C1724F284685',''),('F76A9583B418F4FB3D261C1D53','0','1','2003-09-04 10:13:28',NULL,'2007-10-30 05:26:19','usersite_v2.0','User Manager ver.2.0',NULL,0,1,'../module/usersite_v2.0/index.jsp?','1',NULL,'','EE185CE0B82B41C1724F284685',''),('ff808081153a8e6301153a90b1e9','0','1','2007-09-25 09:48:22','1','2007-10-30 05:26:19','gx-droplist','Droplist GX2','',-1,1,'','2',NULL,NULL,NULL,'description'),('ff808081152136f101152137b298','0','1','2007-09-20 11:40:39','1','2007-10-30 05:26:19','gx-table','GX2-Table','',-1,1,'','2',NULL,NULL,NULL,'description'),('ff808081151cf62001151cf94fb0','0','1','2007-09-19 15:54:01','1','2007-10-30 05:26:19','window','GXWindow','',-1,1,'','2',NULL,NULL,NULL,'description'),('ff8080811647fd6c0116480119e80004','0','1','2007-11-16 17:29:00','1','2007-11-16 10:29:00','employee','Employee Registration','',-1,1,'','3','ff8080811647f2f1011647f99cd70006',NULL,NULL,'description'),('ff808081163cbe8a01163cc1db2f0001','0','1','2007-11-14 13:04:05','1','2007-11-15 14:26:13','user','user','',-1,1,'','2',NULL,NULL,NULL,'description'),('ff80818116aec0e00116aec55a6c0001','0','1','2007-12-06 16:24:37','1','2007-12-06 09:24:37','item','Item','',-1,1,'','2',NULL,NULL,NULL,'description');
/*!40000 ALTER TABLE `descriptor` ENABLE KEYS */;
UNLOCK TABLES;

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

LOCK TABLES `gx_db_column` WRITE;
/*!40000 ALTER TABLE `gx_db_column` DISABLE KEYS */;
INSERT INTO `gx_db_column` VALUES ('ff80808115ac439e0115ac4ba7390002','2007-10-17 11:49:40','96f673bc-283e-4b75-b63d-6edc','2007-10-24 08:23:33','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Username','Login Username','username','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,NULL,NULL),('ff80808115ac439e0115ac4bc4e80003','2007-10-17 11:49:47','96f673bc-283e-4b75-b63d-6edc','2007-10-24 08:23:15','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Password','Login Password','password','ff808081153c589b01153c5946ad0001',15,0,100,0,0,0,1,0,NULL,NULL),('ff80808115ac5c060115ac68c4960001','2007-10-17 12:21:28','96f673bc-283e-4b75-b63d-6edc','2007-10-17 05:34:08','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Email','User Email','email','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,NULL,NULL),('ff80808115ac5c060115ac74afd00002','2007-10-17 12:34:29','96f673bc-283e-4b75-b63d-6edc','2007-10-17 05:34:29','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Id','Primary Key','id','ff808081153c589b01153c5946ad0001',32,0,100,0,1,0,0,0,NULL,NULL),('ff80808115ad52df0115ad62821a0002','2007-10-17 16:54:15','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:54:15','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ad52df0115ad5fc9810001','window type','Window Type','window_type_id','ff808081153c724b01153c7430e70001',0,0,100,0,0,0,0,2,'ff80808115ace81f0115acef78020002',NULL),('ff80808115b6b1dd0115b6e71b440002','2007-10-19 13:15:40','96f673bc-283e-4b75-b63d-6edc','2007-10-19 06:15:40','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6e593070001','no','No','po_no','ff808081153c589b01153c5946ad0001',50,0,100,0,0,0,0,2,NULL,NULL),('ff80808115b6b1dd0115b6e8a35f0003','2007-10-19 13:17:20','96f673bc-283e-4b75-b63d-6edc','2007-10-19 06:18:58','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6e593070001','supplier_name','Supplier Name','supplier','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,NULL,NULL),('ff80808115b6b1dd0115b6edda910005','2007-10-19 13:23:02','96f673bc-283e-4b75-b63d-6edc','2007-10-19 06:23:02','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','no','No','no','ff808081153c589b01153c5946ad0001',50,0,100,0,0,0,0,0,NULL,NULL),('ff80808115b6b1dd0115b6ee563a0006','2007-10-19 13:23:33','96f673bc-283e-4b75-b63d-6edc','2007-10-19 06:23:33','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','name','Product Name','product_name','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,NULL,NULL),('ff80808115b6b1dd0115b6ef61fe0007','2007-10-19 13:24:42','96f673bc-283e-4b75-b63d-6edc','2007-10-19 06:24:42','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','quantity','Product Quantity','product_quantity','ff808081153c6d5601153c6e1a6e0001',11,0,100,0,0,0,0,0,NULL,NULL),('ff80808115b6b1dd0115b6f02a440008','2007-10-19 13:25:33','96f673bc-283e-4b75-b63d-6edc','2007-10-19 06:25:33','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','po_no','Purchase Order Number','po_no','ff808081153c724b01153c7430e70001',0,0,100,0,0,0,0,1,NULL,'ff80808115b6b1dd0115b6e593070001'),('ff8080811647f2f1011647f578060002','2007-11-16 17:16:17','96f673bc-283e-4b75-b63d-6edc','2007-11-16 10:17:23','96f673bc-283e-4b75-b63d-6edc',1,'ff8080811647f2f1011647f4812d0001','ID','Primary Key','id','ff808081153c589b01153c5946ad0001',32,1,32,0,1,0,0,0,NULL,NULL),('ff8080811647f2f1011647f65c110003','2007-11-16 17:17:16','96f673bc-283e-4b75-b63d-6edc','2007-11-16 10:17:16','96f673bc-283e-4b75-b63d-6edc',1,'ff8080811647f2f1011647f4812d0001','NAME','Employee Name','name','ff808081153c589b01153c5946ad0001',255,0,255,0,0,0,0,0,NULL,NULL),('ff8080811647f2f1011647f727ce0004','2007-11-16 17:18:08','96f673bc-283e-4b75-b63d-6edc','2007-11-16 10:18:08','96f673bc-283e-4b75-b63d-6edc',1,'ff8080811647f2f1011647f4812d0001','DESCRIPTION','Employee Description','description','ff808081153c589b01153c5946ad0001',255,0,255,0,0,0,0,0,NULL,NULL),('ff8080811647f2f1011647f904690005','2007-11-16 17:20:10','96f673bc-283e-4b75-b63d-6edc','2007-11-16 10:20:10','96f673bc-283e-4b75-b63d-6edc',1,'ff8080811647f2f1011647f4812d0001','NIP','Employee Security Number','nip','ff808081153c589b01153c5946ad0001',255,0,255,0,0,0,0,0,NULL,NULL);
/*!40000 ALTER TABLE `gx_db_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gx_db_table`
--

DROP TABLE IF EXISTS `gx_db_table`;
CREATE TABLE `gx_db_table` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `create_by` varchar(32) default '',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '1',
  `name` varchar(255) default '',
  `description` varchar(255) default '',
  `db_table` varchar(255) default '',
  `window_id` varchar(32) default '',
  `data_access_level_id` varchar(32) default '',
  `entity_id` varchar(32) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_db_table`
--

LOCK TABLES `gx_db_table` WRITE;
/*!40000 ALTER TABLE `gx_db_table` DISABLE KEYS */;
INSERT INTO `gx_db_table` VALUES ('ff80808115ac439e0115ac492f120001','2007-10-17 11:46:58','96f673bc-283e-4b75-b63d-6edc','2007-10-17 04:46:58','96f673bc-283e-4b75-b63d-6edc',1,'User','Backend User','backend_user',NULL,NULL,NULL),('ff80808115ad52df0115ad5fc9810001','2007-10-17 16:51:16','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:51:16','96f673bc-283e-4b75-b63d-6edc',0,'window','GxWindow','gx_form_window',NULL,NULL,NULL),('ff80808115b6b1dd0115b6e593070001','2007-10-19 13:13:59','96f673bc-283e-4b75-b63d-6edc','2007-10-19 06:13:59','96f673bc-283e-4b75-b63d-6edc',1,'purchase_order','Purchase Order','app_purchase_order',NULL,NULL,NULL),('ff80808115b6b1dd0115b6ed250c0004','2007-10-19 13:22:15','96f673bc-283e-4b75-b63d-6edc','2007-10-19 06:22:15','96f673bc-283e-4b75-b63d-6edc',1,'purchase_order_detail','Purchase Order Detail','app_purchase_order_detail',NULL,NULL,NULL),('ff8080811647f2f1011647f4812d0001','2007-11-16 17:15:14','96f673bc-283e-4b75-b63d-6edc','2007-11-16 10:15:14','96f673bc-283e-4b75-b63d-6edc',1,'APP_EMPLOYEE','Employee','org.blueoxygen.test.employee.Employee',NULL,NULL,NULL);
/*!40000 ALTER TABLE `gx_db_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gx_droplist_name`
--

DROP TABLE IF EXISTS `gx_droplist_name`;
CREATE TABLE `gx_droplist_name` (
  `update_by` varchar(32) default '',
  `create_by` varchar(32) default '',
  `id` varchar(32) NOT NULL default '0',
  `name` varchar(255) default '[NULL]',
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active_flag` tinyint(4) default '1',
  `parent_id` varchar(32) default '',
  `description` varchar(255) default '[NULL]',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_droplist_name`
--

LOCK TABLES `gx_droplist_name` WRITE;
/*!40000 ALTER TABLE `gx_droplist_name` DISABLE KEYS */;
INSERT INTO `gx_droplist_name` VALUES ('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff808081153bcda301153bce42640001','columndatatype','2007-10-17 08:54:53','2007-10-30 11:33:48',1,'ff80808115f0a3280115f0b0103b0003','Column Data Type'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115422db9011542327c580001','fielddatatype','2007-09-26 21:22:25','2007-10-30 11:34:09',1,'ff80808115f0a3280115f0afa52a0002','Field Data Type'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115425bc401154271168a0001','country','2007-09-26 22:30:48','2007-09-26 15:30:48',1,NULL,'Country'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115ace81f0115acee87d70001','window','2007-10-17 14:47:34','2007-10-30 11:30:29',1,'ff80808115d6cdb70115d6cf03060001','Used in GxWindow'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115ace81f0115acef78020002','window_type','2007-10-17 14:49:20','2007-10-17 09:42:01',1,'ff80808115ace81f0115acee87d70001','Window Type'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115d6cdb70115d6cf03060001','GX','2007-10-25 17:57:11','2007-10-30 11:31:54',1,NULL,'Used In Gx Cimande Workspace'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115f0a3280115f0afa52a0002','tab','2007-10-30 18:33:03','2007-10-30 11:33:03',1,'ff80808115d6cdb70115d6cf03060001','Used in GxTab'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115f0a3280115f0b0103b0003','column','2007-10-30 18:33:31','2007-10-30 11:33:31',1,'ff80808115d6cdb70115d6cf03060001','Used in GxColumn'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115f0cf5a0115f0d214ed0002','acl_type','2007-10-30 19:10:40','2007-10-30 12:10:40',1,'ff80808115d6cdb70115d6cf03060001','Access Control Type');
/*!40000 ALTER TABLE `gx_droplist_name` ENABLE KEYS */;
UNLOCK TABLES;

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

LOCK TABLES `gx_droplist_value` WRITE;
/*!40000 ALTER TABLE `gx_droplist_value` DISABLE KEYS */;
INSERT INTO `gx_droplist_value` VALUES ('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:43','2007-09-26 07:17:04',1,'ff808081153c589b01153c5946ad0001','String','ff808081153bcda301153bce42640001','String'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:44','2007-09-26 07:17:27',1,'ff808081153c6d5601153c6e1a6e0001','Number','ff808081153bcda301153bce42640001','Number'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:46','2007-10-23 11:06:01',1,'ff808081153c724b01153c7430e70001','Table','ff808081153bcda301153bce42640001','Table'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:49','2007-09-26 07:17:59',1,'ff80808115408aa7011540ade5ec0006','Date','ff808081153bcda301153bce42640001','Date'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:56','2007-10-17 08:47:00',1,'ff80808115422db90115423307c10002','text','ff80808115422db9011542327c580001','Textfield'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:57','2007-09-26 14:23:18',1,'ff80808115422db90115423349760003','textarea','ff80808115422db9011542327c580001','Textarea'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:58','2007-09-26 14:23:45',1,'ff80808115422db901154233b5300004','radio','ff80808115422db9011542327c580001','Radio Button'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:00','2007-09-26 14:24:28',1,'ff80808115422db9011542345ab40005','checkbox','ff80808115422db9011542327c580001','Check Box'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:01','2007-09-26 14:25:03',1,'ff80808115422db901154234e44d0006','select','ff80808115422db9011542327c580001','Droplist Select Box'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:02','2007-09-26 14:25:30',1,'ff80808115422db9011542354dee0007','file','ff80808115422db9011542327c580001','File Upload'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:04','2007-09-26 14:25:59',1,'ff80808115422db901154235bdec0008','reference','ff80808115422db9011542327c580001','Reference Table'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:11','2007-09-26 15:31:17',1,'ff80808115425bc40115427185fd0002','Indonesia','ff80808115425bc401154271168a0001','Indonesia'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:12','2007-09-26 15:31:50',1,'ff80808115425bc40115427208120003','USA','ff80808115425bc401154271168a0001','United States of America'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:13','2007-09-26 15:32:09',1,'ff80808115425bc401154272533c0004','UK','ff80808115425bc401154271168a0001','United Kingdom'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:15','2007-09-26 15:32:22',1,'ff80808115425bc40115427287080005','Malaysia','ff80808115425bc401154271168a0001','Malaysia'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:17','2007-09-26 16:00:28',1,'ff8080811542796a0115428c3e8a0001','Japanese','ff80808115425bc401154271168a0001','Japanese'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:32','2007-09-27 00:29:10',1,'ff8080811542f5340115445dfabb0001','hidden','ff80808115422db9011542327c580001','Hidden'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 14:51:16','2007-10-17 07:51:16',1,'ff80808115ace81f0115acf1eaae0003','default','ff80808115ace81f0115acef78020002','Default'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 14:51:36','2007-10-17 07:51:36',1,'ff80808115ace81f0115acf239340004','extended','ff80808115ace81f0115acef78020002','Extended'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-23 18:06:13','2007-10-23 11:06:13',1,'ff80808115cc81140115cc8a8dbe0001','Droplist','ff808081153bcda301153bce42640001','Droplist'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-30 19:11:04','2007-10-30 12:11:04',1,'ff80808115f0cf5a0115f0d2732b0003','create','ff80808115f0cf5a0115f0d214ed0002','Create New Record'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-30 19:11:45','2007-10-30 12:11:45',1,'ff80808115f0cf5a0115f0d3125c0004','read','ff80808115f0cf5a0115f0d214ed0002','Search and Read From Database'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-30 19:12:06','2007-10-30 12:12:06',1,'ff80808115f0cf5a0115f0d3629b0005','update','ff80808115f0cf5a0115f0d214ed0002','Update Record'),('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-30 19:12:23','2007-10-30 12:12:23',1,'ff80808115f0cf5a0115f0d3a7af0006','delete','ff80808115f0cf5a0115f0d214ed0002','Delete Record');
/*!40000 ALTER TABLE `gx_droplist_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gx_form_field`
--

DROP TABLE IF EXISTS `gx_form_field`;
CREATE TABLE `gx_form_field` (
  `description` varchar(255) default '',
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `create_by` varchar(32) default '',
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '0',
  `name` varchar(255) default '',
  `entity_type_id` varchar(32) default '',
  `displayed_flag` int(11) default '0',
  `displayed_length` int(11) default '0',
  `sequence` int(11) default '0',
  `tab_id` varchar(32) default '',
  `column_id` varchar(32) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_form_field`
--

LOCK TABLES `gx_form_field` WRITE;
/*!40000 ALTER TABLE `gx_form_field` DISABLE KEYS */;
INSERT INTO `gx_form_field` VALUES ('Product Name','ff80808115b712290115b71379d50001','2007-10-19 14:04:07','2007-10-19 07:07:01','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'Product',NULL,0,0,0,'ff80808115b6b1dd0115b6f3b843000b',NULL),('Order Number','ff80808115b70b950115b71157330002','2007-10-19 14:01:47','2007-10-19 07:04:57','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'No',NULL,0,0,0,'ff80808115b6b1dd0115b6f3b843000b',NULL),('PO Number','ff80808115b712290115b71499020002','2007-10-19 14:05:21','2007-10-19 07:05:21','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'PO No',NULL,0,0,0,'ff80808115b6b1dd0115b6f3b843000b',NULL),('Product Quantity','ff80808115b712290115b71529190003','2007-10-19 14:05:58','2007-10-19 07:05:58','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'Quantity',NULL,0,0,0,'ff80808115b6b1dd0115b6f3b843000b',NULL),('Employee Name','ff8080811647f2f1011647fb16970008','2007-11-16 17:22:25','2007-11-16 10:22:25','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'Name',NULL,0,0,0,'ff8080811647f2f1011647fa44470007',NULL),('Employee description','ff8080811647f2f1011647fb70f70009','2007-11-16 17:22:49','2007-11-16 10:22:49','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'Description',NULL,0,0,0,'ff8080811647f2f1011647fa44470007',NULL),('Employee Security Number','ff8080811647f2f1011647fbd5a2000a','2007-11-16 17:23:14','2007-11-16 10:23:14','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ESN',NULL,0,0,0,'ff8080811647f2f1011647fa44470007',NULL);
/*!40000 ALTER TABLE `gx_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gx_form_tab`
--

DROP TABLE IF EXISTS `gx_form_tab`;
CREATE TABLE `gx_form_tab` (
  `description` varchar(255) default '',
  `active_flag` int(11) default '0',
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `create_by` varchar(32) default '',
  `update_by` varchar(32) default '',
  `window_id` varchar(32) default '',
  `table_id` varchar(32) default '',
  `process_id` varchar(32) default '',
  `sequence` int(11) default '0',
  `name` varchar(255) default '',
  `single_row_layout_flag` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_form_tab`
--

LOCK TABLES `gx_form_tab` WRITE;
/*!40000 ALTER TABLE `gx_form_tab` DISABLE KEYS */;
INSERT INTO `gx_form_tab` VALUES ('Purchase Order Detail',1,'ff80808115b6b1dd0115b6f3b843000b','2007-10-19 13:29:26','2007-10-19 06:29:26','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115b6b1dd0115b6f2f4ae0009','ff80808115b6b1dd0115b6ed250c0004',NULL,0,'PO Detail',0),('Purchase Order',1,'ff80808115b6b1dd0115b6f336fc000a','2007-10-19 13:28:53','2007-10-19 06:28:53','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115b6b1dd0115b6f2f4ae0009','ff80808115b6b1dd0115b6e593070001',NULL,0,'PO',0),('Employee Reg',1,'ff8080811647f2f1011647fa44470007','2007-11-16 17:21:32','2007-11-16 10:21:53','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff8080811647f2f1011647f99cd70006','ff8080811647f2f1011647f4812d0001',NULL,0,'Employee',0);
/*!40000 ALTER TABLE `gx_form_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gx_form_window`
--

DROP TABLE IF EXISTS `gx_form_window`;
CREATE TABLE `gx_form_window` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `create_by` varchar(32) default '',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '0',
  `name` varchar(255) default '',
  `description` varchar(255) default '',
  `entity_type_id` varchar(32) default '',
  `window_type_id` varchar(32) default '',
  `image` varchar(255) default '',
  `height` int(11) default '0',
  `width` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_form_window`
--

LOCK TABLES `gx_form_window` WRITE;
/*!40000 ALTER TABLE `gx_form_window` DISABLE KEYS */;
INSERT INTO `gx_form_window` VALUES ('ff80808115b6b1dd0115b6f2f4ae0009','2007-10-19 13:28:36','96f673bc-283e-4b75-b63d-6edc','2007-11-13 11:43:21','96f673bc-283e-4b75-b63d-6edc',1,'Purchasing','Purchasing Window',NULL,NULL,NULL,100,100),('ff8080811647f2f1011647f99cd70006','2007-11-16 17:20:49','96f673bc-283e-4b75-b63d-6edc','2007-11-16 10:20:49','96f673bc-283e-4b75-b63d-6edc',1,'Employee','Employee Registration',NULL,NULL,NULL,50,50);
/*!40000 ALTER TABLE `gx_form_window` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gx_window_role`
--

DROP TABLE IF EXISTS `gx_window_role`;
CREATE TABLE `gx_window_role` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `create_by` varchar(32) default '',
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '1',
  `role_id` varchar(32) default '',
  `window_id` varchar(32) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_window_role`
--

LOCK TABLES `gx_window_role` WRITE;
/*!40000 ALTER TABLE `gx_window_role` DISABLE KEYS */;
INSERT INTO `gx_window_role` VALUES ('ff808081161f180d01161f1cae9a0001','2007-11-08 18:54:41','2007-11-08 11:54:41','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808113bece750113bed0f44c','ff80808115b6b1dd0115b6f2f4ae0009'),('ff808081161f180d01161f1dbb1c0004','2007-11-08 18:55:50','2007-11-08 11:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff808081104d995b01104da90177','ff80808115b6b1dd0115b6f2f4ae0009');
/*!40000 ALTER TABLE `gx_window_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gx_window_role_access`
--

DROP TABLE IF EXISTS `gx_window_role_access`;
CREATE TABLE `gx_window_role_access` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `create_by` varchar(32) default '',
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '1',
  `dv_access_name_id` varchar(32) default '',
  `window_role_id` varchar(32) default '',
  `allowed` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_window_role_access`
--

LOCK TABLES `gx_window_role_access` WRITE;
/*!40000 ALTER TABLE `gx_window_role_access` DISABLE KEYS */;
INSERT INTO `gx_window_role_access` VALUES ('ff808081161f180d01161f1caee50002','2007-11-08 18:54:41','2007-11-08 11:54:41','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d2732b0003','ff808081161f180d01161f1cae9a0001',0),('ff808081161f180d01161f1caeee0003','2007-11-08 18:54:41','2007-11-08 11:54:41','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d3125c0004','ff808081161f180d01161f1cae9a0001',0),('ff808081161f180d01161f1dbb250005','2007-11-08 18:55:50','2007-11-08 11:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d2732b0003','ff808081161f180d01161f1dbb1c0004',0),('ff808081161f180d01161f1dbb280006','2007-11-08 18:55:50','2007-11-08 11:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d3125c0004','ff808081161f180d01161f1dbb1c0004',0),('ff808081161f180d01161f1dbb2e0007','2007-11-08 18:55:50','2007-11-08 11:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d3629b0005','ff808081161f180d01161f1dbb1c0004',0),('ff808081161f180d01161f1dbb320008','2007-11-08 18:55:50','2007-11-08 11:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d3a7af0006','ff808081161f180d01161f1dbb1c0004',0);
/*!40000 ALTER TABLE `gx_window_role_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_position`
--

DROP TABLE IF EXISTS `job_position`;
CREATE TABLE `job_position` (
  `active_flag` tinyint(1) NOT NULL default '0',
  `id` varchar(32) NOT NULL default '',
  `name` varchar(150) NOT NULL default '',
  `description` varchar(255) default NULL,
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `osml_id` varchar(32) default '0',
  `status_id` varchar(32) default 'ic',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_position`
--

LOCK TABLES `job_position` WRITE;
/*!40000 ALTER TABLE `job_position` DISABLE KEYS */;
INSERT INTO `job_position` VALUES (0,'402881ed066f41ff01066f531b76','manager','Manager','1','2005-09-19 23:59:09','1','2007-12-05 11:34:22','0','ic',NULL);
/*!40000 ALTER TABLE `job_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_function`
--

DROP TABLE IF EXISTS `module_function`;
CREATE TABLE `module_function` (
  `id` varchar(32) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) default NULL,
  `descriptor_id` varchar(32) default NULL,
  `iparent` varchar(32) default NULL,
  `ref_desc` varchar(255) default 'id',
  `viewall_flag` tinyint(1) default '1',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `status_id` char(2) NOT NULL default 'ic',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_function`
--

LOCK TABLES `module_function` WRITE;
/*!40000 ALTER TABLE `module_function` DISABLE KEYS */;
INSERT INTO `module_function` VALUES ('ff80808105a3a8ed0105a3b185a9','Site Manager','Site Manager','25','0','id',0,1,'1','2005-08-11 11:30:23','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3a8ed0105a3b4137b','User Management','User Management','25','ff80808105a3a8ed0105a3b185a9','id',1,1,'1','2005-08-11 11:22:37','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3b96f0105a3bdf32c','Workflow Designer','Workflow Designer','25','0','id',1,1,'1','2005-08-11 11:30:31','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('0','Master','Master','25',NULL,'id',1,1,NULL,'2006-02-22 11:02:51',NULL,'0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3e1e581','Company','Company','F332B5D5577E444B78297AFE84','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:52:34','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3e418bd','Job Position','Job Position','F2E587923AC44C8979FBF2F26C','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:54:59','','0000-00-00 00:00:00','ic',NULL),('ff8080811647fd6c0116480064b70003','HRD','Human Resource Dept','14','0','',1,1,'1','2007-11-16 17:28:13','','2007-11-16 10:30:22','ic',NULL),('ff8080811647fd6c01164802e5ca0005','Employee','Employee Reg','ff8080811647fd6c0116480119e80004','ff8080811647fd6c0116480064b70003','',1,1,'1','2007-11-16 17:30:56','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a402cfe0','Multi Site','Multi Site','2','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:28:31','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a403f9f1','Module Manager','Module Manager','25','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:29:48','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4083f82','Descriptor Manager','Descriptor Manager','1','ff80808105a3a8ed0105a3b185a9','description',0,1,'1','2005-08-11 12:34:28','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a40b7e1b','Site','Site','2','ff80808105a3b96f0105a402cfe0','id',0,1,'1','2005-08-11 12:38:00','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a41d0113','Role Site Privilage','Role Site Privilage','EF1F0CD62F63F3B0A7205D5BC4','ff80808105a3b96f0105a403f9f1','id',1,1,'1','2005-08-11 12:57:08','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a41e79a7','Role Manager','Role Manager','EEB49F22144357635AD6A684B6','ff80808105a3b96f0105a403f9f1','id',1,1,'1','2005-08-11 12:58:44','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a426ac13','Role Privilage','Role Privilage','32','ff80808105a3b96f0105a403f9f1','role_id',0,1,'1','2005-08-11 13:07:42','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4279ca8','Module Function','Module Function','31','ff80808105a3b96f0105a403f9f1','description',0,1,'1','2005-08-11 13:08:43','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a431a20c','Descriptor','Descriptor','1','ff80808105a3b96f0105a4083f82','description',0,1,'1','2005-08-11 13:19:40','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a451002d','WF Role','WF Role','14','ff80808105a3b96f0105a3bdf32c','name',1,1,'1','2005-08-11 13:53:56','','0000-00-00 00:00:00','ic',NULL),('ff808081153a8e6301153a926a5c','GX2Droplist','Droplist','ff808081153a8e6301153a90b1e9','ff808081151cf62001151cfd6d90','',1,1,'1','2007-10-11 11:46:40','','0000-00-00 00:00:00','ic',NULL),('ff808081152136f1011521388462','GX2Table','Table','ff808081152136f101152137b298','ff808081151cf62001151cfd6d90','',1,1,'1','2007-10-11 11:46:45','','0000-00-00 00:00:00','ic',NULL),('ff808081151cf62001151cfedc84','window','Window','ff808081151cf62001151cf94fb0','ff808081151cf62001151cfd6d90','',1,1,'1','2007-09-19 16:00:05','','0000-00-00 00:00:00','ic',NULL),('ff808081151cf62001151cfd6d90','GXAdmin','GX Admin','EE187CB92554E9877310D9041D','0','',1,1,'1','2007-09-19 15:58:31','','0000-00-00 00:00:00','ic',NULL),('ff808081163cbe8a01163cc2c2280002','user_mvc','User Manager Ver.2.1','ff808081163cbe8a01163cc1db2f0001','ff80808105a3a8ed0105a3b4137b','',1,1,'1','2007-11-14 13:05:04','','0000-00-00 00:00:00','ic',NULL),('ff80818116aec0e00116aec63c9f0002','training_mvc','Training',NULL,'0','',1,1,'1','2007-12-06 16:25:35','','0000-00-00 00:00:00','ic',NULL),('ff80818116aec0e00116aecaa18d0003','item','Item','ff80818116aec0e00116aec55a6c0001','ff80818116aec0e00116aec63c9f0002','',1,1,'1','2007-12-06 16:30:23','','0000-00-00 00:00:00','ic',NULL);
/*!40000 ALTER TABLE `module_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_privilage`
--

DROP TABLE IF EXISTS `role_privilage`;
CREATE TABLE `role_privilage` (
  `id` varchar(32) NOT NULL default '',
  `role_id` varchar(32) default NULL,
  `module_function_id` varchar(32) default NULL,
  `privilage_flag` tinyint(1) default '0',
  `url_xml` varchar(255) default NULL,
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `status_id` char(2) NOT NULL default 'ic',
  `active_flag` tinyint(1) NOT NULL default '1',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_privilage`
--

LOCK TABLES `role_privilage` WRITE;
/*!40000 ALTER TABLE `role_privilage` DISABLE KEYS */;
INSERT INTO `role_privilage` VALUES ('ff80808105a521520105a52239c8','1','ff80808105a3b96f0105a3bdf32c',1,NULL,'','0000-00-00 00:00:00','','2007-11-30 11:44:42','ic',1,NULL),('ff80808105a8de2e0105a8e066ce','1','ff80808105a3a8ed0105a3b185a9',1,NULL,'','0000-00-00 00:00:00','','2007-11-30 11:44:42','ic',1,NULL),('ff8080811647fd6c011648091b750009','ff8080811647fd6c011647fe2fef0002','ff8080811647fd6c0116480064b70003',1,NULL,'','1970-01-01 07:00:00','','2007-11-30 11:44:43','ic',1,NULL),('ff808081151cf62001151d01a98b','ff808081151cf62001151cfc5907','ff808081151cf62001151cfd6d90',1,NULL,'','0000-00-00 00:00:00','','2007-11-30 11:44:44','ic',1,NULL),('ff80818116aec0e00116aed4729c0007','ff80818116aec0e00116aecece930005','ff80818116aec0e00116aec63c9f0002',1,NULL,'1','2007-12-06 16:41:06','','0000-00-00 00:00:00','ic',1,NULL);
/*!40000 ALTER TABLE `role_privilage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_site`
--

DROP TABLE IF EXISTS `role_site`;
CREATE TABLE `role_site` (
  `id` varchar(32) NOT NULL default '',
  `role_id` varchar(32) NOT NULL default '',
  `rsite_id` varchar(32) NOT NULL default '',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active_flag` int(11) default '1',
  `osml_id` varchar(32) default '0',
  `status_id` varchar(32) default 'ic',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_site`
--

LOCK TABLES `role_site` WRITE;
/*!40000 ALTER TABLE `role_site` DISABLE KEYS */;
INSERT INTO `role_site` VALUES ('ff8080811690108e0116901b3db20001','ff8080811647fd6c011647fe2fef0002','ff8080811647fd6c011647fdbedb0001','1','2007-11-30 17:30:12','1','2007-11-30 10:30:12',1,'0','ic',NULL),('ff8080811690108e0116901b95720002','ff8080811647fd6c011647fe2fef0002','ff808081151cf62001151cfc0584','1','2007-11-30 17:30:35','1','2007-11-30 10:30:35',1,'0','ic',NULL),('e1802384-1353-49c3-9651-bab3','ff808081151cf62001151cfc5907','ff808081151cf62001151cfc0584',NULL,'2007-09-19 16:02:51',NULL,'0000-00-00 00:00:00',1,'0','ic','EE185CE0B82B41C1724F284685'),('ff808081168fbd0301168fc010a10001','1','EE185CE0B82B41C1724F284685','1','2007-11-30 15:50:37','1','2007-11-30 08:50:37',1,'0','ic',NULL),('ff80818116aec0e00116aed434d20006','ff80818116aec0e00116aecece930005','ff80818116aec0e00116aecdd66e0004','1','2007-12-06 16:40:51','1','2007-12-06 09:40:51',1,'0','ic',NULL);
/*!40000 ALTER TABLE `role_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_site_privilage`
--

DROP TABLE IF EXISTS `role_site_privilage`;
CREATE TABLE `role_site_privilage` (
  `id` varchar(32) NOT NULL default '',
  `role_site_id` varchar(32) default NULL,
  `module_function_id` varchar(32) default NULL,
  `privilage_flag` tinyint(1) default '1',
  `url_xml` varchar(255) default NULL,
  `rs_site_id` varchar(32) NOT NULL default '',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `status_id` char(2) NOT NULL default 'ic',
  `active_flag` tinyint(1) NOT NULL default '1',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_site_privilage`
--

LOCK TABLES `role_site_privilage` WRITE;
/*!40000 ALTER TABLE `role_site_privilage` DISABLE KEYS */;
INSERT INTO `role_site_privilage` VALUES ('a372f809-a96d-4ec5-a05e-d83c','e1802384-1353-49c3-9651-bab3','ff808081151cf62001151cfd6d90',1,NULL,'ff808081151cf62001151cfc0584',NULL,'2007-09-19 16:03:32',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('ff80808116855fff01168563b4770002','ff80808116855fff0116856346e60001','ff8080811647fd6c0116480064b70003',0,NULL,'ff80808113bece750113bed05611','1','2007-11-28 15:33:32','1','2007-11-30 08:30:07','ic',1,'EE185CE0B82B41C1724F284685'),('ff808081168fbd0301168fc0453c0002','ff808081168fbd0301168fc010a10001','ff80808105a3a8ed0105a3b185a9',0,NULL,'EE185CE0B82B41C1724F284685','1','2007-11-30 15:50:50','1','2007-11-30 08:50:50','ic',1,NULL),('ff808081168fbd0301168fc07f770004','ff808081168fbd0301168fc010a10001','ff80808105a3b96f0105a3bdf32c',0,NULL,'EE185CE0B82B41C1724F284685','1','2007-11-30 15:51:05','1','2007-11-30 08:51:05','ic',1,NULL),('ff8080811690108e0116901c44240003','ff8080811690108e0116901b3db20001','ff8080811647fd6c0116480064b70003',0,NULL,'ff8080811647fd6c011647fdbedb0001','1','2007-11-30 17:31:19','1','2007-11-30 10:31:19','ic',1,NULL),('ff8080811690108e0116901c95930004','ff8080811690108e0116901b95720002','ff808081151cf62001151cfd6d90',0,NULL,'ff808081151cf62001151cfc0584','1','2007-11-30 17:31:40','1','2007-11-30 10:31:40','ic',1,NULL),('ff80818116aec0e00116aed4ab2a0008','ff80818116aec0e00116aed434d20006','ff80818116aec0e00116aec63c9f0002',0,NULL,'ff80818116aec0e00116aecdd66e0004','1','2007-12-06 16:41:21','1','2007-12-06 09:41:21','ic',1,NULL);
/*!40000 ALTER TABLE `role_site_privilage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` varchar(32) NOT NULL default '',
  `descriptor_id` varchar(32) default NULL,
  `code` char(3) NOT NULL default '',
  `url_section` varchar(255) default NULL,
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(15) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `site_id` varchar(32) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('402881b709be21e60109be253122','','dfd','ari.gif','asfafa\r\n        	\r\n	',1,'1','2006-03-03 10:27:21','','0000-00-00 00:00:00',NULL),('402881b709be21e60109be234262','F74B611636B6B145443194E9','582','','\r\nsas\r\n        	\r\n	\r\n	\r\n	',1,'1','2006-03-03 10:25:15','1','2006-03-03 03:26:43',NULL);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `id` varchar(32) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `description` varchar(255) default NULL,
  `theme_id` varchar(32) NOT NULL default '',
  `title` varchar(255) default NULL,
  `site_headline` text,
  `url_branding` varchar(255) default NULL,
  `site_url` varchar(255) default NULL,
  `admin_email` varchar(255) default NULL,
  `notify_flag` tinyint(1) NOT NULL default '1',
  `notify_email` varchar(255) default NULL,
  `notify_from` varchar(255) default NULL,
  `notify_message` varchar(255) default NULL,
  `active_flag` tinyint(1) NOT NULL default '1',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `osml_id` varchar(32) default '0',
  `status_id` varchar(32) default 'ic',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `update_by` (`update_by`),
  KEY `create_by` (`create_by`),
  KEY `theme_id` (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES ('EE185CE0B82B41C1724F284685','Cimande Backend','Cimande Backend Site','EE39E38171B7328E0269CF4E06','','','','','',1,'','','',1,'1','2002-07-05 09:48:26','1','2006-03-15 06:59:05','0','ic','EE185CE0B82B41C1724F284685'),('ff808081151cf62001151cfc0584','GXAdmin','GXAdmin Site','F07B2292454364DA2311935565','','','','','',1,'','','',1,'1','2007-09-19 15:56:59','1','2007-09-19 08:56:59','0','ic',NULL),('ff8080811647fd6c011647fdbedb0001','Employee','Employee Registration','','','','','','',1,'','','',1,'1','2007-11-16 17:25:20','1','2007-11-16 10:25:20','0','ic',NULL),('ff80808116a9e2210116a9e2d4a60001','adompo','tampan','','','','','','',1,'','','',1,'1','2007-12-05 17:38:43','1','2007-12-05 10:43:49','0','ic',NULL),('ff80818116aec0e00116aecdd66e0004','Training','Training MVC Struts2','','','','','','',1,'','','',1,'1','2007-12-06 16:33:53','1','2007-12-06 09:33:53','0','ic',NULL);
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` varchar(32) NOT NULL default '',
  `user_id` varchar(32) NOT NULL default '',
  `role_id` varchar(32) NOT NULL default '0',
  `default_role` tinyint(1) NOT NULL default '0',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active_flag` int(11) default '1',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(32) default 'ic',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('ff808081163dbc9001163dbd54820001','1','1',1,'1','1970-01-01 07:00:00','1','2007-11-30 06:06:50',0,'0','ic',NULL),('adaa9b6c-4f3a-489e-836a-179a','96f673bc-283e-4b75-b63d-6edc','ff808081151cf62001151cfc5907',1,'1','2007-09-19 16:04:47',NULL,'0000-00-00 00:00:00',1,'0','ic','EE185CE0B82B41C1724F284685'),('ff8080811647fd6c0116480793850007','ff8080811647fd6c01164806d2ea0006','ff8080811647fd6c011647fe2fef0002',1,'1','2007-11-30 17:10:48',NULL,'2007-11-30 10:10:48',1,'0','ic','null'),('ff808081169002600116900422f00001','ff8080811647fd6c01164806d2ea0006','ff808081151cf62001151cfc5907',0,'1','2007-11-30 17:10:48',NULL,'2007-11-30 10:10:48',1,'0','ic','null'),('ff80808116a8ab3b0116a8bf75970004','ff80808116a8ab3b0116a8bf01b10002','ff808081151cf62001151cfc5907',0,'','1970-01-01 07:00:00','','0000-00-00 00:00:00',0,'0','ic',NULL),('ff80808116a9f7480116a9f7b4820001','ff80808116a9809c0116a98fd0e70001','ff808081151cf62001151cfc5907',0,'','1970-01-01 07:00:00','','0000-00-00 00:00:00',0,'0','ic',NULL),('ff80818116aec0e00116aed74555000a','ff80818116aec0e00116aed72e150009','ff80818116aec0e00116aecece930005',1,'','1970-01-01 07:00:00','','0000-00-00 00:00:00',0,'0','ic',NULL);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_site`
--

DROP TABLE IF EXISTS `user_site`;
CREATE TABLE `user_site` (
  `id` varchar(32) NOT NULL default '',
  `user_id` varchar(32) NOT NULL default '',
  `user_site_id` varchar(32) NOT NULL default '',
  `module_function_id` varchar(32) NOT NULL default '',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active_flag` int(11) default '1',
  `osml_id` varchar(32) default '0',
  `status_id` varchar(32) default 'ic',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_site`
--

LOCK TABLES `user_site` WRITE;
/*!40000 ALTER TABLE `user_site` DISABLE KEYS */;
INSERT INTO `user_site` VALUES ('EEB0B1C4E117F2EBC107D7E03A','1','EE185CE0B82B41C1724F284685','','1','2003-09-27 10:27:35',NULL,'0000-00-00 00:00:00',1,'0','ic','EE185CE0B82B41C1724F284685'),('2e660f2f-499b-4eb3-b05c-5699','96f673bc-283e-4b75-b63d-6edc','ff808081151cf62001151cfc0584','','1','2007-09-19 16:04:47',NULL,'0000-00-00 00:00:00',1,'0','ic','EE185CE0B82B41C1724F284685'),('e503eb86-dc48-4a13-bf81-7aa206c2','ff8080811647fd6c01164806d2ea0006','ff808081151cf62001151cfc0584','','1','2007-11-30 17:10:48',NULL,'2007-11-30 10:10:48',1,'0','ic','null'),('6dcc30f8-4cda-4166-91a3-d2a3cc13','ff8080811647fd6c01164806d2ea0006','ff8080811647fd6c011647fdbedb0001','','1','2007-11-30 17:10:48',NULL,'2007-11-30 10:10:48',1,'0','ic','null'),('ff80808116a8ab3b0116a8bf99030005','ff80808116a8ab3b0116a8bf01b10002','ff808081151cf62001151cfc0584','','','1970-01-01 07:00:00','','0000-00-00 00:00:00',0,'0','ic',NULL),('ff80808116a9f7480116a9f7fe150002','ff80808116a9809c0116a98fd0e70001','ff808081151cf62001151cfc0584','','','1970-01-01 07:00:00','','0000-00-00 00:00:00',0,'0','ic',NULL),('ff80818116aec0e00116aed768be000b','ff80818116aec0e00116aed72e150009','ff80818116aec0e00116aecdd66e0004','','','1970-01-01 07:00:00','','0000-00-00 00:00:00',0,'0','ic',NULL);
/*!40000 ALTER TABLE `user_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow_role`
--

DROP TABLE IF EXISTS `workflow_role`;
CREATE TABLE `workflow_role` (
  `id` varchar(32) NOT NULL default '',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL default '',
  `description` varchar(125) default NULL,
  `active_flag` tinyint(1) default '0',
  `site_id` varchar(32) default NULL,
  `id_parent` varchar(32) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflow_role`
--

LOCK TABLES `workflow_role` WRITE;
/*!40000 ALTER TABLE `workflow_role` DISABLE KEYS */;
INSERT INTO `workflow_role` VALUES ('1','','2003-09-03 15:40:41','1','2007-12-06 10:59:58','Gods','Gods\r\n        	\r\n',1,'EE185CE0B82B41C1724F284685','0'),('ff8080811647fd6c011647fe2fef0002','1','2007-11-16 17:25:48','1','2007-11-16 10:26:47','HRD','Human Resource Departement',1,NULL,'0'),('ff808081151cf62001151cfc5907','1','2007-09-19 15:57:20','1','2007-09-19 08:57:20','GXAdmin','GXAdmin Role',1,NULL,'0'),('ff80818116aec0e00116aecece930005','1','2007-12-06 16:34:57','1','2007-12-06 09:34:57','input_item','Mengisi data item',1,NULL,'0');
/*!40000 ALTER TABLE `workflow_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2007-12-07 14:04:49
