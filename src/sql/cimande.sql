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
-- Table structure for table `backend_user`
--

DROP TABLE IF EXISTS `backend_user`;
CREATE TABLE `backend_user` (
  `id` varchar(28) NOT NULL default '',
  `username` varchar(128) NOT NULL default '',
  `password` varchar(30) NOT NULL default '',
  `first_name` varchar(128) default NULL,
  `last_name` varchar(128) default NULL,
  `company_id` varchar(28) default NULL,
  `job_position_id` varchar(28) default NULL,
  `email` varchar(128) default NULL,
  `address1` varchar(255) default NULL,
  `address2` varchar(255) default NULL,
  `city` varchar(128) default NULL,
  `description` varchar(255) default NULL,
  `role_id` varchar(28) default '0',
  `calendar_flag` tinyint(1) NOT NULL default '1',
  `project_flag` tinyint(1) NOT NULL default '0',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `active_flag` tinyint(1) NOT NULL default '1',
  `status_id` char(2) NOT NULL default 'ic',
  `site_id` varchar(28) default NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_user`
--


/*!40000 ALTER TABLE `backend_user` DISABLE KEYS */;
LOCK TABLES `backend_user` WRITE;
INSERT INTO `backend_user` VALUES ('1','admin','YWRtaW4=','Administrator','Workspace','F337B149F1D7EB47954BF7EF7','F2E8E299E96959106BE15AF29B','admin@intercitra.com','Jl. Cempaka Putih Tengah II','Blok C No. 21 Jak-Pus','Jakarta','','1',1,1,NULL,'2005-08-12 11:28:20','1','2003-09-27 10:27:35',1,'ip','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `backend_user` ENABLE KEYS */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(28) NOT NULL default '',
  `descriptor_id` varchar(28) default NULL,
  `code` char(3) NOT NULL default '',
  `iparentcode` varchar(28) default NULL,
  `url_category_image` varchar(255) default NULL,
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `descriptor_id` (`descriptor_id`),
  KEY `iparentcode` (`iparentcode`),
  KEY `descriptor_id_2` (`descriptor_id`),
  KEY `iparentcode_2` (`iparentcode`),
  KEY `descriptor_id_3` (`descriptor_id`),
  KEY `iparentcode_3` (`iparentcode`),
  KEY `descriptor_id_4` (`descriptor_id`),
  KEY `iparentcode_4` (`iparentcode`),
  KEY `descriptor_id_5` (`descriptor_id`),
  KEY `iparentcode_5` (`iparentcode`),
  KEY `descriptor_id_6` (`descriptor_id`),
  KEY `iparentcode_6` (`iparentcode`),
  KEY `descriptor_id_7` (`descriptor_id`),
  KEY `iparentcode_7` (`iparentcode`),
  KEY `descriptor_id_8` (`descriptor_id`),
  KEY `iparentcode_8` (`iparentcode`),
  KEY `descriptor_id_9` (`descriptor_id`),
  KEY `iparentcode_9` (`iparentcode`),
  KEY `descriptor_id_10` (`descriptor_id`),
  KEY `iparentcode_10` (`iparentcode`),
  KEY `descriptor_id_11` (`descriptor_id`),
  KEY `iparentcode_11` (`iparentcode`),
  KEY `descriptor_id_12` (`descriptor_id`),
  KEY `iparentcode_12` (`iparentcode`),
  KEY `descriptor_id_13` (`descriptor_id`),
  KEY `iparentcode_13` (`iparentcode`),
  KEY `descriptor_id_14` (`descriptor_id`),
  KEY `iparentcode_14` (`iparentcode`),
  KEY `descriptor_id_15` (`descriptor_id`),
  KEY `iparentcode_15` (`iparentcode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--


/*!40000 ALTER TABLE `category` DISABLE KEYS */;
LOCK TABLES `category` WRITE;
INSERT INTO `category` VALUES ('402881b709be21e60109be223cd9','ff80808105857360010585bf3f3a','589','402881b709bdfd9b0109bdfdbba2','ari.gif','dsad\r\n        	\r\n	',1,'1','2006-03-03 10:24:08','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05ccb32a0105ccc27179','1','dsc',NULL,'','descriptor',1,'1','2005-08-19 10:22:39','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cdd88938','EE163461EFCD80B5C80D88A308','evn',NULL,'','event parent',1,'1','2005-08-19 15:26:24','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cddb412e','31','mdf',NULL,'','module function parent',1,'1','2005-08-19 15:29:22','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cddf0499','7','sec',NULL,'','section parent',1,'1','2005-08-19 15:33:29','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cde43c12','13','bus',NULL,'','back end user profile parent',1,'1','2005-08-19 15:39:11','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cde99219','2','sit',NULL,'','site parent',1,'1','2005-08-19 15:45:00','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d5768b',NULL,'oke',NULL,'','category ok',1,'1','2005-08-23 17:15:04','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d705f2',NULL,'poi',NULL,'','Age poi',1,'1','2005-08-23 17:16:46','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d84ba6',NULL,'col',NULL,'','colection',1,'1','2005-08-23 17:18:10','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d8a79d',NULL,'ctr',NULL,'','country',1,'1','2005-08-23 17:18:33','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2d9381f',NULL,'faq',NULL,'faq.jpg','faq f',1,'1','2005-08-23 17:19:10','1','2005-08-24 11:02:02','0','ic',NULL),('4028817a05e2d2140105e2d983c6',NULL,'itm',NULL,'','item',1,'1','2005-08-23 17:19:30','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2da47c3',NULL,'md2','4028817a05cdd1d80105cddb412e','','module function',1,'1','2005-08-23 17:20:20','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e2d2140105e2e89a70',NULL,'wf2',NULL,'','workflow role',1,'1','2005-08-23 17:35:58','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05e6973b0105e6a33932',NULL,'luk',NULL,'','test',1,'1','2005-08-24 10:58:40','','0000-00-00 00:00:00','0','ic',NULL),('ff80808106067a250106067ac6bd',NULL,'oki',NULL,'saas','adda',1,'1','2005-08-30 15:22:21','1','2005-08-30 15:37:28','0','ic',NULL),('402881b709bdfd9b0109bdfdbba2',NULL,'ttt',NULL,NULL,'sdasd\r\n        	\r\n	',1,'1','2006-03-03 09:44:15','','0000-00-00 00:00:00','0','ic',NULL),('402881b709be135e0109be138332',NULL,'der',NULL,NULL,'dafas\r\n        	\r\n	',1,'1','2006-03-03 10:08:03','','0000-00-00 00:00:00','0','ic',NULL),('402881b709be135e0109be13d624','F7D31BDF6B4015D5066BA1910E','wrt',NULL,NULL,'dsasad\r\n        	\r\n	',1,'1','2006-03-03 10:08:24','','0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `id` varchar(28) NOT NULL default '',
  `site_id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `skin_id` varchar(28) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  `active_flag` tinyint(1) NOT NULL default '1',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--


/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
LOCK TABLES `collection` WRITE;
INSERT INTO `collection` VALUES ('EF58A8B439BA814A7D93B240EA','ED2E4202F2AE0340726C67A877','latest_news','Latest News','EF3DB199C4997C0D4CF66C2FE3',0,1,NULL,'2002-08-04 22:44:53',NULL,'0000-00-00 00:00:00','0','ic'),('EF57BEBF18DC03624A9537EE53','ED2E4202F2AE0340726C67A877','open_job','Open Job','EF3DD45212976F3861F684F91C',0,1,NULL,'2002-08-04 22:43:49',NULL,'0000-00-00 00:00:00','0','ic'),('EF580C9F50774CC4BBA9C305DC','ED2E4202F2AE0340726C67A877','solution_collection','Solution Collection','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,'2002-08-04 22:36:53',NULL,'0000-00-00 00:00:00','0','ic'),('EF53B0FCA7D4F4CE80369A3BC0','ED2E4202F2AE0340726C67A877','press_release_collection','Press Release Collection','EF3DD27718347862F68D50A66',0,1,NULL,'2002-08-04 22:38:21',NULL,'0000-00-00 00:00:00','0','ic'),('EE48E5532353CE62EE4F9C547E','EE185CE0B82B41C1724F284685','News Update','News Update Collection','EED8A71A292BDD79AE8D438AB3',0,1,NULL,'2002-07-08 09:07:04',NULL,'0000-00-00 00:00:00','0','ic'),('EE7C699016F886FEA906FA5DAC','EDDCA9DCE41A14EE5D5ABE7E3C','solution_collection','Solution Collection','EEEE887BFAA2FB39A07504A03A',1,1,NULL,'2003-01-27 17:09:05',NULL,'0000-00-00 00:00:00','0','ic'),('EE7C7412CB68D123F4F160B4B8','EDDCA9DCE41A14EE5D5ABE7E3C','cross_selling_solution','Cross Selling Solution','EED8A71A292BDD79AE8D438AB3',1,1,NULL,'2003-01-27 17:01:52',NULL,'0000-00-00 00:00:00','0','ic'),('EF575A3BB6F9D65E1376C562F9','ED2E4202F2AE0340726C67A877','cross_selling','Cross Selling','EF3DD1C31AAA5A6C655E9DE458',0,1,NULL,'2002-08-05 07:00:45',NULL,'0000-00-00 00:00:00','0','ic'),('EF1EEB444F1CC7924207265864','EDDCA9DCE41A14EE5D5ABE7E3C','open_job_collection','Open Job Collection','EF1EEC2113DFA19FB81258C38A',1,1,NULL,'2003-01-27 17:07:50',NULL,'0000-00-00 00:00:00','0','ic'),('EE7CCBBE336CC05ECCC3DEDB04','EDDCA9DCE41A14EE5D5ABE7E3C','press_release_front_page','Press Release','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-01-27 17:08:26',NULL,'0000-00-00 00:00:00','0','ic'),('EE7CCC6E6D6BEAA209410E58D5','EDDCA9DCE41A14EE5D5ABE7E3C','news_collection','News Collection','EEED8F61ACA8FD143C4A127AE',1,1,NULL,'2003-01-27 17:07:31',NULL,'0000-00-00 00:00:00','0','ic'),('EF1EB25BD481435B56271A67D2','EDDCA9DCE41A14EE5D5ABE7E3C','solution_main_page','Solution Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-01-27 17:09:24',NULL,'0000-00-00 00:00:00','0','ic'),('EF58D8599C4F377913FD8D1DB0','ED2E4202F2AE0340726C67A877','product_service','Product Service','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,'2002-08-04 22:37:51',NULL,'0000-00-00 00:00:00','0','ic'),('EF535BF707DC20CA4F0222EAB2','ED2E4202F2AE0340726C67A877','news_collection','News Collection','EF3DB199C4997C0D4CF66C2FE3',0,1,NULL,'2002-08-04 22:44:33',NULL,'0000-00-00 00:00:00','0','ic'),('EF5902B02CC7C4E3E55AE7B0AD','ED2E4202F2AE0340726C67A877','cross_line_solution','Cross Line Solution','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,'2002-08-04 22:45:17',NULL,'0000-00-00 00:00:00','0','ic'),('EF5C9801CA3FF9F3D99A20F1CD','ED2E4202F2AE0340726C67A877','press_release','Press Release','EF3DD27718347862F68D50A66',0,1,NULL,'2002-08-04 22:38:39',NULL,'0000-00-00 00:00:00','0','ic'),('EF5CB147C39DE591879212AE26','ED2E4202F2AE0340726C67A877','our_solutions','Our Solutions','EF3DD1C31AAA5A6C655E9DE458',0,1,NULL,'2002-08-04 22:44:14',NULL,'0000-00-00 00:00:00','0','ic'),('EF61F69872E80B522B3F7D1698','EDDCAA0575D694D2560CC2511F','cross_selling','Cross Selling','EF87930075DA19F24E509D71A0',0,1,NULL,'2002-08-08 08:57:28',NULL,'0000-00-00 00:00:00','0','ic'),('EF62010E6C4C37EEA867611132','EDDCAA0575D694D2560CC2511F','press_release','Press Release','EF878F2718A11A7D23D6EBF386',0,1,NULL,'2002-08-08 08:58:18',NULL,'0000-00-00 00:00:00','0','ic'),('EF62053D7884A7B7C28B461E87','EDDCAA0575D694D2560CC2511F','latest_news','Latest News','EF878EBEE25A571043B9E2D699',0,1,NULL,'2002-08-08 08:57:40',NULL,'0000-00-00 00:00:00','0','ic'),('EF620774DA99A708D10B48F528','EDDCAA0575D694D2560CC2511F','our_solutions','Our Solutions','EF87930075DA19F24E509D71A0',0,1,NULL,'2002-08-08 08:58:07',NULL,'0000-00-00 00:00:00','0','ic'),('EF6293FFACC7928F2CCCCA37B1','EF62687CC1170D25FC73E0051C','news_main_collection','News Main Collection','EF61DB0ABCB2C0383ED89CF3BE',0,1,NULL,'2002-08-01 04:31:32',NULL,'0000-00-00 00:00:00','0','ic'),('EF62A08AAB45C4D0CC1FC6CE06','EF62687CC1170D25FC73E0051C','press_release_main_collection','Press Release Main Collection','EF61DC5B0983D882183BF23C11',0,1,NULL,'2002-08-01 04:48:54',NULL,'0000-00-00 00:00:00','0','ic'),('EF62ABFFD639CEDC6F503B678','EF62687CC1170D25FC73E0051C','product_service_main_collection','Product Service Main Collection','EF61DBC92A5A01266BD3D0D049',0,1,NULL,'2002-08-01 04:58:08',NULL,'0000-00-00 00:00:00','0','ic'),('EF633A256C589D6A8ED8B8A941','EF62687CC1170D25FC73E0051C','press_release_main','Press Release Main','EF61DC5B0983D882183BF23C11',0,1,NULL,'2002-08-01 07:33:08',NULL,'0000-00-00 00:00:00','0','ic'),('EF668717A39DDB0F1D4DF9F526','EF62687CC1170D25FC73E0051C','cross_selling','Cross Selling','EF61DBC92A5A01266BD3D0D049',0,1,NULL,'2002-08-01 22:55:47',NULL,'0000-00-00 00:00:00','0','ic'),('EF66892594573B88F1A1CEC0F3','EF62687CC1170D25FC73E0051C','our_solution_collection','Our Solution Collection','EF61DBC92A5A01266BD3D0D049',0,1,NULL,'2002-08-01 22:58:27',NULL,'0000-00-00 00:00:00','0','ic'),('EF6704F9D5930E81F3D8232AA0','EF62687CC1170D25FC73E0051C','latest_news_collections','Latest News Collections','EF61DAA20FF6FC31E28AAFACDB',0,1,NULL,'2002-08-02 01:13:47',NULL,'0000-00-00 00:00:00','0','ic'),('EF670C78C784ECA3E832D49F41','EF62687CC1170D25FC73E0051C','press_release_collection','Press Release Collection','EF61DC5B0983D882183BF23C11',0,1,NULL,'2002-08-02 01:21:30',NULL,'0000-00-00 00:00:00','0','ic'),('EF76DEAB4E65F944FC318B10F2','ED2E4202F2AE0340726C67A877','about_us','About Us','EF3DD04583B1E0BF80BF38F7B4',0,1,NULL,'2002-08-05 03:05:14',NULL,'0000-00-00 00:00:00','0','ic'),('EF76F0C602372C01717F4AD69B','EF62687CC1170D25FC73E0051C','about_us','About Us','EF61DD5C4D4F996AE3D9853CD8',0,1,NULL,'2002-08-05 03:24:58',NULL,'0000-00-00 00:00:00','0','ic'),('EF770FC06E8EF90EA0E86B7EF4','EE1B28DE85CED7258C4D46D2E2','about_us','About Us','EF7706DCFA2042BE91940B9029',0,1,NULL,'2002-08-05 03:58:53',NULL,'0000-00-00 00:00:00','0','ic'),('EF771865DE82B9AE726ACF15BC','EE1B28DE85CED7258C4D46D2E2','cross_selling','Cross Selling','EF7709E076918224E2C5B07B7A',0,1,NULL,'2002-08-05 04:08:18',NULL,'0000-00-00 00:00:00','0','ic'),('EF774C7D03E84F326EDC640E5F','EE1B28DE85CED7258C4D46D2E2','our_solutions','Our Solutions','EF7709E076918224E2C5B07B7A',0,1,NULL,'2002-08-05 07:34:33',NULL,'0000-00-00 00:00:00','0','ic'),('EF775DC852350BB4108EF6BD48','EE1B28DE85CED7258C4D46D2E2','our_solutions_main','Our Solutions Main','EF7709E076918224E2C5B07B7A',0,1,NULL,'2002-08-05 05:25:04',NULL,'0000-00-00 00:00:00','0','ic'),('EF776DA97229A12BB7901E9EEE','EE1B28DE85CED7258C4D46D2E2','press_release','Press Release','EF770A8FA2B9C566FEB2D07D71',0,1,NULL,'2002-08-05 07:34:53',NULL,'0000-00-00 00:00:00','0','ic'),('EF776F524038C0A0701BD2751C','EE1B28DE85CED7258C4D46D2E2','press_release_main','Press Release Main','EF770A8FA2B9C566FEB2D07D71',0,1,NULL,'2002-08-05 05:43:18',NULL,'0000-00-00 00:00:00','0','ic'),('EF7B00DDED2FDABD09CD662C65','EE1B28DE85CED7258C4D46D2E2','product_service_main','Product Service Main','EF7709E076918224E2C5B07B7A',0,1,NULL,'2002-08-05 22:21:20',NULL,'0000-00-00 00:00:00','0','ic'),('EF7B1369BAAA94553E83D3C23E','EE1B28DE85CED7258C4D46D2E2','latest_news','Latest News','EF7708F5A92C7708E431064FF',0,1,NULL,'2002-08-05 22:41:34',NULL,'0000-00-00 00:00:00','0','ic'),('EF7B157A3BBA63A103A7417FEA','EE1B28DE85CED7258C4D46D2E2','latest_news_main','Latest News Main','EF7708F5A92C7708E431064FF',0,1,NULL,'2002-08-05 22:43:47',NULL,'0000-00-00 00:00:00','0','ic'),('EF877C16F3E59D308B85284D46','EDDCAA0575D694D2560CC2511F','latest_news_main','Latest News Main','EF878EBEE25A571043B9E2D699',0,1,NULL,'2002-08-08 08:57:53',NULL,'0000-00-00 00:00:00','0','ic'),('EF877DD13084F34A4E13E123C7','EDDCAA0575D694D2560CC2511F','press_release_main','Press Release Main','EF878F2718A11A7D23D6EBF386',0,1,NULL,'2002-08-08 08:58:30',NULL,'0000-00-00 00:00:00','0','ic'),('EF87C834C829B55008B5659662','EDDCAA0575D694D2560CC2511F','our_solutions_main1','Our Solutions Main1','EF87930075DA19F24E509D71A0',0,1,NULL,'2002-08-08 09:54:29',NULL,'0000-00-00 00:00:00','0','ic'),('EF87C954124BE5827E8C5ED93D','EDDCAA0575D694D2560CC2511F','our_solutions_main2','Our Solutions Main2','EF87930075DA19F24E509D71A0',0,1,NULL,'2002-08-08 09:55:41',NULL,'0000-00-00 00:00:00','0','ic'),('EF87E5E89B29E72B13DA8407BA','EDDCAA0575D694D2560CC2511F','about_us','About Us','EF878D94EA13DF41D77ECEEA3F',0,1,NULL,'2002-08-08 10:26:41',NULL,'0000-00-00 00:00:00','0','ic'),('EF8E3B3AB9F109C7BF163C0AD7','EF8E260F5EE7A2E8ECE6F2F3A3','our_solutions','Our Solutions','EF8E2910D6DC72DE5A739B7323',0,1,NULL,'2002-08-09 15:57:44',NULL,'0000-00-00 00:00:00','0','ic'),('EF8E3C4ADFBDFB74192B71CB43','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news','Latest News','EF8E2AA141B4B44CED456914C8',0,1,NULL,'2002-08-09 15:58:49',NULL,'0000-00-00 00:00:00','0','ic'),('EF8E3D1D196B477841A58FC9A0','EF8E260F5EE7A2E8ECE6F2F3A3','press_release','Press Release','EF8E29F7DF9BD41DE59E1B3273',0,1,NULL,'2002-08-09 15:59:39',NULL,'0000-00-00 00:00:00','0','ic'),('EF8E3EDA4FE70036E202E26581','EF8E260F5EE7A2E8ECE6F2F3A3','open_job','Open Job','EF8E2B6302127EB28DF0796D9',0,1,NULL,'2002-08-09 16:01:36',NULL,'0000-00-00 00:00:00','0','ic'),('EF8E3FA2E9F723DB325F6A7D02','EF8E260F5EE7A2E8ECE6F2F3A3','about_us','About Us','EF8E28BDB57036C93F24B9B14E',0,1,NULL,'2002-08-09 16:02:25',NULL,'0000-00-00 00:00:00','0','ic'),('EF8E42301D17943E5955D9AA44','EF8E260F5EE7A2E8ECE6F2F3A3','press_release_main','Press Release Main','EF8E2A49DD1A4B7CB00B8D1A88',0,1,NULL,'2002-08-09 16:05:17',NULL,'0000-00-00 00:00:00','0','ic'),('EF8E42AF4ADA1F31E1F62D5525','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news_main','Latest News Main','EF8E2B0BB26649B06A069D8519',0,1,NULL,'2002-08-09 16:05:52',NULL,'0000-00-00 00:00:00','0','ic'),('EF8E433D0E138F733F2D166C00','EF8E260F5EE7A2E8ECE6F2F3A3','open_jobs_main','Open Jobs Main','EF8E2B6302127EB28DF0796D9',0,1,NULL,'2002-08-09 16:06:29',NULL,'0000-00-00 00:00:00','0','ic'),('EFABD73B9F5C8A2AFC1BC06327','EDDCA9DCE41A14EE5D5ABE7E3C','about_us','About Us','EEED8EE4881FA530706324955E',1,1,NULL,'2003-01-27 17:01:32',NULL,'0000-00-00 00:00:00','0','ic'),('F0143397173EB2898E7BD1DA02','EDDCA9DCE41A14EE5D5ABE7E3C','Frans','','EEED8F61ACA8FD143C4A127AE',1,1,NULL,'2002-09-04 16:18:50',NULL,'0000-00-00 00:00:00','0','ic'),('F01436B63F216AAAB48195159C','EDDCA9DCE41A14EE5D5ABE7E3C','tulalit','','EEED906F3DD8D8C52409FB4D9F',0,1,NULL,'2002-09-04 16:21:47',NULL,'0000-00-00 00:00:00','0','ic'),('F07B56FBB0DE46F4CF2AE5698E','F07B23B53C6185EACC86EFE1D8','press_release_main','Press Release in Main Page','F07B38B571BAEF43E24F0ABE03',1,1,NULL,'2002-09-24 17:03:42',NULL,'0000-00-00 00:00:00','0','ic'),('F036DC14DC945A100E1E4E301C','ED2E4202F2AE0340726C67A877','Testing','','EF3DB199C4997C0D4CF66C2FE3',1,1,NULL,'2002-09-11 09:50:11',NULL,'0000-00-00 00:00:00','0','ic'),('F07B581DE9BA007DB73EB1BEBC','F07B23B53C6185EACC86EFE1D8','review_main','Review in Main Page','F07B3CF003DAFE9F27A30978A7',1,1,NULL,'2002-09-25 10:42:10',NULL,'0000-00-00 00:00:00','0','ic'),('F302DC45188ECE996BB4E65A63','F185BD3FDC5CC7989A3CED51A1','cross_selling','Cross Selling Collection','F302D4FE6D537C49721004181F',1,1,NULL,'2003-03-25 12:59:13',NULL,'0000-00-00 00:00:00','0','ic'),('F07B796043A756D9E97A3FEFF','F07B23B53C6185EACC86EFE1D8','cross_selling','Cross Selling','F07B3AFC312B9E0CA737CE8886',1,1,NULL,'2002-09-24 17:35:52',NULL,'0000-00-00 00:00:00','0','ic'),('F083F1F7C33EA7F3A9A59BE10A','F07B23B53C6185EACC86EFE1D8','recipe','Recipe','F07B3801CF22E2E91A2A70AE4D',1,1,NULL,'2002-09-26 09:04:26',NULL,'0000-00-00 00:00:00','0','ic'),('F083F929ABA341797CD38BBE7D','F07B23B53C6185EACC86EFE1D8','project','Project','F07B3AFC312B9E0CA737CE8886',1,1,NULL,'2002-09-26 09:12:44',NULL,'0000-00-00 00:00:00','0','ic'),('F09DE1952B7D669AD21E500D72','F07B23B53C6185EACC86EFE1D8','press_release','Press Release','F09DDFE362D841F17A30993ED',1,1,NULL,'2002-10-01 09:57:30',NULL,'0000-00-00 00:00:00','0','ic'),('F0842659151A5462F92C16E9D1','F07B23B53C6185EACC86EFE1D8','review','Review','F07B3CA6AAD39BFD520EFFEFC0',1,1,NULL,'2002-09-26 10:01:52',NULL,'0000-00-00 00:00:00','0','ic'),('F08432B3F4174A089CD81F3616','F07B23B53C6185EACC86EFE1D8','resource','Resource','F07B3A364057068AFB1D09B24B',1,1,NULL,'2002-09-26 10:15:01',NULL,'0000-00-00 00:00:00','0','ic'),('F302DD80386E12F543A34F650','F185BD3FDC5CC7989A3CED51A1','latest_news_main_page','Latest News Main Page Collection','F302D4FE6D537C49721004181F',1,1,NULL,'2003-01-28 10:39:51',NULL,'0000-00-00 00:00:00','0','ic'),('F302DF2D5C14DB19C7398591BC','F185BD3FDC5CC7989A3CED51A1','services_main_page','Product & Services Main Page Collection','F302D4FE6D537C49721004181F',1,1,NULL,'2003-01-28 10:41:43',NULL,'0000-00-00 00:00:00','0','ic'),('F3086EE25AC268B9D89977E44B','F185BD3FDC5CC7989A3CED51A1','press_release','Press Release','F308699BD428889A5632750137',1,1,NULL,'2003-01-29 12:36:29',NULL,'0000-00-00 00:00:00','0','ic'),('F30D61195A51759F754A534603','F185BD3FDC5CC7989A3CED51A1','press_release_archive','Press Release Archive Collection','F30869E6C74A56DDF243778A81',1,1,NULL,'2003-01-30 11:39:43',NULL,'0000-00-00 00:00:00','0','ic'),('F30D6218D92D6172A83CF70347','F185BD3FDC5CC7989A3CED51A1','news','News Collection','F3086B7E11837F450B77703C40',1,1,NULL,'2003-03-19 17:10:48',NULL,'0000-00-00 00:00:00','0','ic'),('F30D62AFC966604EE6B63D5EA','F185BD3FDC5CC7989A3CED51A1','news_archive','News Archive Collection','F3086C6E2EBC786E9D341C958',1,1,NULL,'2003-01-30 11:41:15',NULL,'0000-00-00 00:00:00','0','ic'),('F30D638087912EB63CFF2413C4','F185BD3FDC5CC7989A3CED51A1','product_service','Product & Service Collection','F30D50F630C4B3D981A66A4BD4',1,1,NULL,'2003-01-30 11:42:28',NULL,'0000-00-00 00:00:00','0','ic'),('F30D64A967EC8A114463B155EC','F185BD3FDC5CC7989A3CED51A1','company_structure','Company Structure (About Us)','F30D4F8ED066660E9734DEF2B',0,1,NULL,'2003-01-31 13:39:10',NULL,'0000-00-00 00:00:00','0','ic'),('F30D7A35F127C9F525D69A4BCE','F185BD3FDC5CC7989A3CED51A1','fact_figure','Fact & Figure Collection','F308692D6AEE5FC7D30CACD99C',0,1,NULL,'2003-01-30 12:06:51',NULL,'0000-00-00 00:00:00','0','ic'),('F312B7926E1BA7B9EEAAB39558','F185BD3FDC5CC7989A3CED51A1','dewan_komisaris','Dewan Komisaris','F30D4CB7B4E33CC6D6DD8CE981',0,1,NULL,'2003-01-31 12:31:49',NULL,'0000-00-00 00:00:00','0','ic'),('F312B82623C31410C34434A7B3','F185BD3FDC5CC7989A3CED51A1','dewan_direksi','Dewan Direksi','F30D4CB7B4E33CC6D6DD8CE981',0,1,NULL,'2003-01-31 12:32:21',NULL,'0000-00-00 00:00:00','0','ic'),('F31330D19DFD3F3245616F57B0','F185BD3FDC5CC7989A3CED51A1','company_lob_horticulture','Line of Business Horticulture','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:16:27',NULL,'0000-00-00 00:00:00','0','ic'),('F3133249977BD2C0636E037D23','F185BD3FDC5CC7989A3CED51A1','company_lob_plantation','Line of Business Plantation','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:15:38',NULL,'0000-00-00 00:00:00','0','ic'),('F3133322C1D43F2988CD387324','F185BD3FDC5CC7989A3CED51A1','company_lob_mining','Line of Business Mining','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:15:59',NULL,'0000-00-00 00:00:00','0','ic'),('F31333E67F5209AE9B31726965','F185BD3FDC5CC7989A3CED51A1','company_lob_others','Line of Business Others','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:15:23',NULL,'0000-00-00 00:00:00','0','ic'),('F3FF22FA60FDC1B3F09C2A27AF','F185BD3FDC5CC7989A3CED51A1','sitemap','Site Map Collection','F30424474044603B72B3C3BA3',0,1,NULL,'2003-03-18 10:19:49',NULL,'0000-00-00 00:00:00','0','ic'),('F3FF58FF3B49C217BA449F6849','F185BD3FDC5CC7989A3CED51A1','makin_subsidiary','Makin & Subsidiary Page Collection','F30D5022D3E7ABE3498CA22B8A',1,1,NULL,'2003-03-18 11:19:55',NULL,'0000-00-00 00:00:00','0','ic'),('F40025C7BB2B1555515A1FF83F','F185BD3FDC5CC7989A3CED51A1','head_office','Head Office Collection','F3086DE1A3F88F17DAA77F5EA8',0,1,NULL,'2003-03-18 16:13:59',NULL,'0000-00-00 00:00:00','0','ic'),('F4006A4702C02EC8B03504B154','F185BD3FDC5CC7989A3CED51A1','branch_office','Branch Office Collection','F3086DE1A3F88F17DAA77F5EA8',0,1,NULL,'2003-03-18 16:16:55',NULL,'0000-00-00 00:00:00','0','ic'),('F40A12670642457146FE92A5BF','F185BD3FDC5CC7989A3CED51A1','company_lob_logging','Line Of Business Logging','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:35:57',NULL,'0000-00-00 00:00:00','0','ic'),('F4D332FCE8E1713BFFA339672F','F4D30718756B8401E43FD2AAE6','cross_selling_solution','Cross Selling','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-29 10:32:14',NULL,'0000-00-00 00:00:00','0','ic'),('F4D345059E58F35226610428E3','F4D30718756B8401E43FD2AAE6','solution_main_page','Solution In Main Page Collection','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-28 16:51:21',NULL,'0000-00-00 00:00:00','0','ic'),('F4D34862CECEC33E7A3DFBF2F6','F4D30718756B8401E43FD2AAE6','news_collection','News Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-28 15:00:01',NULL,'0000-00-00 00:00:00','0','ic'),('F4D34917CF2D95241724082D6E','F4D30718756B8401E43FD2AAE6','press_release_main_page','Press Release Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-29 10:35:51',NULL,'0000-00-00 00:00:00','0','ic'),('F4D34AE05BA664870CE107F5C4','F4D30718756B8401E43FD2AAE6','open_job_collection','Open Job Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-28 15:02:45',NULL,'0000-00-00 00:00:00','0','ic'),('F4D3E9C42018508CFBD44C1F7F','F4D30718756B8401E43FD2AAE6','solution_collection','Solution Collection','EEED906F3DD8D8C52409FB4D9F',1,1,NULL,'2003-04-28 17:56:13',NULL,'0000-00-00 00:00:00','0','ic'),('F4D77D9A595E11607831E05333','F4D30718756B8401E43FD2AAE6','press_release_collection','Press Release Collection','EEED91195E6BDC9CF09ECB2DF3',1,1,NULL,'2003-04-29 10:42:16',NULL,'0000-00-00 00:00:00','0','ic'),('F4D7872202EEF42DB1BEE35CAD','F4D30718756B8401E43FD2AAE6','news_collection','News Collection','EEED8F61ACA8FD143C4A127AE',1,1,NULL,'2003-04-29 10:47:07',NULL,'0000-00-00 00:00:00','0','ic'),('F4D7908E18A0B591AD5B35C429','F4D30718756B8401E43FD2AAE6','about_us','About Us Collection','EEED8EE4881FA530706324955E',1,1,NULL,'2003-04-29 10:57:50',NULL,'0000-00-00 00:00:00','0','ic'),('F4DD67C9F9D543C3720D645FA0','F4DD64134EC050E3D0A256EA0D','cross_selling','Cross Selling Collection','F07B379B79C9CD7743C23D2596',0,1,NULL,'2003-09-02 11:57:08',NULL,'0000-00-00 00:00:00','0','ic'),('F4DD6885A1EF5A5916B28F0DE0','F4DD64134EC050E3D0A256EA0D','review_main','Review Main Collection','F07B379B79C9CD7743C23D2596',1,1,NULL,'2003-04-30 14:11:51',NULL,'0000-00-00 00:00:00','0','ic'),('F4E2D64CF8DDBED197CF1D4EC7','F4DD64134EC050E3D0A256EA0D','press_release','Press Release Collection','F09DDFE362D841F17A30993ED',1,1,NULL,'2003-05-01 15:29:10',NULL,'0000-00-00 00:00:00','0','ic'),('F4E2F93A23C96AF5243A648900','F4DD64134EC050E3D0A256EA0D','press_release_main','Press Release In Main Page Collection','F07B379B79C9CD7743C23D2596',1,1,NULL,'2003-05-01 16:07:27',NULL,'0000-00-00 00:00:00','0','ic'),('F4E30221D6345730817DF8B10B','F4DD64134EC050E3D0A256EA0D','project','Project Collection (News)','F07B3AFC312B9E0CA737CE8886',1,1,NULL,'2003-05-01 16:17:08',NULL,'0000-00-00 00:00:00','0','ic'),('F4E30766D4F6B10B77D890862C','F4DD64134EC050E3D0A256EA0D','recipe','Recipe Collection (news)','F07B3801CF22E2E91A2A70AE4D',1,1,NULL,'2003-05-01 16:22:54',NULL,'0000-00-00 00:00:00','0','ic'),('F4E30E4255F0C0ECA9CF12C58D','F4DD64134EC050E3D0A256EA0D','resource','Resource Collection (weblink)','F07B3A364057068AFB1D09B24B',1,1,NULL,'2003-05-01 16:30:49',NULL,'0000-00-00 00:00:00','0','ic'),('F4E315146AC0D62352296671C6','F4DD64134EC050E3D0A256EA0D','review','Review Collection','F07B3CA6AAD39BFD520EFFEFC0',1,1,NULL,'2003-05-01 16:38:00',NULL,'0000-00-00 00:00:00','0','ic'),('F4E8349537A24F34C2BADB1136','F4E6A635A8AC141BAE7F98504','press_release_main','Press Release in Main Page Collection','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,'2003-05-02 16:30:30',NULL,'0000-00-00 00:00:00','0','ic'),('F4E8355C0D223308A5E405F8C3','F4E6A635A8AC141BAE7F98504','latest_news_main','Latest News in Main Page Collection','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,'2003-05-02 16:31:18',NULL,'0000-00-00 00:00:00','0','ic'),('F4E8361B7E88B3E21FDEC4E502','F4E6A635A8AC141BAE7F98504','our_solutions_main','Our Solution in Main Page','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,'2003-05-02 16:32:03',NULL,'0000-00-00 00:00:00','0','ic'),('F4E83EF7F42ADCFA4C089A7267','F4E6A635A8AC141BAE7F98504','latest_news','Latest News Collection','EF8E2AA141B4B44CED456914C8',1,1,NULL,'2003-05-02 16:43:17',NULL,'0000-00-00 00:00:00','0','ic'),('F4E841228EF31C223EC4C3C44','F4E6A635A8AC141BAE7F98504','our_solutions','Our Solutions Collection','EF8E2910D6DC72DE5A739B7323',1,1,NULL,'2003-05-02 16:44:27',NULL,'0000-00-00 00:00:00','0','ic'),('F4E84237BF3A0CE289DCA92CD4','F4E6A635A8AC141BAE7F98504','press_release','Press Release Collection','EF8E29F7DF9BD41DE59E1B3273',1,1,NULL,'2003-05-02 16:47:24',NULL,'0000-00-00 00:00:00','0','ic'),('F4E85130966839B75E0A0C8C90','F4E6A635A8AC141BAE7F98504','about_us','About Us Collection','EF8E285DE8A1E858D8BCC33A12',1,1,NULL,'2003-05-02 17:01:35',NULL,'0000-00-00 00:00:00','0','ic'),('F5015CD1D2ED0D963111F06942','F4DD64134EC050E3D0A256EA0D','recipe_main','Recipe in Main Page','F07B379B79C9CD7743C23D2596',1,1,NULL,'2003-05-07 13:44:47',NULL,'0000-00-00 00:00:00','0','ic'),('F5015D733AF172E8FBC3427079','F4DD64134EC050E3D0A256EA0D','resource_main','Resource In Main Page','F07B379B79C9CD7743C23D2596',1,1,NULL,'2003-05-07 13:45:28',NULL,'0000-00-00 00:00:00','0','ic'),('F78EB6DBE6A3A38FDAAA43DFB8','F78E9748E9F76ABD233C5EAD39','news','news','F302D4FE6D537C49721004181F',1,1,NULL,'2003-09-11 10:56:39',NULL,'0000-00-00 00:00:00','0','ic');
UNLOCK TABLES;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `active_flag` tinyint(1) NOT NULL default '0',
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `address` text,
  `state` varchar(128) default NULL,
  `zip_number` varchar(10) default NULL,
  `telephone` varchar(128) default NULL,
  `faximile` varchar(128) default NULL,
  `website` varchar(128) default NULL,
  `email` varchar(128) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--


/*!40000 ALTER TABLE `company` DISABLE KEYS */;
LOCK TABLES `company` WRITE;
INSERT INTO `company` VALUES (0,'F337B149F1D7EB47954BF7EF7','PT. Intercitra Prima Integrasi','Cempaka Putih Tengah II Blok C No. 21\r\nJakarta Pusat','Jakarta','14520','4260933','4260933','www.intercitra.com','frans@intercitra.com','F162B448063A847','2003-02-07 16:51:14',NULL,'0000-00-00 00:00:00','0','ic','F199E755B97B662FC248CAC80');
UNLOCK TABLES;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

--
-- Table structure for table `descriptor`
--

DROP TABLE IF EXISTS `descriptor`;
CREATE TABLE `descriptor` (
  `id` varchar(28) NOT NULL default '',
  `descriptor_group_id` varchar(28) NOT NULL default '0',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) default NULL,
  `url_descriptor` varchar(255) default NULL,
  `descriptor_flag` tinyint(1) default '0',
  `active_flag` tinyint(1) default '1',
  `url_action` varchar(255) default NULL,
  `type_flag` char(1) NOT NULL default '1',
  `wizard_id` varchar(28) default NULL,
  `site_id` varchar(28) default NULL,
  `collection_default` varchar(128) default 'description',
  PRIMARY KEY  (`id`),
  KEY `update_by` (`update_by`),
  KEY `create_by` (`create_by`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `descriptor`
--


/*!40000 ALTER TABLE `descriptor` DISABLE KEYS */;
LOCK TABLES `descriptor` WRITE;
INSERT INTO `descriptor` VALUES ('1','0',NULL,'2005-08-05 17:09:15','1','2001-12-16 00:00:00','descriptor','Descriptor','descriptor.xml',1,1,NULL,'2',NULL,'EE185CE0B82B41C1724F284685',NULL),('6','0',NULL,'2005-08-05 17:17:33','1','2003-07-09 14:50:47','category','Category','category.xml',1,1,'http://www.test.com?action=test','2','','EE185CE0B82B41C1724F284685',''),('7','0',NULL,'2002-05-29 00:00:00','1','2005-08-24 13:05:45','section','Section','section.xml',1,1,'','2',NULL,'EE185CE0B82B41C1724F284685',NULL),('13','0',NULL,'2002-08-29 00:00:00','1','2002-08-29 00:00:00','backend_user','User Profile','backend_user.xml',1,0,'','0','','EE185CE0B82B41C1724F284685',''),('14','0',NULL,'2005-08-19 10:08:57','1','2005-08-19 10:34:51','workflow_role','Workflow Role','workflow_role.xml',1,1,'','2',NULL,'EE185CE0B82B41C1724F284685',NULL),('22','0',NULL,'2005-09-19 23:49:01','1','2001-12-16 00:00:00','template','Template','template.xml',1,1,NULL,'2',NULL,'EE185CE0B82B41C1724F284685',NULL),('25','0',NULL,'2002-05-29 00:00:00','1','2007-09-14 15:18:54','ads_banner','Ads Banner\r\n		','ads_banner.xml',1,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('31','0',NULL,'2005-08-12 11:31:40','1','2002-04-13 00:00:00','module_function','Module Function','module_function.xml',1,1,NULL,'2',NULL,'EE185CE0B82B41C1724F284685',NULL),('32','0','','2002-05-29 00:00:00','1','2005-08-19 10:35:41','role_privilage','Role Privilage','role_privilage.xml',1,1,'','2',NULL,'EE185CE0B82B41C1724F284685',NULL),('2','0',NULL,'2005-08-05 17:10:38','1','2002-07-05 00:00:00','site','Site','site.xml',1,1,'','2','','EE185CE0B82B41C1724F284685',''),('EACA4B7F9596396050B73AB5EF','0','1','2005-09-19 23:49:51','1','2001-12-16 00:00:00','descriptor_group','Descriptor Group','descriptor_group.xml',0,1,NULL,'2',NULL,'EE185CE0B82B41C1724F284685',NULL),('EE187CB92554E9877310D9041D','0','1','2002-06-27 00:00:00','1','2002-06-27 00:00:00','assign_user_site','Assign User to a Site','EE188C8D1BCFFF7C61672BFA2Cassign_user_site.xml',0,0,'','0','','EE185CE0B82B41C1724F284685',''),('F332B5D5577E444B78297AFE84','0','1','2005-09-19 23:48:08','1','2003-03-18 15:08:25','company','Company','F33682657AE8F60C0818178F40company.xml',0,1,'','2','','EE185CE0B82B41C1724F284685','name'),('EE8C6A49BC200D77F9DD3F92AA','0','1','2002-06-27 00:00:00','1','2002-06-27 00:00:00','user_site','User Manager','EE8C72398F20734B22553E88D6user_site.xml',0,1,'../module/user_site/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('EE399186B35C580610D4EDD7A3','0','1','2002-06-10 00:00:00','1','2002-06-10 00:00:00','collection_descriptor','Collection Content','EE39A7FDB43CDFD00B21EA6672coll_desc.xml',0,1,'../module/collection_content/first.jsp?','1','','EE185CE0B82B41C1724F284685',NULL),('EE39DC68885D4E61299258E68D','0','1','2005-09-19 23:49:11','1','2002-07-23 00:00:00','theme','Theme','EED8830E5DF4DF47FBE1F6926theme.xml',0,1,'','2','','EE185CE0B82B41C1724F284685',''),('EE39EDBA36471BA27231DAFF78','0','1','2005-09-19 23:49:04','1','2002-06-04 00:00:00','template_object','Template Object','EE39F3ECCA8734EFBD690B00F3template_object.xml',0,1,'','2','','EE185CE0B82B41C1724F284685',NULL),('EE39EDFFA5C0438D014F92A9A3','0','1','2005-09-19 23:49:06','1','2002-06-04 00:00:00','template_object_detail','Template Object Detail','EE39F3CD5646776D7FAE7F49C6template_object_detail.xml',0,1,'','2','','EE185CE0B82B41C1724F284685',NULL),('EEB49F22144357635AD6A684B6','0','1','2002-07-19 00:00:00','1','2002-07-19 00:00:00','role_manager','Role Manager','EEB4A290413F69DA2284F97F7Arole_site.xml',0,1,'../module/role_site/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('EED88F7EFBC8DFF1C5A048C73D','0','1','2005-09-19 23:48:55','1','2002-07-05 00:00:00','skin','Skin','EED93484525906F379F20E6364skin.xml',0,1,'','2','','EE185CE0B82B41C1724F284685',''),('EF1F0CD62F63F3B0A7205D5BC4','0','1','2002-07-19 00:00:00','1','2002-07-19 00:00:00','role_site_privilage','Role Site Privilage','EF1F0E578F1ACE31ADF87291DBrole_site_privilage.xml',0,1,'../module/role_site_privilage/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('EFE457F0C2A80EC35CC399876D','0','1','2002-08-26 00:00:00','1','2002-08-26 00:00:00','client_survey','Client Survey','EFE5BF784720189D6C04750567client_survey.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F2E587923AC44C8979FBF2F26C','0','1','2005-09-19 23:48:26','1','2003-01-22 00:00:00','job_position','Job Position','F2E59F1CD7D0A8F31C1B034C4Bjob_position.xml',0,1,'','2','','EE185CE0B82B41C1724F284685',''),('F76A9583B418F4FB3D261C1D53','0','1','2003-09-04 10:13:28',NULL,'0000-00-00 00:00:00','usersite_v2.0','User Manager ver.2.0',NULL,0,1,'../module/usersite_v2.0/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
UNLOCK TABLES;
/*!40000 ALTER TABLE `descriptor` ENABLE KEYS */;

--
-- Table structure for table `descriptor_group`
--

DROP TABLE IF EXISTS `descriptor_group`;
CREATE TABLE `descriptor_group` (
  `id` varchar(28) NOT NULL default '',
  `group_id` varchar(128) NOT NULL default '',
  `folder` varchar(128) NOT NULL default '',
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `descriptor_group`
--


/*!40000 ALTER TABLE `descriptor_group` DISABLE KEYS */;
LOCK TABLES `descriptor_group` WRITE;
INSERT INTO `descriptor_group` VALUES ('0','0','/','Based Location',1,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','1',NULL),('EACA5B0EF8528DAC9EB73F3E92','product_item','product/item','Item Descriptor Group',1,'1','2001-12-15 18:55:39',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `descriptor_group` ENABLE KEYS */;

--
-- Table structure for table `gx_column`
--

DROP TABLE IF EXISTS `gx_column`;
CREATE TABLE `gx_column` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `create_by` varchar(32) default '',
  `update_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '0',
  `name` varchar(255) default '',
  `description` varchar(255) default '',
  `table_id` varchar(32) default '',
  `db_column_name` varchar(255) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_column`
--


/*!40000 ALTER TABLE `gx_column` DISABLE KEYS */;
LOCK TABLES `gx_column` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `gx_column` ENABLE KEYS */;

--
-- Table structure for table `gx_table`
--

DROP TABLE IF EXISTS `gx_table`;
CREATE TABLE `gx_table` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `create_by` varchar(32) default '',
  `update_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '0',
  `name` varchar(255) default '',
  `description` varchar(255) default '',
  `db_table_name` varchar(255) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_table`
--


/*!40000 ALTER TABLE `gx_table` DISABLE KEYS */;
LOCK TABLES `gx_table` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `gx_table` ENABLE KEYS */;

--
-- Table structure for table `gx_window`
--

DROP TABLE IF EXISTS `gx_window`;
CREATE TABLE `gx_window` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `create_by` varchar(32) default '',
  `update_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '0',
  `name` varchar(255) default '',
  `description` varchar(255) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gx_window`
--


/*!40000 ALTER TABLE `gx_window` DISABLE KEYS */;
LOCK TABLES `gx_window` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `gx_window` ENABLE KEYS */;

--
-- Table structure for table `gxform`
--

DROP TABLE IF EXISTS `gxform`;
CREATE TABLE `gxform` (
  `description` varchar(255) default '',
  `active_flag` int(11) default '0',
  `id` varchar(100) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` datetime default '0000-00-00 00:00:00',
  `create_by` varchar(255) default '',
  `update_by` varchar(255) default '',
  `window_id` varchar(32) default '',
  `table_id` varchar(32) default '',
  `name` varchar(255) default '',
  `gxformName` varchar(255) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gxform`
--


/*!40000 ALTER TABLE `gxform` DISABLE KEYS */;
LOCK TABLES `gxform` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `gxform` ENABLE KEYS */;

--
-- Table structure for table `gxgreenator`
--

DROP TABLE IF EXISTS `gxgreenator`;
CREATE TABLE `gxgreenator` (
  `id` varchar(100) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` datetime default '0000-00-00 00:00:00',
  `create_by` varchar(255) default '',
  `update_by` varchar(255) default '',
  `active_flag` int(11) default '0',
  `name` varchar(255) default '',
  `value` varchar(255) NOT NULL default '',
  `type` varchar(100) default '',
  `size` int(11) NOT NULL default '0',
  `maxlength` int(11) NOT NULL default '0',
  `rows` int(11) NOT NULL default '0',
  `cols` int(11) NOT NULL default '0',
  `dateid` varchar(100) NOT NULL default '',
  `Gxform_id` varchar(255) default '',
  `references_id` varchar(32) default '',
  `column_id` varchar(32) default '',
  `tab_id` varchar(32) default '',
  `gxgreenatorName` varchar(255) default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gxgreenator`
--


/*!40000 ALTER TABLE `gxgreenator` DISABLE KEYS */;
LOCK TABLES `gxgreenator` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `gxgreenator` ENABLE KEYS */;

--
-- Table structure for table `job_position`
--

DROP TABLE IF EXISTS `job_position`;
CREATE TABLE `job_position` (
  `active_flag` tinyint(1) NOT NULL default '0',
  `id` varchar(28) NOT NULL default '',
  `name` varchar(150) NOT NULL default '',
  `description` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_position`
--


/*!40000 ALTER TABLE `job_position` DISABLE KEYS */;
LOCK TABLES `job_position` WRITE;
INSERT INTO `job_position` VALUES (0,'402881ed066f41ff01066f531b76','manager','manager','1','2005-09-19 23:59:09','1','2005-09-19 23:59:09','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `job_position` ENABLE KEYS */;

--
-- Table structure for table `module_function`
--

DROP TABLE IF EXISTS `module_function`;
CREATE TABLE `module_function` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) default NULL,
  `descriptor_id` varchar(28) default NULL,
  `iparent` varchar(28) default NULL,
  `ref_desc` varchar(255) default 'id',
  `viewall_flag` tinyint(1) default '1',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `status_id` char(2) NOT NULL default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `iparent` (`iparent`),
  KEY `iparent_2` (`iparent`),
  KEY `descriptor_id_2` (`descriptor_id`),
  KEY `descriptor_id` (`descriptor_id`),
  KEY `descriptor_id_3` (`descriptor_id`),
  KEY `iparent_3` (`iparent`),
  KEY `descriptor_id_4` (`descriptor_id`),
  KEY `iparent_4` (`iparent`),
  KEY `descriptor_id_5` (`descriptor_id`),
  KEY `iparent_5` (`iparent`),
  KEY `descriptor_id_6` (`descriptor_id`),
  KEY `iparent_6` (`iparent`),
  KEY `descriptor_id_7` (`descriptor_id`),
  KEY `iparent_7` (`iparent`),
  KEY `descriptor_id_8` (`descriptor_id`),
  KEY `iparent_8` (`iparent`),
  KEY `descriptor_id_9` (`descriptor_id`),
  KEY `iparent_9` (`iparent`),
  KEY `descriptor_id_10` (`descriptor_id`),
  KEY `iparent_10` (`iparent`),
  KEY `descriptor_id_11` (`descriptor_id`),
  KEY `iparent_11` (`iparent`),
  KEY `descriptor_id_12` (`descriptor_id`),
  KEY `iparent_12` (`iparent`),
  KEY `descriptor_id_13` (`descriptor_id`),
  KEY `iparent_13` (`iparent`),
  KEY `descriptor_id_14` (`descriptor_id`),
  KEY `iparent_14` (`iparent`),
  KEY `descriptor_id_15` (`descriptor_id`),
  KEY `iparent_15` (`iparent`),
  KEY `descriptor_id_16` (`descriptor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_function`
--


/*!40000 ALTER TABLE `module_function` DISABLE KEYS */;
LOCK TABLES `module_function` WRITE;
INSERT INTO `module_function` VALUES ('ff80808105a3a8ed0105a3b185a9','Site Manager','Site Manager','25','0','id',0,1,'1','2005-08-11 11:30:23','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3a8ed0105a3b4137b','User Management','User Management','25','ff80808105a3a8ed0105a3b185a9','id',1,1,'1','2005-08-11 11:22:37','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3b96f0105a3ba792c','Content Manager','Content Manager','25','0','id',1,1,'1','2005-08-11 11:30:28','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3b96f0105a3bdf32c','Workflow Designer','Workflow Designer','25','0','id',1,1,'1','2005-08-11 11:30:31','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('0','Master','Master','25',NULL,'id',1,1,NULL,'2006-02-22 11:02:51',NULL,'0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3db794e','User Manager Ver.2.0','User Manager Ver.2.0','F76A9583B418F4FB3D261C1D53','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:45:33','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3e1e581','Company','Company','F332B5D5577E444B78297AFE84','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:52:34','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3e418bd','Job Position','Job Position','F2E587923AC44C8979FBF2F26C','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:54:59','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3e67dfa','Client Survey','Client Survey','EFE457F0C2A80EC35CC399876D','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:57:35','1','2005-08-11 12:03:01','ic',NULL),('ff80808105a3b96f0105a3e9fb88','User Site','User Site','EE8C6A49BC200D77F9DD3F92AA','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 12:01:24','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3ef0442','User Role','User Role','14','ff80808105a3a8ed0105a3b4137b','name',1,1,'1','2005-08-11 12:06:54','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3f0abbd','Backend User','Backend User','13','ff80808105a3a8ed0105a3b4137b','first_name',1,1,'1','2005-08-11 12:08:43','1','2006-03-03 09:40:35','ic',NULL),('ff80808105a3b96f0105a402cfe0','Multi Site','Multi Site','2','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:28:31','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a403f9f1','Module Manager','Module Manager','25','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:29:48','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4083f82','Descriptor Manager','Descriptor Manager','1','ff80808105a3a8ed0105a3b185a9','description',0,1,'1','2005-08-11 12:34:28','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a40b7e1b','Site','Site','2','ff80808105a3b96f0105a402cfe0','id',0,1,'1','2005-08-11 12:38:00','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a41d0113','Role Site Privilage','Role Site Privilage','EF1F0CD62F63F3B0A7205D5BC4','ff80808105a3b96f0105a403f9f1','id',1,1,'1','2005-08-11 12:57:08','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a41e79a7','Role Manager','Role Manager','EEB49F22144357635AD6A684B6','ff80808105a3b96f0105a403f9f1','id',1,1,'1','2005-08-11 12:58:44','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4206208','User Site','User Site','EE187CB92554E9877310D9041D','ff80808105a3b96f0105a403f9f1','id',0,1,'1','2005-08-11 13:00:49','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a426ac13','Role Privilage','Role Privilage','32','ff80808105a3b96f0105a403f9f1','role_id',0,1,'1','2005-08-11 13:07:42','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4279ca8','Module Function','Module Function','31','ff80808105a3b96f0105a403f9f1','description',0,1,'1','2005-08-11 13:08:43','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a42cc3a5','Descriptor Group','Descriptor Group','EACA4B7F9596396050B73AB5EF','ff80808105a3b96f0105a4083f82','id',0,1,'1','2005-08-11 13:14:21','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a431a20c','Descriptor','Descriptor','1','ff80808105a3b96f0105a4083f82','description',0,1,'1','2005-08-11 13:19:40','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43279d2','Category','Category','6','ff80808105a3b96f0105a4083f82','description',0,1,'1','2005-08-11 13:20:35','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43388fd','Section','Section','7','ff80808105a3b96f0105a4083f82','description',0,1,'1','2005-08-11 13:21:45','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43cacec','Theme Management','Theme Management','25','ff80808105a3b96f0105a3ba792c','id',0,1,'1','2005-08-11 13:31:44','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43df897','Collection Descriptor','Collection Descriptor','EE399186B35C580610D4EDD7A3','ff80808105a3b96f0105a3ba792c','id',0,1,'1','2005-08-11 13:33:09','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43ef71d','Category','Category','6','ff80808105a3b96f0105a3ba792c','description',0,1,'1','2005-08-11 13:34:14','1','2006-02-28 16:54:47','ic',NULL),('ff80808105a3b96f0105a43fb0f4','Section','Section','7','ff80808105a3b96f0105a3ba792c','description',0,1,'1','2005-08-11 13:35:01','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4432933','Skin','Skin','EED88F7EFBC8DFF1C5A048C73D','ff80808105a3b96f0105a43cacec','id',1,1,'1','2005-08-11 13:38:49','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4442643','Theme','Theme','EE39DC68885D4E61299258E68D','ff80808105a3b96f0105a43cacec','id',1,1,'1','2005-08-11 13:39:53','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4450f7b','Template Object Detail','Template Object Detail','EE39EDFFA5C0438D014F92A9A3','ff80808105a3b96f0105a43cacec','id',0,1,'1','2005-08-11 13:40:53','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4461c54','Template Object','Template Object','EE39EDBA36471BA27231DAFF78','ff80808105a3b96f0105a43cacec','id',0,1,'1','2005-08-11 13:42:02','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a447249e','Template','Template','22','ff80808105a3b96f0105a43cacec','name',0,1,'1','2005-08-11 13:43:10','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a451002d','WF Role','WF Role','14','ff80808105a3b96f0105a3bdf32c','name',1,1,'1','2005-08-11 13:53:56','','0000-00-00 00:00:00','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `module_function` ENABLE KEYS */;

--
-- Table structure for table `role_privilage`
--

DROP TABLE IF EXISTS `role_privilage`;
CREATE TABLE `role_privilage` (
  `id` varchar(28) NOT NULL default '',
  `role_id` varchar(28) default NULL,
  `module_function_id` varchar(28) default NULL,
  `privilage_flag` tinyint(1) default '0',
  `url_xml` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `status_id` char(2) NOT NULL default 'ic',
  `active_flag` tinyint(1) NOT NULL default '1',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `role_id` (`role_id`),
  KEY `role_id_2` (`role_id`),
  KEY `role_id_3` (`role_id`),
  KEY `role_id_4` (`role_id`),
  KEY `role_id_5` (`role_id`),
  KEY `role_id_6` (`role_id`),
  KEY `module_function_id` (`module_function_id`),
  KEY `role_id_7` (`role_id`),
  KEY `module_function_id_2` (`module_function_id`),
  KEY `role_id_8` (`role_id`),
  KEY `module_function_id_3` (`module_function_id`),
  KEY `role_id_9` (`role_id`),
  KEY `module_function_id_4` (`module_function_id`),
  KEY `role_id_10` (`role_id`),
  KEY `module_function_id_5` (`module_function_id`),
  KEY `role_id_11` (`role_id`),
  KEY `module_function_id_6` (`module_function_id`),
  KEY `role_id_12` (`role_id`),
  KEY `module_function_id_7` (`module_function_id`),
  KEY `role_id_13` (`role_id`),
  KEY `module_function_id_8` (`module_function_id`),
  KEY `role_id_14` (`role_id`),
  KEY `module_function_id_9` (`module_function_id`),
  KEY `role_id_15` (`role_id`),
  KEY `module_function_id_10` (`module_function_id`),
  KEY `role_id_16` (`role_id`),
  KEY `module_function_id_11` (`module_function_id`),
  KEY `role_id_17` (`role_id`),
  KEY `module_function_id_12` (`module_function_id`),
  KEY `role_id_18` (`role_id`),
  KEY `module_function_id_13` (`module_function_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_privilage`
--


/*!40000 ALTER TABLE `role_privilage` DISABLE KEYS */;
LOCK TABLES `role_privilage` WRITE;
INSERT INTO `role_privilage` VALUES ('ff80808105a521520105a5222233','1','ff80808105a3b96f0105a3ba792c',1,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','ic',0,NULL),('ff80808105a521520105a52239c8','1','ff80808105a3b96f0105a3bdf32c',1,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','ic',0,NULL),('ff80808105a8de2e0105a8e066ce','1','ff80808105a3a8ed0105a3b185a9',1,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','ic',0,NULL),('ff80808105bd64ad0105bd67821b','2','ff80808105a3a8ed0105a3b185a9',1,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','ic',0,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `role_privilage` ENABLE KEYS */;

--
-- Table structure for table `role_site`
--

DROP TABLE IF EXISTS `role_site`;
CREATE TABLE `role_site` (
  `id` varchar(28) NOT NULL default '',
  `role_id` varchar(28) NOT NULL default '',
  `rsite_id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_site`
--


/*!40000 ALTER TABLE `role_site` DISABLE KEYS */;
LOCK TABLES `role_site` WRITE;
INSERT INTO `role_site` VALUES ('F199E8F90A87DB35EAA0B810B8','3','F199E755B97B662FC248CAC80',NULL,'2002-11-19 08:28:32',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F186BF7B53F10B7406CB96A1DD','3','F185BD3FDC5CC7989A3CED51A1',NULL,'2002-11-15 15:10:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F186BF656B571EA0CD8A1D6BCC','3','F185C29BDFC64CD3D08E1A15E8',NULL,'2002-11-15 15:10:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F186BF5394823B80AD8D6364FF','3','F185C351B2FAC396169017978F',NULL,'2002-11-15 15:10:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F74B6B78EBE6BDDAB1FEA8DF3F','3','F74B696E86AA0CA5819A4FB36C',NULL,'2003-08-29 08:57:53',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F78E9C6F2288CD721B04670153','3','F78E9748E9F76ABD233C5EAD39',NULL,'2003-09-11 10:06:04',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F9A20322793136B6AFD2F8C7AE','F9A202E61CD5BE6BE70F60BC30','F9A2020F6D2B0CA30F3A1C8745',NULL,'2003-12-23 14:36:24',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('1234','1','F199E755B97B662FC248CAC80',NULL,'2005-08-22 14:10:53',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('5678','1','ff80808106526f200106527a6431',NULL,'2005-09-14 09:37:21',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('0123','1','ff80808106586e0a0106587570a2',NULL,'2005-08-22 14:10:53',NULL,'0000-00-00 00:00:00','0','ic',NULL),('0f83b41d-b7fd-4386-bf73-36d1','ff8080810b835c2b010b836c06c7','ff8080810b835c2b010b836b4937',NULL,'2006-05-30 10:55:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('24f24762-d28b-4303-977a-5002','ff8080810b835c2b010b8377ec34','ff8080810b835c2b010b8376e649',NULL,'2006-05-30 11:08:10',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('d4333902-30d1-40d0-adac-c864','ff8080810b835c2b010b8380be29','ff8080810b835c2b010b8380660e',NULL,'2006-05-30 11:15:39',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('dd61a2a7-103e-4959-8529-5341','ff8080810b7e4736010b7e6d3be5','ff8080810b835c2b010b8380660e',NULL,'2006-05-30 11:19:24',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('363e6556-ce84-4081-848c-4d7d','ff808081104d995b01104da90177','ff808081104d995b01104da84e0e',NULL,'2007-01-23 13:37:50',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('8fc36dc6-4cdd-430c-b8a1-2a52','ff80808113bece750113bed0f44c','ff80808113bece750113bed05611',NULL,'2007-07-13 16:05:16',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `role_site` ENABLE KEYS */;

--
-- Table structure for table `role_site_privilage`
--

DROP TABLE IF EXISTS `role_site_privilage`;
CREATE TABLE `role_site_privilage` (
  `id` varchar(28) NOT NULL default '',
  `role_site_id` varchar(28) default NULL,
  `module_function_id` varchar(28) default NULL,
  `privilage_flag` tinyint(1) default '1',
  `url_xml` varchar(255) default NULL,
  `rs_site_id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `status_id` char(2) NOT NULL default 'ic',
  `active_flag` tinyint(1) NOT NULL default '1',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_site_privilage`
--


/*!40000 ALTER TABLE `role_site_privilage` DISABLE KEYS */;
LOCK TABLES `role_site_privilage` WRITE;
INSERT INTO `role_site_privilage` VALUES ('2','1','2',1,NULL,'EE185CE0B82B41C1724F284685',NULL,'2002-07-09 09:44:30',NULL,'2002-07-09 08:17:53','ic',1,'EE185CE0B82B41C1724F284685'),('1','1','1',1,NULL,'EE185CE0B82B41C1724F284685',NULL,'2002-07-09 09:45:03',NULL,'2002-07-09 09:45:03','ic',1,'EE185CE0B82B41C1724F284685'),('F1868AC0C6C48059DFA7CB8FB6','EF201F06FE6D8F2B1E1754401A','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'EF62687CC1170D25FC73E0051C',NULL,'2002-11-15 14:44:53',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F186B7E27F6534C0FFB92A8E6B','F186816737F04F453D615080A3','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'F185C351B2FAC396169017978F',NULL,'2002-11-15 15:02:04',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F186B7BB1A72061092EBC71BED','F186816737F04F453D615080A3','F1158BCC10255DDC5563C9DC07',1,NULL,'F185C351B2FAC396169017978F',NULL,'2002-11-15 15:02:04',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F33663953B4902CDFB5A3F49C5','F199E8F90A87DB35EAA0B810B8','F33661890F73F3C0A23436294A',1,NULL,'F199E755B97B662FC248CAC80',NULL,'2003-02-07 10:46:07',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F9A203A43A378BC1AD30EF3787','F9A20322793136B6AFD2F8C7AE','E8D32F8713656B89EF6796025F',1,NULL,'F9A2020F6D2B0CA30F3A1C8745',NULL,'2003-12-23 14:36:53',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('sasasa','1234','ff80808105cd16d80105cd220368',1,NULL,'',NULL,'2005-08-22 14:13:23',NULL,'0000-00-00 00:00:00','ic',1,''),('1234567890','5678','ff80808106526f2001065274d581',1,NULL,'',NULL,'2005-09-14 09:27:00',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('321345','0123','ff80808106586e0a0106586f0a6e',1,NULL,'',NULL,'2005-09-14 09:27:00',NULL,'0000-00-00 00:00:00','ic',1,NULL),('a4f31018-afd6-4a20-b39e-dc5e','0f83b41d-b7fd-4386-bf73-36d1','ff8080810b835c2b010b837162c6',1,NULL,'ff8080810b835c2b010b836b4937',NULL,'2006-05-30 11:00:43',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('3a825413-d535-4220-b519-7ea0','dd61a2a7-103e-4959-8529-5341','ff8080810b835c2b010b837162c6',1,NULL,'ff8080810b835c2b010b8380660e',NULL,'2006-05-30 11:19:36',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('0dc0c122-9112-4a24-95d1-00ad','8fc36dc6-4cdd-430c-b8a1-2a52','ff80808113bece750113bed1fa0c',1,NULL,'ff80808113bece750113bed05611',NULL,'2007-07-13 16:06:54',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `role_site_privilage` ENABLE KEYS */;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` varchar(28) NOT NULL default '',
  `descriptor_id` varchar(28) default NULL,
  `code` char(3) NOT NULL default '',
  `url_section` varchar(255) default NULL,
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(15) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(15) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `descriptor_id` (`descriptor_id`),
  KEY `descriptor_id_2` (`descriptor_id`),
  KEY `descriptor_id_3` (`descriptor_id`),
  KEY `descriptor_id_4` (`descriptor_id`),
  KEY `descriptor_id_5` (`descriptor_id`),
  KEY `descriptor_id_6` (`descriptor_id`),
  KEY `descriptor_id_7` (`descriptor_id`),
  KEY `descriptor_id_8` (`descriptor_id`),
  KEY `descriptor_id_9` (`descriptor_id`),
  KEY `descriptor_id_10` (`descriptor_id`),
  KEY `descriptor_id_11` (`descriptor_id`),
  KEY `descriptor_id_12` (`descriptor_id`),
  KEY `descriptor_id_13` (`descriptor_id`),
  KEY `descriptor_id_14` (`descriptor_id`),
  KEY `descriptor_id_15` (`descriptor_id`),
  KEY `descriptor_id_16` (`descriptor_id`),
  KEY `descriptor_id_17` (`descriptor_id`),
  KEY `descriptor_id_18` (`descriptor_id`),
  KEY `descriptor_id_19` (`descriptor_id`),
  KEY `descriptor_id_20` (`descriptor_id`),
  KEY `descriptor_id_21` (`descriptor_id`),
  KEY `descriptor_id_22` (`descriptor_id`),
  KEY `descriptor_id_23` (`descriptor_id`),
  KEY `descriptor_id_24` (`descriptor_id`),
  KEY `descriptor_id_25` (`descriptor_id`),
  KEY `descriptor_id_26` (`descriptor_id`),
  KEY `descriptor_id_27` (`descriptor_id`),
  KEY `descriptor_id_28` (`descriptor_id`),
  KEY `descriptor_id_29` (`descriptor_id`),
  KEY `descriptor_id_30` (`descriptor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--


/*!40000 ALTER TABLE `section` DISABLE KEYS */;
LOCK TABLES `section` WRITE;
INSERT INTO `section` VALUES ('402881b709be21e60109be253122','','dfd','ari.gif','asfafa\r\n        	\r\n	',1,'1','2006-03-03 10:27:21','','0000-00-00 00:00:00',NULL),('402881b709be21e60109be234262','F74B611636B6B145443194E9','582','','\r\nsas\r\n        	\r\n	\r\n	\r\n	',1,'1','2006-03-03 10:25:15','1','2006-03-03 10:26:43',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `description` varchar(255) default NULL,
  `theme_id` varchar(28) NOT NULL default '',
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
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `update_by` (`update_by`),
  KEY `create_by` (`create_by`),
  KEY `theme_id` (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--


/*!40000 ALTER TABLE `site` DISABLE KEYS */;
LOCK TABLES `site` WRITE;
INSERT INTO `site` VALUES ('EE185CE0B82B41C1724F284685','Cimande Backend','Cimande Backend Site','EE39E38171B7328E0269CF4E06','','','','','',1,'','','',1,'1','2002-07-05 09:48:26','1','2006-03-15 13:59:05','0','ic','EE185CE0B82B41C1724F284685'),('F185BD3FDC5CC7989A3CED51A1','Makin Portal','Makin Portal','F302D39D46B228A55412E3D127','Welcome to Intercitra.com','Isi dengan kata2 dari makin di menu site (Site Headline)','F63C152A8E6428CDB41A42DFC3logo intercitra.gif','','',1,'','','',1,'1','2003-07-07 16:30:27','1','2006-02-28 17:10:56','0','ic','EE185CE0B82B41C1724F284685'),('F185C29BDFC64CD3D08E1A15E8','Makin Intranet','Makin Intranet','F07B2292454364DA2311935565','Welcome to Makin Intranet','ini tulisan cuma test doang',NULL,'','',1,'','','',1,'1','2003-03-06 15:53:30','1','2003-03-06 15:53:30','0','ic','EE185CE0B82B41C1724F284685'),('F185C351B2FAC396169017978F','Document Archive','Document Archive','F07B2292454364DA2311935565','',NULL,NULL,'','',1,'','','',1,'1','2002-11-15 10:46:08',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F4D30718756B8401E43FD2AAE6','Intercitra Site','Intercitra Site','EEEE7A657391D5CD89EAFFA648','Welcome to Intercitra.com','','F63C1E7B8C37B54490B4438C3Blogo intercitra.gif','intercitra-inovation.com','admin.intercitra.com',1,'','','',1,'1','2003-07-07 16:36:25','1','2003-07-07 16:36:25','0','ic','EE185CE0B82B41C1724F284685'),('F4DD64134EC050E3D0A256EA0D','Blueoxygen Site','Blueoxygen Organization Site','F07B2292454364DA2311935565','Welcome to Blueoxygen.org','','F5F866CA1561299B679656D596logo-blueoxygen.gif','','',1,'','','',1,'1','2003-07-07 16:38:59','1','2006-02-28 17:04:51','0','ic','EE185CE0B82B41C1724F284685'),('F4E6A635A8AC141BAE7F98504','Guerill-Forum Site','Guerilla Forum Site','EF8E248CD64707158718C93173','Welcome to Guerilla-Forum.org','','F4E6A7AE60B56B4CC55AE7C4BElogo_guerilla.gif','www.guerilla-forum.org','',1,'','','',1,'1','2003-05-02 09:16:09',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F74B696E86AA0CA5819A4FB36C','Activity Management','Project & Task Tracking','F302D39D46B228A55412E3D127','','',NULL,'','',1,'','','',1,'1','2003-08-29 08:55:56',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('402881ed066f41ff01066f463101','Cimande Backend','Cimande Backend Site','EE39E38171B7328E0269CF4E06','','','','','',1,'','','',1,'1','2005-09-19 23:45:02','1','2005-09-19 23:45:02','0','ic',NULL),('F8EE4789BA9DC24BAD1ECD597D','Report Management','Report Management','F302D39D46B228A55412E3D127','Report Management','',NULL,'','',1,'','','',1,'1','2003-11-18 16:59:46',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('ff8080810b835c2b010b8380660e','Material Movement','Material Movement','F07B2292454364DA2311935565','','','','','',1,'','','',1,'1','2006-05-30 11:14:58','1','2006-05-30 11:14:58','0','ic',NULL),('ff808081104d995b01104da84e0e','Training','Training MVC','F07B2292454364DA2311935565','','','','','',1,'','','',1,'1','2007-01-23 13:33:00','1','2007-01-23 13:33:00','0','ic',NULL),('ff80808113bece750113bed05611','Test','Test','F07B2292454364DA2311935565','','','','','',1,'','','',1,'1','2007-07-13 16:02:10','1','2007-07-13 16:02:10','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `site` ENABLE KEYS */;

--
-- Table structure for table `skin`
--

DROP TABLE IF EXISTS `skin`;
CREATE TABLE `skin` (
  `id` varchar(28) NOT NULL default '',
  `theme_id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) default NULL,
  `url_theme` varchar(128) default NULL,
  `active_flag` tinyint(1) NOT NULL default '1',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skin`
--


/*!40000 ALTER TABLE `skin` DISABLE KEYS */;
LOCK TABLES `skin` WRITE;
INSERT INTO `skin` VALUES ('EED8A71A292BDD79AE8D438AB3','EE39E360586DC4030AA5D88CAA','Article','Article Techno','article.vm',1,'1','2002-07-09 15:07:09','1','2002-07-09 15:07:09','0','ic','EE185CE0B82B41C1724F284685'),('EED8A79711FD1B9C63BA7ADA0E','EE39E360586DC4030AA5D88CAA','Page Techno','Page Techno','page.vm',1,'1','2002-07-09 15:07:31','1','2002-07-09 15:07:31','0','ic','EE185CE0B82B41C1724F284685'),('EEED8E57002048A2E9071DAF76','EEEE7A657391D5CD89EAFFA648','index','Index - Main Page','index.htm',1,'1','2002-07-12 02:50:07','1','2002-07-12 02:50:07','0','ic','EE185CE0B82B41C1724F284685'),('EEED8EE4881FA530706324955E','EEEE7A657391D5CD89EAFFA648','about_us','About Us','about_us.htm',1,'1','2002-07-12 02:50:23','1','2002-07-12 02:50:23','0','ic','EE185CE0B82B41C1724F284685'),('EEED8F22116F192E521FCB6C46','EEEE7A657391D5CD89EAFFA648','contact_us','Contact Us','contact_us.htm',1,'1','2002-07-12 02:50:27','1','2002-07-12 02:50:27','0','ic','EE185CE0B82B41C1724F284685'),('EEED8F61ACA8FD143C4A127AE','EEEE7A657391D5CD89EAFFA648','lates_news','Latest News Archive','latest_news.htm',1,'1','2002-07-12 02:50:33','1','2002-07-12 02:50:33','0','ic','EE185CE0B82B41C1724F284685'),('EEED8FAA79AC379210C5F52060','EEEE7A657391D5CD89EAFFA648','lates_news_details','Latest News Detail','latest_news_detail.htm',1,'1','2002-07-18 00:29:20','1','2002-07-18 00:29:20','0','ic','EE185CE0B82B41C1724F284685'),('EEED906F3DD8D8C52409FB4D9F','EEEE7A657391D5CD89EAFFA648','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-07-12 02:50:41','1','2002-07-12 02:50:41','0','ic','EE185CE0B82B41C1724F284685'),('EEED90B7B09350BB36F389A43E','EEEE7A657391D5CD89EAFFA648','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-07-12 02:50:45','1','2002-07-12 02:50:45','0','ic','EE185CE0B82B41C1724F284685'),('EEED91195E6BDC9CF09ECB2DF3','EEEE7A657391D5CD89EAFFA648','press_release','Press Release Archive','press_release.htm',1,'1','2002-07-12 03:22:29','1','2002-07-12 03:22:29','0','ic','EE185CE0B82B41C1724F284685'),('EEED915B2AE8D8F40ACED882C5','EEEE7A657391D5CD89EAFFA648','press_release_details','Press Release Details','press_release_detail.htm',1,'1','2002-07-12 04:00:15','1','2002-07-12 04:00:15','0','ic','EE185CE0B82B41C1724F284685'),('F2FF1ABC722599C16FE990B95E','EE39E38171B7328E0269CF4E06','page_collection.vm','','',1,'1','2003-01-27 17:07:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF1EEC2113DFA19FB81258C38A','EEEE7A657391D5CD89EAFFA648','open_job','Open Job Skin','open_job.htm',1,'1','2002-07-19 01:13:32','1','2002-07-19 01:13:32','0','ic','EE185CE0B82B41C1724F284685'),('EF33952CCDF48014677207390C','EF339499195C4175BFFF300B14','mainpage','Main Page Green Matrix','index.htm',1,'1','2002-07-23 01:30:25',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DB199C4997C0D4CF66C2FE3','EF339499195C4175BFFF300B14','latest_news','Latest News','latest_news.htm',1,'1','2002-07-25 01:07:21','1','2002-07-25 01:07:21','0','ic','EE185CE0B82B41C1724F284685'),('EF3DCE12F3E784A3504C51EE52','EF339499195C4175BFFF300B14','latest_news_details','Latest News Details','latest_news_details.htm',1,'1','2002-07-25 01:09:15',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD04583B1E0BF80BF38F7B4','EF339499195C4175BFFF300B14','about_us','About Us','about_us.htm',1,'1','2002-07-25 01:11:08',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD0B340E38780B1B49BB820','EF339499195C4175BFFF300B14','contact_us','Contact Us','contact_us.htm',1,'1','2002-07-25 01:11:36',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD11C4B8AF9FF295F58BA9E','EF339499195C4175BFFF300B14','our_solution_details','Our Solution Details','our_solution_details.htm',1,'1','2002-07-25 03:49:00','1','2002-07-25 03:49:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD1C31AAA5A6C655E9DE458','EF339499195C4175BFFF300B14','our_solutions','Our Solutions Archive','our_solutions.htm',1,'1','2002-07-30 23:54:52','1','2002-07-30 23:54:52','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD27718347862F68D50A66','EF339499195C4175BFFF300B14','press_release','Press Release Archive','press_release.htm',1,'1','2002-07-25 01:13:40',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD3C0DE6F7365ABC3BC9FB7','EF339499195C4175BFFF300B14','press_release_details','Press Release Details','press_release_details.htm',1,'1','2002-07-25 01:15:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD45212976F3861F684F91C','EF339499195C4175BFFF300B14','open_job','Open Job','open_job.htm',1,'1','2002-07-25 01:15:40',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61D94A207A243FA2C5E7DACC','EEED769D1CA72C8DD9829685BC','main_page','Main Page','index.htm',1,'1','2002-08-01 01:07:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61D9BA4FA37DC5D61F0B8B6A','EEED769D1CA72C8DD9829685BC','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-08-01 01:07:51',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61DA32CA45F6895A5FF65099','EEED769D1CA72C8DD9829685BC','press_release','Press Release','press_release.htm',1,'1','2002-08-01 01:08:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61DAA20FF6FC31E28AAFACDB','EEED769D1CA72C8DD9829685BC','latest_news','Latest News','latest_news.htm',1,'1','2002-08-01 01:08:46',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61DB0ABCB2C0383ED89CF3BE','EEED769D1CA72C8DD9829685BC','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1','2002-08-02 02:48:45','1','2002-08-02 02:48:45','0','ic','EE185CE0B82B41C1724F284685'),('EF61DBC92A5A01266BD3D0D049','EEED769D1CA72C8DD9829685BC','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-08-02 03:49:34','1','2002-08-02 03:49:34','0','ic','EE185CE0B82B41C1724F284685'),('EF61DC5B0983D882183BF23C11','EEED769D1CA72C8DD9829685BC','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-08-02 02:49:11','1','2002-08-02 02:49:11','0','ic','EE185CE0B82B41C1724F284685'),('EF61DCC666E816B86B1EF4A04B','EEED769D1CA72C8DD9829685BC','contact_us','Contact Us','contact_us.htm',1,'1','2002-08-01 01:11:03',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61DD5C4D4F996AE3D9853CD8','EEED769D1CA72C8DD9829685BC','about_us','About Us','about_us.htm',1,'1','2002-08-01 01:11:40',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF770682B51853368774F11E41','EF77053DB1F41DEAE9E0EC8A2F','main_page','Main Page','index.htm',1,'1','2002-08-05 03:54:48','1','2002-08-05 03:54:48','0','ic','EE185CE0B82B41C1724F284685'),('EF7706DCFA2042BE91940B9029','EF77053DB1F41DEAE9E0EC8A2F','about_us','About Us','about_us.htm',1,'1','2002-08-05 03:54:57','1','2002-08-05 03:54:57','0','ic','EE185CE0B82B41C1724F284685'),('EF7708560D9A33A55538E8D5DD','EF77053DB1F41DEAE9E0EC8A2F','contact_us','Contact Us','contact_us.htm',1,'1','2002-08-07 16:06:23','1','2002-08-07 16:06:23','0','ic','EE185CE0B82B41C1724F284685'),('EF770890284513762413980D61','EF77053DB1F41DEAE9E0EC8A2F','latest_news','Latest News','latest_news.htm',1,'1','2002-08-05 03:55:15','1','2002-08-05 03:55:15','0','ic','EE185CE0B82B41C1724F284685'),('EF7708F5A92C7708E431064FF','EF77053DB1F41DEAE9E0EC8A2F','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1','2002-08-05 03:55:26','1','2002-08-05 03:55:26','0','ic','EE185CE0B82B41C1724F284685'),('EF77097FA9F464579815DAB4DB','EF77053DB1F41DEAE9E0EC8A2F','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-08-05 03:55:35','1','2002-08-05 03:55:35','0','ic','EE185CE0B82B41C1724F284685'),('EF7709E076918224E2C5B07B7A','EF77053DB1F41DEAE9E0EC8A2F','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-08-05 03:55:49','1','2002-08-05 03:55:49','0','ic','EE185CE0B82B41C1724F284685'),('EF770A3D3C54272D02290A7ACF','EF77053DB1F41DEAE9E0EC8A2F','press_release','Press Release','press_release.htm',1,'1','2002-08-05 03:56:00','1','2002-08-05 03:56:00','0','ic','EE185CE0B82B41C1724F284685'),('EF770A8FA2B9C566FEB2D07D71','EF77053DB1F41DEAE9E0EC8A2F','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-08-05 03:56:13','1','2002-08-05 03:56:13','0','ic','EE185CE0B82B41C1724F284685'),('EF878D43B44129DB9FF337D315','EF878CDA15F79452ECED780C03','main_page','Main Page','index.htm',1,'1','2002-08-08 08:49:43',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878D94EA13DF41D77ECEEA3F','EF878CDA15F79452ECED780C03','about_us','About Us','about_us.htm',1,'1','2002-08-08 08:50:04','1','2006-02-28 17:21:17','0','ic','EE185CE0B82B41C1724F284685'),('EF878DE1DCA0A8D06486C85DA6','EF878CDA15F79452ECED780C03','contact_us','Contact Us','contact_us.htm',1,'1','2002-08-08 08:50:27',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878E3C0754B2250A49C18A01','EF878CDA15F79452ECED780C03','latest_news','Latest News','latest_news.htm',1,'1','2002-08-08 08:51:01',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878EBEE25A571043B9E2D699','EF878CDA15F79452ECED780C03','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1','2002-08-08 08:51:27',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878F2718A11A7D23D6EBF386','EF878CDA15F79452ECED780C03','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-08-08 08:51:55',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878FD2836818603346084F2F','EF878CDA15F79452ECED780C03','press_release','Press Release','press_release.htm',1,'1','2002-08-08 08:52:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8790300BE12E5CCE2C2E4701','EF878CDA15F79452ECED780C03','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-08-08 08:55:40',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF87930075DA19F24E509D71A0','EF878CDA15F79452ECED780C03','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-08-08 08:56:25','1','2002-08-08 08:56:25','0','ic','EE185CE0B82B41C1724F284685'),('EF8E277F34F1C4DE8229CFC10D','EF8E248CD64707158718C93173','main_page','Main Page','index.htm',1,'1','2002-08-09 15:36:30',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E285DE8A1E858D8BCC33A12','EF8E248CD64707158718C93173','about_us','About Us','about_us.htm',1,'1','2002-08-09 15:36:56',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E28BDB57036C93F24B9B14E','EF8E248CD64707158718C93173','contact_us','Contact Us','contact_us.htm',1,'1','2002-08-09 15:37:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2910D6DC72DE5A739B7323','EF8E248CD64707158718C93173','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-08-09 15:37:44',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E29788AD8D3BFDC5F397011','EF8E248CD64707158718C93173','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-08-09 15:38:17',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E29F7DF9BD41DE59E1B3273','EF8E248CD64707158718C93173','press_release','Press Release','press_release.htm',1,'1','2002-08-09 15:38:38',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2A49DD1A4B7CB00B8D1A88','EF8E248CD64707158718C93173','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-08-09 15:39:00',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2AA141B4B44CED456914C8','EF8E248CD64707158718C93173','latest_news','Latest News','latest_news.htm',1,'1','2002-08-09 15:39:27',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2B0BB26649B06A069D8519','EF8E248CD64707158718C93173','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1','2002-08-09 15:39:50',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2B6302127EB28DF0796D9','EF8E248CD64707158718C93173','open_job','Open Job','open_job.htm',1,'1','2002-08-09 15:40:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B379B79C9CD7743C23D2596','F07B2292454364DA2311935565','index','Index-Main Page','index.htm',1,'1','2002-09-24 16:23:36',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3801CF22E2E91A2A70AE4D','F07B2292454364DA2311935565','recipe','Recipe','recipe.htm',1,'1','2002-09-24 16:23:55',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B38486BD0AC516EDA596175','F07B2292454364DA2311935565','recipe_detail','Recipe Detail','recipe_detail.htm',1,'1','2002-09-24 16:24:23',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F09DDFE362D841F17A30993ED','F07B2292454364DA2311935565','press_release','Press Release','press_release.htm',1,'1','2002-10-01 09:54:59',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B392A0461FE3079C1826E3A','F07B2292454364DA2311935565','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-09-24 16:25:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3995D35970D90584A8EE7F','F07B2292454364DA2311935565','forum','Forum','forum.htm',1,'1','2002-09-24 16:25:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B39CF04A50D59C1EEA94799','F07B2292454364DA2311935565','forum_detail','Forum Detail','forum_detail.htm',1,'1','2002-09-24 16:26:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3A364057068AFB1D09B24B','F07B2292454364DA2311935565','resource','Resource','resource.htm',1,'1','2002-09-24 16:26:27',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3A976C284A50C0D07B0DEC','F07B2292454364DA2311935565','resource_detail','Resource Detail','resource_detail.htm',1,'1','2002-09-24 16:26:52',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3AFC312B9E0CA737CE8886','F07B2292454364DA2311935565','project','Project','project.htm',1,'1','2002-09-24 16:27:45',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3BCB177AC6A7F14766D6F6','F07B2292454364DA2311935565','project_detail','Project Detail','project_detail.htm',1,'1','2002-09-24 16:28:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3C19D634A84A21B00B2304','F07B2292454364DA2311935565','contact_us','Contact Us','contact_us.htm',1,'1','2002-09-24 16:28:41','1','2002-09-24 16:28:41','0','ic','EE185CE0B82B41C1724F284685'),('F07B3CA6AAD39BFD520EFFEFC0','F07B2292454364DA2311935565','review','Review','review.htm',1,'1','2002-09-24 16:28:59',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3CF003DAFE9F27A30978A7','F07B2292454364DA2311935565','review_detail','Review Detail','review_detail.htm',1,'1','2002-09-24 16:29:23',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F302D4FE6D537C49721004181F','F302D39D46B228A55412E3D127','main_page','Main Page (Index)','index.htm',1,'1','2003-01-28 10:29:51',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30424474044603B72B3C3BA3','F302D39D46B228A55412E3D127','sitemap','Site Map Page','sitemap.htm',1,'1','2003-01-28 16:35:57',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F308692D6AEE5FC7D30CACD99C','F302D39D46B228A55412E3D127','fact_figure','Fact & Figure','fact_figure.htm',1,'1','2003-01-29 12:29:49',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F308699BD428889A5632750137','F302D39D46B228A55412E3D127','press_release','Press Release','press_release.htm',1,'1','2003-01-29 12:30:09',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30869E6C74A56DDF243778A81','F302D39D46B228A55412E3D127','press_release_archive','Press Release Archive','press_release_archive.htm',1,'1','2003-01-30 11:12:30','1','2003-01-30 11:12:30','0','ic','EE185CE0B82B41C1724F284685'),('F3086A26128F78FF6610A15097','F302D39D46B228A55412E3D127','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2003-01-30 11:12:56','1','2003-01-30 11:12:56','0','ic','EE185CE0B82B41C1724F284685'),('F3086B7E11837F450B77703C40','F302D39D46B228A55412E3D127','news','News','news.htm',1,'1','2003-01-30 11:14:47','1','2003-01-30 11:14:47','0','ic','EE185CE0B82B41C1724F284685'),('F3086C6E2EBC786E9D341C958','F302D39D46B228A55412E3D127','news_archive','News Archive','news_archive.htm',1,'1','2003-01-30 11:15:16','1','2003-01-30 11:15:16','0','ic','EE185CE0B82B41C1724F284685'),('F3086CF73451A89028B438A4C2','F302D39D46B228A55412E3D127','news_detail','News Detail','news_detail.htm',1,'1','2003-01-30 11:15:43','1','2003-01-30 11:15:43','0','ic','EE185CE0B82B41C1724F284685'),('F3086DE1A3F88F17DAA77F5EA8','F302D39D46B228A55412E3D127','contact_us','Contact Us','contact_us.htm',1,'1','2003-01-29 12:34:48',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D4CB7B4E33CC6D6DD8CE981','F302D39D46B228A55412E3D127','company_bod','Company Board Of Director','company_bod.htm',1,'1','2003-01-30 11:16:56','1','2006-02-28 17:21:21','0','ic','EE185CE0B82B41C1724F284685'),('F30D4D403DB20A08FF49504FFA','F302D39D46B228A55412E3D127','company_bod_detail','Company Board Of Director (detail)','company_bod_detail.htm',1,'1','2003-01-30 11:17:33',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D4DCBF2ED7BDB30932694B1','F302D39D46B228A55412E3D127','company_lob','Company Line Of Business','company_lob.htm',1,'1','2003-01-30 11:18:11',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D4E637FCDCE6858748449C9','F302D39D46B228A55412E3D127','company_lob_detail_plantation','Company Line Of Business Detail Plantation','company_lob_detail_plantation.htm',1,'1','2003-03-20 13:11:19','1','2003-03-20 13:11:19','0','ic','EE185CE0B82B41C1724F284685'),('F30D4F8ED066660E9734DEF2B','F302D39D46B228A55412E3D127','company_structure','Company Structure (About Us)','company_structure.htm',1,'1','2003-01-30 11:20:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D5022D3E7ABE3498CA22B8A','F302D39D46B228A55412E3D127','company_subsidary','Company Subsidary (index of company menu)','company_subsidary.htm',1,'1','2003-01-30 11:20:59',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D50F630C4B3D981A66A4BD4','F302D39D46B228A55412E3D127','product_service','Product & Service','product_service.htm',1,'1','2003-01-30 11:22:51',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D52A7E7A3412E1B36707786','F302D39D46B228A55412E3D127','product_service_detail','Product & Service (detail)','product_service_detail.htm',1,'1','2003-01-30 11:23:25',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30EDC23C73CD41B124A2387A7','F302D39D46B228A55412E3D127','fact_figure_detail','Fact & Figure (detail)','fact_figure_detail.htm',1,'1','2003-01-30 18:33:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F322D9F44D31058660940D64A7','F302D39D46B228A55412E3D127','company_lob_detail_mining','Company Line of Business Detail Mining','company_lob_detail_mining.htm',1,'1','2003-03-20 13:23:09','1','2003-03-20 13:23:09','0','ic','EE185CE0B82B41C1724F284685'),('F322DABC02B874D8B83A401BA1','F302D39D46B228A55412E3D127','company_lob_detail_horticulture','Company  Line of Business Detail Horticulture','company_lob_detail_horticulture.htm',1,'1','2003-03-20 13:12:19','1','2003-03-20 13:12:19','0','ic','EE185CE0B82B41C1724F284685'),('F322DBD188CC9C1CD5B70A28E2','F302D39D46B228A55412E3D127','company_lob_detail_others','Company Line of Business Detail Others','company_lob_detail_others.htm',1,'1','2003-03-20 13:12:47','1','2003-03-20 13:12:47','0','ic','EE185CE0B82B41C1724F284685'),('F40A0EE9A7454478A824E1AD44','F302D39D46B228A55412E3D127','company_lob_detail_logging','Company  Line of Business Detail Logging','company_lob_detail_logging.htm',1,'1','2003-03-20 13:13:31',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `skin` ENABLE KEYS */;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` varchar(28) NOT NULL default '',
  `create_by` varchar(15) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(15) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `name` varchar(125) NOT NULL default '',
  `description` varchar(255) default NULL,
  `folder` varchar(15) default NULL,
  `descriptor_id` varchar(28) default NULL,
  `url_xsl_template` varchar(255) default NULL,
  `active_flag` tinyint(1) default '0',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template`
--


/*!40000 ALTER TABLE `template` DISABLE KEYS */;
LOCK TABLES `template` WRITE;
INSERT INTO `template` VALUES ('2',NULL,'2001-07-15 16:21:11','1','2001-07-15 16:21:11','Article 2 image','',NULL,'23','template2.xsl',1,NULL),('3',NULL,'2001-07-12 19:58:45',NULL,'0000-00-00 00:00:00','Article 3 image',NULL,NULL,'23','template3.xsl',1,NULL),('EDCEA7A1ED94597C49EA9303D9','1','2002-05-14 18:06:11',NULL,'0000-00-00 00:00:00','Order Collection','Ordered Collection',NULL,'EDCEA76E0E114961F605AAF79C',NULL,1,NULL),('EDCEA8252152A8A6CCD0AC9C82','1','2002-05-14 18:06:32',NULL,'0000-00-00 00:00:00','Standard Collection','Standard Collection',NULL,'EDCEA76E0E114961F605AAF79C',NULL,1,NULL),('EDCEA8252152A8A6FGD0AC9C82','chandra','2002-05-21 12:46:13',NULL,'2002-05-21 12:43:28','Classic','classic template','classic',NULL,NULL,0,NULL),('EDCEA8672152A8A6CCD0AC9C82','chandra','2002-05-21 12:46:03',NULL,'2002-05-21 12:46:03','Techno','Technology template','techno',NULL,NULL,0,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `template` ENABLE KEYS */;

--
-- Table structure for table `template_object`
--

DROP TABLE IF EXISTS `template_object`;
CREATE TABLE `template_object` (
  `active_flag` tinyint(1) NOT NULL default '0',
  `id` varchar(28) NOT NULL default '',
  `theme_id` varchar(28) default NULL,
  `template_skin` varchar(25) NOT NULL default '',
  `description` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_object`
--


/*!40000 ALTER TABLE `template_object` DISABLE KEYS */;
LOCK TABLES `template_object` WRITE;
INSERT INTO `template_object` VALUES (0,'402881b709af032e0109af0437a1','F07B2292454364DA2311935565','okok','\r\n        	\r\n        	okokok\r\n        	','1','2006-02-28 11:57:02','1','2006-02-28 17:20:03','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `template_object` ENABLE KEYS */;

--
-- Table structure for table `template_object_detail`
--

DROP TABLE IF EXISTS `template_object_detail`;
CREATE TABLE `template_object_detail` (
  `id` varchar(28) NOT NULL default '',
  `template_object_id` varchar(28) default NULL,
  `collection_id` varchar(28) default NULL,
  `descriptor_id` varchar(28) default NULL,
  `description` varchar(255) default NULL,
  `type_id` varchar(28) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `template_object_detail`
--


/*!40000 ALTER TABLE `template_object_detail` DISABLE KEYS */;
LOCK TABLES `template_object_detail` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `template_object_detail` ENABLE KEYS */;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `description` varchar(255) default NULL,
  `active_flag` tinyint(1) default '1',
  `theme_folder` varchar(255) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `update_by` (`update_by`),
  KEY `create_by` (`create_by`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--


/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
LOCK TABLES `theme` WRITE;
INSERT INTO `theme` VALUES ('EE39E360586DC4030AA5D88CAA','Tecno','Tecno Skin',1,'techno','1','2002-07-09 15:05:57','1','2002-07-09 15:05:57','0','ic','EE185CE0B82B41C1724F284685'),('EE39E38171B7328E0269CF4E06','Classic','Classic Theme',1,'classic','1','2002-07-09 15:06:03','1','2002-07-09 15:06:03','0','ic','EE185CE0B82B41C1724F284685'),('EEED769D1CA72C8DD9829685BC','Erica','Green Ericsson',1,'erica','1','2002-08-01 01:05:14','1','2002-08-01 01:05:14','0','ic','EE185CE0B82B41C1724F284685'),('EEEE7A657391D5CD89EAFFA648','Green Pattern','Green with Gray Pattern',1,'greenpattern','1','2003-04-28 11:45:10','1','2003-04-28 11:45:10','0','ic','EE185CE0B82B41C1724F284685'),('EF339499195C4175BFFF300B14','GreenMatrix','Green Matrix',1,'greenmatrix','1','2002-07-23 01:40:41',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF77053DB1F41DEAE9E0EC8A2F','Green Portal','\r\nGreen Portal',1,'greenportal','1','2002-08-05 03:48:12','1','2006-02-28 16:49:39','0','ic','EE185CE0B82B41C1724F284685'),('EF878CDA15F79452ECED780C03','Interbox','Interbox',1,'interbox','1','2003-01-28 10:28:47','1','2003-01-28 10:28:47','0','ic','EE185CE0B82B41C1724F284685'),('EF8E248CD64707158718C93173','Guerilla','Guerilla Theme',1,'dot_boobs','1','2003-01-28 10:28:56','1','2003-01-28 10:28:56','0','ic','EE185CE0B82B41C1724F284685'),('F07B2292454364DA2311935565','Blueoxygen','Blueoxygen',1,'template14','1','2003-01-28 10:29:04','1','2003-01-28 10:29:04','0','ic','EE185CE0B82B41C1724F284685'),('F302D39D46B228A55412E3D127','Makin','Makin Portal',1,'makinwb','1','2003-02-06 17:18:37','1','2003-02-06 17:18:37','0','ic','EE185CE0B82B41C1724F284685'),('402881b709aefeec0109af00e5f5','hohoho','hohohoho\r\n        	',1,'hohoho','1','2006-02-28 11:53:25','1','2006-02-28 11:53:25','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` varchar(28) NOT NULL default '',
  `user_id` varchar(28) NOT NULL default '',
  `role_id` varchar(28) NOT NULL default '0',
  `default_role` tinyint(1) NOT NULL default '0',
  `create_by` varchar(15) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(15) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--


/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
LOCK TABLES `user_role` WRITE;
INSERT INTO `user_role` VALUES ('F78504D16152CEEA643E886D12','F36F96E4EA83CB95AC4DC601F2','ff808081059f9f5e01059f9fbc3e',0,'F36F96E4EA83CB9','2005-08-10 16:07:31',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F78A4F806ED6607BFD6D540A4E','1','ff808081059f9f5e01059f9fbc3e',1,'1','2005-08-10 16:12:49',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8154AEBCF7217F34B7C689C91','F501555A2ECD5AC8FCC32F4DD6','ff808081059f9f5e01059f9fbc3e',0,'1','2005-08-10 16:31:30',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FAF5F932667792F8F16C3F5A8A','FAF5F729BB986D84D965E8C0F4','3',1,'1','2004-02-27 15:04:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FAF5FA32FB59AFE9FEBB615518','FAF5F729BB986D84D965E8C0F4','FA84B7C4A3DA2013FA2CEA182B',0,'1','2004-02-27 15:04:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FABD26F9D5C4D3E32E4BFFAC523','1','ff808081059f9f5e01059fa3482b',0,NULL,'2005-08-10 16:41:45',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAA39A4195CE64EF0E058B0968','F36F8BFFF97F8A16505B8305F7','2',0,'1','2004-03-29 12:41:17',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FABD26F9D5C4D3E32E4BFFAC522','F53FAAF09AB84F412CDA27FF72','3',0,NULL,'2004-02-16 14:07:52',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAA399FA12BCA7098B1CC597F3','F36F8BFFF97F8A16505B8305F7','3',1,'1','2004-03-29 12:41:17',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FA89280AA024785E951B6236130','FA89238CD9BCDF331DF9B845EB','4',0,NULL,'2004-02-06 11:48:46',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA8923EB70976CA5ABB7E6FD7D','FA89238CD9BCDF331DF9B845EB','FA84B7C4A3DA2013FA2CEA182B',1,'1','2004-02-06 11:47:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FA8916B91AECAF9B13474EEA390','F501555A2ECD5AC8FCC32F4DD6','FA84B7C4A3DA2013FA2CEA182B',0,NULL,'2004-02-06 11:29:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA892427F4A288E5756BF19A75','FA89238CD9BCDF331DF9B845EB','3',0,'1','2004-02-06 11:47:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('50b9e43a-e5bc-4af4-be1c-d858','03ca5f54-b6d3-43f4-909c-2539','5',1,'1','2005-09-19 23:55:07',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('db0e696e-b717-4ceb-950b-08bc','08ede5a1-b12e-4e0a-b344-e284','ff8080810671953c01067197fcee',1,'1','2005-09-20 10:36:43',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('d007beef-de46-48c9-b660-1ae9','7435cf87-127d-4e0b-8aa1-8263','402881b709aed4560109aed582e7',1,'1','2006-02-28 11:09:08',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('44e9837b-90a2-41ca-a40e-ade6','5fb2c218-3431-491d-9498-0827','4028818d09f6c2df0109f6c45d6a',1,'1','2006-03-14 10:23:30',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('ad762492-3d63-47d5-b375-c49d','a462f3f1-4e3e-4d9f-ad09-9927','ff8080810b7e4736010b7e6d3be5',1,'1','2006-05-31 13:59:09',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('92147f5a-d405-4ef1-b810-989f','3ed0e190-55e9-4237-aa65-5bff','ff808081104d995b01104da90177',1,'1','2007-01-23 13:48:49',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('592aa083-6dfc-4deb-8ecc-8420','225077bd-b7a4-4a69-8479-4066','ff80808113bece750113bed0f44c',1,'1','2007-07-13 16:08:43',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

--
-- Table structure for table `user_site`
--

DROP TABLE IF EXISTS `user_site`;
CREATE TABLE `user_site` (
  `id` varchar(28) NOT NULL default '',
  `user_id` varchar(28) NOT NULL default '',
  `user_site_id` varchar(28) NOT NULL default '',
  `module_function_id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_site`
--


/*!40000 ALTER TABLE `user_site` DISABLE KEYS */;
LOCK TABLES `user_site` WRITE;
INSERT INTO `user_site` VALUES ('EEB0BB5046410D02A6CE7ACF65','EEB0B93A1B6402AF681315D441','EE185CE0B82B41C1724F284685','',NULL,'2002-06-27 15:41:45',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EEB0BAE43A4263DAED44E63E2C','EEB0B93A1B6402AF681315D441','EDDCA9DCE41A14EE5D5ABE7E3C','',NULL,'2002-06-27 15:41:45',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F185CFA73ECFB1AD36B2903150','F162B448063A847319E641EF7D','F185BD3FDC5CC7989A3CED51A1','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F74B6ABBA98BA2CB244E682174','F162B448063A847319E641EF7D','F74B696E86AA0CA5819A4FB36C','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F199E877AC273113D0FA8A3F1F','F162B448063A847319E641EF7D','F199E755B97B662FC248CAC80','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F369EA9AE7DA283CDE99D7A274','F369EA124E984A9790A43C14B1','EE185CE0B82B41C1724F284685','',NULL,'2003-02-18 10:27:03',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F369EB3439B0BBB2BBD1E9E41A','F369EA124E984A9790A43C14B1','F199E755B97B662FC248CAC80','',NULL,'2003-02-18 10:27:03',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F36EFB4E1A2F77BB20AF829316','F36EFAE07C9722187EB9F5E3D3','EE185CE0B82B41C1724F284685','',NULL,'2003-02-18 10:30:23',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F185D188037C8F3BC5807927F0','F162B448063A847319E641EF7D','F185C351B2FAC396169017978F','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E118762EE8790C80C4A1923F','F3FB0D6714905E04E2586A8E1A','F78E9748E9F76ABD233C5EAD39','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8EE490696FC6ED025A4C4DD20','F36F8BFFF97F8A16505B8305F7','F8EE4789BA9DC24BAD1ECD597D','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F4D30893462F2C792DB4185F95','F36F8BFFF97F8A16505B8305F7','F4D30718756B8401E43FD2AAE6','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F50155FC3216ED4114889E41C1','F501555A2ECD5AC8FCC32F4DD6','F4D30718756B8401E43FD2AAE6','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F50155E55F8EDDC8BCB3A9EBF0','F501555A2ECD5AC8FCC32F4DD6','F4E6A635A8AC141BAE7F98504','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F50155CF326EFD2295732FE25D','F501555A2ECD5AC8FCC32F4DD6','F4DD64134EC050E3D0A256EA0D','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F53FABB5EDFA9FFA635D4F13B2','F53FAAF09AB84F412CDA27FF72','F4D30718756B8401E43FD2AAE6','','1','2003-09-10 11:38:48',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EEB0B1C4E117F2EBC107D7E03A','1','EE185CE0B82B41C1724F284685','','1','2003-09-27 10:27:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F185CF82299CD400D6344EC11C','F162B448063A847319E641EF7D','F185C29BDFC64CD3D08E1A15E8','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F78504E9CA6B87DFD26F26A198','F36F96E4EA83CB95AC4DC601F2','EE185CE0B82B41C1724F284685','','F36F96E4EA83CB95AC4DC601F2','2003-10-01 13:39:58',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8A07899371FBFC29CD9A655CF','F36F8BFFF97F8A16505B8305F7','F185C351B2FAC396169017978F','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E1176BD2F22E8D87F4FC1984','F36F96E4EA83CB95AC4DC601F2','F74B696E86AA0CA5819A4FB36C','','F36F96E4EA83CB95AC4DC601F2','2003-10-01 13:39:58',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E11861C3B616E56BD4F59606','F3FB0D6714905E04E2586A8E1A','F4E6A635A8AC141BAE7F98504','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E11850AACA9728DC1C44D550','F3FB0D6714905E04E2586A8E1A','F4DD64134EC050E3D0A256EA0D','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E118398CBBE3BDD35A7A88BC','F3FB0D6714905E04E2586A8E1A','F4D30718756B8401E43FD2AAE6','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7DD5471E74DAACCF5C6AF2C8F','F36F8BFFF97F8A16505B8305F7','F74B696E86AA0CA5819A4FB36C','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8C9C0D7F3766F540CAC2C827E','F501555A2ECD5AC8FCC32F4DD6','EE185CE0B82B41C1724F284685','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8C9C17C35BC3070349F969EE9','F501555A2ECD5AC8FCC32F4DD6','F74B696E86AA0CA5819A4FB36C','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8CA1E5F6435F95FE1841F5E56','F3FB0D6714905E04E2586A8E1A','F74B696E86AA0CA5819A4FB36C','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F4DD65DF494F8DAFF30D612131','F36F8BFFF97F8A16505B8305F7','F4DD64134EC050E3D0A256EA0D','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F4E6AF2191AD16BED7A4EB7C4A','F36F8BFFF97F8A16505B8305F7','F4E6A635A8AC141BAE7F98504','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F9A20532CF58D9C5F170229724','F9A204566AA30595ACD597D51E','F9A2020F6D2B0CA30F3A1C8745','','1','2003-12-23 14:38:41',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FA89248E72953C4C73DFA64111','FA89238CD9BCDF331DF9B845EB','F74B696E86AA0CA5819A4FB36C','','1','2004-02-06 11:47:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FAF5FAF8EC2CB834BE217641D1','FAF5F729BB986D84D965E8C0F4','F74B696E86AA0CA5819A4FB36C','','1','2004-02-27 15:04:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FAF5FB2E8DF3DC2618FEC102C8','FAF5F729BB986D84D965E8C0F4','F185C351B2FAC396169017978F','','1','2004-02-27 15:04:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('a06fced3-a105-4ab8-ba55-55f1','03ca5f54-b6d3-43f4-909c-2539','F199E755B97B662FC248CAC80','','1','2005-09-19 23:55:07',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('50ca4dda-46dd-46e0-9990-70bb','08ede5a1-b12e-4e0a-b344-e284','ff8080810671953c01067197a0f0','','1','2005-09-20 10:36:43',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('1b69f0af-4448-4e20-b355-a939','7435cf87-127d-4e0b-8aa1-8263','402881b709aed4560109aed7ae52','','1','2006-02-28 11:09:08',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('5fd4634c-d0c6-47a9-af37-f135','5fb2c218-3431-491d-9498-0827','4028818d09f6c2df0109f6c4ae3a','','1','2006-03-14 10:23:30',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('ece6359d-dc58-4de9-a1a9-d777','a462f3f1-4e3e-4d9f-ad09-9927','ff8080810b7e4736010b7e711229','','1','2006-05-31 13:59:09',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('8ce4d9f6-df0e-4f2b-be8f-5de8','3ed0e190-55e9-4237-aa65-5bff','ff808081104d995b01104da84e0e','','1','2007-01-23 13:48:49',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('37ed1ffe-37b2-4ebb-9930-0f56','225077bd-b7a4-4a69-8479-4066','ff80808113bece750113bed05611','','1','2007-07-13 16:08:43',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_site` ENABLE KEYS */;

--
-- Table structure for table `wizard`
--

DROP TABLE IF EXISTS `wizard`;
CREATE TABLE `wizard` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `folderName` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `update_by` varchar(28) default NULL,
  `create_date` date default NULL,
  `update_date` date default NULL,
  `active_flag` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wizard`
--


/*!40000 ALTER TABLE `wizard` DISABLE KEYS */;
LOCK TABLES `wizard` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `wizard` ENABLE KEYS */;

--
-- Table structure for table `workflow_role`
--

DROP TABLE IF EXISTS `workflow_role`;
CREATE TABLE `workflow_role` (
  `id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `name` varchar(50) NOT NULL default '',
  `description` varchar(125) default NULL,
  `active_flag` tinyint(1) default '0',
  `site_id` varchar(28) default NULL,
  `id_parent` varchar(28) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflow_role`
--


/*!40000 ALTER TABLE `workflow_role` DISABLE KEYS */;
LOCK TABLES `workflow_role` WRITE;
INSERT INTO `workflow_role` VALUES ('3','','2004-02-04 14:42:16','1','2006-03-15 14:15:02','Journalist','Create the document',0,'EE185CE0B82B41C1724F284685','1'),('2','','2004-02-04 14:42:14','1','2006-02-28 17:03:49','Editor','\r\n        	Edit the document\r\n        	',0,'EE185CE0B82B41C1724F284685','1'),('1','','2003-09-03 15:40:41','1','2006-03-15 14:15:39','Gods','Gods',1,'EE185CE0B82B41C1724F284685','0'),('4','','2003-09-03 15:41:43','1','2005-09-20 00:14:33','Approver','Approve the document',0,'EE185CE0B82B41C1724F284685','0'),('5','','2003-09-03 15:41:43','1','2001-07-13 18:34:12','Publisher','Publish the document',0,'EE185CE0B82B41C1724F284685','0'),('E8615A12EE2ABB0357752928E5','1','2003-09-03 15:41:43','1','2001-08-17 23:29:31','Content Editor','Content Editor',1,'EE185CE0B82B41C1724F284685','0'),('E8615AC4915CA30C4B13A7A1C0','1','2003-09-03 15:41:43','1','2005-08-22 16:42:28','Element Editor','Element Editor',1,'EE185CE0B82B41C1724F284685','0'),('ff808081104d995b01104da90177','1','2007-01-23 13:33:46','1','2007-01-23 13:33:46','Training','Training\r\n        	',1,NULL,'0'),('ff80808113bece750113bed0f44c','1','2007-07-13 16:02:51','1','2007-07-13 16:02:51','TestRole','TestRole\r\n        	',1,NULL,'0');
UNLOCK TABLES;
/*!40000 ALTER TABLE `workflow_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

