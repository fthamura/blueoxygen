-- MySQL dump 10.9
--
-- Host: localhost    Database: remarkable
-- ------------------------------------------------------
-- Server version	4.1.13a-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE `about_us` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `abstract` text,
  `detail` text,
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `url_image3` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--


/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
LOCK TABLES `about_us` WRITE;
INSERT INTO `about_us` VALUES ('EF76D47B8479BB1EC65F74D4F1','Company Background','Company Background','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DB199BDA713A95B0CAB765images01.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00','EEA063FE983851E','2002-08-05 03:00:54','0','ic','ED2E4202F2AE0340726C67A877'),('EF76D65787AD054C8D116D1EF4','Our Vision','Our Vision','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DB6E341C376430B9E373A8images02.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00','EEA063FE983851E','2002-08-05 03:01:15','0','ic','ED2E4202F2AE0340726C67A877'),('EF76D78672ABC1783709CBBDE9','Our Approach','Our Approach','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DBA60D75ADDBDBA50D5F5Bimages03.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00','EEA063FE983851E','2002-08-05 03:01:30','0','ic','ED2E4202F2AE0340726C67A877'),('EF76D840F830F0B3704D90DC28','Our Solution Approach','Our Solution Approach','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DBDB4662D9EE1C852AE759images04.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00','EEA063FE983851E','2002-08-05 03:01:43','0','ic','ED2E4202F2AE0340726C67A877'),('EF76D8BA3F7CF6E0D3DFDDE402','Our Commitment','Our Commitment','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DC0CE54427B4E9AB510C67images05.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00','EEA063FE983851E','2002-08-05 03:01:56','0','ic','ED2E4202F2AE0340726C67A877'),('EF76EDE2A111EFC6CDE050C348','Company Background','Company Background','','all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way ',NULL,NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF76EFB156B3BD1E2EE605D114','Our Vision','Our Vision','','all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way ',NULL,NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF76F003CBBCFB33A7DE1F7F40','Our Approach','Our Approach','','all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way ',NULL,NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF770E1DE9957C994CB59A419A','Our Vision','Our Vision','','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand','EF770EEB2C1EB303145459C2C9prelease01.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF770EF25047B401AD4CC59192','Our Mission','Our Mission','','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\n','EF770F48CDB100A0550B4D2362prelease02.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF770F4E898F5649DAFBC2CCA7','Our Approach','Our Approach','','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\n','EF770F9A198A740A9C7E7360D8prelease03.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF87D849EA4A59339594E7F845','Our Vision','Our Vision','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','EF87D8D5D77389DD2B050D625Cimages01.gif',NULL,NULL,'EEA063FE983851E','2003-10-15 09:29:30',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87D8FE18D371CB032236A360','Company Background','Company Background','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','EF87D972E78AD4BA7C07A3FEB5images04.gif',NULL,NULL,'EEA063FE983851E','2002-08-08 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87E57386423584690F3AED17','Our Mission','Our Mission','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','EF87E5C842E1347DBA7AA3D25Fimages02.gif',NULL,NULL,'EEA063FE983851E','2002-08-08 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8E2F12DE12AC404BF06CFB3C','Company Background','Company Background','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF8E3136AFE3BA66D79FBB1A10images1.jpg',NULL,NULL,'EEA063FE983851E','2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E31446BD15C1F77534D61A9','Our Mission','Our Mission','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF8E31A62293B200CF2A940D10images2.jpg',NULL,NULL,'EEA063FE983851E','2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E31AF72C76E887D3AC99B6C','Our Approach','Our Approach','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF8E320D185F663C517E4B04AFimages1.jpg',NULL,NULL,'EEA063FE983851E','2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EFABD7A227D67449CDC27C9DE7','Company Background','','','The technology is changing rapidly, making todays solution obsolete almost the next day. The technology is changing rapidly, making todays solution obsolete almost the next day. The technology is changing rapidly, making todays solution obsolete almost the next day','EFABD815A1C45922A535C594EBnews1.gif',NULL,NULL,'EEA063FE983851E','2002-08-15 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F312E75F10981CEE04AE42D1B','Sejarah Singkat PT Makin','Sejarah Singkat','','PT. matahari Kahuripan Indonesia didirikan pada \r\n                              tahun 1993 oleh Bpk. Susilo Wonowidjojo dan Bpk. \r\n                              Mochtar Ramlie. Perusahaan didirikan berdasarkan \r\n                              akta notaris no. 10 tanggal 3 Juni 1993 dari Notaris \r\n                              Mudofir Hadi, SH.\r\n                              <p>Pada tahun 1996, Bapak Susilo Wonowidjojo merupakan \r\n                                pemegang saham 100% sahama PT. Matahari Kahuripan \r\n                                Indonesia.</p>\r\n                              <p>Tahun 1997, Bpk. Susilo Wonowidjojo menjual 10% \r\n                                kepemilikan saham kepada PT. Hari Mahardika Usaha, \r\n                                perusahaan yang dimiliki oleh keluarga Wonowidjojo.</p>\r\n                              <p>Tahun 1999, pemegang saham PT. Matahari Kahuripan \r\n                                Indonesia adalah PT. Hari Mahardika Usaha (73%) \r\n                                dan PT. Suryaduta Investama (27%). Hingga bulan \r\n                                April 2002, PT. Matahari Kahuripan Indonesia merupakan \r\n                                perusahaan induk dengan 14 anak perusahaan.</p>','F312E9AC5C428D821454B8BD9Flogo1.jpg',NULL,NULL,'F162B448063A847','2003-01-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312E9B7586BBD7815262A2F68','Visi','Visi','','Menjadi perusahaan kelas dunia di bidang agrobisnis, \r\n                                perusahaan agro nomor 1 di Indonesia pada tahun \r\n                                2015, serta memberikan nilai tambbah kepada stakeholders \r\n                                : pelanggan, karyawan, masyarakat, pemegang saham, \r\n                                kreditur, dan pemerintah.<br>','F312EA528F93D7A1B5F56542BEimage02.jpg',NULL,NULL,'F162B448063A847','2003-01-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312EA5984D494E8177B0A51D1','Strategi Bisnis','Strategi Bisnis','','<li>Mengembangkan usaha melalui perluasan lahan \r\n                                  perkebunan yang memadai serta menerapkan manajemen \r\n                                  kebun yang efisien.</li>\r\n                                <br>\r\n                                <br>\r\n                                <li>Mencapai laba usaha yang maksimum.</li>\r\n                                <br>\r\n                                <br>\r\n                                <li>Menerapkan standar yang tinggi untuk prosedur \r\n                                  operasi.</li>\r\n                                <br>\r\n                                <br>\r\n                                <li>Meningkatkan kualitas sumber daya manusia \r\n                                  melalui berbagai program pelatihan dan pengembangan.</li>','F312EF1510669C47AC10C19C2Fimage03.jpg',NULL,NULL,'F162B448063A847','2003-01-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312EF1D0F94F52BE459F19661','Bisnis Inti','Bisnis Inti','','Sampai akhir April 2002, PT. Matahari Kahuripan \r\n                                Indonesia merupakan perusahaan induk yang membawahi \r\n                                14 anak perusahaan. Aktivitas utama kami meliputi \r\n                                perkebunan dan pengelolaan kelapa sawit dan produk \r\n                                produk turunan lain dari kelapa sawit, yang diharapkan \r\n                                dapat menjadi penyumbang terbesar bagi penghasilan \r\n                                perusahaan di masa depan.</p>\r\n                              <p>Sekitar 3600 hektar dari total areal tertanam \r\n                                merupakan lahan plasma dan progream KKPA, program \r\n                                yang diperkenalkan oleh pemerintah Indonesia untuk \r\n                                mendorong perusahaan perusahaan kelapa sawit untuk \r\n                                mengembangkan usaha perkebunan dan menyediakan \r\n                                bantuan manajemen bagi petani kecil.</p>\r\n                              <p>Program tersebut memiliki tujuan meningkatkan \r\n                                pendapatan masyarakat lokal di mana perusahaan \r\n                                perusahaan diwajibkan membeli TBS (Tandan Buah \r\n                                Segar) dari petani petani kecil dengan harga yang \r\n                                ditetapkan pemerintah.</p>\r\n                              <p>Untuk mewujudkan visi, kami merencanakan perluasan \r\n                                areal tertanam hingga mencapai 300.000 hektar \r\n                                di tahun 2015. kami menargetkan beberapa propinsi \r\n                                di Indonesia seperti Jambi, Lampung, Kalimantan \r\n                                Tengah, Kalimantan Selatan, dan propinsi propinsi \r\n                                lain yang memiliki iklim dan kondisi tanah yang \r\n                                cocok bagi usaha perkebunan kelapa sawit.<br>','F312EF980BB732FB144E6182CCimage03.jpg','',NULL,'F162B448063A847','2003-07-28 09:36:41','F162B448063A847319E641EF7D','2003-07-28 09:36:41','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F53FECA29ED17F55137BCB971B','Company Background','Company Background','','Intercitra Prima Integrasi, PT. is a privately held company based in Jakarta, Indonesia. It founded in 2001 and specializes in developing innovative business application that is focused on the needs of its customers. \r\nIn addition to developing its own products internally, Intercitra licenses products and technologies that will complement its own technologies. \r\n','',NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-20 16:43:54','F36F8BFFF97F8A16505B8305F7','2003-05-20 16:43:54','0','ic','F4D30718756B8401E43FD2AAE6'),('F53FF1C6833EDEC463A9ABBDA9','Our Vision','Our Vision','','Intercitra vision is to become the most preferred consulting and integration to help businesses doing activities and build closer relationship with their business partners (buyer, supplier and internal customer ',NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-20 15:10:43','F36F8BFFF97F8A16505B8305F7','2003-05-20 15:10:43','0','ic','F4D30718756B8401E43FD2AAE6'),('F54DCFD193D19C2C7542FFE50F','Our Commitment','Our Commitment','','One you trust us to help your company doing business. We will provide the best of breed solution that we have to you. We are glad if we can run together as a business partner forever.\r\n',NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-22 10:01:24',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F54DD05F038EA594DB39943894','The Big Idea','','','To fundamentally build and change the way people communicate and manage their businesses in real business environment.\r\n',NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-22 10:03:26',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F54DD25E5D4534776F2FB43E19','The Daily Mantera','The Daily Mantera','','Make it simple, integrated, organize, managed and connected in the innovation decathlon. ',NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-22 10:04:03',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6');
UNLOCK TABLES;
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;

--
-- Table structure for table `activity_journal`
--

DROP TABLE IF EXISTS `activity_journal`;
CREATE TABLE `activity_journal` (
  `id` varchar(28) NOT NULL default '',
  `task_id` varchar(28) default NULL,
  `title` varchar(128) default NULL,
  `activity` text,
  `disable_flag` tinyint(1) NOT NULL default '0',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  `version` int(8) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_journal`
--


/*!40000 ALTER TABLE `activity_journal` DISABLE KEYS */;
LOCK TABLES `activity_journal` WRITE;
INSERT INTO `activity_journal` VALUES ('FAC7078CCEBE96334E04880107','FAC70726C8B78586917761AD46','Comment 1','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin ac nunc. Sed vitae pede. Nunc elit. In et purus non diam vehicula feugiat. Vivamus nonummy dignissim eros. Sed lacinia. Pellentesque varius. Fusce pharetra dui vel magna. Aenean lorem. Quisque dapibus, turpis quis porta mollis, eros leo luctus tellus, nec ullamcorper ipsum leo quis eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. /?** @$ Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin ac nunc. Sed vitae pede. Nunc elit. In et purus non diam vehicula feugiat. Vivamus nonummy dignissim eros. Sed lacinia. Pellentesque varius. Fusce pharetra dui vel magna. Aenean lorem. Quisque dapibus, turpis quis porta mollis, eros leo luctus tellus, nec ullamcorper ipsum leo quis eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. \r<br>\r<br>',0,'F36F8BFFF97F8A16505B8305F7','2004-02-18 12:11:47','F36F8BFFF97F8A16505B8305F7','2004-02-18 12:11:47','0','ic',NULL,1),('FAC7097EDD9363B0302B5A2D50','FAC70726C8B78586917761AD46','Journal 2','Donec et magna. Suspendisse fermentum luctus enim. Aliquam porta tristique lorem. Morbi rutrum dui at mauris. In nulla mauris, cursus vel, imperdiet vel, vulputate a, elit. Sed laoreet tempor wisi. Mauris egestas condimentum orci. Praesent a mauris. Suspendisse pharetra dolor. Fusce eleifend neque at dui. \r<br>',0,'F36F8BFFF97F8A16505B8305F7','2004-02-18 12:12:10','F36F8BFFF97F8A16505B8305F7','2004-02-18 12:12:10','0','ic',NULL,1),('FAC709CC84EE887EBC8211239','FAC70726C8B78586917761AD46','Journal 3','Etiam lorem. Duis molestie aliquet urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque ut odio. Duis commodo rutrum arcu. Mauris congue pulvinar mauris. Cras eu turpis. Donec ut sem quis elit dapibus dapibus. Curabitur a purus nec pede mattis ullamcorper. Suspendisse lorem libero, ultricies ac, tempor eu, fringilla non, orci. Mauris sit amet nunc. Cras felis. Vivamus varius accumsan sapien. Mauris tristique malesuada mauris. Vivamus id urna luctus purus tristique consectetuer. Maecenas fringilla metus nec eros. Quisque vitae nisl sed augue tincidunt scelerisque. Fusce non neque at tortor congue tincidunt. Vestibulum sit amet augue non wisi mattis lacinia. Praesent eget est. \r<br>',0,'F36F8BFFF97F8A16505B8305F7','2004-02-18 12:12:53','F36F8BFFF97F8A16505B8305F7','2004-02-18 12:12:53','0','ic',NULL,1),('FAC71F5892A53F3F74A278AA3D','FAC71EC536349619C03FEEEBFF','Frans\' New Journal #1','Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. ',0,'F501555A2ECD5AC8FCC32F4DD6','2004-02-18 12:36:12','F501555A2ECD5AC8FCC32F4DD6','2004-02-18 12:36:12','0','ic',NULL,1),('FAC71FD12388A1302601BD4E58','FAC71EC536349619C03FEEEBFF','Frans\' New Journal #2','Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. ',0,'F501555A2ECD5AC8FCC32F4DD6','2004-02-18 12:36:31','F501555A2ECD5AC8FCC32F4DD6','2004-02-18 12:36:31','0','ic',NULL,1),('FAC7201EDD1DA05F3D19D2CF6','FAC71EC536349619C03FEEEBFF','Frans\' New Journal #3','Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. ',0,'F501555A2ECD5AC8FCC32F4DD6','2004-02-18 12:36:55','F501555A2ECD5AC8FCC32F4DD6','2004-02-18 12:36:55','0','ic',NULL,1),('FAD1361E72EE7B19BAF0EF7A4E','FAD0F1C09BA0BE7231BA7E15E8','mencoba untuk update server','test terus ',0,'null','2004-02-20 11:37:30','null','0000-00-00 00:00:00','0','ic',NULL,0),('FAF52BEF47D13B54B190F446EC','FAF506AFCFC61A8E401E8242E6','First Journal','Search for documents of current project in local computer\'s archive folder',0,'F36F8BFFF97F8A16505B8305F7','2004-02-27 11:27:09','F36F8BFFF97F8A16505B8305F7','2004-02-27 11:27:09','0','ic',NULL,2),('FAF52E7D3AD0C61F9F96B28DB1','FAF506AFCFC61A8E401E8242E6','Second Journal','Sorting the documents',0,'F36F8BFFF97F8A16505B8305F7','2004-02-27 11:16:16','F36F8BFFF97F8A16505B8305F7','2004-02-27 11:16:16','0','ic',NULL,1),('FB0464EF23D97C301A9FDB96','FAE5BC15B5614517AACE1062E8','My First Journal','See whether this journal is uploaded ',0,'F36F96E4EA83CB95AC4DC601F2','2004-03-01 10:09:40','F36F96E4EA83CB95AC4DC601F2','2004-03-01 10:09:40','0','ic',NULL,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `activity_journal` ENABLE KEYS */;

--
-- Table structure for table `activity_journal_comment`
--

DROP TABLE IF EXISTS `activity_journal_comment`;
CREATE TABLE `activity_journal_comment` (
  `id` varchar(28) NOT NULL default '',
  `journal_id` varchar(128) NOT NULL default '',
  `user_id` varchar(128) NOT NULL default '',
  `comment` text,
  `file_name` text NOT NULL,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  `disable_flag` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_journal_comment`
--


/*!40000 ALTER TABLE `activity_journal_comment` DISABLE KEYS */;
LOCK TABLES `activity_journal_comment` WRITE;
INSERT INTO `activity_journal_comment` VALUES ('F8F800D37C9DDC73EB069E9F82','F8F76677EA2CB169331BDF8652','F501555A2ECD5AC8FCC32F4DD6','test comment dari frans','',NULL,'2003-11-20 14:18:25',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F8F88DFC05F6B71CF13B902409','F8F76677EA2CB169331BDF8652','F36F96E4EA83CB95AC4DC601F2','test journal with email','',NULL,'2003-11-20 16:53:39',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F8F8FB78FE8E2B1A0A634CF32F','F8F76677EA2CB169331BDF8652','F36F8BFFF97F8A16505B8305F7','kasih comment','F8F8FB78FE8E2B1A0A634CF32Fweb.xml',NULL,'2003-11-20 18:52:15',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F8FC425973175AF7C3F9176491','F8F76677EA2CB169331BDF8652','F36F8BFFF97F8A16505B8305F7','test comment','',NULL,'2003-11-21 10:08:28',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC70B8A8C500C70C6C65C46BA','FAC709CC84EE887EBC8211239','F36F8BFFF97F8A16505B8305F7','Suspendisse fermentum luctus enim. Aliquam porta tristique lorem. ','',NULL,'2004-02-18 12:14:26',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC70BDDB6303DDF1F2111AA7C','FAC709CC84EE887EBC8211239','F36F8BFFF97F8A16505B8305F7','Mauris egestas condimentum orci. Praesent a mauris. Suspendisse pharetra dolor. Fusce eleifend neque at dui. \r<br>','',NULL,'2004-02-18 12:14:55',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC70D13BB3A8B3D5B023BADB6','FAC7078CCEBE96334E04880107','F36F8BFFF97F8A16505B8305F7','Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. \r<br>','',NULL,'2004-02-18 12:16:15',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC713EDC6FB8D41B6D21ED05E','FAC7078CCEBE96334E04880107','F36F8BFFF97F8A16505B8305F7','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. ','',NULL,'2004-02-18 12:23:31',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC71CE377C51EEFBF7EBDC993','FAC7078CCEBE96334E04880107','F36F8BFFF97F8A16505B8305F7','Etiam lorem. Duis molestie aliquet urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. ','',NULL,'2004-02-18 12:33:18',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC7208804D60D7E094A4F60B7','FAC7201EDD1DA05F3D19D2CF6','F501555A2ECD5AC8FCC32F4DD6','Vivamus eget felis eu est rhoncus pretium. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. ','',NULL,'2004-02-18 12:37:27',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC72206F33263F08B0127920E','FAC7201EDD1DA05F3D19D2CF6','F36F8BFFF97F8A16505B8305F7','Vivamus eget felis eu est rhoncus pretium. ','',NULL,'2004-02-18 12:38:44',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC722FBE9B8FCD8F71670185F','FAC7097EDD9363B0302B5A2D50','F3FB0D6714905E04E2586A8E1A','Vestibulum sit amet augue non wisi mattis lacinia. Praesent eget est. ','',NULL,'2004-02-18 12:39:48',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC72341A9C38D2ED434390067','FAC7078CCEBE96334E04880107','F3FB0D6714905E04E2586A8E1A','Mauris tristique malesuada mauris. ','',NULL,'2004-02-18 12:40:14',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC7239E05AD839362F35A8BFA','FAC709CC84EE887EBC8211239','F3FB0D6714905E04E2586A8E1A','Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. Fusce mattis malesuada pede. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. ','',NULL,'2004-02-18 12:40:34',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAD137D04C5A84376352E02594','FAD1361E72EE7B19BAF0EF7A4E','F36F96E4EA83CB95AC4DC601F2','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin ac nunc. Sed vitae pede. Nunc elit. In et purus non diam vehicula feugiat. Vivamus nonummy dignissim eros. Sed lacinia. Pellentesque varius. Fusce pharetra dui vel magna. Aenean lorem. ','',NULL,'2004-02-20 11:39:32',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAD138AA6CC2766898CFA99199','FAD1361E72EE7B19BAF0EF7A4E','F36F96E4EA83CB95AC4DC601F2','Quisque dapibus, turpis quis porta mollis, eros leo luctus tellus, nec ullamcorper ipsum leo quis eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. \r<br>','',NULL,'2004-02-20 11:39:50',NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `activity_journal_comment` ENABLE KEYS */;

--
-- Table structure for table `activity_project`
--

DROP TABLE IF EXISTS `activity_project`;
CREATE TABLE `activity_project` (
  `id` varchar(28) NOT NULL default '',
  `assigner_id` varchar(28) NOT NULL default '',
  `company_id` varchar(28) default NULL,
  `name` varchar(128) default NULL,
  `description` varchar(128) default NULL,
  `background` text,
  `objective` varchar(128) default NULL,
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `finish_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `priority` varchar(28) default NULL,
  `status` varchar(28) default NULL,
  `category_id` varchar(28) default NULL,
  `progress_presentage` varchar(28) default NULL,
  `project_manager` varchar(28) default NULL,
  `critical_project` tinyint(1) default '1',
  `project_notes` text,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  `version` int(8) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_project`
--


/*!40000 ALTER TABLE `activity_project` DISABLE KEYS */;
LOCK TABLES `activity_project` WRITE;
INSERT INTO `activity_project` VALUES ('F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','F40F8AEA366FA9257120F211A4','Testing Project Untuk Umar & Member & Journalist','','','','2003-11-12 00:00:00','2003-11-12 00:00:00','F29B5E6EEA4F8502216737425D','F29B61BC3183CB12E066E332F','','0','F36F96E4EA83CB95AC4DC601F2',1,'updated','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10','0','ic','F74B696E86AA0CA5819A4FB36C',2),('F8D3393EBD35654497E139295B','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','Cuma buat aris doang','','','','2003-11-13 00:00:00','2003-11-13 00:00:00','F29B5E6EEA4F8502216737425D','F29B616F1A1CC8B277C3FEDB39','','0','F3FB0D6714905E04E2586A8E1A',1,'','F36F8BFFF97F8A16505B8305F7','2003-11-13 10:54:19',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1),('F8F33C4B4E7728F3AB69400EA8','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','Project Untuk Frans Thamura','','','','2003-11-19 00:00:00','2003-11-19 00:00:00','F29B5E6EEA4F8502216737425D','F29B62B055CEDA8AB0E7635FED','','0','F501555A2ECD5AC8FCC32F4DD6',1,'','F36F8BFFF97F8A16505B8305F7','2004-02-20 17:22:01','F36F8BFFF97F8A16505B8305F7','2004-02-20 17:22:01','0','ic','F74B696E86AA0CA5819A4FB36C',2),('F8FD555F0676F9CB4D9DDE40B9','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','Project dari workspace yang pake email','Tidak ada description','Tdk ada background\r<br>&lt;br&gt;&lt;br&gt;there\'s no background','Tidak ada objective','2003-11-21 00:00:00','2003-11-21 00:00:00','F29B5F01575A67C4CEF5B0AFC0','F29B61BC3183CB12E066E332F','F7D6D340DBE94436A979AEEF0C','50','F36F8BFFF97F8A16505B8305F7',1,'Project Note\'s\r<br>&lt;br&gt;&lt;br&gt;yang bersangkutan harap segera lapor','F36F96E4EA83CB95AC4DC601F2','2004-02-18 17:25:00','F36F96E4EA83CB95AC4DC601F2','2004-02-18 17:25:00','0','ic','F74B696E86AA0CA5819A4FB36C',3),('F8FD820EF33CAB30DE0E5CC501','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','BlueOxygen Intercitra Project','','','','2003-11-21 00:00:00','2003-11-21 00:00:00','F29B5F9EFED0C98D41D5D9C0A0','F29B62B055CEDA8AB0E7635FED','','0','F501555A2ECD5AC8FCC32F4DD6',1,'','F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:18','F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:18','0','ic','F74B696E86AA0CA5819A4FB36C',2),('F969A328D2B4E2FACE7F3CB59D','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','Makin Phase 2','','','','2003-12-12 00:00:00','2003-12-12 00:00:00','F29B5F9EFED0C98D41D5D9C0A0','F29B61BC3183CB12E066E332F','','0','F36F8BFFF97F8A16505B8305F7',1,'','F501555A2ECD5AC8FCC32F4DD6','2004-02-19 16:14:21','F501555A2ECD5AC8FCC32F4DD6','0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1),('F93F3A14EFF391923E6229F390','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','Project Ketawa Ketiwi','','','','0002-11-30 00:00:00','0002-11-30 00:00:00','F29B5F01575A67C4CEF5B0AFC0','F29B6267D2CE64E45213EEA052','','0','F36F96E4EA83CB95AC4DC601F2',1,'','F36F8BFFF97F8A16505B8305F7','2003-12-04 12:51:25','F36F8BFFF97F8A16505B8305F7','2003-12-04 12:51:25','0','ic','F74B696E86AA0CA5819A4FB36C',1),('FAD1F2207512CE8432F948248A','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','Project baru untuk cek sinkronisasi','','','','2004-02-20 00:00:00','2004-02-20 00:00:00','F29B5E6EEA4F8502216737425D','F29B616F1A1CC8B277C3FEDB39','','0','FA89238CD9BCDF331DF9B845EB',1,'','F36F8BFFF97F8A16505B8305F7','2004-02-20 15:03:32',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `activity_project` ENABLE KEYS */;

--
-- Table structure for table `activity_project_comment`
--

DROP TABLE IF EXISTS `activity_project_comment`;
CREATE TABLE `activity_project_comment` (
  `id` varchar(28) NOT NULL default '',
  `project_id` varchar(28) NOT NULL default '',
  `user_id` varchar(28) NOT NULL default '',
  `comment` text,
  `file_name` text,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_project_comment`
--


/*!40000 ALTER TABLE `activity_project_comment` DISABLE KEYS */;
LOCK TABLES `activity_project_comment` WRITE;
INSERT INTO `activity_project_comment` VALUES ('F8FCF3D9F2A485230A28BC731B','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','test comment email','',NULL,'2003-11-21 13:22:33',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F8FD097E9C9078C565A3E13B3','F8CF4DAED752F9C07B439B29EB','F36F96E4EA83CB95AC4DC601F2','testing comment pake upload','F8FD097E9C9078C565A3E13B3localhost_aconix_log.2003-11-05.txt',NULL,'2003-11-21 13:46:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F8FD0D9D40DE946F268F44EF59','F8CF4DAED752F9C07B439B29EB','F36F96E4EA83CB95AC4DC601F2','comment lag\'i ah\r<br>coba testing doang neh....','F8FD0D9D40DE946F268F44EF59detail.jsp',NULL,'2003-11-21 13:50:41',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F8FD0E9FABB545B75CD8C80713','F8CF4DAED752F9C07B439B29EB','F36F96E4EA83CB95AC4DC601F2','Test lagi neh....\r<br>kalo berhasil berarti ok\'','F8FD0E9FABB545B75CD8C80713perubahan-tabel.txt',NULL,'2003-11-21 13:51:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F935901F09FDB12C75AFE7E1AE','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','test comment','F935901F09FDB12C75AFE7E1AElocalhost_aconix_log.2003-11-05.txt',NULL,'2003-12-02 13:14:44',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F9359B757D4A5122C8BB6E39F7','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','ini comment gue dedeng','',NULL,'2003-12-02 13:24:11',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F935AD55C23DB99BBFF0810C5','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','komentar dedeng','',NULL,'2003-12-02 13:46:31',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F935BF71229EE4B5BEDCAA700','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','commentar baru','F935BF71229EE4B5BEDCAA700localhost_aconix_log.2003-11-05.txt',NULL,'2003-12-02 14:03:38',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F935C09B567ABDB6D782493871','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','new comment','F935C09B567ABDB6D782493871Icon7EFDA3AC3.txt',NULL,'2003-12-02 14:04:45',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F9364DE257CFEBE7D1A1ACA622','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','comment gue..','F9364DE257CFEBE7D1A1ACA622Icon7EFDA3AC.txt',NULL,'2003-12-02 16:39:28',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F9364F4EE452654364BD11EB43','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','new comment ','',NULL,'2003-12-02 16:40:41',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F936504E0516C607813B3BAF23','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','new comment\r<br>','',NULL,'2003-12-02 16:41:46',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F93ACE21A5DBFEAC5B670D3F','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','test','',NULL,'2003-12-03 13:37:37',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F93F317F5222B1BF885A3AE','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','Test Comment','F93F317F5222B1BF885A3AEcontoh-blog.txt',NULL,'2003-12-04 10:04:41',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F93F33B3CE30F01F4ACA22AB40','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','lagi comment','',NULL,'2003-12-04 10:06:58',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F9A7B5E02A716C01FF04381A90','F8FD820EF33CAB30DE0E5CC501','F36F96E4EA83CB95AC4DC601F2','New Comment\r<br>1. personal comment\r<br>2. general comment','F9A7B5E02A716C01FF04381A90trace.txt',NULL,'2003-12-24 17:10:19',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAC71D82E9D4340DC5D198279D','F8FD555F0676F9CB4D9DDE40B9','F36F8BFFF97F8A16505B8305F7','Phasellus vel neque. Nulla quis nisl. Cras in diam eget libero volutpat imperdiet. Maecenas a nulla. Integer nisl. Aliquam condimentum lectus at wisi. Nam vel diam in purus dignissim sodales. Nullam auctor erat quis ipsum. ','',NULL,'2004-02-18 12:34:11',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAC72273A97AF3A033332A3542','F8FD555F0676F9CB4D9DDE40B9','F3FB0D6714905E04E2586A8E1A','Vivamus eget felis eu est rhoncus pretium. ','',NULL,'2004-02-18 12:39:11',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAE72D78BCFADC32CBB297572C','FAD1F2207512CE8432F948248A','F36F8BFFF97F8A16505B8305F7','New comment from Umar for \"Project baru untuk tes Sinkronisasi\"','','null','2004-02-24 18:00:04',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAF51B640C654766F10C3E602A','F969A328D2B4E2FACE7F3CB59D','F36F8BFFF97F8A16505B8305F7','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin ac nunc. Sed vitae pede. Nunc elit. In et purus non diam vehicula feugiat. ','',NULL,'2004-02-27 11:00:47',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAF5C0A5EB2E699A0B036C8E38','F969A328D2B4E2FACE7F3CB59D','F501555A2ECD5AC8FCC32F4DD6','Quisque eget nulla nec felis varius faucibus. Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. ','',NULL,'2004-02-27 13:54:56',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `activity_project_comment` ENABLE KEYS */;

--
-- Table structure for table `activity_task`
--

DROP TABLE IF EXISTS `activity_task`;
CREATE TABLE `activity_task` (
  `id` varchar(28) NOT NULL default '',
  `project_id` varchar(28) default NULL,
  `task_name` varchar(128) default NULL,
  `description` varchar(128) default NULL,
  `assigner_id` varchar(28) NOT NULL default '',
  `pic_id` varchar(28) NOT NULL default '',
  `company_id` varchar(28) NOT NULL default '',
  `division` varchar(128) default NULL,
  `department` varchar(128) default NULL,
  `due_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `percent_complete` tinyint(3) default NULL,
  `duration_value` tinyint(4) default NULL,
  `duration_unit` varchar(28) default NULL,
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `finish_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `predecessor` varchar(28) default NULL,
  `resource_name` varchar(128) default NULL,
  `task_notes` text,
  `critical_task` tinyint(1) default '1',
  `priority` varchar(28) default NULL,
  `deadline_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `constraint_type` tinyint(1) default '1',
  `constraint_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `mile_stones` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default '',
  `site_id` varchar(28) default NULL,
  `disable_flag` tinyint(1) NOT NULL default '0',
  `version` int(8) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_task`
--


/*!40000 ALTER TABLE `activity_task` DISABLE KEYS */;
LOCK TABLES `activity_task` WRITE;
INSERT INTO `activity_task` VALUES ('FACD15667EDFFF35D02EA4E7A4','F8FD820EF33CAB30DE0E5CC501','task tambahan','','F36F96E4EA83CB95AC4DC601F2','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','','','2004-02-19 00:00:00',0,0,'Second(s)','2004-02-19 00:00:00','2004-02-19 00:00:00','','','harus dilihat',0,'F29B60033659548CF158DD9A0D','2004-02-19 00:00:00',0,'2004-02-19 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:19',NULL,'0000-00-00 00:00:00','0','F29B61FCC4924584D4222C7178','F74B696E86AA0CA5819A4FB36C',0,1),('F8F3456E5FA831ABA32B7728C8','0','Task untuk Dedeng','','F36F96E4EA83CB95AC4DC601F2','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2003-11-19 00:00:00',0,0,'Second(s)','2003-11-19 00:00:00','2003-11-19 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2003-11-19 00:00:00',0,'2003-11-19 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2','2003-11-21 10:27:28','F36F96E4EA83CB95AC4DC601F2','2003-11-20 14:20:51','0','F29B6325372E79EAB162E84386','F74B696E86AA0CA5819A4FB36C',0,1),('F8D47AF49E8C788EFA76DBF99','0','TAsft Aris untuk Frans','','F3FB0D6714905E04E2586A8E1A','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','','','2003-11-13 00:00:00',0,0,'Second(s)','2003-11-13 00:00:00','2003-11-13 00:00:00','','','',0,'F29B5F9EFED0C98D41D5D9C0A0','2003-11-13 00:00:00',0,'2003-11-13 00:00:00',0,'F3FB0D6714905E04E2586A8E1A','2003-11-13 16:45:58',NULL,'0000-00-00 00:00:00','0','F29B6325372E79EAB162E84386','F74B696E86AA0CA5819A4FB36C',0,1),('F9A7ED7D65394AD257FF2408E4','0','Create New Task from Document','','F36F96E4EA83CB95AC4DC601F2','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2003-12-24 00:00:00',0,0,'Second(s)','2003-12-24 00:00:00','2003-12-24 00:00:00','','','',0,'F29B5F9EFED0C98D41D5D9C0A0','2003-12-24 00:00:00',0,'2003-12-24 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2','2004-02-24 11:15:28','F36F96E4EA83CB95AC4DC601F2','2004-02-24 11:15:28','0','F29B62B055CEDA8AB0E7635FED','F74B696E86AA0CA5819A4FB36C',0,2),('F9A800C3DF6533E880A3C1DF42','0','I\'ve assigned this task to every body','','F36F8BFFF97F8A16505B8305F7','F9A204566AA30595ACD597D51E','F337B149F1D7EB47954BF7EF7','','','2003-12-24 00:00:00',0,0,'Second(s)','2003-12-24 00:00:00','2003-12-24 00:00:00','','','updated',0,'F29B60033659548CF158DD9A0D','2003-12-24 00:00:00',0,'2003-12-24 00:00:00',0,'F36F8BFFF97F8A16505B8305F7','2004-02-10 15:06:00','F36F8BFFF97F8A16505B8305F7','2004-02-10 15:06:00','0','F29B61FCC4924584D4222C7178','F74B696E86AA0CA5819A4FB36C',0,2),('F9A809F7D7D77E10ED000FB893','0','Create new task for new member','','F36F8BFFF97F8A16505B8305F7','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','','','2003-12-24 00:00:00',57,0,'Second(s)','2003-12-24 00:00:00','2003-12-24 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2003-12-24 00:00:00',0,'2003-12-24 00:00:00',0,'F36F8BFFF97F8A16505B8305F7','2004-02-24 12:52:19','F36F8BFFF97F8A16505B8305F7','2004-02-24 12:52:19','0','F29B61FCC4924584D4222C7178','F74B696E86AA0CA5819A4FB36C',1,2),('FA7E7AE92F8EF97E713E9F6F12','F969A328D2B4E2FACE7F3CB59D','new task','','F36F8BFFF97F8A16505B8305F7','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2004-02-04 00:00:00',0,0,'Second(s)','2004-02-04 00:00:00','2004-02-04 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2004-02-04 00:00:00',0,'2004-02-04 00:00:00',0,'F36F8BFFF97F8A16505B8305F7','2004-02-04 10:03:40',NULL,'0000-00-00 00:00:00','0','F29B616F1A1CC8B277C3FEDB39','null',0,1),('FAC85AABC126CB37F76C3E147C','F8FD555F0676F9CB4D9DDE40B9','Task Buat Dedeng','','F36F8BFFF97F8A16505B8305F7','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2004-02-18 00:00:00',0,0,'Second(s)','2004-02-18 00:00:00','2004-02-18 00:00:00','','','',0,'F29B5F9EFED0C98D41D5D9C0A0','2004-02-18 00:00:00',0,'2004-02-18 00:00:00',0,'F36F8BFFF97F8A16505B8305F7','2004-02-18 18:20:13',NULL,'0000-00-00 00:00:00','0','F29B61FCC4924584D4222C7178','null',0,1),('FAC8373D9AA2683CF074C1B392','F8FD555F0676F9CB4D9DDE40B9','Task Buat Umar','','F36F8BFFF97F8A16505B8305F7','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','','','2004-02-18 00:00:00',0,0,'Second(s)','2004-02-18 00:00:00','2004-02-18 00:00:00','','','',0,'F29B5E6EEA4F8502216737425D','2004-02-18 00:00:00',0,'2004-02-18 00:00:00',0,'F36F8BFFF97F8A16505B8305F7','2004-02-18 17:41:55',NULL,'0000-00-00 00:00:00','0','F29B616F1A1CC8B277C3FEDB39','null',0,1),('FAC85B02B77D43E8E00AE32E4B','F8FD555F0676F9CB4D9DDE40B9','Task Buat Ginanjar','','F36F8BFFF97F8A16505B8305F7','FA89238CD9BCDF331DF9B845EB','F337B149F1D7EB47954BF7EF7','','','2004-02-18 00:00:00',0,0,'Second(s)','2004-02-18 00:00:00','2004-02-18 00:00:00','','','',0,'F29B5E6EEA4F8502216737425D','2004-02-18 00:00:00',0,'2004-02-18 00:00:00',0,'F36F8BFFF97F8A16505B8305F7','2004-02-18 18:20:42',NULL,'0000-00-00 00:00:00','0','F29B61FCC4924584D4222C7178','null',0,1),('F9697A3C1DCD3A32BB4F3C6F95','F8FD820EF33CAB30DE0E5CC501','New Task','New Task Added #2','F36F96E4EA83CB95AC4DC601F2','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','','','2003-12-12 00:00:00',0,0,'Second(s)','2003-12-12 00:00:00','2003-12-12 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2003-12-12 00:00:00',0,'2003-12-12 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:19',NULL,'0000-00-00 00:00:00','0','F29B62B055CEDA8AB0E7635FED','F74B696E86AA0CA5819A4FB36C',0,1),('FAD0F1C09BA0BE7231BA7E15E8','F8FD820EF33CAB30DE0E5CC501','New Task for Ginanjar','New Task added to Server DB','F36F96E4EA83CB95AC4DC601F2','FA89238CD9BCDF331DF9B845EB','F337B149F1D7EB47954BF7EF7','','','2004-02-20 00:00:00',0,0,'Second(s)','2004-02-20 00:00:00','2004-02-20 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2004-02-20 00:00:00',0,'2004-02-20 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:19',NULL,'0000-00-00 00:00:00','0','F29B616F1A1CC8B277C3FEDB39','F74B696E86AA0CA5819A4FB36C',0,1),('FAD2714E2234C4AF2AB3B1930B','F8F33C4B4E7728F3AB69400EA8','Task untuk Frans Thamura','Task untuk Frans Thamura, Project untuk Frans Thamura','F36F8BFFF97F8A16505B8305F7','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','','','2004-02-20 00:00:00',0,0,'Second(s)','2004-02-20 00:00:00','2004-02-20 00:00:00','','','',0,'F29B5E6EEA4F8502216737425D','2004-02-20 00:00:00',0,'2004-02-20 00:00:00',0,'F36F8BFFF97F8A16505B8305F7','2004-02-27 14:24:13','F501555A2ECD5AC8FCC32F4DD6','2004-02-27 14:24:13','0','F29B616F1A1CC8B277C3FEDB39','F74B696E86AA0CA5819A4FB36C',0,2),('FAE5BC15B5614517AACE1062E8','0','Task khusus Untuk Umar','','F36F96E4EA83CB95AC4DC601F2','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','','','2004-02-24 00:00:00',0,0,'Second(s)','2004-02-24 00:00:00','2004-02-24 00:00:00','','','',0,'F29B5E6EEA4F8502216737425D','2004-02-24 00:00:00',0,'2004-02-24 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2','2004-02-24 11:16:55',NULL,'0000-00-00 00:00:00','0','F29B616F1A1CC8B277C3FEDB39','F74B696E86AA0CA5819A4FB36C',0,1),('FAF506AFCFC61A8E401E8242E6','F969A328D2B4E2FACE7F3CB59D','Document Assessment','Collecting documents necessary for the final report','F36F8BFFF97F8A16505B8305F7','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2004-02-27 00:00:00',0,0,'Second(s)','2004-02-27 00:00:00','2004-02-27 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2004-02-27 00:00:00',1,'0000-00-00 00:00:00',0,'F36F8BFFF97F8A16505B8305F7','2004-02-27 10:33:09',NULL,'0000-00-00 00:00:00','0','F29B616F1A1CC8B277C3FEDB39','null',0,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `activity_task` ENABLE KEYS */;

--
-- Table structure for table `activity_task_comment`
--

DROP TABLE IF EXISTS `activity_task_comment`;
CREATE TABLE `activity_task_comment` (
  `id` varchar(28) NOT NULL default '',
  `task_id` varchar(28) NOT NULL default '',
  `user_id` varchar(28) NOT NULL default '',
  `comment` text,
  `file_name` text,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  `disable_flag` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_task_comment`
--


/*!40000 ALTER TABLE `activity_task_comment` DISABLE KEYS */;
LOCK TABLES `activity_task_comment` WRITE;
INSERT INTO `activity_task_comment` VALUES ('FAC70A851439E6A602E65B94EF','FAC70726C8B78586917761AD46','F36F8BFFF97F8A16505B8305F7','Quisque eget nulla nec felis varius faucibus. Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. Fusce mattis malesuada pede. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. ','',NULL,'2004-02-18 12:13:34',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F9C15835FC1BD5BDBDA697EFFC','F9A809F7D7D77E10ED000FB893','F36F8BFFF97F8A16505B8305F7','my comment again\r<br>please forward me\r<br>1. test\r<br>2. test\r<br>3. test','',NULL,'2003-12-29 16:37:58',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F9C150F90CF16492B634A2E9F0','F9A809F7D7D77E10ED000FB893','F36F8BFFF97F8A16505B8305F7','comment from me.','',NULL,'2003-12-29 16:29:45',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F9C14DB4109A75D9082A04AD71','F9A809F7D7D77E10ED000FB893','F36F8BFFF97F8A16505B8305F7','this one is my last comment\r<br>please remember me OK ;-)','F9C14DB4109A75D9082A04AD71ask.gif',NULL,'2003-12-29 16:27:00',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F8FC58A3FA8771D67B0FD71F76','F8F3456E5FA831ABA32B7728C8','F36F96E4EA83CB95AC4DC601F2','kasih comment','F8FC58A3FA8771D67B0FD71F76localhost_aconix_log.2003-11-05.txt',NULL,'2003-11-21 10:33:24',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F8F8800CE550C15C75F2552B03','F8F3456E5FA831ABA32B7728C8','F36F96E4EA83CB95AC4DC601F2','gadfsafsdfdasfsaf','F8F8800CE550C15C75F2552B03report.jpg',NULL,'2003-11-20 16:38:20',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F8F800113912555289C8DE9C88','F8F3456E5FA831ABA32B7728C8','F501555A2ECD5AC8FCC32F4DD6','test comment','',NULL,'2003-11-20 14:17:39',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('F8F87231926E3568C4BBE7EB64','F8F3456E5FA831ABA32B7728C8','F36F96E4EA83CB95AC4DC601F2','test','',NULL,'2003-11-20 16:22:18',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC70B2C3174DA9C4E9099D4A7','FAC70726C8B78586917761AD46','F36F8BFFF97F8A16505B8305F7','Donec et magna. Suspendisse fermentum luctus enim. Aliquam porta tristique lorem. Morbi rutrum dui at mauris. In nulla mauris, cursus vel, imperdiet vel, vulputate a, elit. Sed laoreet tempor wisi. Mauris egestas condimentum orci. Praesent a mauris. Suspendisse pharetra dolor. Fusce eleifend neque at dui. \r<br>','',NULL,'2004-02-18 12:13:51',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC7215BEC855265C6A169F757','FAC71EC536349619C03FEEEBFF','F501555A2ECD5AC8FCC32F4DD6','Vivamus eget felis eu est rhoncus pretium. ','',NULL,'2004-02-18 12:38:08',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC721D67B4715BDD96765AD77','FAC71EC536349619C03FEEEBFF','F36F8BFFF97F8A16505B8305F7','Vivamus eget felis eu est rhoncus pretium. ','',NULL,'2004-02-18 12:38:30',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC722A04BA788EEE19D513EC6','FAC70726C8B78586917761AD46','F3FB0D6714905E04E2586A8E1A','Vestibulum sit amet augue non wisi mattis lacinia. Praesent eget est. ','',NULL,'2004-02-18 12:39:37',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC838776AD1FC7741A3548DA7','FAC8373D9AA2683CF074C1B392','F36F8BFFF97F8A16505B8305F7','asd kasdjj asldkj asdlkjasd  ','',NULL,'2004-02-18 17:43:06',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC85C3522FDCBD5F655869495','FAC85AABC126CB37F76C3E147C','F36F8BFFF97F8A16505B8305F7','Komentar ya, deng!!!','',NULL,'2004-02-18 18:21:59',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC85C659A2BFC196BEA9EF05B','FAC85AABC126CB37F76C3E147C','F36F8BFFF97F8A16505B8305F7','Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque ut odio. ','',NULL,'2004-02-18 18:22:24',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAC85CC702E986FB5AFC325959','FAC85AABC126CB37F76C3E147C','F36F8BFFF97F8A16505B8305F7','Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. Fusce mattis malesuada pede. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. ','',NULL,'2004-02-18 18:22:42',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FACD395E56D05D75E835B4A228','FACD15667EDFFF35D02EA4E7A4','F36F8BFFF97F8A16505B8305F7','Comment baru','','null','2004-02-19 17:02:41',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAF53B441A44095E7AAB989498','FAF506AFCFC61A8E401E8242E6','F36F8BFFF97F8A16505B8305F7','Curabitur odio lectus, adipiscing sed, consequat vitae, rhoncus sit amet, quam. Aliquam tortor. Phasellus vel neque. Nulla quis nisl. Cras in diam eget libero volutpat imperdiet. \r<br>\r<br>Maecenas a nulla. Integer nisl. Aliquam condimentum lectus at wisi. \r<br>\r<br>Nam vel diam in purus dignissim sodales. Nullam auctor erat quis ipsum. \r<br>','',NULL,'2004-02-27 11:29:19',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FAF5C3AE3BE7712166ADF0BBA5','FAF506AFCFC61A8E401E8242E6','F501555A2ECD5AC8FCC32F4DD6','Quisque eget nulla nec felis varius faucibus. Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. ','',NULL,'2004-02-27 13:58:45',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),('FB046853617569943903E1B82E','F9A800C3DF6533E880A3C1DF42','F36F96E4EA83CB95AC4DC601F2','My one-liner comment','','null','2004-03-01 10:12:48',NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `activity_task_comment` ENABLE KEYS */;

--
-- Table structure for table `activity_task_security`
--

DROP TABLE IF EXISTS `activity_task_security`;
CREATE TABLE `activity_task_security` (
  `id` varchar(28) NOT NULL default '',
  `task_id` varchar(28) NOT NULL default '',
  `role_id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_task_security`
--


/*!40000 ALTER TABLE `activity_task_security` DISABLE KEYS */;
LOCK TABLES `activity_task_security` WRITE;
INSERT INTO `activity_task_security` VALUES ('F9A802E0BA6DE83DB2226464B3','F9A800C3DF6533E880A3C1DF42','all','F36F8BFFF97F8A16505B8305F7','2004-02-10 15:06:00',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('FAE5BC91E9875D32528FF6AE5A','FAE5BC15B5614517AACE1062E8','3','F36F96E4EA83CB95AC4DC601F2','2004-02-24 11:16:55',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
UNLOCK TABLES;
/*!40000 ALTER TABLE `activity_task_security` ENABLE KEYS */;

--
-- Table structure for table `ads_banner`
--

DROP TABLE IF EXISTS `ads_banner`;
CREATE TABLE `ads_banner` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(35) default NULL,
  `display_style` varchar(20) default NULL,
  `status` varchar(10) default NULL,
  `source` varchar(50) default NULL,
  `thumbnail` varchar(50) default NULL,
  `image` varchar(50) default NULL,
  `caption` varchar(25) default NULL,
  `width` varchar(5) default NULL,
  `height` varchar(5) default NULL,
  `alignment` varchar(10) default NULL,
  `artist` varchar(50) default NULL,
  `alt_text` varchar(50) default NULL,
  `keywords` varchar(50) default NULL,
  `created` varchar(50) default NULL,
  `modified` varchar(50) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads_banner`
--


/*!40000 ALTER TABLE `ads_banner` DISABLE KEYS */;
LOCK TABLES `ads_banner` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `ads_banner` ENABLE KEYS */;

--
-- Table structure for table `ads_client`
--

DROP TABLE IF EXISTS `ads_client`;
CREATE TABLE `ads_client` (
  `id` varchar(28) NOT NULL default '',
  `active_flag` varchar(25) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `active_flag` (`active_flag`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads_client`
--


/*!40000 ALTER TABLE `ads_client` DISABLE KEYS */;
LOCK TABLES `ads_client` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `ads_client` ENABLE KEYS */;

--
-- Table structure for table `ads_product`
--

DROP TABLE IF EXISTS `ads_product`;
CREATE TABLE `ads_product` (
  `id` varchar(28) NOT NULL default '',
  `section_id` varchar(28) default NULL,
  `category_id` varchar(28) default NULL,
  `client_id` varchar(28) default NULL,
  `description` varchar(255) default NULL,
  `product_url` varchar(255) default NULL,
  `url_image` varchar(255) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads_product`
--


/*!40000 ALTER TABLE `ads_product` DISABLE KEYS */;
LOCK TABLES `ads_product` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `ads_product` ENABLE KEYS */;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `id` bigint(20) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `birthday` date default NULL,
  `city` varchar(255) default NULL,
  `idNumber` varchar(255) default NULL,
  `idType` varchar(255) default NULL,
  `marriageStatus` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `zipNumber` varchar(255) default NULL,
  `rank` varchar(255) default NULL,
  `uplineId` bigint(20) default NULL,
  `faxNumber` varchar(255) default NULL,
  `phoneNumber` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uplineId` (`uplineId`),
  KEY `uplineId_2` (`uplineId`),
  KEY `uplineId_3` (`uplineId`),
  KEY `uplineId_4` (`uplineId`),
  KEY `uplineId_5` (`uplineId`),
  KEY `uplineId_6` (`uplineId`),
  KEY `uplineId_7` (`uplineId`),
  KEY `uplineId_8` (`uplineId`),
  KEY `uplineId_9` (`uplineId`),
  KEY `uplineId_10` (`uplineId`),
  KEY `uplineId_11` (`uplineId`),
  KEY `uplineId_12` (`uplineId`),
  KEY `uplineId_13` (`uplineId`),
  KEY `uplineId_14` (`uplineId`),
  KEY `uplineId_15` (`uplineId`),
  KEY `uplineId_16` (`uplineId`),
  KEY `uplineId_17` (`uplineId`),
  KEY `uplineId_18` (`uplineId`),
  KEY `uplineId_19` (`uplineId`),
  KEY `uplineId_20` (`uplineId`),
  KEY `uplineId_21` (`uplineId`),
  KEY `uplineId_22` (`uplineId`),
  KEY `uplineId_23` (`uplineId`),
  KEY `uplineId_24` (`uplineId`),
  KEY `uplineId_25` (`uplineId`),
  KEY `uplineId_26` (`uplineId`),
  KEY `uplineId_27` (`uplineId`),
  KEY `uplineId_28` (`uplineId`),
  KEY `uplineId_29` (`uplineId`),
  KEY `uplineId_30` (`uplineId`),
  KEY `uplineId_31` (`uplineId`),
  KEY `uplineId_32` (`uplineId`),
  KEY `uplineId_33` (`uplineId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--


/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
LOCK TABLES `agent` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` varchar(28) NOT NULL default '',
  `template_id` varchar(28) default NULL,
  `section_id` varchar(28) default NULL,
  `category_id` varchar(28) default NULL,
  `category` varchar(25) default NULL,
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) default NULL,
  `abstract` text,
  `content` text,
  `syntax` text,
  `example` text,
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `adsproduct_id1` varchar(255) default NULL,
  `adsproduct_id2` varchar(255) default NULL,
  `adsbanner_id1` varchar(255) default NULL,
  `adsbanner_id2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--


/*!40000 ALTER TABLE `article` DISABLE KEYS */;
LOCK TABLES `article` WRITE;
INSERT INTO `article` VALUES ('F683CD170CECCC9BBB747D2E7',NULL,NULL,NULL,NULL,'test',NULL,'tadfsafsaf','fdasfasf\r\n<br> dfasjklfsafjklasfk;\r\n',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'F162B448063A847319E641EF7D','2003-08-27 09:03:37','F162B448063A847319E641EF7D','2003-08-27 09:03:37','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
UNLOCK TABLES;
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

--
-- Table structure for table `article_comment`
--

DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment` (
  `id` varchar(28) NOT NULL default '',
  `article_id` int(11) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `title` varchar(128) default NULL,
  `comment` varchar(255) default NULL,
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article_comment`
--


/*!40000 ALTER TABLE `article_comment` DISABLE KEYS */;
LOCK TABLES `article_comment` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `article_comment` ENABLE KEYS */;

--
-- Table structure for table `assign_descriptor`
--

DROP TABLE IF EXISTS `assign_descriptor`;
CREATE TABLE `assign_descriptor` (
  `id` varchar(28) NOT NULL default '',
  `descriptor_id` varchar(28) default NULL,
  `osml_id` varchar(28) default NULL,
  `description` varchar(255) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_descriptor`
--


/*!40000 ALTER TABLE `assign_descriptor` DISABLE KEYS */;
LOCK TABLES `assign_descriptor` WRITE;
INSERT INTO `assign_descriptor` VALUES ('E8F8EF22D39CECB584EE80B0A9','23','E8D4BE646EF710FAB3F79BE639','Article - Standard',1,'1','2002-05-29 02:01:24','1','2001-09-16 09:56:23','ic','EE185CE0B82B41C1724F284685'),('F2E928538511FC5C0F7C7F79F7','F186FA34E6B83A503DEE249E3','E8D4BE646EF710FAB3F79BE639','Quote of the Day',1,'1','2003-01-23 10:50:29',NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('F06B8143AABD59281435AC5D40','EE1634B19EB64BB12485263F79','E8D4BE646EF710FAB3F79BE639','News',1,'1','2003-01-15 11:14:11','1','2003-01-15 11:14:11','ic','EE185CE0B82B41C1724F284685'),('F2C6410384749EBF65838E89DC','EE16354AB187B638CC4579F8B6','E8D4BE646EF710FAB3F79BE639','Press Release',1,'1','2003-01-16 16:10:53',NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('F2C641535A56BD537944FF1D21','F186E0333C668AE9C8CFD62426','E8D4BE646EF710FAB3F79BE639','Tips and Trick',1,'1','2003-01-16 16:11:06',NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('F2C64182B77EF14F6711BF92FC','F1157841F5337A8CFCCD319BB2','E8D4BE646EF710FAB3F79BE639','Doc Pooling',1,'1','2003-01-16 16:11:23',NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('F2E9240921DE9DC99BAEEF7B71','E7A77F657568CBF5B670623DCD','E8D4BE646EF710FAB3F79BE639','FAQ',1,'1','2003-01-23 10:45:49',NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('F2E92679A4C9AB68203E499FE7','E7A781CFBA45A3CB44C81D8236','E8D4BE646EF710FAB3F79BE639','WebLink',1,'1','2003-01-23 10:48:26',NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `assign_descriptor` ENABLE KEYS */;

--
-- Table structure for table `assign_osml`
--

DROP TABLE IF EXISTS `assign_osml`;
CREATE TABLE `assign_osml` (
  `id` varchar(28) NOT NULL default '',
  `osml_id` varchar(28) default NULL,
  `description` varchar(255) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_osml`
--


/*!40000 ALTER TABLE `assign_osml` DISABLE KEYS */;
LOCK TABLES `assign_osml` WRITE;
INSERT INTO `assign_osml` VALUES ('E8D4C292684B9B5C9F467E97A3','E8D4BE646EF710FAB3F79BE639','',1,'1','2002-05-29 01:55:18',NULL,'0000-00-00 00:00:00','IC','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `assign_osml` ENABLE KEYS */;

--
-- Table structure for table `assign_user_site`
--

DROP TABLE IF EXISTS `assign_user_site`;
CREATE TABLE `assign_user_site` (
  `id` varchar(28) NOT NULL default '',
  `site_id` varchar(28) default NULL,
  `user_id` varchar(28) default NULL,
  `description` varchar(255) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_user_site`
--


/*!40000 ALTER TABLE `assign_user_site` DISABLE KEYS */;
LOCK TABLES `assign_user_site` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `assign_user_site` ENABLE KEYS */;

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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `active_flag` tinyint(1) NOT NULL default '1',
  `status_id` char(2) NOT NULL default 'ic',
  `site_id` varchar(28) default NULL,
  `reward_point` int(11) default NULL,
  `name_visible` tinyint(1) default NULL,
  `email_visible` tinyint(1) default NULL,
  `jive_id` bigint(20) NOT NULL auto_increment,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `jive_id` (`jive_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_user`
--


/*!40000 ALTER TABLE `backend_user` DISABLE KEYS */;
LOCK TABLES `backend_user` WRITE;
INSERT INTO `backend_user` VALUES ('1','admin','YWRtaW4=','Administrator','Workspace','F337B149F1D7EB47954BF7EF7','F2E8E299E96959106BE15AF29B','admin@intercitra.com','Jl. Cempaka Putih Tengah II','Blok C No. 21 Jak-Pus','Jakarta','','1',1,1,NULL,'2005-08-11 09:27:46','1','2003-09-27 10:27:35',1,'ip','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,1),('F162B448063A847319E641EF7D','makin','bWFraW4=','Matahari Kahuripan','Administrator','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','dedeng@intercitra.com','','','','','3',1,1,NULL,'2003-11-10 15:44:59','1','2003-09-27 14:46:12',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,3),('F36F96E4EA83CB95AC4DC601F2','umar','dW1hcg==','Umar','Khatab','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','','','','','','3',1,1,NULL,'2003-10-01 13:40:05','F36F96E4EA83CB95AC4DC601F2','2003-10-01 13:39:58',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,7),('F3FB0D6714905E04E2586A8E1A','aris','YXJpcw==','Aris','Jatmika','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','aris@intercitra.com','','','','','3',1,1,'1','2003-11-11 16:28:18','1','2003-11-11 16:28:18',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,8),('F501555A2ECD5AC8FCC32F4DD6','frans','ZnJhbnM=','Frans','Thamura','F337B149F1D7EB47954BF7EF7','F2E8E299E96959106BE15AF29B','frans@intercitra.com','','','','','3',1,1,'1','2003-11-14 16:03:29','1','2003-11-11 16:28:35',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,9),('F53FAAF09AB84F412CDA27FF72','shadi','ZW1idW5n','Sunaryo','Hadi','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','shadi@adelva.com','','','','','3',1,0,'1','2003-09-10 11:38:47','1','2003-09-10 11:38:47',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,10),('F36F8BFFF97F8A16505B8305F7','dedeng','ZGVkZW5n','Dedeng','Meilani','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','dedeng@intercitra.com','','','','','3',1,1,NULL,'2004-03-29 12:41:17','1','2004-02-11 15:04:19',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,6),('F9A204566AA30595ACD597D51E','umariah','dW1hcmlhaA==','Umariah','','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','','','','','','F9A202E61CD5BE6BE70F60BC30',1,0,'1','2003-12-23 14:38:41','1','2003-12-23 14:38:41',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,12),('FA89238CD9BCDF331DF9B845EB','ginanjar','Z2luYW5qYXI=','Ginanjar','Utama','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','','','','','','FA84B7C4A3DA2013FA2CEA182B',1,1,'1','2004-02-06 11:47:35','1','2004-02-06 11:47:35',1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,13);
UNLOCK TABLES;
/*!40000 ALTER TABLE `backend_user` ENABLE KEYS */;

--
-- Table structure for table `beneficiary`
--

DROP TABLE IF EXISTS `beneficiary`;
CREATE TABLE `beneficiary` (
  `id` bigint(20) NOT NULL default '0',
  `address` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `birthday` date default NULL,
  `city` varchar(255) default NULL,
  `faxNumber` varchar(255) default NULL,
  `height` double default NULL,
  `idNumber` varchar(255) default NULL,
  `idType` varchar(255) default NULL,
  `marriageStatus` varchar(255) default NULL,
  `occupation` varchar(255) default NULL,
  `phoneNumber` varchar(255) default NULL,
  `productType` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `weight` double default NULL,
  `zipNumber` varchar(255) default NULL,
  `claim` decimal(19,2) default NULL,
  `premium` decimal(19,2) default NULL,
  `paymentStatus` varchar(255) default NULL,
  `rank` varchar(255) default NULL,
  `registrationDay` date default NULL,
  `uplineId` bigint(20) default NULL,
  `agentId` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `uplineId` (`uplineId`),
  KEY `agentId` (`agentId`),
  KEY `uplineId_2` (`uplineId`),
  KEY `agentId_2` (`agentId`),
  KEY `uplineId_3` (`uplineId`),
  KEY `agentId_3` (`agentId`),
  KEY `uplineId_4` (`uplineId`),
  KEY `agentId_4` (`agentId`),
  KEY `uplineId_5` (`uplineId`),
  KEY `agentId_5` (`agentId`),
  KEY `uplineId_6` (`uplineId`),
  KEY `agentId_6` (`agentId`),
  KEY `uplineId_7` (`uplineId`),
  KEY `agentId_7` (`agentId`),
  KEY `uplineId_8` (`uplineId`),
  KEY `agentId_8` (`agentId`),
  KEY `uplineId_9` (`uplineId`),
  KEY `agentId_9` (`agentId`),
  KEY `uplineId_10` (`uplineId`),
  KEY `agentId_10` (`agentId`),
  KEY `uplineId_11` (`uplineId`),
  KEY `agentId_11` (`agentId`),
  KEY `uplineId_12` (`uplineId`),
  KEY `agentId_12` (`agentId`),
  KEY `uplineId_13` (`uplineId`),
  KEY `agentId_13` (`agentId`),
  KEY `uplineId_14` (`uplineId`),
  KEY `agentId_14` (`agentId`),
  KEY `uplineId_15` (`uplineId`),
  KEY `agentId_15` (`agentId`),
  KEY `uplineId_16` (`uplineId`),
  KEY `uplineId_17` (`uplineId`),
  KEY `agentId_16` (`agentId`),
  KEY `uplineId_18` (`uplineId`),
  KEY `agentId_17` (`agentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary`
--


/*!40000 ALTER TABLE `beneficiary` DISABLE KEYS */;
LOCK TABLES `beneficiary` WRITE;
INSERT INTO `beneficiary` VALUES (1,'','asd','1999-01-01','','',0,'','KTP','','','','KARUNIA MAS','female',0,'14568','10.00','14.00',NULL,'Agent','2005-07-29',NULL,NULL),(2,'','ggg','1999-01-01','','',0,'','KTP','','','','KARUNIA MAS','female',0,'14789','0.01','2589652211145.00',NULL,'Agent','2005-07-29',NULL,NULL),(3,'','aaa','1999-01-01','','',0,'','KTP','','','','KARUNIA MAS','',0,'47895','14511221212454.00','4545412221.15',NULL,'Agent','2005-07-29',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `beneficiary` ENABLE KEYS */;

--
-- Table structure for table `blueoxygen_project`
--

DROP TABLE IF EXISTS `blueoxygen_project`;
CREATE TABLE `blueoxygen_project` (
  `id` varchar(28) NOT NULL default '',
  `headline` varchar(128) default NULL,
  `subheadline` varchar(128) default NULL,
  `abstract` text,
  `body` text,
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blueoxygen_project`
--


/*!40000 ALTER TABLE `blueoxygen_project` DISABLE KEYS */;
LOCK TABLES `blueoxygen_project` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `blueoxygen_project` ENABLE KEYS */;

--
-- Table structure for table `blueoxygen_recipe`
--

DROP TABLE IF EXISTS `blueoxygen_recipe`;
CREATE TABLE `blueoxygen_recipe` (
  `id` varchar(28) NOT NULL default '',
  `headline` varchar(128) default NULL,
  `subheadline` varchar(128) default NULL,
  `abstract` text,
  `body` text,
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blueoxygen_recipe`
--


/*!40000 ALTER TABLE `blueoxygen_recipe` DISABLE KEYS */;
LOCK TABLES `blueoxygen_recipe` WRITE;
INSERT INTO `blueoxygen_recipe` VALUES ('F5019973FFB34748089D4991FF','Java Fundamental Training','Java Fundamental Training','The most complete and easy to use training material for dummies, but sorry, this is an Indonesian language material.','The most complete and easy to use training material for dummies, but sorry, this is an Indonesian language material.<p> Please click <a href=\"http://www.blueoxygen.org/download\">here</a>','F5207456097B06E9ABBAD36D32java-logo.jpg',NULL,'F36F8BFFF97F8A1','2003-05-13 14:38:02','F36F8BFFF97F8A1','2003-05-13 14:38:02','0','ic','F4DD64134EC050E3D0A256EA0D'),('F55DBB23B28C4593B960F2E088','Java Open Source','Java Open Source Comment','Artikel ini ditulis juga untuk mengajak rekan-rekan di Indonesia, yang menurut saya sangat sedikit berperan dalam dunia Open Source Java, sepertinya semua masih sibuk berkutik dengan platform Linux. Open Source Java adalah momentum berikutnya setelah revolusi Linux, karena dukungan yang lebih serius dari perusahaan-perusahaan besar. ','Tidak terasa sekarang Java sudah memasuki versi 1.4 (2003), dengan segala component pendukungnya yang semakin hari semakin banyak. Dulu tahun 1990-an saat kita pertama kali dikenalkan teknologi applet oleh sebuah perusahaan Javasoft, sebuah anak perusahaan Sun Microsystem, wah semua media mengatakan this is the new innovation. Dengan gembar gembor marketing mengatakan Java akan menjadi sebuah bahasa internet yang paling keren dan paling gres. Semua jadi basi. Java dengan appletnya (1995) diciptakan untuk menghasilkan teknologi terobosan baru, dimana saat itu HTML masih sangat simple, paling-paling GIF animated.\r\n<p>\r\nKemudian keluar Flash dari Macromedia, sebuah teknologi yang dapat menghasilkan animasi, gerakan untuk internet, yang bekerja seperti layaknya Director, produk keluaran Macromedia juga, yang terkenal untuk pengembangan kiosk, multimedia presentation dengan bahasa Lingo. Flash membuat applet menjadi basi, dan dengan bahasa ActionScript, membuat Flash malah diposisikan menggantikan HTML, karena animasi yang kompleks saja bisa hanya beberapa kilobyte, dan tentu saja jadi beratus-ratus kilobyte bila menggunakan DHTML.\r\n<p>\r\n\r\nPokoknya jaman internet makin seru saja, ada HTML 4.0 dengan DHTML, yang digabungkan dengan JavaScript, ada applet, Flash, Microsoft ASF, Real (sekarang di Open Source-kan dengan nama Helix). Sekarang malah semua ini menuju ke mobile, dengan munculnya Flash Player for Nokia Communicator, Opera for UIQ.\r\n<p>\r\n\r\nKalau dilihat dari perkembangan internet, Java sepertinya tertinggal, malah setelah keluar Visual Basic 6.0 dan Microsoft Transaction Server dan IIS dengan module Active Server Pages, Java mulai tidak popular, karena sudah kalah dari Flash, dan secara server side, Java hanya digantikan sebagai replacement Perl yang saat itu masih sangat popular saat itu. Apalagi dengan kemunculan PHP terutama versi 3 yang bisa 4-5 kali lebih cepat, yang bukan hanya menggeser popularitas Perl, juga membuat orang mulai beralih dari ASP, karena kemampuan multiplatformnya. Wah Java keteteran saat itu, terus terang saat itu saya tidak begitu suka dengan Java untuk pengembangan aplikasi internet, CGI lagi.\r\n<p>\r\n\r\nKemudian ternyata team research Sun tidak berdiam diri, mereka terus berjuang mengembangkan komponen pendukung Java, mulai dari JDBC sebagai lawan ODBC, malah sebuah paket kumpulan komponen dengan nama J2EE dikeluarkan (saat ini J2EE 1.4 masih beta), yah didalamnya ada EJB, dunia mulai bergeser deh. Apalagi setelah Weblogic (saat itu belum dibeli Bea), mengeluarkan Java Application Server. Di dunia lain yaitu industri OS, Linux muncul sebagai alternatif murah untuk OS pengganti Windows dan UNIX. Wah Java mulai deh dilirik orang. Karena dia bisa sebagai alternatif solusi Microsoft dengan teknologi ActiveX-nya.\r\n<p>\r\n\r\nTerus terang saja, sebenarnya sekitar tahun 1999, muncul standar baru yang membuat internet makin rumit, XML, JSP, JDBC, JMS, Flash 5, terus PHP4. \r\n<p>\r\n\r\nOrang-orang pendukung Open Source membuat project di BlackDown.org, sebuah project membuat Java versi Linux, dimana ini adalah sebuah project yang cukup buat kita-kita sebal sama perusahaan yang disebut Sun Microsystem, karena dia memboikot dan mengeluarkan versi Java for Linux dengan Borland, saya tidak tahu tepatnya JSDK 1.3 saat ini merupakan pengembangan dari versi Borland atau Blackdown. Kejadian ini sempat membuat leader project pada keluar dari blackdown.org. Hal yang sama terjadi lagi saat ini dengan JCP-nya Sun (Jason Hunter sebagai VP Apache berjuang demi Open Source, karena Sun sebagai pemilik Java dan JCP menolak memberikan dukungan implementasi Open Source Java). JCP berdalih akan memberikan standarisasi component Java dengan dana basiswa 3 juta dollar US, malah komponen yang disetujui dengan dalih kalau di setujui akan dijadikan bagian dari Java SDK, yah kita lihat deh. JCP ini adalah cikal bakal turut campur perusahaan didunia Open Source Java, karena perusahaan besar yang gila standar seperti IBM, Sun, Microsoft, Oracle, Accenture dan perusahaan Java kecil yang menyebar seperti semut mengerubuti JSR (Java Specification Request) dari JCP. \r\n<p>\r\n\r\nDengan kesulitan dalam development servlet, team Java di Sun ternyata mencontek cara kerja PHP dan ASP dengan meluncurkan JSP (JavaServer Pages), yang bekerja mirip dengan tags-tags, sehingga pengembangan aplikasi internet lebih cepat, walaupun JSP itu nanti di compile ulang menjadi servlet lagi. Solusi yang tidak baik, sehingga keluar deh project yang disebut Struts di Apache, atau Webwork di OpenSymphoni untuk pengembangan Java dengan MVC Pattern. Team Sturts ini yang menjadi pelopor JSTL (JavaServer Pages Tag Library) untuk JSP tentu saja.\r\n<p>\r\n\r\nSekitar akhir 1999, Apache mendapat source code untuk pengembangan servlet tersebut dengan project yang disebut JServ, sebuah project implementasi Servlet API, coba deh ke http://Java.apache.org disana masih ada keterangan lebih lanjut tentang JServ. Malah Oracle Application salah ERP kedua terhebat didunia, ERP yang notabene, versi 11i-nya didalamnya bukan ada Tomcat tetapi JServ, padahal product itu dilaunch tahun 2002. Kita harus maklum, karena saat itu Oracle baru masuk ke Open Source dan mengganti semua webservernya dengan Apache HTTP.\r\n<p>\r\n\r\nSaat itu mulai deh Stefano (saat itu masih mahasiswa dan pendiri XML Project di Apache), mengembangkan component mulai dari Cocoon, kemudian keluar XML (sekitar tahun 1999), dan team Apache membuat Xerces, Xalan, Sam Ruby salah satu contributor PHP dari IBM contribute SOAP, Craig McClanahan (arsitek Tomcat yang bekerja di Sun). Hebatnya, saat yang bersamaan PHP 4 masih versi beta, saat itu pula Sam Ruby membuat PHP Java connector, sekarang dia salah satu pengluhur Apache. Saat itu saya sempat komplain cara akses PHP Java yang cukup memusingkan. Hebat kan sebenarnya sadar atau tidak sadar semua berjalan berbarengan dan serentak. Itulah revolusi.\r\n<p>\r\n\r\nSekitar tahun 2000-an, Microsoft mengeluarkan BizTalk.org dengan solusi SOAPnya yang disetujui oleh W3C, dan IBM membuat SOAP versi Java, kemudian SOAP tersebut didonasikan ke XML Project di Apache (coba lihat Sam Ruby selalu ikutan, dia veteran PHP dan Java terutama XML Project, dua-duanya adalah project Apache). Sun yang saat itu masih sombong dengan JAXP-nya atau ProjectX-nya, akhirnya memberikan codenya ke Apache, Sun nyerah dengan kecepatan pengembangan Open Source, keluar deh project Crimson, sebuah XML parser yang bekerja mirip Xerces. Terus terang saya tidak setuju dengan solusi ini, masa dalam Apache ada 2 project parser, mustinya yang dibuang itu JAXP bukan Xerces, sehingga Crimson tidak pernah lahir, maklum saya tidak tahu apa yang diberikan Sun, sehingga orang-orang Apache diam. Nah di project Jakartanya Apache, Sun mendonasikan implementasi Servletnya dengan project disebut Tomcat. Implementasi Open Source lainnya seperti Jetty (dari Australia) adalah alternatif Tomcat.\r\n<p>\r\n\r\nDidunia lain, dunia middleware, Enhydra mengeluarkan server implementasi J2EE, dan saat itu Enhydra masih Open Source, dan team Enhydra meminta sertifikat J2EE ke Sun, ditolak dikarenakan produknya komersial. Jadi deh Enhydra mulai versi 4 komersial, tapi syukur deh versi 5-nya Open Source lagi. Tetapi ternyata ada orang-orang yang masih tetap support Open Source seperti Jonas dan JBoss (versi 2-nya merupakan implementasi EJB 1.x). Mereka tetap berjuang dan membuat EJB container Open Source. Marc Fluery bekas orang Sun yang juga salah satu team pembuat EJB standar di Sun dan juga pendiri JBoss, mengajukan sertifikat J2EE untuk JBoss. Coba deh ke webnya di http://www.jboss.org, JBoss sedang promosi untuk disetujui sebagai suatu standard. Saya sih berdoa semoga cepat diberikan sertifikat tersebut. Saya malah meramalkan kalau sertifikat itu diberikan, bisnis Java Application Server akan bergeser, mungkin saat itu kita akan melihat Bea sudah menjadi bagian dari HP, atau Oracle atau Sun (coba baca di TheServerSide.com mengenai kemungkinan 5 merger besar perusahaan IT). \r\n<p>\r\n\r\nSaat ini saya baru sadar, bahwa gabungan Servlet dan EJB menjadikan Java sangat hebat. Apalagi setelah JBoss 3.0 mendukung clustering (versi 2.x mendukung JMS). Wah Java semakin caem, dan hebatnya semua ini Open Source, gratis, dan jalan di Linux lagi. Dan gilanya semua ini dikembangkan bersamaan sekitar tahun 1999-an. Cepat sekali bukan.\r\n<p>\r\n\r\nNah, dengan cerita diatas, mulai deh Java popular sebagai aplikasi enterprise apalagi setelah server middleware berbasis J2EE keluar seperti Weblogic, Websphere, dan  Enhydra, mulai deh Java didukung secara komersial dan juga Open Source. Malah, dengan gabungan Tomcat (servlet container) ? saya lebih setuju Jetty sih, jangan terlalu Apache deh## dan JBoss (EJB Container) yang kedua-duanya Open Source, maka yang siap melawan Microsoft bukan hanya Java yang komersial tetapi juga Java Open Source. \r\n<p>\r\n\r\nHebatkan, JBoss itu musuh Microsoft dan juga musuh IBM, Sun, Bea maupun Oracle. Padahal hidup mereka hanya dari training dan jualan buku. Kacau deh, mereka volunteer gila. Terus terang team JBoss adalah orang murni Open Source, mereka hebat, saya salut deh, mereka terus berjuang walaupun CEO Sun, Scott pernah mengemukakan, kalau Jboss di setujui, banyak perusahaan dan bisnis Java menjadi kacau (Interview dilakukan oleh team TheServerSide.com).\r\n<p>\r\n\r\nAplikasi Java Open Source itu sebenarnya ikut bersaing dengan Aplikasi Java komersial berkelas seperti Oracle 9iAS, Websphere, Weblogic, BlueStone (sudah kalah dan diOpen Sourcekan, tetapi tidak populer). Malah JBoss berkampanye untuk migrasi semua aplikasi yang jalan di Bea Weblogic (maklum dia pemimpin pasar Java Application Server) ke JBoss Server. \r\n<p>\r\n\r\nHampir semua perusahaan pesaing Microsoft memasukan Java sebagai solusinya, diantaranya adalah Oracle memasukan Java JVM ke Oracle 8i, kemudian melisensi Borland JBuilder dan menggantinya menjadi JDeveloper, kemudian IBM membuat Websphere, malah versi Websphere Portalnya ada component Jetspeed (salah satu project Jakarta di Apache), terus Bea Weblogic (saya pernah menggunakan versi 3 dari Weblogic, dan didalamnya ada Xerces yang direfactoring). Terus Rational dengan Rose 2000-nya, sang pemimpin UML, mulai deh mendukung Java. Maklum saat itu kalau saya hendak membuat reengineering UML dari Java code, susahnya setengah mati. Maklum DFD sudah basi. <p>\r\n\r\n\r\nMulai deh perusahaan saling baku hantam dan mereka masuk dunia Open Source yang bersih dengan unsur komersial, seperti IBM, Sun, Oracle, malah consultant dunia mulai deh ikutan dengan gabung ke JCP seperti Ernst & Young, Andersen/Accenture. Saya pernah kecewa dengan mereka semua, karena sebagai salah satu yang direkomendasikan di JCP oleh IBM, eh dikeluarkan, karena persaingan JSR antara Sun dengan IBM, mentang mentang punya perusahaan besar, yang kecil ditindas, mustinya kalau bisa demo saya demo deh saat itu, tetapi ternyata yang protes mengenai JCP itu bukan hanya saya saja, jadi memang intinya orang Open Source tidak bisa dipegang.\r\n <p>\r\n\r\nPersaingan lainnya yang hebat terjadi antara perusahaan besar dengan tameng Open Source adalah project IBM Eclipse (versi komersialnya disebut Websphere Studio, dulu Visual Age), dengan Sun Netbeans (versi komersialnya Sun Forte, sekarang SunOne Studio). Malah, dalam marketingnya IBM mengatakan dirinya adalah leader dari semua ini, dengan kontribusinya yang besar membuat standard, dan dukungan terhadap Open Source bukan hanya Java tetapi Linux, malah IBM mengeluarkan sekitar 300 juta dollar US untuk project ini. \r\n<p>\r\n\r\nSampai ada ide dari IBM untuk Sun agar Java-nya di Open Sourcekan juga, maklum IBM mengeluarkan uang berjuta-juta dollar untuk project Javanya, dan dia adalah salah satu pemimpin dipasar application server bersaing dengan Bea Weblogic.\r\n<p>\r\n\r\nTerus terang, perkembangan Open Source terutama Java, dengan campur tangan IBM, Sun, Oracle dan lain-lain, menjadi ada unsur bisnisnya, tetapi ada nilai positifnya, Open Source Java menjadi semakin popular, apalagi setelah adanya JCP, dan revisi dari JCP dengan versi 2.5 (www.jcp.org), yang mendukung implementasi Open Source Java. Wah dunia akan semakin menarik deh. Saya malah meramalkan nanti Open Source Java akan semakin rame dan standard baru akan semakin banyak, makin pusing juga sih, kasihan juga sih bagi programmer, kerja mereka akan semakin banyak dan susah. \r\n<p>\r\n\r\nSaya pribadi melihat Open Source Java menjadi sebuah solusi yang patut dipertimbangkan, apalagi dengan dukungan terhadap perangkat mobile seperti handphone, PDA, malah SmartCard, Java menjadi sebuah bahasa yang patut dipikirkan. Apalagi kalau Sun membuat Java jadi Open Source, wah lebih seru lagi. Apalagi kalau kita menggabungkan dengan solusi Linux yang aplikasinya cepat dan stabil, seperti QMail, OpenLDAP, Jabber ataupun Apache HTTP, wah keren deh. \r\n<p>\r\n\r\nPengembangan aplikasi multiplatform Java lebih cepat dibandingkan dengan C, walaupun C adalah sebuah bahasa yang membangun Linux. Ingat Microsoft Windows masih tetap pemimpin pasar, Linux adalah alternatif selain Windows, UNIX system (AIX, HP-UX, BSD). Mari mencari uang dengan Open Source Java. Ingat Java itu bukan WORM (Write Once Run Anywhere) seperti yang dipromosikan Sun, tetapi Write Once Carefully Run Anyware Hopefully.\r\n<p>\r\n\r\nSebagai informasi, Microsoft Windows XP mulai SP2, memasukan kembali Sun Java SDK. Lucu kan dulu Microsoft sempat ribut dengan Sun dan kalah dipengadilan, dan mengeluarkan duit berjuta-juta dollar, kemudian mengeluarkan Java JVM dari Windows, eh malah pengadilan US memerintahkan memasukan lagi Java. <p>\r\n<i>Artikel ini dimuat pada Majalah Neotek Edisi April/Mei 2003.</i>','F55DBF8A30316699C2A21BA80java-logo.jpg','F55DBF8A3B2ED51220C3CCBE0java-logo.jpg','F501555A2ECD5AC','2003-05-25 12:17:01','F501555A2ECD5AC','2003-05-25 12:17:01','0','ic','F4DD64134EC050E3D0A256EA0D'),('F55DC1953D14B85DB2C825A653','New BOB, sang provokator perang inovasi.','BOB = Best of the Breed','Setelah kematian Microsoft Bob, lahir BOB, seorang petualang didunia kebebasan, berjalan diantara orang-orang radikal, yang bersahabat dan dibentuk oleh perusahaan-perusahaan berkelas dunia, tetapi juga sebagai simalakama bagi pembuatnya, karena setelah populer dia akan melawan sang tuannya.','Sekilas Kata<br>\r\nSetelah kematian Microsoft Bob, lahir BOB, seorang petualang didunia kebebasan, berjalan diantara orang-orang radikal, yang bersahabat dan dibentuk oleh perusahaan-perusahaan berkelas dunia, tetapi juga sebagai simalakama bagi pembuatnya, karena setelah populer dia akan melawan sang tuannya.\r\n<p>\r\nMasih ingat dengan Microsoft Bob, sebuah interface yang memudahkan orang untuk mengakses Windows, aplikasi yang membuat ruang kerja seperti layaknya rumah kita. Microsoft Bob, sebuah project yang dikembangkan oleh istri Bill Gates, Miranda Gates, project yang konon tidak direspon oleh pasar, dan mengalami kegagalan. Yang konon gosipnya mengatakan, karena projek tersebut dikembangkan sang istri boss besar, makanya bisa dilaunch ke public.\r\n<p>\r\n\r\nArtikel ini tidak membahas Microsoft Bob atau istrinya Miranda Gates, tetapi Bob lain, yang saya sebut New BOB, karena untuk membedakan antara Bob nya Microsoft dengan BOB yang saya bicarakan. BOB sebenarnya singkatan dari Best of Breed, yaitu sesuatu terbaik dari yang terbaik.\r\n<p>\r\n\r\nBeberapa waktu ini, diseluruh dunia hampir emua orang sudah mulai berpikir menggunakan Linux sebagai aplikasi bisnisnya, malah IBM, Oracle, Sun, SAP sudah terang-terangan mendukung Linux untuk skala Enterprise. Apalagi issue pemerintah di Indonesia akan melakukan sweeping ke perusahaan-perusahaan di Indonesia terhadap software bajakan, yang kalau direalisasi dendanya mungkin bisa lebih besar dari APBN, dan malah bisa buat krisis baru. Linux menjadi sebuah solusi yang cocok untuk bisnis.\r\n<p>\r\n\r\nMalah hasil survey saya dengan terhadap beberapa perusahaan di Indonesia, beberapa memang sedang berpikir untuk menggunakan Linux. Malah saya pernah bertemu perusahaan besar yang mereplace Lotus Notesnya dengan system Qmail + OpenLDAP di Linux, hebat kan. Sebuah start yang baik, walaupun masih saja tetap Windows menjadi sebuah server operating system yang paling diminati, wong kalau tidak ada mampu masih bisa mendapatkannya di Mangga Dua.\r\n<p>\r\n\r\nNah evolusi Linux memang membuat perusahaan teknologi terutama di Amerika sana kotar katir, kita lihat IBM support Linux di RS/6000nya, bagaimana dengan AIXnya? Sun mengeluarkan server dengan prosessor Intel dengan Linuxnya ?yang konon gossipnya sih karena Sun sedang sebal dengan Dell, karena eBay.com mengganti server Sunnya seharga US$ 200,000 dengan PC-Intel berbasis Linux seharga US$ 4000. \r\n<p>\r\n\r\nTetapi secara bisnis ada yang lebih penting, dan mungkin itu yang membuat mengapa orang masih ada yang mau memilih Windows sebagai aplikasi bisnisnya, karena banyaknya aplikasi yang berjalan di Windows, apalagi dengan teknologi .NET yang secara bisnis sama saja, tetapi secara teknologi adalah mainan baru bagi orang-orang IT. \r\n<p>\r\n\r\nTentu saja kalau didunia Desktop, jangan dilawan deh, Windows jauh lebih enak, dengan Office yang sudah kita gunakan bertahun-tahun, moh deh ganti dengan desktop linux yang walaupun di RedHat 8.0 sudah lebih enak. Tetapi tidak tahu sih ditahun-tahun kedepan. Kita lihat saja.\r\n<p>\r\n\r\nNah belakangan ini ada banyak perusahaan-perusahaan yang berusaha menggantikan posisi Microsoft, malah menurut saya, mereka semakin morat-marit, wong Microsoft punya uang segudang, malah bisa beli Indonesia. Perusahaan-perusahaan pusing tujuh keliling melawan Microsoft yang jago di marketing dan juga teknologi. Perusahaan lawan Microsoft, terutama IBM, Oracle, Bea, Sun maupun RedHat, mereka masih tetap berjuang untuk mengeser popularitas Microsoft. Pekerjaan yang sulit dan susah, hebat memang Bill Gates ini.\r\n<p>\r\n\r\nNah lawan Microsoft yang cukup disegani adalah Linux, sebuah operating system yang dibuat oleh para programmer, hacker, hobbist komputer dan pelajar, telah membuat Linux menjadi aplikasi alternatif untuk bisnis, apalagi dengan harganya yang nol, alias gratis, membuat Linux menjadi sebuah alternatif pilihan yang baik.\r\n<p>\r\n\r\nSayangnya, dalam implementasi didunia bisnis, Linux masih sedikit dibandingkan dengan Windows, tentu saja ini di Indonesia, dan malah terus terang saya sendiri yang sudah pakai Linux bertahun-tahun, masih merasa ini barang susah banget, dan sepertinya aplikasinya terlalu banyak, dan buku panduannya sedikit, kalaupun ada kata-katanya tidak enak diikuti. \r\n<p>\r\n\r\nAkhirnya, saya sering memberikan saran kepada client-client saya, pakailah Microsoft Windows untuk OS kamu, semua dapat dikerjakan lebih mudah. Maklum dengan atitude pegawai di Indonesia yang mau mau dewek, dan ketidak mengertian bos-bos terhadap hal-hal teknikal, bisa jadi Linux, pilihan yang secara value emang murah tetapi secara maintenance, bisa buat pusing dikemudian hari. Yah, memang buat para konsultan dan system integrator, maintenance tersebut seperti lahan uang yang bagus, tetapi kalau dilihat dari sisi Windows, wah tidak perlu tuh maintenance dioutsource, karena Windows sudah sangat gampang, tinggal ketik beberapa klik mouse saja selesai. Mulai dari kegiatan backup sampai instal aplikasi baru, wizardnya hebat.\r\n<p>\r\n\r\nNah, jadi disisi operating sistem, Windows memang menjadi pilihan, apalagi di Indonesia yang tidak perduli dengan lisensi.\r\n<p>\r\n\r\n\r\nSiapa itu BOB?<br>\r\nOke, kita kembali lagi, Apa hubungan Microsoft Bob dengan masalah diatas? Memang tidak ada, saya memakai kata BOB untuk mengartikan Best of Breed, sebuah kata yang mulai populer didunia teknologi informasi, dimana BOB adalah sekumpulan aplikasi/software yang mula-mula diciptakan melawan Microsoft. Dimana, anggota-anggota BOB bermacam-macam, seperti halnya Linux, ada freelancer ada perusahaan besar seperti Sun, Oracle, ataupun IBM. \r\n<p>\r\n\r\nMereka semua membuat aplikasi yang kehandalannya dinilai dan diakui oleh publik, sehingga hanya mereka yang membuat aplikasi terbaik saja yang bisa diakui. Sebagai contoh, Xalan, adalah sebuah project open source dari Apache, gunanya untuk mentransformasikan XML menjadi media lain seperti XHTML, WML, PDF dengan menggunakan syntax XSLT. Xalan saat ini ditemukan hampir disemua aplikasi, mulai dari software Sun, Bea Weblogic. Malah tidak ada satupun yang tidak mengakui kehebatan Xalan.\r\n\r\nDilain pihak, ProjectXnya Sun, yang khusus menangani manipulasi XML, salah satu produknya adalah JAXP. Nah saya tidak tahu, karena Sun kehabisan uang, atau kotar katir dengan kehebatan orang open source, dia membuat Project X menjadi open source juga, dengan project yang disebut Crimson, hasilnya adalah mulai Java 1.4, Crimson jadi bagian dari bundel Java SDK. Karena kalau tidak diopensourcekan, Project X akan ditinggalkan dan dilupakan orang. Maklum support dan update dari Sun, super sangat lambat.\r\n<p>\r\n\r\nTerus, aplikasi seperti CVS, Apache HTTPD Server, OpenSSH, Bounty Castle, dan ratusan mungkin ribuan project-project yang dibuat dan umumnya berjalan di Linux membuat Linux menjadi tidak ternilai harganya, dan semua pengakuannya kehebatannya dilakukan oleh publik, dan semua ini tidak terdapat di Windows, mulai ditemukan dan dapat dijalankan di Windows. Merekalah anggota sejati BOB.\r\n<p>\r\n\r\nTerus bagaimana dengan Microsoft<br>\r\nMicrosoft punya teknologi dan uang, dia bisa melakukan apa saja. Microsoft membuat semua aplikasi terintegrasi mulai dari Accounting (Great Plains), CAD (Visio), Office Automation (Office, Project), Content Management (CMS dan Sharepoint). Apalagi saat artikel ini dibuat gosip mengatakan Microsoft sedang melawan IBM hendak membeli Rational Rose, dan sedang nego dengan Macromedia untuk mengakusisinya. Sepertinya dia menjadi superjargon yang ngga mau kalah dan semakin dibenci semua perusahaan. Malah saat ini musuh Microsoft bukan hanya orang teknologi saja, tetapi juga media seperti AOL, vendor handphone Nokia, Sony, sampai SonyEricsson (aliansi Sony dan Ericsson).\r\n<p>\r\n\r\nKalau dipetakan, wah tidak ada satupun perusahaan yang mendukung Microsoft deh, selain tentu saja perusahaan partner Microsoft, yang pasrah kalau Microsoft membeli salah satu pesaingnya. Siap menunggu suatu hari dibangkrutkan secara tidak langsung. Intel saja yang sahabat sejati Microsoft, mulai bersifat netral dengan bersahabat dengan Symbian, Palm dan Linux.\r\n<p>\r\n\r\n\r\nBOB didunia nyata. <br>\r\nKehadiran BOB, sebagai suatu koalisi yang besar, seperti layaknya partai politik yang hendak mengguncang Golkar, semakin hari semakin hebat. Sayangnya di Indonesia, Golkar masih seperti itu-itu saja, sedangkan BOB, anggotanya sudah semakin banyak dan makin hari semakin besar, apalagi dengan maraknya globalisasi. \r\n<p>\r\n\r\nNah, sepertinya dengan popularitas BOB ini, ada satu teknologi yang terkena anginnya, yaitu Java, sebuah bahasa yang membuat aplikasi menjadi multiplatform yang bisa jalan dimana saja, sebagai bahasa yang paling populer setelah C, yang dapat berjalan mulai dari Windows, Linux sampai hand phone, malah NTT Docomo yang terkenal dengan 3Gnya, menggunakan Java. Sampai-sampai Macromedia yang terkenal dengan Flashnya, membuat system server side menggunakan Java, malah mengganti Cold Fusionnya menjadi aplikasi Java.\r\n<p>\r\n\r\nTerus IBM, mulai sikut sana sini dengan project Alphaworksnya, yang mayoritas hasilnya berbentuk kode Java, yang mulai menekan Sun, sang pencipta Java, Oracle juga tidak ketinggalan, ikut-ikutan dengan OTNnya masuk kedunia BOB. Jadi yang senang adalah Linux dan Java, sepertinya mereka jadi buai-buaian.\r\n<p>\r\n\r\nJava, membantu migrasi dari aplikasi Windows dan Mainframe menjadi aplikasi yang dapat berjalan di mesin yang murah dan lebih cepat, malah dengan dukungan clusteringnya, membuat aplikasi Java dapat jalan di sistem murah dengan kemampuan super computer. Belum lagi kalau menggunakan Linux yang dikluster dengan Bewolf misalnya, wah makin super deh sistemnya. Membuat siapa saja bisa terjun dan mendaftarkan diri menjadi anggota BOB.\r\n<p>\r\n\r\nNah kalau sudah begini, mulai kompleks permasalahannya, karena aplikasi sudah menyerempet kedalam bisnis inti para praktisi bisnis, jadi memilih BOB lebih masuk akal dibandingkan dengan memilih solusi Linux ataupun Microsoft. Wong yang lebih murah dan produktif adalah outputnya.\r\n<p>\r\n\r\nNah lahan ini yang bisa diambil oleh para konsultan teknologi, dan juga solusi yang dapat melawan solusi Mangga Dua. Karena barang yang saya sebutkan diatas bisa diambil di Internet dengan gratis, dan didukung perusahaan, sehingga purna jual-nya dapat lebih terjamin.\r\n<p>\r\n\r\nSolusi BOB ini mungkin membuat pasar Microsoft lebih kecil, tetapi juga secara tidak langsung membunuh pasar musuh-musuh Microsoft yang diperkecil. Yang kena dampaknya hampir semua perusahaan besar, karena BOB ternyata super flexible dan gesit, mulai dari IBM, Sun, Bea, Macromedia, maupun Adobe.\r\n<p>\r\n\r\nHal ini juga membuat peluang bagi orang-orang baru untuk memasuki dunia ini, malah tidak kecil kemungkinan keanggotaan BOB dianggotai oleh personal bukan perusahaan. Maklum keanggotaannya adalah gratis dan tidak perlu registrasi. BOB selain kejam, memang liberal, dan anti sosial.\r\n<p>\r\n\r\nMalah menurut ramalan saya, kalau benar project-project open source, seperti JBoss, Jonas, Compiere, Global Retail Technology, ataupun Open for Business berhasil menciptakan aplikasi bisnis yang powerfull dan gratis, serta sudah diakui oleh publik sebagai member BOB, wah yang hancur marketnya bukan hanya Microsoft, tetapi Sun yang menyediakan Java, IBM yang menciptakan Websphere, Bea dengan Weblogicnya. SAP dengan SAP R/3-nya. Mereka harus banting harga deh untuk melakukan perang melawan BOB. BOB seperti buah simalakama. \r\n<p>\r\n\r\nBOB, si pembuat perang inovasi?<br>\r\nYang dapat saya perlihatkan sekarang dunia menjadi kacau, sepertinya terjadi perang bebas, dan perang ini bukan perang kecil, maklum yang ikutan perang mulai dari Microsoft, Sun dan IBM, melawan BOB. Yang pasti anggota yang mendanai perang ini adalah Linux. Jadi semakin pebisnis mendukung Linux, perang akan semakin besar.\r\n<p>\r\n\r\nPerang inovasi antara perusahaan-perusahaan teknologi dengan BOB, tentu saja membuat pusing para pebisnis, karena pilihan jadi segudang, dan semuanya kelihatan bagus, dan bagi pebisnis semua mirip-mirip, dan kalau salah pilih, berarti aplikasi bisnis inti pebisnis itu harus dibuang dan kegiatan implementasi harus diulangi, solusi teramannya tentu saja adalah melakukan bisnis manual, ngga pusing, paling pusing sama pajak saja. Apalagi diera globalisasi ini, kompetisi semakin sulit, saingan makin banyak, terutama di Indonesia, setelah AFTA, saingan barang import meningkat. Ya, silahkan gulung tikar karena kurang kompetitif, habis manual sih.\r\n<p>\r\n\r\nSayangnya, tidak satupun yang bisa melawan keberadaan BOB, dia semakin hari semakin gemuk. Siapkah Anda?\r\n','F55DC85D04E5A9A9CFE9B1E8F0bo2-logo.jpg',NULL,'F501555A2ECD5AC','2003-05-25 12:26:39','F501555A2ECD5AC','2003-05-25 12:26:39','0','ic','F4DD64134EC050E3D0A256EA0D'),('F55DC4A2B5A948CD1EAA87A362','Implementasi Experiantal Marketing terhadap Solusi Linux','Experiental Marketing di Linux','Tips memenangkan pasar dengan menggeser Linux dari sebuah sistem operasi alternatif Windows menjadi sistem operasi emosional.','Seia Sekata<br>\r\nBeberapa bulan belakangan ini, saya bergabung dalam beberapa mailing list, dan kebetulan membaca InfoLinux Juni, yang mengulas berbagai macam distro Linux, dan malah saya mencoba Knoppix yang CD-nya disertakan. Terus terang Knoppix itu merubah paradigma saya tentang Linux.\r\n<p>\r\nDisisi lain, saya mendapat beberapa email dari mailing list telematika yang mengatakan bahwa Pemilu menggunakan Windows sebagai Operating Systemnya, hal ini dikarenakan usernya tidak familiar bila menggunakan Linux, maklum orang Indonesia bukan hanya terkenal GapTek tetapi juga malas, jadi bilang susah dulu sebelum mencoba. Mungkin juga investasi memintarkan keinginan ini lebih mahal dibandingkan membeli lisensi Windows.\r\n<p>\r\n\r\nMaklum saya pernah melakukan beberapa kali implementasi didaerah yang bukan kategori kota, maklum perusahaan-perusahaan tersebut adalah perkebunan, baik itu karet maupun kelapa sawit yang letaknya jauh sekali di tengah pulau. Malah beberapa orang yang saya training tersebut belum pernah menginjak kota.\r\n<p>\r\n\r\nMalah implementasi yang dilakukan adalah Oracle Application (ERP) yang termasuk software ERP nomor dua didunia setelah SAP R/3. Yang hebatnya sebelum implementasi mereka melakukan kegiatan sehari-harinya menggunakan mesin tik, terutama divisi pembeliannya. Malah mesin tiknya itu yang jaman heubeul (kuno) yang panjang, dan mustinya masuk museum. \r\n<p>\r\n\r\nYang hebat, setelah 1 tahun, mereka semua merasakan kemudahan aplikasi tersebut, karena mereka merasakan kecepatan bekerja menggunakan ERP tersebut. Walaupun terus terang saja, bug dan error aplikasi tersebut berjibun, sampe team harus implementasi dengan melakukan versi lite, artinya kita sembelih module yang ada, asal tujuan secara perusahaan benar, yaitu jalan. Yah mungkin kalau hal ini dilakukan marketing campaign oleh Oracle, bisa-bisa ngga ada yang mau beli ERP lagi.\r\n<p>\r\n\r\nSaya rasa pengalaman saya ini harus dicoba dan dikaji ulang, juga mungkin baik juga dijadikan masukan bagi para linux implementator, terutama perusahaan yang bergerak dibidang implementasi linux.\r\n<p>\r\n\r\nExperiental Marketing<br>\r\nTetapi artikel saya ini mungkin bukan untuk membahas bagaimana menjual linux ke corporate tetapi membahas pengembangan komunitas linux kearah yang lebih strategis. Yang mana saya harapkan dalam dalam waktu pemilu kedepan ditahun 2009, Linux dapat menjadi satu-satunya sistem untuk Pemilu, dan juga menjadi salah satu operating sistem yang diakui oleh pemerintah, dan menjadi standar operating sistem untuk pemerintah. Jadi tidak ada satupun pemerintah yang menggunakan aplikasi commercial di pemerintahan, yah kalau Microsoft mau juga harus memberikan lisensi secara gratis. \r\n<p>\r\n\r\nSaya melihat linux adalah sebuah produk komunitas populer yang dikembangkan oleh komunitas, tetapi dengan popularitas yang meningkat, banyak perusahaan-perusahaan/personal yang membuat distro sendiri, contohnya RedHat, SuSE, Trabas, Knoppix sampai Inul. Hal ini membuat terjadi saingan searah antar distro linux, yang mana secara benefit adalah sama, yaitu sebagai operating sistem. Hal yang tidak terjadi di Windows, Solaris dan operating sistem komersial lainnya. Yang sayangnya jarang sekali ada bentuk pengembangan yang serius untuk membuat sebuah interoperability antar distro tersebut. Hal ini membuat beberapa user, seperti saya yang yakin bahwa distro baru tersebut benar-benar sama dan kompatible. Maklum saya pernah mendapat pengalaman jelek saat instalasi RedHat, sehingga saya lebih menyukai Mandrake, walaupun server saya yang dihosting menggunakan RedHat.\r\n<p>\r\n\r\nNah pengalaman yang pernah saya alami, akan terus mengikat dibenak saya, bahwa saya lebih suka Mandrake dibanding Redhat, walaupun keduanya sama-sama Linux, pengalaman tersebut dalam bidang pemasaran disebut dengan Experiental Marketing.\r\n<p>\r\n\r\n<b>Experiental Marketing adalah sebuah konsep perasaan (emosi) yang dikomunikasikan kepada pihak konsumen, sehingga dapat memberikan pengalaman yang tidak terlupakan. Experiental Marketing ini muncul dikarenakan sudah mulai sesaknya pasar oleh berbagai macam produk yang menawarkan benefit yang sama.</b>\r\n<p>\r\n\r\nSayangnya secara pengalaman Mandrake bagus sekali, tetapi sampai hari ini saya tetap mendapat kesulitan untuk mengintegrasikan user loginnya dengan OpenLDAP, serta setting integrasi lainnya, yang berdasarkan pengalaman memerlukan waktu 1 - 2 minggu untuk mencari tahu. Yang menurut saya ini mubajir dan tidak effisien. Masa sih dengan pengguna user yang seabrek, saya sulit sekali mencari orang yang bisa diajak komunikasi untuk masalah integrasi ini. Nah pengalaman saya ini secara experiental akan memberikan pengalaman buruk, walaupun mungkin bagi pakar linux solusi ini mudah, dan perlu waktu 1 ? 2 jam. Padahal Windows sudah memberikan default LDAP dalam paket Windows 2000-nya.\r\n<p>\r\n\r\nMalah tidak jarang dari hasil diskusi dengan client saya, saya menyarankan menggunakan Windows sebagai sistem operasinya, karena ada beberapa issue teknikal yang tidak terpecahkan bila melakukan implementasi dengan linux. Issue ini memang terpecahkan dalam 1-2 minggu, tetapi dari sisi bisnis, issue tersebut tidak efisien, sehingga secara bisnis, membuat solusi Linux menjadi tidak relevan. Dimana hal ini terjadi juga pada pengambilan keputusan pemilihan sistem untuk pemilu. Apalagi dalam kasus pemilu, yang menjadi standar adalah PC client, bukan server, yang mana Microsoft memang menguasai pasar ini secara internasional, dimana RedHat melalui bluecurvenya sedang berusaha memasuki pasar ini. Secara strategis Linux masih kalah dengan Windows, apalagi dari banyak pengalaman yang mengatakan windows lebih mudah.\r\n<p>\r\n\r\nImplementasi Experiental Marketing bagi Linuxer<br>\r\n\r\nJadi dapat dikatakan secara experiental marketing, Microsoft jauh didepan, walaupun sistem Windows masih properti Microsoft. Hal yang mungkin dapat dikatakan sangat lucu sekali kalau dilihat dari analisa sisi pemasar, karena Linux adalah produk kerja komunitas yang diciptakan untuk komunitas, yang memiliki semua nilai yang dimana jauh lebih efisien dibanding dengan Windows. Yang mana secara analisa teknikal, tidak ada satupun yang bisa mengalahkannya, tetapi secara strategis tetap tidak relevan. Linux secara experiental marketing adalah buruk.\r\n<p>\r\n\r\nMelalui artikel ini, saya mengajak para linuxer, baik itu pakar linux, hobbyist, user baik personal maupun korporate, lembaga edukasi linux agar melakukan implementasi experiental marketing. Saya melihat implementasi experiental marketing itu sebaiknya diimplementasikan oleh semua pihak, karena unsur komunitasnya tinggi sekali di linux. Hal yang tidak dapat dimiliki oleh Windows. \r\n<p>\r\n\r\nApa yang harus dilakukan agar Linux itu benar-benar berexperiental marketing? Nah ini jadi tantangan bagi para pelaku linux, terutama lembaga pendidikan dan perusahaan yang berhubungan dengan Linux.\r\n<p>\r\n\r\nDengan kata lain, dengan experiental marketing, diharapkan linux yang merupakan produk komoditas (karena saking banyaknya distro) menjadi sebuah experience yang lebih tinggi nilainya dibandingkan dengan servis yang diberikan linux saat ini sebagai sebuah alternatif Windows.\r\n<p>\r\n\r\nKita harus mencari strategi bahwa linux itu bukan hanya sebagai sistem alternatif Windows, tetapi merupakan sebuah sentuhan emosional yang membuat pemakainya tidak mau berpindah ke Windows setelah mencoba Linux. Hal yang sulit sekali saat ini, karena terus terang secara pribadi saya adalah salah satu yang belum tersentuh emosionalnya, walaupun sudah memakai linux dalam jangka waktu lama. Apalagi secara professionalisme, saya tidak merasa dirugikan menggunakan non-Linux sistem. Walaupun secara psikologi saya sangat terpanggil untuk mengimplementasikannya. Kalau tidak artikel ini tidak dibuat dong.\r\n<p>\r\n\r\nKolaborasi di Linux<br>\r\nBanyak cara untuk melakukan implementasi experiental marketing didalam dunia Linux, yang paling penting adalah terjadinya kolaborasi yang terbuka antar pengguna linux, sehingga linux dapat naik pangkat menjadi sebuah sistem operasi emosional.\r\n<p>\r\n\r\nMengapa saya memakai kata kolaborasi linux? Sebenarnya kata ini saya rancang dulu saat diskusi untuk membuat sebuah sistem egoverment collaboration services, yang mana sampai hari ini masih pending, karena tidak adanya koneksi saya terhadap pemerintah, selain itu juga dikarenakan hampir mayoritas semua sistem egoverment yang publik, terutama dotcom-dotcom pemerintah tidaklah memberikan rasa ke bhinnekaan, malah terkesan negara ini seperti terpecah-pecah karena otonomi dan egoisme daerah. Mereka membuat semua dotcomnya sendiri yang tidak berinteraksi dengan dotcom lainnya, padahal egoverment harusnya merupakan media yang menaungi penduduk, pemerintah dan pebisnis. <p>\r\n\r\n\r\nKonsep kolaborasi yang saya rancang tersebut ternyata kalau ditarik lininya (lihat BlueOxygen Strategic Framework yang saya sertakan) masih satu keluarga dengan Linux, yang mana merupakan sebuah produk komunitas. Egoverment yang baik merupakan produk komunitas juga, walaupun dalam dunia yang berbeda. <p>\r\n\r\n\r\nImplementasi kolaborasi linux dapat dilakukan dengan membuka informasi seluas-luasnya, yang secara tidak langsung dapat mempercepat penetrasi linux di Indonesia pada khususnya, juga secara tidak langsung akan mendunia. <p>\r\n\r\n\r\nMemang implementasi kolaborasi linux ini sangatlah berat, tetapi saya pribadi melihat ini adalah salah satu katalis yang memungkinkan linux dapat menang dalam pemilihan pemilu yang akan datang, malah juga dapat membuat penetrasi linux dalam perusahaan semakin cepat. Yah nanti banner di detik.com bukan lagi ucapan terima kasih Microsoft, tetapi ucapan terimakasih pemerintah kepada rakyatnya karena dapat mengharumkan nama bangsa.\r\n<p>\r\n\r\nJaringan Kolaborasi Linux<br>\r\nJaringan kolaborasi linux diharapkan menjadi sebuah landasan untuk implementasi experiental marketing di linux yang dapat mempercepat penetrasi linux. <p>\r\n\r\n\r\nUntuk membentuk jaringan ini harus banyak team antar disiplin yang dibentuk agar linux menjadi semakin mudah, terutama bagi para user non-teknis apalagi yang gaptek (gagap teknologi). <p>\r\n\r\n\r\nImplementasi jaringan ini bermacam-macam, yang secara high-level adalah dengan membuat sebuah sarana information exchange antar pengguna, professional dan media. Sarana ini akan selain akan mempererat hubungan kekomunitasan linux, juga dapat menarik user non-linux kedalam media ini. <p>\r\n\r\n\r\nYang paling mudah adalah dengan melakukan sharing knowledge center setiap portal kedalam portal lain, sehingga setiap pengunjung mendapatkan kemudahan untuk mencari informasi yang dibutuhkan. <p>\r\n\r\n\r\nMalah kalau sampai level interaktif antara knowledge center tersebut maka akan terjadi sebuah collaborative center, maka jaringan kolaborasi linux tersebut sudah terbentuk. <p>\r\n\r\n\r\nSaya pribadi mengatakan kalau jaringan kolaborasi linux ini terbentuk, maka secara tidak langsung team linux Indonesia akan semakin solid, dan diharapkan dalam waktu kedepan team linux Indonesia dapat menjadi expert linux global. <p>\r\n\r\n\r\nSaya harapkan artikel ini dapat memberikan inspirasi kepada pemakai linux, terutama pakar linux dan pebisnis linux (lembaga pendidikan, dan professional linux). Linux diharapkan bergeser dari sekedar development framework, menjadi business framework yang memiliki nilai strategis de-facto, yang akan mempengaruhi bagaimana bisnis beroperasi. <p>\r\n\r\n\r\nOpen Source itu bukan Open Standard. Diharapkan dengan implementasi kolaborasi linux yang diberi sentuhan experiental marketing, linux akan menjadi sebuah Open Standard. Kita tahu nilai open standard lebih tinggi daripada open source, nilai yang diakui dimiliki oleh Windows secara luas. <p>\r\n','F55DC8AEF743A4E9A509ED4AA5bo2-logo.jpg',NULL,'F501555A2ECD5AC','2003-05-25 12:27:00','F501555A2ECD5AC','2003-05-25 12:27:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F55DD96DA89BB4A8FB02016A79','Enterprise Corporate Portal, antara Ideologi dan Implementasi (I)','Bagian I, Repositioing Corporate Portal','Corporate portal mereduksi istilah solusi yang dijual oleh para penyedia konsultasi menjadi hanya sebuah nama yang ringkas corporate portal. Kata yang dapat diartikan sebuah solusi bisnis untuk korporasi dan mengadaptasikan teknologi internet. Definisi yang terlalu samar tetapi kompleks','Masih ingat sekitar tahun 1993, saat Internet baru popular di Indonesia dan masih sedikit ISP yang ada di Indonesia, kemudian dilanjutkan dengan jatuhnya NASDAQ, yang membuat banyak perusahaan dotcom hilang tidak jelas kemana rimbanya. Serta berubahnya business salah satu perusahaan B2B terbesar VerticalNet dari B2B portal directory menjadi sebuah solution provider. \r\n<p>\r\nSemua terasa cepat sekali, sampai kita tidak sadar bahwa SAP merubah brand companynya dan productnya menjadi MySAP, walaupun barang yang dijual sama-sama saja yaitu ERP yang ditambah dengan kemampuan personalisasi di MySAP Portalnya dan feature-feature tambahan seperti E-Procurement. Dilain pihak, competitornya Oracle dengan Oracle Application 11i yang bukan hanya memasukan CRM module kedalam paket ERP-nya, tetapi mulai memasukan Java kedalam sistemnya, walaupun corenya masih tetap compile binary Oracle Developer dan executable, bukan Java byte code.\r\n<p>\r\n\r\nSaya melihat terjadi perubahan trend integrasi yang mengkonsolidasikan semua informasi menjadi sebuah sistem yang terintergasi yang disebut corporate portal. Yang mana corporate portal ini akan membawa employee dan business partner kedalamnya. Corporate portal akan menjadi sebuah jembatan komunikasi internal dan ekternal dalam perusahaan. Corporate portal ini bukan hanya sekedar portal seperti halnya membuat website, tetapi sebuah kegiatan yang menghubungkan antara semua pihak dalam aktifitas bisnis sehingga terjadi sebuah kolaborasi informasi yang lebih baik.\r\n<p>\r\n\r\nSaya melihat segmen corporate portal sudah semakin melebar dan hebatnya semakin singkat, terutama dengan munculnya berlusin-lusin solusi dan banyaknya vendor yang memberikan solusi sejenis dengan kelebihan-kelebihan masih-masing yang terkadang tidak diperlukan oleh praktisi bisnis, serta munculkan kebingungan konsumen dan pemakai terhadap itu semua. Diharapkan artikel ini dapat membantu perusahaan untuk lebih mengerti definisi dari corporate portal, dan memberikan pengenalan yang jelas dan singkat terhadap definisi solusi corporate portal.\r\n<p>\r\n\r\nCorporate portal mereduksi istilah solusi yang dijual oleh para penyedia konsultasi menjadi hanya sebuah nama yang ringkas corporate portal. Kata yang dapat diartikan sebuah solusi bisnis untuk korporasi dan mengadaptasikan teknologi internet. Definisi yang terlalu samar tetapi kompleks.\r\n<p>\r\n\r\nSecara teori, corporate portal melakukan konsolidasi antara content dan business function, dan ini merupakan sebuah ide yang cemerlang, tetapi secara implementasi masih jarang ada perusahaan yang mengimplementasikan corporate portal tetapi portal dalam corporate. Harap dibedakan implementasi portal dalam corporate berbeda dengan implementasi corporate portal, implementasi portal dalam corporate adalah melakukan implementasi aplikasi berteknologi internet dalam corporate secara terpisah-pisah, dan semua aplikasi berjalan sendiri-sendiri, seperti email, calendar maupun business tools yang lain.\r\n<p>\r\n\r\nSekarang, realitas implementasi corporate portal dapat dikatakan berubah dan memungkinkan untuk diimplementasikan saat ini, apalagi setelah muncul konsep SSO (Single Sign On), sebuah cara yang membuat semua sistem bisa diakses dengan satu authentication security. Teknologi yang siap pakai saat ini adalah Microsoft Passport buatan Microsoft. Sayangnya kubu saingan Microsoft seperti Sun, Oracle dan rekan-rekannya baru membentuk bendera Liberty Alliance, dan implementasinya belum final, baru final spesifikasinya yang keluar.\r\n<p>\r\n\r\nJadi bisa dibayangkan, dalam sebuah perusahaan apalagi di Indonesia yang cenderung berbentuk group dan memiliki multiple LoB (line of business) yang tidak ada berhubungan, seperti pabrik tissue dengan sepatu, ataupun pabrik air minum dengan property. Dengan corporate portal, semua dapat berbicara dan informasi dapat disharing secara corporate level. Hal ini memungkinkan terjadinya sebuah sistem yang mengacu pada implementasi Knowledge Management System.\r\n<p>\r\n\r\nMemang perkembangan corporate portal membuat sedikit rancu, karena membuat banyak solusi-solusi yang biasa dijual para consultant menjadi generic, bisa dibayangkan sebuah sistem yang disebut corporate portal dapat menggabungkan semua kegiatan menjadi satu dan berbicara satu dengan yang lainnya, sesuatu yang terlihat mudah karena sama-sama berbentuk portal, tetapi sangat sulit secara desain, karena memasukan bukan hanya unsur bisnis, tetapi branding, standard procedure, day-to-day activities sampai enterprise reporting. \r\n<p>\r\n\r\nPergeseran implementasi aplikasi kedalam corporate membuat sebuah sistem yang lebih dinamis yang memungkinkan terjadinya full collaboration antara semua pihak, baik internal maupun eksternal. Malah kalau berbicara dengan performance management system,  memungkinkan dibangunnya sebuah inter-corporate performance management system. Perusahaan bebas membangun aplikasinya performance measurement-nya mengikuti konsep Balance Scorecard atau hanya performance appraisal sederhana. Bisa dibayangkan sebuah portal dengan kemampuan personalization yang baik dapat berhubungan langsung dengan customer, business partner, employee dan dapat memberikan sebuah appraisal di akhir bulan, serta diikuti bonus dan kenaikan gaji pegawai di akhir periode penilaian. \r\n<p>\r\n\r\nCorporate portal membuat implementasi human resource sering disebut dengan 360o performance apprisal system menjadi lebih mudah. 360o performance apprisal system memungkinkan terjadinya penilaian dan interaksi antar pegawai secara corporate mencakup peer review, upline and downline review, sehingga memberikan business value yang lebih baik dibandingkan dengan solusi menggunakan aplikasi konvensional yang tidak berteknologi internet.\r\n<p>\r\n\r\nSaat ini banyak software-software yang dapat dibangun menjadi sebuah portal untuk corporate tetapi bukan corporate portal. Mungkin cukup membingungkan, tetapi memang itulah kenyataannya. Yang mungkin untuk beberapa tahun kedepan implementasi corporate portal masih sangat sulit dan memerlukan extra effort yang tinggi, tetapi akan semakin mudah dikemudian hari. Sebagai contoh adalah  Oracle 9i series, Bea Weblogic, dan IBM Websphere series, mereka semua menyediakan infrastructure yang bagus untuk membangun corporate portal, tetapi tetap memerlukan extra effort yang tinggi untuk membangun aplikasi yang memberikan business value yang baik. Solusi yang istimewa untuk para teknokrat tetapi tidak untuk business.\r\n<p>\r\n\r\nPerusahaan software menyediakan tools yang banyak membangun corporate portal, dan dengan teknologi yang keren-keren mereka memasukan feature-feature seperti one-to-one personalization, syndication, groupware integration, sampai web services support. Saat ini, saya belum melihat software lain selain MySAP Portal yang terintegrasi langsung dengan sistem back office dan front office modulenya.\r\n<p>\r\n\r\nParadigma saya mengenai corporate portal ini memang mendekati sebuah ruang kerja untuk user yang mana sistem penyedia ruang kerja tersebut dimiliki oleh perusahaan. Karena menurut hasil analisa saya, sebuah corporate portal itu memasukan unsur marketing branding, employee workspace, consolidated information, activity interaction, single point access, dan policy and procedures. Sesuatu yang tidak ada di MySAP, karena kompleksitas sistemnya yang tidak memungkinkan kita memasukan brand promotion kedalam portalnya, kecuali kita memang memisahnya dan membangun sendiri, dan memang tidak dirancang untuk itu.\r\n<p>\r\n\r\nBila manajemen perusahaan mengerti bagaimana sebuah corporate portal bekerja (dan bila paradigma saya mengenai corporate portal disetujui), maka perusahaan akan lebih jelas dan mengerti jenis dan tipe corporate portal yang harus dibangun. Secara tidak langsung perusahaan akan mengerti sebuah benefit yang muncul dan tidak ternilai. Yang tentu saja, manajemen akan lebih selektif menilai dan tidak terbawa oleh perusahaan-perusahaan yang menjual software yang mengatakan solusinya adalah corporate portal, yang nantinya malah memberikan ekstra effort untuk integrasi. Implementasi itu sulit, tetapi integrasi lebih sulit lagi. Tips saya, jangan terlalu percaya dengan orang marketing yang jualan product, sebab corporate portal bukan sekedar portal semata, banyak hal yang harus dibicatakan untuk terutama dalam mendesain dan membuat content dan job-related task.\r\n<p>\r\n\r\nCorporate portal dalam pemerintahaan disebut dengan e-Government, yang mana saat ini sering diartikan membangun sebuah portal. Implementasi e-Government mencakup hal yang lebih luas bukan sekedar dari portal semata, tetapi meliputi content dan business process internal dan external, hal yang terdapat didalam implementasi corporate portal.\r\n<p>\r\n\r\nBanyak hal yang harus dimasukan dalam implementasi e-Government, yang saya lihat bukan secara high level tetapi secara teknologi juga harus dikaji, yaitu meliputi accounting, core business application (seperti penyediaan KTP, sarana dan prasarana, dll), juga HRMS baik untuk pegawai dalam kepemerintahan maupun penduduk sekitarnya, dll.\r\n<p>\r\n\r\nJadi yang sering diucapkan Menteri Informasi kita adalah betul, dan hebatnya ternyata yang perlu e-Government bukan hanya pemerintah tetapi perusahaan. Jadi mengapa tidak terjadi sinergi saja antara pemerintah dengan perusahaan membangun sebuah sistem e-Government dan Corporate Portal, wong secara teknologi barangnya sama, tetapi secara implementasi brand-nya saja yang lain, satu e-Government dan satu Corporate Portal.\r\n<p>\r\n\r\nTerus terang, banyak informasi yang disebut content yang perlu dibagi antara pemerintah dengan perusahaan, dan ada kegiatan business yang perlu disharing antara pemerintah dengan perusahaan contohnya bea cukai, pajak. Kegiatan yang disebut content syndication. Menarik bukan. Sesuatu yang idealis apalagi di environment business Indonesia yang bukan gagap teknologi.\r\n<p>\r\n\r\nCoba lah memulai desain sistem dalam perusahaan Anda mulai dari user management dan desainlah ruang kerja standar untuk aplikasi corporate portal perusahaan Anda. Buatlah itu semua menjadi pondasi aplikasi bisnis anda yang sesuai dengan aktifitas bisnis perusahaan, kemudian barulah cari software yang sesuai dan masuk dalam budget perusahaan. Niscaya, perusahaan tidak perlu mengeluarkan solusi yang ber puluh ribu US dollar, malah mungkin solusi yang berpuluh ribu US dollar itu bisa didapat dengan gratis, siapa tahu! (ft)\r\n','F55DDAEF057D4B46551FE728B5bo2-logo.jpg',NULL,'F501555A2ECD5AC','2003-05-25 12:46:57',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F5F8EEC1C0D72BB80BDD90C57C','Start Tomcat and Apache at Boot Time','','Create a bash script for auto run Tomcat in Linux/Unix','     <p>Make sure there is a valid user \"tomcat\" or somesuch. You will start Tomcat as \r\n    user \"tomcat\" to avoid running it as root. The Apache server is started\r\n    as root because it uses port 80 (lower than 1024) but it spawns processes\r\n    that run as \"nobody\".\r\n    \r\n    Save the following scripts as <code>/etc/init.d/tomcat</code> and \r\n    <code>/etc/init/apache</code>. They will automatically be read and run at boot time.\r\n    Make a link to it from <code>/etc/rc5.d</code> such as:</p>\r\n<pre>\r\ncd /etc/rc5.d\r\nsudo ln -s ../init.d/tomcat S71tomcat\r\nsudo ln -s ../init.d/apache S72apache\r\n\r\n############################  /etc/init.d/tomcat  ########################\r\n#!/bin/bash\r\n#\r\n# apache        \r\n#\r\n# chkconfig: \r\n# description: 	Start up the Tomcat servlet engine.\r\n\r\n# Source function library.\r\n. /etc/init.d/functions\r\n\r\n\r\nRETVAL=$?\r\nTOMCATHOME=\"/usr/apps/apache/tomcat/jakarta-tomcat-4.0.4\"\r\n\r\ncase \"$1\" in\r\n start)\r\n        if [ -f $TOMCATHOME/bin/startup.sh ];\r\n          then\r\n	    echo $\"Starting Tomcat\"\r\n            /bin/su noone $TOMCATHOME/bin/startup.sh\r\n        fi\r\n	;;\r\n stop)\r\n        if [ -f $TOMCATHOME/bin/shutdown.sh ];\r\n          then\r\n	    echo $\"Stopping Tomcat\"\r\n            /bin/su noone $TOMCATHOME/bin/shutdown.sh\r\n        fi\r\n 	;;\r\n *)\r\n 	echo $\"Usage: $0 {start|stop}\"\r\n	exit 1\r\n	;;\r\nesac\r\n\r\nexit $RETVAL\r\n######################-  end of /etc/init.d/tomcat  ######################\r\n\r\n\r\n\r\n############################  /etc/init.d/apache  ########################\r\n#!/bin/bash\r\n#\r\n# apache        \r\n#\r\n# chkconfig: \r\n# description: 	Start up the Apache web server.\r\n\r\n# Source function library.\r\n. /etc/init.d/functions\r\n\r\n\r\nRETVAL=$?\r\nAPACHEHOME=\"/usr/apps/apache/apache\"\r\n\r\ncase \"$1\" in\r\n start)\r\n	if [ -f $APACHEHOME/bin/apachectl ]; then\r\n	    echo $\"Starting Apache\"\r\n            $APACHEHOME/bin/apachectl start\r\n        fi\r\n	;;\r\n stop)\r\n	if [ -f $APACHEHOME/bin/apachectl ]; then\r\n	    echo $\"Stopping Apache\"\r\n            $APACHEHOME/bin/apachectl stop\r\n        fi\r\n 	;;\r\n *)\r\n 	echo $\"Usage: $0 {start|stop}\"\r\n	exit 1\r\n	;;\r\nesac\r\n\r\nexit $RETVAL\r\n######################-  end of /etc/init.d/apache  ######################\r\n</pre>\r\n',NULL,NULL,'F501555A2ECD5AC','2003-06-24 15:32:42','F501555A2ECD5AC','2003-06-24 15:32:42','0','ic','F4DD64134EC050E3D0A256EA0D');
UNLOCK TABLES;
/*!40000 ALTER TABLE `blueoxygen_recipe` ENABLE KEYS */;

--
-- Table structure for table `blueoxygen_review`
--

DROP TABLE IF EXISTS `blueoxygen_review`;
CREATE TABLE `blueoxygen_review` (
  `id` varchar(28) NOT NULL default '',
  `headline` varchar(128) default NULL,
  `subheadline` varchar(128) default NULL,
  `abstract` text,
  `body` text,
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blueoxygen_review`
--


/*!40000 ALTER TABLE `blueoxygen_review` DISABLE KEYS */;
LOCK TABLES `blueoxygen_review` WRITE;
INSERT INTO `blueoxygen_review` VALUES ('F5590484E63CEB089DFF061677','OBOX 2.0 Enterprise','Java Open Source Distribution','Try Java Open Source Distribution that include 100+ Java Open Source Project. Most of them are release version. Include JBoss projects, Apache projects.','Tired in finding Java Open Source in you project. <a href=\"http://www.ejbsolutions.com\">EJB Solution </a> with their product: OBOX will help you to install all the important code, such as DocBoox, Struts, Castor, etc.<p>\r\n\r\nMost of the component is the most popular project in the open source community, but you need to integrate all the component by your self. This is the most difficult step. <p>\r\n\r\nThe OBOX come in 2 version the Community smiliar with JBoss Distribution but have several open source, but the Enterprise edition come with a lot of stuff. \r\n\r\n<p>Even the update still manual, this is the next step of distribution of open source for e-business, after Linux wave of course.','F5590BF833CDBF0557B5FCD469obox.jpg',NULL,'F501555A2ECD5AC','2003-05-24 14:22:24','F501555A2ECD5AC','2003-05-24 14:22:24','0','ic','F4DD64134EC050E3D0A256EA0D');
UNLOCK TABLES;
/*!40000 ALTER TABLE `blueoxygen_review` ENABLE KEYS */;

--
-- Table structure for table `businesspartner`
--

DROP TABLE IF EXISTS `businesspartner`;
CREATE TABLE `businesspartner` (
  `id` varchar(28) NOT NULL default '',
  `address` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `officePhone` varchar(255) default NULL,
  `otherEmail` varchar(255) default NULL,
  `zipCode` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `update_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` datetime default '0000-00-00 00:00:00',
  `active_flag` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesspartner`
--


/*!40000 ALTER TABLE `businesspartner` DISABLE KEYS */;
LOCK TABLES `businesspartner` WRITE;
INSERT INTO `businesspartner` VALUES ('ff80808105a3a8ed0105a3acec2e','','','','','','','fdsf','','','45855','1','','2005-08-11 10:54:43','1970-01-01 07:00:00',1),('ff80808105993dbf0105993f0601','','','','','','','success','47896','','54321','1','','2005-08-09 10:18:28','1970-01-01 07:00:00',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `businesspartner` ENABLE KEYS */;

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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
  KEY `iparentcode_15` (`iparentcode`),
  KEY `descriptor_id_16` (`descriptor_id`),
  KEY `iparentcode_16` (`iparentcode`),
  KEY `descriptor_id_17` (`descriptor_id`),
  KEY `iparentcode_17` (`iparentcode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--


/*!40000 ALTER TABLE `category` DISABLE KEYS */;
LOCK TABLES `category` WRITE;
INSERT INTO `category` VALUES ('4028817a05dc58660105dc5fc841','ED2D5FC89DA4B624B60783E281','cmp','4028817a05cdd1d80105cdd296a3','','child component',1,'1','2005-08-22 11:08:48','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdba100105cdbc1237','EF76BA4ED5D8F2A21B1933A750','abo',NULL,'','about us parent',1,'1','2005-08-19 14:55:18','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05ccb32a0105ccc27179','1','dsc',NULL,'','descriptor',1,'1','2005-08-19 10:22:39','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cdd296a3','ED2D5FC89DA4B624B60783E281','com',NULL,'','component parent',1,'1','2005-08-19 15:19:54','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cdd88938','EE163461EFCD80B5C80D88A308','evn',NULL,'','event parent',1,'1','2005-08-19 15:26:24','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cddb412e','31','mdf',NULL,'','module function parent',1,'1','2005-08-19 15:29:22','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cddf0499','7','sec',NULL,'','section parent',1,'1','2005-08-19 15:33:29','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cde43c12','13','bus',NULL,'','back end user profile parent',1,'1','2005-08-19 15:39:11','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05cdd1d80105cde99219','2','sit',NULL,'','site parent',1,'1','2005-08-19 15:45:00','','0000-00-00 00:00:00','0','ic',NULL),('4028817a05ddcab90105ddd29e53','F72286592BB6E269D3A30B39AF','uRo','4028817a05cdd1d80105cde43c12','','user role section',1,'1','2005-08-22 17:53:52','','0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

--
-- Table structure for table `client_survey`
--

DROP TABLE IF EXISTS `client_survey`;
CREATE TABLE `client_survey` (
  `id` varchar(28) NOT NULL default '',
  `company_name` varchar(255) NOT NULL default '',
  `contact_person` varchar(255) NOT NULL default '',
  `date` varchar(28) default NULL,
  `location` varchar(255) default NULL,
  `question_1` text,
  `question_2` text,
  `question_3` text,
  `question_4` text,
  `question_5` text,
  `question_6` text,
  `question_7` text,
  `question_8` text,
  `question_9` text,
  `question_10` text,
  `question_11` text,
  `question_12` text,
  `question_13` text,
  `question_14` text,
  `question_15` text,
  `question_16` text,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_survey`
--


/*!40000 ALTER TABLE `client_survey` DISABLE KEYS */;
LOCK TABLES `client_survey` WRITE;
INSERT INTO `client_survey` VALUES ('EFE608521A20804337271231A8','intercitra','dedeng',NULL,NULL,'yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-08-26 17:08:08',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE61879EE944BAE3A83CF6BDE','null','olivia',NULL,NULL,'yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2002-08-26 17:25:47',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE63388E22B77E24A3AF0A3C3','intercitra','olivia',NULL,NULL,'yes','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null',NULL,'2002-08-26 17:55:20',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE63D607284D7F648904A28FB','intercitra','olivia',NULL,NULL,'yes','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:06:05',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE63E2BC87AB409F49CF408C','Intercitra Prima','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:06:57',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE63EFFC4E7042A4E377E8ABB','Intercitra Prima','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:07:52',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE6414382E64B5F583332E182','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:10:20',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE641FA27BE35E95716973A09','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:11:07',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE642139E9AF9C97B0C73C0AC','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:11:13',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE64222727671D530D2D7FF25','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:11:17',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE6435CB01F04EE712272286E','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:12:38',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFE6438A565161AE51C0CAC07B','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-26 18:12:49',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFEA32E57821F806A82D6CDB3B','','',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-27 12:33:07',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFEA4ACB40554562D2A1133EFA','Intercitra','Prima In',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,'2002-08-27 12:59:13',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `client_survey` ENABLE KEYS */;

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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `folderName` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--


/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
LOCK TABLES `collection` WRITE;
INSERT INTO `collection` VALUES ('EF58A8B439BA814A7D93B240EA','ED2E4202F2AE0340726C67A877','latest_news','Latest News','EF3DB199C4997C0D4CF66C2FE3',0,1,NULL,'2002-08-04 22:44:53',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF57BEBF18DC03624A9537EE53','ED2E4202F2AE0340726C67A877','open_job','Open Job','EF3DD45212976F3861F684F91C',0,1,NULL,'2002-08-04 22:43:49',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF580C9F50774CC4BBA9C305DC','ED2E4202F2AE0340726C67A877','solution_collection','Solution Collection','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,'2002-08-04 22:36:53',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF53B0FCA7D4F4CE80369A3BC0','ED2E4202F2AE0340726C67A877','press_release_collection','Press Release Collection','EF3DD27718347862F68D50A66',0,1,NULL,'2002-08-04 22:38:21',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EE48E5532353CE62EE4F9C547E','EE185CE0B82B41C1724F284685','News Update','News Update Collection','EED8A71A292BDD79AE8D438AB3',0,1,NULL,'2002-07-08 09:07:04',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EE7C699016F886FEA906FA5DAC','EDDCA9DCE41A14EE5D5ABE7E3C','solution_collection','Solution Collection','EEEE887BFAA2FB39A07504A03A',1,1,NULL,'2003-01-27 17:09:05',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EE7C7412CB68D123F4F160B4B8','EDDCA9DCE41A14EE5D5ABE7E3C','cross_selling_solution','Cross Selling Solution','EED8A71A292BDD79AE8D438AB3',1,1,NULL,'2003-01-27 17:01:52',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF575A3BB6F9D65E1376C562F9','ED2E4202F2AE0340726C67A877','cross_selling','Cross Selling','EF3DD1C31AAA5A6C655E9DE458',0,1,NULL,'2002-08-05 07:00:45',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF1EEB444F1CC7924207265864','EDDCA9DCE41A14EE5D5ABE7E3C','open_job_collection','Open Job Collection','EF1EEC2113DFA19FB81258C38A',1,1,NULL,'2003-01-27 17:07:50',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EE7CCBBE336CC05ECCC3DEDB04','EDDCA9DCE41A14EE5D5ABE7E3C','press_release_front_page','Press Release','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-01-27 17:08:26',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EE7CCC6E6D6BEAA209410E58D5','EDDCA9DCE41A14EE5D5ABE7E3C','news_collection','News Collection','EEED8F61ACA8FD143C4A127AE',1,1,NULL,'2003-01-27 17:07:31',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF1EB25BD481435B56271A67D2','EDDCA9DCE41A14EE5D5ABE7E3C','solution_main_page','Solution Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-01-27 17:09:24',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF58D8599C4F377913FD8D1DB0','ED2E4202F2AE0340726C67A877','product_service','Product Service','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,'2002-08-04 22:37:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF535BF707DC20CA4F0222EAB2','ED2E4202F2AE0340726C67A877','news_collection','News Collection','EF3DB199C4997C0D4CF66C2FE3',0,1,NULL,'2002-08-04 22:44:33',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF5902B02CC7C4E3E55AE7B0AD','ED2E4202F2AE0340726C67A877','cross_line_solution','Cross Line Solution','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,'2002-08-04 22:45:17',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF5C9801CA3FF9F3D99A20F1CD','ED2E4202F2AE0340726C67A877','press_release','Press Release','EF3DD27718347862F68D50A66',0,1,NULL,'2002-08-04 22:38:39',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF5CB147C39DE591879212AE26','ED2E4202F2AE0340726C67A877','our_solutions','Our Solutions','EF3DD1C31AAA5A6C655E9DE458',0,1,NULL,'2002-08-04 22:44:14',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF61F69872E80B522B3F7D1698','EDDCAA0575D694D2560CC2511F','cross_selling','Cross Selling','EF87930075DA19F24E509D71A0',0,1,NULL,'2002-08-08 08:57:28',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF62010E6C4C37EEA867611132','EDDCAA0575D694D2560CC2511F','press_release','Press Release','EF878F2718A11A7D23D6EBF386',0,1,NULL,'2002-08-08 08:58:18',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF62053D7884A7B7C28B461E87','EDDCAA0575D694D2560CC2511F','latest_news','Latest News','EF878EBEE25A571043B9E2D699',0,1,NULL,'2002-08-08 08:57:40',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF620774DA99A708D10B48F528','EDDCAA0575D694D2560CC2511F','our_solutions','Our Solutions','EF87930075DA19F24E509D71A0',0,1,NULL,'2002-08-08 08:58:07',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF6293FFACC7928F2CCCCA37B1','EF62687CC1170D25FC73E0051C','news_main_collection','News Main Collection','EF61DB0ABCB2C0383ED89CF3BE',0,1,NULL,'2002-08-01 04:31:32',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF62A08AAB45C4D0CC1FC6CE06','EF62687CC1170D25FC73E0051C','press_release_main_collection','Press Release Main Collection','EF61DC5B0983D882183BF23C11',0,1,NULL,'2002-08-01 04:48:54',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF62ABFFD639CEDC6F503B678','EF62687CC1170D25FC73E0051C','product_service_main_collection','Product Service Main Collection','EF61DBC92A5A01266BD3D0D049',0,1,NULL,'2002-08-01 04:58:08',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF633A256C589D6A8ED8B8A941','EF62687CC1170D25FC73E0051C','press_release_main','Press Release Main','EF61DC5B0983D882183BF23C11',0,1,NULL,'2002-08-01 07:33:08',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF668717A39DDB0F1D4DF9F526','EF62687CC1170D25FC73E0051C','cross_selling','Cross Selling','EF61DBC92A5A01266BD3D0D049',0,1,NULL,'2002-08-01 22:55:47',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF66892594573B88F1A1CEC0F3','EF62687CC1170D25FC73E0051C','our_solution_collection','Our Solution Collection','EF61DBC92A5A01266BD3D0D049',0,1,NULL,'2002-08-01 22:58:27',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF6704F9D5930E81F3D8232AA0','EF62687CC1170D25FC73E0051C','latest_news_collections','Latest News Collections','EF61DAA20FF6FC31E28AAFACDB',0,1,NULL,'2002-08-02 01:13:47',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF670C78C784ECA3E832D49F41','EF62687CC1170D25FC73E0051C','press_release_collection','Press Release Collection','EF61DC5B0983D882183BF23C11',0,1,NULL,'2002-08-02 01:21:30',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF76DEAB4E65F944FC318B10F2','ED2E4202F2AE0340726C67A877','about_us','About Us','EF3DD04583B1E0BF80BF38F7B4',0,1,NULL,'2002-08-05 03:05:14',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF76F0C602372C01717F4AD69B','EF62687CC1170D25FC73E0051C','about_us','About Us','EF61DD5C4D4F996AE3D9853CD8',0,1,NULL,'2002-08-05 03:24:58',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF770FC06E8EF90EA0E86B7EF4','EE1B28DE85CED7258C4D46D2E2','about_us','About Us','EF7706DCFA2042BE91940B9029',0,1,NULL,'2002-08-05 03:58:53',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF771865DE82B9AE726ACF15BC','EE1B28DE85CED7258C4D46D2E2','cross_selling','Cross Selling','EF7709E076918224E2C5B07B7A',0,1,NULL,'2002-08-05 04:08:18',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF774C7D03E84F326EDC640E5F','EE1B28DE85CED7258C4D46D2E2','our_solutions','Our Solutions','EF7709E076918224E2C5B07B7A',0,1,NULL,'2002-08-05 07:34:33',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF775DC852350BB4108EF6BD48','EE1B28DE85CED7258C4D46D2E2','our_solutions_main','Our Solutions Main','EF7709E076918224E2C5B07B7A',0,1,NULL,'2002-08-05 05:25:04',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF776DA97229A12BB7901E9EEE','EE1B28DE85CED7258C4D46D2E2','press_release','Press Release','EF770A8FA2B9C566FEB2D07D71',0,1,NULL,'2002-08-05 07:34:53',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF776F524038C0A0701BD2751C','EE1B28DE85CED7258C4D46D2E2','press_release_main','Press Release Main','EF770A8FA2B9C566FEB2D07D71',0,1,NULL,'2002-08-05 05:43:18',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF7B00DDED2FDABD09CD662C65','EE1B28DE85CED7258C4D46D2E2','product_service_main','Product Service Main','EF7709E076918224E2C5B07B7A',0,1,NULL,'2002-08-05 22:21:20',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF7B1369BAAA94553E83D3C23E','EE1B28DE85CED7258C4D46D2E2','latest_news','Latest News','EF7708F5A92C7708E431064FF',0,1,NULL,'2002-08-05 22:41:34',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF7B157A3BBA63A103A7417FEA','EE1B28DE85CED7258C4D46D2E2','latest_news_main','Latest News Main','EF7708F5A92C7708E431064FF',0,1,NULL,'2002-08-05 22:43:47',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF877C16F3E59D308B85284D46','EDDCAA0575D694D2560CC2511F','latest_news_main','Latest News Main','EF878EBEE25A571043B9E2D699',0,1,NULL,'2002-08-08 08:57:53',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF877DD13084F34A4E13E123C7','EDDCAA0575D694D2560CC2511F','press_release_main','Press Release Main','EF878F2718A11A7D23D6EBF386',0,1,NULL,'2002-08-08 08:58:30',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF87C834C829B55008B5659662','EDDCAA0575D694D2560CC2511F','our_solutions_main1','Our Solutions Main1','EF87930075DA19F24E509D71A0',0,1,NULL,'2002-08-08 09:54:29',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF87C954124BE5827E8C5ED93D','EDDCAA0575D694D2560CC2511F','our_solutions_main2','Our Solutions Main2','EF87930075DA19F24E509D71A0',0,1,NULL,'2002-08-08 09:55:41',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF87E5E89B29E72B13DA8407BA','EDDCAA0575D694D2560CC2511F','about_us','About Us','EF878D94EA13DF41D77ECEEA3F',0,1,NULL,'2002-08-08 10:26:41',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF8E3B3AB9F109C7BF163C0AD7','EF8E260F5EE7A2E8ECE6F2F3A3','our_solutions','Our Solutions','EF8E2910D6DC72DE5A739B7323',0,1,NULL,'2002-08-09 15:57:44',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF8E3C4ADFBDFB74192B71CB43','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news','Latest News','EF8E2AA141B4B44CED456914C8',0,1,NULL,'2002-08-09 15:58:49',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF8E3D1D196B477841A58FC9A0','EF8E260F5EE7A2E8ECE6F2F3A3','press_release','Press Release','EF8E29F7DF9BD41DE59E1B3273',0,1,NULL,'2002-08-09 15:59:39',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF8E3EDA4FE70036E202E26581','EF8E260F5EE7A2E8ECE6F2F3A3','open_job','Open Job','EF8E2B6302127EB28DF0796D9',0,1,NULL,'2002-08-09 16:01:36',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF8E3FA2E9F723DB325F6A7D02','EF8E260F5EE7A2E8ECE6F2F3A3','about_us','About Us','EF8E28BDB57036C93F24B9B14E',0,1,NULL,'2002-08-09 16:02:25',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF8E42301D17943E5955D9AA44','EF8E260F5EE7A2E8ECE6F2F3A3','press_release_main','Press Release Main','EF8E2A49DD1A4B7CB00B8D1A88',0,1,NULL,'2002-08-09 16:05:17',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF8E42AF4ADA1F31E1F62D5525','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news_main','Latest News Main','EF8E2B0BB26649B06A069D8519',0,1,NULL,'2002-08-09 16:05:52',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EF8E433D0E138F733F2D166C00','EF8E260F5EE7A2E8ECE6F2F3A3','open_jobs_main','Open Jobs Main','EF8E2B6302127EB28DF0796D9',0,1,NULL,'2002-08-09 16:06:29',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EFABD73B9F5C8A2AFC1BC06327','EDDCA9DCE41A14EE5D5ABE7E3C','about_us','About Us','EEED8EE4881FA530706324955E',1,1,NULL,'2003-01-27 17:01:32',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F0143397173EB2898E7BD1DA02','EDDCA9DCE41A14EE5D5ABE7E3C','Frans','','EEED8F61ACA8FD143C4A127AE',1,1,NULL,'2002-09-04 16:18:50',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F01436B63F216AAAB48195159C','EDDCA9DCE41A14EE5D5ABE7E3C','tulalit','','EEED906F3DD8D8C52409FB4D9F',0,1,NULL,'2002-09-04 16:21:47',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F07B56FBB0DE46F4CF2AE5698E','F07B23B53C6185EACC86EFE1D8','press_release_main','Press Release in Main Page','F07B38B571BAEF43E24F0ABE03',1,1,NULL,'2002-09-24 17:03:42',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F036DC14DC945A100E1E4E301C','ED2E4202F2AE0340726C67A877','Testing','','EF3DB199C4997C0D4CF66C2FE3',1,1,NULL,'2002-09-11 09:50:11',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F07B581DE9BA007DB73EB1BEBC','F07B23B53C6185EACC86EFE1D8','review_main','Review in Main Page','F07B3CF003DAFE9F27A30978A7',1,1,NULL,'2002-09-25 10:42:10',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F302DC45188ECE996BB4E65A63','F185BD3FDC5CC7989A3CED51A1','cross_selling','Cross Selling Collection','F302D4FE6D537C49721004181F',1,1,NULL,'2003-03-25 12:59:13',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F07B796043A756D9E97A3FEFF','F07B23B53C6185EACC86EFE1D8','cross_selling','Cross Selling','F07B3AFC312B9E0CA737CE8886',1,1,NULL,'2002-09-24 17:35:52',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F083F1F7C33EA7F3A9A59BE10A','F07B23B53C6185EACC86EFE1D8','recipe','Recipe','F07B3801CF22E2E91A2A70AE4D',1,1,NULL,'2002-09-26 09:04:26',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F083F929ABA341797CD38BBE7D','F07B23B53C6185EACC86EFE1D8','project','Project','F07B3AFC312B9E0CA737CE8886',1,1,NULL,'2002-09-26 09:12:44',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F09DE1952B7D669AD21E500D72','F07B23B53C6185EACC86EFE1D8','press_release','Press Release','F09DDFE362D841F17A30993ED',1,1,NULL,'2002-10-01 09:57:30',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F0842659151A5462F92C16E9D1','F07B23B53C6185EACC86EFE1D8','review','Review','F07B3CA6AAD39BFD520EFFEFC0',1,1,NULL,'2002-09-26 10:01:52',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F08432B3F4174A089CD81F3616','F07B23B53C6185EACC86EFE1D8','resource','Resource','F07B3A364057068AFB1D09B24B',1,1,NULL,'2002-09-26 10:15:01',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F302DD80386E12F543A34F650','F185BD3FDC5CC7989A3CED51A1','latest_news_main_page','Latest News Main Page Collection','F302D4FE6D537C49721004181F',1,1,NULL,'2003-01-28 10:39:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F302DF2D5C14DB19C7398591BC','F185BD3FDC5CC7989A3CED51A1','services_main_page','Product & Services Main Page Collection','F302D4FE6D537C49721004181F',1,1,NULL,'2003-01-28 10:41:43',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F3086EE25AC268B9D89977E44B','F185BD3FDC5CC7989A3CED51A1','press_release','Press Release','F308699BD428889A5632750137',1,1,NULL,'2003-01-29 12:36:29',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F30D61195A51759F754A534603','F185BD3FDC5CC7989A3CED51A1','press_release_archive','Press Release Archive Collection','F30869E6C74A56DDF243778A81',1,1,NULL,'2003-01-30 11:39:43',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F30D6218D92D6172A83CF70347','F185BD3FDC5CC7989A3CED51A1','news','News Collection','F3086B7E11837F450B77703C40',1,1,NULL,'2003-03-19 17:10:48',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F30D62AFC966604EE6B63D5EA','F185BD3FDC5CC7989A3CED51A1','news_archive','News Archive Collection','F3086C6E2EBC786E9D341C958',1,1,NULL,'2003-01-30 11:41:15',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F30D638087912EB63CFF2413C4','F185BD3FDC5CC7989A3CED51A1','product_service','Product & Service Collection','F30D50F630C4B3D981A66A4BD4',1,1,NULL,'2003-01-30 11:42:28',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F30D64A967EC8A114463B155EC','F185BD3FDC5CC7989A3CED51A1','company_structure','Company Structure (About Us)','F30D4F8ED066660E9734DEF2B',0,1,NULL,'2003-01-31 13:39:10',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F30D7A35F127C9F525D69A4BCE','F185BD3FDC5CC7989A3CED51A1','fact_figure','Fact & Figure Collection','F308692D6AEE5FC7D30CACD99C',0,1,NULL,'2003-01-30 12:06:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F312B7926E1BA7B9EEAAB39558','F185BD3FDC5CC7989A3CED51A1','dewan_komisaris','Dewan Komisaris','F30D4CB7B4E33CC6D6DD8CE981',0,1,NULL,'2003-01-31 12:31:49',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F312B82623C31410C34434A7B3','F185BD3FDC5CC7989A3CED51A1','dewan_direksi','Dewan Direksi','F30D4CB7B4E33CC6D6DD8CE981',0,1,NULL,'2003-01-31 12:32:21',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F31330D19DFD3F3245616F57B0','F185BD3FDC5CC7989A3CED51A1','company_lob_horticulture','Line of Business Horticulture','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:16:27',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F3133249977BD2C0636E037D23','F185BD3FDC5CC7989A3CED51A1','company_lob_plantation','Line of Business Plantation','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:15:38',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F3133322C1D43F2988CD387324','F185BD3FDC5CC7989A3CED51A1','company_lob_mining','Line of Business Mining','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:15:59',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F31333E67F5209AE9B31726965','F185BD3FDC5CC7989A3CED51A1','company_lob_others','Line of Business Others','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:15:23',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F3FF22FA60FDC1B3F09C2A27AF','F185BD3FDC5CC7989A3CED51A1','sitemap','Site Map Collection','F30424474044603B72B3C3BA3',0,1,NULL,'2003-03-18 10:19:49',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F3FF58FF3B49C217BA449F6849','F185BD3FDC5CC7989A3CED51A1','makin_subsidiary','Makin & Subsidiary Page Collection','F30D5022D3E7ABE3498CA22B8A',1,1,NULL,'2003-03-18 11:19:55',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F40025C7BB2B1555515A1FF83F','F185BD3FDC5CC7989A3CED51A1','head_office','Head Office Collection','F3086DE1A3F88F17DAA77F5EA8',0,1,NULL,'2003-03-18 16:13:59',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4006A4702C02EC8B03504B154','F185BD3FDC5CC7989A3CED51A1','branch_office','Branch Office Collection','F3086DE1A3F88F17DAA77F5EA8',0,1,NULL,'2003-03-18 16:16:55',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F40A12670642457146FE92A5BF','F185BD3FDC5CC7989A3CED51A1','company_lob_logging','Line Of Business Logging','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,'2003-03-20 13:35:57',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D332FCE8E1713BFFA339672F','F4D30718756B8401E43FD2AAE6','cross_selling_solution','Cross Selling','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-29 10:32:14',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D345059E58F35226610428E3','F4D30718756B8401E43FD2AAE6','solution_main_page','Solution In Main Page Collection','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-28 16:51:21',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D34862CECEC33E7A3DFBF2F6','F4D30718756B8401E43FD2AAE6','news_collection','News Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-28 15:00:01',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D34917CF2D95241724082D6E','F4D30718756B8401E43FD2AAE6','press_release_main_page','Press Release Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-29 10:35:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D34AE05BA664870CE107F5C4','F4D30718756B8401E43FD2AAE6','open_job_collection','Open Job Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,'2003-04-28 15:02:45',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D3E9C42018508CFBD44C1F7F','F4D30718756B8401E43FD2AAE6','solution_collection','Solution Collection','EEED906F3DD8D8C52409FB4D9F',1,1,NULL,'2003-04-28 17:56:13',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D77D9A595E11607831E05333','F4D30718756B8401E43FD2AAE6','press_release_collection','Press Release Collection','EEED91195E6BDC9CF09ECB2DF3',1,1,NULL,'2003-04-29 10:42:16',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D7872202EEF42DB1BEE35CAD','F4D30718756B8401E43FD2AAE6','news_collection','News Collection','EEED8F61ACA8FD143C4A127AE',1,1,NULL,'2003-04-29 10:47:07',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4D7908E18A0B591AD5B35C429','F4D30718756B8401E43FD2AAE6','about_us','About Us Collection','EEED8EE4881FA530706324955E',1,1,NULL,'2003-04-29 10:57:50',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4DD67C9F9D543C3720D645FA0','F4DD64134EC050E3D0A256EA0D','cross_selling','Cross Selling Collection','F07B379B79C9CD7743C23D2596',0,1,NULL,'2003-09-02 11:57:08',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4DD6885A1EF5A5916B28F0DE0','F4DD64134EC050E3D0A256EA0D','review_main','Review Main Collection','F07B379B79C9CD7743C23D2596',1,1,NULL,'2003-04-30 14:11:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E2D64CF8DDBED197CF1D4EC7','F4DD64134EC050E3D0A256EA0D','press_release','Press Release Collection','F09DDFE362D841F17A30993ED',1,1,NULL,'2003-05-01 15:29:10',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E2F93A23C96AF5243A648900','F4DD64134EC050E3D0A256EA0D','press_release_main','Press Release In Main Page Collection','F07B379B79C9CD7743C23D2596',1,1,NULL,'2003-05-01 16:07:27',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E30221D6345730817DF8B10B','F4DD64134EC050E3D0A256EA0D','project','Project Collection (News)','F07B3AFC312B9E0CA737CE8886',1,1,NULL,'2003-05-01 16:17:08',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E30766D4F6B10B77D890862C','F4DD64134EC050E3D0A256EA0D','recipe','Recipe Collection (news)','F07B3801CF22E2E91A2A70AE4D',1,1,NULL,'2003-05-01 16:22:54',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E30E4255F0C0ECA9CF12C58D','F4DD64134EC050E3D0A256EA0D','resource','Resource Collection (weblink)','F07B3A364057068AFB1D09B24B',1,1,NULL,'2003-05-01 16:30:49',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E315146AC0D62352296671C6','F4DD64134EC050E3D0A256EA0D','review','Review Collection','F07B3CA6AAD39BFD520EFFEFC0',1,1,NULL,'2003-05-01 16:38:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E8349537A24F34C2BADB1136','F4E6A635A8AC141BAE7F98504','press_release_main','Press Release in Main Page Collection','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,'2003-05-02 16:30:30',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E8355C0D223308A5E405F8C3','F4E6A635A8AC141BAE7F98504','latest_news_main','Latest News in Main Page Collection','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,'2003-05-02 16:31:18',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E8361B7E88B3E21FDEC4E502','F4E6A635A8AC141BAE7F98504','our_solutions_main','Our Solution in Main Page','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,'2003-05-02 16:32:03',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E83EF7F42ADCFA4C089A7267','F4E6A635A8AC141BAE7F98504','latest_news','Latest News Collection','EF8E2AA141B4B44CED456914C8',1,1,NULL,'2003-05-02 16:43:17',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E841228EF31C223EC4C3C44','F4E6A635A8AC141BAE7F98504','our_solutions','Our Solutions Collection','EF8E2910D6DC72DE5A739B7323',1,1,NULL,'2003-05-02 16:44:27',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E84237BF3A0CE289DCA92CD4','F4E6A635A8AC141BAE7F98504','press_release','Press Release Collection','EF8E29F7DF9BD41DE59E1B3273',1,1,NULL,'2003-05-02 16:47:24',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4E85130966839B75E0A0C8C90','F4E6A635A8AC141BAE7F98504','about_us','About Us Collection','EF8E285DE8A1E858D8BCC33A12',1,1,NULL,'2003-05-02 17:01:35',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F5015CD1D2ED0D963111F06942','F4DD64134EC050E3D0A256EA0D','recipe_main','Recipe in Main Page','F07B379B79C9CD7743C23D2596',1,1,NULL,'2003-05-07 13:44:47',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F5015D733AF172E8FBC3427079','F4DD64134EC050E3D0A256EA0D','resource_main','Resource In Main Page','F07B379B79C9CD7743C23D2596',1,1,NULL,'2003-05-07 13:45:28',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F78EB6DBE6A3A38FDAAA43DFB8','F78E9748E9F76ABD233C5EAD39','news','news','F302D4FE6D537C49721004181F',1,1,NULL,'2003-09-11 10:56:39',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;

--
-- Table structure for table `collection_descriptor`
--

DROP TABLE IF EXISTS `collection_descriptor`;
CREATE TABLE `collection_descriptor` (
  `id` varchar(28) NOT NULL default '',
  `collection_id` varchar(28) NOT NULL default '',
  `descriptor_id` varchar(28) NOT NULL default '',
  `descriptor_name` varchar(128) NOT NULL default '',
  `ordered_by` varchar(255) NOT NULL default '',
  `limit_value` tinyint(2) NOT NULL default '0',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_descriptor`
--


/*!40000 ALTER TABLE `collection_descriptor` DISABLE KEYS */;
LOCK TABLES `collection_descriptor` WRITE;
INSERT INTO `collection_descriptor` VALUES ('EE49BCAD5CA5705FE9F8E56D6C','EE3ECA91DAA5AB0EA3563A9542','1','descriptor','',0,NULL,'2002-06-07 15:42:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EE48E57C2CB4FF14995BED0A84','EE48E5532353CE62EE4F9C547E','23','article','',0,NULL,'2002-06-07 11:47:05',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EE7C75DB6311E655012964FEAA','EE7C7412CB68D123F4F160B4B8','EE163600A2BAD87965E20E9C9A','services','id',3,NULL,'2003-01-27 17:01:52',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF1EED9EBAF0CDEB64BD6DE020','EF1EEB444F1CC7924207265864','EF1EE6CF42F37C9EA72FAE3B94','open_job','id',3,NULL,'2003-01-27 17:07:50',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF575A8BCA671D71242536BAE9','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-05 07:00:45',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE49BC9C4DB8FA107B8CD714F5','EE3ECA91DAA5AB0EA3563A9542','13','backend_user','',0,NULL,'2002-06-07 15:42:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF57BF101754C4ECA8FFDA64FE','EF57BEBF18DC03624A9537EE53','EF1EE6CF42F37C9EA72FAE3B94','open_job','',0,NULL,'2002-08-04 22:43:49',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE7C69B32D3570145BAF306A32','EE7C699016F886FEA906FA5DAC','EE163600A2BAD87965E20E9C9A','services','id',3,NULL,'2003-01-27 17:09:05',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF53B2C745B83003BE1996CC15','EF53B0FCA7D4F4CE80369A3BC0','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-04 22:38:21',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE7CCC89DADD57DAE0D3D1E878','EE7CCC6E6D6BEAA209410E58D5','EE1634B19EB64BB12485263F79','news','id',3,NULL,'2003-01-27 17:07:31',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF58A90BDF298F7B6BCB4AACE5','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-04 22:44:53',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF58D89F9EB44E6FEB827C4397','EF58D8599C4F377913FD8D1DB0','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-04 22:37:51',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF580D11253A32D8BF81521585','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-04 22:36:53',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF535C448B19C2A6973D84663D','EF535BF707DC20CA4F0222EAB2','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-04 22:44:33',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF590366E99ECE0020666EB1EE','EF5902B02CC7C4E3E55AE7B0AD','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-04 22:45:17',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C9870A1654A372F4CC8A063','EF5C9801CA3FF9F3D99A20F1CD','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-04 22:38:39',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CB19C5BB62EFB60DF437F8B','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-04 22:44:14',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF61F74897E5CA58762AA9711E','EF61F69872E80B522B3F7D1698','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-08 08:57:28',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF620195219F0DF8C047860493','EF62010E6C4C37EEA867611132','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-08 08:58:18',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF6205BBFEA3D2D6F18C97A0AD','EF62053D7884A7B7C28B461E87','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-08 08:57:40',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF6207DDE499D677F14E1BE85C','EF620774DA99A708D10B48F528','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-08 08:58:07',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF62946CAE468A91C1C409BC2A','EF6293FFACC7928F2CCCCA37B1','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-01 04:31:32',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62A45D4F9619826F84FCBA11','EF62A08AAB45C4D0CC1FC6CE06','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-01 04:48:54',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62ACAAFB15B29A777E987DCB','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-01 04:58:08',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF633AAE73872BD8AF54C2F322','EF633A256C589D6A8ED8B8A941','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-01 07:33:08',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF66876C2C3DEDF5EC1463F810','EF668717A39DDB0F1D4DF9F526','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-01 22:55:47',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF6689DA1E3B99EB6E6F91B130','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-01 22:58:27',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670593956C56B9045148908A','EF6704F9D5930E81F3D8232AA0','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-02 01:13:47',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670CDC0638663D995F52B78E','EF670C78C784ECA3E832D49F41','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-02 01:21:30',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF76DEE9BEFE05280BEC57D074','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,'2002-08-05 03:05:14',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF76F104B18B88595AA94875CC','EF76F0C602372C01717F4AD69B','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,'2002-08-05 03:24:58',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF771015A2C4CE892D44D2813','EF770FC06E8EF90EA0E86B7EF4','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,'2002-08-05 03:58:53',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7718B14F7D15B2A8CE48698C','EF771865DE82B9AE726ACF15BC','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-05 04:08:18',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF774D31BD29BAF58CDD8FA7FD','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-05 07:34:33',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF775EEC8E446219D98AECD3C1','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-05 05:25:04',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776E1C50F5266FD30ACFF38C','EF776DA97229A12BB7901E9EEE','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-05 07:34:53',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776F9EBADC6723BEB543BA72','EF776F524038C0A0701BD2751C','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-05 05:43:18',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B015494CC2E208C28141D0A','EF7B00DDED2FDABD09CD662C65','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-05 22:21:20',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B13DF09AF0D9B6B778A779A','EF7B1369BAAA94553E83D3C23E','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-05 22:41:34',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B15E57836AA712698264D4E','EF7B157A3BBA63A103A7417FEA','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-05 22:43:47',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF877C7558C138B1ABE3376E1A','EF877C16F3E59D308B85284D46','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-08 08:57:53',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF877E1479AC0AAB7F4FAFE667','EF877DD13084F34A4E13E123C7','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-08 08:58:30',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87C8A84D1FB65825A0665B1F','EF87C834C829B55008B5659662','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-08 09:54:29',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87C9B12C343B4F359A550647','EF87C954124BE5827E8C5ED93D','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-08 09:55:41',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87E6361078FD3A26E51F98A2','EF87E5E89B29E72B13DA8407BA','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,'2002-08-08 10:29:15',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8E3B8C0D511B45C9BB178AB0','EF8E3B3AB9F109C7BF163C0AD7','EE163600A2BAD87965E20E9C9A','services','',0,NULL,'2002-08-09 15:57:44',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3C88E05124DC0D340876DC','EF8E3C4ADFBDFB74192B71CB43','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-09 15:58:49',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3D55C8C5B482CB44174D15','EF8E3D1D196B477841A58FC9A0','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-09 15:59:39',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3F181E3AB82CE1B54C4A31','EF8E3EDA4FE70036E202E26581','EF1EE6CF42F37C9EA72FAE3B94','open_job','',0,NULL,'2002-08-09 16:01:36',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3FE2207E25BCB1FE4BB9C5','EF8E3FA2E9F723DB325F6A7D02','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,'2002-08-09 16:02:25',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E42817189FE60B4C0E8D63D','EF8E42301D17943E5955D9AA44','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,'2002-08-09 16:05:17',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E430E775E34E96579EBDD25','EF8E42AF4ADA1F31E1F62D5525','EE1634B19EB64BB12485263F79','news','',0,NULL,'2002-08-09 16:05:52',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E439F5CD31338C41BA66D42','EF8E433D0E138F733F2D166C00','EF1EE6CF42F37C9EA72FAE3B94','open_job','',0,NULL,'2002-08-09 16:06:29',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EFABD770DDBA32FE00CB4B3F81','EFABD73B9F5C8A2AFC1BC06327','EF76BA4ED5D8F2A21B1933A750','about_us','id',3,NULL,'2003-01-27 17:01:32',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F2FDAB2A8C3D2D850FBB19E301','F0143397173EB2898E7BD1DA02','EE163600A2BAD87965E20E9C9A','services','id',1,NULL,'2003-01-27 10:26:20',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F014357F69ED4565CF1CAD78E7','F0143397173EB2898E7BD1DA02','26','ads_product','id',1,NULL,'2003-01-27 10:26:20',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F014370133771BC02745E23AA9','F01436B63F216AAAB48195159C','E8D4A7375EAF7B953F36C71292','assign_descriptor','null',0,NULL,'2002-09-04 16:21:47',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF1EB509124AD89E8A9F0C180C','EF1EB25BD481435B56271A67D2','EE163600A2BAD87965E20E9C9A','services','id',2,NULL,'2003-01-27 17:09:24',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F07B7AB0E1D1BDC3D3E03442B8','F07B581DE9BA007DB73EB1BEBC','EE1634B19EB64BB12485263F79','news','transmitted_date_time',4,NULL,'2002-09-25 15:07:57',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F036DCB9B5363CFDD3D8B684C3','F036DC14DC945A100E1E4E301C','EE1634B19EB64BB12485263F79','news','headline',4,NULL,'2002-09-11 09:50:11',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('F07B5C7D418AF6C2AD64F902D','F07B56FBB0DE46F4CF2AE5698E','EE16354AB187B638CC4579F8B6','press_release','press_release_date',3,NULL,'2002-09-25 14:17:28',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F07B7B110860F8B114A409390C','F07B796043A756D9E97A3FEFF','EE1634B19EB64BB12485263F79','news','headline',3,NULL,'2002-09-25 15:28:18',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F083F255B0D5BAB1676721CFAC','F083F1F7C33EA7F3A9A59BE10A','EE1634B19EB64BB12485263F79','news','headline',4,NULL,'2002-09-26 09:04:26',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F083F9F598549F6DC32A16547A','F083F929ABA341797CD38BBE7D','EE1634B19EB64BB12485263F79','news','headline',3,NULL,'2002-09-26 09:15:16',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F09DE2D045F584EE9419E0121F','F09DE1952B7D669AD21E500D72','EE16354AB187B638CC4579F8B6','press_release','title',3,NULL,'2002-10-01 09:57:30',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F08426FA195D4C108E6CBAF1B0','F0842659151A5462F92C16E9D1','EE1634B19EB64BB12485263F79','news','headline',4,NULL,'2002-09-26 10:01:52',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F0843314118F43F7856869B801','F08432B3F4174A089CD81F3616','E7A781CFBA45A3CB44C81D8236','web_link','link_url',3,NULL,'2002-09-26 10:15:01',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('EE7CCBD913DAB719E8F6580601','EE7CCBBE336CC05ECCC3DEDB04','EE16354AB187B638CC4579F8B6','press_release','id',3,NULL,'2003-01-27 17:08:26',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F302DCCC0BC81890A148BA63D7','F302DC45188ECE996BB4E65A63','F3C2998AFDB590924800ACCC95','press_release_portal','id',3,NULL,'2003-03-25 12:59:13',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F302DE7391FD90009A02084D49','F302DD80386E12F543A34F650','F3C2963AD8A291EF75E1311711','news_portal','create_date',2,NULL,'2003-03-19 11:28:25',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F302E019DE530752476A23169F','F302DF2D5C14DB19C7398591BC','EE163600A2BAD87965E20E9C9A','services','create_date',3,NULL,'2003-03-20 10:02:29',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3086F72F2F11D7220B8973B94','F3086EE25AC268B9D89977E44B','F3C2998AFDB590924800ACCC95','press_release_portal','create_date',3,NULL,'2003-03-07 16:48:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30D61E65F784A4B4E0F0415C4','F30D61195A51759F754A534603','F3C2998AFDB590924800ACCC95','press_release_portal','create_date',25,NULL,'2003-03-07 16:49:29',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30D628379A77A88E0BCB8E108','F30D6218D92D6172A83CF70347','F3C2963AD8A291EF75E1311711','news_portal','create_date',2,NULL,'2003-03-19 17:10:48',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30D633D343CBDB75DF40DCE20','F30D62AFC966604EE6B63D5EA','F3C2963AD8A291EF75E1311711','news_portal','create_date',25,NULL,'2003-03-19 17:10:30',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30D6463B32E6CA60E40D2F7A7','F30D638087912EB63CFF2413C4','EE163600A2BAD87965E20E9C9A','services','create_date',5,NULL,'2003-01-30 11:42:28',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30D65824247999ED4D2975311','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','name',5,NULL,'2003-01-31 13:39:10',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30D7ABD03663CDA90E22CDDAB','F30D7A35F127C9F525D69A4BCE','F30D6D4A72F6871D6DB046BCB6','fact_figure','null',0,NULL,'2003-01-30 12:06:51',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312B7F9D32CECE8797FB3740B','F312B7926E1BA7B9EEAAB39558','F312A7DFF0D600D4866CCD4E28','makin_director','null',0,NULL,'2003-01-31 12:31:49',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312B86BE69910FD4F57108083','F312B82623C31410C34434A7B3','F312A7DFF0D600D4866CCD4E28','makin_director','null',0,NULL,'2003-01-31 12:32:21',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F31331CA55975FB0862E8D9C9F','F31330D19DFD3F3245616F57B0','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,'2003-03-20 13:16:27',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F31332F400DEDFAE974E613DDB','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,'2003-03-20 13:15:38',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F31333BACB718BB25F212D34A9','F3133322C1D43F2988CD387324','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,'2003-03-20 13:15:59',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F313342BA6F1512F57ADE56244','F31333E67F5209AE9B31726965','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,'2003-03-20 13:15:23',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF2371D2B2DF6DCD23F1C1E0','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','null',0,NULL,'2003-03-18 10:19:49',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF5AA0C611BE8DBC8EF042D3','F3FF58FF3B49C217BA449F6849','F3FF36F3D74BBBACD7A0D5E93A','makin_subsidary','id',3,NULL,'2003-03-18 11:19:55',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40067DCB9C06EEB9266396B15','F40025C7BB2B1555515A1FF83F','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,'2003-03-18 16:13:59',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F4006A93DABF84C3B63736EA8D','F4006A4702C02EC8B03504B154','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,'2003-03-18 16:16:55',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A1370489AE0D1D436CD3EBF','F40A12670642457146FE92A5BF','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,'2003-03-20 13:35:57',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F4D333BF363143DC43B09F7C67','F4D332FCE8E1713BFFA339672F','EE163600A2BAD87965E20E9C9A','services','headline',3,NULL,'2003-04-29 10:33:16',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D347ED511E82E13B6D324445','F4D345059E58F35226610428E3','EE163600A2BAD87965E20E9C9A','services','create_date',3,NULL,'2003-05-20 09:10:27',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D348EF1FFB87C06BB60F4794','F4D34862CECEC33E7A3DFBF2F6','EE1634B19EB64BB12485263F79','news','create_date',3,NULL,'2003-05-20 09:09:44',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D34AAB3947E85AB7E0E3BBE8','F4D34917CF2D95241724082D6E','EE16354AB187B638CC4579F8B6','press_release','transmitted_date_time',3,NULL,'2003-04-29 10:35:51',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D34B57DB742921D7FE3E5726','F4D34AE05BA664870CE107F5C4','EF1EE6CF42F37C9EA72FAE3B94','open_job','create_date',3,NULL,'2003-05-20 09:10:06',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D3EA4426E6A828C66C9AC65D','F4D3E9C42018508CFBD44C1F7F','EE163600A2BAD87965E20E9C9A','services','create_date',20,NULL,'2003-05-20 09:08:38',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D77E78A081BF91514C0EC65','F4D77D9A595E11607831E05333','EE16354AB187B638CC4579F8B6','press_release','create_date',20,NULL,'2003-05-20 09:09:15',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D7877E12ED0164E5D1EE20E4','F4D7872202EEF42DB1BEE35CAD','EE1634B19EB64BB12485263F79','news','create_date',20,NULL,'2003-05-20 09:08:56',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D7912C5DBD64127624D1F4AB','F4D7908E18A0B591AD5B35C429','EF76BA4ED5D8F2A21B1933A750','about_us','headline',10,NULL,'2003-10-29 09:03:45',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4E2EFB7A9EF6CE18F0AC6CC3C','F4DD67C9F9D543C3720D645FA0','EE1634B19EB64BB12485263F79','news','headline',5,NULL,'2003-09-02 11:57:08',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4DD698FDDF0DC6B01B3959E07','F4DD6885A1EF5A5916B28F0DE0','F50196413176576A64F6F27A86','blueoxygen_review','create_date',3,NULL,'2003-05-07 15:17:25',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E2D6B018EFDD385EAFD73F5B','F4E2D64CF8DDBED197CF1D4EC7','EE16354AB187B638CC4579F8B6','press_release','create_date',5,NULL,'2003-06-24 11:49:29',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E2F9B4ABA1FFBFFA507D5068','F4E2F93A23C96AF5243A648900','EE16354AB187B638CC4579F8B6','press_release','create_date',3,NULL,'2003-05-01 16:07:27',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E3028DB618F5EB4E213CB94E','F4E30221D6345730817DF8B10B','F501EBD2F6B03958384BD30C50','blueoxygen_project','id',20,NULL,'2003-05-07 16:22:55',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E30F2748797F1D9C54744E03','F4E30E4255F0C0ECA9CF12C58D','E7A781CFBA45A3CB44C81D8236','web_link','create_date',25,NULL,'2003-05-25 12:54:39',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E315B3AE2B6E8FF986CC01EB','F4E315146AC0D62352296671C6','F50196413176576A64F6F27A86','blueoxygen_review','create_date',20,NULL,'2003-05-07 15:16:53',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E8352BF892F5C4CC0F2E716B','F4E8349537A24F34C2BADB1136','EE16354AB187B638CC4579F8B6','press_release','headline',3,NULL,'2003-05-02 16:30:30',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E835E451E92569B711C793C6','F4E8355C0D223308A5E405F8C3','EE1634B19EB64BB12485263F79','news','create_date',3,NULL,'2003-05-02 16:31:18',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E836A07056933EA8CD1B4951','F4E8361B7E88B3E21FDEC4E502','EE163600A2BAD87965E20E9C9A','services','headline',3,NULL,'2003-05-02 16:32:03',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E8408D34229A53E6F9959277','F4E83EF7F42ADCFA4C089A7267','EE1634B19EB64BB12485263F79','news','create_date',5,NULL,'2003-05-02 16:43:17',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E841C8B79E5E1CCC2E759ECA','F4E841228EF31C223EC4C3C44','EE163600A2BAD87965E20E9C9A','services','headline',5,NULL,'2003-05-02 16:44:27',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E843C8FB5AA8B2B8E285CA19','F4E84237BF3A0CE289DCA92CD4','EE16354AB187B638CC4579F8B6','press_release','create_date',5,NULL,'2003-05-02 16:47:24',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E851A9B24F0667F1535A2C92','F4E85130966839B75E0A0C8C90','EF76BA4ED5D8F2A21B1933A750','about_us','headline',10,NULL,'2003-05-02 17:01:35',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F5015DEE32B5D9657898EF2DBE','F5015D733AF172E8FBC3427079','E7A781CFBA45A3CB44C81D8236','web_link','create_date',3,NULL,'2003-05-25 12:54:55',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E307E528162E5B9C15ABE592','F4E30766D4F6B10B77D890862C','F501956E01E1C9C2DFFEC614DB','blueoxygen_recipe','create_date',20,NULL,'2003-05-07 15:16:07',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F760F4EDECCFCE037DBB7880DD','F5015CD1D2ED0D963111F06942','F501956E01E1C9C2DFFEC614DB','blueoxygen_recipe','id',1,NULL,'2003-09-02 13:21:48',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F78EC69D33422D8B93DF3179AC','F78EB6DBE6A3A38FDAAA43DFB8','EE1634B19EB64BB12485263F79','news','id',3,NULL,'2003-09-11 10:56:39',NULL,'0000-00-00 00:00:00','0','ic','F78E9748E9F76ABD233C5EAD39');
UNLOCK TABLES;
/*!40000 ALTER TABLE `collection_descriptor` ENABLE KEYS */;

--
-- Table structure for table `collection_detail`
--

DROP TABLE IF EXISTS `collection_detail`;
CREATE TABLE `collection_detail` (
  `id` varchar(28) NOT NULL default '',
  `collection_id` varchar(28) NOT NULL default '',
  `descriptor_id` varchar(28) NOT NULL default '',
  `descriptor_name` varchar(128) NOT NULL default '',
  `article_id` varchar(28) NOT NULL default '',
  `article_desc` varchar(255) NOT NULL default '',
  `rank` tinyint(10) NOT NULL default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection_detail`
--


/*!40000 ALTER TABLE `collection_detail` DISABLE KEYS */;
LOCK TABLES `collection_detail` WRITE;
INSERT INTO `collection_detail` VALUES ('EF5C91C55B950946B24DF82921','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF53696D611BF0D3D7A7546BE2','Intecitra Websites v.1.9',2,NULL,'2002-07-31 00:31:32',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF57BF91BA6D4F6268C14046B8','EF57BEBF18DC03624A9537EE53','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF57BDF80FA246572D73D85E63','Programmer',3,NULL,'2002-07-30 02:02:43',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF575AFDFC853466F996A07752','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','EF57575AD591ECDA1C2FEC8C8D','integrated_solution',2,NULL,'2002-07-30 00:13:12',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF575B14724FBCFD6D6DECD7B5','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','EF5758B1CA281B487CECF66532','offline_online_solution',3,NULL,'2002-07-30 00:13:12',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF575B2C7F649BA764D114AD34','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','EF57598A487F5669844986B7B0','360_degrees_solution',4,NULL,'2002-07-30 00:13:12',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF579F9EA7507ECAE6ED4CCB02','EF53B0FCA7D4F4CE80369A3BC0','EE16354AB187B638CC4579F8B6','press_release','EF579DC7668F8128FDC9D97EFE','press_release2',2,NULL,'2002-07-30 01:28:03',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF579FC2D862DDC5DCD86E7BB7','EF53B0FCA7D4F4CE80369A3BC0','EE16354AB187B638CC4579F8B6','press_release','EF579EDBE315D10BD8D3B057B0','press_release3',3,NULL,'2002-07-30 01:28:03',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF57BF5E46E6F7C1C0551378D6','EF57BEBF18DC03624A9537EE53','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF2F0FC62FE000588342B2A58','Java Developer',1,NULL,'2002-07-30 02:02:43',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF57BF792154F45BC942AD5833','EF57BEBF18DC03624A9537EE53','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF57BD11F59D7A2C77A5A3D378','Accounting',2,NULL,'2002-07-30 02:02:43',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE2070AD6F2366B5C6CE97A5F6','EE2070A06861DB20E5C73E2E2','23','article','EE00D1FD68B2F4C4E5ED36C42C','null',1,NULL,'2002-05-30 15:14:56',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE2070DFD1BDFE05B377ABF302','EE2070A06861DB20E5C73E2E2','23','article','EDF200EFF845083C774A1C953D','Jittery Investors Resort to Sell-Off',2,NULL,'2002-05-30 15:14:56',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE1A3621D650CAAAFCCD7F3FD7','EE1A3613C15E812C82B6FDF015','E7A779BA12440C5CC627D043AD','age','2','4-6',1,NULL,'2002-05-29 10:13:01',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EE1A3903DAA6327229303F7B82','EE1A38F14FA782A6E40B12CD2','E7A779BA12440C5CC627D043AD','age','2','4-6',1,NULL,'2002-05-29 10:16:19',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EE24C766F443D8D51AD5ABB06B','EE24C74AE745D17CD47DC1A095','23','article','EDF200EFF845083C774A1C953D','Jittery Investors Resort to Sell-Off',1,NULL,'2002-05-31 11:27:57',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EE24C82883F73DBAFCFFDC8E9C','EE24C80E398C59AFE1C081CDE4','23','article','EDF1FED938718D8806EE521D03','US Group to Build Nepal Power Plant',1,NULL,'2002-05-31 11:28:42',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF575ADF78327C2F3AC7EC5A06','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','EF5754755119A3B2E3211AD22','guerilla_service',1,NULL,'2002-07-30 00:13:12',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE39EE6CA236C01D9E91760744','EE39EDC9453DC094BF2AA22E81','E8D4B8FCEB555B9D2AD8D143F6','assign_osml','null','null',1,NULL,'2002-06-04 14:32:12',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE39F150EABA6670179564E71F','EE39EDC9453DC094BF2AA22E81','E7A77820F8D3EEB61E12EF7DD5','ads_client','null','null',2,NULL,'2002-06-04 14:32:12',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF53B3238E5E3684D572681F50','EF53B0FCA7D4F4CE80369A3BC0','EE16354AB187B638CC4579F8B6','press_release','EF53ADCFAAA9F6C5BAE9A8A629','Press release1',1,NULL,'2002-07-30 01:28:03',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF1EB7DD31E7265EFC737FFC6A','EF1EB25BD481435B56271A67D2','EE163600A2BAD87965E20E9C9A','services','EE8213E8C3D062C30B823889D','Collaboration Internetworking',3,NULL,'2002-09-12 08:34:56',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EE49BB1A47CCE35FBC66572EDD','EE48E5532353CE62EE4F9C547E','23','article','EE24C9816C7409EF634E62F7EB','null',1,NULL,'2002-06-07 15:41:15',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61F31815342CC5DF2DEC053D','EE7C699016F886FEA906FA5DAC','EE163600A2BAD87965E20E9C9A','services','EE8213E8C3D062C30B823889D','Collaboration Internetworking',3,NULL,'2002-08-01 01:35:19',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF61F30383A41C64903D61C87E','EE7C699016F886FEA906FA5DAC','EE163600A2BAD87965E20E9C9A','services','EE81F51791C15869C3CDE187C5','Corporate Portal Solution',2,NULL,'2002-08-01 01:35:19',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF61F2E82BD31C3D26440EB650','EE7C699016F886FEA906FA5DAC','EE163600A2BAD87965E20E9C9A','services','EE7C684145375E2988E9863A1E','Guerilla Wired Program',1,NULL,'2002-08-01 01:35:19',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF5361559A390AEB92D8954F4','EF535BF707DC20CA4F0222EAB2','EE1634B19EB64BB12485263F79','news','EF535DBC564E1103F7C050F192','18.00, 20/06/02',1,NULL,'2002-07-29 07:02:53',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF53A9F17EB7DCF8A8DB7B3B8B','EF535BF707DC20CA4F0222EAB2','EE1634B19EB64BB12485263F79','news','EF5390D19B5DD4C2F1A0A96A90','11.22, 17/03/02',3,NULL,'2002-07-29 07:01:06',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF536A8B634AC9B51EFCD29DD3','EF535BF707DC20CA4F0222EAB2','EE1634B19EB64BB12485263F79','news','EF53696D611BF0D3D7A7546BE2','13.14, 18/05/02',2,NULL,'2002-07-29 07:03:11',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('F405109E0FC9AD74FF7B9DB82F','F312B82623C31410C34434A7B3','F312A7DFF0D600D4866CCD4E28','makin_director','F4049E0F09488520CCC5AD7FED','test aja...',2,NULL,'2003-03-19 14:01:12',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30D91C81F9902311F7199C916','F30D7A35F127C9F525D69A4BCE','F30D6D4A72F6871D6DB046BCB6','fact_figure','F30D90E2A1C592CC2D292166BB','fact1',1,NULL,'2003-01-30 12:32:24',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312CA7CB7D8A16887560F2BCF','F312B82623C31410C34434A7B3','F312A7DFF0D600D4866CCD4E28','makin_director','F312B60278CEAC24F96D8A3E3E','Bambang Harto Tjahjono',1,NULL,'2003-03-19 14:01:12',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('EF04187ED5563B54FA233C9577','EE7CCBBE336CC05ECCC3DEDB04','EE16354AB187B638CC4579F8B6','press_release','EF0417E00C1393C407D2E0CBC3','Press Release Title',2,NULL,'2002-07-19 00:45:48',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F312CAD9ACC1D06D7C6FBF6ABB','F312B7926E1BA7B9EEAAB39558','F312A7DFF0D600D4866CCD4E28','makin_director','F312B60278CEAC24F96D8A3E3E','Bambang Harto Tjahjono',2,NULL,'2003-01-31 12:52:35',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('EF1EB74F877031D1674D254E29','EF1EB25BD481435B56271A67D2','EE163600A2BAD87965E20E9C9A','services','EE7C684145375E2988E9863A1E','Guerilla Promotion Wired Progr',1,NULL,'2002-09-12 08:34:56',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF1EB78A2F6391307B4B40CA7','EF1EB25BD481435B56271A67D2','EE163600A2BAD87965E20E9C9A','services','EE81F51791C15869C3CDE187C5','Corporate Portal Solution',2,NULL,'2002-09-12 08:34:56',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF1ED2C07E295A442EF97F7E48','EE7CCBBE336CC05ECCC3DEDB04','EE16354AB187B638CC4579F8B6','press_release','EF1ED26A8E84F1C8790BF05076','Press Release Baru 1',1,NULL,'2002-07-19 00:45:48',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF1EF98116F566137969337D20','EF1EEB444F1CC7924207265864','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF1EF7ECE9D2C40A656132F2E','Java Developer',1,NULL,'2002-07-19 01:27:39',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF580DF78DF7665E633AAEE530','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','EF580C339697C55B5E4CDB68E1','Solution Five',4,NULL,'2002-07-30 03:37:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF580DCF9384FCB3C1396D096C','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','EF580BCBF3D3D23511CA3B2407','Solution Four',3,NULL,'2002-07-30 03:37:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF580DAF593C38699FA82AB6F0','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','EF580B00B41345C82F8D1E1DB0','Solution Three',2,NULL,'2002-07-30 03:37:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF580D94202D7F1FAA2B3FB5FC','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','EF580A9A97C6CC86E36D458F58','Solution Two',1,NULL,'2002-07-30 03:37:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C91E910213F9864A5F2AEF4','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF5390D19B5DD4C2F1A0A96A90','New Staff Recruitment',3,NULL,'2002-07-31 00:31:32',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF58DBDF87D9251342DE5E08D7','EF58D8599C4F377913FD8D1DB0','EE163600A2BAD87965E20E9C9A','services','EF58DA8798E54DC5055094C02F','Product Service one',1,NULL,'2002-07-30 07:13:20',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D5EB1EDDBF5F78BC1FC5FBE','EF5902B02CC7C4E3E55AE7B0AD','EE163600A2BAD87965E20E9C9A','services','EF580BCBF3D3D23511CA3B2407','360 Degrees Solution',2,NULL,'2002-07-31 04:14:49',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5904F8F34795A6FDF413F6D4','EF5902B02CC7C4E3E55AE7B0AD','EE163600A2BAD87965E20E9C9A','services','EF580638377E2B7CBCCF61C0F2','Solution One',1,NULL,'2002-07-31 04:14:49',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C919FA3916938C365FB85A6','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF535DBC564E1103F7C050F192','Intercitra Website has just go online',1,NULL,'2002-07-31 00:31:32',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C920BCA187481836A1B9A25','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF58A470ACC7EBBC44C208BA37','Launching New Product at Plaza Senayan',4,NULL,'2002-07-31 00:31:32',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C922E94411DAC16A0837F68','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF58C66D3B65206094005BFD52','New Plasma Monitor has arrived. Huraay!',5,NULL,'2002-07-31 00:31:32',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C98C058D04C14A29D94372F','EF5C9801CA3FF9F3D99A20F1CD','EE16354AB187B638CC4579F8B6','press_release','EF53ADCFAAA9F6C5BAE9A8A629','Intercitra Website has just go online',1,NULL,'2002-07-31 00:38:46',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C98E59376DB9231198B52B','EF5C9801CA3FF9F3D99A20F1CD','EE16354AB187B638CC4579F8B6','press_release','EF579DC7668F8128FDC9D97EFE','Intecitra Websites v.1.9',2,NULL,'2002-07-31 00:38:46',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C99061BF4AEB4A1984FD58B','EF5C9801CA3FF9F3D99A20F1CD','EE16354AB187B638CC4579F8B6','press_release','EF579EDBE315D10BD8D3B057B0','New Staff Recruitment',3,NULL,'2002-07-31 00:38:46',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CB1EFCB2159F1504DF404F7','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580638377E2B7CBCCF61C0F2','Guerilla Solution',1,NULL,'2002-07-31 01:06:43',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CB238E9E1FA57FF5E100348','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580A9A97C6CC86E36D458F58','Integrated Solution',2,NULL,'2002-07-31 01:06:43',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CB25B852288E2D53F961774','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580B00B41345C82F8D1E1DB0','Offline-Online Solution',3,NULL,'2002-07-31 01:06:43',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CB27B7161FDA1400AFA599F','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580BCBF3D3D23511CA3B2407','360 Degrees Solution',4,NULL,'2002-07-31 01:06:43',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CB29ED78C64FA27CF17CB64','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580C339697C55B5E4CDB68E1','460 Degrees Solution/Impossibl',5,NULL,'2002-07-31 01:06:43',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF61F7E44BEF2691763A638A97','EF61F69872E80B522B3F7D1698','EE163600A2BAD87965E20E9C9A','services','EF61F58898B017F75FED2DD3D1','360 Degrees Solution',3,NULL,'2002-08-08 11:33:51',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF61F7C866F0D8C6141CF10640','EF61F69872E80B522B3F7D1698','EE163600A2BAD87965E20E9C9A','services','EF61F3DBC3C859321EFED5A9A6','Integrated Solution',2,NULL,'2002-08-08 11:33:51',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF61F79DFBB81612038DF3D987','EF61F69872E80B522B3F7D1698','EE163600A2BAD87965E20E9C9A','services','EF61F2D63A9B1B817C092F7213','Guerilla Solution',1,NULL,'2002-08-08 11:33:51',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF6202017725D8AD51413E58F1','EF62010E6C4C37EEA867611132','EE16354AB187B638CC4579F8B6','press_release','EF61F9FCDA45D2A4B00E927781','New Solution Product',1,NULL,'2002-08-01 01:51:47',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF620225C855AF678B42A2C7A0','EF62010E6C4C37EEA867611132','EE16354AB187B638CC4579F8B6','press_release','EF61FF03C72F7260871431620F','Mobile Transaction',2,NULL,'2002-08-01 01:51:47',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF62024110B062A95371CC177B','EF62010E6C4C37EEA867611132','EE16354AB187B638CC4579F8B6','press_release','EF61FFC3ACC8C7BAFE5CD98EE1','Intecitra Websites v.1.9',3,NULL,'2002-08-01 01:51:47',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF62061559F130D279F985018B','EF62053D7884A7B7C28B461E87','EE1634B19EB64BB12485263F79','news','EF620369733BA03BA4203146','Intercitra Website has just go online',1,NULL,'2002-08-01 01:56:06',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF62063380454F28AC5F0419BA','EF62053D7884A7B7C28B461E87','EE1634B19EB64BB12485263F79','news','EF62049CD370233869FB24C393','Launching New Product at Plaza Senayan',2,NULL,'2002-08-01 01:56:06',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF62082F8FC50E132291E79AA7','EF620774DA99A708D10B48F528','EE163600A2BAD87965E20E9C9A','services','EF61F3DBC3C859321EFED5A9A6','Integrated Solution',1,NULL,'2002-08-01 01:58:35',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF62084F2C57F4357CBCA28F3','EF620774DA99A708D10B48F528','EE163600A2BAD87965E20E9C9A','services','EF61F58898B017F75FED2DD3D1','360 Degrees Solution',2,NULL,'2002-08-01 01:58:35',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF620870FD97C379591D7EB1D1','EF620774DA99A708D10B48F528','EE163600A2BAD87965E20E9C9A','services','EF61F2D63A9B1B817C092F7213','Guerilla Solution',3,NULL,'2002-08-01 01:58:35',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF6294BC352A49F9896B8C5612','EF6293FFACC7928F2CCCCA37B1','EE1634B19EB64BB12485263F79','news','EF628B7C1BD4FA05A98C18CAF4','Websites now is online',1,NULL,'2002-08-01 04:31:58',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF6294E3843A9895348D2E9D03','EF6293FFACC7928F2CCCCA37B1','EE1634B19EB64BB12485263F79','news','EF628EF2856A46CA6B3C5EA439','Mobile Transaction',2,NULL,'2002-08-01 04:31:58',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF6687B51CFC22DCD623C527D5','EF668717A39DDB0F1D4DF9F526','EE163600A2BAD87965E20E9C9A','services','EF62A61FDEC343F346D6F23BCF','Guerilla Solutions',1,NULL,'2002-08-01 22:56:28',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62A4CF523DA0A7DC10D26303','EF62A08AAB45C4D0CC1FC6CE06','EE16354AB187B638CC4579F8B6','press_release','EF629929253C079CC28ED0D598','Most Prefered Consultant Reviewed By AsiaWeek 2002',2,NULL,'2002-08-01 22:33:36',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62A4A8CF191E1AC7288A05A8','EF62A08AAB45C4D0CC1FC6CE06','EE16354AB187B638CC4579F8B6','press_release','EF62957813994CE45496B0A980','New Solution Product from Intercitra',1,NULL,'2002-08-01 22:33:36',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62AD1E56E4506D7EA788F10F','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62A61FDEC343F346D6F23BCF','Guerilla Solutions',1,NULL,'2002-08-01 04:59:07',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62AD3F0D2F2AF5D4BD6B61AD','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62A8037310E14AD6249180A3','Integrated Solution',2,NULL,'2002-08-01 04:59:07',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62AD5A078524D4FC58438C40','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62A903FBF28EB04E90461810','360 Degrees',3,NULL,'2002-08-01 04:59:07',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62AD77EF893FF07D65085381','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62AA52F1B1F3782F64E3FABC','CMS Solution',4,NULL,'2002-08-01 04:59:07',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62ADC0DF162CB898CFC60129','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62AB63677999BD325F7F8475','Offline-Online Solution',5,NULL,'2002-08-01 04:59:07',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF633B0A002AB84DD4BBC82DDA','EF633A256C589D6A8ED8B8A941','EE16354AB187B638CC4579F8B6','press_release','EF629F22FD3F4054A45F835B57','Discount for Integrated Solution',1,NULL,'2002-08-01 22:48:37',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF6687D5653DDCD0DD4CCF2B24','EF668717A39DDB0F1D4DF9F526','EE163600A2BAD87965E20E9C9A','services','EF62A8037310E14AD6249180A3','Integrated Solution',2,NULL,'2002-08-01 22:56:28',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF6687F2FF8B084CAA3698C5A7','EF668717A39DDB0F1D4DF9F526','EE163600A2BAD87965E20E9C9A','services','EF62A903FBF28EB04E90461810','360 Degrees',3,NULL,'2002-08-01 22:56:28',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF668A34168B54984626A7A4B3','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62A61FDEC343F346D6F23BCF','Guerilla Solutions',1,NULL,'2002-08-01 22:59:08',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF668A4C519F0DB7F7FD6C3F70','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62A8037310E14AD6249180A3','Integrated Solution',2,NULL,'2002-08-01 22:59:08',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF668A6269BEADC9F1337E88E2','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62A903FBF28EB04E90461810','360 Degrees',3,NULL,'2002-08-01 22:59:08',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF668A782458E6EF31F5A0E7D3','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62AA52F1B1F3782F64E3FABC','CMS Solution',4,NULL,'2002-08-01 22:59:08',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF668A90AD70CC8B50D5A5BED8','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62AB63677999BD325F7F8475','Off-On Solution',5,NULL,'2002-08-01 22:59:08',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670667AE907F9331D057C38E','EF6704F9D5930E81F3D8232AA0','EE1634B19EB64BB12485263F79','news','EF628B7C1BD4FA05A98C18CAF4','Websites now is online',1,NULL,'2002-08-02 01:14:36',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670683B1ECB06F2082CEDFCC','EF6704F9D5930E81F3D8232AA0','EE1634B19EB64BB12485263F79','news','EF628EF2856A46CA6B3C5EA439','Mobile Transaction',2,NULL,'2002-08-02 01:14:36',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF6706997C80ACB8AD723198B2','EF6704F9D5930E81F3D8232AA0','EE1634B19EB64BB12485263F79','news','EF6290FC202E01C574058CBCFB','Guerilla Solutions',3,NULL,'2002-08-02 01:14:36',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670D51B3F7CFF4F41B76AE30','EF670C78C784ECA3E832D49F41','EE16354AB187B638CC4579F8B6','press_release','EF62957813994CE45496B0A980','New Solution Product from Intercitra',1,NULL,'2002-08-02 01:22:13',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670D71BE3BB1C3F8FA82ECC3','EF670C78C784ECA3E832D49F41','EE16354AB187B638CC4579F8B6','press_release','EF629929253C079CC28ED0D598','Most Prefered Consultant Reviewed By AsiaWeek 2002',2,NULL,'2002-08-02 01:22:13',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670D86BDF8BB41B0C2602D66','EF670C78C784ECA3E832D49F41','EE16354AB187B638CC4579F8B6','press_release','EF629F22FD3F4054A45F835B57','Discount for Integrated Solution',3,NULL,'2002-08-02 01:22:13',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF76E3283BE2168D644AD1F8F8','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D47B8479BB1EC65F74D4F1','Company Background',5,NULL,'2002-08-05 03:19:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF76E3B74C305B9D494F9BC01','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D8BA3F7CF6E0D3DFDDE402','Our Commitment',4,NULL,'2002-08-05 03:19:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF76E39889FAE2CC8DE9802FD','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D840F830F0B3704D90DC28','Our Solution Approach',3,NULL,'2002-08-05 03:19:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF76E37A04BCFBD3F6CB049A11','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D78672ABC1783709CBBDE9','Our Approach',2,NULL,'2002-08-05 03:19:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF76E35DA3754B775594C36537','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D65787AD054C8D116D1EF4','Our Vision',1,NULL,'2002-08-05 03:19:36',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF76F13CD85BABFC1021A9FAD7','EF76F0C602372C01717F4AD69B','EF76BA4ED5D8F2A21B1933A750','about_us','EF76EDE2A111EFC6CDE050C348','Company Background',1,NULL,'2002-08-05 03:25:32',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF76F15FD19A188AD6084E8820','EF76F0C602372C01717F4AD69B','EF76BA4ED5D8F2A21B1933A750','about_us','EF76EFB156B3BD1E2EE605D114','Our Vision',2,NULL,'2002-08-05 03:25:32',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF76F1821EA56750C6D0173548','EF76F0C602372C01717F4AD69B','EF76BA4ED5D8F2A21B1933A750','about_us','EF76F003CBBCFB33A7DE1F7F40','Our Approach',3,NULL,'2002-08-05 03:25:32',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF77104B486D72183F9F431D74','EF770FC06E8EF90EA0E86B7EF4','EF76BA4ED5D8F2A21B1933A750','about_us','EF770E1DE9957C994CB59A419A','Our Vision',1,NULL,'2002-08-05 03:59:18',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF771061518EE1F554946D1089','EF770FC06E8EF90EA0E86B7EF4','EF76BA4ED5D8F2A21B1933A750','about_us','EF770EF25047B401AD4CC59192','Our Mission',2,NULL,'2002-08-05 03:59:18',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF77107612C541A16EB453A60A','EF770FC06E8EF90EA0E86B7EF4','EF76BA4ED5D8F2A21B1933A750','about_us','EF770F4E898F5649DAFBC2CCA7','Our Approach',3,NULL,'2002-08-05 03:59:18',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7718ED00C09FADA7EB50BE98','EF771865DE82B9AE726ACF15BC','EE163600A2BAD87965E20E9C9A','services','EF7712C6D8F2D0CF72470FC290','Guerilla Solution',1,NULL,'2002-08-05 04:08:48',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF771906F1831B9D4C30C5CF4D','EF771865DE82B9AE726ACF15BC','EE163600A2BAD87965E20E9C9A','services','EF771663D4C828285B493C4E87','Deluxe Solution',2,NULL,'2002-08-05 04:08:48',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7719249AD5121880E042AC38','EF771865DE82B9AE726ACF15BC','EE163600A2BAD87965E20E9C9A','services','EF771797B13278072B04FD8142','360 Degrees Solution',3,NULL,'2002-08-05 04:08:48',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF774D83C58B8AA1ED1020B459','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','EF7712C6D8F2D0CF72470FC290','Guerilla Solution',1,NULL,'2002-08-05 05:06:42',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF774DB3BE2E9845517358FFD4','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','EF77157D7C6689524396E625FD','180 Degrees Solutions',2,NULL,'2002-08-05 05:06:42',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF774E093192E50E3BD806F7DB','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','EF77149A8ED66E9A456D827119','Offline-Online-Inline Solution',3,NULL,'2002-08-05 05:06:42',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF774E22F397F6BC9A982956DE','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','EF771797B13278072B04FD8142','360 Degrees Solution',4,NULL,'2002-08-05 05:06:42',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF775FA2DE76B6E0109208CE84','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','EF771663D4C828285B493C4E87','Deluxe Solution',4,NULL,'2002-08-05 05:35:48',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF775F7779371EAC3C2EF9A9FF','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','EF771797B13278072B04FD8142','360 Degrees Solution',3,NULL,'2002-08-05 05:35:48',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF775F5C6F2768F07B43905CE9','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','EF77157D7C6689524396E625FD','180 Degrees Solutions',2,NULL,'2002-08-05 05:35:48',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF775F3DBBEE02165E71E61DC9','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','EF7712C6D8F2D0CF72470FC290','Guerilla Solution',1,NULL,'2002-08-05 05:35:48',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776E691882422F564E934435','EF776DA97229A12BB7901E9EEE','EE16354AB187B638CC4579F8B6','press_release','EF776AA68230F6EAD435FFC067','Intercitra Website has just go on-line',1,NULL,'2002-08-05 05:42:07',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776E803A90DE1EAB23DABF49','EF776DA97229A12BB7901E9EEE','EE16354AB187B638CC4579F8B6','press_release','EF776BCA9F9A8AEC068DAA6720','Pre-beta test for Intercitra Website',2,NULL,'2002-08-05 05:42:07',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776E95F4DEB39F720B722093','EF776DA97229A12BB7901E9EEE','EE16354AB187B638CC4579F8B6','press_release','EF776CA5215495A223809C8EA','Contents Managment Tutorial',3,NULL,'2002-08-05 05:42:07',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776FE79A2282E23EE581A19D','EF776F524038C0A0701BD2751C','EE16354AB187B638CC4579F8B6','press_release','EF776AA68230F6EAD435FFC067','Intercitra Website has just go on-line',1,NULL,'2002-08-05 05:43:39',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776FFECBA7AEA1FDA05D3029','EF776F524038C0A0701BD2751C','EE16354AB187B638CC4579F8B6','press_release','EF776BCA9F9A8AEC068DAA6720','Pre-beta test for Intercitra Website',2,NULL,'2002-08-05 05:43:39',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF877CC97D754AEF6C1107D827','EF877C16F3E59D308B85284D46','EE1634B19EB64BB12485263F79','news','EF620369733BA03BA4203146','Intercitra Website has just go online',1,NULL,'2002-08-08 08:31:40',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF7B01C956C6BF72CF8981186E','EF7B00DDED2FDABD09CD662C65','EE163600A2BAD87965E20E9C9A','services','EF771663D4C828285B493C4E87','Deluxe Solution',2,NULL,'2002-08-05 22:51:49',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B01A9A985C15C64C48DA121','EF7B00DDED2FDABD09CD662C65','EE163600A2BAD87965E20E9C9A','services','EF77157D7C6689524396E625FD','180 Degrees Solutions',1,NULL,'2002-08-05 22:51:49',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B142E81E1381101370BA791','EF7B1369BAAA94553E83D3C23E','EE1634B19EB64BB12485263F79','news','EF7B0F85354370D2325518A153','Soft Launching',1,NULL,'2002-08-05 22:42:04',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B1445075049F66765E2D4B','EF7B1369BAAA94553E83D3C23E','EE1634B19EB64BB12485263F79','news','EF7B10F4B3301D0DEE8C85AC8E','Bubu Awards',2,NULL,'2002-08-05 22:42:04',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B145C578AF21BAF5070FC38','EF7B1369BAAA94553E83D3C23E','EE1634B19EB64BB12485263F79','news','EF7B128AB4FE38C92ACD0BFF29','5 Tricks How To Success',3,NULL,'2002-08-05 22:42:04',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B167AE29A9F2A3105E9B3B5','EF7B157A3BBA63A103A7417FEA','EE1634B19EB64BB12485263F79','news','EF7B10F4B3301D0DEE8C85AC8E','Bubu Awards',1,NULL,'2002-08-05 22:44:30',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B1695DCAAB2D4BFA35E46CC','EF7B157A3BBA63A103A7417FEA','EE1634B19EB64BB12485263F79','news','EF7B128AB4FE38C92ACD0BFF29','5 Tricks How To Success',2,NULL,'2002-08-05 22:44:30',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF877CE2867DDED960A7B60491','EF877C16F3E59D308B85284D46','EE1634B19EB64BB12485263F79','news','EF62049CD370233869FB24C393','Launching New Product at Plaza Senayan',2,NULL,'2002-08-08 08:31:40',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF877FF281789A39FA8B3CD8D2','EF877DD13084F34A4E13E123C7','EE16354AB187B638CC4579F8B6','press_release','EF61F9FCDA45D2A4B00E927781','New Solution Product',1,NULL,'2002-08-08 08:35:17',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF878009778366EA2A8A1574F2','EF877DD13084F34A4E13E123C7','EE16354AB187B638CC4579F8B6','press_release','EF61FF03C72F7260871431620F','Mobile Transaction',2,NULL,'2002-08-08 08:35:17',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8780321CE6E2B05EAF2CA07D','EF877DD13084F34A4E13E123C7','EE16354AB187B638CC4579F8B6','press_release','EF61FFC3ACC8C7BAFE5CD98EE1','Intecitra Websites v.1.9',3,NULL,'2002-08-08 08:35:17',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87C8F427C06D6501A97D7070','EF87C834C829B55008B5659662','EE163600A2BAD87965E20E9C9A','services','EF61F3DBC3C859321EFED5A9A6','Integrated Solution',1,NULL,'2002-08-08 09:54:57',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87C91C86F5122F3DB0E5F4AE','EF87C834C829B55008B5659662','EE163600A2BAD87965E20E9C9A','services','EF61F2D63A9B1B817C092F7213','Guerilla Solution',2,NULL,'2002-08-08 09:54:57',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87CA053D4969D38828442802','EF87C954124BE5827E8C5ED93D','EE163600A2BAD87965E20E9C9A','services','EF61F58898B017F75FED2DD3D1','360 Degrees Solution',1,NULL,'2002-08-08 09:56:02',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87CA2081A2BCD5CA7BC3315A','EF87C954124BE5827E8C5ED93D','EE163600A2BAD87965E20E9C9A','services','EF61F3DBC3C859321EFED5A9A6','Integrated Solution',2,NULL,'2002-08-08 09:56:02',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87E66959F9B682173AFFC69A','EF87E5E89B29E72B13DA8407BA','EF76BA4ED5D8F2A21B1933A750','about_us','EF87D849EA4A59339594E7F845','Our Vission',1,NULL,'2002-08-08 10:27:07',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87E681B81292B112CE623560','EF87E5E89B29E72B13DA8407BA','EF76BA4ED5D8F2A21B1933A750','about_us','EF87D8FE18D371CB032236A360','Company Background',2,NULL,'2002-08-08 10:27:07',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87E699269C4EBAF8FFA9FA95','EF87E5E89B29E72B13DA8407BA','EF76BA4ED5D8F2A21B1933A750','about_us','EF87E57386423584690F3AED17','Our Mission',3,NULL,'2002-08-08 10:27:07',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8E3BE85534134DF6BD28D7F0','EF8E3B3AB9F109C7BF163C0AD7','EE163600A2BAD87965E20E9C9A','services','EF8E38F1D2CF3B7DB7749F37B9','New Service 1',1,NULL,'2002-08-09 15:58:17',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3C017C14AADA3705727D43','EF8E3B3AB9F109C7BF163C0AD7','EE163600A2BAD87965E20E9C9A','services','EF8E39B632FA978A9C44E5006F','Our Service 2',2,NULL,'2002-08-09 15:58:17',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3C171E519F71E7EF034A6F','EF8E3B3AB9F109C7BF163C0AD7','EE163600A2BAD87965E20E9C9A','services','EF8E3A44C9BC8168B1E2DC6C11','Our Service Number 3',3,NULL,'2002-08-09 15:58:17',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3CDB39302AE1334739EB7C','EF8E3C4ADFBDFB74192B71CB43','EE1634B19EB64BB12485263F79','news','EF8E326DAE2D9752163E9DF60A','Intercitra website has just go online this december 2002',1,NULL,'2002-08-09 15:59:10',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3CF49237A4FEBCC7C645E3','EF8E3C4ADFBDFB74192B71CB43','EE1634B19EB64BB12485263F79','news','EF8E34A1B26577603BCC07EF52','Our Guerilla Product has been promote since april 2002',2,NULL,'2002-08-09 15:59:10',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3D9F997302A1B19A51345C','EF8E3D1D196B477841A58FC9A0','EE16354AB187B638CC4579F8B6','press_release','EF8E3765FA60D6E6E3F23BD5FA','Our Press Release News 1',1,NULL,'2002-08-09 16:00:00',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3DB65D7DD0036A1863B929','EF8E3D1D196B477841A58FC9A0','EE16354AB187B638CC4579F8B6','press_release','EF8E383A5A50A95D2F360D4CB6','Our Press Release News 2',2,NULL,'2002-08-09 16:00:00',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3F69CCB01D838A26F70EF0','EF8E3EDA4FE70036E202E26581','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF8E3DFB8756AAC9A08A37A4DE','Java Developer',1,NULL,'2002-08-09 16:01:56',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3F7ED7E5869CC693800CAE','EF8E3EDA4FE70036E202E26581','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF8E3E604C996AD28FBBE57424','Secretary',2,NULL,'2002-08-09 16:01:56',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E402247EE72D48575798273','EF8E3FA2E9F723DB325F6A7D02','EF76BA4ED5D8F2A21B1933A750','about_us','EF8E2F12DE12AC404BF06CFB3C','Company Background',1,NULL,'2002-08-09 16:03:13',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E403B5B817E6A206C9F57F8','EF8E3FA2E9F723DB325F6A7D02','EF76BA4ED5D8F2A21B1933A750','about_us','EF8E31446BD15C1F77534D61A9','Our Mission',2,NULL,'2002-08-09 16:03:13',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E40A5EAFB3F7077F576A418','EF8E3FA2E9F723DB325F6A7D02','EF76BA4ED5D8F2A21B1933A750','about_us','EF8E31AF72C76E887D3AC99B6C','Our Approach',3,NULL,'2002-08-09 16:03:13',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E43E5E42056A7FD5BC02979','EF8E433D0E138F733F2D166C00','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF8E3DFB8756AAC9A08A37A4DE','Java Developer',1,NULL,'2002-08-09 16:06:51',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E43FCE5A75811C390D41609','EF8E433D0E138F733F2D166C00','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF8E3E604C996AD28FBBE57424','Secretary',2,NULL,'2002-08-09 16:06:51',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E442F3D90F8F27B0E59FF45','EF8E42AF4ADA1F31E1F62D5525','EE1634B19EB64BB12485263F79','news','EF8E326DAE2D9752163E9DF60A','Intercitra website has just go online this december 2002',1,NULL,'2002-08-09 16:07:28',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E44804B4ACCC280B53B437D','EF8E42AF4ADA1F31E1F62D5525','EE1634B19EB64BB12485263F79','news','EF8E34A1B26577603BCC07EF52','Our Guerilla Product has been promote since april 2002',2,NULL,'2002-08-09 16:07:28',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E44C203C8FA61B9E7ED3BD1','EF8E42301D17943E5955D9AA44','EE16354AB187B638CC4579F8B6','press_release','EF8E3765FA60D6E6E3F23BD5FA','Our Press Release News 1',1,NULL,'2002-08-09 16:07:48',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E44DA6C5360AC764BE96FE6','EF8E42301D17943E5955D9AA44','EE16354AB187B638CC4579F8B6','press_release','EF8E383A5A50A95D2F360D4CB6','Our Press Release News 2',2,NULL,'2002-08-09 16:07:48',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('F0E7130F3CAD59F240FE3DCFA1','EFABD73B9F5C8A2AFC1BC06327','EF76BA4ED5D8F2A21B1933A750','about_us','EFABD7A227D67449CDC27C9DE7','Company Background',1,NULL,'2002-10-15 15:02:32',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F312BEEADDE6BB08957F261853','F312B7926E1BA7B9EEAAB39558','F312A7DFF0D600D4866CCD4E28','makin_director','F312B3113B9A55D45AE41B5F73','Susilo Wonowidjoyo',1,NULL,'2003-01-31 12:52:35',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312F5E2D3155684108BEAA3E0','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','F312E75F10981CEE04AE42D1B','Sejarah Singkat PT Makin',1,NULL,'2003-01-31 13:39:41',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312F5FBAAA8507CE651AE5C44','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','F312E9B7586BBD7815262A2F68','Visi',2,NULL,'2003-01-31 13:39:41',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312F611A3873C3805FD8D1E2B','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','F312EA5984D494E8177B0A51D1','Strategi Bisnis',3,NULL,'2003-01-31 13:39:41',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312F6263541A29151B5B957AA','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','F312EF1D0F94F52BE459F19661','Bisnis Inti',4,NULL,'2003-01-31 13:39:41',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F313321E9F283556B0E86D3D1B','F31330D19DFD3F3245616F57B0','F3132892F57B236985F02B3F4F','subsidary','F3132F13E0914B4F07AC47DA05','PT. Antang Permai Plywood Indrustry',1,NULL,'2003-03-20 13:48:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F31334DBFAA2BAA59B45CAB8E7','F31333E67F5209AE9B31726965','F3132892F57B236985F02B3F4F','subsidary','F31334B3542D790038A0B17E9D','PT Lainnya',1,NULL,'2003-03-20 10:55:00',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40056916AF5828C875A5C5EE','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','F40054F2FDF6D0B998BA5147B','test',3,NULL,'2003-03-20 11:58:39',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F313353C4B18C76EC86F5A0B4D','F3133322C1D43F2988CD387324','F3132892F57B236985F02B3F4F','subsidary','F3133492BCE6F40CC8B1F438E5','PT Perkayuan',1,NULL,'2003-01-31 14:48:38',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3221B60B4CDCD969751332658','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','F3133492BCE6F40CC8B1F438E5','PT Perkayuan',2,NULL,'2003-03-20 11:58:39',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF2684902283DF572AA55AEE','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF2251AC8FDBE206FC5F2184','Fact Figure',4,NULL,'2003-03-18 10:34:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF266C657BA8A9F3087BCA4','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF21BB87A1806688C0D236D4','News',3,NULL,'2003-03-18 10:34:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF2651E712E5636DF6D8373E','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF1FBC1DA441971DF760AC86','Press Release',2,NULL,'2003-03-18 10:34:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF2554DA17A60C2483B20183','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF164552682DC676682DD1FB','Home',1,NULL,'2003-03-18 10:34:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF31193E43EA396E58AD3F54','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF2FF9A57F7A6B01EF0A9773','Makin & Subsidaries',5,NULL,'2003-03-18 10:34:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF31353241DFF4EE7F35320B','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF308923177AB6C29733A930','Contact Us',6,NULL,'2003-03-18 10:34:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F313350E166CEB680A5B132FC3','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','F313346BDB791AAC4D271E93C9','PT Kehutanan',1,NULL,'2003-03-20 11:58:39',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A977FE6BCAD9AB7266CDEFF','F4006A4702C02EC8B03504B154','F3132892F57B236985F02B3F4F','','F4098E903BEF8CD68572BC9C6F','',2,NULL,'2003-03-25 13:25:20',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A97AEA7E296821ADA66DF56','F4006A4702C02EC8B03504B154','F3132892F57B236985F02B3F4F','','F40054F2FDF6D0B998BA5147B','',1,NULL,'2003-03-25 13:25:20',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F4099078D180C813FC6FB48AFE','F31333E67F5209AE9B31726965','F3132892F57B236985F02B3F4F','subsidary','F4098E903BEF8CD68572BC9C6F','PT. Intercitra Prima Integrasi',2,NULL,'2003-03-20 10:55:00',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F409CA439EC78E0A8FF0666CA3','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','F4098E903BEF8CD68572BC9C6F','PT. Intercitra Prima Integrasi',4,NULL,'2003-03-20 11:58:39',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A141523A553487F21F0BD0A','F40A12670642457146FE92A5BF','F3132892F57B236985F02B3F4F','subsidary','F4098E903BEF8CD68572BC9C6F','PT. Intercitra Prima Integrasi',1,NULL,'2003-03-20 13:18:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A2F855E3043CF54A8258951','F31330D19DFD3F3245616F57B0','F3132892F57B236985F02B3F4F','subsidary','F40A2EE778115018EE80E397AB','PT. Matahari Kahuripan Indonesia',2,NULL,'2003-03-20 13:48:36',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F423D9FE91C610145E5460106E','F4006A4702C02EC8B03504B154','F3132892F57B236985F02B3F4F','','F3132F13E0914B4F07AC47DA05','',3,NULL,'2003-03-25 13:25:20',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A9820BAAE21209085370477','F40025C7BB2B1555515A1FF83F','F3132892F57B236985F02B3F4F','subsidary','F4098E903BEF8CD68572BC9C6F','PT. Intercitra Prima Integrasi',2,NULL,'2003-03-20 15:49:09',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40066BA90AA0E2FB0020B056F','F40025C7BB2B1555515A1FF83F','F3132892F57B236985F02B3F4F','subsidary','F40A2EE778115018EE80E397AB','PT. Matahari Kahuripan Indonesia',1,NULL,'2003-03-20 15:49:09',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A9DE8E4D7563B7DE27AE87E','F40025C7BB2B1555515A1FF83F','F3132892F57B236985F02B3F4F','subsidary','F40054F2FDF6D0B998BA5147B','test',3,NULL,'2003-03-20 15:49:09',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `collection_detail` ENABLE KEYS */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
INSERT INTO `company` VALUES ('F337B149F1D7EB47954BF7EF7','PT. Intercitra Prima Integrasi','Cempaka Putih Tengah II Blok C No. 21\r\nJakarta Pusat','Jakarta','14520','4260933','4260933','www.intercitra.com','frans@intercitra.com','F162B448063A847','2003-02-07 16:51:14',NULL,'0000-00-00 00:00:00','0','ic','F199E755B97B662FC248CAC80'),('F400293F00E533921149DADAB2','test','makin','','','','','','','1','2003-03-18 15:05:30',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F40F8AEA366FA9257120F211A4','dsds','','','','','','','','F162B448063A847319E641EF7D','2003-03-21 14:47:29',NULL,'0000-00-00 00:00:00','0','ic','F199E755B97B662FC248CAC80');
UNLOCK TABLES;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;

--
-- Table structure for table `company_profile`
--

DROP TABLE IF EXISTS `company_profile`;
CREATE TABLE `company_profile` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(255) default NULL,
  `company_profile` text,
  `publish_flag` tinyint(1) default '1',
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_profile`
--


/*!40000 ALTER TABLE `company_profile` DISABLE KEYS */;
LOCK TABLES `company_profile` WRITE;
INSERT INTO `company_profile` VALUES ('EE7D7F926F7DDCDD9906756F0','Intercitra Profile','Intercitra has been established since 2002 as a business consultant and system integration company.\r\nIntercitra specialize in B2B to services, integrate and increase company performance using inter-networking enable technology.\r\nIntercitra helps companies to increase their productivity and deliver the most cost efficient solution to bring the company to a higher empowerment level.\r\n\r\n',1,'EE7D7FCFF852ED68606F56C709Sample.jpg',NULL,'2','2002-06-17 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F54378B18E346D3E62FBE59294','Company Profile','Intercitra Prima Integrasi (Intercitra) is a inter-networking enabled technology communication services company that focus deliver technology related services.\r\n\r\nIntercitra helps companies to increase their productivity and deliver the most cost efficient solution to bring the company to a higher empowerment level.\r\n\r\nCompany Background\r\n\r\nIntercitra Prima Integrasi, PT. is a privately held company based in Jakarta, Indonesia. It founded in 2001 and specializes in developing innovative business application that is focused on the needs of its customers. \r\nIn addition to developing its own products internally, Intercitra licenses products and technologies that will complement its own technologies. \r\nThe Big Idea\r\n\r\nTo fundamentally build and change the way people communicate and manage their businesses in real business environment.\r\n\r\nThe Daily Mantera\r\n\r\nMake it simple, integrated, organize, managed and connected in the innovation decathlon. \r\nOur Vision\r\n\r\nIntercitra',1,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-20 09:50:39',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6');
UNLOCK TABLES;
/*!40000 ALTER TABLE `company_profile` ENABLE KEYS */;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` varchar(28) NOT NULL default '',
  `businessPartnerId` varchar(28) default NULL,
  `address` varchar(255) default NULL,
  `assistant` varchar(255) default NULL,
  `assistantPhone` varchar(255) default NULL,
  `birthDate` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `firstName` varchar(255) default NULL,
  `homePhone` varchar(255) default NULL,
  `lastName` varchar(255) default NULL,
  `mobile` varchar(255) default NULL,
  `officePhone` varchar(255) default NULL,
  `otherEmail` varchar(255) default NULL,
  `otherPhone` varchar(255) default NULL,
  `zipCode` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `update_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` datetime default '0000-00-00 00:00:00',
  `active_flag` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `businessPartnerId_20` (`businessPartnerId`),
  KEY `businessPartnerId_21` (`businessPartnerId`),
  KEY `businessPartnerId_22` (`businessPartnerId`),
  KEY `businessPartnerId_23` (`businessPartnerId`),
  KEY `businessPartnerId_24` (`businessPartnerId`),
  KEY `businessPartnerId_25` (`businessPartnerId`),
  KEY `businessPartnerId_26` (`businessPartnerId`),
  KEY `businessPartnerId_27` (`businessPartnerId`),
  KEY `businessPartnerId_28` (`businessPartnerId`),
  KEY `businessPartnerId_29` (`businessPartnerId`),
  KEY `businessPartnerId_10` (`businessPartnerId`),
  KEY `businessPartnerId_30` (`businessPartnerId`),
  KEY `businessPartnerId_11` (`businessPartnerId`),
  KEY `businessPartnerId_31` (`businessPartnerId`),
  KEY `businessPartnerId_12` (`businessPartnerId`),
  KEY `businessPartnerId_2` (`businessPartnerId`),
  KEY `businessPartnerId_13` (`businessPartnerId`),
  KEY `businessPartnerId_3` (`businessPartnerId`),
  KEY `businessPartnerId` (`businessPartnerId`),
  KEY `businessPartnerId_4` (`businessPartnerId`),
  KEY `businessPartnerId_14` (`businessPartnerId`),
  KEY `businessPartnerId_5` (`businessPartnerId`),
  KEY `businessPartnerId_15` (`businessPartnerId`),
  KEY `businessPartnerId_6` (`businessPartnerId`),
  KEY `businessPartnerId_16` (`businessPartnerId`),
  KEY `businessPartnerId_7` (`businessPartnerId`),
  KEY `businessPartnerId_17` (`businessPartnerId`),
  KEY `businessPartnerId_8` (`businessPartnerId`),
  KEY `businessPartnerId_18` (`businessPartnerId`),
  KEY `businessPartnerId_9` (`businessPartnerId`),
  KEY `businessPartnerId_19` (`businessPartnerId`),
  KEY `businessPartnerId_32` (`businessPartnerId`),
  KEY `businessPartnerId_33` (`businessPartnerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--


/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
LOCK TABLES `contact` WRITE;
INSERT INTO `contact` VALUES ('ff8080810599e3e301059a03e9cc','ff80808105a3a8ed0105a3acec2e','','','','','','','','','','ddd','','','','','','','47895','1','1','2005-08-09 13:53:31','2005-08-11 15:15:57',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;

--
-- Table structure for table `contact_type`
--

DROP TABLE IF EXISTS `contact_type`;
CREATE TABLE `contact_type` (
  `id` smallint(6) default NULL,
  `description` varchar(125) default NULL,
  `site_id` varchar(28) default NULL,
  `status_id` char(2) NOT NULL default 'ic'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_type`
--


/*!40000 ALTER TABLE `contact_type` DISABLE KEYS */;
LOCK TABLES `contact_type` WRITE;
INSERT INTO `contact_type` VALUES (1,'Contact Us',NULL,'ic'),(2,'Feedback',NULL,'ic'),(3,'Wish List',NULL,'ic');
UNLOCK TABLES;
/*!40000 ALTER TABLE `contact_type` ENABLE KEYS */;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE `contact_us` (
  `id` varchar(28) NOT NULL default '',
  `first_name` varchar(35) NOT NULL default '',
  `last_name` varchar(35) default NULL,
  `street_address` varchar(55) default NULL,
  `city` varchar(15) default NULL,
  `zip_code` varchar(10) default NULL,
  `state` varchar(35) default NULL,
  `email` varchar(125) default NULL,
  `phone_no` varchar(35) default NULL,
  `comment` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--


/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
LOCK TABLES `contact_us` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;

--
-- Table structure for table `content_default`
--

DROP TABLE IF EXISTS `content_default`;
CREATE TABLE `content_default` (
  `id` varchar(28) NOT NULL default '',
  `active_flag` varchar(5) NOT NULL default '',
  `category_id` varchar(50) NOT NULL default '',
  `section_id` varchar(50) NOT NULL default '',
  `template_id` varchar(50) NOT NULL default '',
  `site_id` varchar(50) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_default`
--


/*!40000 ALTER TABLE `content_default` DISABLE KEYS */;
LOCK TABLES `content_default` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `content_default` ENABLE KEYS */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` varchar(28) NOT NULL default '',
  `description` varchar(125) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--


/*!40000 ALTER TABLE `country` DISABLE KEYS */;
LOCK TABLES `country` WRITE;
INSERT INTO `country` VALUES ('sg','Singapore'),('id','Indonesia'),('us','USA'),('zh','China');
UNLOCK TABLES;
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

--
-- Table structure for table `descriptor`
--

DROP TABLE IF EXISTS `descriptor`;
CREATE TABLE `descriptor` (
  `id` varchar(28) NOT NULL default '',
  `descriptor_group_id` varchar(28) NOT NULL default '0',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `descriptor`
--


/*!40000 ALTER TABLE `descriptor` DISABLE KEYS */;
LOCK TABLES `descriptor` WRITE;
INSERT INTO `descriptor` VALUES ('1','0',NULL,'2005-08-05 17:09:15','1','2001-12-16 00:00:00','descriptor','Descriptor','descriptor.xml',1,1,NULL,'2',NULL,'EE185CE0B82B41C1724F284685',NULL),('6','0',NULL,'2005-08-05 17:17:33','1','2003-07-09 14:50:47','category','Category','category.xml',1,1,'http://www.test.com?action=test','2','','EE185CE0B82B41C1724F284685',''),('7','0',NULL,'2005-08-16 12:00:21','1','2001-12-16 00:00:00','section','Section','section.xml',1,1,NULL,'2',NULL,'EE185CE0B82B41C1724F284685',NULL),('E8D32766091238C92EFF1BA529','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','osml','Organization Structure','osml.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E8D0C5535B234E62585FD6F09D','0','1','2002-05-29 00:00:00','1','2002-04-13 00:00:00','backend_user_descriptor_acl','User ACL','backend_user_descriptor_acl.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('13','0',NULL,'2002-08-29 00:00:00','1','2002-08-29 00:00:00','backend_user','User Profile','backend_user.xml',1,0,'','0','','EE185CE0B82B41C1724F284685',''),('14','0',NULL,'2005-08-05 17:11:29','1','2001-12-16 00:00:00','workflow_role','Workflow Role','workflow_role.xml',1,1,NULL,'2',NULL,'EE185CE0B82B41C1724F284685',NULL),('15','0',NULL,'2002-05-29 00:00:00','1','2001-12-16 00:00:00','workflow','Workflow','workflow.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('16','',NULL,'2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','workflow_state_point','WF State Point','workflow_state_point.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('17','',NULL,'2002-05-29 00:00:00','1','2001-09-09 00:00:00','workflow_action','WF Action','workflow_action.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('18','',NULL,'2002-05-29 00:00:00','1','2001-09-09 00:00:00','workflow_activity','WF Activity Status','workflow_activity.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('22','0',NULL,'2002-05-29 00:00:00','1','2001-12-16 00:00:00','template','Template','template.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('23','0',NULL,'2002-06-17 00:00:00','1','2001-12-16 00:00:00','article','Article','article.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685','title'),('25','0',NULL,'2002-05-29 00:00:00','1','2001-12-16 00:00:00','ads_banner','Ads Banner','ads_banner.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('26','0',NULL,'2002-05-29 00:00:00','1','2001-12-16 00:00:00','ads_product','Ads Product','ads_product.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('31','0',NULL,'2002-05-29 00:00:00','1','2002-04-13 00:00:00','module_function','Module Function','module_function.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('32','0','','2002-05-29 00:00:00','1','2001-12-16 00:00:00','role_privilage','Role Privilage','role_privilage.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('2','0',NULL,'2005-08-05 17:10:38','1','2002-07-05 00:00:00','site','Site','site.xml',1,1,'','2','','EE185CE0B82B41C1724F284685',''),('E7A767F6FCD106B4C38ED0073D','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','hear_us','Hear Us','hear_us.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A769CE2222DC0ABD270A48FE','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','income','Income','income.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A77820F8D3EEB61E12EF7DD5','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','ads_client','Ads Client','ads_client.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A779BA12440C5CC627D043AD','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','age','Age','age.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A779E95E7E40ED22C3D9D409','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','contact','Contact Us','contact.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A77A14AC951B8B4A444F14F3','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','country','Country','country.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A77F657568CBF5B670623DCD','0','1','2003-02-27 16:00:39','1','2003-02-27 15:56:14','faq','FAQ','faq.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','question'),('E7A77FB00E6254A09B8342341C','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','glossary','Glossary','glossary.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A77FF650C680C26FCB152B01','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','image_size','Image Size','image_size.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A78033BA587E0FAA0CEDFECC','0','1','2002-05-29 00:00:00','1','2002-05-02 00:00:00','sni_member2','SNI Member Registration','ED2E67B18DF954DEC7433B22C3sni_member.xml',0,1,'../eagle/?type=true','1',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A780DC22C766324AD6580578','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','net_usage','Net Usage','E7B5A75F6BFE2D7D01328D25B7net_usage.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A7810951CC810C0DC6D2941D','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','net_usage_hours_day','Net Usage Hours Day','net_usage_hours_day.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A7814278134CAE74AFFEF66F','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','newsletter','Newsletter','newsletter.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A781781AF25277BE8E49C2F4','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','poll','Polling','poll.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A7819E161352C93DA00652E9','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','send_to_friend','Send to Friend','send_to_friend.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E7A781CFBA45A3CB44C81D8236','0','1','2003-01-30 00:00:00','1','2003-01-30 00:00:00','web_link','Web Link','F07F6B57312366F8EF58665443web_link.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','link_url'),('E8D4A7375EAF7B953F36C71292','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','assign_descriptor','Assign Descriptor to WF','assign_descriptor.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E8D4B8FCEB555B9D2AD8D143F6','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','assign_osml','Assign Org Stru to Site','assign_osml.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E8F706107AAD19C157222E67C9','0','1','2002-05-29 00:00:00','1','2002-04-13 00:00:00','workflow_history','Workflow Approval History','workflow_history.xml',0,1,'../../topaz/test.jsp','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('E8F8A0871FE7869F292A6CF810','0','1','2002-05-29 00:00:00','1','2002-04-13 00:00:00','workflow_hierarchy','Workflow Hierarchy / Detail','workflow_hierarchy.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EACA410839BF089F9CEC6B4A53','product_item','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','item','Item Master',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EACA4B7F9596396050B73AB5EF','0','1','2002-05-29 00:00:00','1','2001-12-16 00:00:00','descriptor_group','Descriptor Group','descriptor_group.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EACB9F549BCDBA63D42F1EF9DF','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','todo','To Do','EACB9F99C5A08745BDA738E289todo.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EAD2D1C50028FD5258593CE983','0','1','2002-05-29 00:00:00','1','2001-12-17 00:00:00','wizards','Wizard','wizards.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EAD2D1FB743D69F352E4779C1','0','1','2002-05-29 00:00:00','1','2001-12-17 00:00:00','wizards_steps','Wizard Steps','wizards_steps.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EADFFF90404E07E8F17356BCA7','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','member_user','Member User Profile','EAE000036042AC0EA30559AD2Amember_user.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED6B716DB53DFB1AD79B338A42','0','1','2002-05-29 00:00:00','1','2002-04-25 00:00:00','product','Product','ED6C3610EE7F4BB77FF7F0ABEproduct.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EA63FEC28E8B17A920D615472F','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','mtl_unit_of_measure','Unit of Measure','EA63FF20211D9FFBA2DC4FB389mtl_unit_of_measure.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED80F08BA5B5CE411B8C161520','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','sales_order','Sales Order','ED80F14E2EEC0EEF8F920A8C0Asales_order.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EA63FF7EF31172D21CEC60386D','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','mtl_uom_classes','UoM Class','EA63FFBF4D9CB2CCCEC5E3CE98mtl_uom_classes.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC02B358C9685AD13B193A8265','product_item','1','2002-05-29 00:00:00','1','2002-02-14 00:00:00','register_topaz','Registration Form','EC02B5E34BEDD07F8F22881524register_form.jsp',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC22C92740923B29903FEA53D5','0','1','2002-05-29 00:00:00','1','2002-03-13 00:00:00','viewmembertree','View Member Tree','EC22C99F30ECC58EB986155D2Aviewmembertree.jsp',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED80F1DFB463D6D67608FE97CD','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','order_detail','Order Detail','ED80F25632FA979F19C3A15147order_detail.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC277DA80635E3E3F63BF841F7','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','bonus_usaha_mandiri','Bonus Usaha Mandiri',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC277DD49F949A89B0567CDF79','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','bonus_sponsor','Bonus Sponsor',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC277E2805435A0D319263474','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','bonus_jaringan','Bonus Jaringan',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC277E629F54EF51EB84A3AD37','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','bonus_program_sejahtera','Bonus Program Sejahtera',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC277EFD42E80758F490BEE3CA','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','protor','Motor (Protor)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC277F3565FE498EEA44C87B0D','0','1','2002-05-29 00:00:00','1','2002-02-21 00:00:00','prosa','Sejahtera (Prosa)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC277F6F724C601B96A094ECAC','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','prowis','Wisata/Ibadah (Prowis)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC277FC604E5A3618F4E0DAC2A','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','probil','Mobil (Probil)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC27800E1C85E45260395CC14D','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','promah','Rumah (Promah)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC2780313D2154DA88EE2B203B','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','bonus_kepemimpinan','Bonus Kepemimpinan',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC278085DA7AAE337066982E27','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','perincian_bonus','Perincian Bonus',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EC8BB1EDFEA1BA1686BFB1ECEB','0','1','2002-05-29 00:00:00','1','2002-03-13 00:00:00','peringkat','Peringkat Member','EC8BB33F461693F490744E0319peringkat.jsp',0,0,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED2D5FC89DA4B624B60783E281','0','1','2002-05-29 00:00:00','1','2002-04-13 00:00:00','component','Component','ED2D63405F78955921C499157component.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED2D68AA3264045584C17F100C','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','component_package','Component Package','ED2D68E60CA5E1BEF68233F5B5component_package.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED2D68F33A20F0789CE1B8CAD0','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','component_methods','Component Methods','ED2D6941595833000FA77EF207component_methods.xml',0,1,NULL,'1',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED2EE26B3A598A0761F1E1C84B','0','1','2002-05-29 00:00:00','1','2002-04-19 00:00:00','TreeGlobal','Global Parameter',NULL,0,1,'../tomato.jsp?modules=wizards&wizardid=ED2F13A6A961E80A8DF701E7E7&ok','1','ED2F13A6A961E80A8DF701E7E7','EE185CE0B82B41C1724F284685',NULL),('ED665FD94B6AC6DA166949BC6A','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','mtl_uom_standard_conversions','Standard Conversion','ED66646D37B85BC24DD5592360EA63FF79E839F887478B1D3B55mtl_uom_standardclass_conversions.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED666557E377911B0E672412D7','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','mtl_uom_intraclass_conversions','Intraclass Conversion','ED6665F1DCF04412D4501AF5B5EA63FF79E839F887478B1D3B55mtl_uom_intraclass_conversions.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED6665F7ECCBF0B90275BEE375','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','mtl_uom_interclass_conversions','Interclass Conversion','ED66666556468829438F80603EEA63FF79E839F887478B1D3B55mtl_uom_interclass_conversions.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED8100EADE893CD9EDBC21C39E','0','1','2002-05-29 00:00:00','1','2002-05-01 00:00:00','purchase_order','Purchase Order','ED8A6FA3D03B091CC837BB699Epurchase_order.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED8A1729C8E3B3EDE0DAEB2772','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','payment_method','Payment Method','ED8A17D6383C6920BB10AB22F8payment_method.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED8A1C4CCC76364E31743601EE','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','payment','Payment','ED8A1C91CE4AD8DA236688489Bpayment.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED8A23950175908D976F4EB046','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','shipment_method','Shipment Method','ED8A23E51EE43201413E499A58shipment_method.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED8A293FEB17BA95346CBEDE13','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','shipment','Shipment','ED8A297D91AE71F696C222BFD2shipment.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED8A6CFBC6B303B8D7D61F9A02','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','provider','Provider','ED8A6D4DCED3690FADD5874731provider.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED8AA6899D90081582B374C915','0','1','2002-05-29 00:00:00',NULL,'0000-00-00 00:00:00','onhand','Onhand','ED8AA6DA1561DE648F783119FDonhand.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('EDDD5F5132ADA977D780C2ADAD','0','1','2002-11-15 00:00:00','1','2002-11-15 00:00:00','collection_detail','Collection Detail','EDDD6DFCCB8B4E00F11D73C56Ccollection_detail.xml',0,0,'','0','','EE185CE0B82B41C1724F284685',''),('ED8B8AB5933AC7FE2F760FB1AE','0','1','2002-05-29 00:00:00','1','2002-05-06 00:00:00','member_bengkel','Member Bengkel','ED8B8B10A5D568B55A8462D675member_bengkel.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL),('ED8EF6E40C8CD0C8A1ED378B50','0','1','2002-05-29 00:00:00','1','2002-05-06 00:00:00','sni_member_bengkel','Member_bengkel','ED8EF7C4FB28D272E875E8EEE8sni_member.xml',0,1,'../bengkel/index_member.jsp?','1',NULL,'EE185CE0B82B41C1724F284685',NULL),('EDCEA76E0E114961F605AAF79C','0','1','2002-06-17 00:00:00','1','2002-06-17 00:00:00','collection','Collection Admin','EDDD70A601EC0CF6F798F24248collection.xml',0,1,'../module/collection/first.jsp?','1','','EE185CE0B82B41C1724F284685',''),('EDEDA3BC67E064D0E609CF84FE','0','1','2002-07-05 00:00:00','1','2002-07-05 00:00:00','page_collection','Page Collection','EDEDAA9A48D24AB0A7C6D6EED0frontpage.xml',0,1,'../module/pagecollection/first.jsp?','1','','EE185CE0B82B41C1724F284685',''),('EDF1E980543D789AF49587CC3','0','1','2002-07-05 00:00:00','1','2002-07-05 00:00:00','pagecollection_detail','Page Collection Detail','EDF1EA534CB202A5018A514161frontpage_detail.xml',0,0,'','1','','EE185CE0B82B41C1724F284685',''),('EE187CB92554E9877310D9041D','0','1','2002-06-27 00:00:00','1','2002-06-27 00:00:00','assign_user_site','Assign User to a Site','EE188C8D1BCFFF7C61672BFA2Cassign_user_site.xml',0,0,'','0','','EE185CE0B82B41C1724F284685',''),('EE16334FF2AE40BA3386D21C2A','0','1','2002-05-28 00:00:00',NULL,'0000-00-00 00:00:00','company_profile','Company Profile','EE1633A53055EADD5140855742company_profile.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL),('EE1633BB40ED75204D7CB5464E','0','1','2002-05-29 00:00:00','1','2002-05-29 00:00:00','contact_us','Contact Us','EE163407ECDDDA1FDCD1D1B251contact_us.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL),('EE1634107D568C2832E72DF4C7','0','1','2002-05-28 00:00:00',NULL,'0000-00-00 00:00:00','content_default','Content Default','EE16345E06ECA50699801ED065content_default.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL),('EE163461EFCD80B5C80D88A308','0','1','2002-05-28 00:00:00',NULL,'0000-00-00 00:00:00','event','Event','EE1634ADD36EA16F4C3EEC671Aevent.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL),('EE1634B19EB64BB12485263F79','0','1','2003-02-24 17:14:10','1','2003-02-24 17:14:10','news','News','EE1634FC424BAE90DD75214376news.xml',0,1,'../module/news/index.jsp?','0','','EE185CE0B82B41C1724F284685','headline'),('F332B5D5577E444B78297AFE84','0','1','2003-03-18 15:08:25','1','2003-03-18 15:08:25','company','Company','F33682657AE8F60C0818178F40company.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name'),('EE16354AB187B638CC4579F8B6','0','1','2003-01-30 00:00:00','1','2003-01-30 00:00:00','press_release','Press Release','F07F4BC91767F994E36A3FF5Bpress_release.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline'),('EE8C6A49BC200D77F9DD3F92AA','0','1','2002-06-27 00:00:00','1','2002-06-27 00:00:00','user_site','User Manager','EE8C72398F20734B22553E88D6user_site.xml',0,1,'../module/user_site/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('EE163600A2BAD87965E20E9C9A','0','1','2003-03-18 11:30:33','1','2003-03-18 11:30:33','services','Product & Services','EE1636505B9D89D29BE9B0CD40services.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name'),('EE163653A49B09E7BD3CC4005C','0','1','2002-05-28 00:00:00',NULL,'0000-00-00 00:00:00','status','Status','EE1636989C590FD740731F8D21status.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL),('EE399186B35C580610D4EDD7A3','0','1','2002-06-10 00:00:00','1','2002-06-10 00:00:00','collection_descriptor','Collection Content','EE39A7FDB43CDFD00B21EA6672coll_desc.xml',0,1,'../module/collection_content/first.jsp?','1','','EE185CE0B82B41C1724F284685',NULL),('EE39DC68885D4E61299258E68D','0','1','2002-07-23 00:00:00','1','2002-07-23 00:00:00','theme','Theme','EED8830E5DF4DF47FBE1F6926theme.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('EE39EDBA36471BA27231DAFF78','0','1','2002-06-04 00:00:00','1','2002-06-04 00:00:00','template_object','Template Object','EE39F3ECCA8734EFBD690B00F3template_object.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL),('EE39EDFFA5C0438D014F92A9A3','0','1','2002-06-04 00:00:00','1','2002-06-04 00:00:00','template_object_detail','Template Object Detail','EE39F3CD5646776D7FAE7F49C6template_object_detail.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL),('EEB49F22144357635AD6A684B6','0','1','2002-07-19 00:00:00','1','2002-07-19 00:00:00','role_manager','Role Manager','EEB4A290413F69DA2284F97F7Arole_site.xml',0,1,'../module/role_site/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('EED88F7EFBC8DFF1C5A048C73D','0','1','2002-07-05 00:00:00','1','2002-07-05 00:00:00','skin','Skin','EED93484525906F379F20E6364skin.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('EF76BA4ED5D8F2A21B1933A750','0','1','2002-08-05 00:00:00','1','2002-08-05 00:00:00','about_us','About Us','EF76D42DA287310C1E3E8BC50Fabout_us.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name'),('EF1EE6CF42F37C9EA72FAE3B94','0','1','2002-07-19 00:00:00',NULL,'0000-00-00 00:00:00','open_job','Open Job','EF1EE7D34518B387674E9DD7DAjob_desc.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','title'),('EF1F0CD62F63F3B0A7205D5BC4','0','1','2002-07-19 00:00:00','1','2002-07-19 00:00:00','role_site_privilage','Role Site Privilage','EF1F0E578F1ACE31ADF87291DBrole_site_privilage.xml',0,1,'../module/role_site_privilage/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('EFE457F0C2A80EC35CC399876D','0','1','2002-08-26 00:00:00','1','2002-08-26 00:00:00','client_survey','Client Survey','EFE5BF784720189D6C04750567client_survey.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F1157841F5337A8CFCCD319BB2','0','1','2003-08-28 10:45:53','1','2003-08-28 10:45:53','document_pooling','Document Pooling','F13430218553B5D57ABA3B9F8Adocument_pooling.xml',0,1,'../module/doc_pooling/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('F11F4FCC9526B5B7B3D29ADCC8','0','1','2002-10-26 00:00:00','1','2002-10-26 00:00:00','document_security','Document Security','F11F5174E72ACF929705956E68document_security.xml',0,0,'','0','','EE185CE0B82B41C1724F284685',''),('F12E17962FDD3B3AC25D99BE71','0','1','2002-10-29 00:00:00',NULL,'0000-00-00 00:00:00','document_upload','Document Upload','F12E18775A863CE34C9BD216C9document_upload.xml',0,0,'','0','','EE185CE0B82B41C1724F284685',''),('F15DB026AF629532843A3CC580','0','1','2002-11-08 00:00:00','1','2002-11-08 00:00:00','Search Manager','Search Manager',NULL,0,1,'../module/search_manager/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('F1812260A4353E752C091D087','0','1','2003-01-14 00:00:00','1','2003-01-14 00:00:00','document_category','Document Category','F2BC5AAE45276A01507BAA5EC3document_category.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F186E0333C668AE9C8CFD62426','0','1','2003-02-08 00:00:00','1','2003-02-08 00:00:00','tips_trick','Tips & Trick','F186E0E092AB46E07B8E371502tips&trick.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline'),('F186FA34E6B83A503DEE249E3','0','1','2003-01-30 00:00:00','1','2003-01-30 00:00:00','quote','Quote','F186FA9C365C869628ABF744Dquote.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline'),('F1A59EF36F336E28498926F38A','0','1','2003-01-08 00:00:00','1','2003-01-08 00:00:00','project_tracking','Project Tracking','F29B58E56FFD80EA309A43BBE1project_tracking.xml',0,1,'../module/project_tracking/project_task/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('F1A61B7AD45A8FE0C7226CB73C','0','1','2003-01-16 00:00:00','1','2003-01-16 00:00:00','employee_information','Employee Information','F1A9B76607EF1B550B8509CB79employee_information.xml',0,0,'','0','','EE185CE0B82B41C1724F284685',''),('F2E587923AC44C8979FBF2F26C','0','1','2003-01-22 00:00:00','1','2003-01-22 00:00:00','job_position','Job Position','F2E59F1CD7D0A8F31C1B034C4Bjob_position.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F1A9BE53CA5154655E89CC4AD2','0','1','2002-11-22 00:00:00',NULL,'0000-00-00 00:00:00','priority','Priority','F1A9BEC636E4D654ECF31AD840priority.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F1A9C5BF337F99C98C8944ACE1','0','1','2002-11-22 00:00:00',NULL,'0000-00-00 00:00:00','project_status','Project Status','F1A9C63D2A5933F5B5094D47F2project_status.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F1BE59DFBE674547A0FC415DE4','0','1','2002-11-26 00:00:00',NULL,'0000-00-00 00:00:00','project_member','Project Member','F1BE5D0EFAED955FEAAA6494DCproject_member.xml',0,0,'','0','','EE185CE0B82B41C1724F284685',''),('F1BF9F2D933537D9BBF0E629E4','0','1','2003-02-20 13:05:50','1','2003-02-20 13:05:50','project_task','Upload Document Task','F1BF9F8B26941FD7A16CCC6EAproject_task.xml',0,1,'../module/project_tracking/task_document/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('F1CD9746F2FFCA5286614B6DC8','0','1','2002-12-12 00:00:00','1','2002-12-12 00:00:00','web_calendar','Web Calendar','F1CD9B95BE7D185C6ED2BB05D2intranet_cal.xml',0,1,'../module/webcal/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('F20FC02DA4B8637A755046DEE3','0','1','2002-12-12 00:00:00',NULL,'0000-00-00 00:00:00','project_detail','Project Detail',NULL,0,1,'../module/project_tracking/project_detail/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('F30D6D4A72F6871D6DB046BCB6','0','1','2003-01-30 00:00:00','1','2003-01-30 00:00:00','fact_figure','Makin Fact & Figure','F30D9033E38F2636EB8A781FF9fact_figure.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','title'),('F312A7DFF0D600D4866CCD4E28','0','1','2003-03-19 14:04:17','1','2003-03-19 14:04:17','makin_director','Board of Directors','F312A8F2B8E5970E0FB34298CAmakin_director.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name'),('F3132892F57B236985F02B3F4F','0','1','2003-03-18 11:15:32','1','2003-03-18 11:15:32','subsidary','Company Subsidiary','F3132E850E5844BA529DAB71EAsubsidary.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name'),('F3364969091612B580AA048D2F','0','1','2003-02-07 00:00:00',NULL,'0000-00-00 00:00:00','project_category','Project Category','F3364A2BBD637707AE3BDFF2A2project_category.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','code'),('F38E7A30DCFFF83E486D127CCE','0','1','2003-02-24 13:17:39',NULL,'0000-00-00 00:00:00','support','Support','F38E7AB3E69C3C7012B53514Esupport.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F3C2963AD8A291EF75E1311711','0','1','2003-03-06 16:08:37',NULL,'0000-00-00 00:00:00','news_portal','Portal News','F3C296D4B7BD61D6AF35236209news_portal.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F3C2998AFDB590924800ACCC95','0','1','2003-03-06 16:12:00',NULL,'0000-00-00 00:00:00','press_release_portal','Portal Press Release','F3C299ED617911DCD21F77671Dpress_release_portal.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F3FF0CB5A1F1B01FDBEF1218F6','0','1','2003-03-18 10:22:17','1','2003-03-18 10:22:17','site_map','Site Map Makin Portal','F3FF1589275839556819920595site_map.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline'),('F3FF36F3D74BBBACD7A0D5E93A','0','1','2003-03-18 11:15:17','1','2003-03-18 11:15:17','makin_subsidary','Makin & Subsidiary','F3FF50CA76AF5A7FA334794A35makin_subsidary.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline'),('F501956E01E1C9C2DFFEC614DB','0','1','2003-05-07 14:46:49',NULL,'0000-00-00 00:00:00','blueoxygen_recipe','Blueoxygen Recipe','F5019638B7BC20088017CBE407blueoxygen_recipe.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline'),('F50196413176576A64F6F27A86','0','1','2003-05-07 14:47:47','1','2003-05-07 14:47:47','blueoxygen_review','Blueoxygen Review','F5019719FA5B4020A109DD1AA5blueoxygen_review.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline'),('F501EBD2F6B03958384BD30C50','0','1','2003-05-07 16:20:54',NULL,'0000-00-00 00:00:00','blueoxygen_project','Blueoxygen Project','F501EC5B2ABA18CDE4BBDE4520blueoxygen_project.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline'),('F6D5663C181596843F9DAFEC8A','0','1','2003-08-29 09:16:52','1','2003-08-29 09:16:52','activity_journal','Activity Journal','F74B7D1DF5BE649752143CD9E2journal.xml',0,1,'../module/activity/journal/index.jsp?','0','','EE185CE0B82B41C1724F284685',''),('F6DBF0819B1E35DD4776A0BD24','0','1','2003-08-29 09:25:33','1','2003-08-29 09:25:33','activity_journal_detail','Activity Journal Detail','F74B850E5677B305207CF691D0journal_detail.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F72286592BB6E269D3A30B39AF','0','1','2003-08-21 10:29:11','1','2003-08-21 10:29:11','user_role','User Role','F7228C72A2853EBA53D7F373Buser_role.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('F74B611636B6B145443194E9','0','1','2003-08-29 09:27:15','1','2003-08-29 09:27:15','activity_task','Activity Task',NULL,0,1,'../module/activity/task/index.jsp?','1','','EE185CE0B82B41C1724F284685','id'),('F76A9583B418F4FB3D261C1D53','0','1','2003-09-04 10:13:28',NULL,'0000-00-00 00:00:00','usersite_v2.0','User Manager ver.2.0',NULL,0,1,'../module/usersite_v2.0/index.jsp?','1','','EE185CE0B82B41C1724F284685',''),('F7AEF1A3414EC7F52B452E9562','0','1','2003-09-17 16:48:07',NULL,'0000-00-00 00:00:00','task_comment','Task Comment','F7AEF31370158C908F33061FBCtask_comment.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','id'),('F7D31BDF6B4015D5066BA1910E','0','1','2003-09-24 17:25:42','1','2003-09-24 17:25:42','activity_project','Activity Project',NULL,0,1,'../module/activity/project/index.jsp?','1','','EE185CE0B82B41C1724F284685','id'),('F8EE2D45B9F7549B13124FA380','0','1','2003-11-19 12:46:22','1','2003-11-19 12:46:22','report','Report','F8F28661A5DC903BB8EC3F802Dreport.xml',0,1,'../module/report/index.jsp?','1','','EE185CE0B82B41C1724F284685','id'),('F9552F9670D50E99AC4C09F898','0','1','2003-12-08 16:45:38','1','2003-12-08 16:45:38','notulen','notulen 1','F9553A42B09653043DAC558888notulen.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('FA1212E66C7D445B11998E48BB','0','1','2004-01-14 08:51:07',NULL,'0000-00-00 00:00:00','report_security','report_security','FA12132015E9571BD695A473D6report_security.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',''),('ff80808105857360010585bf3f3a','0','1','2005-08-05 00:00:00','1','2005-08-05 00:00:00','123','123','123',1,1,'123','1',NULL,NULL,'description'),('ff80808105957d810105957e254d','0','1','2005-08-08 00:00:00','1','2005-08-08 00:00:00','adadada','adadada','',1,1,'','1',NULL,NULL,'description');
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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
-- Table structure for table `document_category`
--

DROP TABLE IF EXISTS `document_category`;
CREATE TABLE `document_category` (
  `id` varchar(28) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `iparentcode` varchar(28) default NULL,
  `url_category_image` varchar(255) default NULL,
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_category`
--


/*!40000 ALTER TABLE `document_category` DISABLE KEYS */;
LOCK TABLES `document_category` WRITE;
INSERT INTO `document_category` VALUES ('F59B62F8C13BC4BBA141E1192B','AR','',NULL,'Article',1,'F162B448063A847319E641EF7D','2003-06-06 11:32:37',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F99D1D2EAB4B52F2DC78F66670','RM','',NULL,'Report Meeting',1,'F36F8BFFF97F8A16505B8305F7','2003-12-22 15:46:52',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F');
UNLOCK TABLES;
/*!40000 ALTER TABLE `document_category` ENABLE KEYS */;

--
-- Table structure for table `document_pooling`
--

DROP TABLE IF EXISTS `document_pooling`;
CREATE TABLE `document_pooling` (
  `id` varchar(28) NOT NULL default '',
  `display_style` varchar(20) default NULL,
  `source` varchar(50) default NULL,
  `file_name` varchar(50) default NULL,
  `path` varchar(50) default NULL,
  `headline` varchar(100) default NULL,
  `subheadline` varchar(100) default NULL,
  `abstract` text,
  `body` text,
  `linktext` varchar(50) default NULL,
  `byline` varchar(50) default NULL,
  `creditline` varchar(50) default NULL,
  `copyright` varchar(50) default NULL,
  `editor_notes` text,
  `keywords` varchar(50) default NULL,
  `transmitted_date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `news_topic_id` varchar(50) default NULL,
  `company_id` varchar(28) NOT NULL default '',
  `category_id` varchar(28) default NULL,
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_pooling`
--


/*!40000 ALTER TABLE `document_pooling` DISABLE KEYS */;
LOCK TABLES `document_pooling` WRITE;
INSERT INTO `document_pooling` VALUES ('F59B675227D5D80ADABEC3345',NULL,NULL,NULL,NULL,'Linux article from Business Week','','Linux article from Business Week. Explaining Morgan Stanley implementation.','Linux article from Business Week. Explaining Morgan Stanley implementation.',NULL,NULL,NULL,NULL,'',NULL,'2003-06-06 11:45:16',NULL,'F337B149F1D7EB47954BF7EF7','F59B62F8C13BC4BBA141E1192B',NULL,NULL,NULL,NULL,'F162B448063A847319E641EF7D','2003-06-06 11:45:16',NULL,'0000-00-00 00:00:00','0','ip','F185C351B2FAC396169017978F');
UNLOCK TABLES;
/*!40000 ALTER TABLE `document_pooling` ENABLE KEYS */;

--
-- Table structure for table `document_security`
--

DROP TABLE IF EXISTS `document_security`;
CREATE TABLE `document_security` (
  `id` varchar(28) NOT NULL default '',
  `document_id` varchar(28) NOT NULL default '',
  `role_id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_security`
--


/*!40000 ALTER TABLE `document_security` DISABLE KEYS */;
LOCK TABLES `document_security` WRITE;
INSERT INTO `document_security` VALUES ('F375AD600B59D623ACA1EF7F8E','F375AC9633F991EA0C4509913F','all',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F2C1809ED9D3A33390ACE287E2','F2C17C055C9E1F8BF9F40BD5DA','1',NULL,'2003-01-15 18:02:14',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F375A15AD6BE9EE0D1E58228F','F375A1200F4494AEB157052D94','all',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F59B67C147D0D92827447CC188','F59B675227D5D80ADABEC3345','all','F162B448063A847319E641EF7D','2003-06-06 11:45:16',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F375AA9FA36A872C5783F01A17','F375AA624CA723B427769655A3','all',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F375A603475C83E77F40953A99','F375A5CEE92A127A3C3089B244','all',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F');
UNLOCK TABLES;
/*!40000 ALTER TABLE `document_security` ENABLE KEYS */;

--
-- Table structure for table `document_upload`
--

DROP TABLE IF EXISTS `document_upload`;
CREATE TABLE `document_upload` (
  `id` varchar(28) NOT NULL default '',
  `document_id` varchar(28) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  `file_desc` varchar(255) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_upload`
--


/*!40000 ALTER TABLE `document_upload` DISABLE KEYS */;
LOCK TABLES `document_upload` WRITE;
INSERT INTO `document_upload` VALUES ('F59B6DF3D2B5563F92D6169499','F59B675227D5D80ADABEC3345','F59B6DF3D2B5563F92D6169499BWEprintLinux.pdf','Busienss Week Linux','F162B448063A847319E641EF7D','2003-06-06 11:45:16',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F375A18754F2B083D7779E6617','F375A1200F4494AEB157052D94','F375A18754F2B083D7779E6617icon10.gif','tttttttttttt',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F375A6462CC7F514AC3FE78C6C','F375A5CEE92A127A3C3089B244','F375A6462CC7F514AC3FE78C6Cemail.txt','fdsfsdafsda',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F2C180D0B751093753053C8B74','F2C17C055C9E1F8BF9F40BD5DA','F2C180D0B751093753053C8B74AC Nielsen NetRating Web Access.txt','Nielsen',NULL,'2003-01-15 18:02:14',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F375ADA8AD1322B08F43F9E70A','F375AC9633F991EA0C4509913F','F375ADA8AD1322B08F43F9E70Afelix.gif','dddddddddd',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F375AB44BD3A33C186EB74EEEB','F375AA624CA723B427769655A3','F375AB44BD3A33C186EB74EEEBemoticon1.gif','fdasfsafasdf',NULL,'0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F');
UNLOCK TABLES;
/*!40000 ALTER TABLE `document_upload` ENABLE KEYS */;

--
-- Table structure for table `employee_information`
--

DROP TABLE IF EXISTS `employee_information`;
CREATE TABLE `employee_information` (
  `id` varchar(28) NOT NULL default '',
  `first_name` varchar(125) NOT NULL default '',
  `last_name` varchar(125) default NULL,
  `email` varchar(125) default NULL,
  `address1` varchar(225) default NULL,
  `address2` varchar(225) default NULL,
  `city` varchar(125) default NULL,
  `telp` varchar(50) default NULL,
  `position` varchar(125) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_information`
--


/*!40000 ALTER TABLE `employee_information` DISABLE KEYS */;
LOCK TABLES `employee_information` WRITE;
INSERT INTO `employee_information` VALUES ('F1BE6416DE694041934439A4DF','Frans','Thamura','frans@intercitra.com','Cempaka Putih tengah II Blok.C no.21','Jakarta Pusat','Jakarta','','Project Manager','F162B448063A847','2003-01-08 04:57:22','F162B448063A847','2003-01-08 04:57:22','0','ic','F185C351B2FAC396169017978F'),('F1BF38F900B7E0BA0952936A49','Dedeng','Meilani','dedeng@intercitra.com','Cempaka Putih tengah II Blok.C no.21','Jakarta Pusat','Jakarta','','Programmer','F162B448063A847','2003-01-08 04:58:01','F162B448063A847','2003-01-08 04:58:01','0','ic','F185C351B2FAC396169017978F'),('F29AA66CC6DEF22BF6522ABC4B','Budi','Hidayat','budi@intercitra.com','Cempaka Putih tengah II Blok.C no.21','Jakarta Pusat','Jakarta','','Programmer','F162B448063A847','2003-01-08 04:58:30',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F');
UNLOCK TABLES;
/*!40000 ALTER TABLE `employee_information` ENABLE KEYS */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `id` varchar(28) NOT NULL default '',
  `highlight` varchar(255) NOT NULL default '',
  `description` text,
  `brief` text,
  `event_date` varchar(50) NOT NULL default '',
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `publish_flag` tinyint(1) default '1',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--


/*!40000 ALTER TABLE `event` DISABLE KEYS */;
LOCK TABLES `event` WRITE;
INSERT INTO `event` VALUES ('EE82378E08C2687C527DB8661F','test','','','20001010',NULL,NULL,NULL,NULL,1,1,'2','2002-06-18 14:55:02',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877');
UNLOCK TABLES;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;

--
-- Table structure for table `fact_figure`
--

DROP TABLE IF EXISTS `fact_figure`;
CREATE TABLE `fact_figure` (
  `id` varchar(28) NOT NULL default '',
  `title` varchar(128) NOT NULL default '',
  `abstract` text,
  `content` text,
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fact_figure`
--


/*!40000 ALTER TABLE `fact_figure` DISABLE KEYS */;
LOCK TABLES `fact_figure` WRITE;
INSERT INTO `fact_figure` VALUES ('F30D90E2A1C592CC2D292166BB','fact1','<p class=\"mainct\"><strong>Your Privacy is taken seriously at makingroup.com.</strong></p><p class=\"mainct\">The data we collect is used to  give us demographic information about the entire makingroup.com audience to improve the makingroup.com service and help us sell the advertising that  supports the site. The personal information you  provide lets us inform you about updates to the service and notify you of products and services  of makingroup.com.</p>','<p class=\"mainct\"><strong>Your Privacy is taken seriously at makingroup.com.</strong></p><p class=\"mainct\">The data we collect is used to  give us demographic information about the entire makingroup.com audience to improve the makingroup.com service and help us sell the advertising that  supports the site. The personal information you  provide lets us inform you about updates to the service and notify you of products and services  of makingroup.com.</p><p class=\"mainct\">makingroup.com will not give out personal information to any third parties unless authorized. If you order from us after visiting Sonys Playstation.com web site you authorize us to forward your PlayStation Underground registration number to Sony along with any information regarding the products you have purchased. </p><p class=\"mainct\">If at any time you would no longer  like to take part in our newsletter program, simply e-mail us via the address that is provided at the bottom of any newsletter that we send to you  with the UN-SUBSCRIBE command and you will be taken off of the list within ten business days. </p><p class=\"mainct\"><br><strong>Still Have a Question?</strong></p><p><span class=\"mainct\">If you didnt find what you needed here, feel free to call our Customer Service center at 1-877-432-9675 to speak with a Customer Service Representative. If you prefer, contact us by e-mail. Hours of operation: Open  7 days a week, 8:00 am to midnight EST. </span><br></p> ','F30D9197F7234506713DEB1AD1image01.jpg',NULL,'F162B448063A847','2003-01-30 18:34:55','F162B448063A847','2003-01-30 18:34:55','0','ic','F185BD3FDC5CC7989A3CED51A1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `fact_figure` ENABLE KEYS */;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq` (
  `id` varchar(28) NOT NULL default '',
  `category_id` varchar(28) default NULL,
  `question` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text,
  `answer3` text,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--


/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
LOCK TABLES `faq` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;

--
-- Table structure for table `image_size`
--

DROP TABLE IF EXISTS `image_size`;
CREATE TABLE `image_size` (
  `id` varchar(28) NOT NULL default '',
  `code` char(2) NOT NULL default '',
  `description` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image_size`
--


/*!40000 ALTER TABLE `image_size` DISABLE KEYS */;
LOCK TABLES `image_size` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `image_size` ENABLE KEYS */;

--
-- Table structure for table `intranet_cal`
--

DROP TABLE IF EXISTS `intranet_cal`;
CREATE TABLE `intranet_cal` (
  `id` bigint(20) NOT NULL auto_increment,
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `subject` varchar(150) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `status` int(11) NOT NULL default '0',
  `priority` int(11) NOT NULL default '0',
  `last_mod` datetime NOT NULL default '0000-00-00 00:00:00',
  `create_by` varchar(28) default NULL,
  `creator` varchar(100) NOT NULL default '',
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  `all_day` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intranet_cal`
--


/*!40000 ALTER TABLE `intranet_cal` DISABLE KEYS */;
LOCK TABLES `intranet_cal` WRITE;
INSERT INTO `intranet_cal` VALUES (8,'2002-12-25 09:00:00','2002-12-26 10:00:00','mmm','mmm',0,0,'0000-00-00 00:00:00','EEA063FE983851EB34BC9EB3B8','Frans','2002-12-21 06:29:52',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(9,'2002-12-25 09:00:00','2002-12-25 10:20:00','nnnnnnnn','',0,0,'0000-00-00 00:00:00','1','Administrator','2002-12-21 06:46:39',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(7,'2002-12-25 10:00:00','2002-12-25 20:00:00','Meeting Kemana','Testing',0,0,'0000-00-00 00:00:00','EEA063FE983851EB34BC9EB3B8','Frans','2002-12-21 06:29:14',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(6,'2002-12-20 12:00:00','2002-12-20 13:00:00','thshgzsdrg','',0,0,'0000-00-00 00:00:00','1','Administrator','2002-12-21 06:24:14',NULL,'0000-00-00 00:00:00','0','ic',NULL,1),(116,'2003-01-23 12:00:00','2003-01-23 13:00:00','ccccccccc','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-01-30 10:37:02',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(117,'2003-02-04 10:00:00','2003-02-04 11:00:00','aaaaaaaaaaaaaaa','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-04 10:21:38',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(19,'2002-12-17 12:00:00','2002-12-17 13:00:00','efrawegaw','',0,0,'0000-00-00 00:00:00','EEA063FE983851EB34BC9EB3B8','Frans','2003-01-08 05:42:45',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(118,'2003-02-04 17:00:00','2003-02-04 18:00:00','bbbbbbbbbbbbb','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-04 10:21:45',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(53,'2003-01-23 08:00:00','2003-01-23 09:00:00','hjkhkhjkhjkhkhj','hjhjhjhjhj',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-01-23 19:17:54',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(131,'2003-02-08 14:00:00','2003-02-10 21:00:00','Ketemu Budi','Ketemu Budi',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-07 16:37:21',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(123,'2003-02-04 14:00:00','2003-02-04 15:00:00','Makin Makina','Makin Makina',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-04 11:16:28',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(119,'2003-02-04 08:00:00','2003-02-04 13:00:00','cccccccccc','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-04 10:21:57',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(120,'2003-02-04 09:00:00','2003-02-04 18:00:00','dddddddddde','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-04 10:22:33',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(121,'2003-02-05 15:00:00','2003-02-06 13:00:00','vvvvv vvvvvvvv','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-04 10:23:13',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(122,'2003-02-05 11:00:00','2003-02-06 12:00:00','xxxxxxxxx cccccccc','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-04 10:23:30',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(57,'2003-01-24 08:00:00','2003-01-24 09:00:00','Nginex','12345',0,0,'0000-00-00 00:00:00','1','Administrator','2003-01-24 06:41:22',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(128,'2003-02-04 12:00:00','2003-02-04 22:00:00','ggggggggggggg','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-07 16:34:34',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(124,'2003-02-04 15:00:00','2003-02-04 16:00:00','meeting dengan PAk Snny','Pak Sonny Meeting',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-04 11:18:24',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(125,'2003-02-04 19:00:00','2003-02-04 23:00:00','Mamamia','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-04 11:19:44',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(126,'2003-02-07 10:00:00','2003-02-07 14:00:00','adsafasf','a',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-07 16:32:16',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(127,'2003-02-07 12:00:00','2003-02-08 13:00:00','xxxxxxxxx xxsssssss','',0,0,'0000-00-00 00:00:00','1','Administrator','2003-02-07 16:33:03',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(130,'2003-02-08 14:00:00','2003-02-08 17:00:00','Makan Malam dengan Dedeng','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-07 16:37:06',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(129,'2003-02-08 14:00:00','2003-02-08 15:00:00','Makan Malam dengan Istri ke 2','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-07 16:36:49',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(140,'2003-02-05 21:00:00','2003-02-15 23:00:00','Budi kemana nih','kemana kek, bodo',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-18 15:43:27',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(141,'2003-02-08 17:00:00','2003-02-08 18:00:00','Makan Malam','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-10 21:10:31',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(142,'2003-02-08 20:00:00','2003-02-08 21:00:00','Ketupat Lindri','Ketupat Lindri',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-10 21:13:26',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(143,'2003-02-08 18:00:00','2003-02-08 20:00:00','Ketupat Lindry','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-10 21:13:41',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(144,'2003-02-17 08:00:00','2003-02-17 09:00:00','fgdsgdsgdsgd','dfsfsafdasf',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-02-17 11:21:03',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(145,'2003-02-18 10:00:00','2003-02-18 15:00:00','Budi Budi Budi','Budi Budi',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-02-18 15:42:27',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(87,'2003-01-24 08:00:00','2003-01-24 09:00:00','Pointing','Foolbook',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-01-29 18:16:24',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(132,'2003-02-08 14:00:00','2003-02-09 19:00:00','Bugs Bugs','Bygs',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-07 16:38:07',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(133,'2003-02-10 10:00:00','2003-02-10 11:00:00','Ketemu Budi','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-07 16:39:17',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(134,'2003-02-05 11:00:00','2003-02-05 16:00:00','Meeting Lagi Meeting Lagi','Cape meeting melulu',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-08 09:51:45',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(135,'2003-02-05 11:00:00','2003-02-05 14:00:00','Meeting ke -2','Meeting ke -2',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-08 09:53:04',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(136,'2003-02-05 12:00:00','2003-02-05 13:00:00','Meet Up','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-08 10:04:28',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(137,'2003-02-05 13:00:00','2003-02-05 14:00:00','Budi emang Hebat','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-08 10:04:44',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(138,'2003-02-05 13:00:00','2003-02-05 14:00:00','Dijodoin si budi','ai ah',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-18 15:47:05',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(139,'2003-02-05 13:00:00','2003-02-05 22:00:00','budi mau kawin','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-02-08 10:06:05',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(146,'2003-02-18 19:00:00','2003-02-18 20:00:00','pulang','mao pulang n tidur',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(147,'2003-02-24 08:00:00','2003-02-27 09:00:00','Meeting','Meeting dengan CEO Makin Group',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-02-21 11:42:29',NULL,'0000-00-00 00:00:00','0','ic',NULL,1),(148,'2003-03-04 08:00:00','2003-03-10 09:00:00','Director Meeting','Meeting all director nationally',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-02-21 11:43:05',NULL,'0000-00-00 00:00:00','0','ic',NULL,1),(149,'2003-03-04 08:00:00','2003-03-04 11:00:00','Golf','Golf dengan CEO Garuda',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-02-21 11:54:20',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(150,'2003-03-04 09:00:00','2003-03-04 10:00:00','Breakfast dengan Direktur Execom','Breakfast dengan Direktur Execom, bareng dengan CEO Garuda',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-02-21 11:54:48',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(151,'2003-03-05 10:00:00','2003-03-05 11:00:00','gbgbggadgabbbbbb','adadadadadad',0,0,'0000-00-00 00:00:00','1','Admin','2003-03-05 16:14:09',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(152,'2003-03-05 10:00:00','2003-03-05 13:00:00','gseghashseh','drghesrhse',0,0,'0000-00-00 00:00:00','1','Admin','2003-03-05 16:14:41',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(153,'2003-03-06 08:00:00','2003-03-06 09:00:00','fffffffffffffffffffffgggggggggggggggg','asdf',0,0,'0000-00-00 00:00:00','1','Admin','2003-03-06 10:46:48',NULL,'0000-00-00 00:00:00','0','ic',NULL,1),(154,'2003-03-06 08:00:00','2003-03-06 12:00:00','feagaeg','ager',0,0,'0000-00-00 00:00:00','1','Admin','2003-03-06 10:47:19',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(155,'2003-03-06 09:00:00','2003-03-06 11:00:00','bgshstr','bnar',0,0,'0000-00-00 00:00:00','1','Admin','2003-03-06 10:47:48',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(156,'2003-03-03 08:00:00','2003-03-06 09:00:00','l;klk;lk;lk','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-03-20 15:55:41',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(157,'2003-03-01 08:00:00','2003-03-01 09:00:00','kkkk','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-03-20 16:15:03',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(158,'2003-04-01 08:00:00','2003-04-01 09:00:00','Makan pagi','Makan pagi',0,0,'0000-00-00 00:00:00','1','Admin','2003-04-29 08:33:26',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(159,'2003-04-30 08:00:00','2003-04-30 09:00:00','Makan pagi','Makan pagi',0,0,'0000-00-00 00:00:00','1','Admin','2003-04-29 08:34:12',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(160,'2003-04-29 12:00:00','2003-04-29 13:00:00','makan siang','makan siang dimana nih nanti',0,0,'0000-00-00 00:00:00','1','Admin','2003-04-29 10:45:42',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(161,'2003-04-29 12:00:00','2003-04-29 13:00:00','makan lagi ah','makan-makan',0,0,'0000-00-00 00:00:00','1','Admin','2003-04-29 10:46:42',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(163,'2003-06-04 08:00:00','2003-06-04 09:00:00','meen','gkjashfk.jhaskc',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-06-04 13:02:57',NULL,'0000-00-00 00:00:00','0','ic',NULL,1),(164,'2003-06-12 09:00:00','2003-06-12 10:00:00','bhkjfhfh','ncnmnZMCn',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-06-04 22:53:41',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(166,'2003-06-04 08:00:00','2003-06-04 09:00:00','bgj','b,nbb,',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu','2003-06-04 22:55:24',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(167,'2003-09-30 12:00:00','2003-09-12 13:00:00','lunch break','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-09-12 10:45:43',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(168,'2003-09-30 12:00:00','2003-09-12 13:00:00','lunch break','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin','2003-09-12 10:45:43',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(169,'2003-09-18 14:00:00','2003-09-18 16:00:00','Meeting with Handojo','Discuss about marketing strategy and working together to promote Universal Workspace',0,0,'0000-00-00 00:00:00','1','Admin','2003-09-17 14:35:30',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(170,'2003-10-07 11:00:00','2003-10-07 17:00:00','Meeting with Bauma','Meeting with Bauma to talk about Absensi',0,0,'0000-00-00 00:00:00','F3FB0D6714905E04E2586A8E1A','Aris','2003-10-07 10:22:25',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(171,'2003-10-08 08:00:00','2003-10-08 22:00:00','Internal Meeting','Meeting Intercitra Internal',0,0,'0000-00-00 00:00:00','F3FB0D6714905E04E2586A8E1A','Aris','2003-10-07 10:23:22',NULL,'0000-00-00 00:00:00','0','ic',NULL,0),(172,'2003-10-15 08:00:00','2003-10-15 13:00:00','Meeting with Umar','Meeting with Umar for Project Management Improvement',0,0,'0000-00-00 00:00:00','F36F8BFFF97F8A16505B8305F7','Dedeng','2003-10-07 10:24:52',NULL,'0000-00-00 00:00:00','0','ic',NULL,1),(173,'2003-11-17 14:00:00','2003-11-17 15:00:00','Trikomsel','Presentasi di Trikomsel tentang Universal Workspace',0,0,'0000-00-00 00:00:00','F36F8BFFF97F8A16505B8305F7','Dedeng','2003-11-17 10:32:20',NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `intranet_cal` ENABLE KEYS */;

--
-- Table structure for table `jiveattachment`
--

DROP TABLE IF EXISTS `jiveattachment`;
CREATE TABLE `jiveattachment` (
  `attachmentID` bigint(20) NOT NULL default '0',
  `messageID` bigint(20) NOT NULL default '0',
  `fileName` varchar(255) NOT NULL default '',
  `fileSize` int(11) NOT NULL default '0',
  `contentType` varchar(50) NOT NULL default '',
  `creationDate` varchar(15) NOT NULL default '',
  `modificationDate` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`attachmentID`),
  KEY `jiveAttachment_messageID_idx` (`messageID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveattachment`
--


/*!40000 ALTER TABLE `jiveattachment` DISABLE KEYS */;
LOCK TABLES `jiveattachment` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveattachment` ENABLE KEYS */;

--
-- Table structure for table `jiveattachmentprop`
--

DROP TABLE IF EXISTS `jiveattachmentprop`;
CREATE TABLE `jiveattachmentprop` (
  `attachmentID` bigint(20) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `propValue` text NOT NULL,
  PRIMARY KEY  (`attachmentID`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveattachmentprop`
--


/*!40000 ALTER TABLE `jiveattachmentprop` DISABLE KEYS */;
LOCK TABLES `jiveattachmentprop` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveattachmentprop` ENABLE KEYS */;

--
-- Table structure for table `jivecategory`
--

DROP TABLE IF EXISTS `jivecategory`;
CREATE TABLE `jivecategory` (
  `categoryID` bigint(20) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `creationDate` varchar(15) NOT NULL default '',
  `modificationDate` varchar(15) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  PRIMARY KEY  (`categoryID`),
  KEY `jiveCategory_lft_idx` (`lft`),
  KEY `jiveCategory_rgt_idx` (`rgt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivecategory`
--


/*!40000 ALTER TABLE `jivecategory` DISABLE KEYS */;
LOCK TABLES `jivecategory` WRITE;
INSERT INTO `jivecategory` VALUES (1,'root',' ','0','0',1,2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivecategory` ENABLE KEYS */;

--
-- Table structure for table `jivecategoryprop`
--

DROP TABLE IF EXISTS `jivecategoryprop`;
CREATE TABLE `jivecategoryprop` (
  `categoryID` bigint(20) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `propValue` text NOT NULL,
  PRIMARY KEY  (`categoryID`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivecategoryprop`
--


/*!40000 ALTER TABLE `jivecategoryprop` DISABLE KEYS */;
LOCK TABLES `jivecategoryprop` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivecategoryprop` ENABLE KEYS */;

--
-- Table structure for table `jiveforum`
--

DROP TABLE IF EXISTS `jiveforum`;
CREATE TABLE `jiveforum` (
  `forumID` bigint(20) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `modDefaultThreadVal` bigint(20) NOT NULL default '0',
  `modMinThreadVal` bigint(20) NOT NULL default '0',
  `modDefaultMsgVal` bigint(20) NOT NULL default '0',
  `modMinMsgVal` bigint(20) NOT NULL default '0',
  `creationDate` varchar(15) NOT NULL default '',
  `modificationDate` varchar(15) NOT NULL default '',
  `categoryID` bigint(20) NOT NULL default '0',
  `categoryIndex` int(11) NOT NULL default '0',
  PRIMARY KEY  (`forumID`),
  KEY `jiveForum_name_idx` (`name`(10)),
  KEY `jiveForum_cat_idx` (`categoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveforum`
--


/*!40000 ALTER TABLE `jiveforum` DISABLE KEYS */;
LOCK TABLES `jiveforum` WRITE;
INSERT INTO `jiveforum` VALUES (1,'Testing Forum','Semua uneq2 yang anda rasakan boleh diutarakan disini',1,1,1,1,'001068450625919','001068516997909',1,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveforum` ENABLE KEYS */;

--
-- Table structure for table `jiveforumprop`
--

DROP TABLE IF EXISTS `jiveforumprop`;
CREATE TABLE `jiveforumprop` (
  `forumID` bigint(20) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `propValue` text NOT NULL,
  PRIMARY KEY  (`forumID`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveforumprop`
--


/*!40000 ALTER TABLE `jiveforumprop` DISABLE KEYS */;
LOCK TABLES `jiveforumprop` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveforumprop` ENABLE KEYS */;

--
-- Table structure for table `jivegroup`
--

DROP TABLE IF EXISTS `jivegroup`;
CREATE TABLE `jivegroup` (
  `groupID` bigint(20) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) default NULL,
  `creationDate` varchar(15) NOT NULL default '',
  `modificationDate` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`groupID`),
  KEY `jiveGroup_name_idx` (`name`(10)),
  KEY `jiveGroup_cDate_idx` (`creationDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivegroup`
--


/*!40000 ALTER TABLE `jivegroup` DISABLE KEYS */;
LOCK TABLES `jivegroup` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivegroup` ENABLE KEYS */;

--
-- Table structure for table `jivegroupperm`
--

DROP TABLE IF EXISTS `jivegroupperm`;
CREATE TABLE `jivegroupperm` (
  `objectType` int(11) NOT NULL default '0',
  `objectID` bigint(20) NOT NULL default '0',
  `groupID` bigint(20) NOT NULL default '0',
  `permission` int(11) NOT NULL default '0',
  KEY `jiveGroupPerm_object_idx` (`objectType`,`objectID`),
  KEY `jiveGroupPerm_groupID_idx` (`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivegroupperm`
--


/*!40000 ALTER TABLE `jivegroupperm` DISABLE KEYS */;
LOCK TABLES `jivegroupperm` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivegroupperm` ENABLE KEYS */;

--
-- Table structure for table `jivegroupprop`
--

DROP TABLE IF EXISTS `jivegroupprop`;
CREATE TABLE `jivegroupprop` (
  `groupID` bigint(20) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `propValue` text NOT NULL,
  PRIMARY KEY  (`groupID`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivegroupprop`
--


/*!40000 ALTER TABLE `jivegroupprop` DISABLE KEYS */;
LOCK TABLES `jivegroupprop` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivegroupprop` ENABLE KEYS */;

--
-- Table structure for table `jivegroupuser`
--

DROP TABLE IF EXISTS `jivegroupuser`;
CREATE TABLE `jivegroupuser` (
  `groupID` bigint(20) NOT NULL default '0',
  `userID` bigint(20) NOT NULL default '0',
  `administrator` int(11) NOT NULL default '0',
  PRIMARY KEY  (`groupID`,`userID`,`administrator`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivegroupuser`
--


/*!40000 ALTER TABLE `jivegroupuser` DISABLE KEYS */;
LOCK TABLES `jivegroupuser` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivegroupuser` ENABLE KEYS */;

--
-- Table structure for table `jiveid`
--

DROP TABLE IF EXISTS `jiveid`;
CREATE TABLE `jiveid` (
  `idType` int(11) NOT NULL default '0',
  `id` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`idType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveid`
--


/*!40000 ALTER TABLE `jiveid` DISABLE KEYS */;
LOCK TABLES `jiveid` WRITE;
INSERT INTO `jiveid` VALUES (0,2),(1,11),(2,31),(3,2),(4,1),(13,1),(14,2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveid` ENABLE KEYS */;

--
-- Table structure for table `jivemessage`
--

DROP TABLE IF EXISTS `jivemessage`;
CREATE TABLE `jivemessage` (
  `messageID` bigint(20) NOT NULL default '0',
  `parentMessageID` bigint(20) default NULL,
  `threadID` bigint(20) NOT NULL default '0',
  `forumID` bigint(20) NOT NULL default '0',
  `userID` bigint(20) default NULL,
  `subject` varchar(255) default NULL,
  `body` text,
  `modValue` bigint(20) NOT NULL default '0',
  `rewardPoints` int(11) NOT NULL default '0',
  `creationDate` varchar(15) NOT NULL default '',
  `modificationDate` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`messageID`),
  KEY `jiveMessage_forumID_idx` (`forumID`),
  KEY `jiveMessage_threadID_idx` (`threadID`),
  KEY `jiveMessage_userID_idx` (`userID`),
  KEY `jiveMessage_forumID_modVal_idx` (`forumID`,`modValue`),
  KEY `jiveMessage_modValue_idx` (`modValue`),
  KEY `jiveMessage_cDate_idx` (`creationDate`),
  KEY `jiveMessage_mDate_idx` (`modificationDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivemessage`
--


/*!40000 ALTER TABLE `jivemessage` DISABLE KEYS */;
LOCK TABLES `jivemessage` WRITE;
INSERT INTO `jivemessage` VALUES (2,NULL,1,1,6,'Lagi Testing Forum neh...','Apa iya semua yang kita kerjakan disini tak bermanfaat?\r\n[u]masa sih....??[/u]\n\n\r\nMessage was edited by: Dedeng at Nov 10, 2003 2:52 PM\r\n',1,0,'001068450695519','001068450777517'),(3,2,1,1,6,'Re: Lagi Testing Forum neh...','reply....',1,0,'001068450969353','001068450969353'),(16,3,1,1,6,'Re: Lagi Testing Forum neh...','Testing lagi ah.....',1,0,'001068516952604','001068516952604'),(17,2,1,1,6,'Re: Lagi Testing Forum neh...','ini reply langsung dari gue...',1,0,'001068516978952','001068516978952'),(18,16,1,1,6,'Re: Lagi Testing Forum neh...','yang ini sih gak langsung',1,0,'001068516997909','001068516997909');
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivemessage` ENABLE KEYS */;

--
-- Table structure for table `jivemessageprop`
--

DROP TABLE IF EXISTS `jivemessageprop`;
CREATE TABLE `jivemessageprop` (
  `messageID` bigint(20) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `propValue` text NOT NULL,
  PRIMARY KEY  (`messageID`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivemessageprop`
--


/*!40000 ALTER TABLE `jivemessageprop` DISABLE KEYS */;
LOCK TABLES `jivemessageprop` WRITE;
INSERT INTO `jivemessageprop` VALUES (2,'IP','127.0.0.1'),(3,'IP','127.0.0.1'),(16,'IP','192.168.0.41'),(17,'IP','192.168.0.41'),(18,'IP','192.168.0.41');
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivemessageprop` ENABLE KEYS */;

--
-- Table structure for table `jivemoderation`
--

DROP TABLE IF EXISTS `jivemoderation`;
CREATE TABLE `jivemoderation` (
  `objectType` bigint(20) NOT NULL default '0',
  `objectID` bigint(20) NOT NULL default '0',
  `userID` bigint(20) default NULL,
  `modDate` varchar(15) NOT NULL default '',
  `modValue` bigint(20) NOT NULL default '0',
  KEY `jiveModeration_objectID_idx` (`objectID`),
  KEY `jiveModeration_objectType_idx` (`objectType`),
  KEY `jiveModeration_userID_idx` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivemoderation`
--


/*!40000 ALTER TABLE `jivemoderation` DISABLE KEYS */;
LOCK TABLES `jivemoderation` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivemoderation` ENABLE KEYS */;

--
-- Table structure for table `jivereadtracker`
--

DROP TABLE IF EXISTS `jivereadtracker`;
CREATE TABLE `jivereadtracker` (
  `userID` bigint(20) NOT NULL default '0',
  `objectType` int(11) NOT NULL default '0',
  `objectID` bigint(20) NOT NULL default '0',
  `readDate` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`userID`,`objectType`,`objectID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivereadtracker`
--


/*!40000 ALTER TABLE `jivereadtracker` DISABLE KEYS */;
LOCK TABLES `jivereadtracker` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivereadtracker` ENABLE KEYS */;

--
-- Table structure for table `jivereward`
--

DROP TABLE IF EXISTS `jivereward`;
CREATE TABLE `jivereward` (
  `userID` bigint(20) NOT NULL default '0',
  `creationDate` varchar(15) NOT NULL default '',
  `rewardPoints` bigint(20) NOT NULL default '0',
  `messageID` bigint(20) default NULL,
  `threadID` bigint(20) default NULL,
  KEY `jiveReward_userID_idx` (`userID`),
  KEY `jiveReward_creationDate_idx` (`creationDate`),
  KEY `jiveReward_messageID_idx` (`messageID`),
  KEY `jiveReward_threadID_idx` (`threadID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivereward`
--


/*!40000 ALTER TABLE `jivereward` DISABLE KEYS */;
LOCK TABLES `jivereward` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivereward` ENABLE KEYS */;

--
-- Table structure for table `jivethread`
--

DROP TABLE IF EXISTS `jivethread`;
CREATE TABLE `jivethread` (
  `threadID` bigint(20) NOT NULL default '0',
  `forumID` bigint(20) NOT NULL default '0',
  `rootMessageID` bigint(20) NOT NULL default '0',
  `modValue` bigint(20) NOT NULL default '0',
  `rewardPoints` int(11) NOT NULL default '0',
  `creationDate` varchar(15) NOT NULL default '',
  `modificationDate` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`threadID`),
  KEY `jiveThread_forumID_idx` (`forumID`),
  KEY `jiveThread_modValue_idx` (`modValue`),
  KEY `jiveThread_cDate_idx` (`creationDate`),
  KEY `jiveThread_mDate_idx` (`modificationDate`),
  KEY `jiveThread_forumID_modVal_idx` (`forumID`,`modValue`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivethread`
--


/*!40000 ALTER TABLE `jivethread` DISABLE KEYS */;
LOCK TABLES `jivethread` WRITE;
INSERT INTO `jivethread` VALUES (1,1,2,1,0,'001068450695519','001068516997909');
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivethread` ENABLE KEYS */;

--
-- Table structure for table `jivethreadprop`
--

DROP TABLE IF EXISTS `jivethreadprop`;
CREATE TABLE `jivethreadprop` (
  `threadID` bigint(20) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `propValue` text NOT NULL,
  PRIMARY KEY  (`threadID`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivethreadprop`
--


/*!40000 ALTER TABLE `jivethreadprop` DISABLE KEYS */;
LOCK TABLES `jivethreadprop` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivethreadprop` ENABLE KEYS */;

--
-- Table structure for table `jiveuser`
--

DROP TABLE IF EXISTS `jiveuser`;
CREATE TABLE `jiveuser` (
  `userID` bigint(20) NOT NULL default '0',
  `username` varchar(30) NOT NULL default '',
  `passwordHash` varchar(32) NOT NULL default '',
  `name` varchar(100) default NULL,
  `nameVisible` int(11) NOT NULL default '0',
  `email` varchar(100) NOT NULL default '',
  `emailVisible` int(11) NOT NULL default '0',
  `creationDate` varchar(15) NOT NULL default '',
  `modificationDate` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`userID`),
  UNIQUE KEY `username` (`username`),
  KEY `jiveUser_username_idx` (`username`(10)),
  KEY `jiveUser_hash_idx` (`passwordHash`),
  KEY `jiveUser_cDate_idx` (`creationDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveuser`
--


/*!40000 ALTER TABLE `jiveuser` DISABLE KEYS */;
LOCK TABLES `jiveuser` WRITE;
INSERT INTO `jiveuser` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','Administrator',1,'admin@example.com',1,'0','0');
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveuser` ENABLE KEYS */;

--
-- Table structure for table `jiveuserperm`
--

DROP TABLE IF EXISTS `jiveuserperm`;
CREATE TABLE `jiveuserperm` (
  `objectType` int(11) NOT NULL default '0',
  `objectID` bigint(20) NOT NULL default '0',
  `userID` bigint(20) NOT NULL default '0',
  `permission` int(11) NOT NULL default '0',
  KEY `jiveUserPerm_object_idx` (`objectType`,`objectID`),
  KEY `jiveUserPerm_userID_idx` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveuserperm`
--


/*!40000 ALTER TABLE `jiveuserperm` DISABLE KEYS */;
LOCK TABLES `jiveuserperm` WRITE;
INSERT INTO `jiveuserperm` VALUES (17,-1,1,59),(17,-1,-1,0),(17,-1,0,1),(17,-1,0,2),(0,1,0,0),(0,1,0,2),(0,1,0,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveuserperm` ENABLE KEYS */;

--
-- Table structure for table `jiveuserprop`
--

DROP TABLE IF EXISTS `jiveuserprop`;
CREATE TABLE `jiveuserprop` (
  `userID` bigint(20) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `propValue` text NOT NULL,
  PRIMARY KEY  (`userID`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveuserprop`
--


/*!40000 ALTER TABLE `jiveuserprop` DISABLE KEYS */;
LOCK TABLES `jiveuserprop` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveuserprop` ENABLE KEYS */;

--
-- Table structure for table `jiveuserreward`
--

DROP TABLE IF EXISTS `jiveuserreward`;
CREATE TABLE `jiveuserreward` (
  `userID` bigint(20) NOT NULL default '0',
  `rewardPoints` int(11) NOT NULL default '0',
  PRIMARY KEY  (`userID`,`rewardPoints`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveuserreward`
--


/*!40000 ALTER TABLE `jiveuserreward` DISABLE KEYS */;
LOCK TABLES `jiveuserreward` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveuserreward` ENABLE KEYS */;

--
-- Table structure for table `jiveuserroster`
--

DROP TABLE IF EXISTS `jiveuserroster`;
CREATE TABLE `jiveuserroster` (
  `userID` bigint(20) NOT NULL default '0',
  `subUserID` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`userID`,`subUserID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jiveuserroster`
--


/*!40000 ALTER TABLE `jiveuserroster` DISABLE KEYS */;
LOCK TABLES `jiveuserroster` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `jiveuserroster` ENABLE KEYS */;

--
-- Table structure for table `jivewatch`
--

DROP TABLE IF EXISTS `jivewatch`;
CREATE TABLE `jivewatch` (
  `userID` bigint(20) NOT NULL default '0',
  `objectID` bigint(20) NOT NULL default '0',
  `objectType` bigint(20) NOT NULL default '0',
  `watchType` int(11) NOT NULL default '0',
  `expirable` int(11) NOT NULL default '0',
  PRIMARY KEY  (`userID`,`objectID`,`objectType`,`watchType`),
  KEY `jiveWatch_userID_idx` (`userID`),
  KEY `jiveWatch_objectID_idx` (`objectID`),
  KEY `jiveWatch_objectType_idx` (`objectType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jivewatch`
--


/*!40000 ALTER TABLE `jivewatch` DISABLE KEYS */;
LOCK TABLES `jivewatch` WRITE;
INSERT INTO `jivewatch` VALUES (6,1,1,0,1),(6,1,0,0,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `jivewatch` ENABLE KEYS */;

--
-- Table structure for table `job_position`
--

DROP TABLE IF EXISTS `job_position`;
CREATE TABLE `job_position` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(150) NOT NULL default '',
  `description` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
INSERT INTO `job_position` VALUES ('F2E8E250BAAE253CBC93B60FFB','Project Manager','','1','2003-01-23 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F2E8E299E96959106BE15AF29B','Direktur Utama','','1','2003-01-23 00:00:00',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `job_position` ENABLE KEYS */;

--
-- Table structure for table `makin_director`
--

DROP TABLE IF EXISTS `makin_director`;
CREATE TABLE `makin_director` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `position` varchar(128) NOT NULL default '',
  `curiculum_vitae` text,
  `url_image1` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makin_director`
--


/*!40000 ALTER TABLE `makin_director` DISABLE KEYS */;
LOCK TABLES `makin_director` WRITE;
INSERT INTO `makin_director` VALUES ('F312B3113B9A55D45AE41B5F73','Harianto Sutanto','Presiden Komisaris','######-cv detail######','F312B5A5543F5F9AF278532ACAsw.jpg','F162B448063A847','2003-03-25 12:22:43','F162B448063A847319E641EF7D','2003-03-25 12:22:43','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312B60278CEAC24F96D8A3E3E','Bambang Harto Tjahjono','Wakil Presiden Komisaris','######-CV Detail########\r\nName :\r\naddress :\r\n','F312B6B1B3977FB21056DEF7EAsw.jpg','F162B448063A847','2003-03-19 14:16:52','F162B448063A847319E641EF7D','2003-03-19 14:16:52','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F4049E0F09488520CCC5AD7FED','Karta Rajasa','fdasfasfdas','fsdafasfdasfas','','F162B448063A847319E641EF7D','2003-03-25 12:22:09','F162B448063A847319E641EF7D','2003-03-25 12:22:09','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F4049BEBAC99B406F82B6CB1EC','test','Direktur Pelaksana','####-CV Detail########',NULL,'F162B448063A847319E641EF7D','2003-03-19 11:49:24',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F404A350FBA3DDF84325002C41','test lagi ah','dkjdslfjkasklj','kjsdklajflaskjfdaskl','','F162B448063A847319E641EF7D','2003-03-19 14:04:49','F162B448063A847319E641EF7D','2003-03-19 14:04:49','0','ic','F185BD3FDC5CC7989A3CED51A1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `makin_director` ENABLE KEYS */;

--
-- Table structure for table `makin_subsidary`
--

DROP TABLE IF EXISTS `makin_subsidary`;
CREATE TABLE `makin_subsidary` (
  `id` varchar(28) NOT NULL default '',
  `headline` varchar(128) NOT NULL default '',
  `url_page_collection` varchar(128) NOT NULL default '',
  `detail` text,
  `url_image1` varchar(255) default NULL,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makin_subsidary`
--


/*!40000 ALTER TABLE `makin_subsidary` DISABLE KEYS */;
LOCK TABLES `makin_subsidary` WRITE;
INSERT INTO `makin_subsidary` VALUES ('F3FF5147D440C9419659788CA6','Board Of Directors','company_bod','Detail Board Of Directors\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Makin & Subsidiary##>search (Board Of Directors)\r\n<br>','F3FF562FFE8DF87B2491ACA8CAbod_icon.gif','F162B448063A847','2003-03-18 11:14:51',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF56FA82986E8090B7889445','Line Of Business','company_lob','Detail Line Of Business\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Makin & Subsidiary##>search (Line Of Business)\r\n<br>','F3FF5820354173ED4AD4C5B812lob_icon.gif','F162B448063A847','2003-03-18 11:16:58',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF582779228A15DE7C8FEE5B','Company Structure','company_structure','Detail Company Structure\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Makin & Subsidiary##>search (Company Structure)\r\n<br>','F4049F122167794EEB56BCC1C8comp_icon.gif','F162B448063A847','2003-03-20 14:59:03','F162B448063A847','2003-03-20 14:59:03','0','ic','F185BD3FDC5CC7989A3CED51A1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `makin_subsidary` ENABLE KEYS */;

--
-- Table structure for table `member_bengkel`
--

DROP TABLE IF EXISTS `member_bengkel`;
CREATE TABLE `member_bengkel` (
  `id` varchar(28) NOT NULL default '',
  `membership_code_interlokal` char(2) NOT NULL default '',
  `membership_code_kode_pos` varchar(4) NOT NULL default '',
  `membership_code_digit` varchar(9) NOT NULL default '',
  `first_name` varchar(35) NOT NULL default '',
  `last_name` varchar(35) default NULL,
  `password` varchar(15) NOT NULL default '',
  `email` varchar(125) default NULL,
  `sex` char(2) NOT NULL default '',
  `ktp` varchar(30) NOT NULL default '',
  `martial_status` varchar(15) NOT NULL default '',
  `address1` varchar(55) default NULL,
  `city` varchar(15) default NULL,
  `post_code` varchar(10) NOT NULL default '',
  `province` varchar(35) NOT NULL default '',
  `country` varchar(35) NOT NULL default '',
  `telp` varchar(35) NOT NULL default '',
  `fax` varchar(35) NOT NULL default '',
  `handphone` varchar(35) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_bengkel`
--


/*!40000 ALTER TABLE `member_bengkel` DISABLE KEYS */;
LOCK TABLES `member_bengkel` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `member_bengkel` ENABLE KEYS */;

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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
  KEY `descriptor_id_16` (`descriptor_id`),
  KEY `descriptor_id_17` (`descriptor_id`),
  KEY `iparent_16` (`iparent`),
  KEY `descriptor_id_18` (`descriptor_id`),
  KEY `iparent_17` (`iparent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module_function`
--


/*!40000 ALTER TABLE `module_function` DISABLE KEYS */;
LOCK TABLES `module_function` WRITE;
INSERT INTO `module_function` VALUES ('ff80808105a3a8ed0105a3b185a9','Site Manager','Site Manager','25','0','id',0,1,'1','2005-08-11 11:30:23','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3a8ed0105a3b4137b','User Management','User Management','25','ff80808105a3a8ed0105a3b185a9','id',1,1,'1','2005-08-11 11:22:37','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3b96f0105a3ba792c','Content Manager','Content Manager','25','0','id',1,1,'1','2005-08-11 11:30:28','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3b96f0105a3bdf32c','Workflow Designer','Workflow Designer','25','0','id',1,1,'1','2005-08-11 11:30:31','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('ff80808105a3b96f0105a3c09bab','Wizard','Wizard','25','0','id',0,1,'1','2005-08-11 11:30:33','','0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685'),('0','Master','Master',NULL,NULL,'id',1,1,NULL,'2005-08-11 11:39:28',NULL,'0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3db794e','User Manager Ver.2.0','User Manager Ver.2.0','F76A9583B418F4FB3D261C1D53','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:45:33','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3e1e581','Company','Company','F332B5D5577E444B78297AFE84','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:52:34','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3e418bd','Job Position','Job Position','F2E587923AC44C8979FBF2F26C','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:54:59','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3e67dfa','Client Survey','Client Survey','EFE457F0C2A80EC35CC399876D','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 11:57:35','1','2005-08-11 12:03:01','ic',NULL),('ff80808105a3b96f0105a3e9fb88','User Site','User Site','EE8C6A49BC200D77F9DD3F92AA','ff80808105a3a8ed0105a3b4137b','id',1,1,'1','2005-08-11 12:01:24','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3ed9a0a','Backend User ACL','Backend User ACL','E8D0C5535B234E62585FD6F09D','ff80808105a3a8ed0105a3b4137b','id',0,1,'1','2005-08-11 12:05:21','1','2005-08-11 12:08:56','ic',NULL),('ff80808105a3b96f0105a3ef0442','User Role','User Role','14','ff80808105a3a8ed0105a3b4137b','name',1,1,'1','2005-08-11 12:06:54','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a3f0abbd','Backend User','Backend User','13','ff80808105a3a8ed0105a3b4137b','first_name',1,1,'1','2005-08-11 12:08:43','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a402cfe0','Multi Site','Multi Site','2','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:28:31','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a403f9f1','Module Manager','Module Manager','25','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:29:48','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a40633a1','Global Parameter','Global Parameter','ED2EE26B3A598A0761F1E1C84B','ff80808105a3a8ed0105a3b185a9','id',0,1,'1','2005-08-11 12:32:14','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4083f82','Descriptor Manager','Descriptor Manager','1','ff80808105a3a8ed0105a3b185a9','description',0,1,'1','2005-08-11 12:34:28','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a40b7e1b','Site','Site','2','ff80808105a3b96f0105a402cfe0','id',0,1,'1','2005-08-11 12:38:00','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a40cbd7c','OSML','OSML','E8D32766091238C92EFF1BA529','ff80808105a3b96f0105a402cfe0','description',1,1,'1','2005-08-11 12:39:22','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a41d0113','Role Site Privilage','Role Site Privilage','EF1F0CD62F63F3B0A7205D5BC4','ff80808105a3b96f0105a403f9f1','id',1,1,'1','2005-08-11 12:57:08','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a41e79a7','Role Manager','Role Manager','EEB49F22144357635AD6A684B6','ff80808105a3b96f0105a403f9f1','id',1,1,'1','2005-08-11 12:58:44','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4206208','User Site','User Site','EE187CB92554E9877310D9041D','ff80808105a3b96f0105a403f9f1','id',0,1,'1','2005-08-11 13:00:49','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a42496b5','Assign OSML to Site','Assign OSML to Site','E8D4B8FCEB555B9D2AD8D143F6','ff80808105a3b96f0105a403f9f1','id',0,1,'1','2005-08-11 13:05:25','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a426ac13','Role Privilage','Role Privilage','32','ff80808105a3b96f0105a403f9f1','role_id',0,1,'1','2005-08-11 13:07:42','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4279ca8','Module Function','Module Function','31','ff80808105a3b96f0105a403f9f1','description',0,1,'1','2005-08-11 13:08:43','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a42cc3a5','Descriptor Group','Descriptor Group','EACA4B7F9596396050B73AB5EF','ff80808105a3b96f0105a4083f82','id',0,1,'1','2005-08-11 13:14:21','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4306a45','Descriptor to Workflow','Descriptor to Workflow','E8D4A7375EAF7B953F36C71292','ff80808105a3b96f0105a4083f82','description',1,1,'1','2005-08-11 13:18:20','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a431a20c','Descriptor','Descriptor','1','ff80808105a3b96f0105a4083f82','description',0,1,'1','2005-08-11 13:19:40','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43279d2','Category','Category','6','ff80808105a3b96f0105a4083f82','description',0,1,'1','2005-08-11 13:20:35','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43388fd','Section','Section','7','ff80808105a3b96f0105a4083f82','description',0,1,'1','2005-08-11 13:21:45','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43cacec','Theme Management','Theme Management','25','ff80808105a3b96f0105a3ba792c','id',0,1,'1','2005-08-11 13:31:44','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43df897','Collection Descriptor','Collection Descriptor','EE399186B35C580610D4EDD7A3','ff80808105a3b96f0105a3ba792c','id',0,1,'1','2005-08-11 13:33:09','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43ef71d','Category','Category','6','ff80808105a3b96f0105a3ba792c','description',0,1,'1','2005-08-11 13:34:14','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a43fb0f4','Section','Section','7','ff80808105a3b96f0105a3ba792c','description',0,1,'1','2005-08-11 13:35:01','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4432933','Skin','Skin','EED88F7EFBC8DFF1C5A048C73D','ff80808105a3b96f0105a43cacec','id',1,1,'1','2005-08-11 13:38:49','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4442643','Theme','Theme','EE39DC68885D4E61299258E68D','ff80808105a3b96f0105a43cacec','id',1,1,'1','2005-08-11 13:39:53','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4450f7b','Template Object Detail','Template Object Detail','EE39EDFFA5C0438D014F92A9A3','ff80808105a3b96f0105a43cacec','id',0,1,'1','2005-08-11 13:40:53','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4461c54','Template Object','Template Object','EE39EDBA36471BA27231DAFF78','ff80808105a3b96f0105a43cacec','id',0,1,'1','2005-08-11 13:42:02','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a447249e','Template','Template','22','ff80808105a3b96f0105a43cacec','name',0,1,'1','2005-08-11 13:43:10','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a44ad16f','WF History','WF History','E8F706107AAD19C157222E67C9','ff80808105a3b96f0105a3bdf32c','id',0,1,'1','2005-08-11 13:47:10','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a44c1b35','OSML','OSML','E8D32766091238C92EFF1BA529','ff80808105a3b96f0105a3bdf32c','id',0,1,'1','2005-08-11 13:48:35','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a44cfd80','WF Hierarchy','WF Hierarchy','E8F8A0871FE7869F292A6CF810','ff80808105a3b96f0105a3bdf32c','id',0,1,'1','2005-08-11 13:49:33','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a44f0fe9','WF Activity Status','WF Activity Status','18','ff80808105a3b96f0105a3bdf32c','description',1,1,'1','2005-08-11 13:51:49','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a44fee3e','WF Action Status','WF Action Status','17','ff80808105a3b96f0105a3bdf32c','description',1,1,'1','2005-08-11 13:52:46','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a451002d','WF Role','WF Role','14','ff80808105a3b96f0105a3bdf32c','name',1,1,'1','2005-08-11 13:53:56','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a4547a92','Wizard-','Wizard','EAD2D1C50028FD5258593CE983','ff80808105a3b96f0105a3c09bab','wiz_name',1,1,'1','2005-08-11 13:57:44','','0000-00-00 00:00:00','ic',NULL),('ff80808105a3b96f0105a45560c6','Wizard Steps','Wizard Steps','EAD2D1FB743D69F352E4779C1','ff80808105a3b96f0105a3c09bab','name',0,1,'1','2005-08-11 13:58:43','','0000-00-00 00:00:00','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `module_function` ENABLE KEYS */;

--
-- Table structure for table `module_function1`
--

DROP TABLE IF EXISTS `module_function1`;
CREATE TABLE `module_function1` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) default NULL,
  `descriptor_id` varchar(28) default NULL,
  `iparent` varchar(28) default '0',
  `ref_desc` varchar(255) default 'id',
  `viewall_flag` int(11) default '0',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `status_id` char(2) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `iparent_4` (`iparent`),
  KEY `iparent` (`iparent`),
  KEY `descriptor_id` (`descriptor_id`),
  KEY `descriptor_id_2` (`descriptor_id`),
  KEY `descriptor_id_3` (`descriptor_id`),
  KEY `descriptor_id_4` (`descriptor_id`),
  KEY `iparent_2` (`iparent`),
  KEY `iparent_3` (`iparent`),
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
-- Dumping data for table `module_function1`
--


/*!40000 ALTER TABLE `module_function1` DISABLE KEYS */;
LOCK TABLES `module_function1` WRITE;
INSERT INTO `module_function1` VALUES ('ff808081059a2c9d01059a2d3c76','vavava','aaa','EF76BA4ED5D8F2A21B1933A750',NULL,'sasa',1,0,'1','2005-08-09 14:38:40','1','2005-08-09 15:17:24','ic',NULL),('ff808081059a343d01059a349e7e','ffffff','ffff','25',NULL,'dsds',1,0,'1','2005-08-09 14:46:43','1','2005-08-09 15:17:42','ic',NULL),('ff808081059a398201059a3b9db3','ddddd','dd','E7A77820F8D3EEB61E12EF7DD5','ff808081059a343d01059a349e7e','dd',1,0,'1','2005-08-09 14:54:22','','1970-01-01 07:00:00','ic',NULL),('ff808081059ecf7601059ed042e9','sssss','sdadas','ff80808105857360010585bf3f3a','ff808081059a343d01059a349e7e','',1,0,'1','2005-08-10 12:15:13','1','2005-08-10 12:15:52','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `module_function1` ENABLE KEYS */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` varchar(28) NOT NULL default '',
  `display_style` varchar(20) default NULL,
  `source` varchar(50) default NULL,
  `file_name` varchar(50) default NULL,
  `path` varchar(50) default NULL,
  `headline` varchar(128) default NULL,
  `subheadline` varchar(128) default NULL,
  `abstract` text,
  `body` text,
  `linktext` varchar(50) default NULL,
  `byline` varchar(50) default NULL,
  `creditline` varchar(50) default NULL,
  `copyright` varchar(50) default NULL,
  `editor_notes` text,
  `keywords` varchar(128) default NULL,
  `transmitted_date_time` datetime default NULL,
  `news_topic_id` varchar(50) default NULL,
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `transmitted_date_time` (`transmitted_date_time`),
  KEY `transmitted_date_time_2` (`transmitted_date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--


/*!40000 ALTER TABLE `news` DISABLE KEYS */;
LOCK TABLES `news` WRITE;
INSERT INTO `news` VALUES ('F53FDA1554D697E975ED986297',NULL,NULL,NULL,NULL,'Guerilla Innovation Initiative','Our newest initiative at www.guerilla-forum.org','We invite you to review our newest initiative at www.guerilla-forum.org.\r\nGuerilla an interactive multimedia marketing communication services.\r\n','We invite you to review our newest initiative at www.guerilla-forum.org.\r\nGuerilla an interactive multimedia marketing communication services. \' \" \' \'\'\"\r\n',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2004-04-23 10:31:19','F36F8BFFF97F8A1','2004-04-23 10:31:19','E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6'),('F620E137CCE6CF74A3B7F42269',NULL,NULL,NULL,NULL,'Pentagon Kembangkan Sistem yang Mengancam Privasi Orang','','Amerika Serikat (AS) dikenal sebagai negara yang mengagungkan privasi. Namun ternyata pemerintah AS, melalui Pentagon, sedang mengembangkan sistem pengawasan kota yang mengancam privasi atau kebebasan pribadi warganya.','<b>detikcom - Jakarta,</b> Amerika Serikat (AS) dikenal sebagai negara yang mengagungkan privasi. Namun ternyata pemerintah AS, melalui Pentagon, sedang mengembangkan sistem pengawasan kota yang mengancam privasi atau kebebasan pribadi warganya.<P>\r\nSistem yang sedang dikembang Pentagon ini akan menggunakan komputer dan ribuan kamera untuk melacak, merekam dan menganalisa setiap gerakan kendaraan di kota-kota yang ada di luar negeri. Sistem yang dijuluki \"daerah pertempuran yang dapat melihat\" ini dirancang untuk membantu militer AS melindungi pasukannya dan memerangi kota-kota di luar negeri.<P>\r\nPolisi, ilmuwan, dan para ahli privasi mengatakan teknologi yang membuka segala rahasia ini dapat dengan mudah diterapkan untuk memata-matai orang Amerika. <P>\r\n\"Pemerintah akan dengan mudah mengetahui keberadaan orang-orang setiap waktu,\" kata John Pike, seorang analis pertahanan seperti dikutip <i>Associated Press</i>, Rabu (2/7/2003). <P>\r\nBagian terpenting dalam proyek ini adalah mencari perangkat lunak komputer yang dapat mengidentifikasi kendaraan berdasarkan ukuran, warna, bentuk dan nomor polisi, atau pengemudi maupun penumpang melalui wajahnya dengan mudah.<P>\r\nPerangkat lunak itu juga harus dilengkapi dengan peringatan langsung setelah mendeteksi kendaraan dengan nomor polisi yang ada di daftar pengawasan, atau melacak rekaman untuk mencari dan membandingkan kendaraan yang terlihat di dekat tempat teroris beraktifitas.<P>\r\nProyek ini berada di bawah pengawasan Defense Advanced Research Projects Agency (DARPA) yang membantu Pentagon mengembangkan teknologi untuk membasmi terorisme. <P>\r\nProyek DARPA lainnya termasuk mengembangkan perangkat lunak yang mampu mengamati kumpulan data transaksi dan data pribadi setiap harinya untuk memprediksikan serangan teroris dan menciptakan catatan yang terkomputerisasi. Catatan itu akan merekam dan menganalisa seglsla sesuatu yang diucapkan, dilihat, didengar, baca atau sentuh oleh seseorang.<P>\r\nIlmuwan dan ahli privasi yang telah melihat teknologi pengenal muka di Super Bowl dan monitoring camera di London khawatir akan imbas dari teknologi DARPA jika nantinya diaplikasikan pada rakyat sipil atau agen pemerintah di luar Pentagon.<p>\r\n								',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'F162B448063A847319E641EF7D','2003-07-02 09:45:12',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F540069CA7D1D0B25F26AAFEE6',NULL,NULL,NULL,NULL,'What is Guerilla Innovation?','Rebranding Your Corporation','Guerilla is an initiative, a tool that can help a company to increase brand equity and make a close relationship with your customer using a reflection of brand. Guerilla is designed and developed as a brand extension that is built with innovation and creativity. Guerilla is a living memory.','<b>Overview</b><br>\r\nPromotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.\r\n<p>\r\nWe all know that economic times are tougher than they were just years ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. \r\n<p>\r\n\r\nBefore you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. To learn how your competitors get marketing messages across, consult trade journals. Their advertising will show you which features they are focusing on. Learning about your target customer will help prevent wasting your money and time on unproductive promotional activities. \r\n<p>\r\n\r\nOne of marketing program is to build a brand equity. Increase brand equity that has a personality of its own, by communicating it gradually builds up character. Let us help you to build brands with innovation. Remember, product are mute; the brand is what gives them meaning and purpose, telling us how a product should be read.\r\n<p>\r\n\r\nThe spirit of a brand can be inferred through its products and it is advertising. The content of a brand grows out of the cumulative memory of these acts, provided they are governed by a unifying idea or guidelines. There must be an accumulation, not mere juxtaposition. The importance of memory in the making of a brand explains why its image can vary between generations.\r\n<p>\r\n\r\nToday, in the new real business, company need not only a brand campaign, promotion but a customer oriented solution. But, what kind of customer oriented program do you need? A good customer services? A well-designed website? A Wireless Solution? A Distributed Infrastructure? A extra expensive CRM (Customer Relationship Management) application? An E-Business Suite? Or just a luck?\r\n<p>\r\n\r\nWe need all, if we can. We need to integrate the complex e-business application with your brand. But how? Yes, You',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-19 17:46:50',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6'),('F9886736A93CF4E3C74AD9A32E',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-12-18 15:15:26',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F4DD64134EC050E3D0A256EA0D');
UNLOCK TABLES;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;

--
-- Table structure for table `news_detail`
--

DROP TABLE IF EXISTS `news_detail`;
CREATE TABLE `news_detail` (
  `id` varchar(28) NOT NULL default '',
  `news_id` varchar(28) default NULL,
  `name` varchar(30) NOT NULL default '',
  `description` varchar(50) NOT NULL default '',
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `url_image3` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_detail`
--


/*!40000 ALTER TABLE `news_detail` DISABLE KEYS */;
LOCK TABLES `news_detail` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `news_detail` ENABLE KEYS */;

--
-- Table structure for table `news_portal`
--

DROP TABLE IF EXISTS `news_portal`;
CREATE TABLE `news_portal` (
  `id` varchar(28) NOT NULL default '',
  `display_style` varchar(20) default NULL,
  `source` varchar(50) default NULL,
  `file_name` varchar(50) default NULL,
  `path` varchar(50) default NULL,
  `headline` varchar(128) default NULL,
  `subheadline` varchar(128) default NULL,
  `abstract` text,
  `body` text,
  `linktext` varchar(50) default NULL,
  `byline` varchar(50) default NULL,
  `creditline` varchar(50) default NULL,
  `copyright` varchar(50) default NULL,
  `editor_notes` text,
  `keywords` varchar(128) default NULL,
  `transmitted_date_time` datetime default NULL,
  `news_topic_id` varchar(50) default NULL,
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `transmitted_date_time` (`transmitted_date_time`),
  KEY `transmitted_date_time_2` (`transmitted_date_time`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_portal`
--


/*!40000 ALTER TABLE `news_portal` DISABLE KEYS */;
LOCK TABLES `news_portal` WRITE;
INSERT INTO `news_portal` VALUES ('F3C7E50F04BFE0CBB83E2097BC',NULL,NULL,NULL,NULL,'ter','fsdafasfas','fasdfasfasddfasfas','dfasfasfsafsafd',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00',NULL,NULL,'',NULL,NULL,'F162B448063A847319E641EF7D','2003-03-13 16:35:09','F162B448063A847','2003-03-13 16:35:09','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3DB45E9A794540762872174E3',NULL,NULL,NULL,NULL,'test News Portal','test headline','testttt...ttsessstt','dkjflkasjflskjflskajfsakfjdasljk',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00',NULL,NULL,'F3DB5648E061E594B3ABED171dreamonme_main.gif',NULL,NULL,'F162B448063A847319E641EF7D','2003-03-11 11:28:37','F162B448063A847','2003-03-11 11:28:37','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F404793169570860A9F5DC8789',NULL,NULL,NULL,NULL,'testing','mo coba data','<DIV></DIV>&gt;Kadang seorang pria bertingkah aneh seakan ingin menjauh dari \r\nanda. Padahal, sebenernya justru dia ingin menambatkan hatinya. Ada beberapa \r\ntingkah aneh yang dilakukan oleh pria : \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 1 \r\n<DIV></DIV>&gt;Ia Mengajak Anda Kumpul Bersama Gank-nya. \r\n<DIV></DIV>&gt;DUGAAN ANDA: Dia ingin menunjukkan bahwa teman baginya adalah \r\nnomor satu. \r\n<DIV></DIV>','<DIV>KETIKA DIA SIAP TERIKAT \r\n<DIV></DIV>\r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Kadang seorang pria bertingkah aneh seakan ingin menjauh dari \r\nanda. Padahal, sebenernya justru dia ingin menambatkan hatinya. Ada beberapa \r\ntingkah aneh yang dilakukan oleh pria : \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 1 \r\n<DIV></DIV>&gt;Ia Mengajak Anda Kumpul Bersama Gank-nya. \r\n<DIV></DIV>&gt;DUGAAN ANDA: Dia ingin menunjukkan bahwa teman baginya adalah \r\nnomor satu. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Pertemuan bagi kaum pria memang sangat berarti. \r\nMaka, ketika dia membuka pintu dunia gank-nya untuk anda masuki,bisa diartikan \r\nia ingin mulai menganggap penting kehadiran anada. Pokoknya,pria baru merasa \r\nperlu memperkenalkan sobat dekatnya kepada seorang perempuan,bila dia ingin \r\nmenjalin hubungan lebih serius.Dan tentu saja,ia ingin melihat dulu bisakah anda \r\ndan sobat2nya berteman akrab. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 2 \r\n<DIV></DIV>&gt;Tiba-tiba Pergi Berlibur Dengan Teman-temannya \r\n<DIV></DIV>&gt;DUGAAN ANDA: Dia ingin senang-senag dengan teman2nya sambil main \r\nmata dengan para perempuan di tempat liburan. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Ketika seorang pria sedang mengupayakan merebut \r\nhati seorang wanita, kerap kali kekuatiran akan ditolak muncul dalam dirinya. \r\nSelama ini dia menganggap bahwa dunia bergerak mengikuti dirinya.Bayangan kalau \r\nanda akan menjadi pusat perhatiannya,akan sedikit mengganggu.Jadi walaupun \r\nserius, ia harus tetap membuktikan pada dirinya sendiri kalau ia tidak akan \r\nkehilangan anda.Pergi liburan bersama gank,merupakan cara terakhir si<SPAN \r\nclass=550161202-26022003><FONT face=Arial>&nbsp;</FONT></SPAN>dia<SPAN \r\nclass=550161202-26022003><FONT face=Arial>&nbsp;</FONT><FONT \r\nface=\"Times New Roman\">m</FONT></SPAN>endeklarasikan&nbsp;kemerdekaannya.Padahal,terus \r\nterang saja,ia lebih senang menghabiskan waktu bersama anda,daripada \r\nberhura-hura. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah naeh 3 \r\n<DIV></DIV>&gt;Tak Lagi Bersikap Romantis \r\n<DIV></DIV>&gt;DUGAAN ANDA: Ia berhenti bersikap romantis,karena sudah tak \r\npeduli. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Di awal perkenalan atau pacaran,si dia ngajak \r\nanda kerestoran mahal untuk membuat anda terpesona.Karena tak percaya ada wanita \r\nyang menyukai mereka karena kepribadian semata. Betul juga,karena pergi berdua \r\ndan tanpa tau sedikitpun tentang diri masing2,biasanya bikin kikuk. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 4 \r\n<DIV></DIV>&gt;Sering Adu Argumentasi \r\n<DIV></DIV>&gt;DUGAAN ANDA: Biasanya pria berbuat apa saja untuk menghindari \r\npertengkaran. Tapi kini ia lebih sering ngotot dengan pendapatnya. Mungkinkah si \r\ndia ingin bubaran? \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Anda tidak sepenuhnya salah. Kebanyakan pria \r\npasti ingin melakukan apa saja agar tidak terlibat dalam pertengkarandengan \r\nkekasihnya. Namun,ketika lelaki sudah berpikir akan meninggalkan kehidupan \r\nlajangnya,ia ingin sepenuhnya yakin,kalau ia tidak berada dalam genggaman sang \r\npacar. Membuat anda kesal adalah cra si dia menguji,apakah anda siapmental \r\nmenghabiskan waktu bersamanya nanti. Juga agar ia pasti,kalau hal ini tidak akan \r\nmembuat hubungan anda berdua berantakan. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 5 \r\n<DIV></DIV>&gt;Ia Berkata Tak Akan Menikah \r\n<DIV></DIV>&gt;DUGAAN ANDA: Ia bilang begitu karena tidak mau menikahi anda. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Ini merupakan kontradiksi yang paling sering \r\ndilakukan oleh pria. Jangan lupa,pria adalah mahluk yang paling payah dalam \r\nberkomunikasi. Mereka tak dapat mengucapkan kata kata yang dimaksud dengan \r\n<DIV></DIV>&gt;begitu saja,melainkan dibungkus dalam humor. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 6 \r\n<DIV></DIV>&gt;Ia Mengajak Anda ketempa-tempat\"Aneh\" \r\n<DIV></DIV>&gt;DUGAAN ANDA: Si dia sengaja membuat anda kesal,dengan mengajak ke \r\ntempat-tempat yang tak anda sukai. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Jangan kesal dulu jika si dia minta ditemani ke \r\ntempat yang lebih banyak dikunjungi laki-laki,seperti toko komputer,bengkel,toko \r\nperkakas rumah,atau toko hobi.Memang,kalau anda tak suka diajak berputa-putar \r\nkeliling pasar genteng untuk nyari alat elektronik.Namun,sebenarnya ini adalah \r\ntanda yang menyenangkan dari si dia untuk anda. Dengan mengajak anda ke \r\nbengkel,ia ingin menunjukkan pada anda bahwa ini adalah kegiatan yang ia sukai \r\ndan biasa dilakukan olehnya. Dan ia berusaha membuat anda tertarik juga,hingga \r\nakhirnya mau menerima hal yang disukainya sama seperti dia menyenangi anda. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Ini adalah tips yang didapat oleh seorang remaja pria setelah \r\nintrospeksinya selama kurang lebih 1,5 tahun.Dan dengan tips ini diharapkan akan \r\ntercipta<SPAN class=550161202-26022003><FONT face=Arial>&nbsp; \r\n&nbsp;</FONT></SPAN>hubungan yang lebih baik karena perlu pemahaman terhadap \r\norang terdekat di hati anda baik hubungan yang sudah lama atau baru. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Kirimlah tips ini kepada teman-teman perempuanmu agar tercipta \r\ndunia yang penuh dengan cinta. GOOD LUCK. \r\n<DIV></DIV></DIV>',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'F40ADBBE5C615DFF8259E4EB2image01.jpg','F40ADBBEB99D2D0CF4B7127D9image02.jpg','','F40ADBBEC98B90464354F55D7image06.jpg','F162B448063A847319E641EF7D','2003-03-20 17:10:07','F162B448063A847','2003-03-20 17:10:07','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F42D89A4DA4678CEC153C10DF1',NULL,NULL,NULL,NULL,'Pakar Militer Mesir: AS Keliru Prediksi Kekuatan Irak','Subheadline : Pakar Militer Mesir: AS Keliru Prediksi Kekuatan Irak','detikcom - Jakarta, Perang memasuki hari ke-5. Koalisi kerap mengklaim kemenangan dan penguasaan sejumlah wilayah. Irak selalu membantah klaim itu. Dan bantahan tersebut dibenarkan oleh pakar militer Mesir. AS salah prediksi soal kekuatan Irak.\r\n\r\n','detikcom - Jakarta, Perang memasuki hari ke-5. Koalisi kerap mengklaim kemenangan dan penguasaan sejumlah wilayah. Irak selalu membantah klaim itu. Dan bantahan tersebut dibenarkan oleh pakar militer Mesir. AS salah prediksi soal kekuatan Irak.\r\n\r\nDemikiann disampaikan Zakariya Hussein pakar militer Mesir yang juga Direktur Akademi Militer Nasser di Cairo, Mesir seperti dilansir Islamonline, Senin (24/3/2003).\r\n\r\nMenurut Hussein, AS dan Inggris memang telah mengerahkan kekuatan perang yang besar. Tapi hingga saat ini, hasilnya masih nihil. Pernyataan pihak koalisi, bahwa pihak akan segera mencapai dan menguasai Baghdad, juga diragukan oleh Huseein.\r\n\r\nTentang klaim pasukan AS bahwa mereka telah memasuki wilayah Irak dari sisi selatan Kuwait sepanjang 100 mil, ke arah Baghdad, menurut Hussein ini bukan kisah sukses. Karena wilayah itu merupakan wilayah kosong yang tak ditempati pasukan Irak. Ini merupakan wilayah larangan di selatan, tutur Hussein. \r\n\r\nSelain itu, pasukan AS dan Inggris juga sudah melakukan serangan ke wilayah-wilayah tersebut sebelum dimulainya aksi penyerangan pada hari pertama. Ini dilakukan untuk meyakinkan mereka bahwa wilayah ini memang wilayah aman, katanya. \r\n\r\nHusein mennyebut dua alasan, kenapa hingga kini AS, Inggris dan sekutunya belum berhasil menguasai Irak sebagaimana yang mereka gembar-gemborkan sebelumnya.\r\n\r\nPertama, AS salah duga soal dukungan rakyat Irak. Sebelumnya, AS yakin begitu mereka melakukan gempuran pada hari pertama, maka rakyat pendukung Saddam akan berbalik mendukung mereka dan ikut menggulingkan Saddam. Dugaan itu ternyata sama sekali tidak terbukti, tegas Hussein. \r\n\r\nKedua, AS dan Inggris sempat menyatakan, pihaknya ingin mengajukan lebih dari 300 pimpinan Irak ke pengadilan internasional sebagai kriminal perang, jika mereka tidak terbunuh dalam peperangan. Pengumuman ini, justru memicu semangat baru pasukan Saddam yang menganggap perang melawan AS adalah soal hidup atau mati, kata Hussein. \r\n\r\nMenurut Hussein kegagalan pasukan AS juga dilatarbelakangi oleh kekeliruannya menilai rakyat Irak. Rakyat Irak, ternyata, telah melakukan pengkaderan dan pelatihan militer secara baik untuk menghadapi perang udara dan darat sejak 1991, pasca perang Teluk II.\r\n\r\nHussein yang mendapat gelar profesor dalam bidang Strategi Sains di Cairo itu melanjutkan, bahwa keberhasilan penyerangan ada pada penguasaan kota-kota inti di Irak. Dan hal itu yang hingga kini belum terjadi. \r\n\r\nAS, katanya, belum berhasil sepenuhnya menguasai kota kecil seperti Umm Qashr dan semenanjung Faw. Perlawanan rakyat Irak di Nashirah, Mousal, Baghdad dan Basra juga mengejutkan dunia dalam peperangan ini. \r\n\r\nPasukan koalisi sudah mengerahkan kekuatan perang yang besar sejak saat pertempuran pertama. Basra juga sudah dikepung selama tiga hari. Tapi, menurut Hussein hingga kini kota itu belum berhasil ditundukkan. Demikian juga Baghdad dan Umm Qashr yang terus menerus dibombardir oleh pasukan udara AS, tapi belum ada hasil apapun yang menunjukkan pasukan koalisi menguasai kota itu. \r\n\r\n',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'F42D8AE122C8A28BD67945AEEFagree.gif','F42D8AE132C9007AA42B50F4F0angry1.gif','F42D8AE142C7E6AE39152F22EEangry2.gif','F42D8AE142C7E6AE39152F22EEbuble_gum.gif','F162B448063A847319E641EF7D','2003-03-27 10:34:56',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `news_portal` ENABLE KEYS */;

--
-- Table structure for table `notulen`
--

DROP TABLE IF EXISTS `notulen`;
CREATE TABLE `notulen` (
  `id` varchar(28) NOT NULL default '',
  `company_group_name` varchar(100) default NULL,
  `company_name` varchar(100) default NULL,
  `report_title` varchar(100) default NULL,
  `report_subtitle` varchar(100) default NULL,
  `day` varchar(100) default NULL,
  `date` varchar(100) default NULL,
  `time` varchar(100) default NULL,
  `place` varchar(100) default NULL,
  `subject` varchar(100) default NULL,
  `members` text,
  `report` text,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notulen`
--


/*!40000 ALTER TABLE `notulen` DISABLE KEYS */;
LOCK TABLES `notulen` WRITE;
INSERT INTO `notulen` VALUES ('F9634C53B5390C13ECE672B332','Matahari Kahuripan','PT Katingan Indah Utama Unit Santilik','Notulen Presentasi','Rapat Koordinasi Bulan','Senin\r\n\r\n\r\n\r\n\r\n','07-DEC-2003','12:30','Ruang Rapat I Gedung A','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','1. Frans\r\n2. Thamura\r\n3. Domonikus\r\n\r\n\r\n\r\n\r\n','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie dolor et diam. Vestibulum non velit. In dolor magna, hendrerit quis, tincidunt nec, euismod vel, mauris. Vestibulum dolor nisl, interdum ac, venenatis in, vehicula sit amet, nisl. Maecenas leo quam, lobortis vitae, scelerisque quis, elementum consectetuer, lectus. Ut lobortis, lorem eget hendrerit sagittis, lectus sem vehicula mi, id imperdiet diam ligula et mi. Praesent sit amet turpis. Aenean vitae ipsum consectetuer turpis pretium rutrum. Nam tellus lacus, lobortis eget, sodales quis, ultrices sed, eros. Duis lorem felis, gravida vitae, placerat a, semper a, orci. Nam massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis in metus sed lorem sagittis bibendum. Morbi interdum magna a enim. Ut sollicitudin tempus est. Morbi risus. Praesent cursus orci ac sapien. Suspendisse potenti. Cras diam dui, dignissim sed, convallis nec, elementum et, quam. Nam ac est et turpis euismod lobortis. \r\n\r\nNullam eleifend dui et wisi. Nulla dolor est, feugiat vitae, dapibus eget, sagittis vitae, est. In accumsan lacinia justo. Proin lacus massa, molestie sit amet, facilisis molestie, volutpat non, risus. Curabitur sagittis tincidunt magna. In non lectus. Donec consequat, erat in dapibus facilisis, ante lacus venenatis lectus, eget semper risus elit non pede. Praesent fermentum, massa vitae ultrices imperdiet, lacus urna semper sem, eu consequat turpis purus eu arcu. Proin arcu augue, faucibus nec, aliquam vitae, aliquet in, lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec ultrices egestas tortor. Quisque lobortis libero eu dolor. Sed ligula risus, ultrices ut, facilisis eget, tristique ac, lacus. \r\n\r\nNunc pede. Donec molestie, risus eget facilisis ornare, eros pede egestas felis, sit amet eleifend augue neque nec magna. Donec at augue. Suspendisse ullamcorper diam nec nisl. Sed eget pede. Vestibulum mattis urna quis elit. Integer ac velit eget lorem viverra interdum. Mauris dolor tellus, ornare ac, consectetuer a, molestie sit amet, sapien. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc neque. Phasellus imperdiet diam vitae mi. \r\n\r\nDonec at lorem ac justo tristique eleifend. Pellentesque ligula diam, pulvinar sit amet, dictum ut, rutrum ut, orci. Sed tellus nisl, ultrices eu, ullamcorper in, malesuada placerat, pede. Vestibulum est. Etiam facilisis. Morbi enim velit, malesuada ac, laoreet ac, cursus ac, enim. Pellentesque iaculis pellentesque justo. Aliquam pharetra. Donec eget velit ut odio sollicitudin venenatis. Proin vestibulum mi vel ipsum. Suspendisse at sapien sed nisl auctor condimentum. Sed quis nisl sit amet magna malesuada ullamcorper. \r\n\r\nNam in enim sodales augue iaculis tincidunt. Duis mauris est, gravida nec, pellentesque non, sagittis eget, nulla. Cras enim neque, feugiat eu, convallis eget, pulvinar ac, urna. Aenean cursus viverra purus. Aenean lacinia malesuada enim. Etiam mauris. Suspendisse ullamcorper tortor id sem. Etiam erat dolor, lacinia vel, molestie id, scelerisque a, orci. Ut nunc metus, tempus vitae, semper quis, elementum in, tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris iaculis interdum mauris. Cras viverra. Fusce vestibulum, felis at suscipit venenatis, nisl enim eleifend quam, eu iaculis augue lorem at velit. Maecenas iaculis blandit quam. Maecenas porta lectus eu mi. Nullam quis odio. Sed ipsum nulla, hendrerit a, nonummy quis, scelerisque ac, massa. Suspendisse elit risus, consequat nec, congue eget, venenatis ac, est. \r\n\r\nNam in enim sodales augue iaculis tincidunt. Duis mauris est, gravida nec, pellentesque non, sagittis eget, nulla. Cras enim neque, feugiat eu, convallis eget, pulvinar ac, urna. Aenean cursus viverra purus. Aenean lacinia malesuada enim. Etiam mauris. Suspendisse ullamcorper tortor id sem. Etiam erat dolor, lacinia vel, molestie id, scelerisque a, orci. Ut nunc metus, tempus vitae, semper quis, elementum in, tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris iaculis interdum mauris. Cras viverra. Fusce vestibulum, felis at suscipit venenatis, nisl enim eleifend quam, eu iaculis augue lorem at velit. Maecenas iaculis blandit quam. Maecenas porta lectus eu mi. Nullam quis odio. Sed ipsum nulla, hendrerit a, nonummy quis, scelerisque ac, massa. Suspendisse elit risus, consequat nec, congue eget, venenatis ac, est. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie dolor et diam. Vestibulum non velit. In dolor magna, hendrerit quis, tincidunt nec, euismod vel, mauris. Vestibulum dolor nisl, interdum ac, venenatis in, vehicula sit amet, nisl. Maecenas leo quam, lobortis vitae, scelerisque quis, elementum consectetuer, lectus. Ut lobortis, lorem eget hendrerit sagittis, lectus sem vehicula mi, id imperdiet diam ligula et mi. Praesent sit amet turpis. Aenean vitae ipsum consectetuer turpis pretium rutrum. Nam tellus lacus, lobortis eget, sodales quis, ultrices sed, eros. Duis lorem felis, gravida vitae, placerat a, semper a, orci. Nam massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis in metus sed lorem sagittis bibendum. Morbi interdum magna a enim. Ut sollicitudin tempus est. Morbi risus. Praesent cursus orci ac sapien. Suspendisse potenti. Cras diam dui, dignissim sed, convallis nec, elementum et, quam. Nam ac est et turpis euismod lobortis. \r\n\r\nNullam eleifend dui et wisi. Nulla dolor est, feugiat vitae, dapibus eget, sagittis vitae, est. In accumsan lacinia justo. Proin lacus massa, molestie sit amet, facilisis molestie, volutpat non, risus. Curabitur sagittis tincidunt magna. In non lectus. Donec consequat, erat in dapibus facilisis, ante lacus venenatis lectus, eget semper risus elit non pede. Praesent fermentum, massa vitae ultrices imperdiet, lacus urna semper sem, eu consequat turpis purus eu arcu. Proin arcu augue, faucibus nec, aliquam vitae, aliquet in, lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec ultrices egestas tortor. Quisque lobortis libero eu dolor. Sed ligula risus, ultrices ut, facilisis eget, tristique ac, lacus. \r\n\r\nNunc pede. Donec molestie, risus eget facilisis ornare, eros pede egestas felis, sit amet eleifend augue neque nec magna. Donec at augue. Suspendisse ullamcorper diam nec nisl. Sed eget pede. Vestibulum mattis urna quis elit. Integer ac velit eget lorem viverra interdum. Mauris dolor tellus, ornare ac, consectetuer a, molestie sit amet, sapien. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc neque. Phasellus imperdiet diam vitae mi. \r\n\r\nDonec at lorem ac justo tristique eleifend. Pellentesque ligula diam, pulvinar sit amet, dictum ut, rutrum ut, orci. Sed tellus nisl, ultrices eu, ullamcorper in, malesuada placerat, pede. Vestibulum est. Etiam facilisis. Morbi enim velit, malesuada ac, laoreet ac, cursus ac, enim. Pellentesque iaculis pellentesque justo. Aliquam pharetra. Donec eget velit ut odio sollicitudin venenatis. Proin vestibulum mi vel ipsum. Suspendisse at sapien sed nisl auctor condimentum. Sed quis nisl sit amet magna malesuada ullamcorper. \r\n\r\nNam in enim sodales augue iaculis tincidunt. Duis mauris est, gravida nec, pellentesque non, sagittis eget, nulla. Cras enim neque, feugiat eu, convallis eget, pulvinar ac, urna. Aenean cursus viverra purus. Aenean lacinia malesuada enim. Etiam mauris. Suspendisse ullamcorper tortor id sem. Etiam erat dolor, lacinia vel, molestie id, scelerisque a, orci. Ut nunc metus, tempus vitae, semper quis, elementum in, tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris iaculis interdum mauris. Cras viverra. Fusce vestibulum, felis at suscipit venenatis, nisl enim eleifend quam, eu iaculis augue lorem at velit. Maecenas iaculis blandit quam. Maecenas porta lectus eu mi. Nullam quis odio. Sed ipsum nulla, hendrerit a, nonummy quis, scelerisque ac, massa. Suspendisse elit risus, consequat nec, congue eget, venenatis ac, est. \r\n\r\nNam in enim sodales augue iaculis tincidunt. Duis mauris est, gravida nec, pellentesque non, sagittis eget, nulla. Cras enim neque, feugiat eu, convallis eget, pulvinar ac, urna. Aenean cursus viverra purus. Aenean lacinia malesuada enim. Etiam mauris. Suspendisse ullamcorper tortor id sem. Etiam erat dolor, lacinia vel, molestie id, scelerisque a, orci. Ut nunc metus, tempus vitae, semper quis, elementum in, tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris iaculis interdum mauris. Cras viverra. Fusce vestibulum, felis at suscipit venenatis, nisl enim eleifend quam, eu iaculis augue lorem at velit. Maecenas iaculis blandit quam. Maecenas porta lectus eu mi. Nullam quis odio. Sed ipsum nulla, hendrerit a, nonummy quis, scelerisque ac, massa. Suspendisse elit risus, consequat nec, congue eget, venenatis ac, est. \r\n\r\n','F162B448063A847319E641EF7D','2003-12-15 16:31:25',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F963A06C9D176B93A9C3B41000','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Rapat','Rakor Bulan Desember 2003','Kamis\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','11-DEC-2003','13.00 - 15.00','Gedung III Ruang Rapat 1','Progress Project','1. Dedeng\r\n2. Meilani\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla urna augue, accumsan sed, eleifend non, hendrerit nec, velit. Donec elementum pretium dolor. Praesent et massa et velit interdum dignissim. Nulla pulvinar. Suspendisse a tellus. Duis et nulla ac nunc posuere aliquam. Morbi sagittis, velit nec malesuada semper, ante neque blandit augue, sed convallis risus nulla nec felis. Mauris facilisis eleifend lacus. Nulla wisi augue, pulvinar dictum, molestie nec, lacinia pulvinar, nunc. Morbi diam libero, euismod nec, aliquet eget, varius quis, ipsum. Etiam dictum ante eget orci. Ut nunc nunc, eleifend eu, feugiat eu, ultricies ac, enim. Sed nec mauris. Nunc arcu. \r\n\r\nSed pulvinar tortor et arcu. Suspendisse sit amet sapien eget pede elementum vulputate. Pellentesque a turpis eu arcu pharetra venenatis. Etiam nulla nulla, ullamcorper ac, convallis eu, tincidunt id, lacus. Morbi ut justo. Sed ut massa ut nibh vulputate rutrum. Proin in magna. Praesent dui nibh, tempor et, vestibulum sed, sodales eget, tortor. Vivamus a eros. Praesent eget erat. Maecenas feugiat. \r\n\r\nSed vitae risus eget est porttitor lacinia. Ut sed massa non massa rhoncus interdum. Phasellus erat nibh, aliquet vitae, luctus eget, tempor et, nulla. In at lectus id leo molestie molestie. Suspendisse potenti. Nullam lacinia wisi eu enim. Quisque et neque non dui fringilla dictum. Phasellus at erat. Quisque quam lorem, rutrum id, convallis eget, egestas et, arcu. Maecenas eget tortor. Sed sit amet orci. Curabitur quam tellus, dignissim quis, tristique quis, fermentum quis, quam. \r\n\r\nEtiam eget urna nec neque feugiat nonummy. Integer a ipsum. Vestibulum ac diam et libero consequat varius. Nulla facilisi. Praesent varius. Phasellus enim neque, condimentum in, ullamcorper quis, auctor sit amet, ante. Donec nisl ante, commodo et, volutpat id, ultrices ac, odio. Suspendisse massa odio, luctus ut, posuere id, tristique eget, diam. Vestibulum consequat. Donec nec orci. Aliquam erat volutpat. Aliquam erat volutpat. Praesent sit amet enim. Mauris porttitor molestie lorem. Nulla sed purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. \r\n\r\nNulla vestibulum urna quis mi. Curabitur eu mauris et enim tempus aliquet. Phasellus tempus. Nulla elementum, quam ut porttitor fringilla, nisl lorem semper nulla, malesuada porta quam augue a neque. Etiam sit amet purus. Aliquam eget augue ac magna facilisis vestibulum. Donec porttitor, purus at luctus eleifend, mi libero luctus lorem, ac scelerisque arcu felis at est. Sed dui dui, convallis eu, congue et, eleifend eu, urna. Sed non arcu. Suspendisse dignissim. Nulla massa dolor, egestas vitae, viverra ac, lobortis sed, metus. Etiam at est ut justo rhoncus commodo. Nam mi odio, euismod ut, cursus a, condimentum ac, arcu. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas at dui vel orci lacinia lobortis. Phasellus rhoncus aliquam turpis. Nam nonummy. Etiam molestie scelerisque nisl. \r\n\r\nNulla facilisi. Pellentesque risus magna, congue ut, gravida sed, ultrices nec, mauris. Nunc id tortor. Mauris adipiscing posuere lectus. Etiam posuere. Aenean porttitor. Pellentesque quis risus eget mi condimentum ultricies. Fusce sagittis, tortor et tincidunt fermentum, ligula mi pretium eros, ac hendrerit neque erat id tortor. Integer quis lacus at diam congue tempus. Phasellus eu eros id enim iaculis accumsan. Nam sit amet sem. Praesent fringilla luctus tellus. Nunc porttitor wisi eget ipsum. Suspendisse ut nulla quis sapien sodales volutpat. Fusce adipiscing arcu id odio. \r\n\r\nMauris iaculis. Nam non augue. Cras ac velit id elit laoreet tincidunt. Suspendisse potenti. Duis pellentesque lacus nec arcu. Cras iaculis fringilla nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut at wisi non eros iaculis porttitor. Ut facilisis eros ac libero. Praesent congue, lectus sed vulputate condimentum, justo orci consequat leo, sit amet nonummy odio sem sit amet arcu. Etiam tempus, neque ut feugiat ultricies, lacus justo tincidunt wisi, ac tempor ante nunc non sem. Pellentesque neque. Curabitur elementum viverra turpis. \r\n\r\nMorbi eleifend lorem et lacus. Donec mattis pulvinar leo. Fusce augue justo, eleifend et, tempus vel, auctor id, pede. In congue, tortor et suscipit fringilla, nulla libero bibendum magna, nec cursus sem urna vitae massa. Sed elementum condimentum arcu. Aliquam ac lectus a nibh congue mattis. Duis tempus. Sed malesuada vehicula ipsum. Suspendisse vestibulum. Duis ut turpis. Nunc vel leo sit amet arcu euismod pretium. \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','F36F8BFFF97F8A16505B8305F7','2004-01-26 11:09:04',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F964B6AC1074E889A440C5CFF','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-01-15 12:27:46',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA08B73F15CA1F551D35E90358','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','\r\n','12-JAN-2004','12:30 - 13.00','','ASDDDASD ASDD','qwqweeqwe\r\n<br>qweqwe\r\n<br>qwehweryety\r\n<br>dfggg\r\n<br>dfggnbvcn\r\n<br>ryesddgfg\r\n<br>\r\n','qwerqwerqwrv  qweewewqe\r\n','F36F8BFFF97F8A16505B8305F7','2004-01-14 17:15:57',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F9839B7F5D67617CC9DF8C837','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7','2003-12-17 16:54:46',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F99D875C4A457BEC110B83AB42','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Presentasi','Rapat Koordinasi','Rabu\r\n','22-DEC-2003','','','Testing Report','1. dedeng\r\n<br>2. umar\r\n','testing report\r\n','F36F8BFFF97F8A16505B8305F7','2004-01-15 14:17:30',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F9F9CA6AB83C5CD84D3C4EB85D','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Presentasi','Rapat Koordinasi','\r\n','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-01-15 10:41:14',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F9F9CF7142DC5BC54F2FB9C34E','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-01-09 15:46:21',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA13B24B75E47E2F327674BC5','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-01-14 16:24:38',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA13BB510732643EDA704C8A12','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','\r\n','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-01-15 12:34:36',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA13BDE3CAE53C3E870F6C7F41','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','\r\n','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-01-15 15:12:18',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA13C634D4A3128518ED888059','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-01-14 16:46:22',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1C711062690AA02729E06434','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Presentasi','Rapat Koordinasi','Jumat\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','16-JAN-2004','10.00 - 11.00','Ruang Rapat II Gedung Utama','Progress','1. Frans Thamura\r\n2. Wahyu Aris\r\n3. Umar Khatab\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','Proin mi. Suspendisse erat nunc, pellentesque quis, viverra ac, tincidunt ut, wisi. Donec nisl nisl, elementum suscipit, tristique vitae, fringilla at, ante. Donec erat tellus, blandit eget, rhoncus non, congue et, felis. Morbi auctor urna non pede. Mauris faucibus aliquam metus. Aenean quis erat. Vestibulum est nisl, tristique eu, rutrum in, euismod nec, mi. Ut nibh. Nullam fringilla nisl. Suspendisse sed arcu. Donec et lectus nec dui lobortis sagittis. Phasellus in lectus a lorem dictum pretium. Morbi nec mauris. Cras at mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \r\n\r\nVivamus ut nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Proin eleifend leo nec ipsum fermentum vehicula. Nulla vel est nec mi consectetuer commodo. Quisque vestibulum, libero eu venenatis tincidunt, orci eros consequat quam, in condimentum felis arcu nec libero. Nunc nulla. Integer feugiat lacus sed metus. Integer sapien mi, vestibulum sit amet, pulvinar a, egestas in, elit. Donec nulla leo, aliquet non, commodo eget, ornare vel, enim. Ut tristique felis a velit fermentum porttitor. Etiam interdum orci quis erat. \r\n\r\nMorbi sed wisi. Quisque nibh dolor, feugiat vel, aliquam eget, pharetra eget, eros. Donec quis sem eget massa sagittis consectetuer. Integer laoreet molestie neque. Etiam rutrum, purus ut euismod rutrum, felis augue interdum augue, ut tincidunt lacus ipsum non purus. Mauris eu nisl. Etiam eros tellus, scelerisque at, elementum sagittis, placerat at, lectus. Nunc eget est. Pellentesque ultricies, enim vel mollis nonummy, dolor tellus mattis dolor, nec consectetuer libero sem a nibh. Donec et justo. Nulla facilisi. Cras pellentesque velit non arcu. Proin elit. Fusce convallis convallis nunc. Phasellus vitae mi. Cras quis sapien. Proin placerat rhoncus orci. Cras ipsum massa, ultricies sed, vestibulum quis, imperdiet in, nibh. Nam porttitor arcu viverra ante. Duis id metus. \r\n\r\n\r\n','F36F8BFFF97F8A16505B8305F7','2004-03-15 11:35:44','F36F8BFFF97F8A1','2004-03-15 11:35:44','0','ic',NULL),('FA1DD0C210FD5329EC59D9425','Testing the most extreme Group','Company','Notulen Presentation','Report subtitle','Senin\r\n','15-JAN-2004','','','Meeting for Geek','Frans\r\nJohannes\r\nYosana\r\nSiska\r\n','Etiam lorem. Duis molestie aliquet urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque ut odio. Duis commodo rutrum arcu. Mauris congue pulvinar mauris. Cras eu turpis. Donec ut sem quis elit dapibus dapibus. Curabitur a purus nec pede mattis ullamcorper. Suspendisse lorem libero, ultricies ac, tempor eu, fringilla non, orci. Mauris sit amet nunc. Cras felis. Vivamus varius accumsan sapien. Mauris tristique malesuada mauris. Vivamus id urna luctus purus tristique consectetuer. Maecenas fringilla metus nec eros. Quisque vitae nisl sed augue tincidunt scelerisque. Fusce non neque at tortor congue tincidunt. Vestibulum sit amet augue non wisi mattis lacinia. Praesent eget est. \r\n\r\nCurabitur odio lectus, adipiscing sed, consequat vitae, rhoncus sit amet, quam. Aliquam tortor. Phasellus vel neque. Nulla quis nisl. Cras in diam eget libero volutpat imperdiet. Maecenas a nulla. Integer nisl. Aliquam condimentum lectus at wisi. Nam vel diam in purus dignissim sodales. Nullam auctor erat quis ipsum. \r\n\r\nQuisque eget nulla nec felis varius faucibus. Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. Fusce mattis malesuada pede. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. \r\n','F36F8BFFF97F8A16505B8305F7','2004-02-04 09:23:47',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E3B93B620423F82EAB94547','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','Senin\r\n\r\n\r\n\r\n','18-JAN-2004','09.00 - 10.00','Ruang Rapat II Gedung Utama','','','Proin mi. Suspendisse erat nunc, pellentesque quis, viverra ac, tincidunt ut, wisi. Donec nisl nisl, elementum suscipit, tristique vitae, fringilla at, ante. Donec erat tellus, blandit eget, rhoncus non, congue et, felis. Morbi auctor urna non pede. Mauris faucibus aliquam metus. Aenean quis erat. Vestibulum est nisl, tristique eu, rutrum in, euismod nec, mi. Ut nibh. Nullam fringilla nisl. Suspendisse sed arcu. Donec et lectus nec dui lobortis sagittis. Phasellus in lectus a lorem dictum pretium. Morbi nec mauris. Cras at mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \r\n<br>\r\n<br>Vivamus ut nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Proin eleifend leo nec ipsum fermentum vehicula. Nulla vel est nec mi consectetuer commodo. Quisque vestibulum, libero eu venenatis tincidunt, orci eros consequat quam, in condimentum felis arcu nec libero. Nunc nulla. Integer feugiat lacus sed metus. Integer sapien mi, vestibulum sit amet, pulvinar a, egestas in, elit. Donec nulla leo, aliquet non, commodo eget, ornare vel, enim. Ut tristique felis a velit fermentum porttitor. Etiam interdum orci quis erat. \r\n<br>\r\n<br>Morbi sed wisi. Quisque nibh dolor, feugiat vel, aliquam eget, pharetra eget, eros. Donec quis sem eget massa sagittis consectetuer. Integer laoreet molestie neque. Etiam rutrum, purus ut euismod rutrum, felis augue interdum augue, ut tincidunt lacus ipsum non purus. Mauris eu nisl. Etiam eros tellus, scelerisque at, elementum sagittis, placerat at, lectus. Nunc eget est. Pellentesque ultricies, enim vel mollis nonummy, dolor tellus mattis dolor, nec consectetuer libero sem a nibh. Donec et justo. Nulla facilisi. Cras pellentesque velit non arcu. Proin elit. Fusce convallis convallis nunc. Phasellus vitae mi. Cras quis sapien. Proin placerat rhoncus orci. Cras ipsum massa, ultricies sed, vestibulum quis, imperdiet in, nibh. Nam porttitor arcu viverra ante. Duis id metus. \r\n\r\n\r\n\r\n','F36F8BFFF97F8A16505B8305F7','2004-01-16 17:35:29',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E3783D13D510C2107FD96A3','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-01-16 17:26:24',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E402FA79B397914EC9B0EAE','Matahari Kahuripan','test','Notulen Presentasi','Rapat Koordinasi','','','','','asdfasdf','tesate\r<br>testa','asdfasdf','F36F8BFFF97F8A16505B8305F7','2004-01-16 17:35:54',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E408A7C74FF502CD071D17E','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','asdf','asdf','asdfasdf','asdfasdf\r<br>asdfasdf','asdfasdf','F36F8BFFF97F8A16505B8305F7','2004-01-16 17:36:20',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FACCC28CD1AFF5DEF87F890FE3','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7','2004-02-19 14:52:23',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `notulen` ENABLE KEYS */;

--
-- Table structure for table `open_job`
--

DROP TABLE IF EXISTS `open_job`;
CREATE TABLE `open_job` (
  `id` varchar(28) NOT NULL default '',
  `title` varchar(50) default NULL,
  `highlight` text,
  `detail` text,
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `publish_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `open_job`
--


/*!40000 ALTER TABLE `open_job` DISABLE KEYS */;
LOCK TABLES `open_job` WRITE;
INSERT INTO `open_job` VALUES ('EF1EF7ECE9D2C40A656132F2E','Java Developer','1 year J2EE Development <br>\r\nOpen Source Component Contributor','We need a developer that make development is a hobby. If you eager with IT, you can join us, call us and tell what do you want, We can make your dream came true.',NULL,'EF616044AE4A60EE00C92C858open_jobs_big.jpg','','',1,'EEA063FE983851E','2002-07-31 22:54:42','EEA063FE983851E','2002-07-31 22:54:42','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF2F0FC62FE000588342B2A58','Java Developer','Java Developer Position','Requirement<br>\r\nS1 Information Technology<br>\r\nmale/female<br>\r\nage max.27th<br>',NULL,'EF57BC3531E9D3B61E7C3C0116images01.gif',NULL,NULL,1,'EEA063FE983851E','2002-07-30 01:59:42','EEA063FE983851E','2002-07-30 01:59:42','0','ic','ED2E4202F2AE0340726C67A877'),('EF57BD11F59D7A2C77A5A3D378','Accounting','Accounting Possition','Requirement<br>\r\nS1 Accounting<br>\r\nmale/female<br>\r\nage max.27th<br>',NULL,'EF57BD7DEE80E1C0398B2283D9images02.gif',NULL,NULL,1,'EEA063FE983851E','2002-07-30 02:00:20',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF57BDF80FA246572D73D85E63','Programmer','Programmer Possition','Requirement<br>\r\nS1/D3 Information Technology<br>\r\nmale/female<br>\r\nage max.27th<br>',NULL,'EF57BE9CBC9FDC09220C39222Eimages03.gif',NULL,NULL,1,'EEA063FE983851E','2002-07-30 02:01:33',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF8E3DFB8756AAC9A08A37A4DE','Java Developer','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ',NULL,'EF8E3E520FA8F6FE1E1F9C8265images1.jpg',NULL,NULL,1,'EEA063FE983851E','2002-08-09 16:00:32',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E3E604C996AD28FBBE57424','Secretary','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ',NULL,'EF8E3ED131CAFA180DC4C56310images2.jpg',NULL,NULL,1,'EEA063FE983851E','2002-08-09 16:01:05','EEA063FE983851E','2002-08-09 16:01:05','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('F4D794F7472487264299D41ED8','Programmer','Java Programmer','Qualification\r\n(J2EE, XML, JDOM)\r\n',NULL,'F4D796C98C96B311759C18658Aproduct(2).gif',NULL,NULL,1,'F36F8BFFF97F8A16505B8305F7','2003-04-29 11:03:23',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F98866BF31A1054E005D57ACEA','','','',NULL,NULL,NULL,NULL,1,'F36F8BFFF97F8A16505B8305F7','2003-12-18 15:14:54',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F988724523BDA5982AAD3262DF','','','',NULL,NULL,NULL,NULL,1,'F36F8BFFF97F8A16505B8305F7','2003-12-18 15:27:30',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D');
UNLOCK TABLES;
/*!40000 ALTER TABLE `open_job` ENABLE KEYS */;

--
-- Table structure for table `opportunity`
--

DROP TABLE IF EXISTS `opportunity`;
CREATE TABLE `opportunity` (
  `id` varchar(28) NOT NULL default '',
  `amount` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `expectedCloseDate` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `nextStep` varchar(255) default NULL,
  `probability` varchar(255) default NULL,
  `salesStage` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `businessPartnerId` varchar(28) default NULL,
  `create_by` varchar(28) default NULL,
  `update_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` datetime default '0000-00-00 00:00:00',
  `active_flag` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `businessPartnerId_20` (`businessPartnerId`),
  KEY `businessPartnerId_21` (`businessPartnerId`),
  KEY `businessPartnerId_22` (`businessPartnerId`),
  KEY `businessPartnerId_23` (`businessPartnerId`),
  KEY `businessPartnerId_24` (`businessPartnerId`),
  KEY `businessPartnerId_25` (`businessPartnerId`),
  KEY `businessPartnerId_26` (`businessPartnerId`),
  KEY `businessPartnerId_27` (`businessPartnerId`),
  KEY `businessPartnerId_28` (`businessPartnerId`),
  KEY `businessPartnerId_29` (`businessPartnerId`),
  KEY `businessPartnerId_10` (`businessPartnerId`),
  KEY `businessPartnerId_30` (`businessPartnerId`),
  KEY `businessPartnerId_11` (`businessPartnerId`),
  KEY `businessPartnerId_31` (`businessPartnerId`),
  KEY `businessPartnerId_12` (`businessPartnerId`),
  KEY `businessPartnerId_2` (`businessPartnerId`),
  KEY `businessPartnerId_13` (`businessPartnerId`),
  KEY `businessPartnerId_3` (`businessPartnerId`),
  KEY `businessPartnerId` (`businessPartnerId`),
  KEY `businessPartnerId_4` (`businessPartnerId`),
  KEY `businessPartnerId_14` (`businessPartnerId`),
  KEY `businessPartnerId_5` (`businessPartnerId`),
  KEY `businessPartnerId_15` (`businessPartnerId`),
  KEY `businessPartnerId_6` (`businessPartnerId`),
  KEY `businessPartnerId_16` (`businessPartnerId`),
  KEY `businessPartnerId_7` (`businessPartnerId`),
  KEY `businessPartnerId_17` (`businessPartnerId`),
  KEY `businessPartnerId_8` (`businessPartnerId`),
  KEY `businessPartnerId_18` (`businessPartnerId`),
  KEY `businessPartnerId_9` (`businessPartnerId`),
  KEY `businessPartnerId_19` (`businessPartnerId`),
  KEY `businessPartnerId_32` (`businessPartnerId`),
  KEY `businessPartnerId_33` (`businessPartnerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opportunity`
--


/*!40000 ALTER TABLE `opportunity` DISABLE KEYS */;
LOCK TABLES `opportunity` WRITE;
INSERT INTO `opportunity` VALUES ('ff808081059f5ac301059f62adac','sss','','aaa','sssss','','100.2','Prospecting','',NULL,'1','','2005-08-10 14:55:08','1970-01-01 07:00:00',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `opportunity` ENABLE KEYS */;

--
-- Table structure for table `opportunityproduct`
--

DROP TABLE IF EXISTS `opportunityproduct`;
CREATE TABLE `opportunityproduct` (
  `id` varchar(28) NOT NULL default '',
  `opportunityId` varchar(28) default NULL,
  `price` varchar(255) default NULL,
  `unit` varchar(255) default NULL,
  `productId` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `sale` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `update_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` datetime default '0000-00-00 00:00:00',
  `active_flag` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `opportunityId_20` (`opportunityId`),
  KEY `opportunityId_21` (`opportunityId`),
  KEY `opportunityId_2` (`opportunityId`),
  KEY `opportunityId_22` (`opportunityId`),
  KEY `opportunityId_3` (`opportunityId`),
  KEY `opportunityId_23` (`opportunityId`),
  KEY `opportunityId_4` (`opportunityId`),
  KEY `opportunityId_24` (`opportunityId`),
  KEY `opportunityId_25` (`opportunityId`),
  KEY `opportunityId_5` (`opportunityId`),
  KEY `opportunityId_26` (`opportunityId`),
  KEY `opportunityId_6` (`opportunityId`),
  KEY `opportunityId_27` (`opportunityId`),
  KEY `opportunityId_7` (`opportunityId`),
  KEY `opportunityId_28` (`opportunityId`),
  KEY `opportunityId_8` (`opportunityId`),
  KEY `opportunityId_29` (`opportunityId`),
  KEY `opportunityId_9` (`opportunityId`),
  KEY `opportunityId_10` (`opportunityId`),
  KEY `opportunityId_30` (`opportunityId`),
  KEY `opportunityId_11` (`opportunityId`),
  KEY `opportunityId_31` (`opportunityId`),
  KEY `opportunityId_12` (`opportunityId`),
  KEY `opportunityId_13` (`opportunityId`),
  KEY `opportunityId_14` (`opportunityId`),
  KEY `opportunityId` (`opportunityId`),
  KEY `opportunityId_15` (`opportunityId`),
  KEY `opportunityId_16` (`opportunityId`),
  KEY `opportunityId_17` (`opportunityId`),
  KEY `opportunityId_18` (`opportunityId`),
  KEY `opportunityId_19` (`opportunityId`),
  KEY `opportunityId_32` (`opportunityId`),
  KEY `opportunityId_33` (`opportunityId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opportunityproduct`
--


/*!40000 ALTER TABLE `opportunityproduct` DISABLE KEYS */;
LOCK TABLES `opportunityproduct` WRITE;
INSERT INTO `opportunityproduct` VALUES ('ff8080810595843001059586a1a8','ff80808105958430010595867b45','15000','10','ff80808105958430010595861f60','ayam','150000.0','','','2005-08-08 00:00:00','2005-08-08 00:00:00',0),('ff808081059953c7010599570e14','ff80808105958430010595867b45','1000000','10','ff808081059953c7010599569ce6','dapur','1.0E7','','','1970-01-01 07:00:00','1970-01-01 07:00:00',0),('ff808081059f5ac301059f62c4b4','ff808081059f5ac301059f62adac','100','500','ff80808105958430010595861f60','ayam','50000.0','','','1970-01-01 07:00:00','1970-01-01 07:00:00',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `opportunityproduct` ENABLE KEYS */;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` varchar(28) NOT NULL default '',
  `order_number` varchar(30) NOT NULL default '',
  `product_id` varchar(30) NOT NULL default '',
  `provider_id` varchar(30) NOT NULL default '',
  `qty` varchar(5) NOT NULL default '',
  `uom_code` varchar(5) NOT NULL default '',
  `price_per_unit` varchar(20) NOT NULL default '',
  `sub_total` varchar(20) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--


/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
LOCK TABLES `order_detail` WRITE;
INSERT INTO `order_detail` VALUES ('ED8FB6BB234ABF7B3521F54F23','ED8FB933E1B20A0477428DCF39','ED80C1CC8EFAD01106B3B4A981','','6','PR','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED8FB6E0B04F447F3A8BED6D3F','ED8FB933E1B20A0477428DCF39','ED80C222115F7AC8C0CA6DE789','','10','DZ','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED8FBD99AE3EB5BA3FA87C22B8','ED8FBEA2DEC2E418C4213EC4BB','ED80CA904A9C34627B0E9C6D31','ED8ABDC4A5E38A4C2A8EB7FFD0','5','GRS','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED8FBE0E2D8310B7F6051B4441','ED8FBEA2DEC2E418C4213EC4BB','ED80CAF9A2A14C2BA2BEC628AF','ED8ABDF1799ED55FB193F90BD7','8','BX','1500','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED8FC1E58BE380DB30914D00B','ED8FC227614398F167A97A8865','ED80C222115F7AC8C0CA6DE789','ED8B2E9D553E356621A976EEC2','5','GRS','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED8FC4AC4A5009EEB9F7D4AB39','ED8FC515F311DBD9643F7BF526','ED80CAF9A2A14C2BA2BEC628AF','ED8ABDF1799ED55FB193F90BD7','0','BX','1500','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED943AE9AE3F4D1116F2EA7B7','ED943B28EF42B6DD4306D48D82','ED80C1CC8EFAD01106B3B4A981','','3','DZ','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED943C1478FB15F5D104A4F936','ED943C84F9B09A4BBA74686F00','ED80CAF9A2A14C2BA2BEC628AF','ED8ABDC4A5E38A4C2A8EB7FFD0','4','EA','1500','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED943BED3BC8E61906F3D06512','ED943C84F9B09A4BBA74686F00','ED80C1CC8EFAD01106B3B4A981','ED8B2E9D553E356621A976EEC2','5','PR','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED949E62079C429370DDBBC612','ED949EDC46E8603C895C8B9F6D','ED80C222115F7AC8C0CA6DE789','','6','BX','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED949F24F5E83AE83E1DAB7C42','ED949FE1E79E11AAF7FE1F7767','ED80C222115F7AC8C0CA6DE789','ED8B2E9D553E356621A976EEC2','6','PR','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED95008D6D30DB5FCA86631453','ED950379E322BD948144AC2F1','ED80C1CC8EFAD01106B3B4A981','','1','GRS','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED953B77DBCAB01F799E88B789','ED953C9F7A21AA27C265AF660A','ED80CA904A9C34627B0E9C6D31','','2','EA','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED953C3242387543DF90DE72BE','ED953C9F7A21AA27C265AF660A','ED80CAF9A2A14C2BA2BEC628AF','','2','PR','1500','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED95758EB1DD7B7757793D96B2','ED9583D9645512FB4B68A3D4A5','ED80CA904A9C34627B0E9C6D31','','6','DZ','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED958E55E0AF1592528E5BD38D','ED958ED75CB1C5282BB3023BBF','ED80CAF9A2A14C2BA2BEC628AF','','1','PR','1500','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED95AE91286F928C0FB6E148F9','ED95AEFA625817502E9DDD1903','ED80C1CC8EFAD01106B3B4A981','','1','EA','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('EDA3CD9180FBE46D7A05FED277','EDA3CE4084EEA75681CEF9AD49','ED80CA904A9C34627B0E9C6D31','','3','PR','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('EDA41E4A446741A3CBA895DFD0','EDA41F74BEB17084234E5BF0F1','ED80CA904A9C34627B0E9C6D31','','6','PR','120000','',0,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

--
-- Table structure for table `osml`
--

DROP TABLE IF EXISTS `osml`;
CREATE TABLE `osml` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `url_osml` varchar(255) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'IC',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `osml`
--


/*!40000 ALTER TABLE `osml` DISABLE KEYS */;
LOCK TABLES `osml` WRITE;
INSERT INTO `osml` VALUES ('E8D4BE646EF710FAB3F79BE639','Standard','Standard Approval for News Company','standard.osml',1,'1','2001-09-10 23:33:37','1','2001-09-10 23:33:37','IC',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `osml` ENABLE KEYS */;

--
-- Table structure for table `page_collection`
--

DROP TABLE IF EXISTS `page_collection`;
CREATE TABLE `page_collection` (
  `id` varchar(28) NOT NULL default '',
  `site_id` varchar(28) NOT NULL default '',
  `name` varchar(128) default NULL,
  `description` text,
  `skin_id` varchar(28) NOT NULL default '',
  `descriptor_id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `active_flag` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_collection`
--


/*!40000 ALTER TABLE `page_collection` DISABLE KEYS */;
LOCK TABLES `page_collection` WRITE;
INSERT INTO `page_collection` VALUES ('EDF2443813F00F1BF2C6BD8562','ED2E4202F2AE0340726C67A877','main_page','Main Page','EF33952CCDF48014677207390C','25',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF3DD618C889897019A439732','ED2E4202F2AE0340726C67A877','about_us','Green Matrix About Us','EF3DD04583B1E0BF80BF38F7B4','25',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EE7C72FC589FF167B7B8978BEC','EDDCA9DCE41A14EE5D5ABE7E3C','solution_detail','Solution Page','EEED90B7B09350BB36F389A43E','EE163600A2BAD87965E20E9C9A',NULL,'2002-07-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EE24CA21C58A6418C358BCB0E2','EE185CE0B82B41C1724F284685','cimande','cimande','EED8A79711FD1B9C63BA7ADA0E','',NULL,'2002-07-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF3E3F0419D7F9729AE28D8D6E','ED2E4202F2AE0340726C67A877','contact_us','Green Matrix Contact Us','EF3DD0B340E38780B1B49BB820','25',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EE7CCE9C61D7D9ED63A579A196','EDDCA9DCE41A14EE5D5ABE7E3C','solution','','EEEE887BFAA2FB39A07504A03A','25',NULL,'2002-10-15 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EE7CCFA78F6D0C6E8C7F0711F6','EDDCA9DCE41A14EE5D5ABE7E3C','news','','EEED8F61ACA8FD143C4A127AE','25',NULL,'2002-07-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EE7CCFEE491A0E3B6A5497D05D','EDDCA9DCE41A14EE5D5ABE7E3C','news_detail','','EEED8FAA79AC379210C5F52060','EE1634B19EB64BB12485263F79',NULL,'2002-07-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EE7CD0F71F15D0FC571C472A3F','EDDCA9DCE41A14EE5D5ABE7E3C','press_release','Press Release Page','EEED91195E6BDC9CF09ECB2DF3','25',NULL,'2002-07-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF3E486027CD676EEB50BB88A7','ED2E4202F2AE0340726C67A877','press_release','Green Matrix Press Release','EF3DD27718347862F68D50A66','EE16354AB187B638CC4579F8B6',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EEFB3546C96942F32BA73D2837','EDDCA9DCE41A14EE5D5ABE7E3C','main_page','Main Page of Intercitra Website','EEED8E57002048A2E9071DAF76','25',NULL,'2002-07-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EEFB66A82BBA981ABDCDD0F336','EDDCA9DCE41A14EE5D5ABE7E3C','about_us','About Us Detail Page','EEED8EE4881FA530706324955E','25',NULL,'2002-07-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EEFB671AFB98DFAFD13702A2B6','EDDCA9DCE41A14EE5D5ABE7E3C','contact_us','Contact Us Input Form','EEED8F22116F192E521FCB6C46','25',NULL,'2002-07-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF19B5F650A671C3BD83C6CD37','EDDCA9DCE41A14EE5D5ABE7E3C','press_release_detail','Press Release Detail','EEED915B2AE8D8F40ACED882C5','EE16354AB187B638CC4579F8B6',NULL,'2002-07-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF1EF9CA64986834DE8B1107F5','EDDCA9DCE41A14EE5D5ABE7E3C','open_job_detail','Open Job Detail','EF1EEC2113DFA19FB81258C38A','EF1EE6CF42F37C9EA72FAE3B94',NULL,'2002-07-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF3E4A1FD930D3F55FE60D71EB','ED2E4202F2AE0340726C67A877','latest_news','Green Matrix Latest News','EF3DB199C4997C0D4CF66C2FE3','EE1634B19EB64BB12485263F79',NULL,'2002-07-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF3E4C91A4FC8D8B3D69E33A0C','ED2E4202F2AE0340726C67A877','our_solutions','Green Matrix Our Solutions','EF3DD1C31AAA5A6C655E9DE458','EE163600A2BAD87965E20E9C9A',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF3E5B33DB2B41B00EBD520A2D','ED2E4202F2AE0340726C67A877','our_solution_details','Green Matrix Our Solution Details','EF3DD11C4B8AF9FF295F58BA9E','EE163600A2BAD87965E20E9C9A',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF3E62C28C692B6F12ABB8444B','ED2E4202F2AE0340726C67A877','latest_news_details','Green Matrix Latest News Details','EF3DCE12F3E784A3504C51EE52','EE1634B19EB64BB12485263F79',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF3E65A1E6DA0C6EDDC1849967','ED2E4202F2AE0340726C67A877','press_release_details','Green Matrix Press Release Details','EF3DD3C0DE6F7365ABC3BC9FB7','EE16354AB187B638CC4579F8B6',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF5D4EEB993D601978D2A9B1B1','ED2E4202F2AE0340726C67A877','open_job','Open Job','EF3DD45212976F3861F684F91C','EF1EE6CF42F37C9EA72FAE3B94',NULL,'2002-07-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF61EBE35B969F4673370B2083','EDDCAA0575D694D2560CC2511F','main_page','Main Page','EF878D43B44129DB9FF337D315','25',NULL,'2002-08-08 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF620671B2D8FF97E9378AF9F4','EDDCAA0575D694D2560CC2511F','our_solutions','Our Solutions','EF8790300BE12E5CCE2C2E4701','EE163600A2BAD87965E20E9C9A',NULL,'2002-08-08 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF627EC23B9147AA2660FFB9CA','EF62687CC1170D25FC73E0051C','main_page','Main Page','EF61D94A207A243FA2C5E7DACC','23',NULL,'2002-08-01 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF6686333E17BA23A91D28BF74','EF62687CC1170D25FC73E0051C','our_solutions','Our Solutions','EF61D9BA4FA37DC5D61F0B8B6A','EE163600A2BAD87965E20E9C9A',NULL,'2002-08-01 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF6692056DD285D1F852EC5517','EF62687CC1170D25FC73E0051C','about_us','About Us','EF61DD5C4D4F996AE3D9853CD8','25',NULL,'2002-08-01 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF6706D25EC924ECA1B7B16A67','EF62687CC1170D25FC73E0051C','latest_news','Latest News','EF61DAA20FF6FC31E28AAFACDB','EE1634B19EB64BB12485263F79',NULL,'2002-08-02 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF670DDA1C2334375FB7DFBC4C','EF62687CC1170D25FC73E0051C','press_release','Press Release','EF61DA32CA45F6895A5FF65099','EE16354AB187B638CC4579F8B6',NULL,'2002-08-02 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF6727F71CFE669F4CB952B586','EF62687CC1170D25FC73E0051C','contact_us','Contact Us','EF61DCC666E816B86B1EF4A04B','23',NULL,'2002-08-02 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF67474EAB993A923F9991F26D','EF62687CC1170D25FC73E0051C','press_release_detail','Press Release Detail','EF61DC5B0983D882183BF23C11','EE16354AB187B638CC4579F8B6',NULL,'2002-08-02 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF67542644748EC41A104CDBD6','EF62687CC1170D25FC73E0051C','latest_news_detail','Latest News Detail','EF61DB0ABCB2C0383ED89CF3BE','EE1634B19EB64BB12485263F79',NULL,'2002-08-02 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF6775ADB3CB233515945B3C44','EF62687CC1170D25FC73E0051C','our_solutions_detail','Our Solutions Detail','EF61DBC92A5A01266BD3D0D049','EE163600A2BAD87965E20E9C9A',NULL,'2002-08-02 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF7710A1291755B321405AB0EF','EE1B28DE85CED7258C4D46D2E2','main_page','Main Page','EF770682B51853368774F11E41','23',NULL,'2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF7710FD241522562748FDB505','EE1B28DE85CED7258C4D46D2E2','about_us','About Us','EF7706DCFA2042BE91940B9029','EF76BA4ED5D8F2A21B1933A750',NULL,'2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF774E5BB6704460C14A05B178','EE1B28DE85CED7258C4D46D2E2','our_solutions','Our Solutions','EF77097FA9F464579815DAB4DB','EE163600A2BAD87965E20E9C9A',NULL,'2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF776ECC8533F1DCD8771A673E','EE1B28DE85CED7258C4D46D2E2','press_release','Press Release','EF770A3D3C54272D02290A7ACF','EE16354AB187B638CC4579F8B6',NULL,'2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF7B149A3B1F991DC9DC557434','EE1B28DE85CED7258C4D46D2E2','latest_news','Lates News','EF770890284513762413980D61','EE1634B19EB64BB12485263F79',NULL,'2002-08-05 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF83E8305D147F07BDA66CFD87','EE1B28DE85CED7258C4D46D2E2','contact_us','Contact Us','EF7708560D9A33A55538E8D5DD','25',NULL,'2002-08-07 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF83E8C7F3F067529DEEF2976F','EE1B28DE85CED7258C4D46D2E2','our_solutions_detail','Our Solutions Detail','EF7709E076918224E2C5B07B7A','EE163600A2BAD87965E20E9C9A',NULL,'2002-08-07 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF83E9957BAD9DACFEB3B99228','EE1B28DE85CED7258C4D46D2E2','press_release_detail','Press Release Detail','EF770A8FA2B9C566FEB2D07D71','EE16354AB187B638CC4579F8B6',NULL,'2002-08-07 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF83EA1701723C106B5DDD79F5','EE1B28DE85CED7258C4D46D2E2','latest_news_detail','Latest News Detail','EF7708F5A92C7708E431064FF','EE1634B19EB64BB12485263F79',NULL,'2002-08-07 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF87E6C46078E6ADE3CC37678A','EDDCAA0575D694D2560CC2511F','about_us','About Us','EF878D94EA13DF41D77ECEEA3F','EF76BA4ED5D8F2A21B1933A750',NULL,'2002-08-08 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF881575F96BDDA74A2F9F67CF','EDDCAA0575D694D2560CC2511F','contact_us','Contact Us','EF878DE1DCA0A8D06486C85DA6','23',NULL,'2002-08-08 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF88311F355F6697A7A15241F6','EDDCAA0575D694D2560CC2511F','latest_news','Latest News','EF878E3C0754B2250A49C18A01','EE1634B19EB64BB12485263F79',NULL,'2002-08-08 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8CEB306882629A3A349C4DA0','EDDCAA0575D694D2560CC2511F','our_solutions_detail','Our Solutions Detail','EF87930075DA19F24E509D71A0','EE163600A2BAD87965E20E9C9A',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8CEBFC8737ED0AEB94671FE5','EDDCAA0575D694D2560CC2511F','latest_news_detail','Latest News Detail','EF878EBEE25A571043B9E2D699','EE1634B19EB64BB12485263F79',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8CECAE032AA95498E258BA5F','EDDCAA0575D694D2560CC2511F','press_release_detail','Press Release Detail','EF878F2718A11A7D23D6EBF386','EE16354AB187B638CC4579F8B6',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8CEDB9638E69EAE45AA9C1B4','EDDCAA0575D694D2560CC2511F','press_release','Press Release','EF878FD2836818603346084F2F','EE16354AB187B638CC4579F8B6',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E41866B8177D79F12CAAB4A','EF8E260F5EE7A2E8ECE6F2F3A3','main_page','Main Page','EF8E277F34F1C4DE8229CFC10D','23',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E45713A4A84AC617D643646','EF8E260F5EE7A2E8ECE6F2F3A3','our_solutions','Our Solutions','EF8E2910D6DC72DE5A739B7323','EE163600A2BAD87965E20E9C9A',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E45F70D38098217F3204833','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news','Latest News','EF8E2AA141B4B44CED456914C8','EE1634B19EB64BB12485263F79',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E469192716E4177E8AE9E69','EF8E260F5EE7A2E8ECE6F2F3A3','press_release','Press Release','EF8E29F7DF9BD41DE59E1B3273','EE16354AB187B638CC4579F8B6',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E4703CCD3FD17EAF48DB207','EF8E260F5EE7A2E8ECE6F2F3A3','about_us','About Us','EF8E285DE8A1E858D8BCC33A12','EF76BA4ED5D8F2A21B1933A750',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E476A72C68187818F3CB5A3','EF8E260F5EE7A2E8ECE6F2F3A3','contact_us','Contact Us','EF8E28BDB57036C93F24B9B14E','23',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E47BA5DAD18EA08DA96AE10','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news_detail','Latest News Detail','EF8E2B0BB26649B06A069D8519','EE1634B19EB64BB12485263F79',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E48391C972F711E2B9156E7','EF8E260F5EE7A2E8ECE6F2F3A3','press_release_detail','Press Release Detail','EF8E2A49DD1A4B7CB00B8D1A88','EE16354AB187B638CC4579F8B6',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E48C49144CA95A0A1285F5E','EF8E260F5EE7A2E8ECE6F2F3A3','our_solutions_detail','Our Solutions Detail','EF8E29788AD8D3BFDC5F397011','EE163600A2BAD87965E20E9C9A',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('EF8E494CB3417536B4C7864C0D','EF8E260F5EE7A2E8ECE6F2F3A3','open_jobs','Open Jobs','EF8E2B6302127EB28DF0796D9','EF1EE6CF42F37C9EA72FAE3B94',NULL,'2002-08-09 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F07B5DECBC9820D2C4A0997697','F07B23B53C6185EACC86EFE1D8','main_page','Main Page','F07B379B79C9CD7743C23D2596','EF76BA4ED5D8F2A21B1933A750',NULL,'2002-09-24 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F08040377B159867B63329097A','F07B23B53C6185EACC86EFE1D8','forum','Forum','F07B3995D35970D90584A8EE7F','EF76BA4ED5D8F2A21B1933A750',NULL,'2002-09-25 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F083F2AFBD672047F65BC8E27C','F07B23B53C6185EACC86EFE1D8','recipe','Recipe','F07B3801CF22E2E91A2A70AE4D','EE1634B19EB64BB12485263F79',NULL,'2002-09-26 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F083FA41C296D2549F9BCC92A5','F07B23B53C6185EACC86EFE1D8','project','Project','F07B3AFC312B9E0CA737CE8886','EE1634B19EB64BB12485263F79',NULL,'2002-09-26 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F0E64DB4BE71F4619D1F2686B5','EDDCA9DCE41A14EE5D5ABE7E3C','latest_news','Latest News','EEED8F61ACA8FD143C4A127AE','EE1634B19EB64BB12485263F79',NULL,'2002-10-15 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F08423844B51176B81DFF67352','F07B23B53C6185EACC86EFE1D8','review','Review','F07B3CA6AAD39BFD520EFFEFC0','EE1634B19EB64BB12485263F79',NULL,'2002-09-26 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F0842A677E305275FF9B0053C3','F07B23B53C6185EACC86EFE1D8','contact_us','Contact Us','F07B3C19D634A84A21B00B2304','EF76BA4ED5D8F2A21B1933A750',NULL,'2002-09-26 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F084348DB860453D6349097F08','F07B23B53C6185EACC86EFE1D8','resource','Resource','F07B3A364057068AFB1D09B24B','E7A781CFBA45A3CB44C81D8236',NULL,'2002-09-26 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F0846040A08C2276BB6D12E742','F07B23B53C6185EACC86EFE1D8','recipe_detail','Recipe Detail','F07B38486BD0AC516EDA596175','EE1634B19EB64BB12485263F79',NULL,'2002-09-26 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F09DE35103CB6229E57415D40A','F07B23B53C6185EACC86EFE1D8','press_release','Press Release','F09DDFE362D841F17A30993ED','EE16354AB187B638CC4579F8B6',NULL,'2002-10-01 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F09DBD4A6D15B9A4E250AE165','F07B23B53C6185EACC86EFE1D8','press_release_detail','Press Release Detail','F07B392A0461FE3079C1826E3A','EE16354AB187B638CC4579F8B6',NULL,'2002-10-01 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F09DC31E56256DB4D5065F94AD','F07B23B53C6185EACC86EFE1D8','review_detail','Review Detail','F07B3CF003DAFE9F27A30978A7','EE1634B19EB64BB12485263F79',NULL,'2002-10-01 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F09DC3B9F4A559FA1B309469B8','F07B23B53C6185EACC86EFE1D8','project_detail','Project Detail','F07B3BCB177AC6A7F14766D6F6','EE1634B19EB64BB12485263F79',NULL,'2002-10-01 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F302E048FD76B0E2FB7B980A33','F185BD3FDC5CC7989A3CED51A1','main_page','Main Page (Index)','F302D4FE6D537C49721004181F','25',NULL,'2003-07-07 16:32:35',NULL,'0000-00-00 00:00:00','0','ic',1),('F30428329BB897A3EACA58D37A','F185BD3FDC5CC7989A3CED51A1','sitemap','Site Map Page Collection','F30424474044603B72B3C3BA3','F3FF0CB5A1F1B01FDBEF1218F6',NULL,'2003-03-18 10:27:57',NULL,'0000-00-00 00:00:00','0','ic',1),('F3086E4D9C9B193C48E4E598DD','F185BD3FDC5CC7989A3CED51A1','press_release','Press Release Page Collection','F308699BD428889A5632750137','EE16354AB187B638CC4579F8B6',NULL,'2003-01-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F3086FF169FB5CC2E73B72058','F185BD3FDC5CC7989A3CED51A1','fact_figure','Fact & Figure','F308692D6AEE5FC7D30CACD99C','25',NULL,'2003-01-29 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F30E29C6E333632615BA33F58D','F185BD3FDC5CC7989A3CED51A1','press_release_archive','Press Release Archive','F30869E6C74A56DDF243778A81','EE16354AB187B638CC4579F8B6',NULL,'2003-01-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F30E4D1920F5C5815456845B78','F185BD3FDC5CC7989A3CED51A1','press_release_detail','Press Release Detail','F3086A26128F78FF6610A15097','F3C2998AFDB590924800ACCC95',NULL,'2003-03-07 16:50:45',NULL,'0000-00-00 00:00:00','0','ic',1),('F30E9D6ECC70A75382B764F275','F185BD3FDC5CC7989A3CED51A1','news','News','F3086B7E11837F450B77703C40','EE1634B19EB64BB12485263F79',NULL,'2003-01-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F30E9DDF1A9FE5A589EC5DB77D','F185BD3FDC5CC7989A3CED51A1','news_archive','News Archive','F3086C6E2EBC786E9D341C958','EE1634B19EB64BB12485263F79',NULL,'2003-01-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F30E9E5E2E6738CA27D794C38E','F185BD3FDC5CC7989A3CED51A1','news_detail','News Detail','F3086CF73451A89028B438A4C2','F3C2963AD8A291EF75E1311711',NULL,'2003-03-07 16:50:04',NULL,'0000-00-00 00:00:00','0','ic',1),('F30EB26FEFEA3B27A2CC02B513','F185BD3FDC5CC7989A3CED51A1','contact_us','Contact Us','F3086DE1A3F88F17DAA77F5EA8','F3132892F57B236985F02B3F4F',NULL,'2003-03-18 16:14:37',NULL,'0000-00-00 00:00:00','0','ic',1),('F30EC05E28727D8633FB935398','F185BD3FDC5CC7989A3CED51A1','product_service','Product & Service','F30D50F630C4B3D981A66A4BD4','EE163600A2BAD87965E20E9C9A',NULL,'2003-01-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F30EC104B94B44D0C394CFE15C','F185BD3FDC5CC7989A3CED51A1','product_service_detail','Product & Service Detail','F30D52A7E7A3412E1B36707786','EE163600A2BAD87965E20E9C9A',NULL,'2003-01-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F30EDC9FCD7E6B1169454FF8D0','F185BD3FDC5CC7989A3CED51A1','fact_figure_detail','Fact & Figure Detail','F30EDC23C73CD41B124A2387A7','F30D6D4A72F6871D6DB046BCB6',NULL,'2003-01-30 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F30EF2941AA7B9AF80B963B9C3','F185BD3FDC5CC7989A3CED51A1','company_subsidary','Company Subsidiary','F30D5022D3E7ABE3498CA22B8A','F3FF36F3D74BBBACD7A0D5E93A',NULL,'2003-03-18 11:20:34',NULL,'0000-00-00 00:00:00','0','ic',1),('F312BF4F635BA82668D772E458','F185BD3FDC5CC7989A3CED51A1','company_bod','Company Board Of Director','F30D4CB7B4E33CC6D6DD8CE981','F312A7DFF0D600D4866CCD4E28',NULL,'2003-01-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F312CE723436BEEC0D74D9DD88','F185BD3FDC5CC7989A3CED51A1','company_bod_detail','Company Board of Director (detail)','F30D4D403DB20A08FF49504FFA','F312A7DFF0D600D4866CCD4E28',NULL,'2003-01-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F312F1E8E1CA99D4801813532A','F185BD3FDC5CC7989A3CED51A1','company_structure','Company Structure (About Us)','F30D4F8ED066660E9734DEF2B','EF76BA4ED5D8F2A21B1933A750',NULL,'2003-01-31 00:00:00',NULL,'0000-00-00 00:00:00','0','ic',1),('F3133567EE10690EBB0B862E93','F185BD3FDC5CC7989A3CED51A1','company_lob','Company Line Of Business','F30D4DCBF2ED7BDB30932694B1','F3132892F57B236985F02B3F4F',NULL,'2003-03-20 13:23:46',NULL,'0000-00-00 00:00:00','0','ic',1),('F322DCAC8723CABF95DD7086A9','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_plantation','Company Line Of Business Plantation','F30D4E637FCDCE6858748449C9','F3132892F57B236985F02B3F4F',NULL,'2003-03-20 13:24:01',NULL,'0000-00-00 00:00:00','0','ic',1),('F322DD58B5AB5151C43B3F6709','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_mining','Company Line Of Business Mining','F322D9F44D31058660940D64A7','F3132892F57B236985F02B3F4F',NULL,'2003-03-20 13:24:18',NULL,'0000-00-00 00:00:00','0','ic',1),('F322DDE15D751BAD950CD86091','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_horticulture','Company Line Of Business Horticulture','F322DABC02B874D8B83A401BA1','F3132892F57B236985F02B3F4F',NULL,'2003-03-20 13:30:35',NULL,'0000-00-00 00:00:00','0','ic',1),('F322DE707E9AE4A7E1D345A1EA','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_others','Company Line Of Business Others','F322DBD188CC9C1CD5B70A28E2','F3132892F57B236985F02B3F4F',NULL,'2003-03-20 13:25:40',NULL,'0000-00-00 00:00:00','0','ic',1),('F40A22BD46954B5768899D5880','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_logging','Company Line Of Business Logging','F40A0EE9A7454478A824E1AD44','F3132892F57B236985F02B3F4F',NULL,'2003-03-20 13:35:22',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D34CF976FEFDC0031BF21231','F4D30718756B8401E43FD2AAE6','main_page','Main Page (index)','EEED8E57002048A2E9071DAF76','25',NULL,'2003-04-28 15:07:34',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D3EA76EC7E38868A98D211E4','F4D30718756B8401E43FD2AAE6','solution','Solution Page','EEED906F3DD8D8C52409FB4D9F','EE163600A2BAD87965E20E9C9A',NULL,'2003-04-28 17:56:49',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D7722D457F9DBC01ACE2093E','F4D30718756B8401E43FD2AAE6','press_release','Press Release Page Collection','EEED91195E6BDC9CF09ECB2DF3','EE16354AB187B638CC4579F8B6',NULL,'2003-04-29 10:24:01',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D7773B104E76B596FE4C8EA2','F4D30718756B8401E43FD2AAE6','solution_detail','Solution Detail Page Collection','EEED90B7B09350BB36F389A43E','EE163600A2BAD87965E20E9C9A',NULL,'2003-04-29 10:29:42',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D787ECE9AB7757B6558460FE','F4D30718756B8401E43FD2AAE6','news','Latest News Page Collection','EEED8F61ACA8FD143C4A127AE','EE1634B19EB64BB12485263F79',NULL,'2003-04-29 10:47:52',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D78F564380A4DE230A7DBC32','F4D30718756B8401E43FD2AAE6','news_detail','Latest News Detail Page Collection','EEED8FAA79AC379210C5F52060','EE1634B19EB64BB12485263F79',NULL,'2003-04-29 10:56:07',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D791BE062178F471B508C22B','F4D30718756B8401E43FD2AAE6','about_us','About Us Page Collection','EEED8EE4881FA530706324955E','EF76BA4ED5D8F2A21B1933A750',NULL,'2003-04-29 10:58:44',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D792B97C276DF5E284D80319','F4D30718756B8401E43FD2AAE6','contact_us','Contact Us Page Collection','EEED8F22116F192E521FCB6C46','25',NULL,'2003-04-29 10:59:38',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D7987BCFE17D999E624D07EA','F4D30718756B8401E43FD2AAE6','open_job_detail','Open Job Detail Page Collection','EF1EEC2113DFA19FB81258C38A','EF1EE6CF42F37C9EA72FAE3B94',NULL,'2003-04-29 11:05:51',NULL,'0000-00-00 00:00:00','0','ic',1),('F4D7A0504C9C4965B7196DE421','F4D30718756B8401E43FD2AAE6','press_release_detail','Press Release Detail Page Collection','EEED915B2AE8D8F40ACED882C5','EE16354AB187B638CC4579F8B6',NULL,'2003-04-29 11:14:21',NULL,'0000-00-00 00:00:00','0','ic',1),('F4DD69BB6BA68346E2E76955C3','F4DD64134EC050E3D0A256EA0D','main_page','Main Page Collection','F07B379B79C9CD7743C23D2596','25',NULL,'2003-04-30 14:12:24',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E2C8BC14DF149A4E9EEAABFF','F4DD64134EC050E3D0A256EA0D','contact_us','Contact Us Page Collection','F07B3C19D634A84A21B00B2304','25',NULL,'2003-05-01 15:14:22',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E2D6DD05510DEA09BC27F562','F4DD64134EC050E3D0A256EA0D','press_release','Press Release Page Collection','F09DDFE362D841F17A30993ED','EE16354AB187B638CC4579F8B6',NULL,'2003-05-01 15:29:46',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E2FDFB28EC2FC5316E2A6037','F4DD64134EC050E3D0A256EA0D','press_release_detail','Press Release Detail Page Collection','F07B392A0461FE3079C1826E3A','EE16354AB187B638CC4579F8B6',NULL,'2003-05-01 16:12:35',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E302D3A8DB6ECA572660F6DB','F4DD64134EC050E3D0A256EA0D','project','Project Page Collection','F07B3AFC312B9E0CA737CE8886','F501EBD2F6B03958384BD30C50',NULL,'2003-05-07 16:23:33',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E303A198252225633D919401','F4DD64134EC050E3D0A256EA0D','project_detail','Project Detail Page Collection','F07B3BCB177AC6A7F14766D6F6','F501EBD2F6B03958384BD30C50',NULL,'2003-05-07 16:24:14',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E308109A9463EE134F00315C','F4DD64134EC050E3D0A256EA0D','recipe','Recipe Page Collection','F07B3801CF22E2E91A2A70AE4D','F501956E01E1C9C2DFFEC614DB',NULL,'2003-05-07 15:40:25',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E3089F82B65B4A287DE7A947','F4DD64134EC050E3D0A256EA0D','recipe_detail','Recipe Detail Page Collection','F07B38486BD0AC516EDA596175','F501956E01E1C9C2DFFEC614DB',NULL,'2003-05-07 15:40:56',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E30F51613E371778C736F03A','F4DD64134EC050E3D0A256EA0D','resource','Resource Page Collection','F07B3A364057068AFB1D09B24B','E7A781CFBA45A3CB44C81D8236',NULL,'2003-05-01 16:31:43',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E31023945AF9EE0A6BBC31F6','F4DD64134EC050E3D0A256EA0D','resource_detail','Resource Detail Page Collection','F07B3A976C284A50C0D07B0DEC','E7A781CFBA45A3CB44C81D8236',NULL,'2003-05-01 16:32:32',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E315E4DD43B835B008E37B6A','F4DD64134EC050E3D0A256EA0D','review','Review Page Collection','F07B3CA6AAD39BFD520EFFEFC0','F50196413176576A64F6F27A86',NULL,'2003-05-07 15:41:10',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E316762262130C29F9EC7336','F4DD64134EC050E3D0A256EA0D','review_detail','Review Detail Page Collection','F07B3CF003DAFE9F27A30978A7','F50196413176576A64F6F27A86',NULL,'2003-05-07 15:41:23',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E836D22CEDB9EFC5D105E617','F4E6A635A8AC141BAE7F98504','main_page','Main Page Collection','EF8E277F34F1C4DE8229CFC10D','25',NULL,'2003-05-02 16:32:54',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E844EA1179FA4B139A9E6E17','F4E6A635A8AC141BAE7F98504','latest_news','Latest News Page Collection','EF8E2AA141B4B44CED456914C8','EE1634B19EB64BB12485263F79',NULL,'2003-05-02 16:49:53',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E84C856B7EA0D8C8D3D79A14','F4E6A635A8AC141BAE7F98504','our_solutions','Our Solutions Page Collection','EF8E2910D6DC72DE5A739B7323','EE163600A2BAD87965E20E9C9A',NULL,'2003-05-02 16:56:53',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E84F74BF3402AF26102517C1','F4E6A635A8AC141BAE7F98504','press_release','Press Release Page Collection','EF8E29F7DF9BD41DE59E1B3273','EE16354AB187B638CC4579F8B6',NULL,'2003-05-02 16:59:53',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E85047C450445D599FDAD93C','F4E6A635A8AC141BAE7F98504','contact_us','Contact Us Page Collection','EF8E28BDB57036C93F24B9B14E','25',NULL,'2003-05-02 17:00:20',NULL,'0000-00-00 00:00:00','0','ic',1),('F4E850BD0DB3A304CB52352701','F4E6A635A8AC141BAE7F98504','about_us','About Us Page Collection','EF8E285DE8A1E858D8BCC33A12','EF76BA4ED5D8F2A21B1933A750',NULL,'2003-05-02 17:00:53',NULL,'0000-00-00 00:00:00','0','ic',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `page_collection` ENABLE KEYS */;

--
-- Table structure for table `page_collection_detail`
--

DROP TABLE IF EXISTS `page_collection_detail`;
CREATE TABLE `page_collection_detail` (
  `id` varchar(28) NOT NULL default '',
  `frontpage_id` varchar(28) NOT NULL default '',
  `collection_id` varchar(28) NOT NULL default '',
  `collection_name` varchar(128) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_collection_detail`
--


/*!40000 ALTER TABLE `page_collection_detail` DISABLE KEYS */;
LOCK TABLES `page_collection_detail` WRITE;
INSERT INTO `page_collection_detail` VALUES ('EE7CCEC7EBD025CE2E745A33BC','EE7CCE9C61D7D9ED63A579A196','EE7C699016F886FEA906FA5DAC','solution_collection',NULL,'2002-10-15 17:04:06',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EE7CCF2894A95BF0BE52502C53','EE7CCE9C61D7D9ED63A579A196','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-10-15 17:04:06',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF5C9A6D0EE02766F78D5E995E','EF3E486027CD676EEB50BB88A7','EF5C9801CA3FF9F3D99A20F1CD','press_release',NULL,'2002-08-04 23:03:28',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EE3993B3B6D98C083DA48BAEE2','EE24CA21C58A6418C358BCB0E2','EE0143B3463ABA91CECFBE588B','Money',NULL,'2002-06-04 16:12:19',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF59056932BC7742D50B060233','EF3E4A1FD930D3F55FE60D71EB','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-04 23:25:01',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF57BFDE15F9455BCA43B9B484','EDF2443813F00F1BF2C6BD8562','EF57BEBF18DC03624A9537EE53','open_job',NULL,'2002-08-04 22:58:54',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF19BDACDF63B1ECFCF96AC30','EE7C72FC589FF167B7B8978BEC','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-08-05 03:43:26',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF575B8E27268DBB013B2F5E3A','EDF2443813F00F1BF2C6BD8562','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 22:58:54',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5717EA5B40E862A3C55186E0','EDF2443813F00F1BF2C6BD8562','EF5C9801CA3FF9F3D99A20F1CD','press_release',NULL,'2002-08-04 22:58:54',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5362322EA0196047862AED2D','EDF2443813F00F1BF2C6BD8562','EF535BF707DC20CA4F0222EAB2','news_collection',NULL,'2002-08-04 22:58:54',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF1F331C952B1A3478439155D9','EEFB3546C96942F32BA73D2837','EF1EEB444F1CC7924207265864','open_job_collection',NULL,'2003-01-27 17:10:06',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF0190FAEC9E71CE606B067B92','EE7CCFEE491A0E3B6A5497D05D','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-10-16 10:31:58',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF040D24BDC1C5FEE5A8C47A62','EE7CCFA78F6D0C6E8C7F0711F6','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-08-05 03:44:03',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF040D0EB7A117DE5BD2D1C7AE','EE7CCFA78F6D0C6E8C7F0711F6','EE7CCC6E6D6BEAA209410E58D5','news_collection',NULL,'2002-08-05 03:44:03',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF041BE2FE8D47DACD4C5B1CCC','EE7CD0F71F15D0FC571C472A3F','EE7CCBBE336CC05ECCC3DEDB04','press_release_front_page',NULL,'2002-10-15 15:31:21',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F0E72D91B615DED0F19E49C156','EE7CD0F71F15D0FC571C472A3F','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-10-15 15:31:21',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F302E0A2197BE69A979548B62','F302E048FD76B0E2FB7B980A33','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-07-07 16:32:35',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('EF1EBC4435AF924D4FEF6F5C97','EEFB3546C96942F32BA73D2837','EE7CCC6E6D6BEAA209410E58D5','news_collection',NULL,'2003-01-27 17:10:06',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF06849CBDE34D9A93748FB9D4','EEFB671AFB98DFAFD13702A2B6','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-10-15 16:01:42',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F0E65012E4AA502872BFF8429B','EEFB66A82BBA981ABDCDD0F336','EFABD73B9F5C8A2AFC1BC06327','about_us',NULL,'2002-10-15 15:02:05',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF19B658E484A1DD1E0075AB37','EF19B5F650A671C3BD83C6CD37','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-08-05 03:45:29',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF581700D87CF46F6354059062','EDF2443813F00F1BF2C6BD8562','EF580C9F50774CC4BBA9C305DC','solution_collection',NULL,'2002-08-04 22:58:54',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF1EFA10081B5826414D85AD18','EF1EF9CA64986834DE8B1107F5','EF1EEB444F1CC7924207265864','open_job_collection',NULL,'2002-08-05 03:45:43',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF1EFA265EDD2CA360DB163024','EF1EF9CA64986834DE8B1107F5','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-08-05 03:45:43',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF1EBC2CB59D56C7C39BF88E3D','EEFB3546C96942F32BA73D2837','EF1EB25BD481435B56271A67D2','solution_main_page',NULL,'2003-01-27 17:10:06',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF1EBC68373A338928D7994487','EEFB3546C96942F32BA73D2837','EE7CCBBE336CC05ECCC3DEDB04','press_release_front_page',NULL,'2003-01-27 17:10:06',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('EF5CB44D817F664FC6A529E9C3','EF3E4C91A4FC8D8B3D69E33A0C','EF5CB147C39DE591879212AE26','our_solutions',NULL,'2002-08-04 23:25:22',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF58A9E268CDB2379A92055E84','EF3E4A1FD930D3F55FE60D71EB','EF58A8B439BA814A7D93B240EA','latest_news',NULL,'2002-08-04 23:25:01',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF58921E3EAB53DADEB4A2F14','EF3E4A1FD930D3F55FE60D71EB','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 23:25:01',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF58DC47E6210D49FAC7E1D48F','EF3E4A1FD930D3F55FE60D71EB','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-04 23:25:01',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF589856E4AFFEA29625B4D04F','EF3E4C91A4FC8D8B3D69E33A0C','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 23:25:22',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF59262051FFDEC6BFA4ACB897','EF3E4C91A4FC8D8B3D69E33A0C','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-04 23:25:22',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5926F573E44F01DED8B86E0E','EF3E4C91A4FC8D8B3D69E33A0C','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-04 23:25:22',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C9A923958C80E61A63F66CE','EF3E486027CD676EEB50BB88A7','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 23:03:28',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C9AB5CF98D570DD72F5FABA','EF3E486027CD676EEB50BB88A7','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-04 23:03:28',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5C9AF01931A8EF63081AAEFD','EF3E486027CD676EEB50BB88A7','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-04 23:03:28',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CEB8ABD83F0B8AC0ECF4179','EF3DD618C889897019A439732','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-05 03:10:45',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CEBA162A64B6AC441156390','EF3DD618C889897019A439732','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-05 03:10:45',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CEBC110ECF397C19296E387','EF3DD618C889897019A439732','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-05 03:10:45',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CFA53E53EBD142352AC8595','EF3E3F0419D7F9729AE28D8D6E','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-04 23:01:14',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CFA69715D2BDDFD861A2B85','EF3E3F0419D7F9729AE28D8D6E','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-04 23:01:14',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D258DA15A675BAC126A5C81','EF3E62C28C692B6F12ABB8444B','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-04 23:26:07',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D256605D365B608A86FC7D7','EF3E62C28C692B6F12ABB8444B','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-04 23:26:07',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D254FAEC62FE52669F347A6','EF3E62C28C692B6F12ABB8444B','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 23:26:07',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D3DDA7539C05234214E3A58','EF3E5B33DB2B41B00EBD520A2D','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-04 23:25:51',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D3DCD55D6AE7483596A65A8','EF3E5B33DB2B41B00EBD520A2D','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-04 23:25:51',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D3DB7CAB851476F575EDCD8','EF3E5B33DB2B41B00EBD520A2D','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 23:25:51',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D4F9D749D11163F7F90B26A','EF5D4EEB993D601978D2A9B1B1','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-04 23:26:39',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D4F80662175766394FAF44F','EF5D4EEB993D601978D2A9B1B1','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-04 23:26:39',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D4F64D0C9EC60504572E039','EF5D4EEB993D601978D2A9B1B1','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 23:26:39',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D65ADD4E2E09809006E5DD3','EF3E65A1E6DA0C6EDDC1849967','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 23:26:23',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D65C1CAF1D9AF93EC42D9B','EF3E65A1E6DA0C6EDDC1849967','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,'2002-08-04 23:26:23',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5D65D15A6A7AE1BB6BBB443D','EF3E65A1E6DA0C6EDDC1849967','EF58D8599C4F377913FD8D1DB0','product_service',NULL,'2002-08-04 23:26:23',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF5CFA33DAFBAE9E6EC439A484','EF3E3F0419D7F9729AE28D8D6E','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,'2002-08-04 23:01:14',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('EF87806CB636E083DAB6938D3F','EF61EBE35B969F4673370B2083','EF877C16F3E59D308B85284D46','latest_news_main',NULL,'2002-08-08 09:56:20',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF6206F048DF663FABC6E386EE','EF620671B2D8FF97E9378AF9F4','EF61F69872E80B522B3F7D1698','cross_selling',NULL,'2002-08-08 11:48:22',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF62ADFAEBDA7526E15F1B403F','EF627EC23B9147AA2660FFB9CA','EF62ABFFD639CEDC6F503B678','product_service_main_collection',NULL,'2002-08-01 07:33:48',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62953974149617601095E241','EF627EC23B9147AA2660FFB9CA','EF6293FFACC7928F2CCCCA37B1','news_main_collection',NULL,'2002-08-01 07:33:48',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF62A5819B8CBD49707542A099','EF627EC23B9147AA2660FFB9CA','EF62A08AAB45C4D0CC1FC6CE06','press_release_main_collection',NULL,'2002-08-01 07:33:48',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF633B66B6B332266A57BD2ABA','EF627EC23B9147AA2660FFB9CA','EF633A256C589D6A8ED8B8A941','press_release_main',NULL,'2002-08-01 07:33:48',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF668AD40FDF6DC31F6FBA00D0','EF6686333E17BA23A91D28BF74','EF66892594573B88F1A1CEC0F3','our_solution_collection',NULL,'2002-08-01 23:07:03',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF66885A6449B52A1F99D6FC37','EF6686333E17BA23A91D28BF74','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,'2002-08-01 23:07:03',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF669BE49796D901D063B3C8DB','EF6692056DD285D1F852EC5517','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,'2002-08-05 03:25:48',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670727F0E6489C0FEAF50A50','EF6706D25EC924ECA1B7B16A67','EF6704F9D5930E81F3D8232AA0','latest_news_collections',NULL,'2002-08-02 01:15:17',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF67073D0F7D924ADE1CBD393C','EF6706D25EC924ECA1B7B16A67','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,'2002-08-02 01:15:17',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670E3CCEA2DCDE4927F647E3','EF670DDA1C2334375FB7DFBC4C','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,'2002-08-02 01:23:02',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF670E4DB6903823CD16001AFC','EF670DDA1C2334375FB7DFBC4C','EF670C78C784ECA3E832D49F41','press_release_collection',NULL,'2002-08-02 01:23:02',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF672855889FA73F7C47A8EEC2','EF6727F71CFE669F4CB952B586','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,'2002-08-02 01:51:26',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF6747B13DBAFCDC25FF6C6ADD','EF67474EAB993A923F9991F26D','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,'2002-08-02 02:28:20',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF6754979CA959D2132A3023A8','EF67542644748EC41A104CDBD6','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,'2002-08-02 02:39:53',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF67955C0D764B66C61C76CC63','EF6775ADB3CB233515945B3C44','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,'2002-08-02 03:58:02',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF76F1C7D21DCD7ECBCE979F12','EF6692056DD285D1F852EC5517','EF76F0C602372C01717F4AD69B','about_us',NULL,'2002-08-05 03:25:48',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C'),('EF76E3FF32BBADE4CCBF7068FD','EF3DD618C889897019A439732','EF76DEAB4E65F944FC318B10F2','about_us',NULL,'2002-08-05 03:10:45',NULL,'0000-00-00 00:00:00','0','ic','ED2E4202F2AE0340726C67A877'),('F302E0B69B512CB8C30864A4A4','F302E048FD76B0E2FB7B980A33','F302DD80386E12F543A34F650','latest_news_main_page',NULL,'2003-07-07 16:32:35',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('EF7711349F2A4ABFAFE6E57A46','EF7710FD241522562748FDB505','EF770FC06E8EF90EA0E86B7EF4','about_us',NULL,'2002-08-05 04:09:00',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF771961A379C0CB755E73A670','EF7710FD241522562748FDB505','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,'2002-08-05 04:09:00',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF774EFAA5BEA1D840D527E7CB','EF774E5BB6704460C14A05B178','EF774C7D03E84F326EDC640E5F','our_solutions',NULL,'2002-08-05 22:16:56',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF774EE7BA2076EBD5590C5853','EF774E5BB6704460C14A05B178','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,'2002-08-05 22:16:56',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B02172818D6951C55D8F67B','EF7710A1291755B321405AB0EF','EF7B00DDED2FDABD09CD662C65','product_service_main',NULL,'2002-08-05 22:44:58',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776F3189A6D5F4958DC8730','EF776ECC8533F1DCD8771A673E','EF776DA97229A12BB7901E9EEE','press_release',NULL,'2002-08-05 22:16:43',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF776F1F29CE5D81D3BC608C8B','EF776ECC8533F1DCD8771A673E','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,'2002-08-05 22:16:43',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF775FE3FE41EB5BF218E9FF2','EF7710A1291755B321405AB0EF','EF775DC852350BB4108EF6BD48','our_solutions_main',NULL,'2002-08-05 22:44:58',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF777031E2CD9CDB45D461A78D','EF7710A1291755B321405AB0EF','EF776F524038C0A0701BD2751C','press_release_main',NULL,'2002-08-05 22:44:58',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B14E86B97F9A8BF549BD1B7','EF7B149A3B1F991DC9DC557434','EF7B1369BAAA94553E83D3C23E','latest_news',NULL,'2002-08-05 22:42:47',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B150931A1CDA946A480DD8A','EF7B149A3B1F991DC9DC557434','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,'2002-08-05 22:42:47',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF7B17060B7D249E271F65D80','EF7710A1291755B321405AB0EF','EF7B157A3BBA63A103A7417FEA','latest_news_main',NULL,'2002-08-05 22:44:58',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF83E87862CAF978CC5FC0BADF','EF83E8305D147F07BDA66CFD87','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,'2002-08-07 16:05:32',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF83E96A9145A9185704B90176','EF83E8C7F3F067529DEEF2976F','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,'2002-08-07 15:51:42',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF83E9F367857C3D47EBF5D9D5','EF83E9957BAD9DACFEB3B99228','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,'2002-08-07 15:52:17',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF83EA8DC460F22E40D63E2F64','EF83EA1701723C106B5DDD79F5','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,'2002-08-07 15:53:01',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2'),('EF87809995F6F696CA8187DBAE','EF61EBE35B969F4673370B2083','EF877DD13084F34A4E13E123C7','press_release_main',NULL,'2002-08-08 09:56:20',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF6208CFF5180792A409B77062','EF620671B2D8FF97E9378AF9F4','EF620774DA99A708D10B48F528','our_solutions',NULL,'2002-08-08 11:48:22',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87CA5E82509D7DF6E3480DE9','EF61EBE35B969F4673370B2083','EF87C834C829B55008B5659662','our_solutions_main1',NULL,'2002-08-08 09:56:20',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87CA70C7876CF1821B82AEA4','EF61EBE35B969F4673370B2083','EF87C954124BE5827E8C5ED93D','our_solutions_main2',NULL,'2002-08-08 09:56:20',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87E6F7E517EB0E6888F3B0FE','EF87E6C46078E6ADE3CC37678A','EF87E5E89B29E72B13DA8407BA','about_us',NULL,'2002-08-08 10:27:36',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF87E7073BBAD2E5CA437E891A','EF87E6C46078E6ADE3CC37678A','EF61F69872E80B522B3F7D1698','cross_selling',NULL,'2002-08-08 10:27:36',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8815B775E58C99231D47469B','EF881575F96BDDA74A2F9F67CF','EF61F69872E80B522B3F7D1698','cross_selling',NULL,'2002-08-08 11:18:35',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF883173FA15C3E9F1E7E92188','EF88311F355F6697A7A15241F6','EF61F69872E80B522B3F7D1698','cross_selling',NULL,'2002-08-08 11:48:58',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF883186A3DFDFC32356980002','EF88311F355F6697A7A15241F6','EF62053D7884A7B7C28B461E87','latest_news',NULL,'2002-08-08 11:48:58',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8CEBB7CC79255EE03ED452BE','EF8CEB306882629A3A349C4DA0','EF61F69872E80B522B3F7D1698','cross_selling',NULL,'2002-08-09 09:50:57',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8CEC741DDD258D0DCCBDE622','EF8CEBFC8737ED0AEB94671FE5','EF61F69872E80B522B3F7D1698','cross_selling',NULL,'2002-08-09 09:51:42',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8CED324F3DC19AB4EBA7BDF7','EF8CECAE032AA95498E258BA5F','EF61F69872E80B522B3F7D1698','cross_selling',NULL,'2002-08-09 10:06:22',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8CEE0FAF9BA3441943446541','EF8CEDB9638E69EAE45AA9C1B4','EF61F69872E80B522B3F7D1698','cross_selling',NULL,'2002-08-09 09:53:28',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8CEE293A8B07ADBA47400E','EF8CEDB9638E69EAE45AA9C1B4','EF62010E6C4C37EEA867611132','press_release',NULL,'2002-08-09 09:53:28',NULL,'0000-00-00 00:00:00','0','ic','EDDCAA0575D694D2560CC2511F'),('EF8E452A3A81ABB81642BC186E','EF8E41866B8177D79F12CAAB4A','EF8E42AF4ADA1F31E1F62D5525','latest_news_main',NULL,'2002-08-09 16:08:16',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E453EE1C955F9ED88F5F0CD','EF8E41866B8177D79F12CAAB4A','EF8E42301D17943E5955D9AA44','press_release_main',NULL,'2002-08-09 16:08:16',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E454FE5B550FFEC9B557D63','EF8E41866B8177D79F12CAAB4A','EF8E433D0E138F733F2D166C00','open_jobs_main',NULL,'2002-08-09 16:08:16',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E45D3B0E40AC2BEB75DC8F','EF8E45713A4A84AC617D643646','EF8E3B3AB9F109C7BF163C0AD7','our_solutions',NULL,'2002-08-09 16:08:52',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E4665E0B54416C61C92CC21','EF8E45F70D38098217F3204833','EF8E3C4ADFBDFB74192B71CB43','latest_news',NULL,'2002-08-09 16:09:31',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E46E386D3B35858B9CDC245','EF8E469192716E4177E8AE9E69','EF8E3D1D196B477841A58FC9A0','press_release',NULL,'2002-08-09 16:10:01',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('EF8E474BBC8C5311EDE33A81C2','EF8E4703CCD3FD17EAF48DB207','EF8E3FA2E9F723DB325F6A7D02','about_us',NULL,'2002-08-09 16:10:27',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3'),('F07B5E40F599772DC989BDDF6','F07B5DECBC9820D2C4A0997697','F07B56FBB0DE46F4CF2AE5698E','press_release_main',NULL,'2002-09-24 17:37:29',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F07B5E2CEEDC7579D4D84A938C','F07B5DECBC9820D2C4A0997697','F07B581DE9BA007DB73EB1BEBC','news_main',NULL,'2002-09-24 17:37:29',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F07B7B7B524FBA50E85DC4AF21','F07B5DECBC9820D2C4A0997697','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-09-24 17:37:29',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F080409CA51AEAE61F3299D0B8','F08040377B159867B63329097A','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-09-25 15:51:22',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F083F30C05F4DD9B0F9C500C6D','F083F2AFBD672047F65BC8E27C','F083F1F7C33EA7F3A9A59BE10A','recipe',NULL,'2002-09-26 09:05:17',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F083F326DB14A97042AF3FFB','F083F2AFBD672047F65BC8E27C','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-09-26 09:05:17',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F083FB8A65178A3567B444D001','F083FA41C296D2549F9BCC92A5','F083F929ABA341797CD38BBE7D','project',NULL,'2002-09-26 09:14:22',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F083FB9E275F80C9487B27D141','F083FA41C296D2549F9BCC92A5','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-09-26 09:14:22',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F0E64E4DD15ADA9CDE624BC01B','F0E64DB4BE71F4619D1F2686B5','EE7CCC6E6D6BEAA209410E58D5','news_collection',NULL,'2002-10-15 11:27:30',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F0E64E1BA03CA64C68493E7DD2','F0E64DB4BE71F4619D1F2686B5','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-10-15 11:27:30',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F08423E2872DBB1C4722C54908','F08423844B51176B81DFF67352','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-09-26 10:02:29',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F08427A94F65C0C100B4905768','F08423844B51176B81DFF67352','F0842659151A5462F92C16E9D1','review',NULL,'2002-09-26 10:02:29',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F0842AA6E7B572EF9D4967C9C3','F0842A677E305275FF9B0053C3','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-09-26 10:05:45',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F08434EEC61A190D68EFEAC340','F084348DB860453D6349097F08','F08432B3F4174A089CD81F3616','resource',NULL,'2002-09-26 10:17:04',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F08435028760B6627CC59BA3D','F084348DB860453D6349097F08','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-09-26 10:17:04',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F08460B384B13DE3BA8B943E78','F0846040A08C2276BB6D12E742','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-09-26 11:04:47',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F09DE3BE6D9B227697E918AEE8','F09DE35103CB6229E57415D40A','F09DE1952B7D669AD21E500D72','press_release',NULL,'2002-10-01 09:58:26',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F09DE3A8D564A56FDD218E9388','F09DE35103CB6229E57415D40A','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-10-01 09:58:26',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F09DBDFA80B965BA01FCDBD874','F09DBD4A6D15B9A4E250AE165','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-10-01 09:17:10',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F09DC390862E42AAB01142D16A','F09DC31E56256DB4D5065F94AD','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-10-01 09:23:17',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F09DC41917377DBE7409BA4FB9','F09DC3B9F4A559FA1B309469B8','F07B796043A756D9E97A3FEFF','cross_selling',NULL,'2002-10-01 09:23:51',NULL,'0000-00-00 00:00:00','0','ic','F07B23B53C6185EACC86EFE1D8'),('F0E712BCC688F71665CE9B892B','EEFB66A82BBA981ABDCDD0F336','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,'2002-10-15 15:02:05',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C'),('F302E0C1C75EBA99873DCBB676','F302E048FD76B0E2FB7B980A33','F302DF2D5C14DB19C7398591BC','services_main_page',NULL,'2003-07-07 16:32:35',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30428B085D48CD98D75C7B11A','F30428329BB897A3EACA58D37A','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-18 10:27:57',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3086EB501936AFC006EE6DF64','F3086E4D9C9B193C48E4E598DD','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-30 15:03:48',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3086FCCE98230D7BB71747123','F3086E4D9C9B193C48E4E598DD','F3086EE25AC268B9D89977E44B','press_release',NULL,'2003-01-30 15:03:48',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3087033F033CE5B6E2D8339B9','F3086FF169FB5CC2E73B72058','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-30 13:31:53',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30DC892DBB52A1329623856F0','F3086FF169FB5CC2E73B72058','F30D7A35F127C9F525D69A4BCE','fact_figure',NULL,'2003-01-30 13:31:53',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30E2A37ED211FA6DFCF8089E8','F30E29C6E333632615BA33F58D','F30D61195A51759F754A534603','press_release_archive',NULL,'2003-01-30 15:25:12',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30E2A234CD87ED228D5E919C8','F30E29C6E333632615BA33F58D','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-30 15:25:12',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30E5EC173CE54FEA75DB2E607','F30E4D1920F5C5815456845B78','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-07 16:50:45',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30E9DAC81662431B9E4A8812','F30E9D6ECC70A75382B764F275','F30D6218D92D6172A83CF70347','news',NULL,'2003-01-30 17:24:38',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30E9DC0282F34862AF2975BF5','F30E9D6ECC70A75382B764F275','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-30 17:24:38',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30E9E2EA2C85D821D38BD68BA','F30E9DDF1A9FE5A589EC5DB77D','F30D62AFC966604EE6B63D5EA','news_archive',NULL,'2003-01-30 17:25:11',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30E9E40A3BC2C9625A7F2F8','F30E9DDF1A9FE5A589EC5DB77D','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-30 17:25:11',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30E9F03A55162262983A765B0','F30E9E5E2E6738CA27D794C38E','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-07 16:50:04',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30EB2B44BA53A24FE85814053','F30EB26FEFEA3B27A2CC02B513','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-18 16:17:38',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30EC0E74E3F5A9204C04AB765','F30EC05E28727D8633FB935398','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-30 18:08:23',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30EC0C98551EDAFB9A0DEC72C','F30EC05E28727D8633FB935398','F30D638087912EB63CFF2413C4','product_service',NULL,'2003-01-30 18:08:23',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30EC175E279E49FCE0D55A043','F30EC104B94B44D0C394CFE15C','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-30 18:08:07',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30EDD1DC758C6FA19E48FD442','F30EDC9FCD7E6B1169454FF8D0','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-30 18:33:50',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F30EF302A325EAD70C9633D572','F30EF2941AA7B9AF80B963B9C3','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-18 11:20:34',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312C003EEC87F74148D0A40AF','F312BF4F635BA82668D772E458','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-31 12:40:43',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312C01321252B5D96644980B3','F312BF4F635BA82668D772E458','F312B7926E1BA7B9EEAAB39558','dewan_komisaris',NULL,'2003-01-31 12:40:43',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312C02E4A1C2280D798DA8CFD','F312BF4F635BA82668D772E458','F312B82623C31410C34434A7B3','dewan_direksi',NULL,'2003-01-31 12:40:43',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312CEE234E959AA6F0F63D7AD','F312CE723436BEEC0D74D9DD88','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-01-31 12:56:46',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312F2693C9D81BA7126CE30AF','F312F1E8E1CA99D4801813532A','F30D64A967EC8A114463B155EC','company_structure',NULL,'2003-03-20 14:59:22',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F312F2593FB754049303C0E703','F312F1E8E1CA99D4801813532A','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-20 14:59:22',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A15518B277D059347755E09','F3133567EE10690EBB0B862E93','F40A12670642457146FE92A5BF','company_lob_logging',NULL,'2003-03-20 13:23:46',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F31335E7DC2200AA16513692A0','F3133567EE10690EBB0B862E93','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-20 13:23:46',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A151ACCBAFDC9D4A842A2F4','F3133567EE10690EBB0B862E93','F3133249977BD2C0636E037D23','company_lob_plantation',NULL,'2003-03-20 13:23:46',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A14B53CFA10D541E296D3A9','F3133567EE10690EBB0B862E93','F31330D19DFD3F3245616F57B0','company_lob_horticulture',NULL,'2003-03-20 13:23:46',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A1533C2D659E3AEE891DE9F','F3133567EE10690EBB0B862E93','F3133322C1D43F2988CD387324','company_lob_mining',NULL,'2003-03-20 13:23:46',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F322DD266AB2442C28B6F4E4B5','F322DCAC8723CABF95DD7086A9','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-20 13:24:01',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F322DDC2AA22D3016B2191A665','F322DD58B5AB5151C43B3F6709','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-20 13:24:18',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F322DE4A8720FB3CA4CB3D5F77','F322DDE15D751BAD950CD86091','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-20 13:30:35',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F322DEC91E4066F002D6F6A1BD','F322DE707E9AE4A7E1D345A1EA','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-20 13:25:40',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF5B220CD2B19D1944A36E99','F30EF2941AA7B9AF80B963B9C3','F3FF58FF3B49C217BA449F6849','makin_subsidiary',NULL,'2003-03-18 11:20:34',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF2B1766C7B6C4D56D5C5EBA','F30428329BB897A3EACA58D37A','F3FF22FA60FDC1B3F09C2A27AF','sitemap',NULL,'2003-03-18 10:27:57',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40068C3AE2C4761F55BA146FB','F30EB26FEFEA3B27A2CC02B513','F40025C7BB2B1555515A1FF83F','head_office',NULL,'2003-03-18 16:17:38',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F4006B3A9AFC9AB611DC56B129','F30EB26FEFEA3B27A2CC02B513','F4006A4702C02EC8B03504B154','branch_office',NULL,'2003-03-18 16:17:38',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A154259B3DC6FC0BD54D27C','F3133567EE10690EBB0B862E93','F31333E67F5209AE9B31726965','company_lob_others',NULL,'2003-03-20 13:23:46',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A237098D33ABDDF6F5DD918','F40A22BD46954B5768899D5880','F302DC45188ECE996BB4E65A63','cross_selling',NULL,'2003-03-20 13:35:22',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F4D34F379CB5AD858A63D3C0F2','F4D34CF976FEFDC0031BF21231','F4D345059E58F35226610428E3','solution_main_page',NULL,'2003-04-28 15:07:34',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D34F837036C4F825A0A5DD05','F4D34CF976FEFDC0031BF21231','F4D34862CECEC33E7A3DFBF2F6','news_collection',NULL,'2003-04-28 15:07:34',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D34F929593DA8E4EA031CBCA','F4D34CF976FEFDC0031BF21231','F4D34917CF2D95241724082D6E','press_release_front_page',NULL,'2003-04-28 15:07:34',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D34FA0FE837B0970EBE16007','F4D34CF976FEFDC0031BF21231','F4D34AE05BA664870CE107F5C4','open_job_collection',NULL,'2003-04-28 15:07:34',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D3EAC4AFF9EC55AF0E9E99CD','F4D3EA76EC7E38868A98D211E4','F4D332FCE8E1713BFFA339672F','cross_selling',NULL,'2003-04-28 17:56:49',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D3EAD4BF583912E3CBEFE074','F4D3EA76EC7E38868A98D211E4','F4D3E9C42018508CFBD44C1F7F','solution_collection',NULL,'2003-04-28 17:56:49',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D7731C6771C800FA748A924F','F4D7722D457F9DBC01ACE2093E','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,'2003-04-29 10:40:17',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D772922081B471EF9B4F7796','F4D7722D457F9DBC01ACE2093E','F4D77D9A595E11607831E05333','press_release',NULL,'2003-04-29 10:40:17',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D777DB3CA22054DB63F1879F','F4D7773B104E76B596FE4C8EA2','F4D332FCE8E1713BFFA339672F','cross_selling',NULL,'2003-04-29 10:29:42',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D78857B56956BAC72349EE6D','F4D787ECE9AB7757B6558460FE','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,'2003-04-29 10:47:52',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D7886F137C71577D3D9B8309','F4D787ECE9AB7757B6558460FE','F4D7872202EEF42DB1BEE35CAD','news_collection',NULL,'2003-04-29 10:47:52',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D79003137EC41483E76F009E','F4D78F564380A4DE230A7DBC32','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,'2003-04-29 10:56:07',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D7923293DBBF9C83B48EE4C5','F4D791BE062178F471B508C22B','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,'2003-04-29 10:58:44',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D79245BBBB296F6634EC53C5','F4D791BE062178F471B508C22B','F4D7908E18A0B591AD5B35C429','about_us',NULL,'2003-04-29 10:58:44',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D793208E67DD0B5AE29EA87B','F4D792B97C276DF5E284D80319','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,'2003-04-29 10:59:38',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D798EFB97DC22EAC0668BCA8','F4D7987BCFE17D999E624D07EA','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,'2003-04-29 11:06:46',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D799BAA343D2AA40F27FB031','F4D7987BCFE17D999E624D07EA','F4D34AE05BA664870CE107F5C4','open_job_collection',NULL,'2003-04-29 11:06:46',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4D7A0B65B45F24B566B3E6BDC','F4D7A0504C9C4965B7196DE421','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,'2003-04-29 11:14:21',NULL,'0000-00-00 00:00:00','0','ic','F4D30718756B8401E43FD2AAE6'),('F4E2FA2C693CF8C2E28AA1AEEA','F4DD69BB6BA68346E2E76955C3','F4E2F93A23C96AF5243A648900','press_release_main',NULL,'2003-05-07 13:46:11',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4DD6A0574988FB9829DA108C0','F4DD69BB6BA68346E2E76955C3','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-07 13:46:11',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E2C92D01551BC06A423FF220','F4E2C8BC14DF149A4E9EEAABFF','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-01 15:14:22',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E2D735F1AD88C166DE45A97B','F4E2D6DD05510DEA09BC27F562','F4E2D64CF8DDBED197CF1D4EC7','press_release',NULL,'2003-05-01 15:29:46',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E2D749F4DA1DD43913860AE4','F4E2D6DD05510DEA09BC27F562','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-01 15:29:46',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4DD6A1ECA171ACFD11890F6E0','F4DD69BB6BA68346E2E76955C3','F4DD6885A1EF5A5916B28F0DE0','review_main',NULL,'2003-05-07 13:46:11',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E2FE792EC6453AC847E1C729','F4E2FDFB28EC2FC5316E2A6037','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-01 16:12:35',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E3034C606505BBCF4DAF40FF','F4E302D3A8DB6ECA572660F6DB','F4E30221D6345730817DF8B10B','project',NULL,'2003-05-07 16:23:33',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E3033C4E7F534F5E8450C333','F4E302D3A8DB6ECA572660F6DB','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-07 16:23:33',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E3040DB5CEDEF7F7412C800D','F4E303A198252225633D919401','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-07 16:24:14',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E3087D847DD3873573183068','F4E308109A9463EE134F00315C','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-07 15:40:25',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E30866F2DD9E1A6CE89DEB8C','F4E308109A9463EE134F00315C','F4E30766D4F6B10B77D890862C','recipe',NULL,'2003-05-07 15:40:25',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E30934F49DCFA91BB4007F0B','F4E3089F82B65B4A287DE7A947','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-07 15:40:56',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E30FF27F81697A4F572203D9','F4E30F51613E371778C736F03A','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-01 16:31:43',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E31003831696F6A977E07323','F4E30F51613E371778C736F03A','F4E30E4255F0C0ECA9CF12C58D','resource',NULL,'2003-05-01 16:31:43',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E310BDC0EAEDA84C5356E124','F4E31023945AF9EE0A6BBC31F6','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-01 16:32:32',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E31652A03850152AAD62BBF2','F4E315E4DD43B835B008E37B6A','F4E315146AC0D62352296671C6','review',NULL,'2003-05-07 15:41:10',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E3163EB0C07545FF8CB8369','F4E315E4DD43B835B008E37B6A','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-07 15:41:10',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E316E68F180CCC95083E0081','F4E316762262130C29F9EC7336','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,'2003-05-07 15:41:23',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F4E83738B1B63E20A689FAED90','F4E836D22CEDB9EFC5D105E617','F4E8349537A24F34C2BADB1136','press_release_main',NULL,'2003-05-02 16:32:54',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E8374DDC89D87CF4978D7F5C','F4E836D22CEDB9EFC5D105E617','F4E8355C0D223308A5E405F8C3','latest_news_main',NULL,'2003-05-02 16:32:54',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E8375BF0F30FBAA645AE2896','F4E836D22CEDB9EFC5D105E617','F4E8361B7E88B3E21FDEC4E502','our_solutions_main',NULL,'2003-05-02 16:32:54',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E846ABDAB6C89F0971B477B0','F4E844EA1179FA4B139A9E6E17','F4E83EF7F42ADCFA4C089A7267','latest_news',NULL,'2003-05-02 16:49:53',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E84D4A26BB462C54B77A558','F4E84C856B7EA0D8C8D3D79A14','F4E841228EF31C223EC4C3C44','our_solutions',NULL,'2003-05-02 16:56:53',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E8500676BEDF02A6E01A6E86','F4E84F74BF3402AF26102517C1','F4E84237BF3A0CE289DCA92CD4','press_release',NULL,'2003-05-02 16:59:53',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F4E851FBE8276BC3A726A000C6','F4E850BD0DB3A304CB52352701','F4E85130966839B75E0A0C8C90','about_us',NULL,'2003-05-02 17:01:58',NULL,'0000-00-00 00:00:00','0','ic','F4E6A635A8AC141BAE7F98504'),('F5015E47821A4F46DF1B821465','F4DD69BB6BA68346E2E76955C3','F5015CD1D2ED0D963111F06942','recipe_main',NULL,'2003-05-07 13:46:11',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D'),('F5015E8F30CE32515C3B663358','F4DD69BB6BA68346E2E76955C3','F5015D733AF172E8FBC3427079','resource_main',NULL,'2003-05-07 13:46:11',NULL,'0000-00-00 00:00:00','0','ic','F4DD64134EC050E3D0A256EA0D');
UNLOCK TABLES;
/*!40000 ALTER TABLE `page_collection_detail` ENABLE KEYS */;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL default '0',
  `accountNr` varchar(255) default NULL,
  `agentNr` varchar(255) default NULL,
  `amount` decimal(19,2) default NULL,
  `amountMentioned` varchar(255) default NULL,
  `bank` varchar(255) default NULL,
  `bankTransferAccount` varchar(255) default NULL,
  `bankTransferAddress` varchar(255) default NULL,
  `bankTransferName` varchar(255) default NULL,
  `formNr` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `paymentType` varchar(255) default NULL,
  `receiptNr` varchar(255) default NULL,
  `reportStatus` varchar(255) default NULL,
  `salesOffice` varchar(255) default NULL,
  `date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--


/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
LOCK TABLES `payment` WRITE;
INSERT INTO `payment` VALUES (1,'sdf','fsdsd','123.00','','sdf','','sdf','sdf','sdf','',NULL,'fdsf','none','','2005-07-29');
UNLOCK TABLES;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
CREATE TABLE `poll` (
  `id` varchar(28) NOT NULL default '',
  `question` varchar(50) NOT NULL default '',
  `option1` varchar(50) NOT NULL default '',
  `option2` varchar(50) default NULL,
  `option3` varchar(50) default NULL,
  `option4` varchar(50) default NULL,
  `option5` varchar(50) default NULL,
  `option6` varchar(50) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--


/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
LOCK TABLES `poll` WRITE;
INSERT INTO `poll` VALUES ('EEB4EFB2DA2B96EC3AEFA3A17A','hgfhgf','ghgh','','','','','',1,'EEA063FE983851E','2002-06-28 11:17:10',NULL,'0000-00-00 00:00:00','ic','ED2E4202F2AE0340726C67A877');
UNLOCK TABLES;
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;

--
-- Table structure for table `press_release`
--

DROP TABLE IF EXISTS `press_release`;
CREATE TABLE `press_release` (
  `id` varchar(28) NOT NULL default '',
  `display_style` varchar(20) default NULL,
  `source` varchar(50) default NULL,
  `file_name` varchar(50) default NULL,
  `path` varchar(50) default NULL,
  `headline` varchar(100) default NULL,
  `subheadline` varchar(100) default NULL,
  `abstract` text,
  `body` text,
  `linktext` varchar(50) default NULL,
  `byline` varchar(50) default NULL,
  `creditline` varchar(50) default NULL,
  `copyright` varchar(50) default NULL,
  `editor_notes` text,
  `keywords` varchar(50) default NULL,
  `transmitted_date_time` datetime default '0000-00-00 00:00:00',
  `news_topic_id` varchar(50) default NULL,
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `press_release`
--


/*!40000 ALTER TABLE `press_release` DISABLE KEYS */;
LOCK TABLES `press_release` WRITE;
INSERT INTO `press_release` VALUES ('F5401A6980C10268C5DF7005CE',NULL,NULL,NULL,NULL,'Lestari choose Intercitra as Everest implementation','','Lestaribusana Anggunmahkota choose Everest Enterprise as their accounting information system.','Lestaribusana Anggunmahkota choose Everest Enterprise as their accounting information system. \r<br>\r<br>The system will connect head office at Lippo Plaza, Sudirman Street with factory office and manufacturing plant at Ciputat.\r<br>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2004-04-19 11:56:37','F36F8BFFF97F8A16505B8305F7','2004-04-19 11:56:37','E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6'),('F5F82196D149F00E113012FB58',NULL,NULL,NULL,NULL,'BlueOxygen Development Framework June 2003','Java Open Source and Mobile Collection','Try this, and you can create a killer business applicaition in a zap.','BlueOxygen Development Framework is a collection of more than 200 Open Source Java Project and several development tools for Java and Mobile Java.<br>\r\n\r\nYou can see the edition (without the file) at <a href=\"http://www.blueoxygen.org/distro\">BlueOxygen Dev Framework</a> Website.',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'F5F824556274AFE826C44E051Dbo2-logo.jpg','F5F82587C675C8C52206D536B7bo2-logo.jpg',NULL,NULL,'F501555A2ECD5AC8FCC32F4DD6','2003-06-24 11:49:56','F501555A2ECD5AC8FCC32F4DD6','2003-06-24 11:49:56','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F5400D99CA1809BEA6DD57D847',NULL,NULL,NULL,NULL,'Makin Group Integrated Portal','','Makin Group choose Intercitra as their technology partner to develop a integrated collaboration system.','Makin Group has made some tremendous changes on their corporate strategy. With the full online system that connect customer and their internal employee that separate across multiple area (Borneo, Andalas, Sulawesi and Java).<br>\r\n',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-19 17:54:39',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6'),('F54001CA03A28F1A4E0D150871',NULL,NULL,NULL,NULL,'Guerilla Innovation Soft Launch','Guerilla Innovation Soft Launch','We launch the Guerilla Innovation web site. A website for all innovative and creative people. ','We launch the Guerilla Innovation web site. A website for all innovative and creative people. <p> We invite you to join and promote Guerilla to your company and take benefit of this magic box.',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-19 17:43:23',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6'),('F53FFF216F58A0CC0F716FB3D0',NULL,NULL,NULL,NULL,'Guerilla Innovation Website go to production.','Guerilla Innovation Website go to production.','Guerilla Innovation Website go to production.','Jakarta, 16 August 2002, a day before Indonesian Independent Day. We launch Guerilla Innovation Website. A website that is designed to become a gateway of all marketing gurus and e-business gurus. <p> We hope this website can open a new approach to implement an e-business in a new way, and to approach new way to do a marketing campaign.<p>\r\nVisit the Guerilla Innovation initiative website at <a href=\"http://www.guerilla-forum.org\">www.guerilla-forum.org</a>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-19 17:38:32',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6'),('F53FFB2B6CF788143D4C096953',NULL,NULL,NULL,NULL,'Vico Oil and Gas Company Migration','Vico Oil and Gas Company Migration','Migrate smoothly from VMX system to new Oracle powered system back by Sun Microsystem technology.','Vico has run their business from 1980s using Fortran based system that connected with Ingres Database. <br><br>Now, their system is powered by Oracle Developer, run on top of Sun Solaris.<br><br>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-19 17:34:38',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6'),('F4E2F7B554DE304AF29A6E9603',NULL,NULL,NULL,NULL,'BlueOxygen relaunching','BlueOxygen relaunching again...','Relaunch of BlueOxygen.org Website','After several issue and problem. We are relaunching blueoxygen.org, and we want to say sorry to our contributor for our cimande project. Our project now in Source Forge, you can visit at <a href=\"http://cimande.sf.net\">SF.net</a><p>\r\n\r\nWe need contributor to this project. <p>\r\n\r\nFor more information you can email <a href=\"mailto:frans@blueoxygen.org\">me</a>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'F520754FC13282086D2B779255bo2-logo.jpg','F520754FC13282086D2B779255bo2-logo.jpg',NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-13 14:39:06','F36F8BFFF97F8A16505B8305F7','2003-05-13 14:39:06','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F9887285B84902ED7D2E597EEB',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-12-18 15:27:47',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F4DD64134EC050E3D0A256EA0D');
UNLOCK TABLES;
/*!40000 ALTER TABLE `press_release` ENABLE KEYS */;

--
-- Table structure for table `press_release_portal`
--

DROP TABLE IF EXISTS `press_release_portal`;
CREATE TABLE `press_release_portal` (
  `id` varchar(28) NOT NULL default '',
  `display_style` varchar(20) default NULL,
  `source` varchar(50) default NULL,
  `file_name` varchar(50) default NULL,
  `path` varchar(50) default NULL,
  `headline` varchar(100) default NULL,
  `subheadline` varchar(100) default NULL,
  `abstract` text,
  `body` text,
  `linktext` varchar(50) default NULL,
  `byline` varchar(50) default NULL,
  `creditline` varchar(50) default NULL,
  `copyright` varchar(50) default NULL,
  `editor_notes` text,
  `keywords` varchar(50) default NULL,
  `transmitted_date_time` datetime default '0000-00-00 00:00:00',
  `news_topic_id` varchar(50) default NULL,
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `press_release_portal`
--


/*!40000 ALTER TABLE `press_release_portal` DISABLE KEYS */;
LOCK TABLES `press_release_portal` WRITE;
INSERT INTO `press_release_portal` VALUES ('F3C7E607AC71DAEC61401BA2D6',NULL,NULL,NULL,NULL,'Test Headline','test subheadline','Teman adalah Hadiah dari Yang Di Atas Buat Kita','<DIV><FONT size=4>Teman adalah Hadiah dari Yang Di Atas Buat \r\n      Kita<BR></FONT><BR>Seperti hadiah, ada yang bungkusnya bagus dan ada yang \r\n      bungkusnya jelek.<BR>Yang bungkusnya bagus punya wajah rupawan, atau \r\n      kepribadian yang menarik.<BR>Yang bungkusnya jelek punya wajah biasa saja, \r\n      atau kepribadian yang biasa<BR>saja, atau malah \r\n      menjengkelkan.<BR><BR>Seperti hadiah, ada yang isinya bagus dan ada yang \r\n      isinya jelek. Yang<BR>isinya bagus punya jiwa yang begitu indah sehingga \r\n      kita terpukau ketika berbagi<BR>rasa dengannya, ketika kita tahan \r\n      menghabiskan waktu berjam-jam saling<BR>bercerita dan menghibur, menangis \r\n      bersama, dan tertawa bersama. Kita<BR>mencintai dia dan dia mencintai \r\n      kita.<BR><BR>Yang isinya buruk, punya jiwa yang terluka. Begitu dalam \r\n      luka-lukanya<BR>sehingga jiwanya tidak mampu lagi mencintai, justru karena \r\n      ia tidak<BR>merasakan cinta dalam hidupnya. Sayangnya yang kita tangkap \r\n      darinya<BR>seringkali justru sikap penolakan, dendam, kebencian, iri \r\n      hati,<BR>kesombongan, amarah, dll. Kita tidak suka dengan jiwa-jiwa \r\n      semacam ini dan mencoba menghindar dari mereka. Kita tidak tahu bahwa itu \r\n      semua BUKANlah karena<BR>mereka pada dasarnya buruk, tetapi ketidakmampuan \r\n      jiwanya memberikan cinta<BR>karena justru ia membutuhkan cinta kita, \r\n      membutuhkan empati kita, kesabaran<BR>dan keberanian kita untuk \r\n      mendengarkan luka-luka terdalam yang memasung<BR>jiwanya.<BR><BR>Bagaimana \r\n      bisa kita mengharapkan seseorang yang terluka lututnya berlari<BR>bersama \r\n      kita? Bagaimana bisa kita mengajak seseorang yang takut air<BR>berenang \r\n      bersama? Luka di lututnya dan ketakutan terhadap airlah yang \r\n      mesti<BR>disembuhkan, bukan mencaci mereka karena mereka tidak mau berlari \r\n      atau<BR>berenang bersama kita. Mereka tidak akan bilang bahwa \"lutut\" \r\n      mereka luka<BR>atau mereka takut air\", mereka akan bilang bahwa mereka \r\n      tidak suka berlari<BR>atau mereka akan bilang berenang itu membosankan \r\n      dll.<BR><BR>Its a defense mechanism. Itulah cara mereka mempertahankan \r\n      diri. Mereka<BR>tidak akan bilang: \"Aku tidak bisa menari\" ...... tapi \r\n      Mereka akan bilang<BR>\"Menari itu tidak menarik.\"<BR>\" Aku membutuhkan \r\n      kamu\"<BR>\"Tidak ada yang cocok denganku.\"<BR>\"Aku \r\n      kesepian\"<BR>\"Teman-temanku sudah lulus semua\"<BR>\"Aku butuh \r\n      diterima\"<BR>\"Aku ini buruk, siapa yang bakal tahan denganku..\"<BR>\"Aku \r\n      ingin didengarkan\"<BR>\"Kisah hidupku membosankan..\"<BR><BR>Mereka semua \r\n      hadiah buat kita, entah bungkusnya bagus atau jelek, entah<BR>isinya bagus \r\n      atau jelek. Dan jangan tertipu oleh kemasan. Hanya ketika kita<BR>bertemu \r\n      jiwa-dengan-jiwa, kita tahu hadiah sesungguhnya yang sudah<BR>disiapkanNya \r\n      buat kita. Berikanlah makna di dlm kehidupan Anda bukan hanya<BR>untuk \r\n      diri Anda sendiri saja melainkan juga untuk membahagiakan \r\n      sesama<BR>manusia di dlm lingkungan kehidupan Anda. Berikanlah \r\n      waktu<BR>Anda dgn digabung oleh rasa kasih!<BR><BR>Seorang sahabat sama \r\n      seperti satu permata yg tak ternilai harganya.<BR>Seorang kawan bisa \r\n      membuat kita ceria, membuat kita terhibur.<BR>Mereka meminjamkan kupingnya \r\n      kepada kita pada saat kita membutuhkannya.<BR>Mereka bersedia membuka hati \r\n      maupun perasaannya untuk berbagi suka dan duka<BR>dgn kita pada saat kita \r\n      membutuhkannya.<BR><BR>Maka dari itu janganlah buang waktu yg Anda miliki, \r\n      janganlah sia-sia akan<BR>waktu yg sedemikian berharganya. Bagikanlah \r\n      sebagian dari waktu yg Anda<BR>miliki untuk seorang kawan. Pasti waktu yg \r\n      Anda berikan tsb akan berbalik<BR>kembali seperti juga satu lingkaran \r\n      walaupun terkadang kita tidak tahu<BR>dari mana dan dari siapa \r\n      datangnya.<BR><BR>Sumber: Unknown (Tidak Diketahui)</DIV></TD></TR>\r\n  <TR>\r\n    <TD id=INCREDIFOOTER width=\"100%\">\r\n      <TABLE cellPadding=0 cellSpacing=0 width=\"100%\">\r\n        <TBODY>\r\n        <TR>\r\n          <TD width=\"100%\"></TD>\r\n          <TD align=middle id=INCREDISOUND vAlign=bottom></TD>\r\n          <TD align=middle id=INCREDIANIM \r\n  vAlign=bottom></TD></TR></TBODY></TABLE></TD></TR>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'F40AEF18A490010BE7D27D9125img2.gif','F4096ED80D84A086FE268FF309img3.gif','','F40AEF18B4905EFAB58488D725logo1.jpg','F162B448063A847319E641EF7D','2003-03-27 17:17:59','F162B448063A847','2003-03-27 17:17:59','0','ic','F185BD3FDC5CC7989A3CED51A1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `press_release_portal` ENABLE KEYS */;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
CREATE TABLE `priority` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(125) NOT NULL default '',
  `description` varchar(125) default NULL,
  `url_image` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `priority`
--


/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
LOCK TABLES `priority` WRITE;
INSERT INTO `priority` VALUES ('F29B5E6EEA4F8502216737425D','Blocked','Priority Blocked','F29B5EF725937306B8265239E3priority_blocker.gif','F162B448063A847','2003-01-08 08:19:37',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F29B5F01575A67C4CEF5B0AFC0','Major','Priority Major','F29B5F564D16EA3B3DED9DBBC2priority_major.gif','F162B448063A847','2003-01-08 08:20:02',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F29B5F9EFED0C98D41D5D9C0A0','Minor','Priority Minor','F29B5FEDCA515419A7879AF3B2priority_minor.gif','F162B448063A847','2003-01-08 08:20:40',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F29B60033659548CF158DD9A0D','Trivial','Priority Trivial','F29B6072E87EC22AE5B328CE84priority_trivial.gif','F162B448063A847','2003-01-08 08:21:14',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F');
UNLOCK TABLES;
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` varchar(28) NOT NULL default '',
  `price` int(11) default NULL,
  `supplier` varchar(255) default NULL,
  `unit` int(11) default NULL,
  `description` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `measure` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `update_by` varchar(28) default NULL,
  `create_date` datetime default '0000-00-00 00:00:00',
  `update_date` datetime default '0000-00-00 00:00:00',
  `active_flag` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--


/*!40000 ALTER TABLE `product` DISABLE KEYS */;
LOCK TABLES `product` WRITE;
INSERT INTO `product` VALUES ('ff80808105958430010595861f60',0,'',0,'dsad','ayam','Kg','1','1','2005-08-08 00:00:00','2005-08-08 00:00:00',1),('ff808081059953c7010599569ce6',0,'',0,'sasasa','dapur','Pieces','1','1','2005-08-09 10:44:14','2005-08-09 10:44:14',1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` varchar(28) NOT NULL default '',
  `pcategory_name` varchar(25) NOT NULL default '',
  `pcategory_desc` varchar(35) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--


/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
LOCK TABLES `product_category` WRITE;
INSERT INTO `product_category` VALUES ('ED8B64721650D7ABF0F6E1291F','Accessories','',1,'EACA3FDC25B52DC','2002-05-01 16:37:49',NULL,'0000-00-00 00:00:00','0','ic',NULL),('ED8B648B836E84B9420B178EAE','Spare parts','',1,'EACA3FDC25B52DC','2002-05-01 16:37:54',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;

--
-- Table structure for table `product_opportunity`
--

DROP TABLE IF EXISTS `product_opportunity`;
CREATE TABLE `product_opportunity` (
  `product_id` varchar(28) NOT NULL default '',
  `opportunity_id` varchar(28) NOT NULL default '',
  PRIMARY KEY  (`opportunity_id`,`product_id`),
  KEY `product_id` (`product_id`),
  KEY `opportunity_id` (`opportunity_id`),
  KEY `product_id_2` (`product_id`),
  KEY `opportunity_id_2` (`opportunity_id`),
  KEY `product_id_3` (`product_id`),
  KEY `opportunity_id_3` (`opportunity_id`),
  KEY `product_id_4` (`product_id`),
  KEY `opportunity_id_4` (`opportunity_id`),
  KEY `product_id_5` (`product_id`),
  KEY `opportunity_id_5` (`opportunity_id`),
  KEY `product_id_6` (`product_id`),
  KEY `opportunity_id_6` (`opportunity_id`),
  KEY `product_id_7` (`product_id`),
  KEY `opportunity_id_7` (`opportunity_id`),
  KEY `product_id_8` (`product_id`),
  KEY `opportunity_id_8` (`opportunity_id`),
  KEY `product_id_9` (`product_id`),
  KEY `opportunity_id_9` (`opportunity_id`),
  KEY `product_id_10` (`product_id`),
  KEY `opportunity_id_10` (`opportunity_id`),
  KEY `product_id_11` (`product_id`),
  KEY `opportunity_id_11` (`opportunity_id`),
  KEY `product_id_12` (`product_id`),
  KEY `opportunity_id_12` (`opportunity_id`),
  KEY `product_id_13` (`product_id`),
  KEY `opportunity_id_13` (`opportunity_id`),
  KEY `product_id_14` (`product_id`),
  KEY `opportunity_id_14` (`opportunity_id`),
  KEY `product_id_15` (`product_id`),
  KEY `opportunity_id_15` (`opportunity_id`),
  KEY `product_id_16` (`product_id`),
  KEY `product_id_17` (`product_id`),
  KEY `opportunity_id_16` (`opportunity_id`),
  KEY `product_id_18` (`product_id`),
  KEY `opportunity_id_17` (`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_opportunity`
--


/*!40000 ALTER TABLE `product_opportunity` DISABLE KEYS */;
LOCK TABLES `product_opportunity` WRITE;
INSERT INTO `product_opportunity` VALUES ('ff80808105958430010595861f60','ff80808105958430010595867b45'),('ff808081059953c7010599569ce6','ff80808105958430010595867b45'),('ff80808105958430010595861f60','ff808081059f5ac301059f62adac');
UNLOCK TABLES;
/*!40000 ALTER TABLE `product_opportunity` ENABLE KEYS */;

--
-- Table structure for table `project_category`
--

DROP TABLE IF EXISTS `project_category`;
CREATE TABLE `project_category` (
  `id` varchar(28) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  `iparentcode` varchar(28) default NULL,
  `url_category_image` varchar(255) default NULL,
  `description` varchar(125) NOT NULL default '',
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_category`
--


/*!40000 ALTER TABLE `project_category` DISABLE KEYS */;
LOCK TABLES `project_category` WRITE;
INSERT INTO `project_category` VALUES ('F7D6D340DBE94436A979AEEF0C','TMN','','F7D6D5952581C7D46853720D3E01.gif','Taman',1,'F162B448063A847319E641EF7D','2003-12-18 10:57:28','F36F8BFFF97F8A16505B8305F7','2003-12-18 10:57:28','0','ic','F74B696E86AA0CA5819A4FB36C');
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_category` ENABLE KEYS */;

--
-- Table structure for table `project_doc_upload`
--

DROP TABLE IF EXISTS `project_doc_upload`;
CREATE TABLE `project_doc_upload` (
  `id` varchar(28) NOT NULL default '',
  `project_id` varchar(28) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  `file_desc` varchar(255) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_doc_upload`
--


/*!40000 ALTER TABLE `project_doc_upload` DISABLE KEYS */;
LOCK TABLES `project_doc_upload` WRITE;
INSERT INTO `project_doc_upload` VALUES ('F7E18EB7C055EFA3BA5502AF92','F7E15AF81C4EE1CE1024ECB170','F7E18EB7C055EFA3BA5502AF92devil-little.gif','test','F162B448063A847319E641EF7D','2003-09-27 12:39:11',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('FAF50BF694DCAFDE2D51560DFD','F969A328D2B4E2FACE7F3CB59D','FAF50BF694DCAFDE2D51560DFDERD System Design##Activity Tracking.doc','Disain untuk modul Activity Tracking project fase I',NULL,'2004-02-27 10:37:06',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F8153309DC43FC74DE7BF248C4','F81531366ECC267317ED1FF968','F8153309DC43FC74DE7BF248C4bintang.gif','doc2','F36F8BFFF97F8A16505B8305F7','2003-11-11 12:51:40',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('F81532F18772464EC3D9A95EF4','F81531366ECC267317ED1FF968','F81532F18772464EC3D9A95EF4boneka.gif','doc1','F36F8BFFF97F8A16505B8305F7','2003-11-11 12:51:40',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('F8166CE328632114D995834EC4','F81531366ECC267317ED1FF968','F8166CE328632114D995834EC4ask.gif','test document','F36F8BFFF97F8A16505B8305F7','2003-11-11 12:51:40',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('F9359A66B6806D1CFC9A16F1','F8CF4DAED752F9C07B439B29EB','F9359A66B6806D1CFC9A16F1detail.jsp','test add reference pake email','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('F9A7B4EC56A9B45C110D211BD0','F8FD820EF33CAB30DE0E5CC501','F9A7B4EC56A9B45C110D211BD0KOP SURAT.doc','New Reference','F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:19',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('FA7E7D6E23FAFD6A54F3891471','F969A328D2B4E2FACE7F3CB59D','FA7E7D6E23FAFD6A54F3891471lorem-ipsum.txt','lorem ipsum',NULL,'2004-02-04 10:06:13',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F93F24FB2FDEAA215486A86126','F8CF4DAED752F9C07B439B29EB','F93F24FB2FDEAA215486A86126contoh-blog.txt','Add R\'eference','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('F9364D738F270A61CCF54D6B0F','F8CF4DAED752F9C07B439B29EB','F9364D738F270A61CCF54D6B0FIcon7EFDA3AC3.txt','test re\'ference','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('F935929B43E25333B9C8636533','F8CF4DAED752F9C07B439B29EB','F935929B43E25333B9C8636533sql1.txt','Test \'ada apa\'','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('F93594F9728092C0AE94FD5149','F8CF4DAED752F9C07B439B29EB','F93594F9728092C0AE94FD5149localhost_aconix_log.2003-11-05.txt','test','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C'),('F8CD9C8D224C74B619BF4BBB1B','F7E13F805B3510289EA5FF5020','F8CD9C8D224C74B619BF4BBB1BKOP SURAT.doc','test upload','F162B448063A847319E641EF7D','2003-11-12 09:08:41',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_doc_upload` ENABLE KEYS */;

--
-- Table structure for table `project_member`
--

DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `id` varchar(28) NOT NULL default '',
  `project_id` varchar(28) NOT NULL default '',
  `employee_id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  `coordinator_flag` tinyint(1) NOT NULL default '0',
  `version` int(8) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_member`
--


/*!40000 ALTER TABLE `project_member` DISABLE KEYS */;
LOCK TABLES `project_member` WRITE;
INSERT INTO `project_member` VALUES ('F9357B7FA54F5FB8158B2B6C5D','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,1),('FAC827756178391DA350075EB','F8FD555F0676F9CB4D9DDE40B9','FA89238CD9BCDF331DF9B845EB','F36F96E4EA83CB95AC4DC601F2','2004-02-18 17:25:00',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,1),('FAC8276417A63BA0587113967F','F8FD555F0676F9CB4D9DDE40B9','F3FB0D6714905E04E2586A8E1A','F36F96E4EA83CB95AC4DC601F2','2004-02-18 17:25:00',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1,1),('F9356D46C94F490BB39F3FCA1F','F8CF4DAED752F9C07B439B29EB','1','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1,1),('F9358CD80E51EB0D4B5683E237','F8CF4DAED752F9C07B439B29EB','F3FB0D6714905E04E2586A8E1A','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,1),('FAC8278435E9966812802FA070','F8FD555F0676F9CB4D9DDE40B9','F36F96E4EA83CB95AC4DC601F2','F36F96E4EA83CB95AC4DC601F2','2004-02-18 17:25:00',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,1),('FAD0F16CEFE929F8DBB621DE74','F8FD820EF33CAB30DE0E5CC501','FA89238CD9BCDF331DF9B845EB','F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:19',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1,1),('FAD0F196B6529069D1722ED2C9','F8FD820EF33CAB30DE0E5CC501','F3FB0D6714905E04E2586A8E1A','F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:19',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,1),('FAD0F1A7743A2FFBFCA2488018','F8FD820EF33CAB30DE0E5CC501','F36F8BFFF97F8A16505B8305F7','F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:19',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,1),('FAD1F2AB684C00FFB4A0995C7D','FAD1F2207512CE8432F948248A','F501555A2ECD5AC8FCC32F4DD6','F36F8BFFF97F8A16505B8305F7','2004-02-20 15:03:32',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1,2),('FAD1F2BF33947E9ADE376C925E','FAD1F2207512CE8432F948248A','F53FAAF09AB84F412CDA27FF72','F36F8BFFF97F8A16505B8305F7','2004-02-20 15:03:32',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,2),('FAD1F2D634A3AD4F5652E5AAD3','FAD1F2207512CE8432F948248A','F36F96E4EA83CB95AC4DC601F2','F36F8BFFF97F8A16505B8305F7','2004-02-20 15:03:32',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,2),('FAD1F2E499992CB75DBF499F1A','FAD1F2207512CE8432F948248A','F3FB0D6714905E04E2586A8E1A','F36F8BFFF97F8A16505B8305F7','2004-02-20 15:03:32',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',0,2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_member` ENABLE KEYS */;

--
-- Table structure for table `project_security`
--

DROP TABLE IF EXISTS `project_security`;
CREATE TABLE `project_security` (
  `id` varchar(28) NOT NULL default '',
  `project_id` varchar(28) NOT NULL default '',
  `role_id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  `version` int(8) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_security`
--


/*!40000 ALTER TABLE `project_security` DISABLE KEYS */;
LOCK TABLES `project_security` WRITE;
INSERT INTO `project_security` VALUES ('F9356D2BCB57846E0ED53614B3','F8CF4DAED752F9C07B439B29EB','3','F36F8BFFF97F8A16505B8305F7','2004-02-10 14:43:10',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1),('F8FD8284262813E9734458046B','F8FD820EF33CAB30DE0E5CC501','all','F36F96E4EA83CB95AC4DC601F2','2004-02-20 10:23:19',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1),('FAC8274987B0FCCC7E0F176258','F8FD555F0676F9CB4D9DDE40B9','3','F36F96E4EA83CB95AC4DC601F2','2004-02-18 17:25:00',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1),('FAD1F2877FC1B7D3BCAF5A062E','FAD1F2207512CE8432F948248A','3','F36F8BFFF97F8A16505B8305F7','2004-02-20 15:03:32',NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',2);
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_security` ENABLE KEYS */;

--
-- Table structure for table `project_status`
--

DROP TABLE IF EXISTS `project_status`;
CREATE TABLE `project_status` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(125) NOT NULL default '',
  `description` varchar(125) default NULL,
  `url_image` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_status`
--


/*!40000 ALTER TABLE `project_status` DISABLE KEYS */;
LOCK TABLES `project_status` WRITE;
INSERT INTO `project_status` VALUES ('F29B616F1A1CC8B277C3FEDB39','Assigned','Status Assigned','F29B61B461D76F9FF18692D4D9status_assigned.gif','F162B448063A847','2003-01-08 08:22:37',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F29B61BC3183CB12E066E332F','Closed','Status Closed','F29B61EE2E26420A3C4675D278status_closed.gif','F162B448063A847','2003-01-08 08:22:52',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F29B61FCC4924584D4222C7178','In Progress','Status In Progress','F29B626199F2D598C495EE3873status_inprogress.gif','F162B448063A847','2003-01-08 08:23:21',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F29B6267D2CE64E45213EEA052','Need Info','Status Need Info','F29B62A79A57F26E89D5FE12BAstatus_needinfo.gif','F162B448063A847','2003-01-08 08:23:39',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F29B62B055CEDA8AB0E7635FED','Re-opened','Status Re-opened','F29B631FA96DEE3162C47F357Dstatus_reopened.gif','F162B448063A847','2003-01-08 08:24:10',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F'),('F29B6325372E79EAB162E84386','Resolved','Status Resolved','F29B635F61F1FABD8217E58DDBstatus_resolved.gif','F162B448063A847','2003-01-08 08:24:26',NULL,'0000-00-00 00:00:00','0','ic','F185C351B2FAC396169017978F');
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_status` ENABLE KEYS */;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
CREATE TABLE `project_task` (
  `id` varchar(28) NOT NULL default '',
  `project_id` varchar(28) default NULL,
  `task_name` varchar(128) default NULL,
  `description` varchar(128) default NULL,
  `due_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `pic_name` varchar(128) NOT NULL default '',
  `company_id` varchar(28) default NULL,
  `division` varchar(128) default NULL,
  `department` varchar(128) default NULL,
  `percent_complete` tinyint(3) default NULL,
  `duration_value` tinyint(4) default NULL,
  `duration_unit` varchar(28) default NULL,
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `finish_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `predecessor` varchar(28) default NULL,
  `resource_name` varchar(128) default NULL,
  `task_notes` text,
  `critical_task` tinyint(1) default '1',
  `priority` varchar(28) default NULL,
  `deadline_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `constraint_type` tinyint(1) default '1',
  `constraint_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `mile_stones` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_task`
--


/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
LOCK TABLES `project_task` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;

--
-- Table structure for table `project_tracking`
--

DROP TABLE IF EXISTS `project_tracking`;
CREATE TABLE `project_tracking` (
  `id` varchar(28) NOT NULL default '',
  `company_id` varchar(28) default NULL,
  `name` varchar(128) default NULL,
  `description` varchar(128) default NULL,
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `finish_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `priority` varchar(28) default NULL,
  `status` varchar(28) default NULL,
  `category_id` varchar(28) default NULL,
  `progress_presentage` varchar(28) default NULL,
  `project_manager` varchar(28) default NULL,
  `critical_project` tinyint(1) default '1',
  `project_notes` text,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_tracking`
--


/*!40000 ALTER TABLE `project_tracking` DISABLE KEYS */;
LOCK TABLES `project_tracking` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `project_tracking` ENABLE KEYS */;

--
-- Table structure for table `quote`
--

DROP TABLE IF EXISTS `quote`;
CREATE TABLE `quote` (
  `id` varchar(28) NOT NULL default '',
  `headline` varchar(100) default NULL,
  `subheadline` varchar(100) default NULL,
  `abstract` text,
  `body` text,
  `editor_notes` text,
  `transmitted_date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `category_id` varchar(50) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quote`
--


/*!40000 ALTER TABLE `quote` DISABLE KEYS */;
LOCK TABLES `quote` WRITE;
INSERT INTO `quote` VALUES ('F59B0EB0AEAACB311668C9BA87',NULL,NULL,NULL,'Kemarahan merupakan halangan bagi manusia untuk menyadari kebenaran.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 10:00:39',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B0D3DF4D7B8CB80FEC1FDC4',NULL,NULL,NULL,'Kekurangan terbesar manusia adalah sifat berkeluh kesah dan tidak memiliki kebijaksanaan.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:59:16',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B078E92EC2C32A3E8831F75',NULL,NULL,NULL,'Orang yang membosankan adalah orang yang bicara, waktu Anda inginkan dia mendengarkan.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:53:12',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B0CF4F45CC3E4289CC28B2F',NULL,NULL,NULL,'Kegagalan terutama manusia adalah kesombongan.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:58:42',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B0B729A729A5923DCFDD49B',NULL,NULL,NULL,'Manusia memang tidak perlu mengetahui semua hal, tapi setiap orang harus tahu apa yang patut dimengerti.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:57:45',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B0C61ADC8B1F90112DEA93',NULL,NULL,NULL,'Ketentraman dan kedamaian terutama manusia adalah suka berdana dan beramal.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:58:18',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B063FEAA1E55EE0EC6CECA0',NULL,NULL,NULL,'Jangan tunggu sampai esok apa yang dapat Anda kerjakan hari ini.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:52:29',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B0DEE872D7128B3F6FE793',NULL,NULL,NULL,'Ubahlah cara berpikir Anda, maka dunia Anda juga akan berubah.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:59:55',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B0832E04B209161716B0836',NULL,NULL,NULL,'Orang yang berbudi tinggal dibelakang layar, tetapi sebenarnya ia ada di tempat yang paling depan.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:53:57',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B08E6036DCE63DEB315A7F6',NULL,NULL,NULL,'Lebih baik menghadapi orang yang marah daripada orang yang lapar.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:54:21',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B0943E31625D86CDFCE2516',NULL,NULL,NULL,'Orang lebih cepat melupakan suatu dukacita yang hebat daripada suatu hinaan yang tak berarti.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:54:56',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F59B09D3EE845D9F6E867C6067',NULL,NULL,NULL,'Pembohong yang terbesar adalah orang yang paling banyak bicara tentang diri sendiri.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138','2003-06-06 09:55:25',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F5B57A08062102FE1B35AD3E85',NULL,NULL,NULL,'Live to feel the Passion','Ferdinand Ramba','0000-00-00 00:00:00',NULL,NULL,NULL,'000000051','2003-06-11 13:16:01',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F5B62F50D643060FE41D3333B7',NULL,NULL,NULL,'Competition is like life. The challenge is to master the rules, lead the pace and create a sensation. Spare no effort and let it ride - success require extreme dedication and boldness. The ultimate reward is in the effort of doing your best at all times, regardless of how challenging the road may be. Winning, after all, is more than a fleeting moment. It is an attitude that we live for, running deep in everything we do, inspiring performance on and off the track. Long may we run.\r\n\r\n- From : Live to feel the Passion of Mitsubishi Motors','Ferdinand Ramba','0000-00-00 00:00:00',NULL,NULL,NULL,'000000051','2003-08-28 15:37:16','000000138','2003-08-28 15:37:16','E8D4BE646EF710FAB3F79BE639','ic','F185C29BDFC64CD3D08E1A15E8'),('F736551CA75D648CB8D24D6001',NULL,NULL,NULL,'It is not enough to have wisdom, you need to know how to use it','Marcus Tullius Cicero (106 AC-43 B.C.)','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002','2003-08-25 06:42:00',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F736567B9B1B57B427CEC58724',NULL,NULL,NULL,'In practice, only what can be solved through intelligence is a problem.','Hermann Keyserling;(1880-1946); German phylosopher.\r\n','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002','2003-08-25 06:45:23','000000002','2003-08-25 06:45:23','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F736574FC43EF3A820C2C3D127',NULL,NULL,NULL,'The greatness of a nation can be judged by the way its animals are treated.','Mahatma Gandhi (1869-1948) Indian philosopher and politician','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002','2003-08-25 06:44:19',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F745C0EEAFC6AFF075D2BDA255',NULL,NULL,NULL,'Most powerful is he who has himself in his own power','Lucius Annaeus Seneca (2 BC-65AD) Roman philosphe','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002','2003-08-28 06:33:48',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F74B9AFB1C2331E3EA2FB4FD26',NULL,NULL,NULL,'An experience is never a failure because it always serves to show something','Thomas Alva Edison (1847-1931); US physicist and inventor.\r\n','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002','2003-08-29 09:50:09',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8'),('F75AC2BD6F1EB58F57DC82237F',NULL,NULL,NULL,'Never shall I forget the time I spent with you. Please continue to be my friend, as you will always find me yours\r\n','Ludwig van Beethoven (1770-1827); German composer.','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002','2003-09-01 08:27:47',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
UNLOCK TABLES;
/*!40000 ALTER TABLE `quote` ENABLE KEYS */;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `id` varchar(28) NOT NULL default '',
  `display_style` varchar(20) default NULL,
  `report_template_file` varchar(50) default NULL,
  `report_form_file` varchar(50) default NULL,
  `description` varchar(50) default NULL,
  `preview_pic` varchar(50) default NULL,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--


/*!40000 ALTER TABLE `report` DISABLE KEYS */;
LOCK TABLES `report` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;

--
-- Table structure for table `report_security`
--

DROP TABLE IF EXISTS `report_security`;
CREATE TABLE `report_security` (
  `id` varchar(100) NOT NULL default '',
  `template_id` varchar(50) default NULL,
  `report_id` varchar(50) default NULL,
  `role_id` varchar(50) default NULL,
  `type` varchar(10) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_security`
--


/*!40000 ALTER TABLE `report_security` DISABLE KEYS */;
LOCK TABLES `report_security` WRITE;
INSERT INTO `report_security` VALUES ('F963A06C9D176B93A9C3B41000E8615A12EE2ABB0357752928E5','F93B0B43E2B125A432871C8E48','F963A06C9D176B93A9C3B41000','E8615A12EE2ABB0357752928E5','View',NULL,'2004-01-16 08:40:58',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F963A06C9D176B93A9C3B41000E8615A896C1AEEBB5470D7AAB7','F93B0B43E2B125A432871C8E48','F963A06C9D176B93A9C3B41000','E8615A896C1AEEBB5470D7AAB7','Edit',NULL,'2004-01-16 08:40:58',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA13BDE3CAE53C3E870F6C7F411','F93B0B43E2B125A432871C8E48','FA13BDE3CAE53C3E870F6C7F41','1','Edit',NULL,'2004-01-15 15:22:29',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F963A06C9D176B93A9C3B41000E8615AC4915CA30C4B13A7A1C0','F93B0B43E2B125A432871C8E48','F963A06C9D176B93A9C3B41000','E8615AC4915CA30C4B13A7A1C0','Edit',NULL,'2004-01-16 08:40:58',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA13BDE3CAE53C3E870F6C7F415','F93B0B43E2B125A432871C8E48','FA13BDE3CAE53C3E870F6C7F41','5','View',NULL,'2004-01-15 15:22:29',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E402FA79B397914EC9B0EAEEACA3F077E886331F0863628FF','F93B0BB39BDDD84D8198E71DAB','FA1E402FA79B397914EC9B0EAE','EACA3F077E886331F0863628FF','Edit',NULL,'2004-01-16 17:36:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1C711062690AA02729E06434F9A202E61CD5BE6BE70F60BC30','F93B0BB39BDDD84D8198E71DAB','FA1C711062690AA02729E06434','F9A202E61CD5BE6BE70F60BC30','View',NULL,'2004-01-16 17:35:14',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E402FA79B397914EC9B0EAEE8615AC4915CA30C4B13A7A1C0','F93B0BB39BDDD84D8198E71DAB','FA1E402FA79B397914EC9B0EAE','E8615AC4915CA30C4B13A7A1C0','Edit',NULL,'2004-01-16 17:36:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E402FA79B397914EC9B0EAEE8615A896C1AEEBB5470D7AAB7','F93B0BB39BDDD84D8198E71DAB','FA1E402FA79B397914EC9B0EAE','E8615A896C1AEEBB5470D7AAB7','Edit',NULL,'2004-01-16 17:36:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1DD0C210FD5329EC59D94251','F93B0B43E2B125A432871C8E48','FA1DD0C210FD5329EC59D9425','1','View',NULL,'2004-01-16 15:35:31',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1DD0C210FD5329EC59D94254','F93B0B43E2B125A432871C8E48','FA1DD0C210FD5329EC59D9425','4','Edit',NULL,'2004-01-16 15:35:31',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1DD0C210FD5329EC59D9425E8615A896C1AEEBB5470D7AAB7','F93B0B43E2B125A432871C8E48','FA1DD0C210FD5329EC59D9425','E8615A896C1AEEBB5470D7AAB7','View',NULL,'2004-01-16 15:35:31',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1DD0C210FD5329EC59D9425E8615AC4915CA30C4B13A7A1C0','F93B0B43E2B125A432871C8E48','FA1DD0C210FD5329EC59D9425','E8615AC4915CA30C4B13A7A1C0','View',NULL,'2004-01-16 15:35:31',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1C711062690AA02729E06434EACA3F077E886331F0863628FF','F93B0BB39BDDD84D8198E71DAB','FA1C711062690AA02729E06434','EACA3F077E886331F0863628FF','View',NULL,'2004-01-16 17:35:14',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1C711062690AA02729E06434E8615A12EE2ABB0357752928E5','F93B0BB39BDDD84D8198E71DAB','FA1C711062690AA02729E06434','E8615A12EE2ABB0357752928E5','Edit',NULL,'2004-01-16 17:35:14',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E3B93B620423F82EAB94547E8615A5669989A7E9BF0062A7C','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','E8615A5669989A7E9BF0062A7C','View',NULL,'2004-01-16 17:35:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E3B93B620423F82EAB94547E8615A12EE2ABB0357752928E5','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','E8615A12EE2ABB0357752928E5','View',NULL,'2004-01-16 17:35:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E3B93B620423F82EAB945475','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','5','View',NULL,'2004-01-16 17:35:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E3B93B620423F82EAB945473','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','3','View',NULL,'2004-01-16 17:35:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E3B93B620423F82EAB945471','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','1','View',NULL,'2004-01-16 17:35:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E3B93B620423F82EAB945472','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','2','View',NULL,'2004-01-16 17:35:00',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E408A7C74FF502CD071D17EE8615A12EE2ABB0357752928E5','F93B0B43E2B125A432871C8E48','FA1E408A7C74FF502CD071D17E','E8615A12EE2ABB0357752928E5','View',NULL,'2004-01-16 17:36:28',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA1E408A7C74FF502CD071D17E5','F93B0B43E2B125A432871C8E48','FA1E408A7C74FF502CD071D17E','5','View',NULL,'2004-01-16 17:36:28',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `report_security` ENABLE KEYS */;

--
-- Table structure for table `report_template`
--

DROP TABLE IF EXISTS `report_template`;
CREATE TABLE `report_template` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(65) NOT NULL default '',
  `report_template_file` varchar(50) default NULL,
  `report_form_file` varchar(50) default NULL,
  `description` varchar(50) default NULL,
  `preview_pic` varchar(50) default NULL,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  `active_flag` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report_template`
--


/*!40000 ALTER TABLE `report_template` DISABLE KEYS */;
LOCK TABLES `report_template` WRITE;
INSERT INTO `report_template` VALUES ('F93B0B43E2B125A432871C8E48','Template 1','F93B0B43E2B125A432871C8E48WebappReport3.xml','F93B0B43E2B125A432871C8E48form-search.jsp','Template 1\r\n\r\n','',NULL,'2004-01-16 17:50:20',NULL,'0000-00-00 00:00:00','0','ic',NULL,1),('F93B0BB39BDDD84D8198E71DAB','Report Template 1','F93B0BB39BDDD84D8198E71DABWebappReport2.xml','F93B0BB39BDDD84D8198E71DABcreate-report.jsp','Report Template 1','',NULL,'2004-01-16 17:40:16',NULL,'0000-00-00 00:00:00','0','ic',NULL,1);
UNLOCK TABLES;
/*!40000 ALTER TABLE `report_template` ENABLE KEYS */;

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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
  KEY `module_function_id_13` (`module_function_id`),
  KEY `module_function_id_14` (`module_function_id`),
  KEY `role_id_19` (`role_id`),
  KEY `module_function_id_15` (`module_function_id`),
  KEY `role_id_20` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_privilage`
--


/*!40000 ALTER TABLE `role_privilage` DISABLE KEYS */;
LOCK TABLES `role_privilage` WRITE;
INSERT INTO `role_privilage` VALUES ('ff80808105a521520105a5220ce4','1','ff80808105a3a8ed0105a3b185a9',1,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','ic',0,NULL),('ff80808105a521520105a5222233','1','ff80808105a3b96f0105a3ba792c',1,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','ic',0,NULL),('ff80808105a521520105a52239c8','1','ff80808105a3b96f0105a3bdf32c',1,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','ic',0,NULL),('ff80808105a521520105a522540f','1','ff80808105a3b96f0105a3c09bab',1,NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','ic',0,NULL);
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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
INSERT INTO `role_site` VALUES ('F199E8F90A87DB35EAA0B810B8','3','F199E755B97B662FC248CAC80',NULL,'2002-11-19 08:28:32',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F186BF7B53F10B7406CB96A1DD','3','F185BD3FDC5CC7989A3CED51A1',NULL,'2002-11-15 15:10:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F186BF656B571EA0CD8A1D6BCC','3','F185C29BDFC64CD3D08E1A15E8',NULL,'2002-11-15 15:10:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F186BF5394823B80AD8D6364FF','3','F185C351B2FAC396169017978F',NULL,'2002-11-15 15:10:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F74B6B78EBE6BDDAB1FEA8DF3F','3','F74B696E86AA0CA5819A4FB36C',NULL,'2003-08-29 08:57:53',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F78E9C6F2288CD721B04670153','3','F78E9748E9F76ABD233C5EAD39',NULL,'2003-09-11 10:06:04',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F9A20322793136B6AFD2F8C7AE','F9A202E61CD5BE6BE70F60BC30','F9A2020F6D2B0CA30F3A1C8745',NULL,'2003-12-23 14:36:24',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
INSERT INTO `role_site_privilage` VALUES ('2','1','2',1,NULL,'EE185CE0B82B41C1724F284685',NULL,'2002-07-09 09:44:30',NULL,'2002-07-09 08:17:53','ic',1,'EE185CE0B82B41C1724F284685'),('1','1','1',1,NULL,'EE185CE0B82B41C1724F284685',NULL,'2002-07-09 09:45:03',NULL,'2002-07-09 09:45:03','ic',1,'EE185CE0B82B41C1724F284685'),('F19A75C323A3B0D49FFA8787B3','F186BF656B571EA0CD8A1D6BCC','F186E1B0CC5DB5F3EDC4F2E768',1,NULL,'F185C29BDFC64CD3D08E1A15E8',NULL,'2002-11-19 11:02:20',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F1868AC0C6C48059DFA7CB8FB6','EF201F06FE6D8F2B1E1754401A','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'EF62687CC1170D25FC73E0051C',NULL,'2002-11-15 14:44:53',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F186B7E27F6534C0FFB92A8E6B','F186816737F04F453D615080A3','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'F185C351B2FAC396169017978F',NULL,'2002-11-15 15:02:04',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F186B7BB1A72061092EBC71BED','F186816737F04F453D615080A3','F1158BCC10255DDC5563C9DC07',1,NULL,'F185C351B2FAC396169017978F',NULL,'2002-11-15 15:02:04',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F74B6C20E5B9244F91A27900C0','F74B6B78EBE6BDDAB1FEA8DF3F','F1A62489F16437AD6D12617D3F',1,NULL,'F74B696E86AA0CA5819A4FB36C',NULL,'2003-08-29 08:58:25',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F19A8020FE26D4663C46E6B7AD','F186BF7B53F10B7406CB96A1DD','F19A7ED8E71F5BE9AC192EE65A',1,NULL,'F185BD3FDC5CC7989A3CED51A1',NULL,'2002-11-19 11:13:36',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F33663953B4902CDFB5A3F49C5','F199E8F90A87DB35EAA0B810B8','F33661890F73F3C0A23436294A',1,NULL,'F199E755B97B662FC248CAC80',NULL,'2003-02-07 10:46:07',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F74B6C0EAA8231A279077A25C5','F74B6B78EBE6BDDAB1FEA8DF3F','F74B5F495A997365A16C0D6058',1,NULL,'F74B696E86AA0CA5819A4FB36C',NULL,'2003-08-29 08:58:25',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F186C02D2892C034E4F433C5D','F186BF5394823B80AD8D6364FF','F1158BCC10255DDC5563C9DC07',1,NULL,'F185C351B2FAC396169017978F',NULL,'2003-08-29 08:58:09',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685'),('F9A203A43A378BC1AD30EF3787','F9A20322793136B6AFD2F8C7AE','E8D32F8713656B89EF6796025F',1,NULL,'F9A2020F6D2B0CA30F3A1C8745',NULL,'2003-12-23 14:36:53',NULL,'0000-00-00 00:00:00','ic',1,'EE185CE0B82B41C1724F284685');
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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `site_id` varchar(28) default NULL,
  `iparentcode` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `descriptor_id` (`descriptor_id`),
  KEY `descriptor_id_2` (`descriptor_id`),
  KEY `descriptor_id_3` (`descriptor_id`),
  KEY `descriptor_id_4` (`descriptor_id`),
  KEY `descriptor_id_5` (`descriptor_id`),
  KEY `descriptor_id_6` (`descriptor_id`),
  KEY `iparentcode` (`iparentcode`),
  KEY `descriptor_id_7` (`descriptor_id`),
  KEY `descriptor_id_8` (`descriptor_id`),
  KEY `descriptor_id_9` (`descriptor_id`),
  KEY `descriptor_id_10` (`descriptor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section`
--


/*!40000 ALTER TABLE `section` DISABLE KEYS */;
LOCK TABLES `section` WRITE;
INSERT INTO `section` VALUES ('4028817a05dc3b180105dc3c4812',NULL,'tes','','test',1,'1','2005-08-22 10:30:02','','0000-00-00 00:00:00',NULL,NULL),('4028817a05dc58660105dc5c611e','E7A779BA12440C5CC627D043AD','age','age.png','age section',1,'1','2005-08-22 11:05:05','1','2005-08-22 13:19:34',NULL,NULL),('4028817a05dc58660105dc5cb5da','13','bus','','user profile section',1,'1','2005-08-22 11:05:27','','0000-00-00 00:00:00',NULL,NULL),('4028817a05dc58660105dc5cfc76','6','cat','','category section',1,'1','2005-08-22 11:05:45','','0000-00-00 00:00:00',NULL,NULL),('4028817a05dc58660105dc5daa94','E7A779E95E7E40ED22C3D9D409','con','','contact section',1,'1','2005-08-22 11:06:30','','0000-00-00 00:00:00',NULL,NULL),('4028817a05dc58660105dc5f18ce','2','sit','','site section',1,'1','2005-08-22 11:08:04','','0000-00-00 00:00:00',NULL,NULL),('4028817a05dc58660105dc63e786','15','wfw','','workflow section',1,'1','2005-08-22 11:13:18','','0000-00-00 00:00:00',NULL,NULL),('4028817a05dc58660105dc65ca17',NULL,'cod','','code test',1,'1','2005-08-22 11:15:22','','0000-00-00 00:00:00',NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;

--
-- Table structure for table `send_to_friend`
--

DROP TABLE IF EXISTS `send_to_friend`;
CREATE TABLE `send_to_friend` (
  `id` varchar(28) NOT NULL default '',
  `name1` varchar(55) NOT NULL default '',
  `name2` varchar(55) default NULL,
  `name3` varchar(55) default NULL,
  `email1` varchar(255) NOT NULL default '',
  `email2` varchar(255) default NULL,
  `email3` varchar(255) default NULL,
  `comment` varchar(255) default NULL,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `send_to_friend`
--


/*!40000 ALTER TABLE `send_to_friend` DISABLE KEYS */;
LOCK TABLES `send_to_friend` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `send_to_friend` ENABLE KEYS */;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `headline` varchar(255) NOT NULL default '',
  `abstract` text,
  `cross_selling_headline` varchar(255) default NULL,
  `detail` text,
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `url_image3` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) NOT NULL default '',
  `description` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--


/*!40000 ALTER TABLE `services` DISABLE KEYS */;
LOCK TABLES `services` WRITE;
INSERT INTO `services` VALUES ('EE7C61E38B5AFBCD607107B080','Knowledge Management Solution','Discover how to connect the right people with the right information for competitive advantage.','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession. \r\n','','New digital technology is improving business efficiency by radically increasing the quality and quantity of information available to knowledge workers. KNOWLEDGE MANAGEMENT SOLUTION will help you decide which new knowledge-management technologies are relevant to your business and show you how to use them to build an integrated knowledge-management solution. The book also provides detailed case studies of successful knowledge-management implementations, complete with quantifiable benefits. You&#8217;ll discover how these implementations enable smarter business planning and analysis, faster product design and feedback, more effective project and people tracking, and better employee management and training. <p>\r\nIn most companies, people spend a large amount of their time looking for information. When they find what they need, they make important decisions based on it, often without verifying the accuracy or the source. They don&#8217;t know the context in which it was written, or whether there are other related documents that they should be accessing. \r\n<br>\r\n            KMS will optimizes knowledge management in context for \r\n            all business areas across your enterprise. Our processes and tools \r\n            allow you to:<br>\r\n            <ul>\r\n              <li> Develop a knowledge management framework reflecting the organizational \r\n                structure<br>\r\n                of your business<br>\r\n                <br>\r\n              </li>\r\n              <li><font face=\"Arial, Helvetica, sans-serif\" size=\"2\"> Compile \r\n                knowledge dedicated to specific functional areas and strategic \r\n                concerns<br>\r\n                <br>\r\n                </font></li>\r\n              <li><b><font face=\"Arial, Helvetica, sans-serif\" size=\"2\"> </font></b>Develop \r\n                and share documents internally and externally, maintaining the \r\n                context in <br>\r\n                which they were written<br>\r\n                <br>\r\n              </li>\r\n              <li><font face=\"Arial, Helvetica, sans-serif\" size=\"2\"> Personalize \r\n                information access to individuals, groups and teams<br>\r\n                <br>\r\n                </font></li>\r\n              <li><font face=\"Arial, Helvetica, sans-serif\" size=\"2\"> Highlight \r\n                and disseminate knowledge of interest to team members and functional \r\n                areas<br>\r\n                <br>\r\n                </font></li>\r\n              <li>Create knowledge dashboards with summary overviews to aid in \r\n                strategic decision-making<br>\r\n                <br>','EF3EB8174696D6727AF5269490knowledge_sphere.gif','F0386DC4CA7E26EE108EC7951Fknowledge_sphere.gif',NULL,'2','2003-04-29 16:37:08','EEA063FE983851E','2002-09-11 17:08:27','0','ic','F4D30718756B8401E43FD2AAE6',NULL),('EE7C684145375E2988E9863A1E','Guerilla Wired Program','\"Learn our step-by-step Guerrilla Marketing Method and join over one million businesses who have boosted their profits without spending a lot of money on marketing!\"','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.<p>\r\n','\"Learn our step-by-step Guerrilla Marketing Method and join over one million businesses who have boosted their profits without spending a lot of money on marketing!\"','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.<p>\r\n<p>\r\nWe all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. \r\n\r\nIt is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? \r\n\r\nIt is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. \r\n\r\n<p>\r\nBefore you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. To learn how your competitors get marketing messages across, consult trade journals. Their advertising will show you which features they are focusing on. Learning about your target customer will help prevent wasting your money and time on unproductive promotional activities. \r\n\r\n','EFA66F0F861C2842F761721D8Clogo_guerilla_big.gif','EFA66F0F9A1C6EB61226FA920Clogo_guerilla.gif','EF472546E6EBDE2B3995597846v3_java_logo.gif','2','2003-04-29 16:39:11','EEA063FE983851E','2002-08-14 08:44:40','0','ic','F4D30718756B8401E43FD2AAE6',NULL),('F54DDEB3128EB3D851D48A46C9','Content Management Solution','Content Management Solution','Organizations increasingly demand content management and portal solutions that capture and automate online business processes and enable them to effectively manage and deliver enterprise content to the right audiences','','Organizations increasingly demand content management and portal solutions that capture and automate online business processes and enable them to effectively manage and deliver enterprise content to the right audiences. By encouraging companies to evaluate and its competitors content management and portal solutions for comprehensiveness, time to deployment, scalability, ease of use and flexibility, the Dare to Compare campaign is designed to help organizations select a vendor that best meets their needs. \r\n<br><BR>\r\nMore than 1,600 leading companies across the globe have made the comparison and selected some combination of content management, integration and portal applications to power their mission-critical Web applications. \r\n<br><BR>\r\nContent Management suites empower users to quickly create, manage and deploy enterprise Web applications that extend and leverage the customers existing information infrastructure. Each suite offers modular and easily configurable services components and a central administrative console to maximize flexibility and productivity. \r\n<br><BR>\r\nOrganizations tend to look at content management as content thats good enough for outside folks, while they refer to knowledge management as the sharing of knowledge primarily by inside folks. We think the time is ripe for a collision. \r\nA blend of content management systems and knowledge management tactics may provide just the combination a company needs. By examining the following points of overlap between content management and knowledge management, companies can leverage that overlap to boost immediate ROI.\r\n<br><BR>\r\nA content management system (CMS) is a system used to manage the content of a Web site. Typically, a CMS consists of two elements: the content management application (CMA) and the content delivery application (CDA). The CMA element allows the content manager or author, who may not know Hypertext Markup Language (HTML), to manage the creation, modification, and removal of content from a Web site without needing the expertise of a Webmaster. The CDA element uses and compiles that information to update the Web site. The features of a CMS system vary, but most include Web-based publishing, format management, revision control, and indexing, search, and retrieval. \r\nThe Web-based publishing feature allows individuals to use a template or a set of templates approved by the organization, as well as wizards and other tools to create or modify Web content. The format management feature allows documents including legacy electronic documents and scanned paper documents to be formatted into HTML or Portable Document Format (PDF) for the Web site. The revision control feature allows content to be updated to a newer version or restored to a previous version. Revision control also tracks any changes made to files by individuals. An additional feature is indexing, search, and retrieval. A CMS system indexes all data within an organization. Individuals can then search for data using keywords, which the CMS system retrieves. \r\nA CMS system may also provide tools for one-to-one marketing. One-to-one marketing is the ability of a Web site to tailor its content and advertising to a user specific characteristics using information provided by the user or gathered by the site (for example, a particular users page sequence pattern). For example, if you visit a search engine and search for digital camera,the advertising banners will advertise businesses that sell digital cameras instead of businesses that sell garden products. \r\n<BR><BR>\r\nTwo factors must be considered before an organization decides to invest in a CMS. First, an organization size and geographic dispersion must be considered especially if an organization is spread out over several countries. For these organizations, the transition to CMS is more difficult. Secondly, the diversity of the electronic data forms used within an organization must be considered. If an organization uses text documents, graphics, video, audio, and diagrams to convey information, the content will be more difficult to manage.\r\n','F54DEB833C79C9E3D7F3CE1E8BEF3EB8174696D6727AF5269490knowledge_sphere.gif',NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-25 14:16:29','F501555A2ECD5AC8FCC32F4DD6','2003-05-25 14:16:29','0','ic','F4D30718756B8401E43FD2AAE6',NULL),('F4E2D890EB72913C59F94EFC93','Our Product 1','Our Product 1','Testing','Solution Design','testing juga','F4E2ECAFDE234AF95A7AD7B24Dbig_images1.jpg',NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-01 15:53:02','F36F8BFFF97F8A16505B8305F7','2003-05-01 15:53:02','0','ic','F4DD64134EC050E3D0A256EA0D',NULL),('EE8211E52DC1267A57F95D214','Technology Education Service','Technology Education Service','Technology Education Service1 <br> Technology Education Service2 <br> Technology Education Service3','Technology Education Service','a Technology Education Service <br>\r\nb Technology Education Service <br>\r\nc Technology Education Service','EF6188EB1DC2FAE4EC28FAC6BDjava.gif',NULL,NULL,'2','2002-07-31 23:39:06','EEA063FE983851E','2002-07-31 23:39:06','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C',NULL),('EE8213E8C3D062C30B823889D','Collaboration Internetworking','Collaboration Internetworking Enable Service','Collaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable Service','Collaboration all people into a single integrate collaboration services.','Collaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable Service','EF614ECBF67D34C1EA5D47999Acollab_inter_logo_big.jpg','EF614E2585EF979E2ECFCE2097collab_inter_logo.jpg',NULL,'2','2002-08-01 01:33:51','EEA063FE983851E','2002-07-31 22:35:37','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C',NULL),('EE8214A9F871934094D11E0502','Custom Application Development','Custom Application Development','Custom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application Development',NULL,'Custom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application Development','EE821548DF7EE4515ADB222229poohfieldback.jpg',NULL,NULL,'2','2002-06-18 14:17:29',NULL,'0000-00-00 00:00:00','0','ic','EDDCA9DCE41A14EE5D5ABE7E3C',NULL),('EF5754755119A3B2E3211AD22','guerilla_service','Guerilla Solution','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Guerilla Solution','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.\r\n(Detail Solution)','EF57574C6E24199469951E43EAsolution01.gif','EF57574C6E24199469951E43EAsolution01_in.gif','EF592B88695D2DE0715A6420C6images01.gif','EEA063FE983851E','2002-08-05 06:54:37','EEA063FE983851E','2002-08-05 06:54:37','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF57575AD591ECDA1C2FEC8C8D','integrated_solution','Integrated Solution','this is the abstract of Integrated Solution','Integrated Solution','this is the detail of Integrated Solution','EF575883B57B6BE86E88162C26solution02.gif','EF575883C57A521C0471F45A24solution02_in.gif','EF592BBEACE05B1989B2090AC8images02.gif','EEA063FE983851E','2002-08-05 06:54:49','EEA063FE983851E','2002-08-05 06:54:49','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF5758B1CA281B487CECF66532','offline_online_solution','Offline-Online Solution','this is the abstract of Offline-Online Solution','Offline-Online Solution','this is the detail of Offline-Online Solution','EF575961151FC0ACA0682753EDsolution03.gif','EF575961151FC0ACA0682753EDsolution03_in.gif','EF592BE87B29FEB6B03F0CCB9Fimages03.gif','EEA063FE983851E','2002-08-05 06:54:58','EEA063FE983851E','2002-08-05 06:54:58','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF57598A487F5669844986B7B0','360_degrees_solution','360 Degrees Solution','this is the abstract of 360 Degrees Solution111','360 Degrees Solution','this is the detail of 360 Degrees Solution','EF575A2A4192053ED45F6FB4A1solution04.gif','EF575A2A4192053ED45F6FB4A1solution04_in.gif','EF592C0CEB1FA9876049BDF5B7images04.gif','EEA063FE983851E','2002-08-05 06:55:12','EEA063FE983851E','2002-08-05 06:55:12','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF580638377E2B7CBCCF61C0F2','Guerilla Solution','Guerilla Solution','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Guerilla Solution','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives. Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF580A119198F417729A311D19main01.gif','EF580A11A197DA4B07840F4B17main01_in.gif','EF5CB2F8907D8F0926493D3CDEimages01.gif','EEA063FE983851E','2002-08-05 06:55:22','EEA063FE983851E','2002-08-05 06:55:22','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF580A9A97C6CC86E36D458F58','Integrated Solution','Integrated Solution','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','Integrated Solution','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','EF580AFB16962905DB751C6FD6main02.gif','EF580AFB16962905DB751C6FD6main02_in.gif','EF5CB326C411A0B3A84906DE5Aimages02.gif','EEA063FE983851E','2002-08-05 06:55:32','EEA063FE983851E','2002-08-05 06:55:32','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF580B00B41345C82F8D1E1DB0','Offline-Online Solution','Offline-Online Solution','In most companies, people spend a large amount of their time looking for information. When they find what they need, they make important decisions based on it, often without verifying the accuracy or the source. They dont know the context in which it was written, or whether there are other related documents that they should be accessing. \r\nKMS will optimizes knowledge management in context for all business areas across your enterprise. Our processes and tools allow you to:','Offline-Online Solution','In most companies, people spend a large amount of their time looking for information. When they find what they need, they make important decisions based on it, often without verifying the accuracy or the source. They dont know the context in which it was written, or whether there are other related documents that they should be accessing. \r\nKMS will optimizes knowledge management in context for all business areas across your enterprise. Our processes and tools allow you to: In most companies, people spend a large amount of their time looking for information. When they find what they need, they make important decisions based on it, often without verifying the accuracy or the source. They dont know the context in which it was written, or whether there are other related documents that they should be accessing. \r\nKMS will optimizes knowledge management in context for all business areas across your enterprise. Our processes and tools allow you to:','EF580B5D3B13D2EA424D15AECBmain03.gif','EF580B5D3B13D2EA424D15AECBmain03_in.gif','EF5CB39FBD71B1F5D6B8FBB618images03.gif','EEA063FE983851E','2002-08-05 06:55:44','EEA063FE983851E','2002-08-05 06:55:44','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF580BCBF3D3D23511CA3B2407','360 Degrees Solution','360 Degrees Solution','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy.','360 Degrees Solution','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. <br>\r\nWe all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','EF580C2D9B5CF2BFBD5E2C2299main04.gif','EF580C2D9B5CF2BFBD5E2C2299main04_in.gif','EF5CB3D40BCE6FF3D82B6A6371images04.gif','EEA063FE983851E','2002-08-05 06:55:55','EEA063FE983851E','2002-08-05 06:55:55','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF580C339697C55B5E4CDB68E1','460 Degrees Solution/Impossibl','460 Degrees Solution/Impossible Solution','Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. ','460 Degrees Solution/Impossible Solution','Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. To learn how your competitors get marketing messages across, consult trade journals. Their advertising will show you which features they are focusing on. Learning about your target customer will help prevent wasting your money and time on unproductive promotional activities. <br>\r\nBefore you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. To learn how your competitors get marketing messages across, consult trade journals. Their advertising will show you which features they are focusing on. Learning about your target customer will help prevent wasting your money and time on unproductive promotional activities. ','EF580C8C07204512DFA3F11A21main05.gif','EF580C8C07204512DFA3F11A21main05_in.gif','EF5CB41395321D3D7CDED62146images04.gif','EEA063FE983851E','2002-08-05 06:56:07','EEA063FE983851E','2002-08-05 06:56:07','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF58DA8798E54DC5055094C02F','Product Service one','Guerilla Services','lorem ipsum i must get this website done today or not i can meet get through next step. ','Guerilla Services','lorem ipsum i must get this website done today or not i can meet get through next step. ','EF58DB5A3AD6D94B2526E39B05product_services.gif','EF58DB5A3AD6D94B2526E39B05product_services_in.gif','EF5D9DFDF8E20B394BA5020486images06.gif','EEA063FE983851E','2002-08-05 06:56:19','EEA063FE983851E','2002-08-05 06:56:19','0','ic','ED2E4202F2AE0340726C67A877',NULL),('EF61F2D63A9B1B817C092F7213','Guerilla Solution','The most prefered solution by our client.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives. ','The most prefered solution by our client.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.  <br>\r\nPromotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.  <br><br>\r\nPromotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives. ','EF87CB773A4717F0A080C25DB5main03.gif','EF87CB77444609E20EE0E1F474main03_in.gif','EF87CB774E45E6A8827E1DBA33images01.gif','EEA063FE983851E','2002-08-08 09:57:22','EEA063FE983851E','2002-08-08 09:57:22','0','ic','EDDCAA0575D694D2560CC2511F',NULL),('EF61F3DBC3C859321EFED5A9A6','Integrated Solution','The most prefered solution by our client.','The most prefered solution by our client.In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','The most prefered solution by our client.','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.<br>\r\nIn the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','EF87CBD5122027C908BBA348E4main04.gif','EF87CBD5122027C908BBA348E4main04_in.gif','EF87CBD51C1FD598147FD96BA4images02.gif','EEA063FE983851E','2002-08-08 09:57:46','EEA063FE983851E','2002-08-08 09:57:46','0','ic','EDDCAA0575D694D2560CC2511F',NULL),('EF61F58898B017F75FED2DD3D1','360 Degrees Solution','The most prefered solution by our client.','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? ','The most prefered solution by our client.','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? <br>\r\nWe all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? ','EF87CC1F708FD95F9676003B4Fmain05.gif','EF87CC1F7A8FB62608133C010Emain05_in.gif','EF87CC1F7A8FB62608133C010Eimages03.gif','EEA063FE983851E','2002-08-08 09:58:05','EEA063FE983851E','2002-08-08 09:58:05','0','ic','EDDCAA0575D694D2560CC2511F',NULL),('EF62A61FDEC343F346D6F23BCF','Guerilla Solutions','Guerilla Solutions','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','The most prefered solution by our client.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.<br>\r\nPromotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF62A7E3397895429EE43CCA8pservices01.gif',NULL,NULL,'EEA063FE983851E','2002-08-01 04:52:33',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C',NULL),('EF62A8037310E14AD6249180A3','Integrated Solution','Integrated Solution','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','The most prefered solution by our client.','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.<br>\r\nIn the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','EF62A8F64F2E7DAAD0DB006979pservices02.gif',NULL,NULL,'EEA063FE983851E','2002-08-01 04:53:44',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C',NULL),('EF62A903FBF28EB04E90461810','360 Degrees','360 Degrees Solution','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... ','The most prefered solution by our client.','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... <br>\r\nWe all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... ','EF62AA35A568F478CC845A9C80pservices03.gif',NULL,NULL,'EEA063FE983851E','2002-08-01 04:55:05',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C',NULL),('EF62AA52F1B1F3782F64E3FABC','CMS Solution','CMS Solution','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','The most prefered solution by our client.','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','EF62AB440825F0D181988E83C7pservices01.gif',NULL,NULL,'EEA063FE983851E','2002-08-01 04:56:15',NULL,'0000-00-00 00:00:00','0','ic','EF62687CC1170D25FC73E0051C',NULL),('EF62AB63677999BD325F7F8475','Off-On Solution','Offline-Online Solution','Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. ','The most prefered solution by our client.','Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. ','EF62ABF23AE3F738BD38B760C0pservices02.gif',NULL,NULL,'EEA063FE983851E','2002-08-01 05:32:39','EEA063FE983851E','2002-08-01 05:32:39','0','ic','EF62687CC1170D25FC73E0051C',NULL),('EF7712C6D8F2D0CF72470FC290','Guerilla Solution','Guerilla Solution','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand','Guerilla Solution','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\n','EF77149195B98F433323AB5CC6services01.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 04:03:40',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2',NULL),('EF77149A8ED66E9A456D827119','Offline-Online-Inline Solution','Offline-Online-Inline Solutions','The technology is changing rapidly, making today is solution obsolete almost the next day. ','Offline-Online-Inline Solutions','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand','EF77156FFFFFD1FF6F95B249A7services02.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 04:04:37',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2',NULL),('EF77157D7C6689524396E625FD','180 Degrees Solutions','180 Degrees Solutions','The technology is changing rapidly, making today is solution obsolete almost the next day. ','180 Degrees Solutions','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand','EF77165965189AB2C4507D5A7Cservices03.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 22:53:15','EEA063FE983851E','2002-08-05 22:53:15','0','ic','EE1B28DE85CED7258C4D46D2E2',NULL),('EF771663D4C828285B493C4E87','Deluxe Solution','Deluxe Solution','The technology is changing rapidly, making today is solution ','Deluxe Solution','The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution ','EF77178B8C1B19AE3129CF86F8solutions04.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 04:06:55',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2',NULL),('EF771797B13278072B04FD8142','360 Degrees Solution','360 Degrees Solution','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe ','360 Degrees Solution','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe ','EF77185BADD787ACAF545600F9solutions03.gif',NULL,NULL,'EEA063FE983851E','2002-08-05 04:07:48',NULL,'0000-00-00 00:00:00','0','ic','EE1B28DE85CED7258C4D46D2E2',NULL),('EF8E38F1D2CF3B7DB7749F37B9','New Service 1','Our Service Number Uno','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','EF8E39B0FE1F0260210BC3E430images1.jpg',NULL,NULL,'EEA063FE983851E','2002-08-09 15:55:29',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3',NULL),('EF8E39B632FA978A9C44E5006F','Our Service 2','Our Product #2','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','EF8E3A34D3D6E677F60600BFC5images2.jpg',NULL,NULL,'EEA063FE983851E','2002-08-09 15:56:03',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3',NULL),('EF8E3A44C9BC8168B1E2DC6C11','Our Service Number 3','Our Service Number Three','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','EF8E3AC400CBC8109654A5A63Aimages1.jpg',NULL,NULL,'EEA063FE983851E','2002-08-09 15:56:39',NULL,'0000-00-00 00:00:00','0','ic','EF8E260F5EE7A2E8ECE6F2F3A3',NULL),('F30EB9AD35A6F31B21D5957D1B','Service 1','Alkisah Sebuah Jam','Alkisah, seorang pembuat jam tangan berkata kepada jam yang sedang\r\ndibuatnya. \"Hai jam, apakah kamu sanggup untuk berdetak paling tidak\r\n31,104,000 kali selama setahun?\" \"Ha?,\" kata jam terperanjat, \"Mana\r\nsanggup saya?\"','Plantation1','Alkisah, seorang pembuat jam tangan berkata kepada jam yang sedang\r\ndibuatnya. \"Hai jam, apakah kamu sanggup untuk berdetak paling tidak\r\n31,104,000 kali selama setahun?\" \"Ha?,\" kata jam terperanjat, \"Mana\r\nsanggup saya?\"\r\n<br>\r\n\"Bagaimana kalau 86,400 kali dalam sehari?\" \"Delapan puluh enam ribu\r\nempat ratus kali? Dengan jarum yang ramping-ramping seperti ini?\" jawab\r\njam penuh keraguan.\r\n<br>\r\n\"Bagaimana kalau 3,600 kali dalam satu jam?\" \"Dalam satu jam harus\r\nberdetak 3,600 kali? Banyak sekali itu\" tetap saja jam ragu-ragu dengan\r\nkemampuan dirinya.\r\n<br>\r\nTukang jam itu dengan penuh kesabaran kemudian bicara kepada si jam.\r\n\"Kalau begitu, sanggupkah kamu berdetak satu kali setiap detik?\" \"Naaaa,\r\nkalau begitu, aku sanggup!\" kata jam dengan penuh antusias.\r\n<br>\r\nMaka, setelah selesai dibuat, jam itu berdetak satu kali setiap detik.\r\nTanpa terasa, detik demi detik terus berlalu dan jam itu sungguh luar\r\n>biasa karena ternyata selama satu tahun penuh dia telah berdetak tanpa\r\nhenti. Dan itu berarti ia telah berdetak sebanyak 31,104,000 kali.\r\n<br>\r\nRenungan :\r\n<br>\r\nAda kalanya kita ragu-ragu dengan segala tugas pekerjaan yang begitu\r\nterasa berat. Namun sebenarnya kalau kita sudah menjalankannya, kita\r\nternyata mampu. Bahkan yang semula kita anggap impossible untuk\r\ndilakukan \r\nsekalipun. Jangan berkata \"tidak\" sebelum Anda pernah mencobanya.\r\n<p>\r\nSumber: Unknown (Tidak Diketahui)\r\n</p>\r\n','F30EBCCB3E9C157D5ED2EE81F5image03.jpg','F42DB5B7142A01E5C677E6825Fshocked.gif','F42DB5B723290573FB0968363Dnice_face.gif','F162B448063A847','2003-03-28 16:03:07','F162B448063A847319E641EF7D','2003-03-28 16:03:07','0','ic','F185BD3FDC5CC7989A3CED51A1',NULL),('F36A003A8C91E394B863C31255','jflsdjkflkasj','ldkjflsajkfsalkjfsla','fdsfsafsdaf','','fdsafsafd','F4096AB0F18E9A95D2E4A36429img2.gif',NULL,NULL,'F162B448063A847','2003-03-20 10:13:27','F162B448063A847319E641EF7D','2003-03-20 10:13:27','0','ic','F185BD3FDC5CC7989A3CED51A1',NULL),('F40968C09AB90A9BF9DEB16B87','Service 1','Product And Service 1','testing..abstract','','body detail','F409699FCF7D4B4C740BB0B56Dimg1_large.jpg',NULL,NULL,'F162B448063A847319E641EF7D','2003-03-20 10:12:17','F162B448063A847319E641EF7D','2003-03-20 10:12:17','0','ic','F185BD3FDC5CC7989A3CED51A1',NULL),('F54DF24547EC2B015A9222D5DE','BlueOxygen Strategic Framework','BlueOxygen Strategic Framework','A framework is a partially complete software system \r\n    that is intended to be instantiated. It defines the architecture for a \r\n    family of systems and provides the basic building blocks to create them. It \r\n    also defines the places were adaptations for specific functionality should \r\n    be made','','<p>The following are two commonly used definitions of a framework: </p>\r\n<dir>\r\n    \r\n    <p>1. A framework is a partially complete software system \r\n    that is intended to be instantiated. It defines the architecture for a \r\n    family of systems and provides the basic building blocks to create them. It \r\n    also defines the places were adaptations for specific functionality should \r\n    be made.&quot; (Buschmann 1996) </p>\r\n    \r\n    <p>2. A framework is a set of classes that embodies an \r\n    abstract design for solutions to a family of related problems (Johnson and \r\n    Foote 1988)</p>\r\n  \r\n</dir>\r\n<p><br>\r\nBasically, a framework is a semi-complete application. It is different from a \r\nclass library in that control is inverted. When you use class libraries, the \r\nmain control flow is in the application code that makes calls to methods in the \r\nclass library. In the case of a framework, the main control flow is in the \r\nframework code that makes calls to the application code. This inversion of \r\ncontrol is typically referred to as the Hollywood Principle: &quot;Do not call us. \r\nWe will call you.&quot;<br>\r\n<br>\r\nThe developer builds a complete application by inheriting from and instantiating \r\ncomponents in the framework.<br>\r\n<br>\r\nThe following are some of the key benefits of using an application development \r\nframework: </p>\r\n  <dir>\r\n    \r\n    <p><b>Shorter development schedule/shorter time to market</b>: \r\n    Development projects no longer have to solve the many problems related to \r\n    Web applications. They simply reuse the code provided by the framework. \r\n    Project developers do not have to design, develop, or test these framework \r\n    services; they take them for granted. </p>\r\n    \r\n    <p><b>Reduced development risk</b>: With a complex \r\n    programming model like J2EE, the risk of project failure is high to begin \r\n    with. An application development framework can significantly reduce the risk \r\n    by serving as a reliable proven base. </p>\r\n    \r\n    <p> <b>Consistent application architectures</b>: Using a \r\n    framework results in all applications having similar application \r\n    architectures, which makes them easier to learn, support, and maintain.</p>\r\n</dir>\r\n<p>If you plan to develop your own framework or assemble one using various open \r\nsource components, you should have a framework development and maintenance \r\nprocess in place to ensure the framework has all necessary functionality and the \r\nROI is constantly improving.<br>\r\n<br>\r\nYour framework development and maintenance process should consist of the \r\nfollowing phases: </p>\r\n<dir>\r\n    <b>\r\n    <p>1. Initial development</b>: This is your upfront development effort to \r\n    get to the first release of your framework.</p>\r\n    <b>\r\n    <p>2. First use</b>: The first application you build with the framework.</p>\r\n    <b>\r\n    <p>3. Harvesting framework candidates</b>: When you build an application, \r\n    there will be elements you expect to be part of the framework that are not \r\n    there; you will end up building these. It makes sense to move these into the \r\n    framework so applications that follow can benefit. At the end of every \r\n    application development effort, you should undertake a formal\r\n    process to harvest framework candidates. You will have to make sure the \r\n    component candidate is not business-specific; these generally are not \r\n    reusable.<br>\r\n    <b>Second use</b>: The next application you build will use the framework \r\n    plus any components harvested from the previous application.</p>\r\n    <b>\r\n    <p>4. Harvesting framework candidates</b>: Again, a formal process for \r\n    harvesting framework component candidates keeps the framework in a good \r\n    position to meet the needs of future application development efforts.</p>\r\n</dir>\r\n<b><dir>\r\n<p>5. Next use</b>: And so on ...</p></dir>\r\n\r\n','F54DFE5BBD1582D142C7291047Untitled-1.jpg',NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-25 14:16:04','F501555A2ECD5AC8FCC32F4DD6','2003-05-25 14:16:04','0','ic','F4D30718756B8401E43FD2AAE6',NULL),('F54E9E6FFEB4F7B5E20F9F3FA8','Java Experience Traning Boot Camp','Java Experience Traning Boot Camp','Learn our Java Experience and join over three million Java programmer who have ecxperinted in application developmet. ','','We provide a batch training program that based on our experience to deliver and develop e-business applicaiton for our client. The curricullum is very flexible and we provide in house and join development approach.<p>\r\n\r\nWe share our experience to bring your developer to the next level. Currently our training topics are:\r\n<li>Java E-Business Foundation\r\n<li>Business Application Development using BlueOxygen Strategic Framework\r\n<li>Wireless Mobile using J2ME\r\n<li> Symbian Wireless Development using Java\r\n<li>MVC Development using Struts\r\n<li>Servlet JSP Development using Tomcat\r\n<li>Java Development using Eclipse\r\n<li>Web Development using Velocity\r\n\r\n<li> Everest Accounting\r\n\r\n\r\n<p> Visit <a href=\"http://training.intercitra.com \">http://training.intercitra.com</a> for more information of our standard curicullum. For more information call our customer service office at (021)-4260933.\r\n<p>\r\n','F54EA21D95FB3DC0A21657B76AEF4721F1DF4429F3B5684DB6F9v3_java_logo.gif',NULL,NULL,'F36F8BFFF97F8A16505B8305F7','2003-05-25 14:14:48','F501555A2ECD5AC8FCC32F4DD6','2003-05-25 14:14:48','0','ic','F4D30718756B8401E43FD2AAE6',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--


/*!40000 ALTER TABLE `site` DISABLE KEYS */;
LOCK TABLES `site` WRITE;
INSERT INTO `site` VALUES ('EE185CE0B82B41C1724F284685','Cimande Backend','Cimande Backend Site','EE39E38171B7328E0269CF4E06',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,'1','2002-07-05 09:48:26','1','2002-07-05 09:48:26','0','ic','EE185CE0B82B41C1724F284685'),('F185BD3FDC5CC7989A3CED51A1','Makin Portal','Makin Portal','F302D39D46B228A55412E3D127','Welcome to Intercitra.com','Isi dengan kata2 dari makin di menu site (Site Headline)','F63C152A8E6428CDB41A42DFC3logo intercitra.gif','makingroup.com','',1,'','','',1,'1','2003-07-07 16:30:27','1','2003-07-07 16:30:27','0','ic','EE185CE0B82B41C1724F284685'),('F185C29BDFC64CD3D08E1A15E8','Makin Intranet','Makin Intranet','F07B2292454364DA2311935565','Welcome to Makin Intranet','ini tulisan cuma test doang',NULL,'','',1,'','','',1,'1','2003-03-06 15:53:30','1','2003-03-06 15:53:30','0','ic','EE185CE0B82B41C1724F284685'),('F185C351B2FAC396169017978F','Document Archive','Document Archive','F07B2292454364DA2311935565','',NULL,NULL,'','',1,'','','',1,'1','2002-11-15 10:46:08',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F199E755B97B662FC248CAC80','Makin Admin','Makin Admin','F07B2292454364DA231193556','',NULL,NULL,'','',1,'','','',1,'1','2002-11-19 08:27:14',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F4D30718756B8401E43FD2AAE6','Intercitra Site','Intercitra Site','EEEE7A657391D5CD89EAFFA648','Welcome to Intercitra.com','','F63C1E7B8C37B54490B4438C3Blogo intercitra.gif','intercitra-inovation.com','admin.intercitra.com',1,'','','',1,'1','2003-07-07 16:36:25','1','2003-07-07 16:36:25','0','ic','EE185CE0B82B41C1724F284685'),('F4DD64134EC050E3D0A256EA0D','Blueoxygen Site','Blueoxygen Organization Site','F07B2292454364DA2311935565','Welcome to Blueoxygen.org','','F5F866CA1561299B679656D596logo-blueoxygen.gif','bio2.org','',1,'','','',1,'1','2003-07-07 16:38:59','1','2003-07-07 16:38:59','0','ic','EE185CE0B82B41C1724F284685'),('F4E6A635A8AC141BAE7F98504','Guerill-Forum Site','Guerilla Forum Site','EF8E248CD64707158718C93173','Welcome to Guerilla-Forum.org','','F4E6A7AE60B56B4CC55AE7C4BElogo_guerilla.gif','www.guerilla-forum.org','',1,'','','',1,'1','2003-05-02 09:16:09',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F74B696E86AA0CA5819A4FB36C','Activity Management','Project & Task Tracking','F302D39D46B228A55412E3D127','','',NULL,'','',1,'','','',1,'1','2003-08-29 08:55:56',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F78E9748E9F76ABD233C5EAD39','PAN','','F302D39D46B228A55412E3D127','','',NULL,'intercitra-inovation.com','',1,'','','',1,'1','2003-09-11 11:07:21','1','2003-09-11 11:07:21','0','ic','EE185CE0B82B41C1724F284685'),('F8EE4789BA9DC24BAD1ECD597D','Report Management','Report Management','F302D39D46B228A55412E3D127','Report Management','',NULL,'','',1,'','','',1,'1','2003-11-18 16:59:46',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F9A2020F6D2B0CA30F3A1C8745','DJPLN','','0','','',NULL,'','',0,'','','',1,'1','2003-12-23 14:35:49',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('ff80808105957d810105957de621','gfd','fds','','','','','','',-1,'','','',0,'1','2005-08-08 00:00:00','1','2005-08-08 00:00:00','0','ic',NULL),('ff80808105948d970105948f2989','dsd','dsaas','','dsad','asdas','dsad','','ds',1,'das','sda','dsad',1,'1','2005-08-08 00:00:00','1','2005-08-08 00:00:00','0','ic',NULL),('ff80808105993dbf0105993df75e','test','sa','','','','','','',-1,'','','',0,'1','2005-08-09 10:17:19','1','2005-08-09 10:17:19','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `site` ENABLE KEYS */;

--
-- Table structure for table `site_map`
--

DROP TABLE IF EXISTS `site_map`;
CREATE TABLE `site_map` (
  `id` varchar(28) NOT NULL default '',
  `headline` varchar(128) NOT NULL default '',
  `url_page_collection` varchar(128) NOT NULL default '',
  `detail` text,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_map`
--


/*!40000 ALTER TABLE `site_map` DISABLE KEYS */;
LOCK TABLES `site_map` WRITE;
INSERT INTO `site_map` VALUES ('F3FF164552682DC676682DD1FB','Home','main_page','Detail Home\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Home)\r\n<br>','F162B448063A847','2003-03-18 10:29:11','F162B448063A847','2003-03-18 10:29:11','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF1FBC1DA441971DF760AC86','Press Release','press_release','Detail Press Release \r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Press Release)\r\n<br>','F162B448063A847','2003-03-18 10:17:32',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF21BB87A1806688C0D236D4','News','news','Detail News \r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (News)\r\n<br>','F162B448063A847','2003-03-18 10:18:09',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF2251AC8FDBE206FC5F2184','Fact & Figure','fact_figure','Detail Fact Figure\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Fact Figure)\r\n<br>','F162B448063A847','2003-03-18 10:33:05','F162B448063A847','2003-03-18 10:33:05','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF2FF9A57F7A6B01EF0A9773','Makin & Subsidiaries','company_subsidary','Detail Makin & Subsidiaries\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Makin & Subsidiaries)\r\n<br>','F162B448063A847','2003-03-18 10:54:09','F162B448063A847','2003-03-18 10:54:09','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3FF308923177AB6C29733A930','Contact Us','contact_us','Detail Contact Us\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Contact Us)\r\n<br>','F162B448063A847','2003-03-18 10:34:13',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `site_map` ENABLE KEYS */;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id` varchar(20) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `pid` varchar(20) NOT NULL default '',
  `active_flag` varchar(5) NOT NULL default '',
  `site_id` varchar(20) NOT NULL default '',
  `main_img` varchar(255) NOT NULL default '',
  `front_img` varchar(255) NOT NULL default '',
  `detail_img` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites`
--


/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
LOCK TABLES `sites` WRITE;
INSERT INTO `sites` VALUES ('1','Intercitra','2','0','abc','i1.jpg','i2.jpg','i3.jpg'),('2','BlueOxygen','2','1','def','z1.jpg','z2.jpg','z3.jpg'),('3','GuerillaForum','2','0','ghi','g1.jpg','g2.jpg','g3.jpg');
UNLOCK TABLES;
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;

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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
INSERT INTO `skin` VALUES ('EED8A71A292BDD79AE8D438AB3','EE39E360586DC4030AA5D88CAA','Article','Article Techno','article.vm',1,'1','2002-07-09 15:07:09','1','2002-07-09 15:07:09','0','ic','EE185CE0B82B41C1724F284685'),('EED8A79711FD1B9C63BA7ADA0E','EE39E360586DC4030AA5D88CAA','Page Techno','Page Techno','page.vm',1,'1','2002-07-09 15:07:31','1','2002-07-09 15:07:31','0','ic','EE185CE0B82B41C1724F284685'),('EEED8E57002048A2E9071DAF76','EEEE7A657391D5CD89EAFFA648','index','Index - Main Page','index.htm',1,'1','2002-07-12 02:50:07','1','2002-07-12 02:50:07','0','ic','EE185CE0B82B41C1724F284685'),('EEED8EE4881FA530706324955E','EEEE7A657391D5CD89EAFFA648','about_us','About Us','about_us.htm',1,'1','2002-07-12 02:50:23','1','2002-07-12 02:50:23','0','ic','EE185CE0B82B41C1724F284685'),('EEED8F22116F192E521FCB6C46','EEEE7A657391D5CD89EAFFA648','contact_us','Contact Us','contact_us.htm',1,'1','2002-07-12 02:50:27','1','2002-07-12 02:50:27','0','ic','EE185CE0B82B41C1724F284685'),('EEED8F61ACA8FD143C4A127AE','EEEE7A657391D5CD89EAFFA648','lates_news','Latest News Archive','latest_news.htm',1,'1','2002-07-12 02:50:33','1','2002-07-12 02:50:33','0','ic','EE185CE0B82B41C1724F284685'),('EEED8FAA79AC379210C5F52060','EEEE7A657391D5CD89EAFFA648','lates_news_details','Latest News Detail','latest_news_detail.htm',1,'1','2002-07-18 00:29:20','1','2002-07-18 00:29:20','0','ic','EE185CE0B82B41C1724F284685'),('EEED906F3DD8D8C52409FB4D9F','EEEE7A657391D5CD89EAFFA648','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-07-12 02:50:41','1','2002-07-12 02:50:41','0','ic','EE185CE0B82B41C1724F284685'),('EEED90B7B09350BB36F389A43E','EEEE7A657391D5CD89EAFFA648','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-07-12 02:50:45','1','2002-07-12 02:50:45','0','ic','EE185CE0B82B41C1724F284685'),('EEED91195E6BDC9CF09ECB2DF3','EEEE7A657391D5CD89EAFFA648','press_release','Press Release Archive','press_release.htm',1,'1','2002-07-12 03:22:29','1','2002-07-12 03:22:29','0','ic','EE185CE0B82B41C1724F284685'),('EEED915B2AE8D8F40ACED882C5','EEEE7A657391D5CD89EAFFA648','press_release_details','Press Release Details','press_release_detail.htm',1,'1','2002-07-12 04:00:15','1','2002-07-12 04:00:15','0','ic','EE185CE0B82B41C1724F284685'),('F524BB45D2E30AEA8249BE6225','Document asli','Sugiarto','Mau pasang dokument','',1,'1','2003-05-14 10:34:48',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F2FF1ABC722599C16FE990B95E','EE39E38171B7328E0269CF4E06','page_collection.vm','','',1,'1','2003-01-27 17:07:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF1EEC2113DFA19FB81258C38A','EEEE7A657391D5CD89EAFFA648','open_job','Open Job Skin','open_job.htm',1,'1','2002-07-19 01:13:32','1','2002-07-19 01:13:32','0','ic','EE185CE0B82B41C1724F284685'),('EF33952CCDF48014677207390C','EF339499195C4175BFFF300B14','mainpage','Main Page Green Matrix','index.htm',1,'1','2002-07-23 01:30:25',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DB199C4997C0D4CF66C2FE3','EF339499195C4175BFFF300B14','latest_news','Latest News','latest_news.htm',1,'1','2002-07-25 01:07:21','1','2002-07-25 01:07:21','0','ic','EE185CE0B82B41C1724F284685'),('EF3DCE12F3E784A3504C51EE52','EF339499195C4175BFFF300B14','latest_news_details','Latest News Details','latest_news_details.htm',1,'1','2002-07-25 01:09:15',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD04583B1E0BF80BF38F7B4','EF339499195C4175BFFF300B14','about_us','About Us','about_us.htm',1,'1','2002-07-25 01:11:08',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD0B340E38780B1B49BB820','EF339499195C4175BFFF300B14','contact_us','Contact Us','contact_us.htm',1,'1','2002-07-25 01:11:36',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD11C4B8AF9FF295F58BA9E','EF339499195C4175BFFF300B14','our_solution_details','Our Solution Details','our_solution_details.htm',1,'1','2002-07-25 03:49:00','1','2002-07-25 03:49:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD1C31AAA5A6C655E9DE458','EF339499195C4175BFFF300B14','our_solutions','Our Solutions Archive','our_solutions.htm',1,'1','2002-07-30 23:54:52','1','2002-07-30 23:54:52','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD27718347862F68D50A66','EF339499195C4175BFFF300B14','press_release','Press Release Archive','press_release.htm',1,'1','2002-07-25 01:13:40',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD3C0DE6F7365ABC3BC9FB7','EF339499195C4175BFFF300B14','press_release_details','Press Release Details','press_release_details.htm',1,'1','2002-07-25 01:15:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF3DD45212976F3861F684F91C','EF339499195C4175BFFF300B14','open_job','Open Job','open_job.htm',1,'1','2002-07-25 01:15:40',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61D94A207A243FA2C5E7DACC','EEED769D1CA72C8DD9829685BC','main_page','Main Page','index.htm',1,'1','2002-08-01 01:07:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61D9BA4FA37DC5D61F0B8B6A','EEED769D1CA72C8DD9829685BC','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-08-01 01:07:51',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61DA32CA45F6895A5FF65099','EEED769D1CA72C8DD9829685BC','press_release','Press Release','press_release.htm',1,'1','2002-08-01 01:08:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61DAA20FF6FC31E28AAFACDB','EEED769D1CA72C8DD9829685BC','latest_news','Latest News','latest_news.htm',1,'1','2002-08-01 01:08:46',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61DB0ABCB2C0383ED89CF3BE','EEED769D1CA72C8DD9829685BC','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1','2002-08-02 02:48:45','1','2002-08-02 02:48:45','0','ic','EE185CE0B82B41C1724F284685'),('EF61DBC92A5A01266BD3D0D049','EEED769D1CA72C8DD9829685BC','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-08-02 03:49:34','1','2002-08-02 03:49:34','0','ic','EE185CE0B82B41C1724F284685'),('EF61DC5B0983D882183BF23C11','EEED769D1CA72C8DD9829685BC','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-08-02 02:49:11','1','2002-08-02 02:49:11','0','ic','EE185CE0B82B41C1724F284685'),('EF61DCC666E816B86B1EF4A04B','EEED769D1CA72C8DD9829685BC','contact_us','Contact Us','contact_us.htm',1,'1','2002-08-01 01:11:03',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF61DD5C4D4F996AE3D9853CD8','EEED769D1CA72C8DD9829685BC','about_us','About Us','about_us.htm',1,'1','2002-08-01 01:11:40',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF770682B51853368774F11E41','EF77053DB1F41DEAE9E0EC8A2F','main_page','Main Page','index.htm',1,'1','2002-08-05 03:54:48','1','2002-08-05 03:54:48','0','ic','EE185CE0B82B41C1724F284685'),('EF7706DCFA2042BE91940B9029','EF77053DB1F41DEAE9E0EC8A2F','about_us','About Us','about_us.htm',1,'1','2002-08-05 03:54:57','1','2002-08-05 03:54:57','0','ic','EE185CE0B82B41C1724F284685'),('EF7708560D9A33A55538E8D5DD','EF77053DB1F41DEAE9E0EC8A2F','contact_us','Contact Us','contact_us.htm',1,'1','2002-08-07 16:06:23','1','2002-08-07 16:06:23','0','ic','EE185CE0B82B41C1724F284685'),('EF770890284513762413980D61','EF77053DB1F41DEAE9E0EC8A2F','latest_news','Latest News','latest_news.htm',1,'1','2002-08-05 03:55:15','1','2002-08-05 03:55:15','0','ic','EE185CE0B82B41C1724F284685'),('EF7708F5A92C7708E431064FF','EF77053DB1F41DEAE9E0EC8A2F','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1','2002-08-05 03:55:26','1','2002-08-05 03:55:26','0','ic','EE185CE0B82B41C1724F284685'),('EF77097FA9F464579815DAB4DB','EF77053DB1F41DEAE9E0EC8A2F','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-08-05 03:55:35','1','2002-08-05 03:55:35','0','ic','EE185CE0B82B41C1724F284685'),('EF7709E076918224E2C5B07B7A','EF77053DB1F41DEAE9E0EC8A2F','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-08-05 03:55:49','1','2002-08-05 03:55:49','0','ic','EE185CE0B82B41C1724F284685'),('EF770A3D3C54272D02290A7ACF','EF77053DB1F41DEAE9E0EC8A2F','press_release','Press Release','press_release.htm',1,'1','2002-08-05 03:56:00','1','2002-08-05 03:56:00','0','ic','EE185CE0B82B41C1724F284685'),('EF770A8FA2B9C566FEB2D07D71','EF77053DB1F41DEAE9E0EC8A2F','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-08-05 03:56:13','1','2002-08-05 03:56:13','0','ic','EE185CE0B82B41C1724F284685'),('EF878D43B44129DB9FF337D315','EF878CDA15F79452ECED780C03','main_page','Main Page','index.htm',1,'1','2002-08-08 08:49:43',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878D94EA13DF41D77ECEEA3F','EF878CDA15F79452ECED780C03','about_us','About Us','about_us.htm',1,'1','2002-08-08 08:50:04',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878DE1DCA0A8D06486C85DA6','EF878CDA15F79452ECED780C03','contact_us','Contact Us','contact_us.htm',1,'1','2002-08-08 08:50:27',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878E3C0754B2250A49C18A01','EF878CDA15F79452ECED780C03','latest_news','Latest News','latest_news.htm',1,'1','2002-08-08 08:51:01',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878EBEE25A571043B9E2D699','EF878CDA15F79452ECED780C03','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1','2002-08-08 08:51:27',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878F2718A11A7D23D6EBF386','EF878CDA15F79452ECED780C03','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-08-08 08:51:55',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF878FD2836818603346084F2F','EF878CDA15F79452ECED780C03','press_release','Press Release','press_release.htm',1,'1','2002-08-08 08:52:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8790300BE12E5CCE2C2E4701','EF878CDA15F79452ECED780C03','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-08-08 08:55:40',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF87930075DA19F24E509D71A0','EF878CDA15F79452ECED780C03','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-08-08 08:56:25','1','2002-08-08 08:56:25','0','ic','EE185CE0B82B41C1724F284685'),('EF8E277F34F1C4DE8229CFC10D','EF8E248CD64707158718C93173','main_page','Main Page','index.htm',1,'1','2002-08-09 15:36:30',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E285DE8A1E858D8BCC33A12','EF8E248CD64707158718C93173','about_us','About Us','about_us.htm',1,'1','2002-08-09 15:36:56',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E28BDB57036C93F24B9B14E','EF8E248CD64707158718C93173','contact_us','Contact Us','contact_us.htm',1,'1','2002-08-09 15:37:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2910D6DC72DE5A739B7323','EF8E248CD64707158718C93173','our_solutions','Our Solutions','our_solutions.htm',1,'1','2002-08-09 15:37:44',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E29788AD8D3BFDC5F397011','EF8E248CD64707158718C93173','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1','2002-08-09 15:38:17',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E29F7DF9BD41DE59E1B3273','EF8E248CD64707158718C93173','press_release','Press Release','press_release.htm',1,'1','2002-08-09 15:38:38',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2A49DD1A4B7CB00B8D1A88','EF8E248CD64707158718C93173','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-08-09 15:39:00',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2AA141B4B44CED456914C8','EF8E248CD64707158718C93173','latest_news','Latest News','latest_news.htm',1,'1','2002-08-09 15:39:27',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2B0BB26649B06A069D8519','EF8E248CD64707158718C93173','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1','2002-08-09 15:39:50',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF8E2B6302127EB28DF0796D9','EF8E248CD64707158718C93173','open_job','Open Job','open_job.htm',1,'1','2002-08-09 15:40:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B379B79C9CD7743C23D2596','F07B2292454364DA2311935565','index','Index-Main Page','index.htm',1,'1','2002-09-24 16:23:36',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3801CF22E2E91A2A70AE4D','F07B2292454364DA2311935565','recipe','Recipe','recipe.htm',1,'1','2002-09-24 16:23:55',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B38486BD0AC516EDA596175','F07B2292454364DA2311935565','recipe_detail','Recipe Detail','recipe_detail.htm',1,'1','2002-09-24 16:24:23',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F09DDFE362D841F17A30993ED','F07B2292454364DA2311935565','press_release','Press Release','press_release.htm',1,'1','2002-10-01 09:54:59',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B392A0461FE3079C1826E3A','F07B2292454364DA2311935565','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2002-09-24 16:25:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3995D35970D90584A8EE7F','F07B2292454364DA2311935565','forum','Forum','forum.htm',1,'1','2002-09-24 16:25:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B39CF04A50D59C1EEA94799','F07B2292454364DA2311935565','forum_detail','Forum Detail','forum_detail.htm',1,'1','2002-09-24 16:26:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3A364057068AFB1D09B24B','F07B2292454364DA2311935565','resource','Resource','resource.htm',1,'1','2002-09-24 16:26:27',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3A976C284A50C0D07B0DEC','F07B2292454364DA2311935565','resource_detail','Resource Detail','resource_detail.htm',1,'1','2002-09-24 16:26:52',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3AFC312B9E0CA737CE8886','F07B2292454364DA2311935565','project','Project','project.htm',1,'1','2002-09-24 16:27:45',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3BCB177AC6A7F14766D6F6','F07B2292454364DA2311935565','project_detail','Project Detail','project_detail.htm',1,'1','2002-09-24 16:28:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3C19D634A84A21B00B2304','F07B2292454364DA2311935565','contact_us','Contact Us','contact_us.htm',1,'1','2002-09-24 16:28:41','1','2002-09-24 16:28:41','0','ic','EE185CE0B82B41C1724F284685'),('F07B3CA6AAD39BFD520EFFEFC0','F07B2292454364DA2311935565','review','Review','review.htm',1,'1','2002-09-24 16:28:59',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F07B3CF003DAFE9F27A30978A7','F07B2292454364DA2311935565','review_detail','Review Detail','review_detail.htm',1,'1','2002-09-24 16:29:23',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F302D4FE6D537C49721004181F','F302D39D46B228A55412E3D127','main_page','Main Page (Index)','index.htm',1,'1','2003-01-28 10:29:51',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30424474044603B72B3C3BA3','F302D39D46B228A55412E3D127','sitemap','Site Map Page','sitemap.htm',1,'1','2003-01-28 16:35:57',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F308692D6AEE5FC7D30CACD99C','F302D39D46B228A55412E3D127','fact_figure','Fact & Figure','fact_figure.htm',1,'1','2003-01-29 12:29:49',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F308699BD428889A5632750137','F302D39D46B228A55412E3D127','press_release','Press Release','press_release.htm',1,'1','2003-01-29 12:30:09',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30869E6C74A56DDF243778A81','F302D39D46B228A55412E3D127','press_release_archive','Press Release Archive','press_release_archive.htm',1,'1','2003-01-30 11:12:30','1','2003-01-30 11:12:30','0','ic','EE185CE0B82B41C1724F284685'),('F3086A26128F78FF6610A15097','F302D39D46B228A55412E3D127','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1','2003-01-30 11:12:56','1','2003-01-30 11:12:56','0','ic','EE185CE0B82B41C1724F284685'),('F3086B7E11837F450B77703C40','F302D39D46B228A55412E3D127','news','News','news.htm',1,'1','2003-01-30 11:14:47','1','2003-01-30 11:14:47','0','ic','EE185CE0B82B41C1724F284685'),('F3086C6E2EBC786E9D341C958','F302D39D46B228A55412E3D127','news_archive','News Archive','news_archive.htm',1,'1','2003-01-30 11:15:16','1','2003-01-30 11:15:16','0','ic','EE185CE0B82B41C1724F284685'),('F3086CF73451A89028B438A4C2','F302D39D46B228A55412E3D127','news_detail','News Detail','news_detail.htm',1,'1','2003-01-30 11:15:43','1','2003-01-30 11:15:43','0','ic','EE185CE0B82B41C1724F284685'),('F3086DE1A3F88F17DAA77F5EA8','F302D39D46B228A55412E3D127','contact_us','Contact Us','contact_us.htm',1,'1','2003-01-29 12:34:48',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D4CB7B4E33CC6D6DD8CE981','F302D39D46B228A55412E3D127','company_bod','Company Board Of Director','company_bod.htm',1,'1','2003-01-30 11:16:56',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D4D403DB20A08FF49504FFA','F302D39D46B228A55412E3D127','company_bod_detail','Company Board Of Director (detail)','company_bod_detail.htm',1,'1','2003-01-30 11:17:33',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D4DCBF2ED7BDB30932694B1','F302D39D46B228A55412E3D127','company_lob','Company Line Of Business','company_lob.htm',1,'1','2003-01-30 11:18:11',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D4E637FCDCE6858748449C9','F302D39D46B228A55412E3D127','company_lob_detail_plantation','Company Line Of Business Detail Plantation','company_lob_detail_plantation.htm',1,'1','2003-03-20 13:11:19','1','2003-03-20 13:11:19','0','ic','EE185CE0B82B41C1724F284685'),('F30D4F8ED066660E9734DEF2B','F302D39D46B228A55412E3D127','company_structure','Company Structure (About Us)','company_structure.htm',1,'1','2003-01-30 11:20:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D5022D3E7ABE3498CA22B8A','F302D39D46B228A55412E3D127','company_subsidary','Company Subsidary (index of company menu)','company_subsidary.htm',1,'1','2003-01-30 11:20:59',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D50F630C4B3D981A66A4BD4','F302D39D46B228A55412E3D127','product_service','Product & Service','product_service.htm',1,'1','2003-01-30 11:22:51',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30D52A7E7A3412E1B36707786','F302D39D46B228A55412E3D127','product_service_detail','Product & Service (detail)','product_service_detail.htm',1,'1','2003-01-30 11:23:25',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F30EDC23C73CD41B124A2387A7','F302D39D46B228A55412E3D127','fact_figure_detail','Fact & Figure (detail)','fact_figure_detail.htm',1,'1','2003-01-30 18:33:06',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F322D9F44D31058660940D64A7','F302D39D46B228A55412E3D127','company_lob_detail_mining','Company Line of Business Detail Mining','company_lob_detail_mining.htm',1,'1','2003-03-20 13:23:09','1','2003-03-20 13:23:09','0','ic','EE185CE0B82B41C1724F284685'),('F322DABC02B874D8B83A401BA1','F302D39D46B228A55412E3D127','company_lob_detail_horticulture','Company  Line of Business Detail Horticulture','company_lob_detail_horticulture.htm',1,'1','2003-03-20 13:12:19','1','2003-03-20 13:12:19','0','ic','EE185CE0B82B41C1724F284685'),('F322DBD188CC9C1CD5B70A28E2','F302D39D46B228A55412E3D127','company_lob_detail_others','Company Line of Business Detail Others','company_lob_detail_others.htm',1,'1','2003-03-20 13:12:47','1','2003-03-20 13:12:47','0','ic','EE185CE0B82B41C1724F284685'),('F40A0EE9A7454478A824E1AD44','F302D39D46B228A55412E3D127','company_lob_detail_logging','Company  Line of Business Detail Logging','company_lob_detail_logging.htm',1,'1','2003-03-20 13:13:31',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `skin` ENABLE KEYS */;

--
-- Table structure for table `smilecounter`
--

DROP TABLE IF EXISTS `smilecounter`;
CREATE TABLE `smilecounter` (
  `membership_id` varchar(28) default NULL,
  `backend_id` varchar(28) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smilecounter`
--


/*!40000 ALTER TABLE `smilecounter` DISABLE KEYS */;
LOCK TABLES `smilecounter` WRITE;
INSERT INTO `smilecounter` VALUES ('149','3');
UNLOCK TABLES;
/*!40000 ALTER TABLE `smilecounter` ENABLE KEYS */;

--
-- Table structure for table `sni_member_bengkel`
--

DROP TABLE IF EXISTS `sni_member_bengkel`;
CREATE TABLE `sni_member_bengkel` (
  `id` varchar(28) NOT NULL default '',
  `membership_code_interlokal` char(2) NOT NULL default '',
  `membership_code_kode_pos` varchar(4) NOT NULL default '',
  `membership_code_digit` varchar(9) NOT NULL default '',
  `first_name` varchar(35) NOT NULL default '',
  `last_name` varchar(35) default NULL,
  `password` varchar(15) NOT NULL default '',
  `email` varchar(125) default NULL,
  `sex` varchar(6) NOT NULL default '',
  `ktp` varchar(30) NOT NULL default '',
  `martial_status` varchar(15) NOT NULL default '',
  `address1` varchar(55) default NULL,
  `city` varchar(15) default NULL,
  `post_code` varchar(10) NOT NULL default '',
  `province` varchar(35) NOT NULL default '',
  `country` varchar(35) NOT NULL default '',
  `telp` varchar(35) NOT NULL default '',
  `fax` varchar(35) NOT NULL default '',
  `handphone` varchar(35) NOT NULL default '',
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sni_member_bengkel`
--


/*!40000 ALTER TABLE `sni_member_bengkel` DISABLE KEYS */;
LOCK TABLES `sni_member_bengkel` WRITE;
INSERT INTO `sni_member_bengkel` VALUES ('ED8EFCD83137B1F3C0E41A1FC7','87','8798','61','Chandra','wijaya','password','skyjamz@hotmail.com','m','123456789','single','Teluk gong Jl.Y','Jakarta','14450','DKI Jakarta','indonesia','654897462','654879764','08162456879','EACA3FDC25B52DC','2002-05-02 09:24:54',NULL,'0000-00-00 00:00:00','0','ic',NULL),('ED94E16078B2967F93D36486D6','87','8798','142','Yulianty','Liong','yuli','','fe','','unmarried','','','','','','','','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL),('ED94E4B8466DA223CE4624D16A','87','8798','144','Dedeng','','dedeng','','female','','unmarried','','','','','','','','','','0000-00-00 00:00:00','','0000-00-00 00:00:00','','',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `sni_member_bengkel` ENABLE KEYS */;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(10) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--


/*!40000 ALTER TABLE `status` DISABLE KEYS */;
LOCK TABLES `status` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;

--
-- Table structure for table `subsidary`
--

DROP TABLE IF EXISTS `subsidary`;
CREATE TABLE `subsidary` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `address` text,
  `detail` text NOT NULL,
  `url_image1` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `url_image3` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subsidary`
--


/*!40000 ALTER TABLE `subsidary` DISABLE KEYS */;
LOCK TABLES `subsidary` WRITE;
INSERT INTO `subsidary` VALUES ('F3132F13E0914B4F07AC47DA05','PT. Intercitra Prima Integrasi','Desa Murung Keramat, Kecamatan Selat, Kabupaten Kapuas, Kalimantan Tengah.','',NULL,NULL,NULL,'F162B448063A847','2003-03-25 12:04:17','F162B448063A847319E641EF7D','2003-03-25 12:04:17','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F313346BDB791AAC4D271E93C9','PT Kehutanan','','',NULL,NULL,NULL,'F162B448063A847','2003-03-18 15:56:37',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F3133492BCE6F40CC8B1F438E5','PT Perkayuan','','',NULL,NULL,NULL,'F162B448063A847','2003-03-18 15:56:44',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F31334B3542D790038A0B17E9D','PT Lainnya','','',NULL,NULL,NULL,'F162B448063A847','2003-03-18 15:56:51',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40054F2FDF6D0B998BA5147B','PT. Antang Ganda Utama','Jl. Cempaka Putih Tengah II Block C No. 21\r\n<br>\r\nJakarta Pusat\r\n<br>\r\nTel. 021.4260933\r\n<br>\r\nFax. 021.4260933\r\n<br>\r\nEmail. <a href=\"mailto:info@intercitra.com\">info@intercitra.com</a>','<ul>\r\n  <li>Kapasitas Produksi : 200 ton/hr </li>\r\n  <li>Jenis Produksi : Hasil Hutan</li>\r\n  <li>Luas Areal : 1000 Ha</li>\r\n  <li>Target Produksi Th 2003 : Pembukaan 200 Lahan baru</li>\r\n</ul>','F40990306EC54DCD315C8733DDimg1.gif','F40990306EC54DCD315C8733DDimg2.gif','F40990307DC59A1F38DD305CBEimg3.gif','F162B448063A847319E641EF7D','2003-03-25 12:11:41','F162B448063A847319E641EF7D','2003-03-25 12:11:41','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F4098E903BEF8CD68572BC9C6F','PT. inter','Jl. Cempaka Putih Tengah II Block C No. 21\r\n<br>\r\nJakarta Pusat\r\n<br>\r\nTel. 021.4260933\r\n<br>\r\nFax. 021.4260933\r\n<br>\r\nEmail. <a href=\"mailto:info@intercitra.com\">info@intercitra.com</a>','Kapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\n','F4098F9249C19658E05950AC01image01.jpg','F4098F92D6C50CD69BB99B10A8image02.jpg','F4098F92D6C50CD69BB99B10A8image03.jpg','F162B448063A847319E641EF7D','2003-03-25 11:42:15','F162B448063A847319E641EF7D','2003-03-25 11:42:15','0','ic','F185BD3FDC5CC7989A3CED51A1'),('F40A2EE778115018EE80E397AB','PT. Matahari Kahuripan Indonesia','Jl. Cempaka Putih Tengah II Block C No. 21\r\n<br>\r\nJakarta Pusat\r\n<br>\r\nTel. 021.4260933\r\n<br>\r\nFax. 021.4260933\r\n<br>\r\nEmail. <a href=\"mailto:info@intercitra.com\">info@intercitra.com</a>\r\n\r\n','',NULL,NULL,NULL,'F162B448063A847319E641EF7D','2003-03-20 13:48:13',NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1');
UNLOCK TABLES;
/*!40000 ALTER TABLE `subsidary` ENABLE KEYS */;

--
-- Table structure for table `support`
--

DROP TABLE IF EXISTS `support`;
CREATE TABLE `support` (
  `id` varchar(28) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `email` varchar(128) NOT NULL default '',
  `category_id` varchar(28) default NULL,
  `body` text,
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--


/*!40000 ALTER TABLE `support` DISABLE KEYS */;
LOCK TABLES `support` WRITE;
INSERT INTO `support` VALUES ('F8AF2DB8D8880A6F46FB609210','Dedeng','dedeng@blueoxygen.org','Support','test',NULL,'2003-11-06 10:54:58',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F87D01DE3F3C66F431857EDB6D','test','test@yahoo.com','F3A3C194E7E95564790B11AE0B','test ahahahhhh',NULL,'2003-10-27 17:06:03',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F87CF26D6AF380B45D13B252C3','yanti','yanti@intercitra.com','F3A3C194E7E95564790B11AE0B','test lagiiii',NULL,'2003-10-27 16:49:11',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F4C8369B2FFE223F639ABBE390','Frans','frans@intercitra.com','F3A3C194E7E95564790B11AE0B','Tolong tolong',NULL,'2003-04-26 11:24:02',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F87CE028ECD2FCBDE721BCAFDF','dedeng','dedeng@blueoxygen.org','F3A3C194E7E95564790B11AE0B',NULL,NULL,'2003-10-27 16:29:14',NULL,'0000-00-00 00:00:00','0','ic',NULL),('F87CE2256D4D4D077AD741BFD9','Umar','umar@intercitra.com','F3A3C194E7E95564790B11AE0B',NULL,NULL,'2003-10-27 16:31:24',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `support` ENABLE KEYS */;

--
-- Table structure for table `task_doc_upload`
--

DROP TABLE IF EXISTS `task_doc_upload`;
CREATE TABLE `task_doc_upload` (
  `id` varchar(28) NOT NULL default '',
  `task_id` varchar(28) NOT NULL default '',
  `file_name` varchar(255) NOT NULL default '',
  `file_desc` varchar(255) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_doc_upload`
--


/*!40000 ALTER TABLE `task_doc_upload` DISABLE KEYS */;
LOCK TABLES `task_doc_upload` WRITE;
INSERT INTO `task_doc_upload` VALUES ('FAF5277E73942ED001E1ADA1E0','FAF506AFCFC61A8E401E8242E6','FAF5277E73942ED001E1ADA1E0database(smiletown).xls','Perubahan pada database smiletown',NULL,'2004-02-27 11:08:56',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `task_doc_upload` ENABLE KEYS */;

--
-- Table structure for table `template`
--

DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `id` varchar(28) NOT NULL default '',
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
INSERT INTO `template` VALUES ('0','','2001-07-12 19:58:45','','0000-00-00 00:00:00','None','',NULL,'0','',0,NULL),('2',NULL,'2001-07-15 16:21:11','1','2001-07-15 16:21:11','Article 2 image','',NULL,'23','template2.xsl',1,NULL),('3',NULL,'2001-07-12 19:58:45',NULL,'0000-00-00 00:00:00','Article 3 image',NULL,NULL,'23','template3.xsl',1,NULL),('EDCEA7A1ED94597C49EA9303D9','1','2002-05-14 18:06:11',NULL,'0000-00-00 00:00:00','Order Collection','Ordered Collection',NULL,'EDCEA76E0E114961F605AAF79C',NULL,1,NULL),('EDCEA8252152A8A6CCD0AC9C82','1','2002-05-14 18:06:32',NULL,'0000-00-00 00:00:00','Standard Collection','Standard Collection',NULL,'EDCEA76E0E114961F605AAF79C',NULL,1,NULL),('EDCEA8252152A8A6FGD0AC9C82','chandra','2002-05-21 12:46:13',NULL,'2002-05-21 12:43:28','Classic','classic template','classic',NULL,NULL,0,NULL),('EDCEA8672152A8A6CCD0AC9C82','chandra','2002-05-21 12:46:03',NULL,'2002-05-21 12:46:03','Techno','Technology template','techno',NULL,NULL,0,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `template` ENABLE KEYS */;

--
-- Table structure for table `template_object`
--

DROP TABLE IF EXISTS `template_object`;
CREATE TABLE `template_object` (
  `id` varchar(28) NOT NULL default '',
  `theme_id` varchar(28) default NULL,
  `template_skin` varchar(25) NOT NULL default '',
  `description` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
INSERT INTO `template_object` VALUES ('F2FF1B11C6A173DABC02724EAF','EE39E38171B7328E0269CF4E06','collection.vm','Collection.vm','1','2003-01-27 17:07:44',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
  `name` varchar(25) NOT NULL default '',
  `description` varchar(255) default NULL,
  `active_flag` tinyint(1) default '1',
  `theme_folder` varchar(255) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme`
--


/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
LOCK TABLES `theme` WRITE;
INSERT INTO `theme` VALUES ('EE39E360586DC4030AA5D88CAA','Tecno','Tecno Skin',1,'techno','1','2002-07-09 15:05:57','1','2002-07-09 15:05:57','0','ic','EE185CE0B82B41C1724F284685'),('EE39E38171B7328E0269CF4E06','Classic','Classic Theme',1,'classic','1','2002-07-09 15:06:03','1','2002-07-09 15:06:03','0','ic','EE185CE0B82B41C1724F284685'),('EEED769D1CA72C8DD9829685BC','Erica','Green Ericsson',1,'erica','1','2002-08-01 01:05:14','1','2002-08-01 01:05:14','0','ic','EE185CE0B82B41C1724F284685'),('EEEE7A657391D5CD89EAFFA648','Green Pattern','Green with Gray Pattern',1,'greenpattern','1','2003-04-28 11:45:10','1','2003-04-28 11:45:10','0','ic','EE185CE0B82B41C1724F284685'),('EF339499195C4175BFFF300B14','GreenMatrix','Green Matrix',1,'greenmatrix','1','2002-07-23 01:40:41',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EF77053DB1F41DEAE9E0EC8A2F','Green Portal','Green Portal',1,'greenportal','1','2002-08-05 03:48:12','1','2002-08-05 03:48:12','0','ic','EE185CE0B82B41C1724F284685'),('EF878CDA15F79452ECED780C03','Interbox','Interbox',1,'interbox','1','2003-01-28 10:28:47','1','2003-01-28 10:28:47','0','ic','EE185CE0B82B41C1724F284685'),('EF8E248CD64707158718C93173','Guerilla','Guerilla Theme',1,'dot_boobs','1','2003-01-28 10:28:56','1','2003-01-28 10:28:56','0','ic','EE185CE0B82B41C1724F284685'),('F07B2292454364DA2311935565','Blueoxygen','Blueoxygen',1,'template14','1','2003-01-28 10:29:04','1','2003-01-28 10:29:04','0','ic','EE185CE0B82B41C1724F284685'),('F302D39D46B228A55412E3D127','Makin','Makin Portal',1,'makinwb','1','2003-02-06 17:18:37','1','2003-02-06 17:18:37','0','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;

--
-- Table structure for table `tips_trick`
--

DROP TABLE IF EXISTS `tips_trick`;
CREATE TABLE `tips_trick` (
  `id` varchar(28) NOT NULL default '',
  `headline` varchar(100) default NULL,
  `subheadline` varchar(100) default NULL,
  `abstract` text,
  `body` text,
  `keywords` varchar(128) default NULL,
  `transmitted_date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `category_id` varchar(50) default NULL,
  `url_thumbnail1` varchar(255) default NULL,
  `url_image1` varchar(255) default NULL,
  `url_thumbnail2` varchar(255) default NULL,
  `url_image2` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tips_trick`
--


/*!40000 ALTER TABLE `tips_trick` DISABLE KEYS */;
LOCK TABLES `tips_trick` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `tips_trick` ENABLE KEYS */;

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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(15) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--


/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
LOCK TABLES `user_role` WRITE;
INSERT INTO `user_role` VALUES ('F78504D16152CEEA643E886D12','F36F96E4EA83CB95AC4DC601F2','ff808081059f9f5e01059f9fbc3e',0,'F36F96E4EA83CB9','2005-08-10 16:07:31',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F78A4F806ED6607BFD6D540A4E','1','ff808081059f9f5e01059f9fbc3e',1,'1','2005-08-10 16:12:49',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8154AEBCF7217F34B7C689C91','F501555A2ECD5AC8FCC32F4DD6','ff808081059f9f5e01059f9fbc3e',0,'1','2005-08-10 16:31:30',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FAF5F932667792F8F16C3F5A8A','FAF5F729BB986D84D965E8C0F4','3',1,'1','2004-02-27 15:04:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FAF5FA32FB59AFE9FEBB615518','FAF5F729BB986D84D965E8C0F4','FA84B7C4A3DA2013FA2CEA182B',0,'1','2004-02-27 15:04:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FABD26F9D5C4D3E32E4BFFAC523','1','ff808081059f9f5e01059fa3482b',0,NULL,'2005-08-10 16:41:45',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAA39A4195CE64EF0E058B0968','F36F8BFFF97F8A16505B8305F7','2',0,'1','2004-03-29 12:41:17',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FABD26F9D5C4D3E32E4BFFAC522','F53FAAF09AB84F412CDA27FF72','3',0,NULL,'2004-02-16 14:07:52',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FAA399FA12BCA7098B1CC597F3','F36F8BFFF97F8A16505B8305F7','3',1,'1','2004-03-29 12:41:17',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FA89280AA024785E951B6236130','FA89238CD9BCDF331DF9B845EB','4',0,NULL,'2004-02-06 11:48:46',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA8923EB70976CA5ABB7E6FD7D','FA89238CD9BCDF331DF9B845EB','FA84B7C4A3DA2013FA2CEA182B',1,'1','2004-02-06 11:47:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FA8916B91AECAF9B13474EEA390','F501555A2ECD5AC8FCC32F4DD6','FA84B7C4A3DA2013FA2CEA182B',0,NULL,'2004-02-06 11:29:51',NULL,'0000-00-00 00:00:00','0','ic',NULL),('FA892427F4A288E5756BF19A75','FA89238CD9BCDF331DF9B845EB','3',0,'1','2004-02-06 11:47:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
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
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
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
INSERT INTO `user_site` VALUES ('EEB0BB5046410D02A6CE7ACF65','EEB0B93A1B6402AF681315D441','EE185CE0B82B41C1724F284685','',NULL,'2002-06-27 15:41:45',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EEB0BAE43A4263DAED44E63E2C','EEB0B93A1B6402AF681315D441','EDDCA9DCE41A14EE5D5ABE7E3C','',NULL,'2002-06-27 15:41:45',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F185CFA73ECFB1AD36B2903150','F162B448063A847319E641EF7D','F185BD3FDC5CC7989A3CED51A1','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F74B6ABBA98BA2CB244E682174','F162B448063A847319E641EF7D','F74B696E86AA0CA5819A4FB36C','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F199E877AC273113D0FA8A3F1F','F162B448063A847319E641EF7D','F199E755B97B662FC248CAC80','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F369EA9AE7DA283CDE99D7A274','F369EA124E984A9790A43C14B1','EE185CE0B82B41C1724F284685','',NULL,'2003-02-18 10:27:03',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F369EB3439B0BBB2BBD1E9E41A','F369EA124E984A9790A43C14B1','F199E755B97B662FC248CAC80','',NULL,'2003-02-18 10:27:03',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F36EFB4E1A2F77BB20AF829316','F36EFAE07C9722187EB9F5E3D3','EE185CE0B82B41C1724F284685','',NULL,'2003-02-18 10:30:23',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F185D188037C8F3BC5807927F0','F162B448063A847319E641EF7D','F185C351B2FAC396169017978F','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E118762EE8790C80C4A1923F','F3FB0D6714905E04E2586A8E1A','F78E9748E9F76ABD233C5EAD39','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8EE490696FC6ED025A4C4DD20','F36F8BFFF97F8A16505B8305F7','F8EE4789BA9DC24BAD1ECD597D','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F4D30893462F2C792DB4185F95','F36F8BFFF97F8A16505B8305F7','F4D30718756B8401E43FD2AAE6','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F50155FC3216ED4114889E41C1','F501555A2ECD5AC8FCC32F4DD6','F4D30718756B8401E43FD2AAE6','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F50155E55F8EDDC8BCB3A9EBF0','F501555A2ECD5AC8FCC32F4DD6','F4E6A635A8AC141BAE7F98504','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F50155CF326EFD2295732FE25D','F501555A2ECD5AC8FCC32F4DD6','F4DD64134EC050E3D0A256EA0D','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F53FABB5EDFA9FFA635D4F13B2','F53FAAF09AB84F412CDA27FF72','F4D30718756B8401E43FD2AAE6','','1','2003-09-10 11:38:48',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('EEB0B1C4E117F2EBC107D7E03A','1','EE185CE0B82B41C1724F284685','','1','2003-09-27 10:27:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F185CF82299CD400D6344EC11C','F162B448063A847319E641EF7D','F185C29BDFC64CD3D08E1A15E8','','1','2003-09-27 14:46:12',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F78504E9CA6B87DFD26F26A198','F36F96E4EA83CB95AC4DC601F2','EE185CE0B82B41C1724F284685','','F36F96E4EA83CB95AC4DC601F2','2003-10-01 13:39:58',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8A07899371FBFC29CD9A655CF','F36F8BFFF97F8A16505B8305F7','F185C351B2FAC396169017978F','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E1176BD2F22E8D87F4FC1984','F36F96E4EA83CB95AC4DC601F2','F74B696E86AA0CA5819A4FB36C','','F36F96E4EA83CB95AC4DC601F2','2003-10-01 13:39:58',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E11861C3B616E56BD4F59606','F3FB0D6714905E04E2586A8E1A','F4E6A635A8AC141BAE7F98504','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E11850AACA9728DC1C44D550','F3FB0D6714905E04E2586A8E1A','F4DD64134EC050E3D0A256EA0D','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7E118398CBBE3BDD35A7A88BC','F3FB0D6714905E04E2586A8E1A','F4D30718756B8401E43FD2AAE6','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F7DD5471E74DAACCF5C6AF2C8F','F36F8BFFF97F8A16505B8305F7','F74B696E86AA0CA5819A4FB36C','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8C9C0D7F3766F540CAC2C827E','F501555A2ECD5AC8FCC32F4DD6','EE185CE0B82B41C1724F284685','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8C9C17C35BC3070349F969EE9','F501555A2ECD5AC8FCC32F4DD6','F74B696E86AA0CA5819A4FB36C','','1','2003-11-11 16:28:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F8CA1E5F6435F95FE1841F5E56','F3FB0D6714905E04E2586A8E1A','F74B696E86AA0CA5819A4FB36C','','1','2003-11-11 16:28:18',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F4DD65DF494F8DAFF30D612131','F36F8BFFF97F8A16505B8305F7','F4DD64134EC050E3D0A256EA0D','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F4E6AF2191AD16BED7A4EB7C4A','F36F8BFFF97F8A16505B8305F7','F4E6A635A8AC141BAE7F98504','','1','2004-02-11 15:04:20',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('F9A20532CF58D9C5F170229724','F9A204566AA30595ACD597D51E','F9A2020F6D2B0CA30F3A1C8745','','1','2003-12-23 14:38:41',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FA89248E72953C4C73DFA64111','FA89238CD9BCDF331DF9B845EB','F74B696E86AA0CA5819A4FB36C','','1','2004-02-06 11:47:35',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FAF5FAF8EC2CB834BE217641D1','FAF5F729BB986D84D965E8C0F4','F74B696E86AA0CA5819A4FB36C','','1','2004-02-27 15:04:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685'),('FAF5FB2E8DF3DC2618FEC102C8','FAF5F729BB986D84D965E8C0F4','F185C351B2FAC396169017978F','','1','2004-02-27 15:04:02',NULL,'0000-00-00 00:00:00','0','ic','EE185CE0B82B41C1724F284685');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_site` ENABLE KEYS */;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `ID` varchar(28) NOT NULL default '',
  `NAME` varchar(128) NOT NULL default '',
  `TITLE` varchar(128) default NULL,
  `OFFICE` varchar(128) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Daftar Visitor';

--
-- Dumping data for table `visitor`
--


/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
LOCK TABLES `visitor` WRITE;
INSERT INTO `visitor` VALUES ('F7A9145B9642FC5CFBD79F3ABF','asds','asdasd','asdsd'),('F7A915EC0C38183C81C339C1A','ooiertu','srmmmasdf','sdfgjh'),('F7A916D22ED8512840405644F7','pppweroo','mmsdfkh','KSDKFL9'),('F7A96A6F7EC6E39AF34A939ED6','Umar','Programmer','Intercitra'),('F7A9740999CF8720A378F126C7','ooiweur','ooiwer','oiuwer');
UNLOCK TABLES;
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;

--
-- Table structure for table `visitor_detail`
--

DROP TABLE IF EXISTS `visitor_detail`;
CREATE TABLE `visitor_detail` (
  `ID` varchar(28) NOT NULL default '',
  `ID_VISITOR` varchar(28) NOT NULL default '',
  `ID_SITE` varchar(28) NOT NULL default '',
  `DATE` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Tabel kunjungan visitor ke site';

--
-- Dumping data for table `visitor_detail`
--


/*!40000 ALTER TABLE `visitor_detail` DISABLE KEYS */;
LOCK TABLES `visitor_detail` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `visitor_detail` ENABLE KEYS */;

--
-- Table structure for table `web_link`
--

DROP TABLE IF EXISTS `web_link`;
CREATE TABLE `web_link` (
  `id` varchar(28) NOT NULL default '',
  `link_url` varchar(128) default NULL,
  `link_text` varchar(255) default NULL,
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `web_link`
--


/*!40000 ALTER TABLE `web_link` DISABLE KEYS */;
LOCK TABLES `web_link` WRITE;
INSERT INTO `web_link` VALUES ('F07FCCB3BE58B3C064012378EB','www.intercitra.com','Intercitra Website, our sponsor','EEA063FE983851E','2003-05-07 13:40:20','F501555A2ECD5AC8FCC32F4DD6','2003-05-07 13:40:20','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F084492A4A2C8D93F58E0536C8','www.guerilla-forum.org','This is our Guerilla project.<br>\r\nYou can visit us..here..<br>\r\nRebranding your corporation with Guerilla','EEA063FE983851E','2003-05-07 13:56:15','F501555A2ECD5AC8FCC32F4DD6','2003-05-07 13:56:15','E8D4BE646EF710FAB3F79BE639','ic','F4DD64134EC050E3D0A256EA0D'),('F2EA82B0963A694E83849A7EF5','www.neotek.co.id','Indonesian Magazine, Hacker must read','F162B448063A847','2003-05-07 13:42:27','F501555A2ECD5AC8FCC32F4DD6','2003-05-07 13:42:27','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F4E3116394C22B9ADAF30439C5','eclipse-plugins.2y.net','Eclipse Plug Ins Portal','F36F8BFFF97F8A16505B8305F7','2003-05-07 15:18:38','F36F8BFFF97F8A16505B8305F7','2003-05-07 15:18:38','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F5015B509FF04AD2AD8190466D','www.benpinter.net','Indonesian Website (Manage by Isak Rickyanto)','F501555A2ECD5AC8FCC32F4DD6','2003-05-07 15:18:49','F36F8BFFF97F8A16505B8305F7','2003-05-07 15:18:49','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F501646E3DF106E15918D2F680','www.developerforce.net/','Developer Force Network','F501555A2ECD5AC8FCC32F4DD6','2003-05-07 15:18:57','F36F8BFFF97F8A16505B8305F7','2003-05-07 15:18:57','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F54362991CE3179656894402FA','','','F162B448063A847319E641EF7D','2003-05-20 09:25:26',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F185C29BDFC64CD3D08E1A15E8'),('F5590DE6C6E5D5E909EF6F959D','www.opensymphony.com','OpenSymphony is an Open Source project dedicated to providing enterprise class J2EE applications and components. Our components aim to be specification compliant, and should work in any J2EE compliant application server. (Although some components only req','F501555A2ECD5AC8FCC32F4DD6','2003-06-06 11:30:41','F501555A2ECD5AC8FCC32F4DD6','2003-06-06 11:30:41','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F559153B1BDC46DF2356622090','www.ofbiz.org','The Open For Business Project, founded in May, 2001 by David E. Jones and Andy Zeneski, is an open source enterprise automation software project licensed under the MIT Open Source License. The goal of the project is to create an open source application fr','F501555A2ECD5AC8FCC32F4DD6','2003-06-06 11:30:35','F501555A2ECD5AC8FCC32F4DD6','2003-06-06 11:30:35','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F59B60B1E6CBCBF18C02132649','www.jaydeetechnology.co.uk/planetjava/tutorials/swing.htm','Swing Tutorial','F501555A2ECD5AC8FCC32F4DD6','2003-06-06 11:30:24',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D'),('F988766897CA9A56BAE6DF88E8','','','F36F8BFFF97F8A16505B8305F7','2003-12-18 15:32:00',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic','F4DD64134EC050E3D0A256EA0D');
UNLOCK TABLES;
/*!40000 ALTER TABLE `web_link` ENABLE KEYS */;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
CREATE TABLE `website` (
  `ID` varchar(28) NOT NULL default '',
  `NAME` varchar(128) NOT NULL default '',
  `URL` varchar(128) default NULL,
  `STATUS` varchar(128) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Daftar website';

--
-- Dumping data for table `website`
--


/*!40000 ALTER TABLE `website` DISABLE KEYS */;
LOCK TABLES `website` WRITE;
INSERT INTO `website` VALUES ('FHGY7654098898JUILO09IUYHJU6','Yahoo!','www.yahoo.com','active'),('FHGY7654098898JUILO09IUYHJ34','Google - The Best Search Engine','www.google.com','active'),('FHGY7654098898KBBLO09IUYHJU6','Indonesia news portal','www.detik.com','active'),('F7A974F2B4C933F486C22FF7BE','Amazon book store','ww.amazon.com','active'),('F7A97C2121E9709DC2EC4B72D8','Intercitra','www.intercitra.com','active'),('F7A97CAEA9299967F6A245AB3','Kompas','www.kompas.com','active');
UNLOCK TABLES;
/*!40000 ALTER TABLE `website` ENABLE KEYS */;

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
-- Table structure for table `wizards`
--

DROP TABLE IF EXISTS `wizards`;
CREATE TABLE `wizards` (
  `id` varchar(28) NOT NULL default '',
  `wiz_name` varchar(50) default NULL,
  `wiz_description` varchar(128) default NULL,
  `wiz_folder` varchar(128) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wizards`
--


/*!40000 ALTER TABLE `wizards` DISABLE KEYS */;
LOCK TABLES `wizards` WRITE;
INSERT INTO `wizards` VALUES ('EAD2EC7DBCCD548AEBCBADE8E3','Membership','Registration for New Member','/member',1,'1','2001-12-24 20:07:30','1','2001-12-24 20:07:30','0','ic',NULL),('EAD30EE12D1F2A2ABF82B3D22B','WizWizGen','Wizard Generator','/wizard_generator',1,'1','2001-12-17 12:08:24','1','2001-12-17 12:08:24','0','ic',NULL),('EAD7199F04955BC364EE3A9BFA','MarketSpace','MarketSpace is your Virtual Marketplace','/mspace',1,'1','2001-12-18 06:26:27','1','2001-12-18 06:26:27','0','ic',NULL),('EAD731C8A1F91BF747CE07403A','Catalog','Catalog Management','/catalog',1,'1','2001-12-18 06:52:27','1','2001-12-18 06:52:27','0','ic',NULL),('EAD738C5E1E0BBF45246B9AA13','RFQ','RFQ','/rfq',1,'1','2001-12-18 06:53:01',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD86B91E4F9DB7D5E6F84B3C9','Quotations','Quotations','/quotation',1,'1','2001-12-18 12:28:10',NULL,'0000-00-00 00:00:00','0','ic',NULL),('ED2F13A6A961E80A8DF701E7E7','Global Parameter','Global Parameter','global/parameter',1,'1','2002-04-13 22:37:10','1','2002-04-13 22:37:10','0','ic',NULL),('ED61618D94D51115C41E463CC6','Chandra','Chandra testing','asalproduct/asaltransaction',1,'1','2002-04-23 12:52:33','1','2002-04-23 12:52:33','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `wizards` ENABLE KEYS */;

--
-- Table structure for table `wizards_steps`
--

DROP TABLE IF EXISTS `wizards_steps`;
CREATE TABLE `wizards_steps` (
  `id` varchar(28) NOT NULL default '',
  `wizard_id` varchar(28) default NULL,
  `number` int(11) default NULL,
  `name` varchar(50) default NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `file` varchar(255) default NULL,
  `information` varchar(255) default NULL,
  `information_alt` varchar(255) default NULL,
  `main` text,
  `iparent_id` varchar(28) default NULL,
  `private_flag` tinyint(1) NOT NULL default '0',
  `active_flag` tinyint(1) default '1',
  `show_steps_flag` tinyint(1) NOT NULL default '1',
  `create_by` varchar(15) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wizards_steps`
--


/*!40000 ALTER TABLE `wizards_steps` DISABLE KEYS */;
LOCK TABLES `wizards_steps` WRITE;
INSERT INTO `wizards_steps` VALUES ('EAD2FE317CD5D512E9CC2DDEAE','EAD2EC7DBCCD548AEBCBADE8E3',1,'Registration','Registration','Registration New Member','register','Register to Access This Site','Registration Form to Access This Site','M2Space.com \r\n            membership is <b>FREE</b>. However, it is required in order to buy \r\n            or sell products in our marketplace. Membership assures buyers they \r\n            are purchasing from reputable sellers, and assures sellers they are \r\n            conducting business with serious buyers. Please take a few minutes \r\n            to complete the following questionnaire, so that we may qualify you.</font> \r\n          </p>\r\n          <p> \r\n          <ol>\r\n            <li><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\">Sell \r\n              Memberships - Open to all qualified companies (OEMs, contract electronic \r\n              manufacturers, component manufacturers, distributors, etc.) with \r\n              new (never used) components to sell</font> \r\n            <li><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\">Buy \r\n              Memberships - Open to all individuals, organizations, or companies \r\n              that wish to negotiate, bid, and purchase through FastParts.com</font> \r\n            </li>\r\n          </ol>\r\n          <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\">Member \r\n            may be Sell Members, Buy Members, or both, depending on their needs \r\n            and qualifications.</font> ','0',0,1,1,'1','2001-12-18 11:42:42','1','2001-12-18 11:42:42','0','ic',NULL),('EAD30638AB7DD03AD904F3877','EAD2EC7DBCCD548AEBCBADE8E3',2,'Activation','Activate Account','Activate Account','activate','Activate Account','Activate Account','Your account needs to be activated, because we maintenance your email for our internal data.','0',0,1,1,'1','2001-12-17 11:20:12',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD30F53A3FEDDBD333DD130ED','EAD30EE12D1F2A2ABF82B3D22B',1,'Wizard Generator','Wizard Generator','Wizard will generate folder and files. The folder will be folder name, and the files will be (generator.jsp, generator_action.jsp, generator_form.jsp). Another support such as .vm will be added later.','generator','Wizard Folder Generator','','This wizard will generate all the folder and files.','0',0,1,1,'1','2001-12-17 11:33:25','1','2001-12-17 11:33:25','0','ic',NULL),('EAD572D2B51A1C1CF5B43C3722','EAD2EC7DBCCD548AEBCBADE8E3',3,'Profile','Profile','','profile','User Profile Preferences','','User Profile Preferences','0',0,1,1,'1','2001-12-17 22:37:35',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD71A0C789C215CBAB7DDB78','EAD7199F04955BC364EE3A9BFA',2,'Create MarketSpace','Create MarketSpace','','/register','Register New MarketSpace','An MarketMaker can create more than 1 MarketSpace.','','0',0,1,1,'1','2001-12-18 06:38:55','1','2001-12-18 06:38:55','0','ic',NULL),('EAD72C1DC16B0DB3D72B806EA9','EAD7199F04955BC364EE3A9BFA',1,'Search MarketSpace','Search MarketSpace','','search','Search Your Own MarketSpace','Search Your Own MarketSpace','','0',0,1,1,'1','2001-12-18 10:12:39','1','2001-12-18 10:12:39','0','ic',NULL),('EAD7279BF21B36AF155230732C','EAD7199F04955BC364EE3A9BFA',6,'Manage MarketSpace','Manage MarketSpace','Manager Your MarketSpace','manage','Manage MarketSpace','You cannot change the industry of your MarketSpace.','Managing Your MarketSpace is like managing your own company.','0',0,1,1,'1','2001-12-18 06:38:40','1','2001-12-18 06:38:40','0','ic',NULL),('EAD72CA0FF43D790DD0AA6358C','EAD7199F04955BC364EE3A9BFA',3,'Invite User','Invite User','','invite','Invite User','Invitation can be based on email or registered account.','You can invite a registered account or new account base on email.<br>A notification by email will be sent as soon as you submit the form.','0',0,1,1,'1','2001-12-18 06:41:10',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD72EB64D39C9593865E1B802','EAD7199F04955BC364EE3A9BFA',5,'Approve User','Approve User','','approve','Approve User','Approve User','If there is an user interest with you own MarketSpace, you can approve the user to join you MarketSpace.<br>This feature only affect if your MarketSpace is a private MarketSpace.','0',0,1,1,'1','2001-12-18 06:43:07',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD730C6E0C68C3FF442BD919C','EAD7199F04955BC364EE3A9BFA',5,'User Permission','User Permission','','user_permission','List all your member of your MarketSpace','List all you member of your MarketSpace','','0',0,1,1,'1','2001-12-18 06:44:56',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD732314FB44D3881D5C2E9BB','EAD731C8A1F91BF747CE07403A',1,'Search Product Item','Search Product Item','','search_product','Search Product based on Category','You can search all private and public product.','Add items to \r\n                  your requisition. You can add items from the catalog or from \r\n                  your favorites list, or enter details for non-catalog items. \r\n                  When you finish adding items, click <B>Next</B> to go to the \r\n                  next step in the process or <B>Summary</B> to review your \r\n                  request.','0',0,1,1,'1','2001-12-22 00:10:45','1','2001-12-22 00:10:45','0','ic',NULL),('EAD734A1732D4314A34989D3EA','EAD731C8A1F91BF747CE07403A',2,'Create Product','Create New Product','','create_product','Create New Product','','Our Product Management support UNSPSC as an international standard of categorizing product. Please visit <a href=\"http://www.unspsc.org\">UNSPSC.org</a> if you want to implement it.','0',0,1,1,'1','2001-12-18 06:49:48',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD73C3314799987414F36E48C','EAD738C5E1E0BBF45246B9AA13',1,'Search RFQ','Search RFQ','Search RFQ','search','Search RFQ','You can search posted and unposted RFQ here. Searching base on RFQ Number','','0',0,1,1,'1','2001-12-18 06:58:02','1','2001-12-18 06:58:02','0','ic',NULL),('EAD8572B7F382340CC136B3BF7','EAD738C5E1E0BBF45246B9AA13',2,'Create RFQ','Create RFQ','Create RFQ','create','Create New RFQ','Create New RFQ','','0',0,1,1,'1','2001-12-18 12:06:28',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD857F82B35F09765BAC2385C','EAD738C5E1E0BBF45246B9AA13',3,'Assign Expires Date','Assign Expires Date','Assign Expires Date','assign_expire','Assign Expires Date','Assign Expires Date','Assign Expires Date','0',1,1,1,'1','2001-12-18 12:06:55',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD8585F99AF6D3EF3C992AF11','EAD738C5E1E0BBF45246B9AA13',4,'View Product','View Product','View Product','view_product','View Product','View Product','View Product','0',1,1,1,'1','2001-12-22 00:27:32','1','2001-12-22 00:27:32','0','ic',NULL),('EAD86836CE682DCA42B26C49ED','EAD738C5E1E0BBF45246B9AA13',5,'Shipping','Shipping','Shipping','shipping','Shipping','Shipping','Shipping','0',1,1,1,'1','2001-12-22 00:31:05','1','2001-12-22 00:31:05','0','ic',NULL),('EAD8694FDF627CA977623C4461','EAD738C5E1E0BBF45246B9AA13',6,'Comments','Comments','Comments','comment','Comments','Comments','Comments','0',1,1,1,'1','2001-12-22 00:35:08','1','2001-12-22 00:35:08','0','ic',NULL),('EAD86A0CF9BE5396A276938E2D','EAD738C5E1E0BBF45246B9AA13',7,'Approval','Approval','Approval','approval','Approval','Approval','Approval','0',0,1,1,'1','2001-12-22 00:35:45','1','2001-12-22 00:35:45','0','ic',NULL),('ED2F140F942ACF48BD5D3A5DC9','ED2F13A6A961E80A8DF701E7E7',1,'Global Parameter','Global Parameter','XML Config Manipulator','','Global Information1','Global Alt','Global Description','0',0,1,1,'1','2002-04-23 12:44:19','1','2002-04-23 12:44:19','0','ic',NULL),('EAD86AD0FF9D8946C4017E9E1B','EAD738C5E1E0BBF45246B9AA13',8,'Summary','Summary','Summary','summary','Summary','Summary','Summary','0',1,1,1,'1','2001-12-22 00:33:18','1','2001-12-22 00:33:18','0','ic',NULL),('EAD86BEC4B77AB69A525120E36','EAD86B91E4F9DB7D5E6F84B3C9',1,'Search RFQ','Search RFQ','Search RFQ','search_rfq','Search RFQ','Search RFQ','Search RFQ','0',1,1,1,'1','2001-12-18 12:28:48',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD86C66B2183068128438638B','EAD86B91E4F9DB7D5E6F84B3C9',2,'Response Product Line','Response Product Line','Response Product Line','response_rfq_product','Response Product Line','Response Product Line','Response Product Line','0',1,1,1,'1','2001-12-18 12:29:20',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD86CE4E532790C26D353D1C8','EAD86B91E4F9DB7D5E6F84B3C9',3,'Assign Expires Date','Assign Expires Date','Assign Expires Date','assign_expire','Assign Expires Date','Assign Expires Date','Assign Expires Date','0',1,1,1,'1','2001-12-18 12:29:50',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD86D589163C4EF2456FC1F5B','EAD86B91E4F9DB7D5E6F84B3C9',4,'Post Response','Post Response','Post Response','post_response','Post Response','Post Response','Post Response','0',1,1,1,'1','2001-12-18 12:30:25',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD86DEAA34DB6285AF9B0EEDC','EAD86B91E4F9DB7D5E6F84B3C9',5,'View Response','View Response','View Response','view_response','View Response','View Response','View Response','0',1,1,1,'1','2001-12-18 12:30:58',NULL,'0000-00-00 00:00:00','0','ic',NULL),('EAD86E66CDD498589FDFEC14BA','EAD86B91E4F9DB7D5E6F84B3C9',6,'History','History','History','history','History','History','History','0',1,1,1,'1','2001-12-18 12:31:16',NULL,'0000-00-00 00:00:00','0','ic',NULL),('ED616831B877F593D5426505F8','ED61618D94D51115C41E463CC6',111111,'chandrawizardstepsname','chandrawizardstepstitle','chandrawizardstepsdescription','chandratestingfolder','chandrawizardstepsinformation','chandrawizardstepsinfoalt','chandrawizardstepsinfodesc','0',1,1,1,'1','2002-04-23 12:59:26',NULL,'0000-00-00 00:00:00','0','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `wizards_steps` ENABLE KEYS */;

--
-- Table structure for table `workflow_action`
--

DROP TABLE IF EXISTS `workflow_action`;
CREATE TABLE `workflow_action` (
  `id` varchar(28) NOT NULL default '',
  `code` varchar(255) NOT NULL default '',
  `description` varchar(255) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflow_action`
--


/*!40000 ALTER TABLE `workflow_action` DISABLE KEYS */;
LOCK TABLES `workflow_action` WRITE;
INSERT INTO `workflow_action` VALUES ('E8D6793D768051B18C56701A53','ap','Approve (ap)',1,'1','2001-09-10 21:34:26','1','2001-09-10 21:34:26','ic',NULL),('E8D67DE7FE788DAAB62AAB4D7','rj','Reject (rj)',1,'1','2001-09-10 21:33:18','1','2001-09-10 21:33:18','ip',NULL),('E8D67E593440951270F7812937','fw','Forward (fw)',1,'1','2001-09-10 21:33:14','1','2001-09-10 21:33:14','ip',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `workflow_action` ENABLE KEYS */;

--
-- Table structure for table `workflow_activity`
--

DROP TABLE IF EXISTS `workflow_activity`;
CREATE TABLE `workflow_activity` (
  `id` varchar(28) NOT NULL default '',
  `code` varchar(255) NOT NULL default '',
  `description` varchar(255) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflow_activity`
--


/*!40000 ALTER TABLE `workflow_activity` DISABLE KEYS */;
LOCK TABLES `workflow_activity` WRITE;
INSERT INTO `workflow_activity` VALUES ('E8D678F70C118D213FEAD99F6','ip','In Progress (ip)',1,'1','2001-09-09 17:27:56','1','2001-09-09 17:27:56','ic',NULL),('E8D67D43F8CA645C22CC79A442','ic','Initiated / In Complete (ic)',1,'1','2001-09-09 17:48:49','1','2001-09-09 17:48:49','ic',NULL),('E8D67D6DFB31C62BA935489794','rj','Rejected (rj)',1,'1','2001-09-09 17:28:04','1','2001-09-09 17:28:04','ic',NULL),('E8D67D8A947E0CB15E9D16B775','pl','Published (pl)',1,'1','2001-09-09 17:28:16','1','2001-09-09 17:28:16','ic',NULL),('E8D67EB8F789AE948167691A8','rd','Remedy (rd)',1,'1','2001-09-09 17:28:08','1','2001-09-09 17:28:08','ic',NULL),('E8D6813DF4AE31691D41874130','dl','Deleted (dl)',1,'1','2001-09-09 17:27:39','1','2001-09-09 17:27:39','ic',NULL),('E8D6815EBCE1FFC96EB80594C6','ep','Expired (ep)',1,'1','2001-09-09 17:27:45','1','2001-09-09 17:27:45','ic',NULL),('E8D681BBE1CA2C7DABA816D330','ra','Re-Approve (ra)',1,'1','2001-09-09 17:49:19','1','2001-09-09 17:49:19','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `workflow_activity` ENABLE KEYS */;

--
-- Table structure for table `workflow_hierarchy`
--

DROP TABLE IF EXISTS `workflow_hierarchy`;
CREATE TABLE `workflow_hierarchy` (
  `id` varchar(28) NOT NULL default '',
  `iparentcode` varchar(28) default NULL,
  `role_id` varchar(28) default NULL,
  `active_flag` tinyint(1) default '1',
  `create_by` varchar(28) default NULL,
  `create_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `update_by` varchar(28) default NULL,
  `update_date` timestamp NOT NULL default '0000-00-00 00:00:00',
  `osml_id` varchar(28) default '0',
  `status_id` varchar(28) default 'ic',
  `site_id` varchar(28) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflow_hierarchy`
--


/*!40000 ALTER TABLE `workflow_hierarchy` DISABLE KEYS */;
LOCK TABLES `workflow_hierarchy` WRITE;
INSERT INTO `workflow_hierarchy` VALUES ('E8F8A93F018F6824A42D9579D2','0','3',1,'1','2001-09-16 08:37:41',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic',NULL),('E8F8A98C7F1AF0D7235E06B8B','E8F8A93F018F6824A42D9579D2','2',1,'1','2001-09-16 08:38:00',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic',NULL),('E8F8A9CDAB93F37F4EBC7B9C82','E8F8A98C7F1AF0D7235E06B8B','5',1,'1','2001-09-16 08:42:31','1','2001-09-16 08:42:31','E8D4BE646EF710FAB3F79BE639','ic',NULL),('EC4C4ACC295A5EA969484FE17B','E8F8A98C7F1AF0D7235E06B8B','E8615A12EE2ABB0357752928E5',1,'1','2002-02-28 17:31:04',NULL,'0000-00-00 00:00:00','E8D4BE646EF710FAB3F79BE639','ic',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `workflow_hierarchy` ENABLE KEYS */;

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
  KEY `id_parent` (`id_parent`),
  KEY `id_parent_2` (`id_parent`),
  KEY `id_parent_3` (`id_parent`),
  KEY `id_parent_4` (`id_parent`),
  KEY `id_parent_5` (`id_parent`),
  KEY `id_parent_6` (`id_parent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflow_role`
--


/*!40000 ALTER TABLE `workflow_role` DISABLE KEYS */;
LOCK TABLES `workflow_role` WRITE;
INSERT INTO `workflow_role` VALUES ('3','','2004-02-04 14:42:16','1','2001-09-16 08:41:16','Journalist','Create the document',0,'EE185CE0B82B41C1724F284685','1'),('2','','2004-02-04 14:42:14','','0000-00-00 00:00:00','Editor','Edit the document',0,'EE185CE0B82B41C1724F284685','1'),('1','','2003-09-03 15:40:41','1','2001-09-09 02:01:52','Gods','Gods',1,'EE185CE0B82B41C1724F284685','0'),('4','','2003-09-03 15:41:43','','0000-00-00 00:00:00','Approver','Approve the document',0,'EE185CE0B82B41C1724F284685','0'),('5','','2003-09-03 15:41:43','1','2001-07-13 18:34:12','Publisher','Publish the document',0,'EE185CE0B82B41C1724F284685','0'),('E8615A12EE2ABB0357752928E5','1','2003-09-03 15:41:43','1','2001-08-17 23:29:31','Content Editor','Content Editor',1,'EE185CE0B82B41C1724F284685','0'),('E8615A5669989A7E9BF0062A7C','1','2004-02-06 15:18:30','','0000-00-00 00:00:00','Observer','Observer',1,'EE185CE0B82B41C1724F284685','4'),('E8615A896C1AEEBB5470D7AAB7','1','2003-09-03 15:41:43','','0000-00-00 00:00:00','Legal','Legal',1,'EE185CE0B82B41C1724F284685','0'),('E8615AC4915CA30C4B13A7A1C0','1','2003-09-03 15:41:43','1','2001-08-17 23:29:36','Element Editor','Element Editor',1,'EE185CE0B82B41C1724F284685','0'),('EACA3F077E886331F0863628FF','1','2003-09-03 15:41:43','EACA3FDC25B52DC','2002-07-09 09:43:03','B2B Role','B2B Staff',1,'EE185CE0B82B41C1724F284685','0'),('EC02BB50344043E7379E0256A7','1','2004-02-06 11:20:29',NULL,'0000-00-00 00:00:00','Topaz','Topaz',1,'EE185CE0B82B41C1724F284685','EACA3F077E886331F0863628FF'),('EDA4618AC8FEE77BEEF571204D','1','2003-09-03 15:41:43',NULL,'0000-00-00 00:00:00','pos','pos',1,'EE185CE0B82B41C1724F284685','0'),('F9A202E61CD5BE6BE70F60BC30','1','2003-12-23 14:36:00',NULL,'0000-00-00 00:00:00','Juragan','Juragan',1,'EE185CE0B82B41C1724F284685','0'),('FA84B7C4A3DA2013FA2CEA182B','','2004-02-16 14:07:51','','0000-00-00 00:00:00','supervisor','supervising',0,'EE185CE0B82B41C1724F284685','0');
UNLOCK TABLES;
/*!40000 ALTER TABLE `workflow_role` ENABLE KEYS */;

--
-- Table structure for table `workflow_role1`
--

DROP TABLE IF EXISTS `workflow_role1`;
CREATE TABLE `workflow_role1` (
  `moduleFunctionId` varchar(28) default '[NULL]',
  `id` varchar(28) NOT NULL default '',
  `create_by` varchar(28) default NULL,
  `create_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `update_by` varchar(28) default NULL,
  `update_date` datetime default '0000-00-00 00:00:00',
  `name` varchar(50) NOT NULL default '',
  `description` varchar(125) default NULL,
  `active_flag` tinyint(1) default '0',
  `site_id` varchar(28) default NULL,
  `id_parent` varchar(28) default NULL,
  PRIMARY KEY  (`id`),
  KEY `id_parent_2` (`id_parent`),
  KEY `id_parent_3` (`id_parent`),
  KEY `id_parent_4` (`id_parent`),
  KEY `id_parent_5` (`id_parent`),
  KEY `id_parent_6` (`id_parent`),
  KEY `moduleFunctionId` (`moduleFunctionId`),
  KEY `id_parent_7` (`id_parent`),
  KEY `id_parent_8` (`id_parent`),
  KEY `id_parent_9` (`id_parent`),
  KEY `id_parent_10` (`id_parent`),
  KEY `id_parent_11` (`id_parent`),
  KEY `id_parent_12` (`id_parent`),
  KEY `moduleFunctionId_2` (`moduleFunctionId`),
  KEY `id_parent` (`id_parent`),
  KEY `moduleFunctionId_10` (`moduleFunctionId`),
  KEY `moduleFunctionId_3` (`moduleFunctionId`),
  KEY `moduleFunctionId_11` (`moduleFunctionId`),
  KEY `moduleFunctionId_12` (`moduleFunctionId`),
  KEY `moduleFunctionId_4` (`moduleFunctionId`),
  KEY `moduleFunctionId_13` (`moduleFunctionId`),
  KEY `moduleFunctionId_5` (`moduleFunctionId`),
  KEY `moduleFunctionId_14` (`moduleFunctionId`),
  KEY `moduleFunctionId_6` (`moduleFunctionId`),
  KEY `moduleFunctionId_15` (`moduleFunctionId`),
  KEY `moduleFunctionId_7` (`moduleFunctionId`),
  KEY `moduleFunctionId_16` (`moduleFunctionId`),
  KEY `moduleFunctionId_8` (`moduleFunctionId`),
  KEY `moduleFunctionId_9` (`moduleFunctionId`),
  KEY `moduleFunctionId_17` (`moduleFunctionId`),
  KEY `moduleFunctionId_18` (`moduleFunctionId`),
  KEY `moduleFunctionId_19` (`moduleFunctionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflow_role1`
--


/*!40000 ALTER TABLE `workflow_role1` DISABLE KEYS */;
LOCK TABLES `workflow_role1` WRITE;
INSERT INTO `workflow_role1` VALUES ('ff808081059ecf7601059ed042e9','ff808081059eac2f01059ead143f','1','2005-08-10 11:36:47','1','2005-08-10 15:12:20','aa','ss',1,NULL,NULL),(NULL,'ff808081059eb1d601059eb57027','1','2005-08-10 11:45:55','1','2005-08-10 11:45:55','test','sas',0,NULL,NULL),('ff808081059a343d01059a349e7e','ff808081059ebc5c01059ebd1b5c','1','2005-08-10 11:54:17','1','2005-08-10 11:54:17','admin','sss',0,NULL,NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `workflow_role1` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

