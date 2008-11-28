/*
SQLyog - Free MySQL GUI v5.02
Host - 5.0.67-community-nt : Database - cimande
*********************************************************************
Server version : 5.0.67-community-nt
*/


create database if not exists `cimande`;

USE `cimande`;

/*Table structure for table `app_employee` */

DROP TABLE IF EXISTS `app_employee`;

CREATE TABLE `app_employee` (
  `id` varchar(32) NOT NULL default '',
  `create_date` datetime default '0000-00-00 00:00:00',
  `create_by` varchar(32) default '',
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(32) default '',
  `active_flag` int(11) default '1',
  `name` varchar(255) default '',
  `description` varchar(255) default '',
  `nip` varchar(255) default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `app_employee` */

/*Table structure for table `backend_user` */

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
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active_flag` tinyint(1) NOT NULL default '1',
  `site_id` varchar(32) default NULL,
  `reward_point` int(11) default NULL,
  `name_visible` tinyint(1) default NULL,
  `email_visible` tinyint(1) default NULL,
  `workspace_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`),
  KEY `FK34849A96314F56A6` (`company_id`),
  KEY `FK34849A96456510EF` (`role_id`),
  KEY `FK34849A966BB10E31` (`job_position_id`),
  KEY `FK34849A963CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `backend_user` */

insert into `backend_user` values 
('1','admin','YWRtaW4=','Administrator','Workspace','blueoxygen','mgr','admin@meruvian.org','Grand Wijaya Center Jl Wijaya II','Blok H No 41','Jakarta Selatan','','1',NULL,'2005-08-12 11:28:20','1','2008-10-16 13:48:14',1,'EE185CE0B82B41C1724F284685',NULL,NULL,NULL,'flat'),
('96f673bc-283e-4b75-b63d-6edc','gxadmin','Z3hhZG1pbg==','GX','Admin','blueoxygen','mgr','','','','','','2-gx',NULL,'2007-09-19 16:04:47','1','2008-10-16 13:48:14',1,'EE185CE0B82B41C1724F284685',NULL,NULL,NULL,'tree'),
('ff8081811cf90e28011cf919a3ff000d','aroma','YXJvbWE=','aroma admin','','blueoxygen','mgr','','','','','','ff8081811cf90e28011cf918c4500009','1','2008-10-14 09:05:19','1','2008-10-14 09:05:19',1,NULL,NULL,NULL,NULL,NULL),
('ff8081811cf90e28011cf91cc1e40016','kuga','a3VnYQ==','kuga','','blueoxygen','mgr','','','','','','ff8081811cf90e28011cf91a75b90010','1','2008-10-14 09:08:43','1','2008-10-14 09:08:43',1,NULL,NULL,NULL,NULL,NULL),
('402880f91d19d3fb011d19dc022a0008','test','dGVzdA==','test','test','blueoxygen','mgr','','','','','','ff8081811ac3700b011ac3716b270001','1','2008-10-20 17:45:28','1','2008-11-11 00:03:05',1,NULL,NULL,NULL,NULL,'menu'),
('ff8080811ddcf1f4011ddd0f17160003','asdasd','YWRhc2Q=','asdasd','adasd','blueoxygen','mgr','','','','','','ff8081811ac3700b011ac3716b270001','1','2008-11-27 15:27:13','1','2008-11-27 15:27:13',1,NULL,NULL,NULL,NULL,'tree');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` varchar(32) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `iparentcode` varchar(32) default NULL,
  `url_category_image` varchar(255) default NULL,
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `site_id` varchar(32) default NULL,
  `categoryDescriptor_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK302BCFE60140B49` (`categoryDescriptor_id`),
  KEY `FK302BCFED94CFE2B` (`iparentcode`),
  KEY `FK302BCFE3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert into `category` values 
('4028817a05ccb32a0105ccc27179','dsc',NULL,'','descriptor',1,'1','2005-08-19 10:22:39','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05cdd1d80105cdd88938','evn',NULL,'','event parent',1,'1','2005-08-19 15:26:24','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05cdd1d80105cddb412e','mdf',NULL,'','module function parent',1,'1','2005-08-19 15:29:22','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05cdd1d80105cddf0499','sec',NULL,'','section parent',1,'1','2005-08-19 15:33:29','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05cdd1d80105cde43c12','bus',NULL,'','back end user profile parent',1,'1','2005-08-19 15:39:11','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05cdd1d80105cde99219','sit',NULL,'','site parent',1,'1','2005-08-19 15:45:00','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05e2d2140105e2d5768b','oke',NULL,'','category ok',1,'1','2005-08-23 17:15:04','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05e2d2140105e2d705f2','poi',NULL,'','Age poi',1,'1','2005-08-23 17:16:46','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05e2d2140105e2d84ba6','col',NULL,'','colection',1,'1','2005-08-23 17:18:10','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05e2d2140105e2d8a79d','ctr',NULL,'','country',1,'1','2005-08-23 17:18:33','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05e2d2140105e2d9381f','faq',NULL,'faq.jpg','faq f',1,'1','2005-08-23 17:19:10','1','2005-08-24 11:02:02',NULL,NULL),
('4028817a05e2d2140105e2d983c6','itm',NULL,'','item',1,'1','2005-08-23 17:19:30','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05e2d2140105e2da47c3','md2',NULL,'','module function',1,'1','2005-08-23 17:20:20','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05e2d2140105e2e89a70','wf2',NULL,'','workflow role',1,'1','2005-08-23 17:35:58','','2008-03-17 18:36:38',NULL,NULL),
('4028817a05e6973b0105e6a33932','luk',NULL,'','test',1,'1','2005-08-24 10:58:40','','2008-03-17 18:36:38',NULL,NULL),
('402881b709bdfd9b0109bdfdbba2','ttt',NULL,NULL,'sdasd            ',1,'1','2006-03-03 09:44:15','','2008-03-17 18:36:38',NULL,NULL),
('402881b709be135e0109be138332','der',NULL,NULL,'dafas            ',1,'1','2006-03-03 10:08:03','','2008-03-17 18:36:38',NULL,NULL),
('402881b709be135e0109be13d624','wrt',NULL,NULL,'dsasad            ',1,'1','2006-03-03 10:08:24','','2008-03-17 18:36:38',NULL,NULL),
('402881b709be21e60109be223cd9','589',NULL,'ari.gif','dsad            ',1,'1','2006-03-03 10:24:08','','2008-03-17 18:36:38',NULL,NULL),
('ff80808106067a250106067ac6bd','oki',NULL,'saas','adda',1,'1','2005-08-30 15:22:21','1','2005-08-30 15:37:28',NULL,NULL);

/*Table structure for table `collection` */

DROP TABLE IF EXISTS `collection`;

CREATE TABLE `collection` (
  `id` varchar(32) NOT NULL default '',
  `site_id` varchar(32) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `active_flag` tinyint(1) NOT NULL default '1',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `folderName` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK9835AE9E3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `collection` */

insert into `collection` values 
('EE48E5532353CE62EE4F9C547E','EE185CE0B82B41C1724F284685','News Update','News Update Collection',1,NULL,'2002-07-08 09:07:04',NULL,'2008-03-18 17:36:58',NULL),
('EE7C699016F886FEA906FA5DAC','EDDCA9DCE41A14EE5D5ABE7E3C','solution_collection','Solution Collection',1,NULL,'2003-01-27 17:09:05',NULL,'2008-03-18 17:36:58',NULL),
('EE7C7412CB68D123F4F160B4B8','EDDCA9DCE41A14EE5D5ABE7E3C','cross_selling_solution','Cross Selling Solution',1,NULL,'2003-01-27 17:01:52',NULL,'2008-03-18 17:36:58',NULL),
('EE7CCBBE336CC05ECCC3DEDB04','EDDCA9DCE41A14EE5D5ABE7E3C','press_release_front_page','Press Release',1,NULL,'2003-01-27 17:08:26',NULL,'2008-03-18 17:36:58',NULL),
('EE7CCC6E6D6BEAA209410E58D5','EDDCA9DCE41A14EE5D5ABE7E3C','news_collection','News Collection',1,NULL,'2003-01-27 17:07:31',NULL,'2008-03-18 17:36:58',NULL),
('EF1EB25BD481435B56271A67D2','EDDCA9DCE41A14EE5D5ABE7E3C','solution_main_page','Solution Main Page',1,NULL,'2003-01-27 17:09:24',NULL,'2008-03-18 17:36:58',NULL),
('EF1EEB444F1CC7924207265864','EDDCA9DCE41A14EE5D5ABE7E3C','open_job_collection','Open Job Collection',1,NULL,'2003-01-27 17:07:50',NULL,'2008-03-18 17:36:58',NULL),
('EF535BF707DC20CA4F0222EAB2','ED2E4202F2AE0340726C67A877','news_collection','News Collection',1,NULL,'2002-08-04 22:44:33',NULL,'2008-03-18 17:36:58',NULL),
('EF53B0FCA7D4F4CE80369A3BC0','ED2E4202F2AE0340726C67A877','press_release_collection','Press Release Collection',1,NULL,'2002-08-04 22:38:21',NULL,'2008-03-18 17:36:58',NULL),
('EF575A3BB6F9D65E1376C562F9','ED2E4202F2AE0340726C67A877','cross_selling','Cross Selling',1,NULL,'2002-08-05 07:00:45',NULL,'2008-03-18 17:36:58',NULL),
('EF57BEBF18DC03624A9537EE53','ED2E4202F2AE0340726C67A877','open_job','Open Job',1,NULL,'2002-08-04 22:43:49',NULL,'2008-03-18 17:36:58',NULL),
('EF580C9F50774CC4BBA9C305DC','ED2E4202F2AE0340726C67A877','solution_collection','Solution Collection',1,NULL,'2002-08-04 22:36:53',NULL,'2008-03-18 17:36:58',NULL),
('EF58A8B439BA814A7D93B240EA','ED2E4202F2AE0340726C67A877','latest_news','Latest News',1,NULL,'2002-08-04 22:44:53',NULL,'2008-03-18 17:36:58',NULL),
('EF58D8599C4F377913FD8D1DB0','ED2E4202F2AE0340726C67A877','product_service','Product Service',1,NULL,'2002-08-04 22:37:51',NULL,'2008-03-18 17:36:58',NULL),
('EF5902B02CC7C4E3E55AE7B0AD','ED2E4202F2AE0340726C67A877','cross_line_solution','Cross Line Solution',1,NULL,'2002-08-04 22:45:17',NULL,'2008-03-18 17:36:58',NULL),
('EF5C9801CA3FF9F3D99A20F1CD','ED2E4202F2AE0340726C67A877','press_release','Press Release',1,NULL,'2002-08-04 22:38:39',NULL,'2008-03-18 17:36:58',NULL),
('EF5CB147C39DE591879212AE26','ED2E4202F2AE0340726C67A877','our_solutions','Our Solutions',1,NULL,'2002-08-04 22:44:14',NULL,'2008-03-18 17:36:58',NULL),
('EF61F69872E80B522B3F7D1698','EDDCAA0575D694D2560CC2511F','cross_selling','Cross Selling',1,NULL,'2002-08-08 08:57:28',NULL,'2008-03-18 17:36:58',NULL),
('EF62010E6C4C37EEA867611132','EDDCAA0575D694D2560CC2511F','press_release','Press Release',1,NULL,'2002-08-08 08:58:18',NULL,'2008-03-18 17:36:58',NULL),
('EF62053D7884A7B7C28B461E87','EDDCAA0575D694D2560CC2511F','latest_news','Latest News',1,NULL,'2002-08-08 08:57:40',NULL,'2008-03-18 17:36:58',NULL),
('EF620774DA99A708D10B48F528','EDDCAA0575D694D2560CC2511F','our_solutions','Our Solutions',1,NULL,'2002-08-08 08:58:07',NULL,'2008-03-18 17:36:58',NULL),
('EF6293FFACC7928F2CCCCA37B1','EF62687CC1170D25FC73E0051C','news_main_collection','News Main Collection',1,NULL,'2002-08-01 04:31:32',NULL,'2008-03-18 17:36:58',NULL),
('EF62A08AAB45C4D0CC1FC6CE06','EF62687CC1170D25FC73E0051C','press_release_main_collection','Press Release Main Collection',1,NULL,'2002-08-01 04:48:54',NULL,'2008-03-18 17:36:58',NULL),
('EF62ABFFD639CEDC6F503B678','EF62687CC1170D25FC73E0051C','product_service_main_collection','Product Service Main Collection',1,NULL,'2002-08-01 04:58:08',NULL,'2008-03-18 17:36:58',NULL),
('EF633A256C589D6A8ED8B8A941','EF62687CC1170D25FC73E0051C','press_release_main','Press Release Main',1,NULL,'2002-08-01 07:33:08',NULL,'2008-03-18 17:36:58',NULL),
('EF668717A39DDB0F1D4DF9F526','EF62687CC1170D25FC73E0051C','cross_selling','Cross Selling',1,NULL,'2002-08-01 22:55:47',NULL,'2008-03-18 17:36:58',NULL),
('EF66892594573B88F1A1CEC0F3','EF62687CC1170D25FC73E0051C','our_solution_collection','Our Solution Collection',1,NULL,'2002-08-01 22:58:27',NULL,'2008-03-18 17:36:58',NULL),
('EF6704F9D5930E81F3D8232AA0','EF62687CC1170D25FC73E0051C','latest_news_collections','Latest News Collections',1,NULL,'2002-08-02 01:13:47',NULL,'2008-03-18 17:36:58',NULL),
('EF670C78C784ECA3E832D49F41','EF62687CC1170D25FC73E0051C','press_release_collection','Press Release Collection',1,NULL,'2002-08-02 01:21:30',NULL,'2008-03-18 17:36:58',NULL),
('EF76DEAB4E65F944FC318B10F2','ED2E4202F2AE0340726C67A877','about_us','About Us',1,NULL,'2002-08-05 03:05:14',NULL,'2008-03-18 17:36:58',NULL),
('EF76F0C602372C01717F4AD69B','EF62687CC1170D25FC73E0051C','about_us','About Us',1,NULL,'2002-08-05 03:24:58',NULL,'2008-03-18 17:36:58',NULL),
('EF770FC06E8EF90EA0E86B7EF4','EE1B28DE85CED7258C4D46D2E2','about_us','About Us',1,NULL,'2002-08-05 03:58:53',NULL,'2008-03-18 17:36:58',NULL),
('EF771865DE82B9AE726ACF15BC','EE1B28DE85CED7258C4D46D2E2','cross_selling','Cross Selling',1,NULL,'2002-08-05 04:08:18',NULL,'2008-03-18 17:36:58',NULL),
('EF774C7D03E84F326EDC640E5F','EE1B28DE85CED7258C4D46D2E2','our_solutions','Our Solutions',1,NULL,'2002-08-05 07:34:33',NULL,'2008-03-18 17:36:58',NULL),
('EF775DC852350BB4108EF6BD48','EE1B28DE85CED7258C4D46D2E2','our_solutions_main','Our Solutions Main',1,NULL,'2002-08-05 05:25:04',NULL,'2008-03-18 17:36:58',NULL),
('EF776DA97229A12BB7901E9EEE','EE1B28DE85CED7258C4D46D2E2','press_release','Press Release',1,NULL,'2002-08-05 07:34:53',NULL,'2008-03-18 17:36:58',NULL),
('EF776F524038C0A0701BD2751C','EE1B28DE85CED7258C4D46D2E2','press_release_main','Press Release Main',1,NULL,'2002-08-05 05:43:18',NULL,'2008-03-18 17:36:58',NULL),
('EF7B00DDED2FDABD09CD662C65','EE1B28DE85CED7258C4D46D2E2','product_service_main','Product Service Main',1,NULL,'2002-08-05 22:21:20',NULL,'2008-03-18 17:36:58',NULL),
('EF7B1369BAAA94553E83D3C23E','EE1B28DE85CED7258C4D46D2E2','latest_news','Latest News',1,NULL,'2002-08-05 22:41:34',NULL,'2008-03-18 17:36:58',NULL),
('EF7B157A3BBA63A103A7417FEA','EE1B28DE85CED7258C4D46D2E2','latest_news_main','Latest News Main',1,NULL,'2002-08-05 22:43:47',NULL,'2008-03-18 17:36:58',NULL),
('EF877C16F3E59D308B85284D46','EDDCAA0575D694D2560CC2511F','latest_news_main','Latest News Main',1,NULL,'2002-08-08 08:57:53',NULL,'2008-03-18 17:36:58',NULL),
('EF877DD13084F34A4E13E123C7','EDDCAA0575D694D2560CC2511F','press_release_main','Press Release Main',1,NULL,'2002-08-08 08:58:30',NULL,'2008-03-18 17:36:58',NULL),
('EF87C834C829B55008B5659662','EDDCAA0575D694D2560CC2511F','our_solutions_main1','Our Solutions Main1',1,NULL,'2002-08-08 09:54:29',NULL,'2008-03-18 17:36:58',NULL),
('EF87C954124BE5827E8C5ED93D','EDDCAA0575D694D2560CC2511F','our_solutions_main2','Our Solutions Main2',1,NULL,'2002-08-08 09:55:41',NULL,'2008-03-18 17:36:58',NULL),
('EF87E5E89B29E72B13DA8407BA','EDDCAA0575D694D2560CC2511F','about_us','About Us',1,NULL,'2002-08-08 10:26:41',NULL,'2008-03-18 17:36:58',NULL),
('EF8E3B3AB9F109C7BF163C0AD7','EF8E260F5EE7A2E8ECE6F2F3A3','our_solutions','Our Solutions',1,NULL,'2002-08-09 15:57:44',NULL,'2008-03-18 17:36:58',NULL),
('EF8E3C4ADFBDFB74192B71CB43','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news','Latest News',1,NULL,'2002-08-09 15:58:49',NULL,'2008-03-18 17:36:58',NULL),
('EF8E3D1D196B477841A58FC9A0','EF8E260F5EE7A2E8ECE6F2F3A3','press_release','Press Release',1,NULL,'2002-08-09 15:59:39',NULL,'2008-03-18 17:36:58',NULL),
('EF8E3EDA4FE70036E202E26581','EF8E260F5EE7A2E8ECE6F2F3A3','open_job','Open Job',1,NULL,'2002-08-09 16:01:36',NULL,'2008-03-18 17:36:58',NULL),
('EF8E3FA2E9F723DB325F6A7D02','EF8E260F5EE7A2E8ECE6F2F3A3','about_us','About Us',1,NULL,'2002-08-09 16:02:25',NULL,'2008-03-18 17:36:58',NULL),
('EF8E42301D17943E5955D9AA44','EF8E260F5EE7A2E8ECE6F2F3A3','press_release_main','Press Release Main',1,NULL,'2002-08-09 16:05:17',NULL,'2008-03-18 17:36:58',NULL),
('EF8E42AF4ADA1F31E1F62D5525','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news_main','Latest News Main',1,NULL,'2002-08-09 16:05:52',NULL,'2008-03-18 17:36:58',NULL),
('EF8E433D0E138F733F2D166C00','EF8E260F5EE7A2E8ECE6F2F3A3','open_jobs_main','Open Jobs Main',1,NULL,'2002-08-09 16:06:29',NULL,'2008-03-18 17:36:58',NULL),
('EFABD73B9F5C8A2AFC1BC06327','EDDCA9DCE41A14EE5D5ABE7E3C','about_us','About Us',1,NULL,'2003-01-27 17:01:32',NULL,'2008-03-18 17:36:58',NULL),
('F0143397173EB2898E7BD1DA02','EDDCA9DCE41A14EE5D5ABE7E3C','Frans','',1,NULL,'2002-09-04 16:18:50',NULL,'2008-03-18 17:36:58',NULL),
('F01436B63F216AAAB48195159C','EDDCA9DCE41A14EE5D5ABE7E3C','tulalit','',1,NULL,'2002-09-04 16:21:47',NULL,'2008-03-18 17:36:58',NULL),
('F036DC14DC945A100E1E4E301C','ED2E4202F2AE0340726C67A877','Testing','',1,NULL,'2002-09-11 09:50:11',NULL,'2008-03-18 17:36:58',NULL),
('F07B56FBB0DE46F4CF2AE5698E','F07B23B53C6185EACC86EFE1D8','press_release_main','Press Release in Main Page',1,NULL,'2002-09-24 17:03:42',NULL,'2008-03-18 17:36:58',NULL),
('F07B581DE9BA007DB73EB1BEBC','F07B23B53C6185EACC86EFE1D8','review_main','Review in Main Page',1,NULL,'2002-09-25 10:42:10',NULL,'2008-03-18 17:36:58',NULL),
('F07B796043A756D9E97A3FEFF','F07B23B53C6185EACC86EFE1D8','cross_selling','Cross Selling',1,NULL,'2002-09-24 17:35:52',NULL,'2008-03-18 17:36:58',NULL),
('F083F1F7C33EA7F3A9A59BE10A','F07B23B53C6185EACC86EFE1D8','recipe','Recipe',1,NULL,'2002-09-26 09:04:26',NULL,'2008-03-18 17:36:58',NULL),
('F083F929ABA341797CD38BBE7D','F07B23B53C6185EACC86EFE1D8','project','Project',1,NULL,'2002-09-26 09:12:44',NULL,'2008-03-18 17:36:58',NULL),
('F0842659151A5462F92C16E9D1','F07B23B53C6185EACC86EFE1D8','review','Review',1,NULL,'2002-09-26 10:01:52',NULL,'2008-03-18 17:36:58',NULL),
('F08432B3F4174A089CD81F3616','F07B23B53C6185EACC86EFE1D8','resource','Resource',1,NULL,'2002-09-26 10:15:01',NULL,'2008-03-18 17:36:58',NULL),
('F09DE1952B7D669AD21E500D72','F07B23B53C6185EACC86EFE1D8','press_release','Press Release',1,NULL,'2002-10-01 09:57:30',NULL,'2008-03-18 17:36:58',NULL),
('F302DC45188ECE996BB4E65A63','F185BD3FDC5CC7989A3CED51A1','cross_selling','Cross Selling Collection',1,NULL,'2003-03-25 12:59:13',NULL,'2008-03-18 17:36:58',NULL),
('F302DD80386E12F543A34F650','F185BD3FDC5CC7989A3CED51A1','latest_news_main_page','Latest News Main Page Collection',1,NULL,'2003-01-28 10:39:51',NULL,'2008-03-18 17:36:58',NULL),
('F302DF2D5C14DB19C7398591BC','F185BD3FDC5CC7989A3CED51A1','services_main_page','Product & Services Main Page Collection',1,NULL,'2003-01-28 10:41:43',NULL,'2008-03-18 17:36:58',NULL),
('F3086EE25AC268B9D89977E44B','F185BD3FDC5CC7989A3CED51A1','press_release','Press Release',1,NULL,'2003-01-29 12:36:29',NULL,'2008-03-18 17:36:58',NULL),
('F30D61195A51759F754A534603','F185BD3FDC5CC7989A3CED51A1','press_release_archive','Press Release Archive Collection',1,NULL,'2003-01-30 11:39:43',NULL,'2008-03-18 17:36:58',NULL),
('F30D6218D92D6172A83CF70347','F185BD3FDC5CC7989A3CED51A1','news','News Collection',1,NULL,'2003-03-19 17:10:48',NULL,'2008-03-18 17:36:58',NULL),
('F30D62AFC966604EE6B63D5EA','F185BD3FDC5CC7989A3CED51A1','news_archive','News Archive Collection',1,NULL,'2003-01-30 11:41:15',NULL,'2008-03-18 17:36:58',NULL),
('F30D638087912EB63CFF2413C4','F185BD3FDC5CC7989A3CED51A1','product_service','Product & Service Collection',1,NULL,'2003-01-30 11:42:28',NULL,'2008-03-18 17:36:58',NULL),
('F30D64A967EC8A114463B155EC','F185BD3FDC5CC7989A3CED51A1','company_structure','Company Structure (About Us)',1,NULL,'2003-01-31 13:39:10',NULL,'2008-03-18 17:36:58',NULL),
('F30D7A35F127C9F525D69A4BCE','F185BD3FDC5CC7989A3CED51A1','fact_figure','Fact & Figure Collection',1,NULL,'2003-01-30 12:06:51',NULL,'2008-03-18 17:36:58',NULL),
('F312B7926E1BA7B9EEAAB39558','F185BD3FDC5CC7989A3CED51A1','dewan_komisaris','Dewan Komisaris',1,NULL,'2003-01-31 12:31:49',NULL,'2008-03-18 17:36:58',NULL),
('F312B82623C31410C34434A7B3','F185BD3FDC5CC7989A3CED51A1','dewan_direksi','Dewan Direksi',1,NULL,'2003-01-31 12:32:21',NULL,'2008-03-18 17:36:58',NULL),
('F31330D19DFD3F3245616F57B0','F185BD3FDC5CC7989A3CED51A1','company_lob_horticulture','Line of Business Horticulture',1,NULL,'2003-03-20 13:16:27',NULL,'2008-03-18 17:36:58',NULL),
('F3133249977BD2C0636E037D23','F185BD3FDC5CC7989A3CED51A1','company_lob_plantation','Line of Business Plantation',1,NULL,'2003-03-20 13:15:38',NULL,'2008-03-18 17:36:58',NULL),
('F3133322C1D43F2988CD387324','F185BD3FDC5CC7989A3CED51A1','company_lob_mining','Line of Business Mining',1,NULL,'2003-03-20 13:15:59',NULL,'2008-03-18 17:36:58',NULL),
('F31333E67F5209AE9B31726965','F185BD3FDC5CC7989A3CED51A1','company_lob_others','Line of Business Others',1,NULL,'2003-03-20 13:15:23',NULL,'2008-03-18 17:36:58',NULL),
('F3FF22FA60FDC1B3F09C2A27AF','F185BD3FDC5CC7989A3CED51A1','sitemap','Site Map Collection',1,NULL,'2003-03-18 10:19:49',NULL,'2008-03-18 17:36:58',NULL),
('F3FF58FF3B49C217BA449F6849','F185BD3FDC5CC7989A3CED51A1','makin_subsidiary','Makin & Subsidiary Page Collection',1,NULL,'2003-03-18 11:19:55',NULL,'2008-03-18 17:36:58',NULL),
('F40025C7BB2B1555515A1FF83F','F185BD3FDC5CC7989A3CED51A1','head_office','Head Office Collection',1,NULL,'2003-03-18 16:13:59',NULL,'2008-03-18 17:36:58',NULL),
('F4006A4702C02EC8B03504B154','F185BD3FDC5CC7989A3CED51A1','branch_office','Branch Office Collection',1,NULL,'2003-03-18 16:16:55',NULL,'2008-03-18 17:36:58',NULL),
('F40A12670642457146FE92A5BF','F185BD3FDC5CC7989A3CED51A1','company_lob_logging','Line Of Business Logging',1,NULL,'2003-03-20 13:35:57',NULL,'2008-03-18 17:36:58',NULL),
('F4D332FCE8E1713BFFA339672F','F4D30718756B8401E43FD2AAE6','cross_selling_solution','Cross Selling',1,NULL,'2003-04-29 10:32:14',NULL,'2008-03-18 17:36:58',NULL),
('F4D345059E58F35226610428E3','F4D30718756B8401E43FD2AAE6','solution_main_page','Solution In Main Page Collection',1,NULL,'2003-04-28 16:51:21',NULL,'2008-03-18 17:36:58',NULL),
('F4D34862CECEC33E7A3DFBF2F6','F4D30718756B8401E43FD2AAE6','news_collection','News Collection in Main Page',1,NULL,'2003-04-28 15:00:01',NULL,'2008-03-18 17:36:58',NULL),
('F4D34917CF2D95241724082D6E','F4D30718756B8401E43FD2AAE6','press_release_main_page','Press Release Collection in Main Page',1,NULL,'2003-04-29 10:35:51',NULL,'2008-03-18 17:36:58',NULL),
('F4D34AE05BA664870CE107F5C4','F4D30718756B8401E43FD2AAE6','open_job_collection','Open Job Collection in Main Page',1,NULL,'2003-04-28 15:02:45',NULL,'2008-03-18 17:36:58',NULL),
('F4D3E9C42018508CFBD44C1F7F','F4D30718756B8401E43FD2AAE6','solution_collection','Solution Collection',1,NULL,'2003-04-28 17:56:13',NULL,'2008-03-18 17:36:58',NULL),
('F4D77D9A595E11607831E05333','F4D30718756B8401E43FD2AAE6','press_release_collection','Press Release Collection',1,NULL,'2003-04-29 10:42:16',NULL,'2008-03-18 17:36:58',NULL),
('F4D7872202EEF42DB1BEE35CAD','F4D30718756B8401E43FD2AAE6','news_collection','News Collection',1,NULL,'2003-04-29 10:47:07',NULL,'2008-03-18 17:36:58',NULL),
('F4D7908E18A0B591AD5B35C429','F4D30718756B8401E43FD2AAE6','about_us','About Us Collection',1,NULL,'2003-04-29 10:57:50',NULL,'2008-03-18 17:36:58',NULL),
('F4DD67C9F9D543C3720D645FA0','F4DD64134EC050E3D0A256EA0D','cross_selling','Cross Selling Collection',1,NULL,'2003-09-02 11:57:08',NULL,'2008-03-18 17:36:58',NULL),
('F4DD6885A1EF5A5916B28F0DE0','F4DD64134EC050E3D0A256EA0D','review_main','Review Main Collection',1,NULL,'2003-04-30 14:11:51',NULL,'2008-03-18 17:36:58',NULL),
('F4E2D64CF8DDBED197CF1D4EC7','F4DD64134EC050E3D0A256EA0D','press_release','Press Release Collection',1,NULL,'2003-05-01 15:29:10',NULL,'2008-03-18 17:36:58',NULL),
('F4E2F93A23C96AF5243A648900','F4DD64134EC050E3D0A256EA0D','press_release_main','Press Release In Main Page Collection',1,NULL,'2003-05-01 16:07:27',NULL,'2008-03-18 17:36:58',NULL),
('F4E30221D6345730817DF8B10B','F4DD64134EC050E3D0A256EA0D','project','Project Collection (News)',1,NULL,'2003-05-01 16:17:08',NULL,'2008-03-18 17:36:58',NULL),
('F4E30766D4F6B10B77D890862C','F4DD64134EC050E3D0A256EA0D','recipe','Recipe Collection (news)',1,NULL,'2003-05-01 16:22:54',NULL,'2008-03-18 17:36:58',NULL),
('F4E30E4255F0C0ECA9CF12C58D','F4DD64134EC050E3D0A256EA0D','resource','Resource Collection (weblink)',1,NULL,'2003-05-01 16:30:49',NULL,'2008-03-18 17:36:58',NULL),
('F4E315146AC0D62352296671C6','F4DD64134EC050E3D0A256EA0D','review','Review Collection',1,NULL,'2003-05-01 16:38:00',NULL,'2008-03-18 17:36:58',NULL),
('F4E8349537A24F34C2BADB1136','F4E6A635A8AC141BAE7F98504','press_release_main','Press Release in Main Page Collection',1,NULL,'2003-05-02 16:30:30',NULL,'2008-03-18 17:36:58',NULL),
('F4E8355C0D223308A5E405F8C3','F4E6A635A8AC141BAE7F98504','latest_news_main','Latest News in Main Page Collection',1,NULL,'2003-05-02 16:31:18',NULL,'2008-03-18 17:36:58',NULL),
('F4E8361B7E88B3E21FDEC4E502','F4E6A635A8AC141BAE7F98504','our_solutions_main','Our Solution in Main Page',1,NULL,'2003-05-02 16:32:03',NULL,'2008-03-18 17:36:58',NULL),
('F4E83EF7F42ADCFA4C089A7267','F4E6A635A8AC141BAE7F98504','latest_news','Latest News Collection',1,NULL,'2003-05-02 16:43:17',NULL,'2008-03-18 17:36:58',NULL),
('F4E841228EF31C223EC4C3C44','F4E6A635A8AC141BAE7F98504','our_solutions','Our Solutions Collection',1,NULL,'2003-05-02 16:44:27',NULL,'2008-03-18 17:36:58',NULL),
('F4E84237BF3A0CE289DCA92CD4','F4E6A635A8AC141BAE7F98504','press_release','Press Release Collection',1,NULL,'2003-05-02 16:47:24',NULL,'2008-03-18 17:36:58',NULL),
('F4E85130966839B75E0A0C8C90','F4E6A635A8AC141BAE7F98504','about_us','About Us Collection',1,NULL,'2003-05-02 17:01:35',NULL,'2008-03-18 17:36:58',NULL),
('F5015CD1D2ED0D963111F06942','F4DD64134EC050E3D0A256EA0D','recipe_main','Recipe in Main Page',1,NULL,'2003-05-07 13:44:47',NULL,'2008-03-18 17:36:58',NULL),
('F5015D733AF172E8FBC3427079','F4DD64134EC050E3D0A256EA0D','resource_main','Resource In Main Page',1,NULL,'2003-05-07 13:45:28',NULL,'2008-03-18 17:36:58',NULL),
('F78EB6DBE6A3A38FDAAA43DFB8','F78E9748E9F76ABD233C5EAD39','news','news',1,NULL,'2003-09-11 10:56:39',NULL,'2008-03-18 17:36:58',NULL);

/*Table structure for table `company` */

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
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK38A73C7D3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert into `company` values 
(0,'blueoxygen','BlueOxygen Tech','Wijaya Grand Center Blok H No. 41, 4fl Jakarta Selatan','Jakarta','12830','4260933','4260933','www.blueoxygen.org','frans@blueoxygen.org','F162B448063A847','2003-02-07 16:51:14',NULL,'2008-03-17 18:32:00',NULL);

/*Table structure for table `debus_action_type` */

DROP TABLE IF EXISTS `debus_action_type`;

CREATE TABLE `debus_action_type` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK7F7199C33CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `debus_action_type` */

insert into `debus_action_type` values 
('ff8081811ab367fc011ab3685c200001','1','1','2008-06-23 10:12:18','2008-06-23 10:12:18',1,'create','Create Action',NULL),
('ff8081811ab367fc011ab3689b180002','1','1','2008-06-23 10:12:34','2008-06-23 10:12:34',1,'save','Save Action',NULL),
('ff8081811ab367fc011ab368e3570003','1','1','2008-06-23 10:12:53','2008-06-23 10:12:53',1,'filter','Filter Action',NULL);

/*Table structure for table `debus_descriptor_access` */

DROP TABLE IF EXISTS `debus_descriptor_access`;

CREATE TABLE `debus_descriptor_access` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `role_id` varchar(255) default NULL,
  `descriptor_id` varchar(255) default NULL,
  `permission_id` varchar(255) default NULL,
  `action_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK56A63A547C369E4D` (`action_id`),
  KEY `FK56A63A54569CB2AD` (`permission_id`),
  KEY `FK56A63A54456510EF` (`role_id`),
  KEY `FK56A63A54F5B73B87` (`descriptor_id`),
  KEY `FK56A63A543CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `debus_descriptor_access` */

/*Table structure for table `debus_permission_type` */

DROP TABLE IF EXISTS `debus_permission_type`;

CREATE TABLE `debus_permission_type` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `create_flag` int(11) default NULL,
  `read_flag` int(11) default NULL,
  `update_flag` int(11) default NULL,
  `delete_flag` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK714919CA3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `debus_permission_type` */

/*Table structure for table `descriptor` */

DROP TABLE IF EXISTS `descriptor`;

CREATE TABLE `descriptor` (
  `id` varchar(32) NOT NULL default '',
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
  PRIMARY KEY  (`id`),
  KEY `update_by` (`update_by`),
  KEY `create_by` (`create_by`),
  KEY `FKD364D36FC1381B1C` (`window_id`),
  KEY `FKD364D36F3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `descriptor` */

insert into `descriptor` values 
('1',NULL,'2005-08-05 17:09:15','1','2008-05-22 12:54:16','descriptor','Descriptor','descriptor.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('14',NULL,'2005-08-19 10:08:57','1','2008-05-22 12:54:16','workflow_role','Workflow Role','workflow_role.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('2',NULL,'2005-08-05 17:10:38','1','2008-05-22 12:54:16','site','Site','site.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('22',NULL,'2005-09-19 23:49:01','1','2008-05-22 12:54:16','template','Template','template.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('31',NULL,'2005-08-12 11:31:40','1','2008-05-22 12:54:16','module_function','Module Function','module_function.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('32',NULL,'2002-05-29 00:00:00','1','2008-05-22 12:54:16','role_privilage','Role Privilage','role_privilage.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('6',NULL,'2005-08-05 17:17:33','1','2008-05-22 12:54:16','category','Category','category.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('7',NULL,'2002-05-29 00:00:00','1','2008-05-22 12:54:16','section','Section','section.xml',1,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('EE187CB92554E9877310D9041D',NULL,'2002-06-27 00:00:00','1','2008-05-22 12:54:16','assign_user_site','Assign User to a Site','EE188C8D1BCFFF7C61672BFA2Cassign_user_site.xml',0,0,NULL,'0',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('EE399186B35C580610D4EDD7A3',NULL,'2002-06-10 00:00:00','1','2008-05-22 12:54:16','collection_descriptor','Collection Content','EE39A7FDB43CDFD00B21EA6672coll_desc.xml',0,1,NULL,'1',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('EE8C6A49BC200D77F9DD3F92AA',NULL,'2002-06-27 00:00:00','1','2008-05-22 12:54:16','user_site','User Manager','EE8C72398F20734B22553E88D6user_site.xml',0,1,NULL,'1',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('EEB49F22144357635AD6A684B6',NULL,'2002-07-19 00:00:00','1','2008-05-22 12:54:16','rolemanager','Role Manager','',0,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('EF1F0CD62F63F3B0A7205D5BC4',NULL,'2002-07-19 00:00:00','1','2008-05-22 12:54:16','rsp','Role Site Privilage','',0,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('F2E587923AC44C8979FBF2F26C',NULL,'2005-09-19 23:48:26','1','2008-05-22 12:54:16','job_position','Job Position','F2E59F1CD7D0A8F31C1B034C4Bjob_position.xml',0,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('F332B5D5577E444B78297AFE84',NULL,'2005-09-19 23:48:08','1','2008-05-22 12:54:16','company','Company','F33682657AE8F60C0818178F40company.xml',0,1,NULL,'2',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('F76A9583B418F4FB3D261C1D53',NULL,'2003-09-04 10:13:28',NULL,'2008-05-22 12:54:16','usersite_v2.0','User Manager ver.2.0',NULL,0,1,NULL,'1',NULL,NULL,'EE185CE0B82B41C1724F284685'),
('ff808081151cf62001151cf94fb0',NULL,'2007-09-19 15:54:01','1','2008-05-22 12:54:16','window','GXWindow','',1,1,NULL,'2',NULL,NULL,NULL),
('ff808081152136f101152137b298',NULL,'2007-09-20 11:40:39','1','2008-05-22 12:54:16','gx-table','GX2-Table','',1,1,NULL,'2',NULL,NULL,NULL),
('ff808081153a8e6301153a90b1e9',NULL,'2007-09-25 09:48:22','1','2008-05-22 12:54:16','gx-droplist','Droplist GX2','',1,1,NULL,'2',NULL,NULL,NULL),
('ff808081163cbe8a01163cc1db2f0001',NULL,'2007-11-14 13:04:05','1','2008-05-22 12:54:16','user','user','',1,1,NULL,'2',NULL,NULL,NULL),
('ff8081811ab34d3d011ab35046030001','1','2008-06-23 09:45:59','1','2008-06-23 09:45:59','actiontype','Action Type','',-1,1,'','2',NULL,NULL,NULL),
('ff8081811abdfa54011abdfb6a840001','1','2008-06-25 11:29:08','1','2008-06-25 11:29:08','roledescriptor','Role Descriptor ACL','',-1,1,'','2',NULL,NULL,NULL),
('ff8081811ae1d2a0011ae1d34d2c0001','1','2008-07-02 10:31:38','1','2008-07-02 10:31:38','rolesitedescriptor','Role Site Descriptor ACL','',-1,1,'','2',NULL,NULL,NULL),
('ff8081811b064fc9011b0650c67c0001','1','2008-07-09 12:35:01','1','2008-07-09 12:35:01','sitedescriptor','Site Descriptor','',-1,1,'','2',NULL,NULL,NULL),
('ff8081811b1ab72e011b1ac871650001','1','2008-07-13 11:58:08','1','2008-07-13 11:58:08','windowrole','Window Role ACL','',-1,1,'','2',NULL,NULL,NULL),
('ff8081811b20754f011b2090def70001','1','2008-07-14 14:55:09','1','2008-07-14 14:55:09','gxwindowrole','Gx Window Role','',-1,1,'','2',NULL,NULL,NULL),
('ff8081811cf90e28011cf91426cf0001','1','2008-10-14 08:59:19','1','2008-10-14 08:59:19','invite','Invitation','',-1,1,'','2',NULL,NULL,NULL),
('ff8081811cf90e28011cf91474600002','1','2008-10-14 08:59:39','1','2008-10-14 08:59:39','aroma','Survey Management','',-1,1,'','2',NULL,NULL,NULL),
('ff8081811cf90e28011cf91513d30003','1','2008-10-14 09:00:20','1','2008-10-14 09:00:20','aromaprofile','Aroma Profile','',-1,1,'','2',NULL,NULL,NULL),
('402880f91d19d3fb011d19d95edf0004','1','2008-10-20 17:42:35','1','2008-10-20 17:42:35','test1','child1','',-1,1,'','2',NULL,NULL,NULL),
('402880f91d19d3fb011d19df08d2000d','1','2008-10-20 17:48:46','1','2008-11-27 16:38:57','test3','child3','',-1,1,'','2',NULL,NULL,NULL);

/*Table structure for table `gx_db_column` */

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
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK8A8BA8696598D100` (`element_id`),
  KEY `FK8A8BA86953C5DB3` (`reference_droplist_id`),
  KEY `FK8A8BA869785E49CC` (`reference_table_id`),
  KEY `FK8A8BA8693CAE8F1E` (`site_id`),
  KEY `FK8A8BA869D1195358` (`table_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_db_column` */

insert into `gx_db_column` values 
('ff80808115ac439e0115ac4ba7390002','2007-10-17 11:49:40','96f673bc-283e-4b75-b63d-6edc','2007-10-24 15:23:33','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Username','Login Username','username','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,'','',NULL),
('ff80808115ac439e0115ac4bc4e80003','2007-10-17 11:49:47','96f673bc-283e-4b75-b63d-6edc','2007-10-24 15:23:15','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Password','Login Password','password','ff808081153c589b01153c5946ad0001',15,0,100,0,0,0,1,0,'','',NULL),
('ff80808115ac5c060115ac68c4960001','2007-10-17 12:21:28','96f673bc-283e-4b75-b63d-6edc','2007-10-17 12:34:08','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Email','User Email','email','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,'','',NULL),
('ff80808115ac5c060115ac74afd00002','2007-10-17 12:34:29','96f673bc-283e-4b75-b63d-6edc','2007-10-17 12:34:29','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ac439e0115ac492f120001','Id','Primary Key','id','ff808081153c589b01153c5946ad0001',32,0,100,0,1,0,0,0,'','',NULL),
('ff80808115ad52df0115ad62821a0002','2007-10-17 16:54:15','96f673bc-283e-4b75-b63d-6edc','2007-10-17 16:54:15','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115ad52df0115ad5fc9810001','window type','Window Type','window_type_id','ff808081153c724b01153c7430e70001',0,0,100,0,0,0,0,2,'','',NULL),
('ff80808115b6b1dd0115b6e71b440002','2007-10-19 13:15:40','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:15:40','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6e593070001','no','No','po_no','ff808081153c589b01153c5946ad0001',50,0,100,0,0,0,0,2,'','',NULL),
('ff80808115b6b1dd0115b6e8a35f0003','2007-10-19 13:17:20','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:18:58','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6e593070001','supplier_name','Supplier Name','supplier','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,'','',NULL),
('ff80808115b6b1dd0115b6edda910005','2007-10-19 13:23:02','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:23:02','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','no','No','no','ff808081153c589b01153c5946ad0001',50,0,100,0,0,0,0,0,'','',NULL),
('ff80808115b6b1dd0115b6ee563a0006','2007-10-19 13:23:33','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:23:33','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','name','Product Name','product_name','ff808081153c589b01153c5946ad0001',100,0,100,0,0,0,0,0,'','',NULL),
('ff80808115b6b1dd0115b6ef61fe0007','2007-10-19 13:24:42','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:24:42','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','quantity','Product Quantity','product_quantity','ff808081153c6d5601153c6e1a6e0001',11,0,100,0,0,0,0,0,'','',NULL),
('ff80808115b6b1dd0115b6f02a440008','2007-10-19 13:25:33','96f673bc-283e-4b75-b63d-6edc','2007-10-19 13:25:33','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115b6b1dd0115b6ed250c0004','po_no','Purchase Order Number','po_no','ff808081153c724b01153c7430e70001',0,0,100,0,0,0,0,1,'','',NULL),
('ff8080811647f2f1011647f578060002','2007-11-16 17:16:17','96f673bc-283e-4b75-b63d-6edc','2007-11-16 17:17:23','96f673bc-283e-4b75-b63d-6edc',1,'ff8080811647f2f1011647f4812d0001','ID','Primary Key','id','ff808081153c589b01153c5946ad0001',32,1,32,0,1,0,0,0,'','',NULL),
('ff8080811647f2f1011647f65c110003','2007-11-16 17:17:16','96f673bc-283e-4b75-b63d-6edc','2007-11-16 17:17:16','96f673bc-283e-4b75-b63d-6edc',1,'ff8080811647f2f1011647f4812d0001','NAME','Employee Name','name','ff808081153c589b01153c5946ad0001',255,0,255,0,0,0,0,0,'','',NULL),
('ff8080811647f2f1011647f727ce0004','2007-11-16 17:18:08','96f673bc-283e-4b75-b63d-6edc','2007-11-16 17:18:08','96f673bc-283e-4b75-b63d-6edc',1,'ff8080811647f2f1011647f4812d0001','DESCRIPTION','Employee Description','description','ff808081153c589b01153c5946ad0001',255,0,255,0,0,0,0,0,'','',NULL),
('ff8080811647f2f1011647f904690005','2007-11-16 17:20:10','96f673bc-283e-4b75-b63d-6edc','2007-11-16 17:20:10','96f673bc-283e-4b75-b63d-6edc',1,'ff8080811647f2f1011647f4812d0001','NIP','Employee Security Number','nip','ff808081153c589b01153c5946ad0001',255,0,255,0,0,0,0,0,'','',NULL);

/*Table structure for table `gx_db_table` */

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
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKEC9AF85B17208EB9` (`entity_id`),
  KEY `FKEC9AF85BD45FA55E` (`data_access_level_id`),
  KEY `FKEC9AF85BC1381B1C` (`window_id`),
  KEY `FKEC9AF85B3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_db_table` */

insert into `gx_db_table` values 
('ff80808115ac439e0115ac492f120001','2007-10-17 11:46:58','96f673bc-283e-4b75-b63d-6edc','2008-03-19 13:02:43','96f673bc-283e-4b75-b63d-6edc',1,'User','Backend User','backend_user',NULL,'','',NULL),
('ff80808115ad52df0115ad5fc9810001','2007-10-17 16:51:16','96f673bc-283e-4b75-b63d-6edc','2008-03-19 13:02:43','96f673bc-283e-4b75-b63d-6edc',0,'window','GxWindow','gx_form_window',NULL,'','',NULL),
('ff80808115b6b1dd0115b6e593070001','2007-10-19 13:13:59','96f673bc-283e-4b75-b63d-6edc','2008-03-19 13:02:43','96f673bc-283e-4b75-b63d-6edc',1,'purchase_order','Purchase Order','app_purchase_order',NULL,'','',NULL),
('ff80808115b6b1dd0115b6ed250c0004','2007-10-19 13:22:15','96f673bc-283e-4b75-b63d-6edc','2008-03-19 13:02:43','96f673bc-283e-4b75-b63d-6edc',1,'purchase_order_detail','Purchase Order Detail','app_purchase_order_detail',NULL,'','',NULL),
('ff8080811647f2f1011647f4812d0001','2007-11-16 17:15:14','96f673bc-283e-4b75-b63d-6edc','2008-03-19 13:02:43','96f673bc-283e-4b75-b63d-6edc',1,'APP_EMPLOYEE','Employee','org.blueoxygen.test.employee.Employee',NULL,'','',NULL);

/*Table structure for table `gx_droplist_name` */

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
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK707448AF3CAE8F1E` (`site_id`),
  KEY `FK707448AF754C7EEA` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_droplist_name` */

insert into `gx_droplist_name` values 
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff808081153bcda301153bce42640001','columndatatype','2007-10-17 08:54:53','2007-10-30 18:33:48',1,'ff80808115f0a3280115f0b0103b0003','Column Data Type',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115422db9011542327c580001','fielddatatype','2007-09-26 21:22:25','2007-10-30 18:34:09',1,'ff80808115f0a3280115f0afa52a0002','Field Data Type',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115425bc401154271168a0001','country','2007-09-26 22:30:48','2007-09-26 22:30:48',1,NULL,'Country',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115ace81f0115acee87d70001','window','2007-10-17 14:47:34','2007-10-30 18:30:29',1,'ff80808115d6cdb70115d6cf03060001','Used in GxWindow',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115ace81f0115acef78020002','window_type','2007-10-17 14:49:20','2007-10-17 16:42:01',1,'ff80808115ace81f0115acee87d70001','Window Type',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115d6cdb70115d6cf03060001','GX','2007-10-25 17:57:11','2007-10-30 18:31:54',1,NULL,'Used In Gx Cimande Workspace',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115f0a3280115f0afa52a0002','tab','2007-10-30 18:33:03','2007-10-30 18:33:03',1,'ff80808115d6cdb70115d6cf03060001','Used in GxTab',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115f0a3280115f0b0103b0003','column','2007-10-30 18:33:31','2007-10-30 18:33:31',1,'ff80808115d6cdb70115d6cf03060001','Used in GxColumn',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115f0cf5a0115f0d214ed0002','acl_type','2007-10-30 19:10:40','2007-10-30 19:10:40',1,'ff80808115d6cdb70115d6cf03060001','Access Control Type',NULL);

/*Table structure for table `gx_droplist_value` */

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
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK9E8587CD9304CF37` (`droplist_name_id`),
  KEY `FK9E8587CD3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_droplist_value` */

insert into `gx_droplist_value` values 
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:43','2007-09-26 14:17:04',1,'ff808081153c589b01153c5946ad0001','String','ff808081153bcda301153bce42640001','String',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:44','2007-09-26 14:17:27',1,'ff808081153c6d5601153c6e1a6e0001','Number','ff808081153bcda301153bce42640001','Number',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:46','2007-10-23 18:06:01',1,'ff808081153c724b01153c7430e70001','Table','ff808081153bcda301153bce42640001','Table',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:49','2007-09-26 14:17:59',1,'ff80808115408aa7011540ade5ec0006','Date','ff808081153bcda301153bce42640001','Date',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:56','2007-10-17 15:47:00',1,'ff80808115422db90115423307c10002','text','ff80808115422db9011542327c580001','Textfield',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:57','2007-09-26 21:23:18',1,'ff80808115422db90115423349760003','textarea','ff80808115422db9011542327c580001','Textarea',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:07:58','2007-09-26 21:23:45',1,'ff80808115422db901154233b5300004','radio','ff80808115422db9011542327c580001','Radio Button',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:00','2007-09-26 21:24:28',1,'ff80808115422db9011542345ab40005','checkbox','ff80808115422db9011542327c580001','Check Box',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:01','2007-09-26 21:25:03',1,'ff80808115422db901154234e44d0006','select','ff80808115422db9011542327c580001','Droplist Select Box',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:02','2007-09-26 21:25:30',1,'ff80808115422db9011542354dee0007','file','ff80808115422db9011542327c580001','File Upload',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:04','2007-09-26 21:25:59',1,'ff80808115422db901154235bdec0008','reference','ff80808115422db9011542327c580001','Reference Table',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:11','2007-09-26 22:31:17',1,'ff80808115425bc40115427185fd0002','Indonesia','ff80808115425bc401154271168a0001','Indonesia',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:12','2007-09-26 22:31:50',1,'ff80808115425bc40115427208120003','USA','ff80808115425bc401154271168a0001','United States of America',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:13','2007-09-26 22:32:09',1,'ff80808115425bc401154272533c0004','UK','ff80808115425bc401154271168a0001','United Kingdom',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:15','2007-09-26 22:32:22',1,'ff80808115425bc40115427287080005','Malaysia','ff80808115425bc401154271168a0001','Malaysia',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:17','2007-09-26 23:00:28',1,'ff8080811542796a0115428c3e8a0001','Japanese','ff80808115425bc401154271168a0001','Japanese',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 09:08:32','2007-09-27 07:29:10',1,'ff8080811542f5340115445dfabb0001','hidden','ff80808115422db9011542327c580001','Hidden',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 14:51:16','2007-10-17 14:51:16',1,'ff80808115ace81f0115acf1eaae0003','default','ff80808115ace81f0115acef78020002','Default',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-17 14:51:36','2007-10-17 14:51:36',1,'ff80808115ace81f0115acf239340004','extended','ff80808115ace81f0115acef78020002','Extended',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-23 18:06:13','2007-10-23 18:06:13',1,'ff80808115cc81140115cc8a8dbe0001','Droplist','ff808081153bcda301153bce42640001','Droplist',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-30 19:11:04','2007-10-30 19:11:04',1,'ff80808115f0cf5a0115f0d2732b0003','create','ff80808115f0cf5a0115f0d214ed0002','Create New Record',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-30 19:11:45','2007-10-30 19:11:45',1,'ff80808115f0cf5a0115f0d3125c0004','read','ff80808115f0cf5a0115f0d214ed0002','Search and Read From Database',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-30 19:12:06','2007-10-30 19:12:06',1,'ff80808115f0cf5a0115f0d3629b0005','update','ff80808115f0cf5a0115f0d214ed0002','Update Record',NULL),
('96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','2007-10-30 19:12:23','2007-10-30 19:12:23',1,'ff80808115f0cf5a0115f0d3a7af0006','delete','ff80808115f0cf5a0115f0d214ed0002','Delete Record',NULL);

/*Table structure for table `gx_form_field` */

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
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKE202E5CD89B487A6` (`entity_type_id`),
  KEY `FKE202E5CDA4D86978` (`tab_id`),
  KEY `FKE202E5CD3CAE8F1E` (`site_id`),
  KEY `FKE202E5CD2C6F195C` (`column_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_form_field` */

insert into `gx_form_field` values 
('Order Number','ff80808115b70b950115b71157330002','2007-10-19 14:01:47','2007-10-19 14:04:57','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'No','',0,0,0,'ff80808115b6b1dd0115b6f3b843000b','',NULL),
('Product Name','ff80808115b712290115b71379d50001','2007-10-19 14:04:07','2007-10-19 14:07:01','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'Product','',0,0,0,'ff80808115b6b1dd0115b6f3b843000b','',NULL),
('PO Number','ff80808115b712290115b71499020002','2007-10-19 14:05:21','2007-10-19 14:05:21','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'PO No','',0,0,0,'ff80808115b6b1dd0115b6f3b843000b','',NULL),
('Product Quantity','ff80808115b712290115b71529190003','2007-10-19 14:05:58','2007-10-19 14:05:58','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'Quantity','',0,0,0,'ff80808115b6b1dd0115b6f3b843000b','',NULL),
('Employee Name','ff8080811647f2f1011647fb16970008','2007-11-16 17:22:25','2007-11-16 17:22:25','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'Name','',0,0,0,'ff8080811647f2f1011647fa44470007','',NULL),
('Employee description','ff8080811647f2f1011647fb70f70009','2007-11-16 17:22:49','2007-11-16 17:22:49','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'Description','',0,0,0,'ff8080811647f2f1011647fa44470007','',NULL),
('Employee Security Number','ff8080811647f2f1011647fbd5a2000a','2007-11-16 17:23:14','2007-11-16 17:23:14','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ESN','',0,0,0,'ff8080811647f2f1011647fa44470007','',NULL);

/*Table structure for table `gx_form_tab` */

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
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK8C171D28C1381B1C` (`window_id`),
  KEY `FK8C171D283CAE8F1E` (`site_id`),
  KEY `FK8C171D28D1195358` (`table_id`),
  KEY `FK8C171D285C6EB8AD` (`process_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_form_tab` */

insert into `gx_form_tab` values 
('Purchase Order',1,'ff80808115b6b1dd0115b6f336fc000a','2007-10-19 13:28:53','2007-10-19 13:28:53','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115b6b1dd0115b6f2f4ae0009','ff80808115b6b1dd0115b6e593070001','',0,'PO',0,NULL),
('Purchase Order Detail',1,'ff80808115b6b1dd0115b6f3b843000b','2007-10-19 13:29:26','2007-10-19 13:29:26','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff80808115b6b1dd0115b6f2f4ae0009','ff80808115b6b1dd0115b6ed250c0004','',0,'PO Detail',0,NULL),
('Employee Reg',1,'ff8080811647f2f1011647fa44470007','2007-11-16 17:21:32','2007-11-16 17:21:53','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc','ff8080811647f2f1011647f99cd70006','ff8080811647f2f1011647f4812d0001','',0,'Employee',0,NULL);

/*Table structure for table `gx_form_window` */

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
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK7B60317D89B487A6` (`entity_type_id`),
  KEY `FK7B60317D3CAE8F1E` (`site_id`),
  KEY `FK7B60317DBE2422B3` (`window_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_form_window` */

insert into `gx_form_window` values 
('ff80808115b6b1dd0115b6f2f4ae0009','2007-10-19 13:28:36','96f673bc-283e-4b75-b63d-6edc','2008-07-13 12:37:39','96f673bc-283e-4b75-b63d-6edc',1,'Purchasing','Purchasing Window',NULL,NULL,'',100,100,NULL),
('ff8080811647f2f1011647f99cd70006','2007-11-16 17:20:49','96f673bc-283e-4b75-b63d-6edc','2008-07-13 12:37:39','96f673bc-283e-4b75-b63d-6edc',1,'Employee','Employee Registration',NULL,NULL,'',50,50,NULL);

/*Table structure for table `gx_window_role` */

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
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKFAB3DD17456510EF` (`role_id`),
  KEY `FKFAB3DD17C1381B1C` (`window_id`),
  KEY `FKFAB3DD173CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_window_role` */

insert into `gx_window_role` values 
('ff808081161f180d01161f1cae9a0001','2007-11-08 18:54:41','2007-11-08 18:54:41','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808113bece750113bed0f44c','ff80808115b6b1dd0115b6f2f4ae0009',NULL),
('ff808081161f180d01161f1dbb1c0004','2007-11-08 18:55:50','2007-11-08 18:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff808081104d995b01104da90177','ff80808115b6b1dd0115b6f2f4ae0009',NULL);

/*Table structure for table `gx_window_role_access` */

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
  `site_id` varchar(255) default NULL,
  `gx_window_role_id` varchar(255) default NULL,
  `acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK2B7C3D8CEBD8BA83` (`dv_access_name_id`),
  KEY `FK2B7C3D8C3CAE8F1E` (`site_id`),
  KEY `FK2B7C3D8C87FE6F1D` (`window_role_id`),
  KEY `FK2B7C3D8CEE7064B2` (`acl_id`),
  KEY `FK2B7C3D8C1123302B` (`gx_window_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `gx_window_role_access` */

insert into `gx_window_role_access` values 
('ff808081161f180d01161f1caee50002','2007-11-08 18:54:41','2007-11-08 18:54:41','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d2732b0003','ff808081161f180d01161f1cae9a0001',0,NULL,NULL,NULL),
('ff808081161f180d01161f1caeee0003','2007-11-08 18:54:41','2007-11-08 18:54:41','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d3125c0004','ff808081161f180d01161f1cae9a0001',0,NULL,NULL,NULL),
('ff808081161f180d01161f1dbb250005','2007-11-08 18:55:50','2007-11-08 18:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d2732b0003','ff808081161f180d01161f1dbb1c0004',0,NULL,NULL,NULL),
('ff808081161f180d01161f1dbb280006','2007-11-08 18:55:50','2007-11-08 18:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d3125c0004','ff808081161f180d01161f1dbb1c0004',0,NULL,NULL,NULL),
('ff808081161f180d01161f1dbb2e0007','2007-11-08 18:55:50','2007-11-08 18:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d3629b0005','ff808081161f180d01161f1dbb1c0004',0,NULL,NULL,NULL),
('ff808081161f180d01161f1dbb320008','2007-11-08 18:55:50','2007-11-08 18:55:50','96f673bc-283e-4b75-b63d-6edc','96f673bc-283e-4b75-b63d-6edc',1,'ff80808115f0cf5a0115f0d3a7af0006','ff808081161f180d01161f1dbb1c0004',0,NULL,NULL,NULL);

/*Table structure for table `job_position` */

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
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK74CD136B3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `job_position` */

insert into `job_position` values 
(0,'mgr','manager','Manager','1','2005-09-19 23:59:09','1','2007-12-05 18:34:22',NULL);

/*Table structure for table `module_function` */

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
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK6A1F784BF5B73B87` (`descriptor_id`),
  KEY `FK6A1F784B3CAE8F1E` (`site_id`),
  KEY `FK6A1F784BCE69F19E` (`iparent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `module_function` */

insert into `module_function` values 
('ff80808105a3a8ed0105a3b185a9','Site Manager','Site Manager','1','0','id',0,1,'1','2005-08-11 11:30:23','','2008-03-17 18:29:48','EE185CE0B82B41C1724F284685'),
('ff80808105a3a8ed0105a3b4137b','User Management','User Management','1','ff80808105a3a8ed0105a3b185a9','id',1,1,'1','2005-08-11 11:22:37','','2008-03-17 18:29:48','EE185CE0B82B41C1724F284685'),
('ff80808105a3b96f0105a3bdf32c','Workflow Designer','Workflow Designer','1','0','id',1,1,'1','2005-08-11 11:30:31','','2008-03-17 18:29:48','EE185CE0B82B41C1724F284685'),
('ff80808105a3b96f0105a3e1e581','Company','Company','F332B5D5577E444B78297AFE84','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:52:34','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a3e418bd','Job Position','Job Position','F2E587923AC44C8979FBF2F26C','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:54:59','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a402cfe0','Multi Site','Multi Site','2','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:28:31','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a403f9f1','Module Manager','Module Manager','1','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:29:48','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a4083f82','Descriptor Manager','Descriptor Manager','1','ff80808105a3a8ed0105a3b185a9','description',0,1,'1','2005-08-11 12:34:28','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a40b7e1b','Site','Site','2','ff80808105a3b96f0105a402cfe0','id',0,1,'1','2005-08-11 12:38:00','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a41d0113','Role Site Privilage','Role Site Privilage','EF1F0CD62F63F3B0A7205D5BC4','ff80808105a3b96f0105a403f9f1','id',1,1,'1','2005-08-11 12:57:08','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a41e79a7','Role Manager','Role Manager','EEB49F22144357635AD6A684B6','ff80808105a3b96f0105a403f9f1','id',1,1,'1','2005-08-11 12:58:44','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a426ac13','Role Privilage','Role Privilage','32','ff80808105a3b96f0105a403f9f1','role_id',0,1,'1','2005-08-11 13:07:42','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a4279ca8','Module Function','Module Function','31','ff80808105a3b96f0105a403f9f1','description',0,1,'1','2005-08-11 13:08:43','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a431a20c','Descriptor','Descriptor','1','ff80808105a3b96f0105a4083f82','description',0,1,'1','2005-08-11 13:19:40','','2008-03-17 18:29:48',NULL),
('ff80808105a3b96f0105a451002d','WF Role','WF Role','14','ff80808105a3b96f0105a3bdf32c','name',1,1,'1','2005-08-11 13:53:56','','2008-03-17 18:29:48',NULL),
('ff808081151cf62001151cfd6d90','GXAdmin','GX Admin','EE187CB92554E9877310D9041D','0','',1,1,'1','2007-09-19 15:58:31','','2008-03-17 18:29:48',NULL),
('ff808081151cf62001151cfedc84','window','Window','ff808081151cf62001151cf94fb0','ff808081151cf62001151cfd6d90','',1,1,'1','2007-09-19 16:00:05','','2008-03-17 18:29:48',NULL),
('ff808081152136f1011521388462','GX2Table','Table','ff808081152136f101152137b298','ff808081151cf62001151cfd6d90','',1,1,'1','2007-10-11 11:46:45','','2008-03-17 18:29:48',NULL),
('ff808081153a8e6301153a926a5c','GX2Droplist','Droplist','ff808081153a8e6301153a90b1e9','ff808081151cf62001151cfd6d90','',1,1,'1','2007-10-11 11:46:40','','2008-03-17 18:29:48',NULL),
('ff808081163cbe8a01163cc2c2280002','user_mvc','User Manager Ver.2.1','ff808081163cbe8a01163cc1db2f0001','ff80808105a3a8ed0105a3b4137b','',1,1,'1','2007-11-14 13:05:04','','2008-03-17 18:29:48',NULL),
('0','Master','Master','1',NULL,'id',1,1,'1','2007-11-14 13:04:05','1','2007-11-15 21:26:13','EE185CE0B82B41C1724F284685'),
('ff8081811ab34d3d011ab353e2b00002','Access Control','Access Control',NULL,'0','',1,1,'1','2008-06-23 09:49:56','1','2008-06-23 09:49:56',NULL),
('ff8081811ab34d3d011ab35471520003','actiontype','Action Type','ff8081811ab34d3d011ab35046030001','ff8081811ab34d3d011ab353e2b00002','',1,1,'1','2008-06-23 09:50:33','1','2008-06-23 09:50:33',NULL),
('ff8081811abdfa54011abdfbfaff0002','roledescriptor','Role Descriptor ACL','ff8081811abdfa54011abdfb6a840001','ff8081811ab34d3d011ab353e2b00002','',1,1,'1','2008-06-25 11:29:45','1','2008-06-25 11:29:45',NULL),
('ff8081811ae1d2a0011ae1d402dc0002','rolesitedescriptor','Role Site Descriptor ACL','ff8081811ae1d2a0011ae1d34d2c0001','ff8081811ab34d3d011ab353e2b00002','',1,1,'1','2008-07-02 10:32:25','1','2008-07-02 10:32:25',NULL),
('ff8081811b064fc9011b065162f70002','sitedescriptor','Site Descriptor','ff8081811b064fc9011b0650c67c0001','ff8081811ab34d3d011ab353e2b00002','',1,1,'1','2008-07-09 12:35:41','1','2008-07-09 12:35:41',NULL),
('ff8081811b1ab72e011b1ac91f6b0002','windowrole','Window Role Access','ff8081811b20754f011b2090def70001','ff8081811ab34d3d011ab353e2b00002','',1,1,'1','2008-07-13 11:58:53','1','2008-07-14 14:55:50',NULL),
('ff8081811cf90e28011cf9167a730004','AromaAdmin','Aroma',NULL,'0','',1,1,'1','2008-10-14 09:01:51','1','2008-10-14 09:01:51',NULL),
('ff8081811cf90e28011cf916dbc30005','invite','Invitation','ff8081811cf90e28011cf91426cf0001','ff8081811cf90e28011cf9167a730004','',1,1,'1','2008-10-14 09:02:16','1','2008-10-14 09:02:16',NULL),
('ff8081811cf90e28011cf917338d0006','aromaprofile','Aroma Profile','ff8081811cf90e28011cf91513d30003','ff8081811cf90e28011cf9167a730004','',1,1,'1','2008-10-14 09:02:39','1','2008-10-14 09:02:39',NULL),
('ff8081811cf90e28011cf9180bc70007','aroma','Survey Management','ff8081811cf90e28011cf91474600002','ff8081811cf90e28011cf9167a730004','',1,1,'1','2008-10-14 09:03:34','1','2008-10-14 09:03:34',NULL),
('ff8081811cf90e28011cf91b237d0011','AromaUser','Aroma',NULL,'0','',1,1,'1','2008-10-14 09:06:57','1','2008-10-14 09:06:57',NULL),
('ff8081811cf90e28011cf91c03e90012','aroma','Survey Management','ff8081811cf90e28011cf91474600002','ff8081811cf90e28011cf91b237d0011','',1,1,'1','2008-10-14 09:07:54','1','2008-10-14 09:07:54',NULL),
('402880f91d19d3fb011d19d6ca590002','induk','induk',NULL,'0','',1,1,'1','2008-10-20 17:39:46','1','2008-10-20 17:44:26',NULL),
('402880f91d19d3fb011d19d9cd680005','test1','child1','402880f91d19d3fb011d19d95edf0004','402880f91d19d3fb011d19d6ca590002','',1,1,'1','2008-10-20 17:43:03','1','2008-10-20 17:43:03',NULL),
('402880f91d19d3fb011d19ddd832000b','induk2','induk2',NULL,'0','',1,1,'1','2008-10-20 17:47:28','1','2008-10-20 17:47:28',NULL),
('402880f91d19d3fb011d19dea69e000c','subInduk3','subInduk3',NULL,'402880f91d19d3fb011d19ddd832000b','vbb',1,1,'1','2008-10-20 17:48:21','1','2008-11-27 17:11:19',NULL),
('402880f91d19d3fb011d19df7836000e','test3','child3','402880f91d19d3fb011d19df08d2000d','402880f91d19d3fb011d19dea69e000c','',1,1,'1','2008-10-20 17:49:15','1','2008-10-20 17:49:15',NULL);

/*Table structure for table `role_descriptor_acl` */

DROP TABLE IF EXISTS `role_descriptor_acl`;

CREATE TABLE `role_descriptor_acl` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `role_id` varchar(255) default NULL,
  `descriptor_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK54CF5EA3456510EF` (`role_id`),
  KEY `FK54CF5EA3F5B73B87` (`descriptor_id`),
  KEY `FK54CF5EA33CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `role_descriptor_acl` */

insert into `role_descriptor_acl` values 
('ff8081811ac417bb011ac4182e810001','1','1','2008-06-26 15:58:16','2008-06-26 15:58:16',1,NULL,'ff8081811ac3700b011ac3716b270001','31'),
('ff8081811ac7b550011ac7bc10d20001','1','1','2008-06-27 08:56:08','2008-06-27 08:56:08',1,NULL,'ff8081811ac3700b011ac3716b270001','1'),
('ff8081811ac8c506011ac8c598010001','1','1','2008-06-27 13:46:10','2008-06-27 13:46:10',1,NULL,'1','ff8081811ab34d3d011ab35046030001');

/*Table structure for table `role_descriptor_acl_access` */

DROP TABLE IF EXISTS `role_descriptor_acl_access`;

CREATE TABLE `role_descriptor_acl_access` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `acl_id` varchar(255) default NULL,
  `role_description_acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK93C22680EE7064B2` (`acl_id`),
  KEY `FK93C226803CAE8F1E` (`site_id`),
  KEY `FK93C22680921AFD6F` (`role_description_acl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `role_descriptor_acl_access` */

insert into `role_descriptor_acl_access` values 
('ff8081811ac7b550011ac7bc11b40002','1','1','2008-06-27 08:56:08','2008-06-27 08:56:08',1,NULL,'ff80808115f0cf5a0115f0d3629b0005','ff8081811ac7b550011ac7bc10d20001'),
('ff8081811ac7b550011ac7bc618c0003','1','1','2008-06-27 08:56:29','2008-06-27 08:56:29',1,NULL,'ff80808115f0cf5a0115f0d2732b0003','ff8081811ac417bb011ac4182e810001'),
('ff8081811ac8d6cc011ac8d8b92c0001','1','1','2008-06-27 14:07:03','2008-06-27 14:07:03',1,NULL,'ff80808115f0cf5a0115f0d3125c0004','ff8081811ac8c506011ac8c598010001'),
('ff8081811ac8d6cc011ac8d9d8e50002','1','1','2008-06-27 14:08:17','2008-06-27 14:08:17',1,NULL,'ff80808115f0cf5a0115f0d2732b0003','ff8081811ac8c506011ac8c598010001');

/*Table structure for table `role_privilage` */

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
  `active_flag` tinyint(1) NOT NULL default '1',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK45FBC724FB81ACDA` (`module_function_id`),
  KEY `FK45FBC724456510EF` (`role_id`),
  KEY `FK45FBC7243CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `role_privilage` */

insert into `role_privilage` values 
('ff80808105a521520105a52239c8','1','ff80808105a3b96f0105a3bdf32c',1,NULL,'','2008-03-17 18:12:34','','2008-03-17 18:12:34',1,NULL),
('ff80808105a8de2e0105a8e066ce','1','ff80808105a3a8ed0105a3b185a9',1,NULL,'','2008-03-17 18:12:34','','2008-03-17 18:12:34',1,NULL),
('ff808081151cf62001151d01a98b','2-gx','ff808081151cf62001151cfd6d90',1,NULL,'','2008-03-17 18:12:34','','2008-03-17 18:12:34',1,NULL),
('ff8081811ab34d3d011ab354d93d0004','1','ff8081811ab34d3d011ab353e2b00002',1,NULL,'1','2008-06-23 09:50:59','1','2008-06-23 09:50:59',1,NULL),
('ff8081811cf90e28011cf9192a5c000b','ff8081811cf90e28011cf918c4500009','ff8081811cf90e28011cf9167a730004',1,NULL,'1','2008-10-14 09:04:48','1','2008-10-14 09:04:48',1,NULL),
('ff8081811cf90e28011cf91c554d0014','ff8081811cf90e28011cf91a75b90010','ff8081811cf90e28011cf91b237d0011',1,NULL,'1','2008-10-14 09:08:15','1','2008-10-14 09:08:15',1,NULL),
('402880f91d19d3fb011d19db35740006','ff8081811ac3700b011ac3716b270001','402880f91d19d3fb011d19d6ca590002',1,NULL,'1','2008-10-20 17:44:35','1','2008-10-20 17:44:35',1,NULL),
('402880f91d19d3fb011d19dfcd5b000f','ff8081811ac3700b011ac3716b270001','402880f91d19d3fb011d19ddd832000b',1,NULL,'1','2008-10-20 17:49:36','1','2008-10-20 17:49:36',1,NULL),
('ff8080811ddcf1f4011ddd0c61ba0001','1','ff808081151cf62001151cfd6d90',1,NULL,'1','2008-11-27 15:24:15','1','2008-11-27 15:24:15',1,NULL),
('ff8080811ddcf1f4011ddd0e404e0002','1','402880f91d19d3fb011d19d6ca590002',1,NULL,'1','2008-11-27 15:26:18','1','2008-11-27 15:26:18',1,NULL),
('ff8080811ddd57e6011ddd705cc30001','ff8081811ac3700b011ac3716b270001','ff808081151cf62001151cfd6d90',1,NULL,'1','2008-11-27 17:13:27','1','2008-11-27 17:13:27',1,NULL);

/*Table structure for table `role_site` */

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
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK1406F170456510EF` (`role_id`),
  KEY `FK1406F1707EF48A6C` (`rsite_id`),
  KEY `FK1406F1703CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `role_site` */

insert into `role_site` values 
('e1802384-1353-49c3-9651-bab3','2-gx','ff808081151cf62001151cfc0584',NULL,'2007-09-19 16:02:51',NULL,'2008-03-17 18:15:44',1,'EE185CE0B82B41C1724F284685'),
('ff808081168fbd0301168fc010a10001','1','EE185CE0B82B41C1724F284685',NULL,'2007-11-30 15:50:37',NULL,'2007-11-30 15:50:37',1,NULL),
('ff8081811cf90e28011cf918fa7c000a','ff8081811cf90e28011cf918c4500009','ff8081811cf90e28011cf91890070008','1','2008-10-14 09:04:35','1','2008-10-14 09:04:35',1,NULL),
('ff8081811cf90e28011cf91c30c30013','ff8081811cf90e28011cf91a75b90010','ff8081811cf90e28011cf91890070008','1','2008-10-14 09:08:06','1','2008-10-14 09:08:06',1,NULL),
('402880f91d19d3fb011d19d7005d0003','ff8081811ac3700b011ac3716b270001','402880f91d19d3fb011d19d54cf10001','1','2008-10-20 17:40:00','1','2008-10-20 17:40:00',1,NULL);

/*Table structure for table `role_site_privilage` */

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
  `active_flag` tinyint(1) NOT NULL default '1',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKFE17C79E2CB07320` (`rs_site_id`),
  KEY `FKFE17C79EFB81ACDA` (`module_function_id`),
  KEY `FKFE17C79E3CAE8F1E` (`site_id`),
  KEY `FKFE17C79E7124EB9C` (`role_site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `role_site_privilage` */

insert into `role_site_privilage` values 
('ff8081811a75ff5a011a760184f30001','e1802384-1353-49c3-9651-bab3','ff808081151cf62001151cfd6d90',0,NULL,'ff808081151cf62001151cfc0584','1','2008-06-11 12:03:08','1','2008-06-11 12:03:08',1,NULL),
('ff808081168fbd0301168fc0453c0002','ff808081168fbd0301168fc010a10001','ff80808105a3a8ed0105a3b185a9',0,NULL,'EE185CE0B82B41C1724F284685',NULL,'2007-11-30 15:50:50',NULL,'2007-11-30 15:50:50',1,NULL),
('ff808081168fbd0301168fc07f770004','ff808081168fbd0301168fc010a10001','ff808081151cf62001151cfd6d90',0,NULL,'EE185CE0B82B41C1724F284685',NULL,'2007-11-30 15:51:05',NULL,'2007-11-30 15:51:05',1,NULL),
('ff8081811a6c481b011a6c50497a0001','ff808081168fbd0301168fc010a10001','ff80808105a3b96f0105a3bdf32c',0,NULL,'EE185CE0B82B41C1724F284685','1','2008-06-09 14:52:58','1','2008-06-09 14:52:58',1,NULL),
('ff8081811ab34d3d011ab35558910005','ff808081168fbd0301168fc010a10001','ff8081811ab34d3d011ab353e2b00002',0,NULL,'EE185CE0B82B41C1724F284685','1','2008-06-23 09:51:32','1','2008-06-23 09:51:32',1,NULL),
('ff8081811cf90e28011cf91951c8000c','ff8081811cf90e28011cf918fa7c000a','ff8081811cf90e28011cf9167a730004',0,NULL,'ff8081811cf90e28011cf91890070008','1','2008-10-14 09:04:58','1','2008-10-14 09:04:58',1,NULL),
('ff8081811cf90e28011cf91c786d0015','ff8081811cf90e28011cf91c30c30013','ff8081811cf90e28011cf91b237d0011',0,NULL,'ff8081811cf90e28011cf91890070008','1','2008-10-14 09:08:24','1','2008-10-14 09:08:24',1,NULL),
('402880f91d19d3fb011d19db6e270007','402880f91d19d3fb011d19d7005d0003','402880f91d19d3fb011d19d6ca590002',0,NULL,'402880f91d19d3fb011d19d54cf10001','1','2008-10-20 17:44:50','1','2008-10-20 17:44:50',1,NULL),
('402880f91d19d3fb011d19e016890010','402880f91d19d3fb011d19d7005d0003','402880f91d19d3fb011d19ddd832000b',0,NULL,'402880f91d19d3fb011d19d54cf10001','1','2008-10-20 17:49:55','1','2008-10-20 17:49:55',1,NULL);

/*Table structure for table `rs_descriptor_acl` */

DROP TABLE IF EXISTS `rs_descriptor_acl`;

CREATE TABLE `rs_descriptor_acl` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `role_site_id` varchar(255) default NULL,
  `descriptor_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKBDA42178F5B73B87` (`descriptor_id`),
  KEY `FKBDA421783CAE8F1E` (`site_id`),
  KEY `FKBDA421787124EB9C` (`role_site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `rs_descriptor_acl` */

insert into `rs_descriptor_acl` values 
('ff8081811aec24c8011aec2e33400001','1','1','2008-07-04 10:47:08','2008-07-04 10:47:08',1,NULL,'e1802384-1353-49c3-9651-bab3','ff8081811ab34d3d011ab35046030001'),
('ff8081811aec3132011aec63532c0001','1','1','2008-07-04 11:45:09','2008-07-04 11:45:09',1,NULL,'ff808081168fbd0301168fc010a10001','ff8081811ab34d3d011ab35046030001');

/*Table structure for table `rs_descriptor_acl_access` */

DROP TABLE IF EXISTS `rs_descriptor_acl_access`;

CREATE TABLE `rs_descriptor_acl_access` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `acl_id` varchar(255) default NULL,
  `rs_descriptor_acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK66C97A0BD39099AE` (`rs_descriptor_acl_id`),
  KEY `FK66C97A0BEE7064B2` (`acl_id`),
  KEY `FK66C97A0B3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `rs_descriptor_acl_access` */

insert into `rs_descriptor_acl_access` values 
('ff8081811aec3132011aec6353360002','1','1','2008-07-04 11:45:09','2008-07-04 11:45:09',1,NULL,'ff80808115f0cf5a0115f0d3125c0004','ff8081811aec3132011aec63532c0001');

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` varchar(32) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `url_section` varchar(255) default NULL,
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(15) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `site_id` varchar(32) default NULL,
  `sectionDescriptor_id` varchar(255) default NULL,
  KEY `FK756F7EE54149D8C2` (`sectionDescriptor_id`),
  KEY `FK756F7EE53CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `section` */

insert into `section` values 
('402881b709be21e60109be253122','dfd','ari.gif','asfafa            ',1,'1','2006-03-03 10:27:21','','2008-03-17 18:29:22',NULL,NULL),
('402881b709be21e60109be234262','582','',' sas                ',1,'1','2006-03-03 10:25:15','1','2006-03-03 10:26:43',NULL,NULL);

/*Table structure for table `site` */

DROP TABLE IF EXISTS `site`;

CREATE TABLE `site` (
  `id` varchar(32) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `description` varchar(255) default NULL,
  `title` varchar(255) default NULL,
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
  `site_id` varchar(32) default NULL,
  `workspace_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `update_by` (`update_by`),
  KEY `create_by` (`create_by`),
  KEY `FK35DF473CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `site` */

insert into `site` values 
('EE185CE0B82B41C1724F284685','Cimande Backend','Cimande Backend Site','','','','',1,'','','',1,'1','2002-07-05 09:48:26','1','2006-03-15 13:59:05','EE185CE0B82B41C1724F284685','tree'),
('ff808081151cf62001151cfc0584','GXAdmin','GXAdmin Site','','','','',1,'','','',1,'1','2007-09-19 15:56:59','1','2007-09-19 15:56:59',NULL,'tree'),
('ff8081811cf90e28011cf91890070008','Aroma Project','Aroma Project','','','','',1,'','','',1,'1','2008-10-14 09:04:08','1','2008-10-14 09:04:08',NULL,NULL),
('402880f91d19d3fb011d19d54cf10001','test','test','','','','',1,'','','',1,'1','2008-10-20 17:38:08','1','2008-10-20 17:38:08',NULL,'menu');

/*Table structure for table `site_descriptor_acl` */

DROP TABLE IF EXISTS `site_descriptor_acl`;

CREATE TABLE `site_descriptor_acl` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `descriptor_id` varchar(255) default NULL,
  `site_acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKC5D63B2F5B73B87` (`descriptor_id`),
  KEY `FKC5D63B23CAE8F1E` (`site_id`),
  KEY `FKC5D63B24BD37AF3` (`site_acl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `site_descriptor_acl` */

/*Table structure for table `site_descriptor_acl_access` */

DROP TABLE IF EXISTS `site_descriptor_acl_access`;

CREATE TABLE `site_descriptor_acl_access` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `acl_id` varchar(255) default NULL,
  `site_descriptor_acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK5C862291EE7064B2` (`acl_id`),
  KEY `FK5C8622913CAE8F1E` (`site_id`),
  KEY `FK5C86229192F8820A` (`site_descriptor_acl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `site_descriptor_acl_access` */

/*Table structure for table `user_role` */

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
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`),
  KEY `FK143BF46A456510EF` (`role_id`),
  KEY `FK143BF46A519415C5` (`user_id`),
  KEY `FK143BF46A3CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_role` */

insert into `user_role` values 
('adaa9b6c-4f3a-489e-836a-179a','96f673bc-283e-4b75-b63d-6edc','2-gx',0,'1','2007-09-19 16:04:47',NULL,'2008-03-17 18:28:12',1,NULL),
('ff808081163dbc9001163dbd54820001','1','1',0,'1','1970-01-01 07:00:00',NULL,'2007-11-30 13:06:50',0,NULL),
('ff8081811adcba6b011addef1b1f000a','ff8081811adcba6b011addef08ad0009','ff8081811adcba6b011addebe3190002',0,'1','2008-07-01 16:23:32','1','2008-07-01 16:23:32',1,NULL),
('ff8081811cf90e28011cf919b584000e','ff8081811cf90e28011cf919a3ff000d','ff8081811cf90e28011cf918c4500009',0,'1','2008-10-14 09:05:23','1','2008-10-14 09:05:23',1,NULL),
('ff8081811cf90e28011cf91ccf060017','ff8081811cf90e28011cf91cc1e40016','ff8081811cf90e28011cf91a75b90010',0,'1','2008-10-14 09:08:46','1','2008-10-14 09:08:46',1,NULL),
('402880f91d19d3fb011d19dc18810009','402880f91d19d3fb011d19dc022a0008','ff8081811ac3700b011ac3716b270001',0,'1','2008-10-20 17:45:33','1','2008-10-20 17:45:33',1,NULL),
('ff8080811ddcf1f4011ddd0f39f00004','ff8080811ddcf1f4011ddd0f17160003','ff8081811ac3700b011ac3716b270001',0,'1','2008-11-27 15:27:21','1','2008-11-27 15:27:21',1,NULL);

/*Table structure for table `user_site` */

DROP TABLE IF EXISTS `user_site`;

CREATE TABLE `user_site` (
  `id` varchar(32) NOT NULL default '',
  `user_id` varchar(32) NOT NULL default '',
  `user_site_id` varchar(32) NOT NULL default '',
  `create_by` varchar(32) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(32) default NULL,
  `update_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `active_flag` int(11) default '1',
  `site_id` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK143C533B519415C5` (`user_id`),
  KEY `FK143C533B3CAE8F1E` (`site_id`),
  KEY `FK143C533B979E26AA` (`user_site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `user_site` */

insert into `user_site` values 
('2e660f2f-499b-4eb3-b05c-5699','96f673bc-283e-4b75-b63d-6edc','ff808081151cf62001151cfc0584','1','2007-09-19 16:04:47',NULL,'2008-03-17 18:24:53',1,'EE185CE0B82B41C1724F284685'),
('eeb','1','EE185CE0B82B41C1724F284685','1','2003-09-27 10:27:35',NULL,'2008-03-17 18:24:53',1,'EE185CE0B82B41C1724F284685'),
('ff8081811adcba6b011addef3887000b','ff8081811adcba6b011addef08ad0009','ff8081811adcba6b011addebaa220001','1','2008-07-01 16:23:39','1','2008-07-01 16:23:39',1,NULL),
('ff8081811cf90e28011cf919c640000f','ff8081811cf90e28011cf919a3ff000d','ff8081811cf90e28011cf91890070008','1','2008-10-14 09:05:27','1','2008-10-14 09:05:27',1,NULL),
('ff8081811cf90e28011cf91cefac0018','ff8081811cf90e28011cf91cc1e40016','ff8081811cf90e28011cf91890070008','1','2008-10-14 09:08:55','1','2008-10-14 09:08:55',1,NULL),
('402880f91d19d3fb011d19dc3446000a','402880f91d19d3fb011d19dc022a0008','402880f91d19d3fb011d19d54cf10001','1','2008-10-20 17:45:41','1','2008-10-20 17:45:41',1,NULL),
('ff8080811ddcf1f4011ddd0f5ff70005','ff8080811ddcf1f4011ddd0f17160003','402880f91d19d3fb011d19d54cf10001','1','2008-11-27 15:27:31','1','2008-11-27 15:27:31',1,NULL);

/*Table structure for table `workflow_role` */

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
  `workspace_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `create_by` (`create_by`),
  KEY `update_by` (`update_by`),
  KEY `FK441060F63CAE8F1E` (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `workflow_role` */

insert into `workflow_role` values 
('1','','2003-09-03 15:40:41','1','2007-12-05 18:59:11','Gods','Gods',1,'EE185CE0B82B41C1724F284685','tree'),
('2-gx','1','2007-09-19 15:57:20','1','2007-09-19 15:57:20','GXAdmin','GXAdmin Role',1,NULL,'tree'),
('ff8081811ac3700b011ac3716b270001','1','2008-06-26 12:56:07','1','2008-11-10 19:32:25','test','test',1,NULL,'tree'),
('ff8081811cf90e28011cf918c4500009','1','2008-10-14 09:04:21','1','2008-10-14 09:04:21','admin_aroma','Admin Aroma',1,NULL,NULL),
('ff8081811cf90e28011cf91a75b90010','1','2008-10-14 09:06:12','1','2008-10-25 22:15:56','User Aroma','User Aroma',1,NULL,'tree');
