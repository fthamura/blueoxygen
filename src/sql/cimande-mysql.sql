/*
SQLyog - Free MySQL GUI v5.02
Host - 5.0.45-community-nt : Database - cimande
*********************************************************************
Server version : 5.0.45-community-nt
*/


create database if not exists `cimande`;

USE `cimande`;

/*Table structure for table `backend_user` */

DROP TABLE IF EXISTS `backend_user`;

CREATE TABLE `backend_user` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `username` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `address1` varchar(255) default NULL,
  `address2` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `first_name` varchar(255) default NULL,
  `last_name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `role_id` varchar(255) default NULL,
  `company_id` varchar(255) default NULL,
  `job_position_id` varchar(255) default NULL,
  `workspace_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK34849A96314F56A6` (`company_id`),
  KEY `FK34849A96456510EF` (`role_id`),
  KEY `FK34849A966BB10E31` (`job_position_id`),
  KEY `FK34849A963CAE8F1E` (`site_id`),
  CONSTRAINT `FK34849A96314F56A6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK34849A963CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK34849A96456510EF` FOREIGN KEY (`role_id`) REFERENCES `workflow_role` (`id`),
  CONSTRAINT `FK34849A966BB10E31` FOREIGN KEY (`job_position_id`) REFERENCES `job_position` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `backend_user` */

insert into `backend_user` values 
('1',NULL,'1','2005-08-12 11:28:20','2007-12-05 15:00:26',1,'admin','admin@meruvian.org','Grand Wijaya Center Jl Wijaya II','Blok H No 41','Jakarta Selatan','Administrator','Workspace','','YWRtaW4=','EE185CE0B82B41C1724F284685','1','blueoxygen','mgr','tree'),
('96f673bc-283e-4b75-b63d-6edc',NULL,NULL,'2007-09-19 16:04:47','2008-03-17 18:09:47',1,'gxadmin','','','','','GX','Admin','','Z3hhZG1pbg==','EE185CE0B82B41C1724F284685','2-gx','blueoxygen','mgr','tree');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `url_category_image` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `categoryDescriptor_id` varchar(255) default NULL,
  `iparentcode` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK302BCFE60140B49` (`categoryDescriptor_id`),
  KEY `FK302BCFED94CFE2B` (`iparentcode`),
  KEY `FK302BCFE3CAE8F1E` (`site_id`),
  CONSTRAINT `FK302BCFE3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK302BCFE60140B49` FOREIGN KEY (`categoryDescriptor_id`) REFERENCES `descriptor` (`id`),
  CONSTRAINT `FK302BCFED94CFE2B` FOREIGN KEY (`iparentcode`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `email` varchar(255) default NULL,
  `faximile` varchar(255) default NULL,
  `telephone` varchar(255) default NULL,
  `website` varchar(255) default NULL,
  `zip_number` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK38A73C7D3CAE8F1E` (`site_id`),
  CONSTRAINT `FK38A73C7D3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert into `company` values 
('blueoxygen','F162B448063A847',NULL,'2003-02-07 16:51:14','2008-03-17 18:32:00',0,'frans@blueoxygen.org','4260933','4260933','www.blueoxygen.org','12830','Wijaya Grand Center Blok H No. 41, 4fl Jakarta Selatan','BlueOxygen Tech','Jakarta',NULL);

/*Table structure for table `descriptor` */

DROP TABLE IF EXISTS `descriptor`;

CREATE TABLE `descriptor` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `url_action` varchar(255) default NULL,
  `url_descriptor` varchar(255) default NULL,
  `descriptor_flag` int(11) default NULL,
  `type_flag` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `window_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKD364D36FC1381B1C` (`window_id`),
  KEY `FKD364D36F3CAE8F1E` (`site_id`),
  CONSTRAINT `FKD364D36F3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKD364D36FC1381B1C` FOREIGN KEY (`window_id`) REFERENCES `gx_form_window` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `descriptor` */

insert into `descriptor` values 
('1',NULL,'1','2005-08-05 17:09:15','2007-10-30 12:26:19',1,NULL,'descriptor.xml',1,2,'descriptor','Descriptor','EE185CE0B82B41C1724F284685',NULL),
('14',NULL,'1','2005-08-19 10:08:57','2007-10-30 12:26:19',1,NULL,'workflow_role.xml',1,2,'workflow_role','Workflow Role','EE185CE0B82B41C1724F284685',NULL),
('2',NULL,'1','2005-08-05 17:10:38','2007-10-30 12:26:19',1,NULL,'site.xml',1,2,'site','Site','EE185CE0B82B41C1724F284685',NULL),
('22',NULL,'1','2005-09-19 23:49:01','2007-10-30 12:26:19',1,NULL,'template.xml',1,2,'template','Template','EE185CE0B82B41C1724F284685',NULL),
('31',NULL,'1','2005-08-12 11:31:40','2007-10-30 12:26:19',1,NULL,'module_function.xml',1,2,'module_function','Module Function','EE185CE0B82B41C1724F284685',NULL),
('32',NULL,'1','2002-05-29 00:00:00','2007-10-30 12:26:19',1,NULL,'role_privilage.xml',1,2,'role_privilage','Role Privilage','EE185CE0B82B41C1724F284685',NULL),
('402882f91ab0a66e011ab0a7d2b10001','1','1','2008-06-22 21:22:45','2008-06-22 21:22:45',1,'','',-1,2,'coba','coba',NULL,NULL),
('402882f91ab3ca46011ab3cada9f0001','1','1','2008-06-23 11:59:53','2008-06-23 11:59:53',1,'','',-1,2,'tes','tes',NULL,NULL),
('402889df1aaed0c1011aaed223110001','1','1','2008-06-22 12:49:44','2008-06-22 12:49:44',1,'','',-1,2,'content','Collection Content',NULL,NULL),
('40288d3c1aae29ea011aae2c8c420001','1','1','2008-06-22 09:48:52','2008-06-22 09:48:52',1,'','',-1,2,'cms','Content Management',NULL,NULL),
('40288d3c1aae29ea011aae2ff60a000b','1','1','2008-06-22 09:52:36','2008-06-22 09:52:36',1,'','',-1,2,'collection','Collection',NULL,NULL),
('40288d3c1aae29ea011aae307e16000d','1','1','2008-06-22 09:53:11','2008-06-22 09:53:11',1,'','',-1,2,'article','Article',NULL,NULL),
('6',NULL,'1','2005-08-05 17:17:33','2007-10-30 12:26:19',1,NULL,'category.xml',1,2,'category','Category','EE185CE0B82B41C1724F284685',NULL),
('7',NULL,'1','2002-05-29 00:00:00','2007-10-30 12:26:19',1,NULL,'section.xml',1,2,'section','Section','EE185CE0B82B41C1724F284685',NULL),
('EE187CB92554E9877310D9041D',NULL,'1','2002-06-27 00:00:00','2007-10-30 12:26:19',0,NULL,'EE188C8D1BCFFF7C61672BFA2Cassign_user_site.xml',0,0,'assign_user_site','Assign User to a Site','EE185CE0B82B41C1724F284685',NULL),
('EE399186B35C580610D4EDD7A3',NULL,'1','2002-06-10 00:00:00','2007-10-30 12:26:19',1,NULL,'EE39A7FDB43CDFD00B21EA6672coll_desc.xml',0,1,'collection_descriptor','Collection Content','EE185CE0B82B41C1724F284685',NULL),
('EE8C6A49BC200D77F9DD3F92AA',NULL,'1','2002-06-27 00:00:00','2007-10-30 12:26:19',1,NULL,'EE8C72398F20734B22553E88D6user_site.xml',0,1,'user_site','User Manager','EE185CE0B82B41C1724F284685',NULL),
('EEB49F22144357635AD6A684B6',NULL,'1','2002-07-19 00:00:00','2007-11-28 15:18:41',1,NULL,'',0,2,'rolemanager','Role Manager','EE185CE0B82B41C1724F284685',NULL),
('EF1F0CD62F63F3B0A7205D5BC4',NULL,'1','2002-07-19 00:00:00','2007-11-28 15:17:55',1,NULL,'',0,2,'rsp','Role Site Privilage','EE185CE0B82B41C1724F284685',NULL),
('F2E587923AC44C8979FBF2F26C',NULL,'1','2005-09-19 23:48:26','2007-10-30 12:26:19',1,NULL,'F2E59F1CD7D0A8F31C1B034C4Bjob_position.xml',0,2,'job_position','Job Position','EE185CE0B82B41C1724F284685',NULL),
('F332B5D5577E444B78297AFE84',NULL,'1','2005-09-19 23:48:08','2007-10-30 12:26:19',1,NULL,'F33682657AE8F60C0818178F40company.xml',0,2,'company','Company','EE185CE0B82B41C1724F284685',NULL),
('F76A9583B418F4FB3D261C1D53',NULL,NULL,'2003-09-04 10:13:28','2007-10-30 12:26:19',1,NULL,NULL,0,1,'usersite_v2.0','User Manager ver.2.0','EE185CE0B82B41C1724F284685',NULL),
('ff808081151cf62001151cf94fb0',NULL,'1','2007-09-19 15:54:01','2007-10-30 12:26:19',1,NULL,'',-1,2,'window','GXWindow',NULL,NULL),
('ff808081152136f101152137b298',NULL,'1','2007-09-20 11:40:39','2007-10-30 12:26:19',1,NULL,'',-1,2,'gx-table','GX2-Table',NULL,NULL),
('ff808081153a8e6301153a90b1e9',NULL,'1','2007-09-25 09:48:22','2007-10-30 12:26:19',1,NULL,'',-1,2,'gx-droplist','Droplist GX2',NULL,NULL),
('ff808081163cbe8a01163cc1db2f0001',NULL,'1','2007-11-14 13:04:05','2007-11-15 21:26:13',1,NULL,'',-1,2,'user','user',NULL,NULL);

/*Table structure for table `gx_db_column` */

DROP TABLE IF EXISTS `gx_db_column`;

CREATE TABLE `gx_db_column` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `reference_flag` int(11) default NULL,
  `db_column` varchar(255) default NULL,
  `key_column_flag` int(11) default NULL,
  `mandatory_flag` int(11) default NULL,
  `parent_link_column_flag` int(11) default NULL,
  `encrypted_flag` int(11) default NULL,
  `min_length` int(11) default NULL,
  `max_length` int(11) default NULL,
  `name` varchar(255) default NULL,
  `length` int(11) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `reference_table_id` varchar(255) default NULL,
  `reference_droplist_id` varchar(255) default NULL,
  `table_id` varchar(255) default NULL,
  `element_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK8A8BA8696598D100` (`element_id`),
  KEY `FK8A8BA86953C5DB3` (`reference_droplist_id`),
  KEY `FK8A8BA869785E49CC` (`reference_table_id`),
  KEY `FK8A8BA8693CAE8F1E` (`site_id`),
  KEY `FK8A8BA869D1195358` (`table_id`),
  CONSTRAINT `FK8A8BA8693CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK8A8BA86953C5DB3` FOREIGN KEY (`reference_droplist_id`) REFERENCES `gx_droplist_name` (`id`),
  CONSTRAINT `FK8A8BA8696598D100` FOREIGN KEY (`element_id`) REFERENCES `gx_droplist_value` (`id`),
  CONSTRAINT `FK8A8BA869785E49CC` FOREIGN KEY (`reference_table_id`) REFERENCES `gx_db_table` (`id`),
  CONSTRAINT `FK8A8BA869D1195358` FOREIGN KEY (`table_id`) REFERENCES `gx_db_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_db_column` */

/*Table structure for table `gx_db_table` */

DROP TABLE IF EXISTS `gx_db_table`;

CREATE TABLE `gx_db_table` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `db_table` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `entity_id` varchar(255) default NULL,
  `data_access_level_id` varchar(255) default NULL,
  `window_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKEC9AF85B17208EB9` (`entity_id`),
  KEY `FKEC9AF85BD45FA55E` (`data_access_level_id`),
  KEY `FKEC9AF85BC1381B1C` (`window_id`),
  KEY `FKEC9AF85B3CAE8F1E` (`site_id`),
  CONSTRAINT `FKEC9AF85B17208EB9` FOREIGN KEY (`entity_id`) REFERENCES `gx_droplist_value` (`id`),
  CONSTRAINT `FKEC9AF85B3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKEC9AF85BC1381B1C` FOREIGN KEY (`window_id`) REFERENCES `gx_form_window` (`id`),
  CONSTRAINT `FKEC9AF85BD45FA55E` FOREIGN KEY (`data_access_level_id`) REFERENCES `gx_droplist_value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_db_table` */

/*Table structure for table `gx_droplist_name` */

DROP TABLE IF EXISTS `gx_droplist_name`;

CREATE TABLE `gx_droplist_name` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `parent_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`),
  KEY `FK707448AF3CAE8F1E` (`site_id`),
  KEY `FK707448AF754C7EEA` (`parent_id`),
  CONSTRAINT `FK707448AF3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK707448AF754C7EEA` FOREIGN KEY (`parent_id`) REFERENCES `gx_droplist_name` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_droplist_name` */

/*Table structure for table `gx_droplist_value` */

DROP TABLE IF EXISTS `gx_droplist_value`;

CREATE TABLE `gx_droplist_value` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `value` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `droplist_name_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK9E8587CD9304CF37` (`droplist_name_id`),
  KEY `FK9E8587CD3CAE8F1E` (`site_id`),
  CONSTRAINT `FK9E8587CD3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK9E8587CD9304CF37` FOREIGN KEY (`droplist_name_id`) REFERENCES `gx_droplist_name` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_droplist_value` */

/*Table structure for table `gx_form_field` */

DROP TABLE IF EXISTS `gx_form_field`;

CREATE TABLE `gx_form_field` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `displayed_flag` int(11) default NULL,
  `displayed_length` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `sequence` int(11) NOT NULL,
  `site_id` varchar(255) default NULL,
  `tab_id` varchar(255) default NULL,
  `entity_type_id` varchar(255) default NULL,
  `column_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKE202E5CD89B487A6` (`entity_type_id`),
  KEY `FKE202E5CDA4D86978` (`tab_id`),
  KEY `FKE202E5CD3CAE8F1E` (`site_id`),
  KEY `FKE202E5CD2C6F195C` (`column_id`),
  CONSTRAINT `FKE202E5CD2C6F195C` FOREIGN KEY (`column_id`) REFERENCES `gx_db_column` (`id`),
  CONSTRAINT `FKE202E5CD3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKE202E5CD89B487A6` FOREIGN KEY (`entity_type_id`) REFERENCES `gx_droplist_value` (`id`),
  CONSTRAINT `FKE202E5CDA4D86978` FOREIGN KEY (`tab_id`) REFERENCES `gx_form_tab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_form_field` */

/*Table structure for table `gx_form_tab` */

DROP TABLE IF EXISTS `gx_form_tab`;

CREATE TABLE `gx_form_tab` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `single_row_layout_flag` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `sequence` int(11) NOT NULL,
  `site_id` varchar(255) default NULL,
  `process_id` varchar(255) default NULL,
  `table_id` varchar(255) default NULL,
  `window_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK8C171D28C1381B1C` (`window_id`),
  KEY `FK8C171D283CAE8F1E` (`site_id`),
  KEY `FK8C171D28D1195358` (`table_id`),
  KEY `FK8C171D285C6EB8AD` (`process_id`),
  CONSTRAINT `FK8C171D283CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK8C171D285C6EB8AD` FOREIGN KEY (`process_id`) REFERENCES `gx_droplist_value` (`id`),
  CONSTRAINT `FK8C171D28C1381B1C` FOREIGN KEY (`window_id`) REFERENCES `gx_form_window` (`id`),
  CONSTRAINT `FK8C171D28D1195358` FOREIGN KEY (`table_id`) REFERENCES `gx_db_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_form_tab` */

/*Table structure for table `gx_form_window` */

DROP TABLE IF EXISTS `gx_form_window`;

CREATE TABLE `gx_form_window` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `name` varchar(255) default NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `image` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `entity_type_id` varchar(255) default NULL,
  `window_type_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK7B60317D89B487A6` (`entity_type_id`),
  KEY `FK7B60317D3CAE8F1E` (`site_id`),
  KEY `FK7B60317DBE2422B3` (`window_type_id`),
  CONSTRAINT `FK7B60317D3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK7B60317D89B487A6` FOREIGN KEY (`entity_type_id`) REFERENCES `gx_droplist_value` (`id`),
  CONSTRAINT `FK7B60317DBE2422B3` FOREIGN KEY (`window_type_id`) REFERENCES `gx_droplist_value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_form_window` */

/*Table structure for table `gx_window_role` */

DROP TABLE IF EXISTS `gx_window_role`;

CREATE TABLE `gx_window_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `role_id` varchar(255) default NULL,
  `window_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKFAB3DD17456510EF` (`role_id`),
  KEY `FKFAB3DD17C1381B1C` (`window_id`),
  KEY `FKFAB3DD173CAE8F1E` (`site_id`),
  CONSTRAINT `FKFAB3DD173CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKFAB3DD17456510EF` FOREIGN KEY (`role_id`) REFERENCES `workflow_role` (`id`),
  CONSTRAINT `FKFAB3DD17C1381B1C` FOREIGN KEY (`window_id`) REFERENCES `gx_form_window` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_window_role` */

/*Table structure for table `gx_window_role_access` */

DROP TABLE IF EXISTS `gx_window_role_access`;

CREATE TABLE `gx_window_role_access` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `allowed` char(1) default NULL,
  `site_id` varchar(255) default NULL,
  `dv_access_name_id` varchar(255) default NULL,
  `window_role_id` varchar(255) default NULL,
  `acl_id` varchar(255) default NULL,
  `gx_window_role_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK2B7C3D8CEBD8BA83` (`dv_access_name_id`),
  KEY `FK2B7C3D8C3CAE8F1E` (`site_id`),
  KEY `FK2B7C3D8C87FE6F1D` (`window_role_id`),
  KEY `FK2B7C3D8CEE7064B2` (`acl_id`),
  KEY `FK2B7C3D8C1123302B` (`gx_window_role_id`),
  CONSTRAINT `FK2B7C3D8C1123302B` FOREIGN KEY (`gx_window_role_id`) REFERENCES `gx_window_role` (`id`),
  CONSTRAINT `FK2B7C3D8C3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK2B7C3D8C87FE6F1D` FOREIGN KEY (`window_role_id`) REFERENCES `gx_window_role` (`id`),
  CONSTRAINT `FK2B7C3D8CEBD8BA83` FOREIGN KEY (`dv_access_name_id`) REFERENCES `gx_droplist_value` (`id`),
  CONSTRAINT `FK2B7C3D8CEE7064B2` FOREIGN KEY (`acl_id`) REFERENCES `gx_droplist_value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gx_window_role_access` */

/*Table structure for table `job_position` */

DROP TABLE IF EXISTS `job_position`;

CREATE TABLE `job_position` (
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
  KEY `FK74CD136B3CAE8F1E` (`site_id`),
  CONSTRAINT `FK74CD136B3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `job_position` */

insert into `job_position` values 
('mgr','1','1','2005-09-19 23:59:09','2007-12-05 18:34:22',0,'manager','Manager',NULL);

/*Table structure for table `module_function` */

DROP TABLE IF EXISTS `module_function`;

CREATE TABLE `module_function` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `ref_desc` varchar(255) default NULL,
  `viewall_flag` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `iparent` varchar(255) default NULL,
  `descriptor_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK6A1F784BF5B73B87` (`descriptor_id`),
  KEY `FK6A1F784B3CAE8F1E` (`site_id`),
  KEY `FK6A1F784BCE69F19E` (`iparent`),
  CONSTRAINT `FK6A1F784B3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK6A1F784BCE69F19E` FOREIGN KEY (`iparent`) REFERENCES `module_function` (`id`),
  CONSTRAINT `FK6A1F784BF5B73B87` FOREIGN KEY (`descriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `module_function` */

insert into `module_function` values 
('0','1','1','2007-11-14 13:04:05','2007-11-15 21:26:13',1,'id',1,'Master','Master','EE185CE0B82B41C1724F284685',NULL,'1'),
('402889df1aaed0c1011aaed2ad500002','1','1','2008-06-22 12:50:19','2008-06-22 12:50:19',1,'',1,'content','Collection Content',NULL,'40288d3c1aae29ea011aae2cdddd0002','402889df1aaed0c1011aaed223110001'),
('40288d3c1aae29ea011aae2cdddd0002','1','1','2008-06-22 09:49:13','2008-06-22 09:49:13',1,'',1,'cms','Content Management',NULL,'0','40288d3c1aae29ea011aae2c8c420001'),
('40288d3c1aae29ea011aae304d04000c','1','1','2008-06-22 09:52:58','2008-06-22 09:52:58',1,'',1,'collection','Collection',NULL,'40288d3c1aae29ea011aae2cdddd0002','40288d3c1aae29ea011aae2ff60a000b'),
('40288d3c1aae29ea011aae30cd7e000e','1','1','2008-06-22 09:53:31','2008-06-22 09:53:31',1,'',1,'article','Article',NULL,'40288d3c1aae29ea011aae2cdddd0002','40288d3c1aae29ea011aae307e16000d'),
('ff80808105a3a8ed0105a3b185a9','1','','2005-08-11 11:30:23','2008-03-17 18:29:48',1,'id',0,'Site Manager','Site Manager','EE185CE0B82B41C1724F284685','0','1'),
('ff80808105a3a8ed0105a3b4137b','1','','2005-08-11 11:22:37','2008-03-17 18:29:48',1,'id',1,'User Management','User Management','EE185CE0B82B41C1724F284685','ff80808105a3a8ed0105a3b185a9','1'),
('ff80808105a3b96f0105a3bdf32c','1','1','2005-08-11 11:30:31','2008-06-22 09:48:16',1,'id',1,'Workflow Designer','Workflow Designer','EE185CE0B82B41C1724F284685','ff80808105a3a8ed0105a3b185a9','1'),
('ff80808105a3b96f0105a3e1e581','1','','2005-08-11 11:52:34','2008-03-17 18:29:48',1,'id',1,'Company','Company',NULL,'ff80808105a3a8ed0105a3b4137b','F332B5D5577E444B78297AFE84'),
('ff80808105a3b96f0105a3e418bd','1','','2005-08-11 11:54:59','2008-03-17 18:29:48',1,'id',1,'Job Position','Job Position',NULL,'ff80808105a3a8ed0105a3b4137b','F2E587923AC44C8979FBF2F26C'),
('ff80808105a3b96f0105a402cfe0','1','','2005-08-11 12:28:31','2008-03-17 18:29:48',1,'id',0,'Multi Site','Multi Site',NULL,'ff80808105a3a8ed0105a3b185a9','2'),
('ff80808105a3b96f0105a403f9f1','1','','2005-08-11 12:29:48','2008-03-17 18:29:48',1,'id',0,'Module Manager','Module Manager',NULL,'ff80808105a3a8ed0105a3b185a9','1'),
('ff80808105a3b96f0105a4083f82','1','','2005-08-11 12:34:28','2008-03-17 18:29:48',1,'description',0,'Descriptor Manager','Descriptor Manager',NULL,'ff80808105a3a8ed0105a3b185a9','1'),
('ff80808105a3b96f0105a40b7e1b','1','','2005-08-11 12:38:00','2008-03-17 18:29:48',1,'id',0,'Site','Site',NULL,'ff80808105a3b96f0105a402cfe0','2'),
('ff80808105a3b96f0105a41d0113','1','','2005-08-11 12:57:08','2008-03-17 18:29:48',1,'id',1,'Role Site Privilage','Role Site Privilage',NULL,'ff80808105a3b96f0105a403f9f1','EF1F0CD62F63F3B0A7205D5BC4'),
('ff80808105a3b96f0105a41e79a7','1','','2005-08-11 12:58:44','2008-03-17 18:29:48',1,'id',1,'Role Manager','Role Manager',NULL,'ff80808105a3b96f0105a403f9f1','EEB49F22144357635AD6A684B6'),
('ff80808105a3b96f0105a426ac13','1','','2005-08-11 13:07:42','2008-03-17 18:29:48',1,'role_id',0,'Role Privilage','Role Privilage',NULL,'ff80808105a3b96f0105a403f9f1','32'),
('ff80808105a3b96f0105a4279ca8','1','','2005-08-11 13:08:43','2008-03-17 18:29:48',1,'description',0,'Module Function','Module Function',NULL,'ff80808105a3b96f0105a403f9f1','31'),
('ff80808105a3b96f0105a431a20c','1','','2005-08-11 13:19:40','2008-03-17 18:29:48',1,'description',0,'Descriptor','Descriptor',NULL,'ff80808105a3b96f0105a4083f82','1'),
('ff80808105a3b96f0105a451002d','1','','2005-08-11 13:53:56','2008-03-17 18:29:48',1,'name',1,'WF Role','WF Role',NULL,'ff80808105a3b96f0105a3bdf32c','14'),
('ff808081151cf62001151cfd6d90','1','','2007-09-19 15:58:31','2008-03-17 18:29:48',1,'',1,'GXAdmin','GX Admin',NULL,'0','EE187CB92554E9877310D9041D'),
('ff808081151cf62001151cfedc84','1','','2007-09-19 16:00:05','2008-03-17 18:29:48',1,'',1,'window','Window',NULL,'ff808081151cf62001151cfd6d90','ff808081151cf62001151cf94fb0'),
('ff808081152136f1011521388462','1','','2007-10-11 11:46:45','2008-03-17 18:29:48',1,'',1,'GX2Table','Table',NULL,'ff808081151cf62001151cfd6d90','ff808081152136f101152137b298'),
('ff808081153a8e6301153a926a5c','1','','2007-10-11 11:46:40','2008-03-17 18:29:48',1,'',1,'GX2Droplist','Droplist',NULL,'ff808081151cf62001151cfd6d90','ff808081153a8e6301153a90b1e9'),
('ff808081163cbe8a01163cc2c2280002','1','','2007-11-14 13:05:04','2008-03-17 18:29:48',1,'',1,'user_mvc','User Manager Ver.2.1',NULL,'ff80808105a3a8ed0105a3b4137b','ff808081163cbe8a01163cc1db2f0001');

/*Table structure for table `role_descriptor_acl` */

DROP TABLE IF EXISTS `role_descriptor_acl`;

CREATE TABLE `role_descriptor_acl` (
  `id` varchar(255) NOT NULL,
  `active_flag` int(11) default NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_by` varchar(255) default NULL,
  `update_date` datetime default NULL,
  `site_id` varchar(255) default NULL,
  `descriptor_id` varchar(255) default NULL,
  `role_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK54CF5EA3456510EF` (`role_id`),
  KEY `FK54CF5EA3F5B73B87` (`descriptor_id`),
  KEY `FK54CF5EA33CAE8F1E` (`site_id`),
  CONSTRAINT `FK54CF5EA33CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK54CF5EA3456510EF` FOREIGN KEY (`role_id`) REFERENCES `workflow_role` (`id`),
  CONSTRAINT `FK54CF5EA3F5B73B87` FOREIGN KEY (`descriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_descriptor_acl` */

/*Table structure for table `role_descriptor_acl_access` */

DROP TABLE IF EXISTS `role_descriptor_acl_access`;

CREATE TABLE `role_descriptor_acl_access` (
  `id` varchar(255) NOT NULL,
  `active_flag` int(11) default NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_by` varchar(255) default NULL,
  `update_date` datetime default NULL,
  `site_id` varchar(255) default NULL,
  `acl_id` varchar(255) default NULL,
  `role_description_acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK93C22680EE7064B2` (`acl_id`),
  KEY `FK93C226803CAE8F1E` (`site_id`),
  KEY `FK93C22680921AFD6F` (`role_description_acl_id`),
  CONSTRAINT `FK93C226803CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK93C22680921AFD6F` FOREIGN KEY (`role_description_acl_id`) REFERENCES `role_descriptor_acl` (`id`),
  CONSTRAINT `FK93C22680EE7064B2` FOREIGN KEY (`acl_id`) REFERENCES `gx_droplist_value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_descriptor_acl_access` */

/*Table structure for table `role_privilage` */

DROP TABLE IF EXISTS `role_privilage`;

CREATE TABLE `role_privilage` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `privilage_flag` int(11) NOT NULL,
  `url_xml` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `role_id` varchar(255) default NULL,
  `module_function_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK45FBC724FB81ACDA` (`module_function_id`),
  KEY `FK45FBC724456510EF` (`role_id`),
  KEY `FK45FBC7243CAE8F1E` (`site_id`),
  CONSTRAINT `FK45FBC7243CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK45FBC724456510EF` FOREIGN KEY (`role_id`) REFERENCES `workflow_role` (`id`),
  CONSTRAINT `FK45FBC724FB81ACDA` FOREIGN KEY (`module_function_id`) REFERENCES `module_function` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_privilage` */

insert into `role_privilage` values 
('40288d3c1aae29ea011aae2e0a470006','1','1','2008-06-22 09:50:30','2008-06-22 09:50:30',1,1,NULL,NULL,'40288d3c1aae29ea011aae2d21ac0003','40288d3c1aae29ea011aae2cdddd0002'),
('ff80808105a521520105a52239c8','','','2008-03-17 18:12:34','2008-03-17 18:12:34',1,1,NULL,NULL,'1','ff80808105a3b96f0105a3bdf32c'),
('ff80808105a8de2e0105a8e066ce','','','2008-03-17 18:12:34','2008-03-17 18:12:34',1,1,NULL,NULL,'1','ff80808105a3a8ed0105a3b185a9'),
('ff808081151cf62001151d01a98b','','','2008-03-17 18:12:34','2008-03-17 18:12:34',1,1,NULL,NULL,'2-gx','ff808081151cf62001151cfd6d90');

/*Table structure for table `role_site` */

DROP TABLE IF EXISTS `role_site`;

CREATE TABLE `role_site` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `role_id` varchar(255) default NULL,
  `rsite_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK1406F170456510EF` (`role_id`),
  KEY `FK1406F1707EF48A6C` (`rsite_id`),
  KEY `FK1406F1703CAE8F1E` (`site_id`),
  CONSTRAINT `FK1406F1703CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK1406F170456510EF` FOREIGN KEY (`role_id`) REFERENCES `workflow_role` (`id`),
  CONSTRAINT `FK1406F1707EF48A6C` FOREIGN KEY (`rsite_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_site` */

insert into `role_site` values 
('40288d3c1aae29ea011aae2dd56c0005','1','1','2008-06-22 09:50:16','2008-06-22 09:50:16',1,NULL,'40288d3c1aae29ea011aae2d21ac0003','40288d3c1aae29ea011aae2dae5c0004'),
('e1802384-1353-49c3-9651-bab3',NULL,NULL,'2007-09-19 16:02:51','2008-03-17 18:15:44',1,'EE185CE0B82B41C1724F284685','2-gx','ff808081151cf62001151cfc0584'),
('ff808081168fbd0301168fc010a10001',NULL,NULL,'2007-11-30 15:50:37','2007-11-30 15:50:37',1,NULL,'1','EE185CE0B82B41C1724F284685');

/*Table structure for table `role_site_privilage` */

DROP TABLE IF EXISTS `role_site_privilage`;

CREATE TABLE `role_site_privilage` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `privilage_flag` int(11) NOT NULL,
  `url_xml` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `rs_site_id` varchar(255) default NULL,
  `module_function_id` varchar(255) default NULL,
  `role_site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKFE17C79EFB81ACDA` (`module_function_id`),
  KEY `FKFE17C79E2CB07320` (`rs_site_id`),
  KEY `FKFE17C79E3CAE8F1E` (`site_id`),
  KEY `FKFE17C79E7124EB9C` (`role_site_id`),
  CONSTRAINT `FKFE17C79E2CB07320` FOREIGN KEY (`rs_site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKFE17C79E3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKFE17C79E7124EB9C` FOREIGN KEY (`role_site_id`) REFERENCES `role_site` (`id`),
  CONSTRAINT `FKFE17C79EFB81ACDA` FOREIGN KEY (`module_function_id`) REFERENCES `module_function` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `role_site_privilage` */

insert into `role_site_privilage` values 
('40288d3c1aae29ea011aae2e424f0007','1','1','2008-06-22 09:50:44','2008-06-22 09:50:44',1,0,NULL,NULL,'40288d3c1aae29ea011aae2dae5c0004','40288d3c1aae29ea011aae2cdddd0002','40288d3c1aae29ea011aae2dd56c0005'),
('a372f809-a96d-4ec5-a05e-d83c',NULL,NULL,'2007-09-19 16:03:32','2008-03-17 18:23:15',1,1,NULL,NULL,'ff808081151cf62001151cfc0584','ff80808105a3a8ed0105a3b185a9','e1802384-1353-49c3-9651-bab3'),
('ff808081168fbd0301168fc0453c0002',NULL,NULL,'2007-11-30 15:50:50','2007-11-30 15:50:50',1,0,NULL,NULL,'EE185CE0B82B41C1724F284685','ff80808105a3a8ed0105a3b185a9','ff808081168fbd0301168fc010a10001'),
('ff808081168fbd0301168fc07f770004',NULL,NULL,'2007-11-30 15:51:05','2007-11-30 15:51:05',1,0,NULL,NULL,'EE185CE0B82B41C1724F284685','ff808081151cf62001151cfd6d90','ff808081168fbd0301168fc010a10001');

/*Table structure for table `rs_descriptor_acl` */

DROP TABLE IF EXISTS `rs_descriptor_acl`;

CREATE TABLE `rs_descriptor_acl` (
  `id` varchar(255) NOT NULL,
  `active_flag` int(11) default NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_by` varchar(255) default NULL,
  `update_date` datetime default NULL,
  `site_id` varchar(255) default NULL,
  `descriptor_id` varchar(255) default NULL,
  `role_site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKBDA42178F5B73B87` (`descriptor_id`),
  KEY `FKBDA421783CAE8F1E` (`site_id`),
  KEY `FKBDA421787124EB9C` (`role_site_id`),
  CONSTRAINT `FKBDA421783CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKBDA421787124EB9C` FOREIGN KEY (`role_site_id`) REFERENCES `role_site` (`id`),
  CONSTRAINT `FKBDA42178F5B73B87` FOREIGN KEY (`descriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rs_descriptor_acl` */

/*Table structure for table `rs_descriptor_acl_access` */

DROP TABLE IF EXISTS `rs_descriptor_acl_access`;

CREATE TABLE `rs_descriptor_acl_access` (
  `id` varchar(255) NOT NULL,
  `active_flag` int(11) default NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_by` varchar(255) default NULL,
  `update_date` datetime default NULL,
  `site_id` varchar(255) default NULL,
  `acl_id` varchar(255) default NULL,
  `rs_descriptor_acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK66C97A0BD39099AE` (`rs_descriptor_acl_id`),
  KEY `FK66C97A0BEE7064B2` (`acl_id`),
  KEY `FK66C97A0B3CAE8F1E` (`site_id`),
  CONSTRAINT `FK66C97A0B3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK66C97A0BD39099AE` FOREIGN KEY (`rs_descriptor_acl_id`) REFERENCES `rs_descriptor_acl` (`id`),
  CONSTRAINT `FK66C97A0BEE7064B2` FOREIGN KEY (`acl_id`) REFERENCES `gx_droplist_value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rs_descriptor_acl_access` */

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `url_section` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `code` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `sectionDescriptor_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK756F7EE54149D8C2` (`sectionDescriptor_id`),
  KEY `FK756F7EE53CAE8F1E` (`site_id`),
  CONSTRAINT `FK756F7EE53CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK756F7EE54149D8C2` FOREIGN KEY (`sectionDescriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `section` */

/*Table structure for table `site` */

DROP TABLE IF EXISTS `site`;

CREATE TABLE `site` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `admin_email` varchar(255) default NULL,
  `notify_email` varchar(255) default NULL,
  `notify_flag` int(11) NOT NULL,
  `notify_from` varchar(255) default NULL,
  `notify_message` varchar(255) default NULL,
  `site_url` varchar(255) default NULL,
  `url_branding` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `workspace_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK35DF473CAE8F1E` (`site_id`),
  CONSTRAINT `FK35DF473CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `site` */

insert into `site` values 
('40288d3c1aae29ea011aae2dae5c0004','1','1','2008-06-22 09:50:06','2008-06-22 09:50:06',1,'','',1,'','','','','Aconix','','Content Management System',NULL,NULL),
('EE185CE0B82B41C1724F284685','1','1','2002-07-05 09:48:26','2006-03-15 13:59:05',1,'','',1,'','','','','Cimande Backend','','Cimande Backend Site','EE185CE0B82B41C1724F284685',NULL),
('ff808081151cf62001151cfc0584','1','1','2007-09-19 15:56:59','2007-09-19 15:56:59',1,'','',1,'','','','','GXAdmin','','GXAdmin Site',NULL,NULL);

/*Table structure for table `site_descriptor_acl` */

DROP TABLE IF EXISTS `site_descriptor_acl`;

CREATE TABLE `site_descriptor_acl` (
  `id` varchar(255) NOT NULL,
  `active_flag` int(11) default NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_by` varchar(255) default NULL,
  `update_date` datetime default NULL,
  `site_id` varchar(255) default NULL,
  `descriptor_id` varchar(255) default NULL,
  `site_acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKC5D63B24BD37AF3` (`site_acl_id`),
  KEY `FKC5D63B2F5B73B87` (`descriptor_id`),
  KEY `FKC5D63B23CAE8F1E` (`site_id`),
  CONSTRAINT `FKC5D63B23CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKC5D63B24BD37AF3` FOREIGN KEY (`site_acl_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FKC5D63B2F5B73B87` FOREIGN KEY (`descriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `site_descriptor_acl` */

/*Table structure for table `site_descriptor_acl_access` */

DROP TABLE IF EXISTS `site_descriptor_acl_access`;

CREATE TABLE `site_descriptor_acl_access` (
  `id` varchar(255) NOT NULL,
  `active_flag` int(11) default NULL,
  `create_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_by` varchar(255) default NULL,
  `update_date` datetime default NULL,
  `site_id` varchar(255) default NULL,
  `acl_id` varchar(255) default NULL,
  `site_descriptor_acl_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK5C862291EE7064B2` (`acl_id`),
  KEY `FK5C8622913CAE8F1E` (`site_id`),
  KEY `FK5C86229192F8820A` (`site_descriptor_acl_id`),
  CONSTRAINT `FK5C8622913CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK5C86229192F8820A` FOREIGN KEY (`site_descriptor_acl_id`) REFERENCES `site_descriptor_acl` (`id`),
  CONSTRAINT `FK5C862291EE7064B2` FOREIGN KEY (`acl_id`) REFERENCES `gx_droplist_value` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `site_descriptor_acl_access` */

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `role_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK143BF46A456510EF` (`role_id`),
  KEY `FK143BF46A519415C5` (`user_id`),
  KEY `FK143BF46A3CAE8F1E` (`site_id`),
  CONSTRAINT `FK143BF46A3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK143BF46A456510EF` FOREIGN KEY (`role_id`) REFERENCES `workflow_role` (`id`),
  CONSTRAINT `FK143BF46A519415C5` FOREIGN KEY (`user_id`) REFERENCES `backend_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_role` */

insert into `user_role` values 
('adaa9b6c-4f3a-489e-836a-179a','1',NULL,'2007-09-19 16:04:47','2008-03-17 18:28:12',1,NULL,'2-gx','96f673bc-283e-4b75-b63d-6edc'),
('ff808081163dbc9001163dbd54820001','1',NULL,'1970-01-01 07:00:00','2007-11-30 13:06:50',0,NULL,'1','1');

/*Table structure for table `user_site` */

DROP TABLE IF EXISTS `user_site`;

CREATE TABLE `user_site` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `site_id` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `user_site_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK143C533B519415C5` (`user_id`),
  KEY `FK143C533B3CAE8F1E` (`site_id`),
  KEY `FK143C533B979E26AA` (`user_site_id`),
  CONSTRAINT `FK143C533B3CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  CONSTRAINT `FK143C533B519415C5` FOREIGN KEY (`user_id`) REFERENCES `backend_user` (`id`),
  CONSTRAINT `FK143C533B979E26AA` FOREIGN KEY (`user_site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_site` */

insert into `user_site` values 
('2e660f2f-499b-4eb3-b05c-5699','1',NULL,'2007-09-19 16:04:47','2008-03-17 18:24:53',1,'EE185CE0B82B41C1724F284685','96f673bc-283e-4b75-b63d-6edc','ff808081151cf62001151cfc0584'),
('eeb','1',NULL,'2003-09-27 10:27:35','2008-03-17 18:24:53',1,'EE185CE0B82B41C1724F284685','1','EE185CE0B82B41C1724F284685');

/*Table structure for table `workflow_role` */

DROP TABLE IF EXISTS `workflow_role`;

CREATE TABLE `workflow_role` (
  `id` varchar(255) NOT NULL,
  `create_by` varchar(255) default NULL,
  `update_by` varchar(255) default NULL,
  `create_date` datetime default NULL,
  `update_date` datetime default NULL,
  `active_flag` int(11) default NULL,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `site_id` varchar(255) default NULL,
  `workspace_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK441060F63CAE8F1E` (`site_id`),
  CONSTRAINT `FK441060F63CAE8F1E` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `workflow_role` */

insert into `workflow_role` values 
('1','','1','2003-09-03 15:40:41','2007-12-05 18:59:11',1,'Gods','Gods','EE185CE0B82B41C1724F284685',NULL),
('2-gx','1','1','2007-09-19 15:57:20','2007-09-19 15:57:20',1,'GXAdmin','GXAdmin Role',NULL,NULL),
('40288d3c1aae29ea011aae2d21ac0003','1','1','2008-06-22 09:49:30','2008-06-22 09:49:30',1,'owner','owner',NULL,NULL);
