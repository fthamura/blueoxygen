-- MySQL dump 9.11
--
-- Host: localhost    Database: remarkable1
-- ------------------------------------------------------
-- Server version	4.0.20-standard

--
-- Table structure for table `AGENT`
--

CREATE TABLE AGENT (
  id bigint(20) NOT NULL default '0',
  name varchar(255) default NULL,
  status varchar(255) default NULL,
  type varchar(255) default NULL,
  address varchar(255) default NULL,
  birthday date default NULL,
  city varchar(255) default NULL,
  idNumber varchar(255) default NULL,
  idType varchar(255) default NULL,
  marriageStatus varchar(255) default NULL,
  sex varchar(255) default NULL,
  zipNumber varchar(255) default NULL,
  rank varchar(255) default NULL,
  uplineId bigint(20) default NULL,
  faxNumber varchar(255) default NULL,
  phoneNumber varchar(255) default NULL,
  PRIMARY KEY  (id),
  KEY uplineId (uplineId),
  KEY uplineId_2 (uplineId),
  KEY uplineId_3 (uplineId),
  KEY uplineId_4 (uplineId),
  KEY uplineId_5 (uplineId),
  KEY uplineId_6 (uplineId),
  KEY uplineId_7 (uplineId),
  KEY uplineId_8 (uplineId),
  KEY uplineId_9 (uplineId),
  KEY uplineId_10 (uplineId),
  KEY uplineId_11 (uplineId),
  KEY uplineId_12 (uplineId),
  KEY uplineId_13 (uplineId),
  KEY uplineId_14 (uplineId),
  KEY uplineId_15 (uplineId),
  KEY uplineId_16 (uplineId),
  KEY uplineId_17 (uplineId),
  KEY uplineId_18 (uplineId),
  KEY uplineId_19 (uplineId),
  KEY uplineId_20 (uplineId),
  KEY uplineId_21 (uplineId),
  KEY uplineId_22 (uplineId),
  KEY uplineId_23 (uplineId),
  KEY uplineId_24 (uplineId),
  KEY uplineId_25 (uplineId),
  KEY uplineId_26 (uplineId),
  KEY uplineId_27 (uplineId),
  KEY uplineId_28 (uplineId),
  KEY uplineId_29 (uplineId),
  KEY uplineId_30 (uplineId),
  KEY uplineId_31 (uplineId)
) TYPE=MyISAM;

--
-- Dumping data for table `AGENT`
--


--
-- Table structure for table `BENEFICIARY`
--

CREATE TABLE BENEFICIARY (
  id bigint(20) NOT NULL default '0',
  address varchar(255) default NULL,
  name varchar(255) default NULL,
  birthday date default NULL,
  city varchar(255) default NULL,
  faxNumber varchar(255) default NULL,
  height double default NULL,
  idNumber varchar(255) default NULL,
  idType varchar(255) default NULL,
  marriageStatus varchar(255) default NULL,
  occupation varchar(255) default NULL,
  phoneNumber varchar(255) default NULL,
  productType varchar(255) default NULL,
  sex varchar(255) default NULL,
  weight double default NULL,
  zipNumber varchar(255) default NULL,
  claim decimal(19,2) default NULL,
  premium decimal(19,2) default NULL,
  paymentStatus varchar(255) default NULL,
  rank varchar(255) default NULL,
  registrationDay date default NULL,
  uplineId bigint(20) default NULL,
  agentId bigint(20) default NULL,
  PRIMARY KEY  (id),
  KEY uplineId (uplineId),
  KEY agentId (agentId),
  KEY uplineId_2 (uplineId),
  KEY agentId_2 (agentId),
  KEY uplineId_3 (uplineId),
  KEY agentId_3 (agentId),
  KEY uplineId_4 (uplineId),
  KEY agentId_4 (agentId),
  KEY uplineId_5 (uplineId),
  KEY agentId_5 (agentId),
  KEY uplineId_6 (uplineId),
  KEY agentId_6 (agentId),
  KEY uplineId_7 (uplineId),
  KEY agentId_7 (agentId),
  KEY uplineId_8 (uplineId),
  KEY agentId_8 (agentId),
  KEY uplineId_9 (uplineId),
  KEY agentId_9 (agentId),
  KEY uplineId_10 (uplineId),
  KEY agentId_10 (agentId),
  KEY uplineId_11 (uplineId),
  KEY agentId_11 (agentId),
  KEY uplineId_12 (uplineId),
  KEY agentId_12 (agentId),
  KEY uplineId_13 (uplineId),
  KEY agentId_13 (agentId),
  KEY uplineId_14 (uplineId),
  KEY agentId_14 (agentId),
  KEY uplineId_15 (uplineId),
  KEY agentId_15 (agentId),
  KEY uplineId_16 (uplineId)
) TYPE=MyISAM;

--
-- Dumping data for table `BENEFICIARY`
--

INSERT INTO BENEFICIARY VALUES (1,'','asd','1999-01-01','','',0,'','KTP','','','','KARUNIA MAS','female',0,'14568','10.00','14.00',NULL,'Agent','2005-07-29',NULL,NULL);
INSERT INTO BENEFICIARY VALUES (2,'','ggg','1999-01-01','','',0,'','KTP','','','','KARUNIA MAS','female',0,'14789','0.01','2589652211145.00',NULL,'Agent','2005-07-29',NULL,NULL);
INSERT INTO BENEFICIARY VALUES (3,'','aaa','1999-01-01','','',0,'','KTP','','','','KARUNIA MAS','',0,'47895','14511221212454.00','4545412221.15',NULL,'Agent','2005-07-29',NULL,NULL);

--
-- Table structure for table `PAYMENT`
--

CREATE TABLE PAYMENT (
  id bigint(20) NOT NULL default '0',
  accountNr varchar(255) default NULL,
  agentNr varchar(255) default NULL,
  amount decimal(19,2) default NULL,
  amountMentioned varchar(255) default NULL,
  bank varchar(255) default NULL,
  bankTransferAccount varchar(255) default NULL,
  bankTransferAddress varchar(255) default NULL,
  bankTransferName varchar(255) default NULL,
  formNr varchar(255) default NULL,
  name varchar(255) default NULL,
  paymentType varchar(255) default NULL,
  receiptNr varchar(255) default NULL,
  reportStatus varchar(255) default NULL,
  salesOffice varchar(255) default NULL,
  date date default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `PAYMENT`
--

INSERT INTO PAYMENT VALUES (1,'sdf','fsdsd','123.00','','sdf','','sdf','sdf','sdf','',NULL,'fdsf','none','','2005-07-29');

--
-- Table structure for table `about_us`
--

CREATE TABLE about_us (
  id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  headline varchar(255) NOT NULL default '',
  abstract text,
  detail text,
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  url_image3 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `about_us`
--

INSERT INTO about_us VALUES ('EF76D47B8479BB1EC65F74D4F1','Company Background','Company Background','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DB199BDA713A95B0CAB765images01.gif',NULL,NULL,'EEA063FE983851E',20020805000000,'EEA063FE983851E',20020805030054,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO about_us VALUES ('EF76D65787AD054C8D116D1EF4','Our Vision','Our Vision','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DB6E341C376430B9E373A8images02.gif',NULL,NULL,'EEA063FE983851E',20020805000000,'EEA063FE983851E',20020805030115,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO about_us VALUES ('EF76D78672ABC1783709CBBDE9','Our Approach','Our Approach','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DBA60D75ADDBDBA50D5F5Bimages03.gif',NULL,NULL,'EEA063FE983851E',20020805000000,'EEA063FE983851E',20020805030130,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO about_us VALUES ('EF76D840F830F0B3704D90DC28','Our Solution Approach','Our Solution Approach','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DBDB4662D9EE1C852AE759images04.gif',NULL,NULL,'EEA063FE983851E',20020805000000,'EEA063FE983851E',20020805030143,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO about_us VALUES ('EF76D8BA3F7CF6E0D3DFDDE402','Our Commitment','Our Commitment','','The technology is changing rapidly, making today is solution obsolete almost the next day. The technology is changing rapidly, making todayis solution obsolete almost the next day. The technology is changing rapidly, making today is solution obsolete almost the next day. ','EF76DC0CE54427B4E9AB510C67images05.gif',NULL,NULL,'EEA063FE983851E',20020805000000,'EEA063FE983851E',20020805030156,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO about_us VALUES ('EF76EDE2A111EFC6CDE050C348','Company Background','Company Background','','all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way ',NULL,NULL,NULL,'EEA063FE983851E',20020805000000,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO about_us VALUES ('EF76EFB156B3BD1E2EE605D114','Our Vision','Our Vision','','all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way ',NULL,NULL,NULL,'EEA063FE983851E',20020805000000,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO about_us VALUES ('EF76F003CBBCFB33A7DE1F7F40','Our Approach','Our Approach','','all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way all of our self-promotion papers from the exhibition was destroyed during our trip back to karlskrona so there is no way ',NULL,NULL,NULL,'EEA063FE983851E',20020805000000,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO about_us VALUES ('EF770E1DE9957C994CB59A419A','Our Vision','Our Vision','','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand','EF770EEB2C1EB303145459C2C9prelease01.gif',NULL,NULL,'EEA063FE983851E',20020805000000,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO about_us VALUES ('EF770EF25047B401AD4CC59192','Our Mission','Our Mission','','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\n','EF770F48CDB100A0550B4D2362prelease02.gif',NULL,NULL,'EEA063FE983851E',20020805000000,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO about_us VALUES ('EF770F4E898F5649DAFBC2CCA7','Our Approach','Our Approach','','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\n','EF770F9A198A740A9C7E7360D8prelease03.gif',NULL,NULL,'EEA063FE983851E',20020805000000,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO about_us VALUES ('EF87D849EA4A59339594E7F845','Our Vision','Our Vision','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','EF87D8D5D77389DD2B050D625Cimages01.gif',NULL,NULL,'EEA063FE983851E',20031015092930,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO about_us VALUES ('EF87D8FE18D371CB032236A360','Company Background','Company Background','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','EF87D972E78AD4BA7C07A3FEB5images04.gif',NULL,NULL,'EEA063FE983851E',20020808000000,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO about_us VALUES ('EF87E57386423584690F3AED17','Our Mission','Our Mission','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail Abstract & detail ','EF87E5C842E1347DBA7AA3D25Fimages02.gif',NULL,NULL,'EEA063FE983851E',20020808000000,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO about_us VALUES ('EF8E2F12DE12AC404BF06CFB3C','Company Background','Company Background','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF8E3136AFE3BA66D79FBB1A10images1.jpg',NULL,NULL,'EEA063FE983851E',20020809000000,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO about_us VALUES ('EF8E31446BD15C1F77534D61A9','Our Mission','Our Mission','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF8E31A62293B200CF2A940D10images2.jpg',NULL,NULL,'EEA063FE983851E',20020809000000,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO about_us VALUES ('EF8E31AF72C76E887D3AC99B6C','Our Approach','Our Approach','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF8E320D185F663C517E4B04AFimages1.jpg',NULL,NULL,'EEA063FE983851E',20020809000000,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO about_us VALUES ('EFABD7A227D67449CDC27C9DE7','Company Background','','','The technology is changing rapidly, making todays solution obsolete almost the next day. The technology is changing rapidly, making todays solution obsolete almost the next day. The technology is changing rapidly, making todays solution obsolete almost the next day','EFABD815A1C45922A535C594EBnews1.gif',NULL,NULL,'EEA063FE983851E',20020815000000,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO about_us VALUES ('F312E75F10981CEE04AE42D1B','Sejarah Singkat PT Makin','Sejarah Singkat','','PT. matahari Kahuripan Indonesia didirikan pada \r\n                              tahun 1993 oleh Bpk. Susilo Wonowidjojo dan Bpk. \r\n                              Mochtar Ramlie. Perusahaan didirikan berdasarkan \r\n                              akta notaris no. 10 tanggal 3 Juni 1993 dari Notaris \r\n                              Mudofir Hadi, SH.\r\n                              <p>Pada tahun 1996, Bapak Susilo Wonowidjojo merupakan \r\n                                pemegang saham 100% sahama PT. Matahari Kahuripan \r\n                                Indonesia.</p>\r\n                              <p>Tahun 1997, Bpk. Susilo Wonowidjojo menjual 10% \r\n                                kepemilikan saham kepada PT. Hari Mahardika Usaha, \r\n                                perusahaan yang dimiliki oleh keluarga Wonowidjojo.</p>\r\n                              <p>Tahun 1999, pemegang saham PT. Matahari Kahuripan \r\n                                Indonesia adalah PT. Hari Mahardika Usaha (73%) \r\n                                dan PT. Suryaduta Investama (27%). Hingga bulan \r\n                                April 2002, PT. Matahari Kahuripan Indonesia merupakan \r\n                                perusahaan induk dengan 14 anak perusahaan.</p>','F312E9AC5C428D821454B8BD9Flogo1.jpg',NULL,NULL,'F162B448063A847',20030131000000,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO about_us VALUES ('F312E9B7586BBD7815262A2F68','Visi','Visi','','Menjadi perusahaan kelas dunia di bidang agrobisnis, \r\n                                perusahaan agro nomor 1 di Indonesia pada tahun \r\n                                2015, serta memberikan nilai tambbah kepada stakeholders \r\n                                : pelanggan, karyawan, masyarakat, pemegang saham, \r\n                                kreditur, dan pemerintah.<br>','F312EA528F93D7A1B5F56542BEimage02.jpg',NULL,NULL,'F162B448063A847',20030131000000,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO about_us VALUES ('F312EA5984D494E8177B0A51D1','Strategi Bisnis','Strategi Bisnis','','<li>Mengembangkan usaha melalui perluasan lahan \r\n                                  perkebunan yang memadai serta menerapkan manajemen \r\n                                  kebun yang efisien.</li>\r\n                                <br>\r\n                                <br>\r\n                                <li>Mencapai laba usaha yang maksimum.</li>\r\n                                <br>\r\n                                <br>\r\n                                <li>Menerapkan standar yang tinggi untuk prosedur \r\n                                  operasi.</li>\r\n                                <br>\r\n                                <br>\r\n                                <li>Meningkatkan kualitas sumber daya manusia \r\n                                  melalui berbagai program pelatihan dan pengembangan.</li>','F312EF1510669C47AC10C19C2Fimage03.jpg',NULL,NULL,'F162B448063A847',20030131000000,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO about_us VALUES ('F312EF1D0F94F52BE459F19661','Bisnis Inti','Bisnis Inti','','Sampai akhir April 2002, PT. Matahari Kahuripan \r\n                                Indonesia merupakan perusahaan induk yang membawahi \r\n                                14 anak perusahaan. Aktivitas utama kami meliputi \r\n                                perkebunan dan pengelolaan kelapa sawit dan produk \r\n                                produk turunan lain dari kelapa sawit, yang diharapkan \r\n                                dapat menjadi penyumbang terbesar bagi penghasilan \r\n                                perusahaan di masa depan.</p>\r\n                              <p>Sekitar 3600 hektar dari total areal tertanam \r\n                                merupakan lahan plasma dan progream KKPA, program \r\n                                yang diperkenalkan oleh pemerintah Indonesia untuk \r\n                                mendorong perusahaan perusahaan kelapa sawit untuk \r\n                                mengembangkan usaha perkebunan dan menyediakan \r\n                                bantuan manajemen bagi petani kecil.</p>\r\n                              <p>Program tersebut memiliki tujuan meningkatkan \r\n                                pendapatan masyarakat lokal di mana perusahaan \r\n                                perusahaan diwajibkan membeli TBS (Tandan Buah \r\n                                Segar) dari petani petani kecil dengan harga yang \r\n                                ditetapkan pemerintah.</p>\r\n                              <p>Untuk mewujudkan visi, kami merencanakan perluasan \r\n                                areal tertanam hingga mencapai 300.000 hektar \r\n                                di tahun 2015. kami menargetkan beberapa propinsi \r\n                                di Indonesia seperti Jambi, Lampung, Kalimantan \r\n                                Tengah, Kalimantan Selatan, dan propinsi propinsi \r\n                                lain yang memiliki iklim dan kondisi tanah yang \r\n                                cocok bagi usaha perkebunan kelapa sawit.<br>','F312EF980BB732FB144E6182CCimage03.jpg','',NULL,'F162B448063A847',20030728093641,'F162B448063A847319E641EF7D',20030728093641,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO about_us VALUES ('F53FECA29ED17F55137BCB971B','Company Background','Company Background','','Intercitra Prima Integrasi, PT. is a privately held company based in Jakarta, Indonesia. It founded in 2001 and specializes in developing innovative business application that is focused on the needs of its customers. \r\nIn addition to developing its own products internally, Intercitra licenses products and technologies that will complement its own technologies. \r\n','',NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030520164354,'F36F8BFFF97F8A16505B8305F7',20030520164354,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO about_us VALUES ('F53FF1C6833EDEC463A9ABBDA9','Our Vision','Our Vision','','Intercitra vision is to become the most preferred consulting and integration to help businesses doing activities and build closer relationship with their business partners (buyer, supplier and internal customer ',NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030520151043,'F36F8BFFF97F8A16505B8305F7',20030520151043,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO about_us VALUES ('F54DCFD193D19C2C7542FFE50F','Our Commitment','Our Commitment','','One you trust us to help your company doing business. We will provide the best of breed solution that we have to you. We are glad if we can run together as a business partner forever.\r\n',NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030522100124,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO about_us VALUES ('F54DD05F038EA594DB39943894','The Big Idea','','','To fundamentally build and change the way people communicate and manage their businesses in real business environment.\r\n',NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030522100326,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO about_us VALUES ('F54DD25E5D4534776F2FB43E19','The Daily Mantera','The Daily Mantera','','Make it simple, integrated, organize, managed and connected in the innovation decathlon. ',NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030522100403,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');

--
-- Table structure for table `activity_journal`
--

CREATE TABLE activity_journal (
  id varchar(28) NOT NULL default '',
  task_id varchar(28) default NULL,
  title varchar(128) default NULL,
  activity text,
  disable_flag tinyint(1) NOT NULL default '0',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  version int(8) NOT NULL default '1',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `activity_journal`
--

INSERT INTO activity_journal VALUES ('FAC7078CCEBE96334E04880107','FAC70726C8B78586917761AD46','Comment 1','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin ac nunc. Sed vitae pede. Nunc elit. In et purus non diam vehicula feugiat. Vivamus nonummy dignissim eros. Sed lacinia. Pellentesque varius. Fusce pharetra dui vel magna. Aenean lorem. Quisque dapibus, turpis quis porta mollis, eros leo luctus tellus, nec ullamcorper ipsum leo quis eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. /?** @$ Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin ac nunc. Sed vitae pede. Nunc elit. In et purus non diam vehicula feugiat. Vivamus nonummy dignissim eros. Sed lacinia. Pellentesque varius. Fusce pharetra dui vel magna. Aenean lorem. Quisque dapibus, turpis quis porta mollis, eros leo luctus tellus, nec ullamcorper ipsum leo quis eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. \r<br>\r<br>',0,'F36F8BFFF97F8A16505B8305F7',20040218121147,'F36F8BFFF97F8A16505B8305F7',20040218121147,'0','ic',NULL,1);
INSERT INTO activity_journal VALUES ('FAC7097EDD9363B0302B5A2D50','FAC70726C8B78586917761AD46','Journal 2','Donec et magna. Suspendisse fermentum luctus enim. Aliquam porta tristique lorem. Morbi rutrum dui at mauris. In nulla mauris, cursus vel, imperdiet vel, vulputate a, elit. Sed laoreet tempor wisi. Mauris egestas condimentum orci. Praesent a mauris. Suspendisse pharetra dolor. Fusce eleifend neque at dui. \r<br>',0,'F36F8BFFF97F8A16505B8305F7',20040218121210,'F36F8BFFF97F8A16505B8305F7',20040218121210,'0','ic',NULL,1);
INSERT INTO activity_journal VALUES ('FAC709CC84EE887EBC8211239','FAC70726C8B78586917761AD46','Journal 3','Etiam lorem. Duis molestie aliquet urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque ut odio. Duis commodo rutrum arcu. Mauris congue pulvinar mauris. Cras eu turpis. Donec ut sem quis elit dapibus dapibus. Curabitur a purus nec pede mattis ullamcorper. Suspendisse lorem libero, ultricies ac, tempor eu, fringilla non, orci. Mauris sit amet nunc. Cras felis. Vivamus varius accumsan sapien. Mauris tristique malesuada mauris. Vivamus id urna luctus purus tristique consectetuer. Maecenas fringilla metus nec eros. Quisque vitae nisl sed augue tincidunt scelerisque. Fusce non neque at tortor congue tincidunt. Vestibulum sit amet augue non wisi mattis lacinia. Praesent eget est. \r<br>',0,'F36F8BFFF97F8A16505B8305F7',20040218121253,'F36F8BFFF97F8A16505B8305F7',20040218121253,'0','ic',NULL,1);
INSERT INTO activity_journal VALUES ('FAC71F5892A53F3F74A278AA3D','FAC71EC536349619C03FEEEBFF','Frans\' New Journal #1','Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. ',0,'F501555A2ECD5AC8FCC32F4DD6',20040218123612,'F501555A2ECD5AC8FCC32F4DD6',20040218123612,'0','ic',NULL,1);
INSERT INTO activity_journal VALUES ('FAC71FD12388A1302601BD4E58','FAC71EC536349619C03FEEEBFF','Frans\' New Journal #2','Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. ',0,'F501555A2ECD5AC8FCC32F4DD6',20040218123631,'F501555A2ECD5AC8FCC32F4DD6',20040218123631,'0','ic',NULL,1);
INSERT INTO activity_journal VALUES ('FAC7201EDD1DA05F3D19D2CF6','FAC71EC536349619C03FEEEBFF','Frans\' New Journal #3','Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. ',0,'F501555A2ECD5AC8FCC32F4DD6',20040218123655,'F501555A2ECD5AC8FCC32F4DD6',20040218123655,'0','ic',NULL,1);
INSERT INTO activity_journal VALUES ('FAD1361E72EE7B19BAF0EF7A4E','FAD0F1C09BA0BE7231BA7E15E8','mencoba untuk update server','test terus ',0,'null',20040220113730,'null',00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal VALUES ('FAF52BEF47D13B54B190F446EC','FAF506AFCFC61A8E401E8242E6','First Journal','Search for documents of current project in local computer\'s archive folder',0,'F36F8BFFF97F8A16505B8305F7',20040227112709,'F36F8BFFF97F8A16505B8305F7',20040227112709,'0','ic',NULL,2);
INSERT INTO activity_journal VALUES ('FAF52E7D3AD0C61F9F96B28DB1','FAF506AFCFC61A8E401E8242E6','Second Journal','Sorting the documents',0,'F36F8BFFF97F8A16505B8305F7',20040227111616,'F36F8BFFF97F8A16505B8305F7',20040227111616,'0','ic',NULL,1);
INSERT INTO activity_journal VALUES ('FB0464EF23D97C301A9FDB96','FAE5BC15B5614517AACE1062E8','My First Journal','See whether this journal is uploaded ',0,'F36F96E4EA83CB95AC4DC601F2',20040301100940,'F36F96E4EA83CB95AC4DC601F2',20040301100940,'0','ic',NULL,0);

--
-- Table structure for table `activity_journal_comment`
--

CREATE TABLE activity_journal_comment (
  id varchar(28) NOT NULL default '',
  journal_id varchar(128) NOT NULL default '',
  user_id varchar(128) NOT NULL default '',
  comment text,
  file_name text NOT NULL,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  disable_flag tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `activity_journal_comment`
--

INSERT INTO activity_journal_comment VALUES ('F8F800D37C9DDC73EB069E9F82','F8F76677EA2CB169331BDF8652','F501555A2ECD5AC8FCC32F4DD6','test comment dari frans','',NULL,20031120141825,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('F8F88DFC05F6B71CF13B902409','F8F76677EA2CB169331BDF8652','F36F96E4EA83CB95AC4DC601F2','test journal with email','',NULL,20031120165339,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('F8F8FB78FE8E2B1A0A634CF32F','F8F76677EA2CB169331BDF8652','F36F8BFFF97F8A16505B8305F7','kasih comment','F8F8FB78FE8E2B1A0A634CF32Fweb.xml',NULL,20031120185215,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('F8FC425973175AF7C3F9176491','F8F76677EA2CB169331BDF8652','F36F8BFFF97F8A16505B8305F7','test comment','',NULL,20031121100828,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC70B8A8C500C70C6C65C46BA','FAC709CC84EE887EBC8211239','F36F8BFFF97F8A16505B8305F7','Suspendisse fermentum luctus enim. Aliquam porta tristique lorem. ','',NULL,20040218121426,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC70BDDB6303DDF1F2111AA7C','FAC709CC84EE887EBC8211239','F36F8BFFF97F8A16505B8305F7','Mauris egestas condimentum orci. Praesent a mauris. Suspendisse pharetra dolor. Fusce eleifend neque at dui. \r<br>','',NULL,20040218121455,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC70D13BB3A8B3D5B023BADB6','FAC7078CCEBE96334E04880107','F36F8BFFF97F8A16505B8305F7','Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. \r<br>','',NULL,20040218121615,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC713EDC6FB8D41B6D21ED05E','FAC7078CCEBE96334E04880107','F36F8BFFF97F8A16505B8305F7','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. ','',NULL,20040218122331,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC71CE377C51EEFBF7EBDC993','FAC7078CCEBE96334E04880107','F36F8BFFF97F8A16505B8305F7','Etiam lorem. Duis molestie aliquet urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. ','',NULL,20040218123318,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC7208804D60D7E094A4F60B7','FAC7201EDD1DA05F3D19D2CF6','F501555A2ECD5AC8FCC32F4DD6','Vivamus eget felis eu est rhoncus pretium. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. ','',NULL,20040218123727,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC72206F33263F08B0127920E','FAC7201EDD1DA05F3D19D2CF6','F36F8BFFF97F8A16505B8305F7','Vivamus eget felis eu est rhoncus pretium. ','',NULL,20040218123844,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC722FBE9B8FCD8F71670185F','FAC7097EDD9363B0302B5A2D50','F3FB0D6714905E04E2586A8E1A','Vestibulum sit amet augue non wisi mattis lacinia. Praesent eget est. ','',NULL,20040218123948,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC72341A9C38D2ED434390067','FAC7078CCEBE96334E04880107','F3FB0D6714905E04E2586A8E1A','Mauris tristique malesuada mauris. ','',NULL,20040218124014,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAC7239E05AD839362F35A8BFA','FAC709CC84EE887EBC8211239','F3FB0D6714905E04E2586A8E1A','Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. Fusce mattis malesuada pede. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. ','',NULL,20040218124034,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAD137D04C5A84376352E02594','FAD1361E72EE7B19BAF0EF7A4E','F36F96E4EA83CB95AC4DC601F2','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin ac nunc. Sed vitae pede. Nunc elit. In et purus non diam vehicula feugiat. Vivamus nonummy dignissim eros. Sed lacinia. Pellentesque varius. Fusce pharetra dui vel magna. Aenean lorem. ','',NULL,20040220113932,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_journal_comment VALUES ('FAD138AA6CC2766898CFA99199','FAD1361E72EE7B19BAF0EF7A4E','F36F96E4EA83CB95AC4DC601F2','Quisque dapibus, turpis quis porta mollis, eros leo luctus tellus, nec ullamcorper ipsum leo quis eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. \r<br>','',NULL,20040220113950,NULL,00000000000000,'0','ic',NULL,0);

--
-- Table structure for table `activity_project`
--

CREATE TABLE activity_project (
  id varchar(28) NOT NULL default '',
  assigner_id varchar(28) NOT NULL default '',
  company_id varchar(28) default NULL,
  name varchar(128) default NULL,
  description varchar(128) default NULL,
  background text,
  objective varchar(128) default NULL,
  start_date datetime NOT NULL default '0000-00-00 00:00:00',
  finish_date datetime NOT NULL default '0000-00-00 00:00:00',
  priority varchar(28) default NULL,
  status varchar(28) default NULL,
  category_id varchar(28) default NULL,
  progress_presentage varchar(28) default NULL,
  project_manager varchar(28) default NULL,
  critical_project tinyint(1) default '1',
  project_notes text,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  version int(8) NOT NULL default '1',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `activity_project`
--

INSERT INTO activity_project VALUES ('F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','F40F8AEA366FA9257120F211A4','Testing Project Untuk Umar & Member & Journalist','','','','2003-11-12 00:00:00','2003-11-12 00:00:00','F29B5E6EEA4F8502216737425D','F29B61BC3183CB12E066E332F','','0','F36F96E4EA83CB95AC4DC601F2',1,'updated','F36F8BFFF97F8A16505B8305F7',20040210144310,'F36F8BFFF97F8A16505B8305F7',20040210144310,'0','ic','F74B696E86AA0CA5819A4FB36C',2);
INSERT INTO activity_project VALUES ('F8D3393EBD35654497E139295B','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','Cuma buat aris doang','','','','2003-11-13 00:00:00','2003-11-13 00:00:00','F29B5E6EEA4F8502216737425D','F29B616F1A1CC8B277C3FEDB39','','0','F3FB0D6714905E04E2586A8E1A',1,'','F36F8BFFF97F8A16505B8305F7',20031113105419,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',1);
INSERT INTO activity_project VALUES ('F8F33C4B4E7728F3AB69400EA8','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','Project Untuk Frans Thamura','','','','2003-11-19 00:00:00','2003-11-19 00:00:00','F29B5E6EEA4F8502216737425D','F29B62B055CEDA8AB0E7635FED','','0','F501555A2ECD5AC8FCC32F4DD6',1,'','F36F8BFFF97F8A16505B8305F7',20040220172201,'F36F8BFFF97F8A16505B8305F7',20040220172201,'0','ic','F74B696E86AA0CA5819A4FB36C',2);
INSERT INTO activity_project VALUES ('F8FD555F0676F9CB4D9DDE40B9','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','Project dari workspace yang pake email','Tidak ada description','Tdk ada background\r<br>&lt;br&gt;&lt;br&gt;there\'s no background','Tidak ada objective','2003-11-21 00:00:00','2003-11-21 00:00:00','F29B5F01575A67C4CEF5B0AFC0','F29B61BC3183CB12E066E332F','F7D6D340DBE94436A979AEEF0C','50','F36F8BFFF97F8A16505B8305F7',1,'Project Note\'s\r<br>&lt;br&gt;&lt;br&gt;yang bersangkutan harap segera lapor','F36F96E4EA83CB95AC4DC601F2',20040218172500,'F36F96E4EA83CB95AC4DC601F2',20040218172500,'0','ic','F74B696E86AA0CA5819A4FB36C',3);
INSERT INTO activity_project VALUES ('F8FD820EF33CAB30DE0E5CC501','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','BlueOxygen Intercitra Project','','','','2003-11-21 00:00:00','2003-11-21 00:00:00','F29B5F9EFED0C98D41D5D9C0A0','F29B62B055CEDA8AB0E7635FED','','0','F501555A2ECD5AC8FCC32F4DD6',1,'','F36F96E4EA83CB95AC4DC601F2',20040220102318,'F36F96E4EA83CB95AC4DC601F2',20040220102318,'0','ic','F74B696E86AA0CA5819A4FB36C',2);
INSERT INTO activity_project VALUES ('F969A328D2B4E2FACE7F3CB59D','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','Makin Phase 2','','','','2003-12-12 00:00:00','2003-12-12 00:00:00','F29B5F9EFED0C98D41D5D9C0A0','F29B61BC3183CB12E066E332F','','0','F36F8BFFF97F8A16505B8305F7',1,'','F501555A2ECD5AC8FCC32F4DD6',20040219161421,'F501555A2ECD5AC8FCC32F4DD6',00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',1);
INSERT INTO activity_project VALUES ('F93F3A14EFF391923E6229F390','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','Project Ketawa Ketiwi','','','','0002-11-30 00:00:00','0002-11-30 00:00:00','F29B5F01575A67C4CEF5B0AFC0','F29B6267D2CE64E45213EEA052','','0','F36F96E4EA83CB95AC4DC601F2',1,'','F36F8BFFF97F8A16505B8305F7',20031204125125,'F36F8BFFF97F8A16505B8305F7',20031204125125,'0','ic','F74B696E86AA0CA5819A4FB36C',1);
INSERT INTO activity_project VALUES ('FAD1F2207512CE8432F948248A','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','Project baru untuk cek sinkronisasi','','','','2004-02-20 00:00:00','2004-02-20 00:00:00','F29B5E6EEA4F8502216737425D','F29B616F1A1CC8B277C3FEDB39','','0','FA89238CD9BCDF331DF9B845EB',1,'','F36F8BFFF97F8A16505B8305F7',20040220150332,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',1);

--
-- Table structure for table `activity_project_comment`
--

CREATE TABLE activity_project_comment (
  id varchar(28) NOT NULL default '',
  project_id varchar(28) NOT NULL default '',
  user_id varchar(28) NOT NULL default '',
  comment text,
  file_name text,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `activity_project_comment`
--

INSERT INTO activity_project_comment VALUES ('F8FCF3D9F2A485230A28BC731B','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','test comment email','',NULL,20031121132233,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F8FD097E9C9078C565A3E13B3','F8CF4DAED752F9C07B439B29EB','F36F96E4EA83CB95AC4DC601F2','testing comment pake upload','F8FD097E9C9078C565A3E13B3localhost_aconix_log.2003-11-05.txt',NULL,20031121134651,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F8FD0D9D40DE946F268F44EF59','F8CF4DAED752F9C07B439B29EB','F36F96E4EA83CB95AC4DC601F2','comment lag\'i ah\r<br>coba testing doang neh....','F8FD0D9D40DE946F268F44EF59detail.jsp',NULL,20031121135041,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F8FD0E9FABB545B75CD8C80713','F8CF4DAED752F9C07B439B29EB','F36F96E4EA83CB95AC4DC601F2','Test lagi neh....\r<br>kalo berhasil berarti ok\'','F8FD0E9FABB545B75CD8C80713perubahan-tabel.txt',NULL,20031121135151,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F935901F09FDB12C75AFE7E1AE','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','test comment','F935901F09FDB12C75AFE7E1AElocalhost_aconix_log.2003-11-05.txt',NULL,20031202131444,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F9359B757D4A5122C8BB6E39F7','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','ini comment gue dedeng','',NULL,20031202132411,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F935AD55C23DB99BBFF0810C5','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','komentar dedeng','',NULL,20031202134631,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F935BF71229EE4B5BEDCAA700','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','commentar baru','F935BF71229EE4B5BEDCAA700localhost_aconix_log.2003-11-05.txt',NULL,20031202140338,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F935C09B567ABDB6D782493871','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','new comment','F935C09B567ABDB6D782493871Icon7EFDA3AC3.txt',NULL,20031202140445,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F9364DE257CFEBE7D1A1ACA622','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','comment gue..','F9364DE257CFEBE7D1A1ACA622Icon7EFDA3AC.txt',NULL,20031202163928,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F9364F4EE452654364BD11EB43','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','new comment ','',NULL,20031202164041,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F936504E0516C607813B3BAF23','F8CF4DAED752F9C07B439B29EB','F501555A2ECD5AC8FCC32F4DD6','new comment\r<br>','',NULL,20031202164146,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F93ACE21A5DBFEAC5B670D3F','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','test','',NULL,20031203133737,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F93F317F5222B1BF885A3AE','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','Test Comment','F93F317F5222B1BF885A3AEcontoh-blog.txt',NULL,20031204100441,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F93F33B3CE30F01F4ACA22AB40','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','lagi comment','',NULL,20031204100658,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('F9A7B5E02A716C01FF04381A90','F8FD820EF33CAB30DE0E5CC501','F36F96E4EA83CB95AC4DC601F2','New Comment\r<br>1. personal comment\r<br>2. general comment','F9A7B5E02A716C01FF04381A90trace.txt',NULL,20031224171019,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('FAC71D82E9D4340DC5D198279D','F8FD555F0676F9CB4D9DDE40B9','F36F8BFFF97F8A16505B8305F7','Phasellus vel neque. Nulla quis nisl. Cras in diam eget libero volutpat imperdiet. Maecenas a nulla. Integer nisl. Aliquam condimentum lectus at wisi. Nam vel diam in purus dignissim sodales. Nullam auctor erat quis ipsum. ','',NULL,20040218123411,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('FAC72273A97AF3A033332A3542','F8FD555F0676F9CB4D9DDE40B9','F3FB0D6714905E04E2586A8E1A','Vivamus eget felis eu est rhoncus pretium. ','',NULL,20040218123911,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('FAE72D78BCFADC32CBB297572C','FAD1F2207512CE8432F948248A','F36F8BFFF97F8A16505B8305F7','New comment from Umar for \"Project baru untuk tes Sinkronisasi\"','','null',20040224180004,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('FAF51B640C654766F10C3E602A','F969A328D2B4E2FACE7F3CB59D','F36F8BFFF97F8A16505B8305F7','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin ac nunc. Sed vitae pede. Nunc elit. In et purus non diam vehicula feugiat. ','',NULL,20040227110047,NULL,00000000000000,'0','ic',NULL);
INSERT INTO activity_project_comment VALUES ('FAF5C0A5EB2E699A0B036C8E38','F969A328D2B4E2FACE7F3CB59D','F501555A2ECD5AC8FCC32F4DD6','Quisque eget nulla nec felis varius faucibus. Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. ','',NULL,20040227135456,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `activity_task`
--

CREATE TABLE activity_task (
  id varchar(28) NOT NULL default '',
  project_id varchar(28) default NULL,
  task_name varchar(128) default NULL,
  description varchar(128) default NULL,
  assigner_id varchar(28) NOT NULL default '',
  pic_id varchar(28) NOT NULL default '',
  company_id varchar(28) NOT NULL default '',
  division varchar(128) default NULL,
  department varchar(128) default NULL,
  due_date datetime NOT NULL default '0000-00-00 00:00:00',
  percent_complete tinyint(3) default NULL,
  duration_value tinyint(4) default NULL,
  duration_unit varchar(28) default NULL,
  start_date datetime NOT NULL default '0000-00-00 00:00:00',
  finish_date datetime NOT NULL default '0000-00-00 00:00:00',
  predecessor varchar(28) default NULL,
  resource_name varchar(128) default NULL,
  task_notes text,
  critical_task tinyint(1) default '1',
  priority varchar(28) default NULL,
  deadline_date datetime NOT NULL default '0000-00-00 00:00:00',
  constraint_type tinyint(1) default '1',
  constraint_date datetime NOT NULL default '0000-00-00 00:00:00',
  mile_stones tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default '',
  site_id varchar(28) default NULL,
  disable_flag tinyint(1) NOT NULL default '0',
  version int(8) NOT NULL default '1',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `activity_task`
--

INSERT INTO activity_task VALUES ('FACD15667EDFFF35D02EA4E7A4','F8FD820EF33CAB30DE0E5CC501','task tambahan','','F36F96E4EA83CB95AC4DC601F2','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','','','2004-02-19 00:00:00',0,0,'Second(s)','2004-02-19 00:00:00','2004-02-19 00:00:00','','','harus dilihat',0,'F29B60033659548CF158DD9A0D','2004-02-19 00:00:00',0,'2004-02-19 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2',20040220102319,NULL,00000000000000,'0','F29B61FCC4924584D4222C7178','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO activity_task VALUES ('F8F3456E5FA831ABA32B7728C8','0','Task untuk Dedeng','','F36F96E4EA83CB95AC4DC601F2','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2003-11-19 00:00:00',0,0,'Second(s)','2003-11-19 00:00:00','2003-11-19 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2003-11-19 00:00:00',0,'2003-11-19 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2',20031121102728,'F36F96E4EA83CB95AC4DC601F2',20031120142051,'0','F29B6325372E79EAB162E84386','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO activity_task VALUES ('F8D47AF49E8C788EFA76DBF99','0','TAsft Aris untuk Frans','','F3FB0D6714905E04E2586A8E1A','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','','','2003-11-13 00:00:00',0,0,'Second(s)','2003-11-13 00:00:00','2003-11-13 00:00:00','','','',0,'F29B5F9EFED0C98D41D5D9C0A0','2003-11-13 00:00:00',0,'2003-11-13 00:00:00',0,'F3FB0D6714905E04E2586A8E1A',20031113164558,NULL,00000000000000,'0','F29B6325372E79EAB162E84386','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO activity_task VALUES ('F9A7ED7D65394AD257FF2408E4','0','Create New Task from Document','','F36F96E4EA83CB95AC4DC601F2','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2003-12-24 00:00:00',0,0,'Second(s)','2003-12-24 00:00:00','2003-12-24 00:00:00','','','',0,'F29B5F9EFED0C98D41D5D9C0A0','2003-12-24 00:00:00',0,'2003-12-24 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2',20040224111528,'F36F96E4EA83CB95AC4DC601F2',20040224111528,'0','F29B62B055CEDA8AB0E7635FED','F74B696E86AA0CA5819A4FB36C',0,2);
INSERT INTO activity_task VALUES ('F9A800C3DF6533E880A3C1DF42','0','I\'ve assigned this task to every body','','F36F8BFFF97F8A16505B8305F7','F9A204566AA30595ACD597D51E','F337B149F1D7EB47954BF7EF7','','','2003-12-24 00:00:00',0,0,'Second(s)','2003-12-24 00:00:00','2003-12-24 00:00:00','','','updated',0,'F29B60033659548CF158DD9A0D','2003-12-24 00:00:00',0,'2003-12-24 00:00:00',0,'F36F8BFFF97F8A16505B8305F7',20040210150600,'F36F8BFFF97F8A16505B8305F7',20040210150600,'0','F29B61FCC4924584D4222C7178','F74B696E86AA0CA5819A4FB36C',0,2);
INSERT INTO activity_task VALUES ('F9A809F7D7D77E10ED000FB893','0','Create new task for new member','','F36F8BFFF97F8A16505B8305F7','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','','','2003-12-24 00:00:00',57,0,'Second(s)','2003-12-24 00:00:00','2003-12-24 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2003-12-24 00:00:00',0,'2003-12-24 00:00:00',0,'F36F8BFFF97F8A16505B8305F7',20040224125219,'F36F8BFFF97F8A16505B8305F7',20040224125219,'0','F29B61FCC4924584D4222C7178','F74B696E86AA0CA5819A4FB36C',1,2);
INSERT INTO activity_task VALUES ('FA7E7AE92F8EF97E713E9F6F12','F969A328D2B4E2FACE7F3CB59D','new task','','F36F8BFFF97F8A16505B8305F7','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2004-02-04 00:00:00',0,0,'Second(s)','2004-02-04 00:00:00','2004-02-04 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2004-02-04 00:00:00',0,'2004-02-04 00:00:00',0,'F36F8BFFF97F8A16505B8305F7',20040204100340,NULL,00000000000000,'0','F29B616F1A1CC8B277C3FEDB39','null',0,1);
INSERT INTO activity_task VALUES ('FAC85AABC126CB37F76C3E147C','F8FD555F0676F9CB4D9DDE40B9','Task Buat Dedeng','','F36F8BFFF97F8A16505B8305F7','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2004-02-18 00:00:00',0,0,'Second(s)','2004-02-18 00:00:00','2004-02-18 00:00:00','','','',0,'F29B5F9EFED0C98D41D5D9C0A0','2004-02-18 00:00:00',0,'2004-02-18 00:00:00',0,'F36F8BFFF97F8A16505B8305F7',20040218182013,NULL,00000000000000,'0','F29B61FCC4924584D4222C7178','null',0,1);
INSERT INTO activity_task VALUES ('FAC8373D9AA2683CF074C1B392','F8FD555F0676F9CB4D9DDE40B9','Task Buat Umar','','F36F8BFFF97F8A16505B8305F7','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','','','2004-02-18 00:00:00',0,0,'Second(s)','2004-02-18 00:00:00','2004-02-18 00:00:00','','','',0,'F29B5E6EEA4F8502216737425D','2004-02-18 00:00:00',0,'2004-02-18 00:00:00',0,'F36F8BFFF97F8A16505B8305F7',20040218174155,NULL,00000000000000,'0','F29B616F1A1CC8B277C3FEDB39','null',0,1);
INSERT INTO activity_task VALUES ('FAC85B02B77D43E8E00AE32E4B','F8FD555F0676F9CB4D9DDE40B9','Task Buat Ginanjar','','F36F8BFFF97F8A16505B8305F7','FA89238CD9BCDF331DF9B845EB','F337B149F1D7EB47954BF7EF7','','','2004-02-18 00:00:00',0,0,'Second(s)','2004-02-18 00:00:00','2004-02-18 00:00:00','','','',0,'F29B5E6EEA4F8502216737425D','2004-02-18 00:00:00',0,'2004-02-18 00:00:00',0,'F36F8BFFF97F8A16505B8305F7',20040218182042,NULL,00000000000000,'0','F29B61FCC4924584D4222C7178','null',0,1);
INSERT INTO activity_task VALUES ('F9697A3C1DCD3A32BB4F3C6F95','F8FD820EF33CAB30DE0E5CC501','New Task','New Task Added #2','F36F96E4EA83CB95AC4DC601F2','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','','','2003-12-12 00:00:00',0,0,'Second(s)','2003-12-12 00:00:00','2003-12-12 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2003-12-12 00:00:00',0,'2003-12-12 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2',20040220102319,NULL,00000000000000,'0','F29B62B055CEDA8AB0E7635FED','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO activity_task VALUES ('FAD0F1C09BA0BE7231BA7E15E8','F8FD820EF33CAB30DE0E5CC501','New Task for Ginanjar','New Task added to Server DB','F36F96E4EA83CB95AC4DC601F2','FA89238CD9BCDF331DF9B845EB','F337B149F1D7EB47954BF7EF7','','','2004-02-20 00:00:00',0,0,'Second(s)','2004-02-20 00:00:00','2004-02-20 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2004-02-20 00:00:00',0,'2004-02-20 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2',20040220102319,NULL,00000000000000,'0','F29B616F1A1CC8B277C3FEDB39','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO activity_task VALUES ('FAD2714E2234C4AF2AB3B1930B','F8F33C4B4E7728F3AB69400EA8','Task untuk Frans Thamura','Task untuk Frans Thamura, Project untuk Frans Thamura','F36F8BFFF97F8A16505B8305F7','F501555A2ECD5AC8FCC32F4DD6','F337B149F1D7EB47954BF7EF7','','','2004-02-20 00:00:00',0,0,'Second(s)','2004-02-20 00:00:00','2004-02-20 00:00:00','','','',0,'F29B5E6EEA4F8502216737425D','2004-02-20 00:00:00',0,'2004-02-20 00:00:00',0,'F36F8BFFF97F8A16505B8305F7',20040227142413,'F501555A2ECD5AC8FCC32F4DD6',20040227142413,'0','F29B616F1A1CC8B277C3FEDB39','F74B696E86AA0CA5819A4FB36C',0,2);
INSERT INTO activity_task VALUES ('FAE5BC15B5614517AACE1062E8','0','Task khusus Untuk Umar','','F36F96E4EA83CB95AC4DC601F2','F36F96E4EA83CB95AC4DC601F2','F337B149F1D7EB47954BF7EF7','','','2004-02-24 00:00:00',0,0,'Second(s)','2004-02-24 00:00:00','2004-02-24 00:00:00','','','',0,'F29B5E6EEA4F8502216737425D','2004-02-24 00:00:00',0,'2004-02-24 00:00:00',0,'F36F96E4EA83CB95AC4DC601F2',20040224111655,NULL,00000000000000,'0','F29B616F1A1CC8B277C3FEDB39','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO activity_task VALUES ('FAF506AFCFC61A8E401E8242E6','F969A328D2B4E2FACE7F3CB59D','Document Assessment','Collecting documents necessary for the final report','F36F8BFFF97F8A16505B8305F7','F36F8BFFF97F8A16505B8305F7','F337B149F1D7EB47954BF7EF7','','','2004-02-27 00:00:00',0,0,'Second(s)','2004-02-27 00:00:00','2004-02-27 00:00:00','','','',0,'F29B5F01575A67C4CEF5B0AFC0','2004-02-27 00:00:00',1,'0000-00-00 00:00:00',0,'F36F8BFFF97F8A16505B8305F7',20040227103309,NULL,00000000000000,'0','F29B616F1A1CC8B277C3FEDB39','null',0,1);

--
-- Table structure for table `activity_task_comment`
--

CREATE TABLE activity_task_comment (
  id varchar(28) NOT NULL default '',
  task_id varchar(28) NOT NULL default '',
  user_id varchar(28) NOT NULL default '',
  comment text,
  file_name text,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  disable_flag tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `activity_task_comment`
--

INSERT INTO activity_task_comment VALUES ('FAC70A851439E6A602E65B94EF','FAC70726C8B78586917761AD46','F36F8BFFF97F8A16505B8305F7','Quisque eget nulla nec felis varius faucibus. Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. Fusce mattis malesuada pede. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. ','',NULL,20040218121334,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('F9C15835FC1BD5BDBDA697EFFC','F9A809F7D7D77E10ED000FB893','F36F8BFFF97F8A16505B8305F7','my comment again\r<br>please forward me\r<br>1. test\r<br>2. test\r<br>3. test','',NULL,20031229163758,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('F9C150F90CF16492B634A2E9F0','F9A809F7D7D77E10ED000FB893','F36F8BFFF97F8A16505B8305F7','comment from me.','',NULL,20031229162945,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('F9C14DB4109A75D9082A04AD71','F9A809F7D7D77E10ED000FB893','F36F8BFFF97F8A16505B8305F7','this one is my last comment\r<br>please remember me OK ;-)','F9C14DB4109A75D9082A04AD71ask.gif',NULL,20031229162700,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('F8FC58A3FA8771D67B0FD71F76','F8F3456E5FA831ABA32B7728C8','F36F96E4EA83CB95AC4DC601F2','kasih comment','F8FC58A3FA8771D67B0FD71F76localhost_aconix_log.2003-11-05.txt',NULL,20031121103324,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('F8F8800CE550C15C75F2552B03','F8F3456E5FA831ABA32B7728C8','F36F96E4EA83CB95AC4DC601F2','gadfsafsdfdasfsaf','F8F8800CE550C15C75F2552B03report.jpg',NULL,20031120163820,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('F8F800113912555289C8DE9C88','F8F3456E5FA831ABA32B7728C8','F501555A2ECD5AC8FCC32F4DD6','test comment','',NULL,20031120141739,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('F8F87231926E3568C4BBE7EB64','F8F3456E5FA831ABA32B7728C8','F36F96E4EA83CB95AC4DC601F2','test','',NULL,20031120162218,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAC70B2C3174DA9C4E9099D4A7','FAC70726C8B78586917761AD46','F36F8BFFF97F8A16505B8305F7','Donec et magna. Suspendisse fermentum luctus enim. Aliquam porta tristique lorem. Morbi rutrum dui at mauris. In nulla mauris, cursus vel, imperdiet vel, vulputate a, elit. Sed laoreet tempor wisi. Mauris egestas condimentum orci. Praesent a mauris. Suspendisse pharetra dolor. Fusce eleifend neque at dui. \r<br>','',NULL,20040218121351,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAC7215BEC855265C6A169F757','FAC71EC536349619C03FEEEBFF','F501555A2ECD5AC8FCC32F4DD6','Vivamus eget felis eu est rhoncus pretium. ','',NULL,20040218123808,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAC721D67B4715BDD96765AD77','FAC71EC536349619C03FEEEBFF','F36F8BFFF97F8A16505B8305F7','Vivamus eget felis eu est rhoncus pretium. ','',NULL,20040218123830,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAC722A04BA788EEE19D513EC6','FAC70726C8B78586917761AD46','F3FB0D6714905E04E2586A8E1A','Vestibulum sit amet augue non wisi mattis lacinia. Praesent eget est. ','',NULL,20040218123937,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAC838776AD1FC7741A3548DA7','FAC8373D9AA2683CF074C1B392','F36F8BFFF97F8A16505B8305F7','asd kasdjj asldkj asdlkjasd  ','',NULL,20040218174306,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAC85C3522FDCBD5F655869495','FAC85AABC126CB37F76C3E147C','F36F8BFFF97F8A16505B8305F7','Komentar ya, deng!!!','',NULL,20040218182159,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAC85C659A2BFC196BEA9EF05B','FAC85AABC126CB37F76C3E147C','F36F8BFFF97F8A16505B8305F7','Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque ut odio. ','',NULL,20040218182224,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAC85CC702E986FB5AFC325959','FAC85AABC126CB37F76C3E147C','F36F8BFFF97F8A16505B8305F7','Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. Fusce mattis malesuada pede. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. ','',NULL,20040218182242,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FACD395E56D05D75E835B4A228','FACD15667EDFFF35D02EA4E7A4','F36F8BFFF97F8A16505B8305F7','Comment baru','','null',20040219170241,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAF53B441A44095E7AAB989498','FAF506AFCFC61A8E401E8242E6','F36F8BFFF97F8A16505B8305F7','Curabitur odio lectus, adipiscing sed, consequat vitae, rhoncus sit amet, quam. Aliquam tortor. Phasellus vel neque. Nulla quis nisl. Cras in diam eget libero volutpat imperdiet. \r<br>\r<br>Maecenas a nulla. Integer nisl. Aliquam condimentum lectus at wisi. \r<br>\r<br>Nam vel diam in purus dignissim sodales. Nullam auctor erat quis ipsum. \r<br>','',NULL,20040227112919,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FAF5C3AE3BE7712166ADF0BBA5','FAF506AFCFC61A8E401E8242E6','F501555A2ECD5AC8FCC32F4DD6','Quisque eget nulla nec felis varius faucibus. Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. ','',NULL,20040227135845,NULL,00000000000000,'0','ic',NULL,0);
INSERT INTO activity_task_comment VALUES ('FB046853617569943903E1B82E','F9A800C3DF6533E880A3C1DF42','F36F96E4EA83CB95AC4DC601F2','My one-liner comment','','null',20040301101248,NULL,00000000000000,'0','ic',NULL,0);

--
-- Table structure for table `activity_task_security`
--

CREATE TABLE activity_task_security (
  id varchar(28) NOT NULL default '',
  task_id varchar(28) NOT NULL default '',
  role_id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date datetime NOT NULL default '0000-00-00 00:00:00',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `activity_task_security`
--

INSERT INTO activity_task_security VALUES ('F9A802E0BA6DE83DB2226464B3','F9A800C3DF6533E880A3C1DF42','all','F36F8BFFF97F8A16505B8305F7',20040210150600,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO activity_task_security VALUES ('FAE5BC91E9875D32528FF6AE5A','FAE5BC15B5614517AACE1062E8','3','F36F96E4EA83CB95AC4DC601F2',20040224111655,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');

--
-- Table structure for table `ads_banner`
--

CREATE TABLE ads_banner (
  id varchar(28) NOT NULL default '',
  name varchar(35) default NULL,
  display_style varchar(20) default NULL,
  status varchar(10) default NULL,
  source varchar(50) default NULL,
  thumbnail varchar(50) default NULL,
  image varchar(50) default NULL,
  caption varchar(25) default NULL,
  width varchar(5) default NULL,
  height varchar(5) default NULL,
  alignment varchar(10) default NULL,
  artist varchar(50) default NULL,
  alt_text varchar(50) default NULL,
  keywords varchar(50) default NULL,
  created varchar(50) default NULL,
  modified varchar(50) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `ads_banner`
--


--
-- Table structure for table `ads_client`
--

CREATE TABLE ads_client (
  id varchar(28) NOT NULL default '',
  active_flag varchar(25) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY active_flag (active_flag)
) TYPE=MyISAM;

--
-- Dumping data for table `ads_client`
--


--
-- Table structure for table `ads_product`
--

CREATE TABLE ads_product (
  id varchar(28) NOT NULL default '',
  section_id varchar(28) default NULL,
  category_id varchar(28) default NULL,
  client_id varchar(28) default NULL,
  description varchar(255) default NULL,
  product_url varchar(255) default NULL,
  url_image varchar(255) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `ads_product`
--


--
-- Table structure for table `article`
--

CREATE TABLE article (
  id varchar(28) NOT NULL default '',
  template_id varchar(28) default NULL,
  section_id varchar(28) default NULL,
  category_id varchar(28) default NULL,
  category varchar(25) default NULL,
  title varchar(255) NOT NULL default '',
  description varchar(255) default NULL,
  abstract text,
  content text,
  syntax text,
  example text,
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  adsproduct_id1 varchar(255) default NULL,
  adsproduct_id2 varchar(255) default NULL,
  adsbanner_id1 varchar(255) default NULL,
  adsbanner_id2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `article`
--

INSERT INTO article VALUES ('F683CD170CECCC9BBB747D2E7',NULL,NULL,NULL,NULL,'test',NULL,'tadfsafsaf','fdasfasf\r\n<br> dfasjklfsafjklasfk;\r\n',NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'F162B448063A847319E641EF7D',20030827090337,'F162B448063A847319E641EF7D',20030827090337,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');

--
-- Table structure for table `article_comment`
--

CREATE TABLE article_comment (
  id varchar(28) NOT NULL default '',
  article_id int(11) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  title varchar(128) default NULL,
  comment varchar(255) default NULL,
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `article_comment`
--


--
-- Table structure for table `assign_descriptor`
--

CREATE TABLE assign_descriptor (
  id varchar(28) NOT NULL default '',
  descriptor_id varchar(28) default NULL,
  osml_id varchar(28) default NULL,
  description varchar(255) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date datetime NOT NULL default '0000-00-00 00:00:00',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `assign_descriptor`
--

INSERT INTO assign_descriptor VALUES ('E8F8EF22D39CECB584EE80B0A9','23','E8D4BE646EF710FAB3F79BE639','Article - Standard',1,'1',20020529020124,'1','2001-09-16 09:56:23','ic','EE185CE0B82B41C1724F284685');
INSERT INTO assign_descriptor VALUES ('F2E928538511FC5C0F7C7F79F7','F186FA34E6B83A503DEE249E3','E8D4BE646EF710FAB3F79BE639','Quote of the Day',1,'1',20030123105029,NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685');
INSERT INTO assign_descriptor VALUES ('F06B8143AABD59281435AC5D40','EE1634B19EB64BB12485263F79','E8D4BE646EF710FAB3F79BE639','News',1,'1',20030115111411,'1','2003-01-15 11:14:11','ic','EE185CE0B82B41C1724F284685');
INSERT INTO assign_descriptor VALUES ('F2C6410384749EBF65838E89DC','EE16354AB187B638CC4579F8B6','E8D4BE646EF710FAB3F79BE639','Press Release',1,'1',20030116161053,NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685');
INSERT INTO assign_descriptor VALUES ('F2C641535A56BD537944FF1D21','F186E0333C668AE9C8CFD62426','E8D4BE646EF710FAB3F79BE639','Tips and Trick',1,'1',20030116161106,NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685');
INSERT INTO assign_descriptor VALUES ('F2C64182B77EF14F6711BF92FC','F1157841F5337A8CFCCD319BB2','E8D4BE646EF710FAB3F79BE639','Doc Pooling',1,'1',20030116161123,NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685');
INSERT INTO assign_descriptor VALUES ('F2E9240921DE9DC99BAEEF7B71','E7A77F657568CBF5B670623DCD','E8D4BE646EF710FAB3F79BE639','FAQ',1,'1',20030123104549,NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685');
INSERT INTO assign_descriptor VALUES ('F2E92679A4C9AB68203E499FE7','E7A781CFBA45A3CB44C81D8236','E8D4BE646EF710FAB3F79BE639','WebLink',1,'1',20030123104826,NULL,'0000-00-00 00:00:00','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `assign_osml`
--

CREATE TABLE assign_osml (
  id varchar(28) NOT NULL default '',
  osml_id varchar(28) default NULL,
  description varchar(255) NOT NULL default '',
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `assign_osml`
--

INSERT INTO assign_osml VALUES ('E8D4C292684B9B5C9F467E97A3','E8D4BE646EF710FAB3F79BE639','',1,'1',20020529015518,NULL,00000000000000,'IC','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `assign_user_site`
--

CREATE TABLE assign_user_site (
  id varchar(28) NOT NULL default '',
  site_id varchar(28) default NULL,
  user_id varchar(28) default NULL,
  description varchar(255) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `assign_user_site`
--


--
-- Table structure for table `backend_user`
--

CREATE TABLE backend_user (
  id varchar(28) NOT NULL default '',
  username varchar(128) NOT NULL default '',
  password varchar(30) NOT NULL default '',
  first_name varchar(128) default NULL,
  last_name varchar(128) default NULL,
  company_id varchar(28) default NULL,
  job_position_id varchar(28) default NULL,
  email varchar(128) default NULL,
  address1 varchar(255) default NULL,
  address2 varchar(255) default NULL,
  city varchar(128) default NULL,
  description varchar(255) default NULL,
  role_id varchar(28) default '0',
  calendar_flag tinyint(1) NOT NULL default '1',
  project_flag tinyint(1) NOT NULL default '0',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  active_flag tinyint(1) NOT NULL default '1',
  status_id char(2) NOT NULL default 'ic',
  site_id varchar(28) default NULL,
  reward_point int(11) default NULL,
  name_visible tinyint(1) default NULL,
  email_visible tinyint(1) default NULL,
  jive_id bigint(20) NOT NULL auto_increment,
  PRIMARY KEY  (id),
  UNIQUE KEY jive_id (jive_id),
  UNIQUE KEY username (username),
  KEY status_id (status_id)
) TYPE=MyISAM;

--
-- Dumping data for table `backend_user`
--

INSERT INTO backend_user VALUES ('1','admin','YWRtaW4=','Administrator','Workspace','F337B149F1D7EB47954BF7EF7','F2E8E299E96959106BE15AF29B','admin@intercitra.com','Jl. Cempaka Putih Tengah II','Blok C No. 21 Jak-Pus','Jakarta','','1',1,1,NULL,20031110154450,'1',20030927102735,1,'ip','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,1);
INSERT INTO backend_user VALUES ('F162B448063A847319E641EF7D','makin','bWFraW4=','Matahari Kahuripan','Administrator','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','dedeng@intercitra.com','','','','','3',1,1,NULL,20031110154459,'1',20030927144612,1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,3);
INSERT INTO backend_user VALUES ('F36F96E4EA83CB95AC4DC601F2','umar','dW1hcg==','Umar','Khatab','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','','','','','','3',1,1,NULL,20031001134005,'F36F96E4EA83CB95AC4DC601F2',20031001133958,1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,7);
INSERT INTO backend_user VALUES ('F3FB0D6714905E04E2586A8E1A','aris','YXJpcw==','Aris','Jatmika','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','aris@intercitra.com','','','','','3',1,1,'1',20031111162818,'1',20031111162818,1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,8);
INSERT INTO backend_user VALUES ('F501555A2ECD5AC8FCC32F4DD6','frans','ZnJhbnM=','Frans','Thamura','F337B149F1D7EB47954BF7EF7','F2E8E299E96959106BE15AF29B','frans@intercitra.com','','','','','3',1,1,'1',20031114160329,'1',20031111162835,1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,9);
INSERT INTO backend_user VALUES ('F53FAAF09AB84F412CDA27FF72','shadi','ZW1idW5n','Sunaryo','Hadi','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','shadi@adelva.com','','','','','3',1,0,'1',20030910113847,'1',20030910113847,1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,10);
INSERT INTO backend_user VALUES ('F36F8BFFF97F8A16505B8305F7','dedeng','ZGVkZW5n','Dedeng','Meilani','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','dedeng@intercitra.com','','','','','3',1,1,NULL,20040329124117,'1',20040211150419,1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,6);
INSERT INTO backend_user VALUES ('F9A204566AA30595ACD597D51E','umariah','dW1hcmlhaA==','Umariah','','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','','','','','','F9A202E61CD5BE6BE70F60BC30',1,0,'1',20031223143841,'1',20031223143841,1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,12);
INSERT INTO backend_user VALUES ('FA89238CD9BCDF331DF9B845EB','ginanjar','Z2luYW5qYXI=','Ginanjar','Utama','F337B149F1D7EB47954BF7EF7','F2E8E250BAAE253CBC93B60FFB','','','','','','FA84B7C4A3DA2013FA2CEA182B',1,1,'1',20040206114735,'1',20040206114735,1,'ic','EE185CE0B82B41C1724F284685',NULL,NULL,NULL,13);

--
-- Table structure for table `blueoxygen_project`
--

CREATE TABLE blueoxygen_project (
  id varchar(28) NOT NULL default '',
  headline varchar(128) default NULL,
  subheadline varchar(128) default NULL,
  abstract text,
  body text,
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `blueoxygen_project`
--


--
-- Table structure for table `blueoxygen_recipe`
--

CREATE TABLE blueoxygen_recipe (
  id varchar(28) NOT NULL default '',
  headline varchar(128) default NULL,
  subheadline varchar(128) default NULL,
  abstract text,
  body text,
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `blueoxygen_recipe`
--

INSERT INTO blueoxygen_recipe VALUES ('F5019973FFB34748089D4991FF','Java Fundamental Training','Java Fundamental Training','The most complete and easy to use training material for dummies, but sorry, this is an Indonesian language material.','The most complete and easy to use training material for dummies, but sorry, this is an Indonesian language material.<p> Please click <a href=\"http://www.blueoxygen.org/download\">here</a>','F5207456097B06E9ABBAD36D32java-logo.jpg',NULL,'F36F8BFFF97F8A1',20030513143802,'F36F8BFFF97F8A1',20030513143802,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO blueoxygen_recipe VALUES ('F55DBB23B28C4593B960F2E088','Java Open Source','Java Open Source Comment','Artikel ini ditulis juga untuk mengajak rekan-rekan di Indonesia, yang menurut saya sangat sedikit berperan dalam dunia Open Source Java, sepertinya semua masih sibuk berkutik dengan platform Linux. Open Source Java adalah momentum berikutnya setelah revolusi Linux, karena dukungan yang lebih serius dari perusahaan-perusahaan besar. ','Tidak terasa sekarang Java sudah memasuki versi 1.4 (2003), dengan segala component pendukungnya yang semakin hari semakin banyak. Dulu tahun 1990-an saat kita pertama kali dikenalkan teknologi applet oleh sebuah perusahaan Javasoft, sebuah anak perusahaan Sun Microsystem, wah semua media mengatakan this is the new innovation. Dengan gembar gembor marketing mengatakan Java akan menjadi sebuah bahasa internet yang paling keren dan paling gres. Semua jadi basi. Java dengan appletnya (1995) diciptakan untuk menghasilkan teknologi terobosan baru, dimana saat itu HTML masih sangat simple, paling-paling GIF animated.\r\n<p>\r\nKemudian keluar Flash dari Macromedia, sebuah teknologi yang dapat menghasilkan animasi, gerakan untuk internet, yang bekerja seperti layaknya Director, produk keluaran Macromedia juga, yang terkenal untuk pengembangan kiosk, multimedia presentation dengan bahasa Lingo. Flash membuat applet menjadi basi, dan dengan bahasa ActionScript, membuat Flash malah diposisikan menggantikan HTML, karena animasi yang kompleks saja bisa hanya beberapa kilobyte, dan tentu saja jadi beratus-ratus kilobyte bila menggunakan DHTML.\r\n<p>\r\n\r\nPokoknya jaman internet makin seru saja, ada HTML 4.0 dengan DHTML, yang digabungkan dengan JavaScript, ada applet, Flash, Microsoft ASF, Real (sekarang di Open Source-kan dengan nama Helix). Sekarang malah semua ini menuju ke mobile, dengan munculnya Flash Player for Nokia Communicator, Opera for UIQ.\r\n<p>\r\n\r\nKalau dilihat dari perkembangan internet, Java sepertinya tertinggal, malah setelah keluar Visual Basic 6.0 dan Microsoft Transaction Server dan IIS dengan module Active Server Pages, Java mulai tidak popular, karena sudah kalah dari Flash, dan secara server side, Java hanya digantikan sebagai replacement Perl yang saat itu masih sangat popular saat itu. Apalagi dengan kemunculan PHP terutama versi 3 yang bisa 4-5 kali lebih cepat, yang bukan hanya menggeser popularitas Perl, juga membuat orang mulai beralih dari ASP, karena kemampuan multiplatformnya. Wah Java keteteran saat itu, terus terang saat itu saya tidak begitu suka dengan Java untuk pengembangan aplikasi internet, CGI lagi.\r\n<p>\r\n\r\nKemudian ternyata team research Sun tidak berdiam diri, mereka terus berjuang mengembangkan komponen pendukung Java, mulai dari JDBC sebagai lawan ODBC, malah sebuah paket kumpulan komponen dengan nama J2EE dikeluarkan (saat ini J2EE 1.4 masih beta), yah didalamnya ada EJB, dunia mulai bergeser deh. Apalagi setelah Weblogic (saat itu belum dibeli Bea), mengeluarkan Java Application Server. Di dunia lain yaitu industri OS, Linux muncul sebagai alternatif murah untuk OS pengganti Windows dan UNIX. Wah Java mulai deh dilirik orang. Karena dia bisa sebagai alternatif solusi Microsoft dengan teknologi ActiveX-nya.\r\n<p>\r\n\r\nTerus terang saja, sebenarnya sekitar tahun 1999, muncul standar baru yang membuat internet makin rumit, XML, JSP, JDBC, JMS, Flash 5, terus PHP4. \r\n<p>\r\n\r\nOrang-orang pendukung Open Source membuat project di BlackDown.org, sebuah project membuat Java versi Linux, dimana ini adalah sebuah project yang cukup buat kita-kita sebal sama perusahaan yang disebut Sun Microsystem, karena dia memboikot dan mengeluarkan versi Java for Linux dengan Borland, saya tidak tahu tepatnya JSDK 1.3 saat ini merupakan pengembangan dari versi Borland atau Blackdown. Kejadian ini sempat membuat leader project pada keluar dari blackdown.org. Hal yang sama terjadi lagi saat ini dengan JCP-nya Sun (Jason Hunter sebagai VP Apache berjuang demi Open Source, karena Sun sebagai pemilik Java dan JCP menolak memberikan dukungan implementasi Open Source Java). JCP berdalih akan memberikan standarisasi component Java dengan dana basiswa 3 juta dollar US, malah komponen yang disetujui dengan dalih kalau di setujui akan dijadikan bagian dari Java SDK, yah kita lihat deh. JCP ini adalah cikal bakal turut campur perusahaan didunia Open Source Java, karena perusahaan besar yang gila standar seperti IBM, Sun, Microsoft, Oracle, Accenture dan perusahaan Java kecil yang menyebar seperti semut mengerubuti JSR (Java Specification Request) dari JCP. \r\n<p>\r\n\r\nDengan kesulitan dalam development servlet, team Java di Sun ternyata mencontek cara kerja PHP dan ASP dengan meluncurkan JSP (JavaServer Pages), yang bekerja mirip dengan tags-tags, sehingga pengembangan aplikasi internet lebih cepat, walaupun JSP itu nanti di compile ulang menjadi servlet lagi. Solusi yang tidak baik, sehingga keluar deh project yang disebut Struts di Apache, atau Webwork di OpenSymphoni untuk pengembangan Java dengan MVC Pattern. Team Sturts ini yang menjadi pelopor JSTL (JavaServer Pages Tag Library) untuk JSP tentu saja.\r\n<p>\r\n\r\nSekitar akhir 1999, Apache mendapat source code untuk pengembangan servlet tersebut dengan project yang disebut JServ, sebuah project implementasi Servlet API, coba deh ke http://Java.apache.org disana masih ada keterangan lebih lanjut tentang JServ. Malah Oracle Application salah ERP kedua terhebat didunia, ERP yang notabene, versi 11i-nya didalamnya bukan ada Tomcat tetapi JServ, padahal product itu dilaunch tahun 2002. Kita harus maklum, karena saat itu Oracle baru masuk ke Open Source dan mengganti semua webservernya dengan Apache HTTP.\r\n<p>\r\n\r\nSaat itu mulai deh Stefano (saat itu masih mahasiswa dan pendiri XML Project di Apache), mengembangkan component mulai dari Cocoon, kemudian keluar XML (sekitar tahun 1999), dan team Apache membuat Xerces, Xalan, Sam Ruby salah satu contributor PHP dari IBM contribute SOAP, Craig McClanahan (arsitek Tomcat yang bekerja di Sun). Hebatnya, saat yang bersamaan PHP 4 masih versi beta, saat itu pula Sam Ruby membuat PHP Java connector, sekarang dia salah satu pengluhur Apache. Saat itu saya sempat komplain cara akses PHP Java yang cukup memusingkan. Hebat kan sebenarnya sadar atau tidak sadar semua berjalan berbarengan dan serentak. Itulah revolusi.\r\n<p>\r\n\r\nSekitar tahun 2000-an, Microsoft mengeluarkan BizTalk.org dengan solusi SOAPnya yang disetujui oleh W3C, dan IBM membuat SOAP versi Java, kemudian SOAP tersebut didonasikan ke XML Project di Apache (coba lihat Sam Ruby selalu ikutan, dia veteran PHP dan Java terutama XML Project, dua-duanya adalah project Apache). Sun yang saat itu masih sombong dengan JAXP-nya atau ProjectX-nya, akhirnya memberikan codenya ke Apache, Sun nyerah dengan kecepatan pengembangan Open Source, keluar deh project Crimson, sebuah XML parser yang bekerja mirip Xerces. Terus terang saya tidak setuju dengan solusi ini, masa dalam Apache ada 2 project parser, mustinya yang dibuang itu JAXP bukan Xerces, sehingga Crimson tidak pernah lahir, maklum saya tidak tahu apa yang diberikan Sun, sehingga orang-orang Apache diam. Nah di project Jakartanya Apache, Sun mendonasikan implementasi Servletnya dengan project disebut Tomcat. Implementasi Open Source lainnya seperti Jetty (dari Australia) adalah alternatif Tomcat.\r\n<p>\r\n\r\nDidunia lain, dunia middleware, Enhydra mengeluarkan server implementasi J2EE, dan saat itu Enhydra masih Open Source, dan team Enhydra meminta sertifikat J2EE ke Sun, ditolak dikarenakan produknya komersial. Jadi deh Enhydra mulai versi 4 komersial, tapi syukur deh versi 5-nya Open Source lagi. Tetapi ternyata ada orang-orang yang masih tetap support Open Source seperti Jonas dan JBoss (versi 2-nya merupakan implementasi EJB 1.x). Mereka tetap berjuang dan membuat EJB container Open Source. Marc Fluery bekas orang Sun yang juga salah satu team pembuat EJB standar di Sun dan juga pendiri JBoss, mengajukan sertifikat J2EE untuk JBoss. Coba deh ke webnya di http://www.jboss.org, JBoss sedang promosi untuk disetujui sebagai suatu standard. Saya sih berdoa semoga cepat diberikan sertifikat tersebut. Saya malah meramalkan kalau sertifikat itu diberikan, bisnis Java Application Server akan bergeser, mungkin saat itu kita akan melihat Bea sudah menjadi bagian dari HP, atau Oracle atau Sun (coba baca di TheServerSide.com mengenai kemungkinan 5 merger besar perusahaan IT). \r\n<p>\r\n\r\nSaat ini saya baru sadar, bahwa gabungan Servlet dan EJB menjadikan Java sangat hebat. Apalagi setelah JBoss 3.0 mendukung clustering (versi 2.x mendukung JMS). Wah Java semakin caem, dan hebatnya semua ini Open Source, gratis, dan jalan di Linux lagi. Dan gilanya semua ini dikembangkan bersamaan sekitar tahun 1999-an. Cepat sekali bukan.\r\n<p>\r\n\r\nNah, dengan cerita diatas, mulai deh Java popular sebagai aplikasi enterprise apalagi setelah server middleware berbasis J2EE keluar seperti Weblogic, Websphere, dan  Enhydra, mulai deh Java didukung secara komersial dan juga Open Source. Malah, dengan gabungan Tomcat (servlet container) ? saya lebih setuju Jetty sih, jangan terlalu Apache deh## dan JBoss (EJB Container) yang kedua-duanya Open Source, maka yang siap melawan Microsoft bukan hanya Java yang komersial tetapi juga Java Open Source. \r\n<p>\r\n\r\nHebatkan, JBoss itu musuh Microsoft dan juga musuh IBM, Sun, Bea maupun Oracle. Padahal hidup mereka hanya dari training dan jualan buku. Kacau deh, mereka volunteer gila. Terus terang team JBoss adalah orang murni Open Source, mereka hebat, saya salut deh, mereka terus berjuang walaupun CEO Sun, Scott pernah mengemukakan, kalau Jboss di setujui, banyak perusahaan dan bisnis Java menjadi kacau (Interview dilakukan oleh team TheServerSide.com).\r\n<p>\r\n\r\nAplikasi Java Open Source itu sebenarnya ikut bersaing dengan Aplikasi Java komersial berkelas seperti Oracle 9iAS, Websphere, Weblogic, BlueStone (sudah kalah dan diOpen Sourcekan, tetapi tidak populer). Malah JBoss berkampanye untuk migrasi semua aplikasi yang jalan di Bea Weblogic (maklum dia pemimpin pasar Java Application Server) ke JBoss Server. \r\n<p>\r\n\r\nHampir semua perusahaan pesaing Microsoft memasukan Java sebagai solusinya, diantaranya adalah Oracle memasukan Java JVM ke Oracle 8i, kemudian melisensi Borland JBuilder dan menggantinya menjadi JDeveloper, kemudian IBM membuat Websphere, malah versi Websphere Portalnya ada component Jetspeed (salah satu project Jakarta di Apache), terus Bea Weblogic (saya pernah menggunakan versi 3 dari Weblogic, dan didalamnya ada Xerces yang direfactoring). Terus Rational dengan Rose 2000-nya, sang pemimpin UML, mulai deh mendukung Java. Maklum saat itu kalau saya hendak membuat reengineering UML dari Java code, susahnya setengah mati. Maklum DFD sudah basi. <p>\r\n\r\n\r\nMulai deh perusahaan saling baku hantam dan mereka masuk dunia Open Source yang bersih dengan unsur komersial, seperti IBM, Sun, Oracle, malah consultant dunia mulai deh ikutan dengan gabung ke JCP seperti Ernst & Young, Andersen/Accenture. Saya pernah kecewa dengan mereka semua, karena sebagai salah satu yang direkomendasikan di JCP oleh IBM, eh dikeluarkan, karena persaingan JSR antara Sun dengan IBM, mentang mentang punya perusahaan besar, yang kecil ditindas, mustinya kalau bisa demo saya demo deh saat itu, tetapi ternyata yang protes mengenai JCP itu bukan hanya saya saja, jadi memang intinya orang Open Source tidak bisa dipegang.\r\n <p>\r\n\r\nPersaingan lainnya yang hebat terjadi antara perusahaan besar dengan tameng Open Source adalah project IBM Eclipse (versi komersialnya disebut Websphere Studio, dulu Visual Age), dengan Sun Netbeans (versi komersialnya Sun Forte, sekarang SunOne Studio). Malah, dalam marketingnya IBM mengatakan dirinya adalah leader dari semua ini, dengan kontribusinya yang besar membuat standard, dan dukungan terhadap Open Source bukan hanya Java tetapi Linux, malah IBM mengeluarkan sekitar 300 juta dollar US untuk project ini. \r\n<p>\r\n\r\nSampai ada ide dari IBM untuk Sun agar Java-nya di Open Sourcekan juga, maklum IBM mengeluarkan uang berjuta-juta dollar untuk project Javanya, dan dia adalah salah satu pemimpin dipasar application server bersaing dengan Bea Weblogic.\r\n<p>\r\n\r\nTerus terang, perkembangan Open Source terutama Java, dengan campur tangan IBM, Sun, Oracle dan lain-lain, menjadi ada unsur bisnisnya, tetapi ada nilai positifnya, Open Source Java menjadi semakin popular, apalagi setelah adanya JCP, dan revisi dari JCP dengan versi 2.5 (www.jcp.org), yang mendukung implementasi Open Source Java. Wah dunia akan semakin menarik deh. Saya malah meramalkan nanti Open Source Java akan semakin rame dan standard baru akan semakin banyak, makin pusing juga sih, kasihan juga sih bagi programmer, kerja mereka akan semakin banyak dan susah. \r\n<p>\r\n\r\nSaya pribadi melihat Open Source Java menjadi sebuah solusi yang patut dipertimbangkan, apalagi dengan dukungan terhadap perangkat mobile seperti handphone, PDA, malah SmartCard, Java menjadi sebuah bahasa yang patut dipikirkan. Apalagi kalau Sun membuat Java jadi Open Source, wah lebih seru lagi. Apalagi kalau kita menggabungkan dengan solusi Linux yang aplikasinya cepat dan stabil, seperti QMail, OpenLDAP, Jabber ataupun Apache HTTP, wah keren deh. \r\n<p>\r\n\r\nPengembangan aplikasi multiplatform Java lebih cepat dibandingkan dengan C, walaupun C adalah sebuah bahasa yang membangun Linux. Ingat Microsoft Windows masih tetap pemimpin pasar, Linux adalah alternatif selain Windows, UNIX system (AIX, HP-UX, BSD). Mari mencari uang dengan Open Source Java. Ingat Java itu bukan WORM (Write Once Run Anywhere) seperti yang dipromosikan Sun, tetapi Write Once Carefully Run Anyware Hopefully.\r\n<p>\r\n\r\nSebagai informasi, Microsoft Windows XP mulai SP2, memasukan kembali Sun Java SDK. Lucu kan dulu Microsoft sempat ribut dengan Sun dan kalah dipengadilan, dan mengeluarkan duit berjuta-juta dollar, kemudian mengeluarkan Java JVM dari Windows, eh malah pengadilan US memerintahkan memasukan lagi Java. <p>\r\n<i>Artikel ini dimuat pada Majalah Neotek Edisi April/Mei 2003.</i>','F55DBF8A30316699C2A21BA80java-logo.jpg','F55DBF8A3B2ED51220C3CCBE0java-logo.jpg','F501555A2ECD5AC',20030525121701,'F501555A2ECD5AC',20030525121701,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO blueoxygen_recipe VALUES ('F55DC1953D14B85DB2C825A653','New BOB, sang provokator perang inovasi.','BOB = Best of the Breed','Setelah kematian Microsoft Bob, lahir BOB, seorang petualang didunia kebebasan, berjalan diantara orang-orang radikal, yang bersahabat dan dibentuk oleh perusahaan-perusahaan berkelas dunia, tetapi juga sebagai simalakama bagi pembuatnya, karena setelah populer dia akan melawan sang tuannya.','Sekilas Kata<br>\r\nSetelah kematian Microsoft Bob, lahir BOB, seorang petualang didunia kebebasan, berjalan diantara orang-orang radikal, yang bersahabat dan dibentuk oleh perusahaan-perusahaan berkelas dunia, tetapi juga sebagai simalakama bagi pembuatnya, karena setelah populer dia akan melawan sang tuannya.\r\n<p>\r\nMasih ingat dengan Microsoft Bob, sebuah interface yang memudahkan orang untuk mengakses Windows, aplikasi yang membuat ruang kerja seperti layaknya rumah kita. Microsoft Bob, sebuah project yang dikembangkan oleh istri Bill Gates, Miranda Gates, project yang konon tidak direspon oleh pasar, dan mengalami kegagalan. Yang konon gosipnya mengatakan, karena projek tersebut dikembangkan sang istri boss besar, makanya bisa dilaunch ke public.\r\n<p>\r\n\r\nArtikel ini tidak membahas Microsoft Bob atau istrinya Miranda Gates, tetapi Bob lain, yang saya sebut New BOB, karena untuk membedakan antara Bob nya Microsoft dengan BOB yang saya bicarakan. BOB sebenarnya singkatan dari Best of Breed, yaitu sesuatu terbaik dari yang terbaik.\r\n<p>\r\n\r\nBeberapa waktu ini, diseluruh dunia hampir emua orang sudah mulai berpikir menggunakan Linux sebagai aplikasi bisnisnya, malah IBM, Oracle, Sun, SAP sudah terang-terangan mendukung Linux untuk skala Enterprise. Apalagi issue pemerintah di Indonesia akan melakukan sweeping ke perusahaan-perusahaan di Indonesia terhadap software bajakan, yang kalau direalisasi dendanya mungkin bisa lebih besar dari APBN, dan malah bisa buat krisis baru. Linux menjadi sebuah solusi yang cocok untuk bisnis.\r\n<p>\r\n\r\nMalah hasil survey saya dengan terhadap beberapa perusahaan di Indonesia, beberapa memang sedang berpikir untuk menggunakan Linux. Malah saya pernah bertemu perusahaan besar yang mereplace Lotus Notesnya dengan system Qmail + OpenLDAP di Linux, hebat kan. Sebuah start yang baik, walaupun masih saja tetap Windows menjadi sebuah server operating system yang paling diminati, wong kalau tidak ada mampu masih bisa mendapatkannya di Mangga Dua.\r\n<p>\r\n\r\nNah evolusi Linux memang membuat perusahaan teknologi terutama di Amerika sana kotar katir, kita lihat IBM support Linux di RS/6000nya, bagaimana dengan AIXnya? Sun mengeluarkan server dengan prosessor Intel dengan Linuxnya ?yang konon gossipnya sih karena Sun sedang sebal dengan Dell, karena eBay.com mengganti server Sunnya seharga US$ 200,000 dengan PC-Intel berbasis Linux seharga US$ 4000. \r\n<p>\r\n\r\nTetapi secara bisnis ada yang lebih penting, dan mungkin itu yang membuat mengapa orang masih ada yang mau memilih Windows sebagai aplikasi bisnisnya, karena banyaknya aplikasi yang berjalan di Windows, apalagi dengan teknologi .NET yang secara bisnis sama saja, tetapi secara teknologi adalah mainan baru bagi orang-orang IT. \r\n<p>\r\n\r\nTentu saja kalau didunia Desktop, jangan dilawan deh, Windows jauh lebih enak, dengan Office yang sudah kita gunakan bertahun-tahun, moh deh ganti dengan desktop linux yang walaupun di RedHat 8.0 sudah lebih enak. Tetapi tidak tahu sih ditahun-tahun kedepan. Kita lihat saja.\r\n<p>\r\n\r\nNah belakangan ini ada banyak perusahaan-perusahaan yang berusaha menggantikan posisi Microsoft, malah menurut saya, mereka semakin morat-marit, wong Microsoft punya uang segudang, malah bisa beli Indonesia. Perusahaan-perusahaan pusing tujuh keliling melawan Microsoft yang jago di marketing dan juga teknologi. Perusahaan lawan Microsoft, terutama IBM, Oracle, Bea, Sun maupun RedHat, mereka masih tetap berjuang untuk mengeser popularitas Microsoft. Pekerjaan yang sulit dan susah, hebat memang Bill Gates ini.\r\n<p>\r\n\r\nNah lawan Microsoft yang cukup disegani adalah Linux, sebuah operating system yang dibuat oleh para programmer, hacker, hobbist komputer dan pelajar, telah membuat Linux menjadi aplikasi alternatif untuk bisnis, apalagi dengan harganya yang nol, alias gratis, membuat Linux menjadi sebuah alternatif pilihan yang baik.\r\n<p>\r\n\r\nSayangnya, dalam implementasi didunia bisnis, Linux masih sedikit dibandingkan dengan Windows, tentu saja ini di Indonesia, dan malah terus terang saya sendiri yang sudah pakai Linux bertahun-tahun, masih merasa ini barang susah banget, dan sepertinya aplikasinya terlalu banyak, dan buku panduannya sedikit, kalaupun ada kata-katanya tidak enak diikuti. \r\n<p>\r\n\r\nAkhirnya, saya sering memberikan saran kepada client-client saya, pakailah Microsoft Windows untuk OS kamu, semua dapat dikerjakan lebih mudah. Maklum dengan atitude pegawai di Indonesia yang mau mau dewek, dan ketidak mengertian bos-bos terhadap hal-hal teknikal, bisa jadi Linux, pilihan yang secara value emang murah tetapi secara maintenance, bisa buat pusing dikemudian hari. Yah, memang buat para konsultan dan system integrator, maintenance tersebut seperti lahan uang yang bagus, tetapi kalau dilihat dari sisi Windows, wah tidak perlu tuh maintenance dioutsource, karena Windows sudah sangat gampang, tinggal ketik beberapa klik mouse saja selesai. Mulai dari kegiatan backup sampai instal aplikasi baru, wizardnya hebat.\r\n<p>\r\n\r\nNah, jadi disisi operating sistem, Windows memang menjadi pilihan, apalagi di Indonesia yang tidak perduli dengan lisensi.\r\n<p>\r\n\r\n\r\nSiapa itu BOB?<br>\r\nOke, kita kembali lagi, Apa hubungan Microsoft Bob dengan masalah diatas? Memang tidak ada, saya memakai kata BOB untuk mengartikan Best of Breed, sebuah kata yang mulai populer didunia teknologi informasi, dimana BOB adalah sekumpulan aplikasi/software yang mula-mula diciptakan melawan Microsoft. Dimana, anggota-anggota BOB bermacam-macam, seperti halnya Linux, ada freelancer ada perusahaan besar seperti Sun, Oracle, ataupun IBM. \r\n<p>\r\n\r\nMereka semua membuat aplikasi yang kehandalannya dinilai dan diakui oleh publik, sehingga hanya mereka yang membuat aplikasi terbaik saja yang bisa diakui. Sebagai contoh, Xalan, adalah sebuah project open source dari Apache, gunanya untuk mentransformasikan XML menjadi media lain seperti XHTML, WML, PDF dengan menggunakan syntax XSLT. Xalan saat ini ditemukan hampir disemua aplikasi, mulai dari software Sun, Bea Weblogic. Malah tidak ada satupun yang tidak mengakui kehebatan Xalan.\r\n\r\nDilain pihak, ProjectXnya Sun, yang khusus menangani manipulasi XML, salah satu produknya adalah JAXP. Nah saya tidak tahu, karena Sun kehabisan uang, atau kotar katir dengan kehebatan orang open source, dia membuat Project X menjadi open source juga, dengan project yang disebut Crimson, hasilnya adalah mulai Java 1.4, Crimson jadi bagian dari bundel Java SDK. Karena kalau tidak diopensourcekan, Project X akan ditinggalkan dan dilupakan orang. Maklum support dan update dari Sun, super sangat lambat.\r\n<p>\r\n\r\nTerus, aplikasi seperti CVS, Apache HTTPD Server, OpenSSH, Bounty Castle, dan ratusan mungkin ribuan project-project yang dibuat dan umumnya berjalan di Linux membuat Linux menjadi tidak ternilai harganya, dan semua pengakuannya kehebatannya dilakukan oleh publik, dan semua ini tidak terdapat di Windows, mulai ditemukan dan dapat dijalankan di Windows. Merekalah anggota sejati BOB.\r\n<p>\r\n\r\nTerus bagaimana dengan Microsoft<br>\r\nMicrosoft punya teknologi dan uang, dia bisa melakukan apa saja. Microsoft membuat semua aplikasi terintegrasi mulai dari Accounting (Great Plains), CAD (Visio), Office Automation (Office, Project), Content Management (CMS dan Sharepoint). Apalagi saat artikel ini dibuat gosip mengatakan Microsoft sedang melawan IBM hendak membeli Rational Rose, dan sedang nego dengan Macromedia untuk mengakusisinya. Sepertinya dia menjadi superjargon yang ngga mau kalah dan semakin dibenci semua perusahaan. Malah saat ini musuh Microsoft bukan hanya orang teknologi saja, tetapi juga media seperti AOL, vendor handphone Nokia, Sony, sampai SonyEricsson (aliansi Sony dan Ericsson).\r\n<p>\r\n\r\nKalau dipetakan, wah tidak ada satupun perusahaan yang mendukung Microsoft deh, selain tentu saja perusahaan partner Microsoft, yang pasrah kalau Microsoft membeli salah satu pesaingnya. Siap menunggu suatu hari dibangkrutkan secara tidak langsung. Intel saja yang sahabat sejati Microsoft, mulai bersifat netral dengan bersahabat dengan Symbian, Palm dan Linux.\r\n<p>\r\n\r\n\r\nBOB didunia nyata. <br>\r\nKehadiran BOB, sebagai suatu koalisi yang besar, seperti layaknya partai politik yang hendak mengguncang Golkar, semakin hari semakin hebat. Sayangnya di Indonesia, Golkar masih seperti itu-itu saja, sedangkan BOB, anggotanya sudah semakin banyak dan makin hari semakin besar, apalagi dengan maraknya globalisasi. \r\n<p>\r\n\r\nNah, sepertinya dengan popularitas BOB ini, ada satu teknologi yang terkena anginnya, yaitu Java, sebuah bahasa yang membuat aplikasi menjadi multiplatform yang bisa jalan dimana saja, sebagai bahasa yang paling populer setelah C, yang dapat berjalan mulai dari Windows, Linux sampai hand phone, malah NTT Docomo yang terkenal dengan 3Gnya, menggunakan Java. Sampai-sampai Macromedia yang terkenal dengan Flashnya, membuat system server side menggunakan Java, malah mengganti Cold Fusionnya menjadi aplikasi Java.\r\n<p>\r\n\r\nTerus IBM, mulai sikut sana sini dengan project Alphaworksnya, yang mayoritas hasilnya berbentuk kode Java, yang mulai menekan Sun, sang pencipta Java, Oracle juga tidak ketinggalan, ikut-ikutan dengan OTNnya masuk kedunia BOB. Jadi yang senang adalah Linux dan Java, sepertinya mereka jadi buai-buaian.\r\n<p>\r\n\r\nJava, membantu migrasi dari aplikasi Windows dan Mainframe menjadi aplikasi yang dapat berjalan di mesin yang murah dan lebih cepat, malah dengan dukungan clusteringnya, membuat aplikasi Java dapat jalan di sistem murah dengan kemampuan super computer. Belum lagi kalau menggunakan Linux yang dikluster dengan Bewolf misalnya, wah makin super deh sistemnya. Membuat siapa saja bisa terjun dan mendaftarkan diri menjadi anggota BOB.\r\n<p>\r\n\r\nNah kalau sudah begini, mulai kompleks permasalahannya, karena aplikasi sudah menyerempet kedalam bisnis inti para praktisi bisnis, jadi memilih BOB lebih masuk akal dibandingkan dengan memilih solusi Linux ataupun Microsoft. Wong yang lebih murah dan produktif adalah outputnya.\r\n<p>\r\n\r\nNah lahan ini yang bisa diambil oleh para konsultan teknologi, dan juga solusi yang dapat melawan solusi Mangga Dua. Karena barang yang saya sebutkan diatas bisa diambil di Internet dengan gratis, dan didukung perusahaan, sehingga purna jual-nya dapat lebih terjamin.\r\n<p>\r\n\r\nSolusi BOB ini mungkin membuat pasar Microsoft lebih kecil, tetapi juga secara tidak langsung membunuh pasar musuh-musuh Microsoft yang diperkecil. Yang kena dampaknya hampir semua perusahaan besar, karena BOB ternyata super flexible dan gesit, mulai dari IBM, Sun, Bea, Macromedia, maupun Adobe.\r\n<p>\r\n\r\nHal ini juga membuat peluang bagi orang-orang baru untuk memasuki dunia ini, malah tidak kecil kemungkinan keanggotaan BOB dianggotai oleh personal bukan perusahaan. Maklum keanggotaannya adalah gratis dan tidak perlu registrasi. BOB selain kejam, memang liberal, dan anti sosial.\r\n<p>\r\n\r\nMalah menurut ramalan saya, kalau benar project-project open source, seperti JBoss, Jonas, Compiere, Global Retail Technology, ataupun Open for Business berhasil menciptakan aplikasi bisnis yang powerfull dan gratis, serta sudah diakui oleh publik sebagai member BOB, wah yang hancur marketnya bukan hanya Microsoft, tetapi Sun yang menyediakan Java, IBM yang menciptakan Websphere, Bea dengan Weblogicnya. SAP dengan SAP R/3-nya. Mereka harus banting harga deh untuk melakukan perang melawan BOB. BOB seperti buah simalakama. \r\n<p>\r\n\r\nBOB, si pembuat perang inovasi?<br>\r\nYang dapat saya perlihatkan sekarang dunia menjadi kacau, sepertinya terjadi perang bebas, dan perang ini bukan perang kecil, maklum yang ikutan perang mulai dari Microsoft, Sun dan IBM, melawan BOB. Yang pasti anggota yang mendanai perang ini adalah Linux. Jadi semakin pebisnis mendukung Linux, perang akan semakin besar.\r\n<p>\r\n\r\nPerang inovasi antara perusahaan-perusahaan teknologi dengan BOB, tentu saja membuat pusing para pebisnis, karena pilihan jadi segudang, dan semuanya kelihatan bagus, dan bagi pebisnis semua mirip-mirip, dan kalau salah pilih, berarti aplikasi bisnis inti pebisnis itu harus dibuang dan kegiatan implementasi harus diulangi, solusi teramannya tentu saja adalah melakukan bisnis manual, ngga pusing, paling pusing sama pajak saja. Apalagi diera globalisasi ini, kompetisi semakin sulit, saingan makin banyak, terutama di Indonesia, setelah AFTA, saingan barang import meningkat. Ya, silahkan gulung tikar karena kurang kompetitif, habis manual sih.\r\n<p>\r\n\r\nSayangnya, tidak satupun yang bisa melawan keberadaan BOB, dia semakin hari semakin gemuk. Siapkah Anda?\r\n','F55DC85D04E5A9A9CFE9B1E8F0bo2-logo.jpg',NULL,'F501555A2ECD5AC',20030525122639,'F501555A2ECD5AC',20030525122639,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO blueoxygen_recipe VALUES ('F55DC4A2B5A948CD1EAA87A362','Implementasi Experiantal Marketing terhadap Solusi Linux','Experiental Marketing di Linux','Tips memenangkan pasar dengan menggeser Linux dari sebuah sistem operasi alternatif Windows menjadi sistem operasi emosional.','Seia Sekata<br>\r\nBeberapa bulan belakangan ini, saya bergabung dalam beberapa mailing list, dan kebetulan membaca InfoLinux Juni, yang mengulas berbagai macam distro Linux, dan malah saya mencoba Knoppix yang CD-nya disertakan. Terus terang Knoppix itu merubah paradigma saya tentang Linux.\r\n<p>\r\nDisisi lain, saya mendapat beberapa email dari mailing list telematika yang mengatakan bahwa Pemilu menggunakan Windows sebagai Operating Systemnya, hal ini dikarenakan usernya tidak familiar bila menggunakan Linux, maklum orang Indonesia bukan hanya terkenal GapTek tetapi juga malas, jadi bilang susah dulu sebelum mencoba. Mungkin juga investasi memintarkan keinginan ini lebih mahal dibandingkan membeli lisensi Windows.\r\n<p>\r\n\r\nMaklum saya pernah melakukan beberapa kali implementasi didaerah yang bukan kategori kota, maklum perusahaan-perusahaan tersebut adalah perkebunan, baik itu karet maupun kelapa sawit yang letaknya jauh sekali di tengah pulau. Malah beberapa orang yang saya training tersebut belum pernah menginjak kota.\r\n<p>\r\n\r\nMalah implementasi yang dilakukan adalah Oracle Application (ERP) yang termasuk software ERP nomor dua didunia setelah SAP R/3. Yang hebatnya sebelum implementasi mereka melakukan kegiatan sehari-harinya menggunakan mesin tik, terutama divisi pembeliannya. Malah mesin tiknya itu yang jaman heubeul (kuno) yang panjang, dan mustinya masuk museum. \r\n<p>\r\n\r\nYang hebat, setelah 1 tahun, mereka semua merasakan kemudahan aplikasi tersebut, karena mereka merasakan kecepatan bekerja menggunakan ERP tersebut. Walaupun terus terang saja, bug dan error aplikasi tersebut berjibun, sampe team harus implementasi dengan melakukan versi lite, artinya kita sembelih module yang ada, asal tujuan secara perusahaan benar, yaitu jalan. Yah mungkin kalau hal ini dilakukan marketing campaign oleh Oracle, bisa-bisa ngga ada yang mau beli ERP lagi.\r\n<p>\r\n\r\nSaya rasa pengalaman saya ini harus dicoba dan dikaji ulang, juga mungkin baik juga dijadikan masukan bagi para linux implementator, terutama perusahaan yang bergerak dibidang implementasi linux.\r\n<p>\r\n\r\nExperiental Marketing<br>\r\nTetapi artikel saya ini mungkin bukan untuk membahas bagaimana menjual linux ke corporate tetapi membahas pengembangan komunitas linux kearah yang lebih strategis. Yang mana saya harapkan dalam dalam waktu pemilu kedepan ditahun 2009, Linux dapat menjadi satu-satunya sistem untuk Pemilu, dan juga menjadi salah satu operating sistem yang diakui oleh pemerintah, dan menjadi standar operating sistem untuk pemerintah. Jadi tidak ada satupun pemerintah yang menggunakan aplikasi commercial di pemerintahan, yah kalau Microsoft mau juga harus memberikan lisensi secara gratis. \r\n<p>\r\n\r\nSaya melihat linux adalah sebuah produk komunitas populer yang dikembangkan oleh komunitas, tetapi dengan popularitas yang meningkat, banyak perusahaan-perusahaan/personal yang membuat distro sendiri, contohnya RedHat, SuSE, Trabas, Knoppix sampai Inul. Hal ini membuat terjadi saingan searah antar distro linux, yang mana secara benefit adalah sama, yaitu sebagai operating sistem. Hal yang tidak terjadi di Windows, Solaris dan operating sistem komersial lainnya. Yang sayangnya jarang sekali ada bentuk pengembangan yang serius untuk membuat sebuah interoperability antar distro tersebut. Hal ini membuat beberapa user, seperti saya yang yakin bahwa distro baru tersebut benar-benar sama dan kompatible. Maklum saya pernah mendapat pengalaman jelek saat instalasi RedHat, sehingga saya lebih menyukai Mandrake, walaupun server saya yang dihosting menggunakan RedHat.\r\n<p>\r\n\r\nNah pengalaman yang pernah saya alami, akan terus mengikat dibenak saya, bahwa saya lebih suka Mandrake dibanding Redhat, walaupun keduanya sama-sama Linux, pengalaman tersebut dalam bidang pemasaran disebut dengan Experiental Marketing.\r\n<p>\r\n\r\n<b>Experiental Marketing adalah sebuah konsep perasaan (emosi) yang dikomunikasikan kepada pihak konsumen, sehingga dapat memberikan pengalaman yang tidak terlupakan. Experiental Marketing ini muncul dikarenakan sudah mulai sesaknya pasar oleh berbagai macam produk yang menawarkan benefit yang sama.</b>\r\n<p>\r\n\r\nSayangnya secara pengalaman Mandrake bagus sekali, tetapi sampai hari ini saya tetap mendapat kesulitan untuk mengintegrasikan user loginnya dengan OpenLDAP, serta setting integrasi lainnya, yang berdasarkan pengalaman memerlukan waktu 1 - 2 minggu untuk mencari tahu. Yang menurut saya ini mubajir dan tidak effisien. Masa sih dengan pengguna user yang seabrek, saya sulit sekali mencari orang yang bisa diajak komunikasi untuk masalah integrasi ini. Nah pengalaman saya ini secara experiental akan memberikan pengalaman buruk, walaupun mungkin bagi pakar linux solusi ini mudah, dan perlu waktu 1 ? 2 jam. Padahal Windows sudah memberikan default LDAP dalam paket Windows 2000-nya.\r\n<p>\r\n\r\nMalah tidak jarang dari hasil diskusi dengan client saya, saya menyarankan menggunakan Windows sebagai sistem operasinya, karena ada beberapa issue teknikal yang tidak terpecahkan bila melakukan implementasi dengan linux. Issue ini memang terpecahkan dalam 1-2 minggu, tetapi dari sisi bisnis, issue tersebut tidak efisien, sehingga secara bisnis, membuat solusi Linux menjadi tidak relevan. Dimana hal ini terjadi juga pada pengambilan keputusan pemilihan sistem untuk pemilu. Apalagi dalam kasus pemilu, yang menjadi standar adalah PC client, bukan server, yang mana Microsoft memang menguasai pasar ini secara internasional, dimana RedHat melalui bluecurvenya sedang berusaha memasuki pasar ini. Secara strategis Linux masih kalah dengan Windows, apalagi dari banyak pengalaman yang mengatakan windows lebih mudah.\r\n<p>\r\n\r\nImplementasi Experiental Marketing bagi Linuxer<br>\r\n\r\nJadi dapat dikatakan secara experiental marketing, Microsoft jauh didepan, walaupun sistem Windows masih properti Microsoft. Hal yang mungkin dapat dikatakan sangat lucu sekali kalau dilihat dari analisa sisi pemasar, karena Linux adalah produk kerja komunitas yang diciptakan untuk komunitas, yang memiliki semua nilai yang dimana jauh lebih efisien dibanding dengan Windows. Yang mana secara analisa teknikal, tidak ada satupun yang bisa mengalahkannya, tetapi secara strategis tetap tidak relevan. Linux secara experiental marketing adalah buruk.\r\n<p>\r\n\r\nMelalui artikel ini, saya mengajak para linuxer, baik itu pakar linux, hobbyist, user baik personal maupun korporate, lembaga edukasi linux agar melakukan implementasi experiental marketing. Saya melihat implementasi experiental marketing itu sebaiknya diimplementasikan oleh semua pihak, karena unsur komunitasnya tinggi sekali di linux. Hal yang tidak dapat dimiliki oleh Windows. \r\n<p>\r\n\r\nApa yang harus dilakukan agar Linux itu benar-benar berexperiental marketing? Nah ini jadi tantangan bagi para pelaku linux, terutama lembaga pendidikan dan perusahaan yang berhubungan dengan Linux.\r\n<p>\r\n\r\nDengan kata lain, dengan experiental marketing, diharapkan linux yang merupakan produk komoditas (karena saking banyaknya distro) menjadi sebuah experience yang lebih tinggi nilainya dibandingkan dengan servis yang diberikan linux saat ini sebagai sebuah alternatif Windows.\r\n<p>\r\n\r\nKita harus mencari strategi bahwa linux itu bukan hanya sebagai sistem alternatif Windows, tetapi merupakan sebuah sentuhan emosional yang membuat pemakainya tidak mau berpindah ke Windows setelah mencoba Linux. Hal yang sulit sekali saat ini, karena terus terang secara pribadi saya adalah salah satu yang belum tersentuh emosionalnya, walaupun sudah memakai linux dalam jangka waktu lama. Apalagi secara professionalisme, saya tidak merasa dirugikan menggunakan non-Linux sistem. Walaupun secara psikologi saya sangat terpanggil untuk mengimplementasikannya. Kalau tidak artikel ini tidak dibuat dong.\r\n<p>\r\n\r\nKolaborasi di Linux<br>\r\nBanyak cara untuk melakukan implementasi experiental marketing didalam dunia Linux, yang paling penting adalah terjadinya kolaborasi yang terbuka antar pengguna linux, sehingga linux dapat naik pangkat menjadi sebuah sistem operasi emosional.\r\n<p>\r\n\r\nMengapa saya memakai kata kolaborasi linux? Sebenarnya kata ini saya rancang dulu saat diskusi untuk membuat sebuah sistem egoverment collaboration services, yang mana sampai hari ini masih pending, karena tidak adanya koneksi saya terhadap pemerintah, selain itu juga dikarenakan hampir mayoritas semua sistem egoverment yang publik, terutama dotcom-dotcom pemerintah tidaklah memberikan rasa ke bhinnekaan, malah terkesan negara ini seperti terpecah-pecah karena otonomi dan egoisme daerah. Mereka membuat semua dotcomnya sendiri yang tidak berinteraksi dengan dotcom lainnya, padahal egoverment harusnya merupakan media yang menaungi penduduk, pemerintah dan pebisnis. <p>\r\n\r\n\r\nKonsep kolaborasi yang saya rancang tersebut ternyata kalau ditarik lininya (lihat BlueOxygen Strategic Framework yang saya sertakan) masih satu keluarga dengan Linux, yang mana merupakan sebuah produk komunitas. Egoverment yang baik merupakan produk komunitas juga, walaupun dalam dunia yang berbeda. <p>\r\n\r\n\r\nImplementasi kolaborasi linux dapat dilakukan dengan membuka informasi seluas-luasnya, yang secara tidak langsung dapat mempercepat penetrasi linux di Indonesia pada khususnya, juga secara tidak langsung akan mendunia. <p>\r\n\r\n\r\nMemang implementasi kolaborasi linux ini sangatlah berat, tetapi saya pribadi melihat ini adalah salah satu katalis yang memungkinkan linux dapat menang dalam pemilihan pemilu yang akan datang, malah juga dapat membuat penetrasi linux dalam perusahaan semakin cepat. Yah nanti banner di detik.com bukan lagi ucapan terima kasih Microsoft, tetapi ucapan terimakasih pemerintah kepada rakyatnya karena dapat mengharumkan nama bangsa.\r\n<p>\r\n\r\nJaringan Kolaborasi Linux<br>\r\nJaringan kolaborasi linux diharapkan menjadi sebuah landasan untuk implementasi experiental marketing di linux yang dapat mempercepat penetrasi linux. <p>\r\n\r\n\r\nUntuk membentuk jaringan ini harus banyak team antar disiplin yang dibentuk agar linux menjadi semakin mudah, terutama bagi para user non-teknis apalagi yang gaptek (gagap teknologi). <p>\r\n\r\n\r\nImplementasi jaringan ini bermacam-macam, yang secara high-level adalah dengan membuat sebuah sarana information exchange antar pengguna, professional dan media. Sarana ini akan selain akan mempererat hubungan kekomunitasan linux, juga dapat menarik user non-linux kedalam media ini. <p>\r\n\r\n\r\nYang paling mudah adalah dengan melakukan sharing knowledge center setiap portal kedalam portal lain, sehingga setiap pengunjung mendapatkan kemudahan untuk mencari informasi yang dibutuhkan. <p>\r\n\r\n\r\nMalah kalau sampai level interaktif antara knowledge center tersebut maka akan terjadi sebuah collaborative center, maka jaringan kolaborasi linux tersebut sudah terbentuk. <p>\r\n\r\n\r\nSaya pribadi mengatakan kalau jaringan kolaborasi linux ini terbentuk, maka secara tidak langsung team linux Indonesia akan semakin solid, dan diharapkan dalam waktu kedepan team linux Indonesia dapat menjadi expert linux global. <p>\r\n\r\n\r\nSaya harapkan artikel ini dapat memberikan inspirasi kepada pemakai linux, terutama pakar linux dan pebisnis linux (lembaga pendidikan, dan professional linux). Linux diharapkan bergeser dari sekedar development framework, menjadi business framework yang memiliki nilai strategis de-facto, yang akan mempengaruhi bagaimana bisnis beroperasi. <p>\r\n\r\n\r\nOpen Source itu bukan Open Standard. Diharapkan dengan implementasi kolaborasi linux yang diberi sentuhan experiental marketing, linux akan menjadi sebuah Open Standard. Kita tahu nilai open standard lebih tinggi daripada open source, nilai yang diakui dimiliki oleh Windows secara luas. <p>\r\n','F55DC8AEF743A4E9A509ED4AA5bo2-logo.jpg',NULL,'F501555A2ECD5AC',20030525122700,'F501555A2ECD5AC',20030525122700,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO blueoxygen_recipe VALUES ('F55DD96DA89BB4A8FB02016A79','Enterprise Corporate Portal, antara Ideologi dan Implementasi (I)','Bagian I, Repositioing Corporate Portal','Corporate portal mereduksi istilah solusi yang dijual oleh para penyedia konsultasi menjadi hanya sebuah nama yang ringkas corporate portal. Kata yang dapat diartikan sebuah solusi bisnis untuk korporasi dan mengadaptasikan teknologi internet. Definisi yang terlalu samar tetapi kompleks','Masih ingat sekitar tahun 1993, saat Internet baru popular di Indonesia dan masih sedikit ISP yang ada di Indonesia, kemudian dilanjutkan dengan jatuhnya NASDAQ, yang membuat banyak perusahaan dotcom hilang tidak jelas kemana rimbanya. Serta berubahnya business salah satu perusahaan B2B terbesar VerticalNet dari B2B portal directory menjadi sebuah solution provider. \r\n<p>\r\nSemua terasa cepat sekali, sampai kita tidak sadar bahwa SAP merubah brand companynya dan productnya menjadi MySAP, walaupun barang yang dijual sama-sama saja yaitu ERP yang ditambah dengan kemampuan personalisasi di MySAP Portalnya dan feature-feature tambahan seperti E-Procurement. Dilain pihak, competitornya Oracle dengan Oracle Application 11i yang bukan hanya memasukan CRM module kedalam paket ERP-nya, tetapi mulai memasukan Java kedalam sistemnya, walaupun corenya masih tetap compile binary Oracle Developer dan executable, bukan Java byte code.\r\n<p>\r\n\r\nSaya melihat terjadi perubahan trend integrasi yang mengkonsolidasikan semua informasi menjadi sebuah sistem yang terintergasi yang disebut corporate portal. Yang mana corporate portal ini akan membawa employee dan business partner kedalamnya. Corporate portal akan menjadi sebuah jembatan komunikasi internal dan ekternal dalam perusahaan. Corporate portal ini bukan hanya sekedar portal seperti halnya membuat website, tetapi sebuah kegiatan yang menghubungkan antara semua pihak dalam aktifitas bisnis sehingga terjadi sebuah kolaborasi informasi yang lebih baik.\r\n<p>\r\n\r\nSaya melihat segmen corporate portal sudah semakin melebar dan hebatnya semakin singkat, terutama dengan munculnya berlusin-lusin solusi dan banyaknya vendor yang memberikan solusi sejenis dengan kelebihan-kelebihan masih-masing yang terkadang tidak diperlukan oleh praktisi bisnis, serta munculkan kebingungan konsumen dan pemakai terhadap itu semua. Diharapkan artikel ini dapat membantu perusahaan untuk lebih mengerti definisi dari corporate portal, dan memberikan pengenalan yang jelas dan singkat terhadap definisi solusi corporate portal.\r\n<p>\r\n\r\nCorporate portal mereduksi istilah solusi yang dijual oleh para penyedia konsultasi menjadi hanya sebuah nama yang ringkas corporate portal. Kata yang dapat diartikan sebuah solusi bisnis untuk korporasi dan mengadaptasikan teknologi internet. Definisi yang terlalu samar tetapi kompleks.\r\n<p>\r\n\r\nSecara teori, corporate portal melakukan konsolidasi antara content dan business function, dan ini merupakan sebuah ide yang cemerlang, tetapi secara implementasi masih jarang ada perusahaan yang mengimplementasikan corporate portal tetapi portal dalam corporate. Harap dibedakan implementasi portal dalam corporate berbeda dengan implementasi corporate portal, implementasi portal dalam corporate adalah melakukan implementasi aplikasi berteknologi internet dalam corporate secara terpisah-pisah, dan semua aplikasi berjalan sendiri-sendiri, seperti email, calendar maupun business tools yang lain.\r\n<p>\r\n\r\nSekarang, realitas implementasi corporate portal dapat dikatakan berubah dan memungkinkan untuk diimplementasikan saat ini, apalagi setelah muncul konsep SSO (Single Sign On), sebuah cara yang membuat semua sistem bisa diakses dengan satu authentication security. Teknologi yang siap pakai saat ini adalah Microsoft Passport buatan Microsoft. Sayangnya kubu saingan Microsoft seperti Sun, Oracle dan rekan-rekannya baru membentuk bendera Liberty Alliance, dan implementasinya belum final, baru final spesifikasinya yang keluar.\r\n<p>\r\n\r\nJadi bisa dibayangkan, dalam sebuah perusahaan apalagi di Indonesia yang cenderung berbentuk group dan memiliki multiple LoB (line of business) yang tidak ada berhubungan, seperti pabrik tissue dengan sepatu, ataupun pabrik air minum dengan property. Dengan corporate portal, semua dapat berbicara dan informasi dapat disharing secara corporate level. Hal ini memungkinkan terjadinya sebuah sistem yang mengacu pada implementasi Knowledge Management System.\r\n<p>\r\n\r\nMemang perkembangan corporate portal membuat sedikit rancu, karena membuat banyak solusi-solusi yang biasa dijual para consultant menjadi generic, bisa dibayangkan sebuah sistem yang disebut corporate portal dapat menggabungkan semua kegiatan menjadi satu dan berbicara satu dengan yang lainnya, sesuatu yang terlihat mudah karena sama-sama berbentuk portal, tetapi sangat sulit secara desain, karena memasukan bukan hanya unsur bisnis, tetapi branding, standard procedure, day-to-day activities sampai enterprise reporting. \r\n<p>\r\n\r\nPergeseran implementasi aplikasi kedalam corporate membuat sebuah sistem yang lebih dinamis yang memungkinkan terjadinya full collaboration antara semua pihak, baik internal maupun eksternal. Malah kalau berbicara dengan performance management system,  memungkinkan dibangunnya sebuah inter-corporate performance management system. Perusahaan bebas membangun aplikasinya performance measurement-nya mengikuti konsep Balance Scorecard atau hanya performance appraisal sederhana. Bisa dibayangkan sebuah portal dengan kemampuan personalization yang baik dapat berhubungan langsung dengan customer, business partner, employee dan dapat memberikan sebuah appraisal di akhir bulan, serta diikuti bonus dan kenaikan gaji pegawai di akhir periode penilaian. \r\n<p>\r\n\r\nCorporate portal membuat implementasi human resource sering disebut dengan 360o performance apprisal system menjadi lebih mudah. 360o performance apprisal system memungkinkan terjadinya penilaian dan interaksi antar pegawai secara corporate mencakup peer review, upline and downline review, sehingga memberikan business value yang lebih baik dibandingkan dengan solusi menggunakan aplikasi konvensional yang tidak berteknologi internet.\r\n<p>\r\n\r\nSaat ini banyak software-software yang dapat dibangun menjadi sebuah portal untuk corporate tetapi bukan corporate portal. Mungkin cukup membingungkan, tetapi memang itulah kenyataannya. Yang mungkin untuk beberapa tahun kedepan implementasi corporate portal masih sangat sulit dan memerlukan extra effort yang tinggi, tetapi akan semakin mudah dikemudian hari. Sebagai contoh adalah  Oracle 9i series, Bea Weblogic, dan IBM Websphere series, mereka semua menyediakan infrastructure yang bagus untuk membangun corporate portal, tetapi tetap memerlukan extra effort yang tinggi untuk membangun aplikasi yang memberikan business value yang baik. Solusi yang istimewa untuk para teknokrat tetapi tidak untuk business.\r\n<p>\r\n\r\nPerusahaan software menyediakan tools yang banyak membangun corporate portal, dan dengan teknologi yang keren-keren mereka memasukan feature-feature seperti one-to-one personalization, syndication, groupware integration, sampai web services support. Saat ini, saya belum melihat software lain selain MySAP Portal yang terintegrasi langsung dengan sistem back office dan front office modulenya.\r\n<p>\r\n\r\nParadigma saya mengenai corporate portal ini memang mendekati sebuah ruang kerja untuk user yang mana sistem penyedia ruang kerja tersebut dimiliki oleh perusahaan. Karena menurut hasil analisa saya, sebuah corporate portal itu memasukan unsur marketing branding, employee workspace, consolidated information, activity interaction, single point access, dan policy and procedures. Sesuatu yang tidak ada di MySAP, karena kompleksitas sistemnya yang tidak memungkinkan kita memasukan brand promotion kedalam portalnya, kecuali kita memang memisahnya dan membangun sendiri, dan memang tidak dirancang untuk itu.\r\n<p>\r\n\r\nBila manajemen perusahaan mengerti bagaimana sebuah corporate portal bekerja (dan bila paradigma saya mengenai corporate portal disetujui), maka perusahaan akan lebih jelas dan mengerti jenis dan tipe corporate portal yang harus dibangun. Secara tidak langsung perusahaan akan mengerti sebuah benefit yang muncul dan tidak ternilai. Yang tentu saja, manajemen akan lebih selektif menilai dan tidak terbawa oleh perusahaan-perusahaan yang menjual software yang mengatakan solusinya adalah corporate portal, yang nantinya malah memberikan ekstra effort untuk integrasi. Implementasi itu sulit, tetapi integrasi lebih sulit lagi. Tips saya, jangan terlalu percaya dengan orang marketing yang jualan product, sebab corporate portal bukan sekedar portal semata, banyak hal yang harus dibicatakan untuk terutama dalam mendesain dan membuat content dan job-related task.\r\n<p>\r\n\r\nCorporate portal dalam pemerintahaan disebut dengan e-Government, yang mana saat ini sering diartikan membangun sebuah portal. Implementasi e-Government mencakup hal yang lebih luas bukan sekedar dari portal semata, tetapi meliputi content dan business process internal dan external, hal yang terdapat didalam implementasi corporate portal.\r\n<p>\r\n\r\nBanyak hal yang harus dimasukan dalam implementasi e-Government, yang saya lihat bukan secara high level tetapi secara teknologi juga harus dikaji, yaitu meliputi accounting, core business application (seperti penyediaan KTP, sarana dan prasarana, dll), juga HRMS baik untuk pegawai dalam kepemerintahan maupun penduduk sekitarnya, dll.\r\n<p>\r\n\r\nJadi yang sering diucapkan Menteri Informasi kita adalah betul, dan hebatnya ternyata yang perlu e-Government bukan hanya pemerintah tetapi perusahaan. Jadi mengapa tidak terjadi sinergi saja antara pemerintah dengan perusahaan membangun sebuah sistem e-Government dan Corporate Portal, wong secara teknologi barangnya sama, tetapi secara implementasi brand-nya saja yang lain, satu e-Government dan satu Corporate Portal.\r\n<p>\r\n\r\nTerus terang, banyak informasi yang disebut content yang perlu dibagi antara pemerintah dengan perusahaan, dan ada kegiatan business yang perlu disharing antara pemerintah dengan perusahaan contohnya bea cukai, pajak. Kegiatan yang disebut content syndication. Menarik bukan. Sesuatu yang idealis apalagi di environment business Indonesia yang bukan gagap teknologi.\r\n<p>\r\n\r\nCoba lah memulai desain sistem dalam perusahaan Anda mulai dari user management dan desainlah ruang kerja standar untuk aplikasi corporate portal perusahaan Anda. Buatlah itu semua menjadi pondasi aplikasi bisnis anda yang sesuai dengan aktifitas bisnis perusahaan, kemudian barulah cari software yang sesuai dan masuk dalam budget perusahaan. Niscaya, perusahaan tidak perlu mengeluarkan solusi yang ber puluh ribu US dollar, malah mungkin solusi yang berpuluh ribu US dollar itu bisa didapat dengan gratis, siapa tahu! (ft)\r\n','F55DDAEF057D4B46551FE728B5bo2-logo.jpg',NULL,'F501555A2ECD5AC',20030525124657,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO blueoxygen_recipe VALUES ('F5F8EEC1C0D72BB80BDD90C57C','Start Tomcat and Apache at Boot Time','','Create a bash script for auto run Tomcat in Linux/Unix','     <p>Make sure there is a valid user \"tomcat\" or somesuch. You will start Tomcat as \r\n    user \"tomcat\" to avoid running it as root. The Apache server is started\r\n    as root because it uses port 80 (lower than 1024) but it spawns processes\r\n    that run as \"nobody\".\r\n    \r\n    Save the following scripts as <code>/etc/init.d/tomcat</code> and \r\n    <code>/etc/init/apache</code>. They will automatically be read and run at boot time.\r\n    Make a link to it from <code>/etc/rc5.d</code> such as:</p>\r\n<pre>\r\ncd /etc/rc5.d\r\nsudo ln -s ../init.d/tomcat S71tomcat\r\nsudo ln -s ../init.d/apache S72apache\r\n\r\n############################  /etc/init.d/tomcat  ########################\r\n#!/bin/bash\r\n#\r\n# apache        \r\n#\r\n# chkconfig: \r\n# description: 	Start up the Tomcat servlet engine.\r\n\r\n# Source function library.\r\n. /etc/init.d/functions\r\n\r\n\r\nRETVAL=$?\r\nTOMCATHOME=\"/usr/apps/apache/tomcat/jakarta-tomcat-4.0.4\"\r\n\r\ncase \"$1\" in\r\n start)\r\n        if [ -f $TOMCATHOME/bin/startup.sh ];\r\n          then\r\n	    echo $\"Starting Tomcat\"\r\n            /bin/su noone $TOMCATHOME/bin/startup.sh\r\n        fi\r\n	;;\r\n stop)\r\n        if [ -f $TOMCATHOME/bin/shutdown.sh ];\r\n          then\r\n	    echo $\"Stopping Tomcat\"\r\n            /bin/su noone $TOMCATHOME/bin/shutdown.sh\r\n        fi\r\n 	;;\r\n *)\r\n 	echo $\"Usage: $0 {start|stop}\"\r\n	exit 1\r\n	;;\r\nesac\r\n\r\nexit $RETVAL\r\n######################-  end of /etc/init.d/tomcat  ######################\r\n\r\n\r\n\r\n############################  /etc/init.d/apache  ########################\r\n#!/bin/bash\r\n#\r\n# apache        \r\n#\r\n# chkconfig: \r\n# description: 	Start up the Apache web server.\r\n\r\n# Source function library.\r\n. /etc/init.d/functions\r\n\r\n\r\nRETVAL=$?\r\nAPACHEHOME=\"/usr/apps/apache/apache\"\r\n\r\ncase \"$1\" in\r\n start)\r\n	if [ -f $APACHEHOME/bin/apachectl ]; then\r\n	    echo $\"Starting Apache\"\r\n            $APACHEHOME/bin/apachectl start\r\n        fi\r\n	;;\r\n stop)\r\n	if [ -f $APACHEHOME/bin/apachectl ]; then\r\n	    echo $\"Stopping Apache\"\r\n            $APACHEHOME/bin/apachectl stop\r\n        fi\r\n 	;;\r\n *)\r\n 	echo $\"Usage: $0 {start|stop}\"\r\n	exit 1\r\n	;;\r\nesac\r\n\r\nexit $RETVAL\r\n######################-  end of /etc/init.d/apache  ######################\r\n</pre>\r\n',NULL,NULL,'F501555A2ECD5AC',20030624153242,'F501555A2ECD5AC',20030624153242,'0','ic','F4DD64134EC050E3D0A256EA0D');

--
-- Table structure for table `blueoxygen_review`
--

CREATE TABLE blueoxygen_review (
  id varchar(28) NOT NULL default '',
  headline varchar(128) default NULL,
  subheadline varchar(128) default NULL,
  abstract text,
  body text,
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `blueoxygen_review`
--

INSERT INTO blueoxygen_review VALUES ('F5590484E63CEB089DFF061677','OBOX 2.0 Enterprise','Java Open Source Distribution','Try Java Open Source Distribution that include 100+ Java Open Source Project. Most of them are release version. Include JBoss projects, Apache projects.','Tired in finding Java Open Source in you project. <a href=\"http://www.ejbsolutions.com\">EJB Solution </a> with their product: OBOX will help you to install all the important code, such as DocBoox, Struts, Castor, etc.<p>\r\n\r\nMost of the component is the most popular project in the open source community, but you need to integrate all the component by your self. This is the most difficult step. <p>\r\n\r\nThe OBOX come in 2 version the Community smiliar with JBoss Distribution but have several open source, but the Enterprise edition come with a lot of stuff. \r\n\r\n<p>Even the update still manual, this is the next step of distribution of open source for e-business, after Linux wave of course.','F5590BF833CDBF0557B5FCD469obox.jpg',NULL,'F501555A2ECD5AC',20030524142224,'F501555A2ECD5AC',20030524142224,'0','ic','F4DD64134EC050E3D0A256EA0D');

--
-- Table structure for table `businessPartner`
--

CREATE TABLE businessPartner (
  id varchar(28) NOT NULL default '',
  address varchar(255) default NULL,
  city varchar(255) default NULL,
  country varchar(255) default NULL,
  description varchar(255) default NULL,
  email varchar(255) default NULL,
  fax varchar(255) default NULL,
  name varchar(255) default NULL,
  officePhone varchar(255) default NULL,
  otherEmail varchar(255) default NULL,
  zipCode varchar(255) default NULL,
  create_by varchar(28) default NULL,
  update_by varchar(28) default NULL,
  create_date date default NULL,
  update_date date default NULL,
  active_flag int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `businessPartner`
--

INSERT INTO businessPartner VALUES ('ff808081055bcd7701055bce4e69','','aa','aa','','aaa','4874','hai','69872','aa','45698','','1','2005-07-28','2005-07-29',1);
INSERT INTO businessPartner VALUES ('ff80808105617a5b0105617ba9ef','','','','','','','ada(Not Active)','','','45687','1','1','2005-07-29','2005-07-29',0);
INSERT INTO businessPartner VALUES ('ff8080810561d256010561d8a6d2','','','','','','021-56565','hehehe(Not Active)','789456','','47894','1','1','2005-07-29','2005-07-29',0);
INSERT INTO businessPartner VALUES ('ff8080810561d256010561da3ca7','','','','','','','sss','','','78956','1','','2005-07-29','2005-07-29',1);
INSERT INTO businessPartner VALUES ('ff8080810561de6e010561df2ea6','','','','','','','okokoko','','','10101','1','','2005-07-29','2005-07-29',1);

--
-- Table structure for table `category`
--

CREATE TABLE category (
  id varchar(28) NOT NULL default '',
  descriptor_id varchar(28) default NULL,
  code char(3) NOT NULL default '',
  iparentcode varchar(28) default NULL,
  url_category_image varchar(255) default NULL,
  description varchar(125) NOT NULL default '',
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY code (code)
) TYPE=MyISAM;

--
-- Dumping data for table `category`
--

INSERT INTO category VALUES ('EDDC8632E4DA6CBEBB1921C5AC','23','r','',NULL,'Review',1,'1',20030321144330,'F162B448063A847319E641EF7D',20030321144330,'0','ic','F199E755B97B662FC248CAC80');
INSERT INTO category VALUES ('EDDC86699E47C532B6C40E92A2','23','pr','',NULL,'Press Release',1,'1',20020517104416,NULL,00000000000000,'0','ic',NULL);
INSERT INTO category VALUES ('EE182D82BB20DDEA3806E4EFB0','25','ad1','',NULL,'Client2',1,'1',20020529004559,'1',20020529004559,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO category VALUES ('EE184A242DC24BFA865DD56A2A','25','c1','',NULL,'Cat1',1,'1',20020529011556,'1',20020529011556,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO category VALUES ('EE185F665690BD40067091A8EF','25','ts','',NULL,'Test',1,'1',20020529013901,'1',20020529013901,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO category VALUES ('F2E9228725D66C4CA5D89FA2A0','E7A77F657568CBF5B670623DCD','fq','',NULL,'Technology',1,'1',20030123104437,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO category VALUES ('F33B593D56FB6B75C88D359875','F186E0333C668AE9C8CFD62426','T&T','',NULL,'Tips & Trick categori1',1,'F162B448063A847',20030208095541,'F162B448063A847',20030208095541,'0','ic','F199E755B97B662FC248CAC80');
INSERT INTO category VALUES ('F3A3C194E7E95564790B11AE0B','F38E7A30DCFFF83E486D127CCE','002','',NULL,'Support',1,'F162B448063A847319E641EF7D',20030228170307,NULL,00000000000000,'0','ic','F199E755B97B662FC248CAC80');
INSERT INTO category VALUES ('F40F8465F0E9A68A7AFBF94C10','EF76BA4ED5D8F2A21B1933A750','12','',NULL,'aa',1,'F162B448063A847319E641EF7D',20030321143957,NULL,00000000000000,'0','ic','F199E755B97B662FC248CAC80');

--
-- Table structure for table `client_survey`
--

CREATE TABLE client_survey (
  id varchar(28) NOT NULL default '',
  company_name varchar(255) NOT NULL default '',
  contact_person varchar(255) NOT NULL default '',
  date varchar(28) default NULL,
  location varchar(255) default NULL,
  question_1 text,
  question_2 text,
  question_3 text,
  question_4 text,
  question_5 text,
  question_6 text,
  question_7 text,
  question_8 text,
  question_9 text,
  question_10 text,
  question_11 text,
  question_12 text,
  question_13 text,
  question_14 text,
  question_15 text,
  question_16 text,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `client_survey`
--

INSERT INTO client_survey VALUES ('EFE608521A20804337271231A8','intercitra','dedeng',NULL,NULL,'yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20020826170808,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE61879EE944BAE3A83CF6BDE','null','olivia',NULL,NULL,'yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20020826172547,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE63388E22B77E24A3AF0A3C3','intercitra','olivia',NULL,NULL,'yes','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null',NULL,20020826175520,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE63D607284D7F648904A28FB','intercitra','olivia',NULL,NULL,'yes','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null',NULL,20020826180605,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE63E2BC87AB409F49CF408C','Intercitra Prima','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020826180657,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE63EFFC4E7042A4E377E8ABB','Intercitra Prima','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020826180752,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE6414382E64B5F583332E182','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020826181020,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE641FA27BE35E95716973A09','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020826181107,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE642139E9AF9C97B0C73C0AC','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020826181113,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE64222727671D530D2D7FF25','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020826181117,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE6435CB01F04EE712272286E','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020826181238,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFE6438A565161AE51C0CAC07B','Intercitra','Frans',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020826181249,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFEA32E57821F806A82D6CDB3B','','',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020827123307,NULL,00000000000000,'0','ic',NULL);
INSERT INTO client_survey VALUES ('EFEA4ACB40554562D2A1133EFA','Intercitra','Prima In',NULL,NULL,'','','null','','','','','','null','null','null','null','null','null','null','null',NULL,20020827125913,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `collection`
--

CREATE TABLE collection (
  id varchar(28) NOT NULL default '',
  site_id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  description varchar(255) NOT NULL default '',
  skin_id varchar(28) NOT NULL default '',
  status tinyint(1) NOT NULL default '0',
  active_flag tinyint(1) NOT NULL default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `collection`
--

INSERT INTO collection VALUES ('EF58A8B439BA814A7D93B240EA','ED2E4202F2AE0340726C67A877','latest_news','Latest News','EF3DB199C4997C0D4CF66C2FE3',0,1,NULL,20020804224453,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF57BEBF18DC03624A9537EE53','ED2E4202F2AE0340726C67A877','open_job','Open Job','EF3DD45212976F3861F684F91C',0,1,NULL,20020804224349,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF580C9F50774CC4BBA9C305DC','ED2E4202F2AE0340726C67A877','solution_collection','Solution Collection','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,20020804223653,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF53B0FCA7D4F4CE80369A3BC0','ED2E4202F2AE0340726C67A877','press_release_collection','Press Release Collection','EF3DD27718347862F68D50A66',0,1,NULL,20020804223821,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EE48E5532353CE62EE4F9C547E','EE185CE0B82B41C1724F284685','News Update','News Update Collection','EED8A71A292BDD79AE8D438AB3',0,1,NULL,20020708090704,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EE7C699016F886FEA906FA5DAC','EDDCA9DCE41A14EE5D5ABE7E3C','solution_collection','Solution Collection','EEEE887BFAA2FB39A07504A03A',1,1,NULL,20030127170905,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EE7C7412CB68D123F4F160B4B8','EDDCA9DCE41A14EE5D5ABE7E3C','cross_selling_solution','Cross Selling Solution','EED8A71A292BDD79AE8D438AB3',1,1,NULL,20030127170152,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF575A3BB6F9D65E1376C562F9','ED2E4202F2AE0340726C67A877','cross_selling','Cross Selling','EF3DD1C31AAA5A6C655E9DE458',0,1,NULL,20020805070045,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF1EEB444F1CC7924207265864','EDDCA9DCE41A14EE5D5ABE7E3C','open_job_collection','Open Job Collection','EF1EEC2113DFA19FB81258C38A',1,1,NULL,20030127170750,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EE7CCBBE336CC05ECCC3DEDB04','EDDCA9DCE41A14EE5D5ABE7E3C','press_release_front_page','Press Release','EEED8E57002048A2E9071DAF76',1,1,NULL,20030127170826,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EE7CCC6E6D6BEAA209410E58D5','EDDCA9DCE41A14EE5D5ABE7E3C','news_collection','News Collection','EEED8F61ACA8FD143C4A127AE',1,1,NULL,20030127170731,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF1EB25BD481435B56271A67D2','EDDCA9DCE41A14EE5D5ABE7E3C','solution_main_page','Solution Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,20030127170924,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF58D8599C4F377913FD8D1DB0','ED2E4202F2AE0340726C67A877','product_service','Product Service','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,20020804223751,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF535BF707DC20CA4F0222EAB2','ED2E4202F2AE0340726C67A877','news_collection','News Collection','EF3DB199C4997C0D4CF66C2FE3',0,1,NULL,20020804224433,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF5902B02CC7C4E3E55AE7B0AD','ED2E4202F2AE0340726C67A877','cross_line_solution','Cross Line Solution','EF3DD11C4B8AF9FF295F58BA9E',0,1,NULL,20020804224517,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF5C9801CA3FF9F3D99A20F1CD','ED2E4202F2AE0340726C67A877','press_release','Press Release','EF3DD27718347862F68D50A66',0,1,NULL,20020804223839,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF5CB147C39DE591879212AE26','ED2E4202F2AE0340726C67A877','our_solutions','Our Solutions','EF3DD1C31AAA5A6C655E9DE458',0,1,NULL,20020804224414,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF61F69872E80B522B3F7D1698','EDDCAA0575D694D2560CC2511F','cross_selling','Cross Selling','EF87930075DA19F24E509D71A0',0,1,NULL,20020808085728,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF62010E6C4C37EEA867611132','EDDCAA0575D694D2560CC2511F','press_release','Press Release','EF878F2718A11A7D23D6EBF386',0,1,NULL,20020808085818,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF62053D7884A7B7C28B461E87','EDDCAA0575D694D2560CC2511F','latest_news','Latest News','EF878EBEE25A571043B9E2D699',0,1,NULL,20020808085740,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF620774DA99A708D10B48F528','EDDCAA0575D694D2560CC2511F','our_solutions','Our Solutions','EF87930075DA19F24E509D71A0',0,1,NULL,20020808085807,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF6293FFACC7928F2CCCCA37B1','EF62687CC1170D25FC73E0051C','news_main_collection','News Main Collection','EF61DB0ABCB2C0383ED89CF3BE',0,1,NULL,20020801043132,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF62A08AAB45C4D0CC1FC6CE06','EF62687CC1170D25FC73E0051C','press_release_main_collection','Press Release Main Collection','EF61DC5B0983D882183BF23C11',0,1,NULL,20020801044854,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF62ABFFD639CEDC6F503B678','EF62687CC1170D25FC73E0051C','product_service_main_collection','Product Service Main Collection','EF61DBC92A5A01266BD3D0D049',0,1,NULL,20020801045808,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF633A256C589D6A8ED8B8A941','EF62687CC1170D25FC73E0051C','press_release_main','Press Release Main','EF61DC5B0983D882183BF23C11',0,1,NULL,20020801073308,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF668717A39DDB0F1D4DF9F526','EF62687CC1170D25FC73E0051C','cross_selling','Cross Selling','EF61DBC92A5A01266BD3D0D049',0,1,NULL,20020801225547,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF66892594573B88F1A1CEC0F3','EF62687CC1170D25FC73E0051C','our_solution_collection','Our Solution Collection','EF61DBC92A5A01266BD3D0D049',0,1,NULL,20020801225827,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF6704F9D5930E81F3D8232AA0','EF62687CC1170D25FC73E0051C','latest_news_collections','Latest News Collections','EF61DAA20FF6FC31E28AAFACDB',0,1,NULL,20020802011347,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF670C78C784ECA3E832D49F41','EF62687CC1170D25FC73E0051C','press_release_collection','Press Release Collection','EF61DC5B0983D882183BF23C11',0,1,NULL,20020802012130,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF76DEAB4E65F944FC318B10F2','ED2E4202F2AE0340726C67A877','about_us','About Us','EF3DD04583B1E0BF80BF38F7B4',0,1,NULL,20020805030514,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF76F0C602372C01717F4AD69B','EF62687CC1170D25FC73E0051C','about_us','About Us','EF61DD5C4D4F996AE3D9853CD8',0,1,NULL,20020805032458,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF770FC06E8EF90EA0E86B7EF4','EE1B28DE85CED7258C4D46D2E2','about_us','About Us','EF7706DCFA2042BE91940B9029',0,1,NULL,20020805035853,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF771865DE82B9AE726ACF15BC','EE1B28DE85CED7258C4D46D2E2','cross_selling','Cross Selling','EF7709E076918224E2C5B07B7A',0,1,NULL,20020805040818,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF774C7D03E84F326EDC640E5F','EE1B28DE85CED7258C4D46D2E2','our_solutions','Our Solutions','EF7709E076918224E2C5B07B7A',0,1,NULL,20020805073433,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF775DC852350BB4108EF6BD48','EE1B28DE85CED7258C4D46D2E2','our_solutions_main','Our Solutions Main','EF7709E076918224E2C5B07B7A',0,1,NULL,20020805052504,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF776DA97229A12BB7901E9EEE','EE1B28DE85CED7258C4D46D2E2','press_release','Press Release','EF770A8FA2B9C566FEB2D07D71',0,1,NULL,20020805073453,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF776F524038C0A0701BD2751C','EE1B28DE85CED7258C4D46D2E2','press_release_main','Press Release Main','EF770A8FA2B9C566FEB2D07D71',0,1,NULL,20020805054318,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF7B00DDED2FDABD09CD662C65','EE1B28DE85CED7258C4D46D2E2','product_service_main','Product Service Main','EF7709E076918224E2C5B07B7A',0,1,NULL,20020805222120,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF7B1369BAAA94553E83D3C23E','EE1B28DE85CED7258C4D46D2E2','latest_news','Latest News','EF7708F5A92C7708E431064FF',0,1,NULL,20020805224134,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF7B157A3BBA63A103A7417FEA','EE1B28DE85CED7258C4D46D2E2','latest_news_main','Latest News Main','EF7708F5A92C7708E431064FF',0,1,NULL,20020805224347,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF877C16F3E59D308B85284D46','EDDCAA0575D694D2560CC2511F','latest_news_main','Latest News Main','EF878EBEE25A571043B9E2D699',0,1,NULL,20020808085753,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF877DD13084F34A4E13E123C7','EDDCAA0575D694D2560CC2511F','press_release_main','Press Release Main','EF878F2718A11A7D23D6EBF386',0,1,NULL,20020808085830,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF87C834C829B55008B5659662','EDDCAA0575D694D2560CC2511F','our_solutions_main1','Our Solutions Main1','EF87930075DA19F24E509D71A0',0,1,NULL,20020808095429,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF87C954124BE5827E8C5ED93D','EDDCAA0575D694D2560CC2511F','our_solutions_main2','Our Solutions Main2','EF87930075DA19F24E509D71A0',0,1,NULL,20020808095541,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF87E5E89B29E72B13DA8407BA','EDDCAA0575D694D2560CC2511F','about_us','About Us','EF878D94EA13DF41D77ECEEA3F',0,1,NULL,20020808102641,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF8E3B3AB9F109C7BF163C0AD7','EF8E260F5EE7A2E8ECE6F2F3A3','our_solutions','Our Solutions','EF8E2910D6DC72DE5A739B7323',0,1,NULL,20020809155744,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF8E3C4ADFBDFB74192B71CB43','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news','Latest News','EF8E2AA141B4B44CED456914C8',0,1,NULL,20020809155849,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF8E3D1D196B477841A58FC9A0','EF8E260F5EE7A2E8ECE6F2F3A3','press_release','Press Release','EF8E29F7DF9BD41DE59E1B3273',0,1,NULL,20020809155939,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF8E3EDA4FE70036E202E26581','EF8E260F5EE7A2E8ECE6F2F3A3','open_job','Open Job','EF8E2B6302127EB28DF0796D9',0,1,NULL,20020809160136,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF8E3FA2E9F723DB325F6A7D02','EF8E260F5EE7A2E8ECE6F2F3A3','about_us','About Us','EF8E28BDB57036C93F24B9B14E',0,1,NULL,20020809160225,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF8E42301D17943E5955D9AA44','EF8E260F5EE7A2E8ECE6F2F3A3','press_release_main','Press Release Main','EF8E2A49DD1A4B7CB00B8D1A88',0,1,NULL,20020809160517,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF8E42AF4ADA1F31E1F62D5525','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news_main','Latest News Main','EF8E2B0BB26649B06A069D8519',0,1,NULL,20020809160552,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EF8E433D0E138F733F2D166C00','EF8E260F5EE7A2E8ECE6F2F3A3','open_jobs_main','Open Jobs Main','EF8E2B6302127EB28DF0796D9',0,1,NULL,20020809160629,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('EFABD73B9F5C8A2AFC1BC06327','EDDCA9DCE41A14EE5D5ABE7E3C','about_us','About Us','EEED8EE4881FA530706324955E',1,1,NULL,20030127170132,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F0143397173EB2898E7BD1DA02','EDDCA9DCE41A14EE5D5ABE7E3C','Frans','','EEED8F61ACA8FD143C4A127AE',1,1,NULL,20020904161850,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F01436B63F216AAAB48195159C','EDDCA9DCE41A14EE5D5ABE7E3C','tulalit','','EEED906F3DD8D8C52409FB4D9F',0,1,NULL,20020904162147,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F07B56FBB0DE46F4CF2AE5698E','F07B23B53C6185EACC86EFE1D8','press_release_main','Press Release in Main Page','F07B38B571BAEF43E24F0ABE03',1,1,NULL,20020924170342,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F036DC14DC945A100E1E4E301C','ED2E4202F2AE0340726C67A877','Testing','','EF3DB199C4997C0D4CF66C2FE3',1,1,NULL,20020911095011,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F07B581DE9BA007DB73EB1BEBC','F07B23B53C6185EACC86EFE1D8','review_main','Review in Main Page','F07B3CF003DAFE9F27A30978A7',1,1,NULL,20020925104210,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F302DC45188ECE996BB4E65A63','F185BD3FDC5CC7989A3CED51A1','cross_selling','Cross Selling Collection','F302D4FE6D537C49721004181F',1,1,NULL,20030325125913,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F07B796043A756D9E97A3FEFF','F07B23B53C6185EACC86EFE1D8','cross_selling','Cross Selling','F07B3AFC312B9E0CA737CE8886',1,1,NULL,20020924173552,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F083F1F7C33EA7F3A9A59BE10A','F07B23B53C6185EACC86EFE1D8','recipe','Recipe','F07B3801CF22E2E91A2A70AE4D',1,1,NULL,20020926090426,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F083F929ABA341797CD38BBE7D','F07B23B53C6185EACC86EFE1D8','project','Project','F07B3AFC312B9E0CA737CE8886',1,1,NULL,20020926091244,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F09DE1952B7D669AD21E500D72','F07B23B53C6185EACC86EFE1D8','press_release','Press Release','F09DDFE362D841F17A30993ED',1,1,NULL,20021001095730,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F0842659151A5462F92C16E9D1','F07B23B53C6185EACC86EFE1D8','review','Review','F07B3CA6AAD39BFD520EFFEFC0',1,1,NULL,20020926100152,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F08432B3F4174A089CD81F3616','F07B23B53C6185EACC86EFE1D8','resource','Resource','F07B3A364057068AFB1D09B24B',1,1,NULL,20020926101501,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F302DD80386E12F543A34F650','F185BD3FDC5CC7989A3CED51A1','latest_news_main_page','Latest News Main Page Collection','F302D4FE6D537C49721004181F',1,1,NULL,20030128103951,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F302DF2D5C14DB19C7398591BC','F185BD3FDC5CC7989A3CED51A1','services_main_page','Product & Services Main Page Collection','F302D4FE6D537C49721004181F',1,1,NULL,20030128104143,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F3086EE25AC268B9D89977E44B','F185BD3FDC5CC7989A3CED51A1','press_release','Press Release','F308699BD428889A5632750137',1,1,NULL,20030129123629,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F30D61195A51759F754A534603','F185BD3FDC5CC7989A3CED51A1','press_release_archive','Press Release Archive Collection','F30869E6C74A56DDF243778A81',1,1,NULL,20030130113943,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F30D6218D92D6172A83CF70347','F185BD3FDC5CC7989A3CED51A1','news','News Collection','F3086B7E11837F450B77703C40',1,1,NULL,20030319171048,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F30D62AFC966604EE6B63D5EA','F185BD3FDC5CC7989A3CED51A1','news_archive','News Archive Collection','F3086C6E2EBC786E9D341C958',1,1,NULL,20030130114115,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F30D638087912EB63CFF2413C4','F185BD3FDC5CC7989A3CED51A1','product_service','Product & Service Collection','F30D50F630C4B3D981A66A4BD4',1,1,NULL,20030130114228,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F30D64A967EC8A114463B155EC','F185BD3FDC5CC7989A3CED51A1','company_structure','Company Structure (About Us)','F30D4F8ED066660E9734DEF2B',0,1,NULL,20030131133910,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F30D7A35F127C9F525D69A4BCE','F185BD3FDC5CC7989A3CED51A1','fact_figure','Fact & Figure Collection','F308692D6AEE5FC7D30CACD99C',0,1,NULL,20030130120651,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F312B7926E1BA7B9EEAAB39558','F185BD3FDC5CC7989A3CED51A1','dewan_komisaris','Dewan Komisaris','F30D4CB7B4E33CC6D6DD8CE981',0,1,NULL,20030131123149,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F312B82623C31410C34434A7B3','F185BD3FDC5CC7989A3CED51A1','dewan_direksi','Dewan Direksi','F30D4CB7B4E33CC6D6DD8CE981',0,1,NULL,20030131123221,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F31330D19DFD3F3245616F57B0','F185BD3FDC5CC7989A3CED51A1','company_lob_horticulture','Line of Business Horticulture','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,20030320131627,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F3133249977BD2C0636E037D23','F185BD3FDC5CC7989A3CED51A1','company_lob_plantation','Line of Business Plantation','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,20030320131538,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F3133322C1D43F2988CD387324','F185BD3FDC5CC7989A3CED51A1','company_lob_mining','Line of Business Mining','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,20030320131559,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F31333E67F5209AE9B31726965','F185BD3FDC5CC7989A3CED51A1','company_lob_others','Line of Business Others','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,20030320131523,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F3FF22FA60FDC1B3F09C2A27AF','F185BD3FDC5CC7989A3CED51A1','sitemap','Site Map Collection','F30424474044603B72B3C3BA3',0,1,NULL,20030318101949,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F3FF58FF3B49C217BA449F6849','F185BD3FDC5CC7989A3CED51A1','makin_subsidiary','Makin & Subsidiary Page Collection','F30D5022D3E7ABE3498CA22B8A',1,1,NULL,20030318111955,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F40025C7BB2B1555515A1FF83F','F185BD3FDC5CC7989A3CED51A1','head_office','Head Office Collection','F3086DE1A3F88F17DAA77F5EA8',0,1,NULL,20030318161359,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4006A4702C02EC8B03504B154','F185BD3FDC5CC7989A3CED51A1','branch_office','Branch Office Collection','F3086DE1A3F88F17DAA77F5EA8',0,1,NULL,20030318161655,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F40A12670642457146FE92A5BF','F185BD3FDC5CC7989A3CED51A1','company_lob_logging','Line Of Business Logging','F30D4DCBF2ED7BDB30932694B1',0,1,NULL,20030320133557,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D332FCE8E1713BFFA339672F','F4D30718756B8401E43FD2AAE6','cross_selling_solution','Cross Selling','EEED8E57002048A2E9071DAF76',1,1,NULL,20030429103214,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D345059E58F35226610428E3','F4D30718756B8401E43FD2AAE6','solution_main_page','Solution In Main Page Collection','EEED8E57002048A2E9071DAF76',1,1,NULL,20030428165121,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D34862CECEC33E7A3DFBF2F6','F4D30718756B8401E43FD2AAE6','news_collection','News Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,20030428150001,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D34917CF2D95241724082D6E','F4D30718756B8401E43FD2AAE6','press_release_main_page','Press Release Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,20030429103551,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D34AE05BA664870CE107F5C4','F4D30718756B8401E43FD2AAE6','open_job_collection','Open Job Collection in Main Page','EEED8E57002048A2E9071DAF76',1,1,NULL,20030428150245,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D3E9C42018508CFBD44C1F7F','F4D30718756B8401E43FD2AAE6','solution_collection','Solution Collection','EEED906F3DD8D8C52409FB4D9F',1,1,NULL,20030428175613,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D77D9A595E11607831E05333','F4D30718756B8401E43FD2AAE6','press_release_collection','Press Release Collection','EEED91195E6BDC9CF09ECB2DF3',1,1,NULL,20030429104216,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D7872202EEF42DB1BEE35CAD','F4D30718756B8401E43FD2AAE6','news_collection','News Collection','EEED8F61ACA8FD143C4A127AE',1,1,NULL,20030429104707,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4D7908E18A0B591AD5B35C429','F4D30718756B8401E43FD2AAE6','about_us','About Us Collection','EEED8EE4881FA530706324955E',1,1,NULL,20030429105750,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4DD67C9F9D543C3720D645FA0','F4DD64134EC050E3D0A256EA0D','cross_selling','Cross Selling Collection','F07B379B79C9CD7743C23D2596',0,1,NULL,20030902115708,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4DD6885A1EF5A5916B28F0DE0','F4DD64134EC050E3D0A256EA0D','review_main','Review Main Collection','F07B379B79C9CD7743C23D2596',1,1,NULL,20030430141151,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E2D64CF8DDBED197CF1D4EC7','F4DD64134EC050E3D0A256EA0D','press_release','Press Release Collection','F09DDFE362D841F17A30993ED',1,1,NULL,20030501152910,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E2F93A23C96AF5243A648900','F4DD64134EC050E3D0A256EA0D','press_release_main','Press Release In Main Page Collection','F07B379B79C9CD7743C23D2596',1,1,NULL,20030501160727,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E30221D6345730817DF8B10B','F4DD64134EC050E3D0A256EA0D','project','Project Collection (News)','F07B3AFC312B9E0CA737CE8886',1,1,NULL,20030501161708,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E30766D4F6B10B77D890862C','F4DD64134EC050E3D0A256EA0D','recipe','Recipe Collection (news)','F07B3801CF22E2E91A2A70AE4D',1,1,NULL,20030501162254,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E30E4255F0C0ECA9CF12C58D','F4DD64134EC050E3D0A256EA0D','resource','Resource Collection (weblink)','F07B3A364057068AFB1D09B24B',1,1,NULL,20030501163049,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E315146AC0D62352296671C6','F4DD64134EC050E3D0A256EA0D','review','Review Collection','F07B3CA6AAD39BFD520EFFEFC0',1,1,NULL,20030501163800,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E8349537A24F34C2BADB1136','F4E6A635A8AC141BAE7F98504','press_release_main','Press Release in Main Page Collection','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,20030502163030,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E8355C0D223308A5E405F8C3','F4E6A635A8AC141BAE7F98504','latest_news_main','Latest News in Main Page Collection','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,20030502163118,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E8361B7E88B3E21FDEC4E502','F4E6A635A8AC141BAE7F98504','our_solutions_main','Our Solution in Main Page','EF8E277F34F1C4DE8229CFC10D',1,1,NULL,20030502163203,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E83EF7F42ADCFA4C089A7267','F4E6A635A8AC141BAE7F98504','latest_news','Latest News Collection','EF8E2AA141B4B44CED456914C8',1,1,NULL,20030502164317,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E841228EF31C223EC4C3C44','F4E6A635A8AC141BAE7F98504','our_solutions','Our Solutions Collection','EF8E2910D6DC72DE5A739B7323',1,1,NULL,20030502164427,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E84237BF3A0CE289DCA92CD4','F4E6A635A8AC141BAE7F98504','press_release','Press Release Collection','EF8E29F7DF9BD41DE59E1B3273',1,1,NULL,20030502164724,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F4E85130966839B75E0A0C8C90','F4E6A635A8AC141BAE7F98504','about_us','About Us Collection','EF8E285DE8A1E858D8BCC33A12',1,1,NULL,20030502170135,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F5015CD1D2ED0D963111F06942','F4DD64134EC050E3D0A256EA0D','recipe_main','Recipe in Main Page','F07B379B79C9CD7743C23D2596',1,1,NULL,20030507134447,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F5015D733AF172E8FBC3427079','F4DD64134EC050E3D0A256EA0D','resource_main','Resource In Main Page','F07B379B79C9CD7743C23D2596',1,1,NULL,20030507134528,NULL,00000000000000,'0','ic');
INSERT INTO collection VALUES ('F78EB6DBE6A3A38FDAAA43DFB8','F78E9748E9F76ABD233C5EAD39','news','news','F302D4FE6D537C49721004181F',1,1,NULL,20030911105639,NULL,00000000000000,'0','ic');

--
-- Table structure for table `collection_descriptor`
--

CREATE TABLE collection_descriptor (
  id varchar(28) NOT NULL default '',
  collection_id varchar(28) NOT NULL default '',
  descriptor_id varchar(28) NOT NULL default '',
  descriptor_name varchar(128) NOT NULL default '',
  ordered_by varchar(255) NOT NULL default '',
  limit_value tinyint(2) NOT NULL default '0',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `collection_descriptor`
--

INSERT INTO collection_descriptor VALUES ('EE49BCAD5CA5705FE9F8E56D6C','EE3ECA91DAA5AB0EA3563A9542','1','descriptor','',0,NULL,20020607154206,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO collection_descriptor VALUES ('EE48E57C2CB4FF14995BED0A84','EE48E5532353CE62EE4F9C547E','23','article','',0,NULL,20020607114705,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO collection_descriptor VALUES ('EE7C75DB6311E655012964FEAA','EE7C7412CB68D123F4F160B4B8','EE163600A2BAD87965E20E9C9A','services','id',3,NULL,20030127170152,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('EF1EED9EBAF0CDEB64BD6DE020','EF1EEB444F1CC7924207265864','EF1EE6CF42F37C9EA72FAE3B94','open_job','id',3,NULL,20030127170750,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('EF575A8BCA671D71242536BAE9','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020805070045,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EE49BC9C4DB8FA107B8CD714F5','EE3ECA91DAA5AB0EA3563A9542','13','backend_user','',0,NULL,20020607154206,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO collection_descriptor VALUES ('EF57BF101754C4ECA8FFDA64FE','EF57BEBF18DC03624A9537EE53','EF1EE6CF42F37C9EA72FAE3B94','open_job','',0,NULL,20020804224349,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EE7C69B32D3570145BAF306A32','EE7C699016F886FEA906FA5DAC','EE163600A2BAD87965E20E9C9A','services','id',3,NULL,20030127170905,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('EF53B2C745B83003BE1996CC15','EF53B0FCA7D4F4CE80369A3BC0','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020804223821,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EE7CCC89DADD57DAE0D3D1E878','EE7CCC6E6D6BEAA209410E58D5','EE1634B19EB64BB12485263F79','news','id',3,NULL,20030127170731,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('EF58A90BDF298F7B6BCB4AACE5','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','',0,NULL,20020804224453,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EF58D89F9EB44E6FEB827C4397','EF58D8599C4F377913FD8D1DB0','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020804223751,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EF580D11253A32D8BF81521585','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020804223653,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EF535C448B19C2A6973D84663D','EF535BF707DC20CA4F0222EAB2','EE1634B19EB64BB12485263F79','news','',0,NULL,20020804224433,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EF590366E99ECE0020666EB1EE','EF5902B02CC7C4E3E55AE7B0AD','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020804224517,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EF5C9870A1654A372F4CC8A063','EF5C9801CA3FF9F3D99A20F1CD','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020804223839,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EF5CB19C5BB62EFB60DF437F8B','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020804224414,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EF61F74897E5CA58762AA9711E','EF61F69872E80B522B3F7D1698','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020808085728,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF620195219F0DF8C047860493','EF62010E6C4C37EEA867611132','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020808085818,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF6205BBFEA3D2D6F18C97A0AD','EF62053D7884A7B7C28B461E87','EE1634B19EB64BB12485263F79','news','',0,NULL,20020808085740,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF6207DDE499D677F14E1BE85C','EF620774DA99A708D10B48F528','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020808085807,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF62946CAE468A91C1C409BC2A','EF6293FFACC7928F2CCCCA37B1','EE1634B19EB64BB12485263F79','news','',0,NULL,20020801043132,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF62A45D4F9619826F84FCBA11','EF62A08AAB45C4D0CC1FC6CE06','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020801044854,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF62ACAAFB15B29A777E987DCB','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020801045808,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF633AAE73872BD8AF54C2F322','EF633A256C589D6A8ED8B8A941','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020801073308,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF66876C2C3DEDF5EC1463F810','EF668717A39DDB0F1D4DF9F526','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020801225547,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF6689DA1E3B99EB6E6F91B130','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020801225827,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF670593956C56B9045148908A','EF6704F9D5930E81F3D8232AA0','EE1634B19EB64BB12485263F79','news','',0,NULL,20020802011347,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF670CDC0638663D995F52B78E','EF670C78C784ECA3E832D49F41','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020802012130,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF76DEE9BEFE05280BEC57D074','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,20020805030514,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('EF76F104B18B88595AA94875CC','EF76F0C602372C01717F4AD69B','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,20020805032458,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_descriptor VALUES ('EF771015A2C4CE892D44D2813','EF770FC06E8EF90EA0E86B7EF4','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,20020805035853,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF7718B14F7D15B2A8CE48698C','EF771865DE82B9AE726ACF15BC','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020805040818,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF774D31BD29BAF58CDD8FA7FD','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020805073433,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF775EEC8E446219D98AECD3C1','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020805052504,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF776E1C50F5266FD30ACFF38C','EF776DA97229A12BB7901E9EEE','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020805073453,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF776F9EBADC6723BEB543BA72','EF776F524038C0A0701BD2751C','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020805054318,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF7B015494CC2E208C28141D0A','EF7B00DDED2FDABD09CD662C65','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020805222120,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF7B13DF09AF0D9B6B778A779A','EF7B1369BAAA94553E83D3C23E','EE1634B19EB64BB12485263F79','news','',0,NULL,20020805224134,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF7B15E57836AA712698264D4E','EF7B157A3BBA63A103A7417FEA','EE1634B19EB64BB12485263F79','news','',0,NULL,20020805224347,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_descriptor VALUES ('EF877C7558C138B1ABE3376E1A','EF877C16F3E59D308B85284D46','EE1634B19EB64BB12485263F79','news','',0,NULL,20020808085753,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF877E1479AC0AAB7F4FAFE667','EF877DD13084F34A4E13E123C7','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020808085830,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF87C8A84D1FB65825A0665B1F','EF87C834C829B55008B5659662','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020808095429,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF87C9B12C343B4F359A550647','EF87C954124BE5827E8C5ED93D','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020808095541,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF87E6361078FD3A26E51F98A2','EF87E5E89B29E72B13DA8407BA','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,20020808102915,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_descriptor VALUES ('EF8E3B8C0D511B45C9BB178AB0','EF8E3B3AB9F109C7BF163C0AD7','EE163600A2BAD87965E20E9C9A','services','',0,NULL,20020809155744,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_descriptor VALUES ('EF8E3C88E05124DC0D340876DC','EF8E3C4ADFBDFB74192B71CB43','EE1634B19EB64BB12485263F79','news','',0,NULL,20020809155849,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_descriptor VALUES ('EF8E3D55C8C5B482CB44174D15','EF8E3D1D196B477841A58FC9A0','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020809155939,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_descriptor VALUES ('EF8E3F181E3AB82CE1B54C4A31','EF8E3EDA4FE70036E202E26581','EF1EE6CF42F37C9EA72FAE3B94','open_job','',0,NULL,20020809160136,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_descriptor VALUES ('EF8E3FE2207E25BCB1FE4BB9C5','EF8E3FA2E9F723DB325F6A7D02','EF76BA4ED5D8F2A21B1933A750','about_us','',0,NULL,20020809160225,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_descriptor VALUES ('EF8E42817189FE60B4C0E8D63D','EF8E42301D17943E5955D9AA44','EE16354AB187B638CC4579F8B6','press_release','',0,NULL,20020809160517,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_descriptor VALUES ('EF8E430E775E34E96579EBDD25','EF8E42AF4ADA1F31E1F62D5525','EE1634B19EB64BB12485263F79','news','',0,NULL,20020809160552,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_descriptor VALUES ('EF8E439F5CD31338C41BA66D42','EF8E433D0E138F733F2D166C00','EF1EE6CF42F37C9EA72FAE3B94','open_job','',0,NULL,20020809160629,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_descriptor VALUES ('EFABD770DDBA32FE00CB4B3F81','EFABD73B9F5C8A2AFC1BC06327','EF76BA4ED5D8F2A21B1933A750','about_us','id',3,NULL,20030127170132,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('F2FDAB2A8C3D2D850FBB19E301','F0143397173EB2898E7BD1DA02','EE163600A2BAD87965E20E9C9A','services','id',1,NULL,20030127102620,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('F014357F69ED4565CF1CAD78E7','F0143397173EB2898E7BD1DA02','26','ads_product','id',1,NULL,20030127102620,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('F014370133771BC02745E23AA9','F01436B63F216AAAB48195159C','E8D4A7375EAF7B953F36C71292','assign_descriptor','null',0,NULL,20020904162147,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('EF1EB509124AD89E8A9F0C180C','EF1EB25BD481435B56271A67D2','EE163600A2BAD87965E20E9C9A','services','id',2,NULL,20030127170924,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('F07B7AB0E1D1BDC3D3E03442B8','F07B581DE9BA007DB73EB1BEBC','EE1634B19EB64BB12485263F79','news','transmitted_date_time',4,NULL,20020925150757,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO collection_descriptor VALUES ('F036DCB9B5363CFDD3D8B684C3','F036DC14DC945A100E1E4E301C','EE1634B19EB64BB12485263F79','news','headline',4,NULL,20020911095011,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_descriptor VALUES ('F07B5C7D418AF6C2AD64F902D','F07B56FBB0DE46F4CF2AE5698E','EE16354AB187B638CC4579F8B6','press_release','press_release_date',3,NULL,20020925141728,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO collection_descriptor VALUES ('F07B7B110860F8B114A409390C','F07B796043A756D9E97A3FEFF','EE1634B19EB64BB12485263F79','news','headline',3,NULL,20020925152818,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO collection_descriptor VALUES ('F083F255B0D5BAB1676721CFAC','F083F1F7C33EA7F3A9A59BE10A','EE1634B19EB64BB12485263F79','news','headline',4,NULL,20020926090426,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO collection_descriptor VALUES ('F083F9F598549F6DC32A16547A','F083F929ABA341797CD38BBE7D','EE1634B19EB64BB12485263F79','news','headline',3,NULL,20020926091516,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO collection_descriptor VALUES ('F09DE2D045F584EE9419E0121F','F09DE1952B7D669AD21E500D72','EE16354AB187B638CC4579F8B6','press_release','title',3,NULL,20021001095730,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO collection_descriptor VALUES ('F08426FA195D4C108E6CBAF1B0','F0842659151A5462F92C16E9D1','EE1634B19EB64BB12485263F79','news','headline',4,NULL,20020926100152,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO collection_descriptor VALUES ('F0843314118F43F7856869B801','F08432B3F4174A089CD81F3616','E7A781CFBA45A3CB44C81D8236','web_link','link_url',3,NULL,20020926101501,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO collection_descriptor VALUES ('EE7CCBD913DAB719E8F6580601','EE7CCBBE336CC05ECCC3DEDB04','EE16354AB187B638CC4579F8B6','press_release','id',3,NULL,20030127170826,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_descriptor VALUES ('F302DCCC0BC81890A148BA63D7','F302DC45188ECE996BB4E65A63','F3C2998AFDB590924800ACCC95','press_release_portal','id',3,NULL,20030325125913,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F302DE7391FD90009A02084D49','F302DD80386E12F543A34F650','F3C2963AD8A291EF75E1311711','news_portal','create_date',2,NULL,20030319112825,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F302E019DE530752476A23169F','F302DF2D5C14DB19C7398591BC','EE163600A2BAD87965E20E9C9A','services','create_date',3,NULL,20030320100229,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F3086F72F2F11D7220B8973B94','F3086EE25AC268B9D89977E44B','F3C2998AFDB590924800ACCC95','press_release_portal','create_date',3,NULL,20030307164836,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F30D61E65F784A4B4E0F0415C4','F30D61195A51759F754A534603','F3C2998AFDB590924800ACCC95','press_release_portal','create_date',25,NULL,20030307164929,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F30D628379A77A88E0BCB8E108','F30D6218D92D6172A83CF70347','F3C2963AD8A291EF75E1311711','news_portal','create_date',2,NULL,20030319171048,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F30D633D343CBDB75DF40DCE20','F30D62AFC966604EE6B63D5EA','F3C2963AD8A291EF75E1311711','news_portal','create_date',25,NULL,20030319171030,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F30D6463B32E6CA60E40D2F7A7','F30D638087912EB63CFF2413C4','EE163600A2BAD87965E20E9C9A','services','create_date',5,NULL,20030130114228,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F30D65824247999ED4D2975311','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','name',5,NULL,20030131133910,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F30D7ABD03663CDA90E22CDDAB','F30D7A35F127C9F525D69A4BCE','F30D6D4A72F6871D6DB046BCB6','fact_figure','null',0,NULL,20030130120651,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F312B7F9D32CECE8797FB3740B','F312B7926E1BA7B9EEAAB39558','F312A7DFF0D600D4866CCD4E28','makin_director','null',0,NULL,20030131123149,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F312B86BE69910FD4F57108083','F312B82623C31410C34434A7B3','F312A7DFF0D600D4866CCD4E28','makin_director','null',0,NULL,20030131123221,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F31331CA55975FB0862E8D9C9F','F31330D19DFD3F3245616F57B0','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,20030320131627,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F31332F400DEDFAE974E613DDB','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,20030320131538,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F31333BACB718BB25F212D34A9','F3133322C1D43F2988CD387324','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,20030320131559,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F313342BA6F1512F57ADE56244','F31333E67F5209AE9B31726965','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,20030320131523,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F3FF2371D2B2DF6DCD23F1C1E0','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','null',0,NULL,20030318101949,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F3FF5AA0C611BE8DBC8EF042D3','F3FF58FF3B49C217BA449F6849','F3FF36F3D74BBBACD7A0D5E93A','makin_subsidary','id',3,NULL,20030318111955,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F40067DCB9C06EEB9266396B15','F40025C7BB2B1555515A1FF83F','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,20030318161359,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F4006A93DABF84C3B63736EA8D','F4006A4702C02EC8B03504B154','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,20030318161655,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F40A1370489AE0D1D436CD3EBF','F40A12670642457146FE92A5BF','F3132892F57B236985F02B3F4F','subsidary','null',0,NULL,20030320133557,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_descriptor VALUES ('F4D333BF363143DC43B09F7C67','F4D332FCE8E1713BFFA339672F','EE163600A2BAD87965E20E9C9A','services','headline',3,NULL,20030429103316,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4D347ED511E82E13B6D324445','F4D345059E58F35226610428E3','EE163600A2BAD87965E20E9C9A','services','create_date',3,NULL,20030520091027,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4D348EF1FFB87C06BB60F4794','F4D34862CECEC33E7A3DFBF2F6','EE1634B19EB64BB12485263F79','news','create_date',3,NULL,20030520090944,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4D34AAB3947E85AB7E0E3BBE8','F4D34917CF2D95241724082D6E','EE16354AB187B638CC4579F8B6','press_release','transmitted_date_time',3,NULL,20030429103551,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4D34B57DB742921D7FE3E5726','F4D34AE05BA664870CE107F5C4','EF1EE6CF42F37C9EA72FAE3B94','open_job','create_date',3,NULL,20030520091006,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4D3EA4426E6A828C66C9AC65D','F4D3E9C42018508CFBD44C1F7F','EE163600A2BAD87965E20E9C9A','services','create_date',20,NULL,20030520090838,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4D77E78A081BF91514C0EC65','F4D77D9A595E11607831E05333','EE16354AB187B638CC4579F8B6','press_release','create_date',20,NULL,20030520090915,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4D7877E12ED0164E5D1EE20E4','F4D7872202EEF42DB1BEE35CAD','EE1634B19EB64BB12485263F79','news','create_date',20,NULL,20030520090856,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4D7912C5DBD64127624D1F4AB','F4D7908E18A0B591AD5B35C429','EF76BA4ED5D8F2A21B1933A750','about_us','headline',10,NULL,20031029090345,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO collection_descriptor VALUES ('F4E2EFB7A9EF6CE18F0AC6CC3C','F4DD67C9F9D543C3720D645FA0','EE1634B19EB64BB12485263F79','news','headline',5,NULL,20030902115708,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F4DD698FDDF0DC6B01B3959E07','F4DD6885A1EF5A5916B28F0DE0','F50196413176576A64F6F27A86','blueoxygen_review','create_date',3,NULL,20030507151725,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F4E2D6B018EFDD385EAFD73F5B','F4E2D64CF8DDBED197CF1D4EC7','EE16354AB187B638CC4579F8B6','press_release','create_date',5,NULL,20030624114929,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F4E2F9B4ABA1FFBFFA507D5068','F4E2F93A23C96AF5243A648900','EE16354AB187B638CC4579F8B6','press_release','create_date',3,NULL,20030501160727,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F4E3028DB618F5EB4E213CB94E','F4E30221D6345730817DF8B10B','F501EBD2F6B03958384BD30C50','blueoxygen_project','id',20,NULL,20030507162255,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F4E30F2748797F1D9C54744E03','F4E30E4255F0C0ECA9CF12C58D','E7A781CFBA45A3CB44C81D8236','web_link','create_date',25,NULL,20030525125439,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F4E315B3AE2B6E8FF986CC01EB','F4E315146AC0D62352296671C6','F50196413176576A64F6F27A86','blueoxygen_review','create_date',20,NULL,20030507151653,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F4E8352BF892F5C4CC0F2E716B','F4E8349537A24F34C2BADB1136','EE16354AB187B638CC4579F8B6','press_release','headline',3,NULL,20030502163030,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO collection_descriptor VALUES ('F4E835E451E92569B711C793C6','F4E8355C0D223308A5E405F8C3','EE1634B19EB64BB12485263F79','news','create_date',3,NULL,20030502163118,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO collection_descriptor VALUES ('F4E836A07056933EA8CD1B4951','F4E8361B7E88B3E21FDEC4E502','EE163600A2BAD87965E20E9C9A','services','headline',3,NULL,20030502163203,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO collection_descriptor VALUES ('F4E8408D34229A53E6F9959277','F4E83EF7F42ADCFA4C089A7267','EE1634B19EB64BB12485263F79','news','create_date',5,NULL,20030502164317,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO collection_descriptor VALUES ('F4E841C8B79E5E1CCC2E759ECA','F4E841228EF31C223EC4C3C44','EE163600A2BAD87965E20E9C9A','services','headline',5,NULL,20030502164427,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO collection_descriptor VALUES ('F4E843C8FB5AA8B2B8E285CA19','F4E84237BF3A0CE289DCA92CD4','EE16354AB187B638CC4579F8B6','press_release','create_date',5,NULL,20030502164724,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO collection_descriptor VALUES ('F4E851A9B24F0667F1535A2C92','F4E85130966839B75E0A0C8C90','EF76BA4ED5D8F2A21B1933A750','about_us','headline',10,NULL,20030502170135,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO collection_descriptor VALUES ('F5015DEE32B5D9657898EF2DBE','F5015D733AF172E8FBC3427079','E7A781CFBA45A3CB44C81D8236','web_link','create_date',3,NULL,20030525125455,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F4E307E528162E5B9C15ABE592','F4E30766D4F6B10B77D890862C','F501956E01E1C9C2DFFEC614DB','blueoxygen_recipe','create_date',20,NULL,20030507151607,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F760F4EDECCFCE037DBB7880DD','F5015CD1D2ED0D963111F06942','F501956E01E1C9C2DFFEC614DB','blueoxygen_recipe','id',1,NULL,20030902132148,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO collection_descriptor VALUES ('F78EC69D33422D8B93DF3179AC','F78EB6DBE6A3A38FDAAA43DFB8','EE1634B19EB64BB12485263F79','news','id',3,NULL,20030911105639,NULL,00000000000000,'0','ic','F78E9748E9F76ABD233C5EAD39');

--
-- Table structure for table `collection_detail`
--

CREATE TABLE collection_detail (
  id varchar(28) NOT NULL default '',
  collection_id varchar(28) NOT NULL default '',
  descriptor_id varchar(28) NOT NULL default '',
  descriptor_name varchar(128) NOT NULL default '',
  article_id varchar(28) NOT NULL default '',
  article_desc varchar(255) NOT NULL default '',
  rank tinyint(10) NOT NULL default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `collection_detail`
--

INSERT INTO collection_detail VALUES ('EF5C91C55B950946B24DF82921','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF53696D611BF0D3D7A7546BE2','Intecitra Websites v.1.9',2,NULL,20020731003132,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF57BF91BA6D4F6268C14046B8','EF57BEBF18DC03624A9537EE53','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF57BDF80FA246572D73D85E63','Programmer',3,NULL,20020730020243,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF575AFDFC853466F996A07752','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','EF57575AD591ECDA1C2FEC8C8D','integrated_solution',2,NULL,20020730001312,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF575B14724FBCFD6D6DECD7B5','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','EF5758B1CA281B487CECF66532','offline_online_solution',3,NULL,20020730001312,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF575B2C7F649BA764D114AD34','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','EF57598A487F5669844986B7B0','360_degrees_solution',4,NULL,20020730001312,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF579F9EA7507ECAE6ED4CCB02','EF53B0FCA7D4F4CE80369A3BC0','EE16354AB187B638CC4579F8B6','press_release','EF579DC7668F8128FDC9D97EFE','press_release2',2,NULL,20020730012803,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF579FC2D862DDC5DCD86E7BB7','EF53B0FCA7D4F4CE80369A3BC0','EE16354AB187B638CC4579F8B6','press_release','EF579EDBE315D10BD8D3B057B0','press_release3',3,NULL,20020730012803,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF57BF5E46E6F7C1C0551378D6','EF57BEBF18DC03624A9537EE53','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF2F0FC62FE000588342B2A58','Java Developer',1,NULL,20020730020243,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF57BF792154F45BC942AD5833','EF57BEBF18DC03624A9537EE53','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF57BD11F59D7A2C77A5A3D378','Accounting',2,NULL,20020730020243,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EE2070AD6F2366B5C6CE97A5F6','EE2070A06861DB20E5C73E2E2','23','article','EE00D1FD68B2F4C4E5ED36C42C','null',1,NULL,20020530151456,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EE2070DFD1BDFE05B377ABF302','EE2070A06861DB20E5C73E2E2','23','article','EDF200EFF845083C774A1C953D','Jittery Investors Resort to Sell-Off',2,NULL,20020530151456,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EE1A3621D650CAAAFCCD7F3FD7','EE1A3613C15E812C82B6FDF015','E7A779BA12440C5CC627D043AD','age','2','4-6',1,NULL,20020529101301,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO collection_detail VALUES ('EE1A3903DAA6327229303F7B82','EE1A38F14FA782A6E40B12CD2','E7A779BA12440C5CC627D043AD','age','2','4-6',1,NULL,20020529101619,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EE24C766F443D8D51AD5ABB06B','EE24C74AE745D17CD47DC1A095','23','article','EDF200EFF845083C774A1C953D','Jittery Investors Resort to Sell-Off',1,NULL,20020531112757,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO collection_detail VALUES ('EE24C82883F73DBAFCFFDC8E9C','EE24C80E398C59AFE1C081CDE4','23','article','EDF1FED938718D8806EE521D03','US Group to Build Nepal Power Plant',1,NULL,20020531112842,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF575ADF78327C2F3AC7EC5A06','EF575A3BB6F9D65E1376C562F9','EE163600A2BAD87965E20E9C9A','services','EF5754755119A3B2E3211AD22','guerilla_service',1,NULL,20020730001312,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EE39EE6CA236C01D9E91760744','EE39EDC9453DC094BF2AA22E81','E8D4B8FCEB555B9D2AD8D143F6','assign_osml','null','null',1,NULL,20020604143212,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EE39F150EABA6670179564E71F','EE39EDC9453DC094BF2AA22E81','E7A77820F8D3EEB61E12EF7DD5','ads_client','null','null',2,NULL,20020604143212,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF53B3238E5E3684D572681F50','EF53B0FCA7D4F4CE80369A3BC0','EE16354AB187B638CC4579F8B6','press_release','EF53ADCFAAA9F6C5BAE9A8A629','Press release1',1,NULL,20020730012803,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF1EB7DD31E7265EFC737FFC6A','EF1EB25BD481435B56271A67D2','EE163600A2BAD87965E20E9C9A','services','EE8213E8C3D062C30B823889D','Collaboration Internetworking',3,NULL,20020912083456,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EE49BB1A47CCE35FBC66572EDD','EE48E5532353CE62EE4F9C547E','23','article','EE24C9816C7409EF634E62F7EB','null',1,NULL,20020607154115,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO collection_detail VALUES ('EF61F31815342CC5DF2DEC053D','EE7C699016F886FEA906FA5DAC','EE163600A2BAD87965E20E9C9A','services','EE8213E8C3D062C30B823889D','Collaboration Internetworking',3,NULL,20020801013519,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EF61F30383A41C64903D61C87E','EE7C699016F886FEA906FA5DAC','EE163600A2BAD87965E20E9C9A','services','EE81F51791C15869C3CDE187C5','Corporate Portal Solution',2,NULL,20020801013519,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EF61F2E82BD31C3D26440EB650','EE7C699016F886FEA906FA5DAC','EE163600A2BAD87965E20E9C9A','services','EE7C684145375E2988E9863A1E','Guerilla Wired Program',1,NULL,20020801013519,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EF5361559A390AEB92D8954F4','EF535BF707DC20CA4F0222EAB2','EE1634B19EB64BB12485263F79','news','EF535DBC564E1103F7C050F192','18.00, 20/06/02',1,NULL,20020729070253,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF53A9F17EB7DCF8A8DB7B3B8B','EF535BF707DC20CA4F0222EAB2','EE1634B19EB64BB12485263F79','news','EF5390D19B5DD4C2F1A0A96A90','11.22, 17/03/02',3,NULL,20020729070106,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF536A8B634AC9B51EFCD29DD3','EF535BF707DC20CA4F0222EAB2','EE1634B19EB64BB12485263F79','news','EF53696D611BF0D3D7A7546BE2','13.14, 18/05/02',2,NULL,20020729070311,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('F405109E0FC9AD74FF7B9DB82F','F312B82623C31410C34434A7B3','F312A7DFF0D600D4866CCD4E28','makin_director','F4049E0F09488520CCC5AD7FED','test aja...',2,NULL,20030319140112,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F30D91C81F9902311F7199C916','F30D7A35F127C9F525D69A4BCE','F30D6D4A72F6871D6DB046BCB6','fact_figure','F30D90E2A1C592CC2D292166BB','fact1',1,NULL,20030130123224,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F312CA7CB7D8A16887560F2BCF','F312B82623C31410C34434A7B3','F312A7DFF0D600D4866CCD4E28','makin_director','F312B60278CEAC24F96D8A3E3E','Bambang Harto Tjahjono',1,NULL,20030319140112,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('EF04187ED5563B54FA233C9577','EE7CCBBE336CC05ECCC3DEDB04','EE16354AB187B638CC4579F8B6','press_release','EF0417E00C1393C407D2E0CBC3','Press Release Title',2,NULL,20020719004548,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('F312CAD9ACC1D06D7C6FBF6ABB','F312B7926E1BA7B9EEAAB39558','F312A7DFF0D600D4866CCD4E28','makin_director','F312B60278CEAC24F96D8A3E3E','Bambang Harto Tjahjono',2,NULL,20030131125235,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('EF1EB74F877031D1674D254E29','EF1EB25BD481435B56271A67D2','EE163600A2BAD87965E20E9C9A','services','EE7C684145375E2988E9863A1E','Guerilla Promotion Wired Progr',1,NULL,20020912083456,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EF1EB78A2F6391307B4B40CA7','EF1EB25BD481435B56271A67D2','EE163600A2BAD87965E20E9C9A','services','EE81F51791C15869C3CDE187C5','Corporate Portal Solution',2,NULL,20020912083456,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EF1ED2C07E295A442EF97F7E48','EE7CCBBE336CC05ECCC3DEDB04','EE16354AB187B638CC4579F8B6','press_release','EF1ED26A8E84F1C8790BF05076','Press Release Baru 1',1,NULL,20020719004548,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EF1EF98116F566137969337D20','EF1EEB444F1CC7924207265864','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF1EF7ECE9D2C40A656132F2E','Java Developer',1,NULL,20020719012739,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('EF580DF78DF7665E633AAEE530','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','EF580C339697C55B5E4CDB68E1','Solution Five',4,NULL,20020730033736,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF580DCF9384FCB3C1396D096C','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','EF580BCBF3D3D23511CA3B2407','Solution Four',3,NULL,20020730033736,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF580DAF593C38699FA82AB6F0','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','EF580B00B41345C82F8D1E1DB0','Solution Three',2,NULL,20020730033736,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF580D94202D7F1FAA2B3FB5FC','EF580C9F50774CC4BBA9C305DC','EE163600A2BAD87965E20E9C9A','services','EF580A9A97C6CC86E36D458F58','Solution Two',1,NULL,20020730033736,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5C91E910213F9864A5F2AEF4','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF5390D19B5DD4C2F1A0A96A90','New Staff Recruitment',3,NULL,20020731003132,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF58DBDF87D9251342DE5E08D7','EF58D8599C4F377913FD8D1DB0','EE163600A2BAD87965E20E9C9A','services','EF58DA8798E54DC5055094C02F','Product Service one',1,NULL,20020730071320,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5D5EB1EDDBF5F78BC1FC5FBE','EF5902B02CC7C4E3E55AE7B0AD','EE163600A2BAD87965E20E9C9A','services','EF580BCBF3D3D23511CA3B2407','360 Degrees Solution',2,NULL,20020731041449,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5904F8F34795A6FDF413F6D4','EF5902B02CC7C4E3E55AE7B0AD','EE163600A2BAD87965E20E9C9A','services','EF580638377E2B7CBCCF61C0F2','Solution One',1,NULL,20020731041449,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5C919FA3916938C365FB85A6','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF535DBC564E1103F7C050F192','Intercitra Website has just go online',1,NULL,20020731003132,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5C920BCA187481836A1B9A25','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF58A470ACC7EBBC44C208BA37','Launching New Product at Plaza Senayan',4,NULL,20020731003132,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5C922E94411DAC16A0837F68','EF58A8B439BA814A7D93B240EA','EE1634B19EB64BB12485263F79','news','EF58C66D3B65206094005BFD52','New Plasma Monitor has arrived. Huraay!',5,NULL,20020731003132,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5C98C058D04C14A29D94372F','EF5C9801CA3FF9F3D99A20F1CD','EE16354AB187B638CC4579F8B6','press_release','EF53ADCFAAA9F6C5BAE9A8A629','Intercitra Website has just go online',1,NULL,20020731003846,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5C98E59376DB9231198B52B','EF5C9801CA3FF9F3D99A20F1CD','EE16354AB187B638CC4579F8B6','press_release','EF579DC7668F8128FDC9D97EFE','Intecitra Websites v.1.9',2,NULL,20020731003846,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5C99061BF4AEB4A1984FD58B','EF5C9801CA3FF9F3D99A20F1CD','EE16354AB187B638CC4579F8B6','press_release','EF579EDBE315D10BD8D3B057B0','New Staff Recruitment',3,NULL,20020731003846,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5CB1EFCB2159F1504DF404F7','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580638377E2B7CBCCF61C0F2','Guerilla Solution',1,NULL,20020731010643,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5CB238E9E1FA57FF5E100348','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580A9A97C6CC86E36D458F58','Integrated Solution',2,NULL,20020731010643,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5CB25B852288E2D53F961774','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580B00B41345C82F8D1E1DB0','Offline-Online Solution',3,NULL,20020731010643,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5CB27B7161FDA1400AFA599F','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580BCBF3D3D23511CA3B2407','360 Degrees Solution',4,NULL,20020731010643,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF5CB29ED78C64FA27CF17CB64','EF5CB147C39DE591879212AE26','EE163600A2BAD87965E20E9C9A','services','EF580C339697C55B5E4CDB68E1','460 Degrees Solution/Impossibl',5,NULL,20020731010643,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF61F7E44BEF2691763A638A97','EF61F69872E80B522B3F7D1698','EE163600A2BAD87965E20E9C9A','services','EF61F58898B017F75FED2DD3D1','360 Degrees Solution',3,NULL,20020808113351,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF61F7C866F0D8C6141CF10640','EF61F69872E80B522B3F7D1698','EE163600A2BAD87965E20E9C9A','services','EF61F3DBC3C859321EFED5A9A6','Integrated Solution',2,NULL,20020808113351,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF61F79DFBB81612038DF3D987','EF61F69872E80B522B3F7D1698','EE163600A2BAD87965E20E9C9A','services','EF61F2D63A9B1B817C092F7213','Guerilla Solution',1,NULL,20020808113351,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF6202017725D8AD51413E58F1','EF62010E6C4C37EEA867611132','EE16354AB187B638CC4579F8B6','press_release','EF61F9FCDA45D2A4B00E927781','New Solution Product',1,NULL,20020801015147,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF620225C855AF678B42A2C7A0','EF62010E6C4C37EEA867611132','EE16354AB187B638CC4579F8B6','press_release','EF61FF03C72F7260871431620F','Mobile Transaction',2,NULL,20020801015147,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF62024110B062A95371CC177B','EF62010E6C4C37EEA867611132','EE16354AB187B638CC4579F8B6','press_release','EF61FFC3ACC8C7BAFE5CD98EE1','Intecitra Websites v.1.9',3,NULL,20020801015147,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF62061559F130D279F985018B','EF62053D7884A7B7C28B461E87','EE1634B19EB64BB12485263F79','news','EF620369733BA03BA4203146','Intercitra Website has just go online',1,NULL,20020801015606,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF62063380454F28AC5F0419BA','EF62053D7884A7B7C28B461E87','EE1634B19EB64BB12485263F79','news','EF62049CD370233869FB24C393','Launching New Product at Plaza Senayan',2,NULL,20020801015606,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF62082F8FC50E132291E79AA7','EF620774DA99A708D10B48F528','EE163600A2BAD87965E20E9C9A','services','EF61F3DBC3C859321EFED5A9A6','Integrated Solution',1,NULL,20020801015835,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF62084F2C57F4357CBCA28F3','EF620774DA99A708D10B48F528','EE163600A2BAD87965E20E9C9A','services','EF61F58898B017F75FED2DD3D1','360 Degrees Solution',2,NULL,20020801015835,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF620870FD97C379591D7EB1D1','EF620774DA99A708D10B48F528','EE163600A2BAD87965E20E9C9A','services','EF61F2D63A9B1B817C092F7213','Guerilla Solution',3,NULL,20020801015835,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF6294BC352A49F9896B8C5612','EF6293FFACC7928F2CCCCA37B1','EE1634B19EB64BB12485263F79','news','EF628B7C1BD4FA05A98C18CAF4','Websites now is online',1,NULL,20020801043158,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF6294E3843A9895348D2E9D03','EF6293FFACC7928F2CCCCA37B1','EE1634B19EB64BB12485263F79','news','EF628EF2856A46CA6B3C5EA439','Mobile Transaction',2,NULL,20020801043158,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF6687B51CFC22DCD623C527D5','EF668717A39DDB0F1D4DF9F526','EE163600A2BAD87965E20E9C9A','services','EF62A61FDEC343F346D6F23BCF','Guerilla Solutions',1,NULL,20020801225628,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF62A4CF523DA0A7DC10D26303','EF62A08AAB45C4D0CC1FC6CE06','EE16354AB187B638CC4579F8B6','press_release','EF629929253C079CC28ED0D598','Most Prefered Consultant Reviewed By AsiaWeek 2002',2,NULL,20020801223336,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF62A4A8CF191E1AC7288A05A8','EF62A08AAB45C4D0CC1FC6CE06','EE16354AB187B638CC4579F8B6','press_release','EF62957813994CE45496B0A980','New Solution Product from Intercitra',1,NULL,20020801223336,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF62AD1E56E4506D7EA788F10F','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62A61FDEC343F346D6F23BCF','Guerilla Solutions',1,NULL,20020801045907,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF62AD3F0D2F2AF5D4BD6B61AD','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62A8037310E14AD6249180A3','Integrated Solution',2,NULL,20020801045907,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF62AD5A078524D4FC58438C40','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62A903FBF28EB04E90461810','360 Degrees',3,NULL,20020801045907,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF62AD77EF893FF07D65085381','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62AA52F1B1F3782F64E3FABC','CMS Solution',4,NULL,20020801045907,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF62ADC0DF162CB898CFC60129','EF62ABFFD639CEDC6F503B678','EE163600A2BAD87965E20E9C9A','services','EF62AB63677999BD325F7F8475','Offline-Online Solution',5,NULL,20020801045907,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF633B0A002AB84DD4BBC82DDA','EF633A256C589D6A8ED8B8A941','EE16354AB187B638CC4579F8B6','press_release','EF629F22FD3F4054A45F835B57','Discount for Integrated Solution',1,NULL,20020801224837,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF6687D5653DDCD0DD4CCF2B24','EF668717A39DDB0F1D4DF9F526','EE163600A2BAD87965E20E9C9A','services','EF62A8037310E14AD6249180A3','Integrated Solution',2,NULL,20020801225628,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF6687F2FF8B084CAA3698C5A7','EF668717A39DDB0F1D4DF9F526','EE163600A2BAD87965E20E9C9A','services','EF62A903FBF28EB04E90461810','360 Degrees',3,NULL,20020801225628,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF668A34168B54984626A7A4B3','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62A61FDEC343F346D6F23BCF','Guerilla Solutions',1,NULL,20020801225908,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF668A4C519F0DB7F7FD6C3F70','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62A8037310E14AD6249180A3','Integrated Solution',2,NULL,20020801225908,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF668A6269BEADC9F1337E88E2','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62A903FBF28EB04E90461810','360 Degrees',3,NULL,20020801225908,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF668A782458E6EF31F5A0E7D3','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62AA52F1B1F3782F64E3FABC','CMS Solution',4,NULL,20020801225908,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF668A90AD70CC8B50D5A5BED8','EF66892594573B88F1A1CEC0F3','EE163600A2BAD87965E20E9C9A','services','EF62AB63677999BD325F7F8475','Off-On Solution',5,NULL,20020801225908,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF670667AE907F9331D057C38E','EF6704F9D5930E81F3D8232AA0','EE1634B19EB64BB12485263F79','news','EF628B7C1BD4FA05A98C18CAF4','Websites now is online',1,NULL,20020802011436,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF670683B1ECB06F2082CEDFCC','EF6704F9D5930E81F3D8232AA0','EE1634B19EB64BB12485263F79','news','EF628EF2856A46CA6B3C5EA439','Mobile Transaction',2,NULL,20020802011436,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF6706997C80ACB8AD723198B2','EF6704F9D5930E81F3D8232AA0','EE1634B19EB64BB12485263F79','news','EF6290FC202E01C574058CBCFB','Guerilla Solutions',3,NULL,20020802011436,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF670D51B3F7CFF4F41B76AE30','EF670C78C784ECA3E832D49F41','EE16354AB187B638CC4579F8B6','press_release','EF62957813994CE45496B0A980','New Solution Product from Intercitra',1,NULL,20020802012213,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF670D71BE3BB1C3F8FA82ECC3','EF670C78C784ECA3E832D49F41','EE16354AB187B638CC4579F8B6','press_release','EF629929253C079CC28ED0D598','Most Prefered Consultant Reviewed By AsiaWeek 2002',2,NULL,20020802012213,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF670D86BDF8BB41B0C2602D66','EF670C78C784ECA3E832D49F41','EE16354AB187B638CC4579F8B6','press_release','EF629F22FD3F4054A45F835B57','Discount for Integrated Solution',3,NULL,20020802012213,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF76E3283BE2168D644AD1F8F8','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D47B8479BB1EC65F74D4F1','Company Background',5,NULL,20020805031936,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF76E3B74C305B9D494F9BC01','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D8BA3F7CF6E0D3DFDDE402','Our Commitment',4,NULL,20020805031936,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF76E39889FAE2CC8DE9802FD','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D840F830F0B3704D90DC28','Our Solution Approach',3,NULL,20020805031936,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF76E37A04BCFBD3F6CB049A11','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D78672ABC1783709CBBDE9','Our Approach',2,NULL,20020805031936,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF76E35DA3754B775594C36537','EF76DEAB4E65F944FC318B10F2','EF76BA4ED5D8F2A21B1933A750','about_us','EF76D65787AD054C8D116D1EF4','Our Vision',1,NULL,20020805031936,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO collection_detail VALUES ('EF76F13CD85BABFC1021A9FAD7','EF76F0C602372C01717F4AD69B','EF76BA4ED5D8F2A21B1933A750','about_us','EF76EDE2A111EFC6CDE050C348','Company Background',1,NULL,20020805032532,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF76F15FD19A188AD6084E8820','EF76F0C602372C01717F4AD69B','EF76BA4ED5D8F2A21B1933A750','about_us','EF76EFB156B3BD1E2EE605D114','Our Vision',2,NULL,20020805032532,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF76F1821EA56750C6D0173548','EF76F0C602372C01717F4AD69B','EF76BA4ED5D8F2A21B1933A750','about_us','EF76F003CBBCFB33A7DE1F7F40','Our Approach',3,NULL,20020805032532,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO collection_detail VALUES ('EF77104B486D72183F9F431D74','EF770FC06E8EF90EA0E86B7EF4','EF76BA4ED5D8F2A21B1933A750','about_us','EF770E1DE9957C994CB59A419A','Our Vision',1,NULL,20020805035918,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF771061518EE1F554946D1089','EF770FC06E8EF90EA0E86B7EF4','EF76BA4ED5D8F2A21B1933A750','about_us','EF770EF25047B401AD4CC59192','Our Mission',2,NULL,20020805035918,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF77107612C541A16EB453A60A','EF770FC06E8EF90EA0E86B7EF4','EF76BA4ED5D8F2A21B1933A750','about_us','EF770F4E898F5649DAFBC2CCA7','Our Approach',3,NULL,20020805035918,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF7718ED00C09FADA7EB50BE98','EF771865DE82B9AE726ACF15BC','EE163600A2BAD87965E20E9C9A','services','EF7712C6D8F2D0CF72470FC290','Guerilla Solution',1,NULL,20020805040848,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF771906F1831B9D4C30C5CF4D','EF771865DE82B9AE726ACF15BC','EE163600A2BAD87965E20E9C9A','services','EF771663D4C828285B493C4E87','Deluxe Solution',2,NULL,20020805040848,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF7719249AD5121880E042AC38','EF771865DE82B9AE726ACF15BC','EE163600A2BAD87965E20E9C9A','services','EF771797B13278072B04FD8142','360 Degrees Solution',3,NULL,20020805040848,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF774D83C58B8AA1ED1020B459','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','EF7712C6D8F2D0CF72470FC290','Guerilla Solution',1,NULL,20020805050642,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF774DB3BE2E9845517358FFD4','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','EF77157D7C6689524396E625FD','180 Degrees Solutions',2,NULL,20020805050642,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF774E093192E50E3BD806F7DB','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','EF77149A8ED66E9A456D827119','Offline-Online-Inline Solution',3,NULL,20020805050642,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF774E22F397F6BC9A982956DE','EF774C7D03E84F326EDC640E5F','EE163600A2BAD87965E20E9C9A','services','EF771797B13278072B04FD8142','360 Degrees Solution',4,NULL,20020805050642,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF775FA2DE76B6E0109208CE84','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','EF771663D4C828285B493C4E87','Deluxe Solution',4,NULL,20020805053548,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF775F7779371EAC3C2EF9A9FF','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','EF771797B13278072B04FD8142','360 Degrees Solution',3,NULL,20020805053548,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF775F5C6F2768F07B43905CE9','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','EF77157D7C6689524396E625FD','180 Degrees Solutions',2,NULL,20020805053548,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF775F3DBBEE02165E71E61DC9','EF775DC852350BB4108EF6BD48','EE163600A2BAD87965E20E9C9A','services','EF7712C6D8F2D0CF72470FC290','Guerilla Solution',1,NULL,20020805053548,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF776E691882422F564E934435','EF776DA97229A12BB7901E9EEE','EE16354AB187B638CC4579F8B6','press_release','EF776AA68230F6EAD435FFC067','Intercitra Website has just go on-line',1,NULL,20020805054207,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF776E803A90DE1EAB23DABF49','EF776DA97229A12BB7901E9EEE','EE16354AB187B638CC4579F8B6','press_release','EF776BCA9F9A8AEC068DAA6720','Pre-beta test for Intercitra Website',2,NULL,20020805054207,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF776E95F4DEB39F720B722093','EF776DA97229A12BB7901E9EEE','EE16354AB187B638CC4579F8B6','press_release','EF776CA5215495A223809C8EA','Contents Managment Tutorial',3,NULL,20020805054207,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF776FE79A2282E23EE581A19D','EF776F524038C0A0701BD2751C','EE16354AB187B638CC4579F8B6','press_release','EF776AA68230F6EAD435FFC067','Intercitra Website has just go on-line',1,NULL,20020805054339,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF776FFECBA7AEA1FDA05D3029','EF776F524038C0A0701BD2751C','EE16354AB187B638CC4579F8B6','press_release','EF776BCA9F9A8AEC068DAA6720','Pre-beta test for Intercitra Website',2,NULL,20020805054339,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF877CC97D754AEF6C1107D827','EF877C16F3E59D308B85284D46','EE1634B19EB64BB12485263F79','news','EF620369733BA03BA4203146','Intercitra Website has just go online',1,NULL,20020808083140,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF7B01C956C6BF72CF8981186E','EF7B00DDED2FDABD09CD662C65','EE163600A2BAD87965E20E9C9A','services','EF771663D4C828285B493C4E87','Deluxe Solution',2,NULL,20020805225149,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF7B01A9A985C15C64C48DA121','EF7B00DDED2FDABD09CD662C65','EE163600A2BAD87965E20E9C9A','services','EF77157D7C6689524396E625FD','180 Degrees Solutions',1,NULL,20020805225149,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF7B142E81E1381101370BA791','EF7B1369BAAA94553E83D3C23E','EE1634B19EB64BB12485263F79','news','EF7B0F85354370D2325518A153','Soft Launching',1,NULL,20020805224204,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF7B1445075049F66765E2D4B','EF7B1369BAAA94553E83D3C23E','EE1634B19EB64BB12485263F79','news','EF7B10F4B3301D0DEE8C85AC8E','Bubu Awards',2,NULL,20020805224204,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF7B145C578AF21BAF5070FC38','EF7B1369BAAA94553E83D3C23E','EE1634B19EB64BB12485263F79','news','EF7B128AB4FE38C92ACD0BFF29','5 Tricks How To Success',3,NULL,20020805224204,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF7B167AE29A9F2A3105E9B3B5','EF7B157A3BBA63A103A7417FEA','EE1634B19EB64BB12485263F79','news','EF7B10F4B3301D0DEE8C85AC8E','Bubu Awards',1,NULL,20020805224430,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF7B1695DCAAB2D4BFA35E46CC','EF7B157A3BBA63A103A7417FEA','EE1634B19EB64BB12485263F79','news','EF7B128AB4FE38C92ACD0BFF29','5 Tricks How To Success',2,NULL,20020805224430,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO collection_detail VALUES ('EF877CE2867DDED960A7B60491','EF877C16F3E59D308B85284D46','EE1634B19EB64BB12485263F79','news','EF62049CD370233869FB24C393','Launching New Product at Plaza Senayan',2,NULL,20020808083140,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF877FF281789A39FA8B3CD8D2','EF877DD13084F34A4E13E123C7','EE16354AB187B638CC4579F8B6','press_release','EF61F9FCDA45D2A4B00E927781','New Solution Product',1,NULL,20020808083517,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF878009778366EA2A8A1574F2','EF877DD13084F34A4E13E123C7','EE16354AB187B638CC4579F8B6','press_release','EF61FF03C72F7260871431620F','Mobile Transaction',2,NULL,20020808083517,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF8780321CE6E2B05EAF2CA07D','EF877DD13084F34A4E13E123C7','EE16354AB187B638CC4579F8B6','press_release','EF61FFC3ACC8C7BAFE5CD98EE1','Intecitra Websites v.1.9',3,NULL,20020808083517,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF87C8F427C06D6501A97D7070','EF87C834C829B55008B5659662','EE163600A2BAD87965E20E9C9A','services','EF61F3DBC3C859321EFED5A9A6','Integrated Solution',1,NULL,20020808095457,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF87C91C86F5122F3DB0E5F4AE','EF87C834C829B55008B5659662','EE163600A2BAD87965E20E9C9A','services','EF61F2D63A9B1B817C092F7213','Guerilla Solution',2,NULL,20020808095457,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF87CA053D4969D38828442802','EF87C954124BE5827E8C5ED93D','EE163600A2BAD87965E20E9C9A','services','EF61F58898B017F75FED2DD3D1','360 Degrees Solution',1,NULL,20020808095602,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF87CA2081A2BCD5CA7BC3315A','EF87C954124BE5827E8C5ED93D','EE163600A2BAD87965E20E9C9A','services','EF61F3DBC3C859321EFED5A9A6','Integrated Solution',2,NULL,20020808095602,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF87E66959F9B682173AFFC69A','EF87E5E89B29E72B13DA8407BA','EF76BA4ED5D8F2A21B1933A750','about_us','EF87D849EA4A59339594E7F845','Our Vission',1,NULL,20020808102707,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF87E681B81292B112CE623560','EF87E5E89B29E72B13DA8407BA','EF76BA4ED5D8F2A21B1933A750','about_us','EF87D8FE18D371CB032236A360','Company Background',2,NULL,20020808102707,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF87E699269C4EBAF8FFA9FA95','EF87E5E89B29E72B13DA8407BA','EF76BA4ED5D8F2A21B1933A750','about_us','EF87E57386423584690F3AED17','Our Mission',3,NULL,20020808102707,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO collection_detail VALUES ('EF8E3BE85534134DF6BD28D7F0','EF8E3B3AB9F109C7BF163C0AD7','EE163600A2BAD87965E20E9C9A','services','EF8E38F1D2CF3B7DB7749F37B9','New Service 1',1,NULL,20020809155817,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E3C017C14AADA3705727D43','EF8E3B3AB9F109C7BF163C0AD7','EE163600A2BAD87965E20E9C9A','services','EF8E39B632FA978A9C44E5006F','Our Service 2',2,NULL,20020809155817,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E3C171E519F71E7EF034A6F','EF8E3B3AB9F109C7BF163C0AD7','EE163600A2BAD87965E20E9C9A','services','EF8E3A44C9BC8168B1E2DC6C11','Our Service Number 3',3,NULL,20020809155817,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E3CDB39302AE1334739EB7C','EF8E3C4ADFBDFB74192B71CB43','EE1634B19EB64BB12485263F79','news','EF8E326DAE2D9752163E9DF60A','Intercitra website has just go online this december 2002',1,NULL,20020809155910,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E3CF49237A4FEBCC7C645E3','EF8E3C4ADFBDFB74192B71CB43','EE1634B19EB64BB12485263F79','news','EF8E34A1B26577603BCC07EF52','Our Guerilla Product has been promote since april 2002',2,NULL,20020809155910,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E3D9F997302A1B19A51345C','EF8E3D1D196B477841A58FC9A0','EE16354AB187B638CC4579F8B6','press_release','EF8E3765FA60D6E6E3F23BD5FA','Our Press Release News 1',1,NULL,20020809160000,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E3DB65D7DD0036A1863B929','EF8E3D1D196B477841A58FC9A0','EE16354AB187B638CC4579F8B6','press_release','EF8E383A5A50A95D2F360D4CB6','Our Press Release News 2',2,NULL,20020809160000,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E3F69CCB01D838A26F70EF0','EF8E3EDA4FE70036E202E26581','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF8E3DFB8756AAC9A08A37A4DE','Java Developer',1,NULL,20020809160156,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E3F7ED7E5869CC693800CAE','EF8E3EDA4FE70036E202E26581','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF8E3E604C996AD28FBBE57424','Secretary',2,NULL,20020809160156,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E402247EE72D48575798273','EF8E3FA2E9F723DB325F6A7D02','EF76BA4ED5D8F2A21B1933A750','about_us','EF8E2F12DE12AC404BF06CFB3C','Company Background',1,NULL,20020809160313,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E403B5B817E6A206C9F57F8','EF8E3FA2E9F723DB325F6A7D02','EF76BA4ED5D8F2A21B1933A750','about_us','EF8E31446BD15C1F77534D61A9','Our Mission',2,NULL,20020809160313,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E40A5EAFB3F7077F576A418','EF8E3FA2E9F723DB325F6A7D02','EF76BA4ED5D8F2A21B1933A750','about_us','EF8E31AF72C76E887D3AC99B6C','Our Approach',3,NULL,20020809160313,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E43E5E42056A7FD5BC02979','EF8E433D0E138F733F2D166C00','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF8E3DFB8756AAC9A08A37A4DE','Java Developer',1,NULL,20020809160651,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E43FCE5A75811C390D41609','EF8E433D0E138F733F2D166C00','EF1EE6CF42F37C9EA72FAE3B94','open_job','EF8E3E604C996AD28FBBE57424','Secretary',2,NULL,20020809160651,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E442F3D90F8F27B0E59FF45','EF8E42AF4ADA1F31E1F62D5525','EE1634B19EB64BB12485263F79','news','EF8E326DAE2D9752163E9DF60A','Intercitra website has just go online this december 2002',1,NULL,20020809160728,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E44804B4ACCC280B53B437D','EF8E42AF4ADA1F31E1F62D5525','EE1634B19EB64BB12485263F79','news','EF8E34A1B26577603BCC07EF52','Our Guerilla Product has been promote since april 2002',2,NULL,20020809160728,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E44C203C8FA61B9E7ED3BD1','EF8E42301D17943E5955D9AA44','EE16354AB187B638CC4579F8B6','press_release','EF8E3765FA60D6E6E3F23BD5FA','Our Press Release News 1',1,NULL,20020809160748,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('EF8E44DA6C5360AC764BE96FE6','EF8E42301D17943E5955D9AA44','EE16354AB187B638CC4579F8B6','press_release','EF8E383A5A50A95D2F360D4CB6','Our Press Release News 2',2,NULL,20020809160748,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO collection_detail VALUES ('F0E7130F3CAD59F240FE3DCFA1','EFABD73B9F5C8A2AFC1BC06327','EF76BA4ED5D8F2A21B1933A750','about_us','EFABD7A227D67449CDC27C9DE7','Company Background',1,NULL,20021015150232,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO collection_detail VALUES ('F312BEEADDE6BB08957F261853','F312B7926E1BA7B9EEAAB39558','F312A7DFF0D600D4866CCD4E28','makin_director','F312B3113B9A55D45AE41B5F73','Susilo Wonowidjoyo',1,NULL,20030131125235,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F312F5E2D3155684108BEAA3E0','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','F312E75F10981CEE04AE42D1B','Sejarah Singkat PT Makin',1,NULL,20030131133941,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F312F5FBAAA8507CE651AE5C44','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','F312E9B7586BBD7815262A2F68','Visi',2,NULL,20030131133941,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F312F611A3873C3805FD8D1E2B','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','F312EA5984D494E8177B0A51D1','Strategi Bisnis',3,NULL,20030131133941,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F312F6263541A29151B5B957AA','F30D64A967EC8A114463B155EC','EF76BA4ED5D8F2A21B1933A750','about_us','F312EF1D0F94F52BE459F19661','Bisnis Inti',4,NULL,20030131133941,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F313321E9F283556B0E86D3D1B','F31330D19DFD3F3245616F57B0','F3132892F57B236985F02B3F4F','subsidary','F3132F13E0914B4F07AC47DA05','PT. Antang Permai Plywood Indrustry',1,NULL,20030320134836,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F31334DBFAA2BAA59B45CAB8E7','F31333E67F5209AE9B31726965','F3132892F57B236985F02B3F4F','subsidary','F31334B3542D790038A0B17E9D','PT Lainnya',1,NULL,20030320105500,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F40056916AF5828C875A5C5EE','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','F40054F2FDF6D0B998BA5147B','test',3,NULL,20030320115839,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F313353C4B18C76EC86F5A0B4D','F3133322C1D43F2988CD387324','F3132892F57B236985F02B3F4F','subsidary','F3133492BCE6F40CC8B1F438E5','PT Perkayuan',1,NULL,20030131144838,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F3221B60B4CDCD969751332658','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','F3133492BCE6F40CC8B1F438E5','PT Perkayuan',2,NULL,20030320115839,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F3FF2684902283DF572AA55AEE','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF2251AC8FDBE206FC5F2184','Fact Figure',4,NULL,20030318103436,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F3FF266C657BA8A9F3087BCA4','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF21BB87A1806688C0D236D4','News',3,NULL,20030318103436,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F3FF2651E712E5636DF6D8373E','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF1FBC1DA441971DF760AC86','Press Release',2,NULL,20030318103436,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F3FF2554DA17A60C2483B20183','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF164552682DC676682DD1FB','Home',1,NULL,20030318103436,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F3FF31193E43EA396E58AD3F54','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF2FF9A57F7A6B01EF0A9773','Makin & Subsidaries',5,NULL,20030318103436,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F3FF31353241DFF4EE7F35320B','F3FF22FA60FDC1B3F09C2A27AF','F3FF0CB5A1F1B01FDBEF1218F6','site_map','F3FF308923177AB6C29733A930','Contact Us',6,NULL,20030318103436,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F313350E166CEB680A5B132FC3','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','F313346BDB791AAC4D271E93C9','PT Kehutanan',1,NULL,20030320115839,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F40A977FE6BCAD9AB7266CDEFF','F4006A4702C02EC8B03504B154','F3132892F57B236985F02B3F4F','','F4098E903BEF8CD68572BC9C6F','',2,NULL,20030325132520,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F40A97AEA7E296821ADA66DF56','F4006A4702C02EC8B03504B154','F3132892F57B236985F02B3F4F','','F40054F2FDF6D0B998BA5147B','',1,NULL,20030325132520,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F4099078D180C813FC6FB48AFE','F31333E67F5209AE9B31726965','F3132892F57B236985F02B3F4F','subsidary','F4098E903BEF8CD68572BC9C6F','PT. Intercitra Prima Integrasi',2,NULL,20030320105500,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F409CA439EC78E0A8FF0666CA3','F3133249977BD2C0636E037D23','F3132892F57B236985F02B3F4F','subsidary','F4098E903BEF8CD68572BC9C6F','PT. Intercitra Prima Integrasi',4,NULL,20030320115839,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F40A141523A553487F21F0BD0A','F40A12670642457146FE92A5BF','F3132892F57B236985F02B3F4F','subsidary','F4098E903BEF8CD68572BC9C6F','PT. Intercitra Prima Integrasi',1,NULL,20030320131836,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F40A2F855E3043CF54A8258951','F31330D19DFD3F3245616F57B0','F3132892F57B236985F02B3F4F','subsidary','F40A2EE778115018EE80E397AB','PT. Matahari Kahuripan Indonesia',2,NULL,20030320134836,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F423D9FE91C610145E5460106E','F4006A4702C02EC8B03504B154','F3132892F57B236985F02B3F4F','','F3132F13E0914B4F07AC47DA05','',3,NULL,20030325132520,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F40A9820BAAE21209085370477','F40025C7BB2B1555515A1FF83F','F3132892F57B236985F02B3F4F','subsidary','F4098E903BEF8CD68572BC9C6F','PT. Intercitra Prima Integrasi',2,NULL,20030320154909,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F40066BA90AA0E2FB0020B056F','F40025C7BB2B1555515A1FF83F','F3132892F57B236985F02B3F4F','subsidary','F40A2EE778115018EE80E397AB','PT. Matahari Kahuripan Indonesia',1,NULL,20030320154909,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO collection_detail VALUES ('F40A9DE8E4D7563B7DE27AE87E','F40025C7BB2B1555515A1FF83F','F3132892F57B236985F02B3F4F','subsidary','F40054F2FDF6D0B998BA5147B','test',3,NULL,20030320154909,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');

--
-- Table structure for table `company`
--

CREATE TABLE company (
  id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  address text,
  state varchar(128) default NULL,
  zip_number varchar(10) default NULL,
  telephone varchar(128) default NULL,
  faximile varchar(128) default NULL,
  website varchar(128) default NULL,
  email varchar(128) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `company`
--

INSERT INTO company VALUES ('F337B149F1D7EB47954BF7EF7','PT. Intercitra Prima Integrasi','Cempaka Putih Tengah II Blok C No. 21\r\nJakarta Pusat','Jakarta','14520','4260933','4260933','www.intercitra.com','frans@intercitra.com','F162B448063A847',20030207165114,NULL,00000000000000,'0','ic','F199E755B97B662FC248CAC80');
INSERT INTO company VALUES ('F400293F00E533921149DADAB2','test','makin','','','','','','','1',20030318150530,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO company VALUES ('F40F8AEA366FA9257120F211A4','dsds','','','','','','','','F162B448063A847319E641EF7D',20030321144729,NULL,00000000000000,'0','ic','F199E755B97B662FC248CAC80');

--
-- Table structure for table `company_profile`
--

CREATE TABLE company_profile (
  id varchar(28) NOT NULL default '',
  name varchar(255) default NULL,
  company_profile text,
  publish_flag tinyint(1) default '1',
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `company_profile`
--

INSERT INTO company_profile VALUES ('EE7D7F926F7DDCDD9906756F0','Intercitra Profile','Intercitra has been established since 2002 as a business consultant and system integration company.\r\nIntercitra specialize in B2B to services, integrate and increase company performance using inter-networking enable technology.\r\nIntercitra helps companies to increase their productivity and deliver the most cost efficient solution to bring the company to a higher empowerment level.\r\n\r\n',1,'EE7D7FCFF852ED68606F56C709Sample.jpg',NULL,'2',20020617000000,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO company_profile VALUES ('F54378B18E346D3E62FBE59294','Company Profile','Intercitra Prima Integrasi (Intercitra) is a inter-networking enabled technology communication services company that focus deliver technology related services.\r\n\r\nIntercitra helps companies to increase their productivity and deliver the most cost efficient solution to bring the company to a higher empowerment level.\r\n\r\nCompany Background\r\n\r\nIntercitra Prima Integrasi, PT. is a privately held company based in Jakarta, Indonesia. It founded in 2001 and specializes in developing innovative business application that is focused on the needs of its customers. \r\nIn addition to developing its own products internally, Intercitra licenses products and technologies that will complement its own technologies. \r\nThe Big Idea\r\n\r\nTo fundamentally build and change the way people communicate and manage their businesses in real business environment.\r\n\r\nThe Daily Mantera\r\n\r\nMake it simple, integrated, organize, managed and connected in the innovation decathlon. \r\nOur Vision\r\n\r\nIntercitra',1,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030520095039,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');

--
-- Table structure for table `contact`
--

CREATE TABLE contact (
  id varchar(28) NOT NULL default '',
  businessPartnerId varchar(28) default NULL,
  address varchar(255) default NULL,
  assistant varchar(255) default NULL,
  assistantPhone varchar(255) default NULL,
  birthDate varchar(255) default NULL,
  city varchar(255) default NULL,
  country varchar(255) default NULL,
  description varchar(255) default NULL,
  email varchar(255) default NULL,
  fax varchar(255) default NULL,
  firstName varchar(255) default NULL,
  homePhone varchar(255) default NULL,
  lastName varchar(255) default NULL,
  mobile varchar(255) default NULL,
  officePhone varchar(255) default NULL,
  otherEmail varchar(255) default NULL,
  otherPhone varchar(255) default NULL,
  zipCode varchar(255) default NULL,
  create_by varchar(28) default NULL,
  update_by varchar(28) default NULL,
  create_date date default NULL,
  update_date date default NULL,
  active_flag int(11) default NULL,
  PRIMARY KEY  (id),
  KEY businessPartnerId (businessPartnerId),
  KEY businessPartnerId_2 (businessPartnerId),
  KEY businessPartnerId_3 (businessPartnerId),
  KEY businessPartnerId_4 (businessPartnerId),
  KEY businessPartnerId_5 (businessPartnerId),
  KEY businessPartnerId_6 (businessPartnerId),
  KEY businessPartnerId_7 (businessPartnerId),
  KEY businessPartnerId_8 (businessPartnerId),
  KEY businessPartnerId_9 (businessPartnerId),
  KEY businessPartnerId_10 (businessPartnerId),
  KEY businessPartnerId_11 (businessPartnerId),
  KEY businessPartnerId_12 (businessPartnerId),
  KEY businessPartnerId_13 (businessPartnerId),
  KEY businessPartnerId_14 (businessPartnerId),
  KEY businessPartnerId_15 (businessPartnerId),
  KEY businessPartnerId_16 (businessPartnerId),
  KEY businessPartnerId_17 (businessPartnerId),
  KEY businessPartnerId_18 (businessPartnerId),
  KEY businessPartnerId_19 (businessPartnerId),
  KEY businessPartnerId_20 (businessPartnerId),
  KEY businessPartnerId_21 (businessPartnerId),
  KEY businessPartnerId_22 (businessPartnerId),
  KEY businessPartnerId_23 (businessPartnerId),
  KEY businessPartnerId_24 (businessPartnerId),
  KEY businessPartnerId_25 (businessPartnerId),
  KEY businessPartnerId_26 (businessPartnerId),
  KEY businessPartnerId_27 (businessPartnerId),
  KEY businessPartnerId_28 (businessPartnerId),
  KEY businessPartnerId_29 (businessPartnerId),
  KEY businessPartnerId_30 (businessPartnerId),
  KEY businessPartnerId_31 (businessPartnerId)
) TYPE=MyISAM;

--
-- Dumping data for table `contact`
--

INSERT INTO contact VALUES ('ff808081055be9f001055bed5a50',NULL,'','','','','','','','','','ddassda','','','','','','','45632','1','','2005-07-28','2005-07-28',0);
INSERT INTO contact VALUES ('ff808081055bf7d301055bf81f32','ff808081055bcd7701055bce4e69','','','','','','','','','','sdddd','','','','','','','58647','1','','2005-07-28','2005-07-28',0);
INSERT INTO contact VALUES ('ff80808105616af10105616ede92','ff808081055bcd7701055bce4e69','','','','','','','','','','sasa','','','','','','','47896','1','','2005-07-29','2005-07-29',0);
INSERT INTO contact VALUES ('ff80808105617758010561789dc2','ff8080810561de6e010561df2ea6','','','','','','','','','','alex','021-6316813','','021-92776694','','','021-6348102','11270','1','1','2005-07-29','2005-07-29',0);

--
-- Table structure for table `contact_type`
--

CREATE TABLE contact_type (
  id smallint(6) default NULL,
  description varchar(125) default NULL,
  site_id varchar(28) default NULL,
  status_id char(2) NOT NULL default 'ic'
) TYPE=MyISAM;

--
-- Dumping data for table `contact_type`
--

INSERT INTO contact_type VALUES (1,'Contact Us',NULL,'ic');
INSERT INTO contact_type VALUES (2,'Feedback',NULL,'ic');
INSERT INTO contact_type VALUES (3,'Wish List',NULL,'ic');

--
-- Table structure for table `contact_us`
--

CREATE TABLE contact_us (
  id varchar(28) NOT NULL default '',
  first_name varchar(35) NOT NULL default '',
  last_name varchar(35) default NULL,
  street_address varchar(55) default NULL,
  city varchar(15) default NULL,
  zip_code varchar(10) default NULL,
  state varchar(35) default NULL,
  email varchar(125) default NULL,
  phone_no varchar(35) default NULL,
  comment varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `contact_us`
--


--
-- Table structure for table `content_default`
--

CREATE TABLE content_default (
  id varchar(28) NOT NULL default '',
  active_flag varchar(5) NOT NULL default '',
  category_id varchar(50) NOT NULL default '',
  section_id varchar(50) NOT NULL default '',
  template_id varchar(50) NOT NULL default '',
  site_id varchar(50) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `content_default`
--


--
-- Table structure for table `country`
--

CREATE TABLE country (
  id varchar(28) NOT NULL default '',
  description varchar(125) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table `country`
--

INSERT INTO country VALUES ('sg','Singapore');
INSERT INTO country VALUES ('id','Indonesia');
INSERT INTO country VALUES ('us','USA');
INSERT INTO country VALUES ('zh','China');

--
-- Table structure for table `descriptor`
--

CREATE TABLE descriptor (
  id varchar(28) NOT NULL default '',
  descriptor_group_id varchar(28) NOT NULL default '0',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  name varchar(128) NOT NULL default '',
  description varchar(255) default NULL,
  url_descriptor varchar(255) default NULL,
  descriptor_flag tinyint(1) default '0',
  active_flag tinyint(1) default '1',
  url_action varchar(255) default NULL,
  type_flag char(1) NOT NULL default '1',
  wizard_id varchar(28) default NULL,
  site_id varchar(28) default NULL,
  collection_default varchar(128) default 'description',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `descriptor`
--

INSERT INTO descriptor VALUES ('1','0',NULL,20020529000000,'1',20011216000000,'descriptor','Descriptor','descriptor.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('6','0',NULL,20030709145047,'1',20030709145047,'category','Category','category.xml',1,1,'http://www.test.com?action=test','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('7','0',NULL,20020529000000,'1',20011216000000,'section','Section','section.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E8D32766091238C92EFF1BA529','0','1',20020529000000,'1',20011216000000,'osml','Organization Structure','osml.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E8D0C5535B234E62585FD6F09D','0','1',20020529000000,'1',20020413000000,'backend_user_descriptor_acl','User ACL','backend_user_descriptor_acl.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('13','0',NULL,20020829000000,'1',20020829000000,'backend_user','User Profile','backend_user.xml',1,0,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('14','0',NULL,20020529000000,'1',20011216000000,'workflow_role','Workflow Role','workflow_role.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('15','0',NULL,20020529000000,'1',20011216000000,'workflow','Workflow','workflow.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('16','',NULL,20020529000000,NULL,00000000000000,'workflow_state_point','WF State Point','workflow_state_point.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('17','',NULL,20020529000000,'1',20010909000000,'workflow_action','WF Action','workflow_action.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('18','',NULL,20020529000000,'1',20010909000000,'workflow_activity','WF Activity Status','workflow_activity.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('22','0',NULL,20020529000000,'1',20011216000000,'template','Template','template.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('23','0',NULL,20020617000000,'1',20011216000000,'article','Article','article.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685','title');
INSERT INTO descriptor VALUES ('25','0',NULL,20020529000000,'1',20011216000000,'ads_banner','Ads Banner','ads_banner.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('26','0',NULL,20020529000000,'1',20011216000000,'ads_product','Ads Product','ads_product.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('31','0',NULL,20020529000000,'1',20020413000000,'module_function','Module Function','module_function.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('32','0','',20020529000000,'1',20011216000000,'role_privilage','Role Privilage','role_privilage.xml',1,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('2','0',NULL,20020726000000,'1',20020705000000,'site','Site','site.xml',1,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('E7A767F6FCD106B4C38ED0073D','0','1',20020529000000,'1',20011216000000,'hear_us','Hear Us','hear_us.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A769CE2222DC0ABD270A48FE','0','1',20020529000000,'1',20011216000000,'income','Income','income.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A77820F8D3EEB61E12EF7DD5','0','1',20020529000000,'1',20011216000000,'ads_client','Ads Client','ads_client.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A779BA12440C5CC627D043AD','0','1',20020529000000,'1',20011216000000,'age','Age','age.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A779E95E7E40ED22C3D9D409','0','1',20020529000000,'1',20011216000000,'contact','Contact Us','contact.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A77A14AC951B8B4A444F14F3','0','1',20020529000000,'1',20011216000000,'country','Country','country.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A77F657568CBF5B670623DCD','0','1',20030227160039,'1',20030227155614,'faq','FAQ','faq.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','question');
INSERT INTO descriptor VALUES ('E7A77FB00E6254A09B8342341C','0','1',20020529000000,'1',20011216000000,'glossary','Glossary','glossary.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A77FF650C680C26FCB152B01','0','1',20020529000000,'1',20011216000000,'image_size','Image Size','image_size.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A78033BA587E0FAA0CEDFECC','0','1',20020529000000,'1',20020502000000,'sni_member2','SNI Member Registration','ED2E67B18DF954DEC7433B22C3sni_member.xml',0,1,'../eagle/?type=true','1',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A780DC22C766324AD6580578','0','1',20020529000000,'1',20011216000000,'net_usage','Net Usage','E7B5A75F6BFE2D7D01328D25B7net_usage.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A7810951CC810C0DC6D2941D','0','1',20020529000000,'1',20011216000000,'net_usage_hours_day','Net Usage Hours Day','net_usage_hours_day.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A7814278134CAE74AFFEF66F','0','1',20020529000000,'1',20011216000000,'newsletter','Newsletter','newsletter.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A781781AF25277BE8E49C2F4','0','1',20020529000000,'1',20011216000000,'poll','Polling','poll.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A7819E161352C93DA00652E9','0','1',20020529000000,'1',20011216000000,'send_to_friend','Send to Friend','send_to_friend.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E7A781CFBA45A3CB44C81D8236','0','1',20030130000000,'1',20030130000000,'web_link','Web Link','F07F6B57312366F8EF58665443web_link.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','link_url');
INSERT INTO descriptor VALUES ('E8D4A7375EAF7B953F36C71292','0','1',20020529000000,'1',20011216000000,'assign_descriptor','Assign Descriptor to WF','assign_descriptor.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E8D4B8FCEB555B9D2AD8D143F6','0','1',20020529000000,'1',20011216000000,'assign_osml','Assign Org Stru to Site','assign_osml.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E8F706107AAD19C157222E67C9','0','1',20020529000000,'1',20020413000000,'workflow_history','Workflow Approval History','workflow_history.xml',0,1,'../../topaz/test.jsp','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('E8F8A0871FE7869F292A6CF810','0','1',20020529000000,'1',20020413000000,'workflow_hierarchy','Workflow Hierarchy / Detail','workflow_hierarchy.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EACA410839BF089F9CEC6B4A53','product_item','1',20020529000000,'1',20011216000000,'item','Item Master',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EACA4B7F9596396050B73AB5EF','0','1',20020529000000,'1',20011216000000,'descriptor_group','Descriptor Group','descriptor_group.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EACB9F549BCDBA63D42F1EF9DF','0','1',20020529000000,NULL,00000000000000,'todo','To Do','EACB9F99C5A08745BDA738E289todo.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EAD2D1C50028FD5258593CE983','0','1',20020529000000,'1',20011217000000,'wizards','Wizard','wizards.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EAD2D1FB743D69F352E4779C1','0','1',20020529000000,'1',20011217000000,'wizards_steps','Wizard Steps','wizards_steps.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EADFFF90404E07E8F17356BCA7','0','1',20020529000000,NULL,00000000000000,'member_user','Member User Profile','EAE000036042AC0EA30559AD2Amember_user.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED6B716DB53DFB1AD79B338A42','0','1',20020529000000,'1',20020425000000,'product','Product','ED6C3610EE7F4BB77FF7F0ABEproduct.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EA63FEC28E8B17A920D615472F','0','1',20020529000000,NULL,00000000000000,'mtl_unit_of_measure','Unit of Measure','EA63FF20211D9FFBA2DC4FB389mtl_unit_of_measure.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED80F08BA5B5CE411B8C161520','0','1',20020529000000,NULL,00000000000000,'sales_order','Sales Order','ED80F14E2EEC0EEF8F920A8C0Asales_order.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EA63FF7EF31172D21CEC60386D','0','1',20020529000000,NULL,00000000000000,'mtl_uom_classes','UoM Class','EA63FFBF4D9CB2CCCEC5E3CE98mtl_uom_classes.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC02B358C9685AD13B193A8265','product_item','1',20020529000000,'1',20020214000000,'register_topaz','Registration Form','EC02B5E34BEDD07F8F22881524register_form.jsp',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC22C92740923B29903FEA53D5','0','1',20020529000000,'1',20020313000000,'viewmembertree','View Member Tree','EC22C99F30ECC58EB986155D2Aviewmembertree.jsp',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED80F1DFB463D6D67608FE97CD','0','1',20020529000000,NULL,00000000000000,'order_detail','Order Detail','ED80F25632FA979F19C3A15147order_detail.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC277DA80635E3E3F63BF841F7','0','1',20020529000000,NULL,00000000000000,'bonus_usaha_mandiri','Bonus Usaha Mandiri',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC277DD49F949A89B0567CDF79','0','1',20020529000000,NULL,00000000000000,'bonus_sponsor','Bonus Sponsor',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC277E2805435A0D319263474','0','1',20020529000000,NULL,00000000000000,'bonus_jaringan','Bonus Jaringan',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC277E629F54EF51EB84A3AD37','0','1',20020529000000,NULL,00000000000000,'bonus_program_sejahtera','Bonus Program Sejahtera',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC277EFD42E80758F490BEE3CA','0','1',20020529000000,NULL,00000000000000,'protor','Motor (Protor)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC277F3565FE498EEA44C87B0D','0','1',20020529000000,'1',20020221000000,'prosa','Sejahtera (Prosa)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC277F6F724C601B96A094ECAC','0','1',20020529000000,NULL,00000000000000,'prowis','Wisata/Ibadah (Prowis)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC277FC604E5A3618F4E0DAC2A','0','1',20020529000000,NULL,00000000000000,'probil','Mobil (Probil)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC27800E1C85E45260395CC14D','0','1',20020529000000,NULL,00000000000000,'promah','Rumah (Promah)',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC2780313D2154DA88EE2B203B','0','1',20020529000000,NULL,00000000000000,'bonus_kepemimpinan','Bonus Kepemimpinan',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC278085DA7AAE337066982E27','0','1',20020529000000,NULL,00000000000000,'perincian_bonus','Perincian Bonus',NULL,0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EC8BB1EDFEA1BA1686BFB1ECEB','0','1',20020529000000,'1',20020313000000,'peringkat','Peringkat Member','EC8BB33F461693F490744E0319peringkat.jsp',0,0,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED2D5FC89DA4B624B60783E281','0','1',20020529000000,'1',20020413000000,'component','Component','ED2D63405F78955921C499157component.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED2D68AA3264045584C17F100C','0','1',20020529000000,NULL,00000000000000,'component_package','Component Package','ED2D68E60CA5E1BEF68233F5B5component_package.xml',0,1,NULL,'0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED2D68F33A20F0789CE1B8CAD0','0','1',20020529000000,NULL,00000000000000,'component_methods','Component Methods','ED2D6941595833000FA77EF207component_methods.xml',0,1,NULL,'1',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED2EE26B3A598A0761F1E1C84B','0','1',20020529000000,'1',20020419000000,'TreeGlobal','Global Parameter',NULL,0,1,'../tomato.jsp?modules=wizards&wizardid=ED2F13A6A961E80A8DF701E7E7&ok','1','ED2F13A6A961E80A8DF701E7E7','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED665FD94B6AC6DA166949BC6A','0','1',20020529000000,NULL,00000000000000,'mtl_uom_standard_conversions','Standard Conversion','ED66646D37B85BC24DD5592360EA63FF79E839F887478B1D3B55mtl_uom_standardclass_conversions.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED666557E377911B0E672412D7','0','1',20020529000000,NULL,00000000000000,'mtl_uom_intraclass_conversions','Intraclass Conversion','ED6665F1DCF04412D4501AF5B5EA63FF79E839F887478B1D3B55mtl_uom_intraclass_conversions.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED6665F7ECCBF0B90275BEE375','0','1',20020529000000,NULL,00000000000000,'mtl_uom_interclass_conversions','Interclass Conversion','ED66666556468829438F80603EEA63FF79E839F887478B1D3B55mtl_uom_interclass_conversions.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED8100EADE893CD9EDBC21C39E','0','1',20020529000000,'1',20020501000000,'purchase_order','Purchase Order','ED8A6FA3D03B091CC837BB699Epurchase_order.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED8A1729C8E3B3EDE0DAEB2772','0','1',20020529000000,NULL,00000000000000,'payment_method','Payment Method','ED8A17D6383C6920BB10AB22F8payment_method.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED8A1C4CCC76364E31743601EE','0','1',20020529000000,NULL,00000000000000,'payment','Payment','ED8A1C91CE4AD8DA236688489Bpayment.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED8A23950175908D976F4EB046','0','1',20020529000000,NULL,00000000000000,'shipment_method','Shipment Method','ED8A23E51EE43201413E499A58shipment_method.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED8A293FEB17BA95346CBEDE13','0','1',20020529000000,NULL,00000000000000,'shipment','Shipment','ED8A297D91AE71F696C222BFD2shipment.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED8A6CFBC6B303B8D7D61F9A02','0','1',20020529000000,NULL,00000000000000,'provider','Provider','ED8A6D4DCED3690FADD5874731provider.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED8AA6899D90081582B374C915','0','1',20020529000000,NULL,00000000000000,'onhand','Onhand','ED8AA6DA1561DE648F783119FDonhand.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EDDD5F5132ADA977D780C2ADAD','0','1',20021115000000,'1',20021115000000,'collection_detail','Collection Detail','EDDD6DFCCB8B4E00F11D73C56Ccollection_detail.xml',0,0,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('ED8B8AB5933AC7FE2F760FB1AE','0','1',20020529000000,'1',20020506000000,'member_bengkel','Member Bengkel','ED8B8B10A5D568B55A8462D675member_bengkel.xml',0,1,'','0',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('ED8EF6E40C8CD0C8A1ED378B50','0','1',20020529000000,'1',20020506000000,'sni_member_bengkel','Member_bengkel','ED8EF7C4FB28D272E875E8EEE8sni_member.xml',0,1,'../bengkel/index_member.jsp?','1',NULL,'EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EDCEA76E0E114961F605AAF79C','0','1',20020617000000,'1',20020617000000,'collection','Collection Admin','EDDD70A601EC0CF6F798F24248collection.xml',0,1,'../module/collection/first.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EDEDA3BC67E064D0E609CF84FE','0','1',20020705000000,'1',20020705000000,'page_collection','Page Collection','EDEDAA9A48D24AB0A7C6D6EED0frontpage.xml',0,1,'../module/pagecollection/first.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EDF1E980543D789AF49587CC3','0','1',20020705000000,'1',20020705000000,'pagecollection_detail','Page Collection Detail','EDF1EA534CB202A5018A514161frontpage_detail.xml',0,0,'','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EE187CB92554E9877310D9041D','0','1',20020627000000,'1',20020627000000,'assign_user_site','Assign User to a Site','EE188C8D1BCFFF7C61672BFA2Cassign_user_site.xml',0,0,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EE16334FF2AE40BA3386D21C2A','0','1',20020528000000,NULL,00000000000000,'company_profile','Company Profile','EE1633A53055EADD5140855742company_profile.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EE1633BB40ED75204D7CB5464E','0','1',20020529000000,'1',20020529000000,'contact_us','Contact Us','EE163407ECDDDA1FDCD1D1B251contact_us.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EE1634107D568C2832E72DF4C7','0','1',20020528000000,NULL,00000000000000,'content_default','Content Default','EE16345E06ECA50699801ED065content_default.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EE163461EFCD80B5C80D88A308','0','1',20020528000000,NULL,00000000000000,'event','Event','EE1634ADD36EA16F4C3EEC671Aevent.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EE1634B19EB64BB12485263F79','0','1',20030224171410,'1',20030224171410,'news','News','EE1634FC424BAE90DD75214376news.xml',0,1,'../module/news/index.jsp?','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('F332B5D5577E444B78297AFE84','0','1',20030318150825,'1',20030318150825,'company','Company','F33682657AE8F60C0818178F40company.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name');
INSERT INTO descriptor VALUES ('EE16354AB187B638CC4579F8B6','0','1',20030130000000,'1',20030130000000,'press_release','Press Release','F07F4BC91767F994E36A3FF5Bpress_release.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('EE8C6A49BC200D77F9DD3F92AA','0','1',20020627000000,'1',20020627000000,'user_site','User Manager','EE8C72398F20734B22553E88D6user_site.xml',0,1,'../module/user_site/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EE163600A2BAD87965E20E9C9A','0','1',20030318113033,'1',20030318113033,'services','Product & Services','EE1636505B9D89D29BE9B0CD40services.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name');
INSERT INTO descriptor VALUES ('EE163653A49B09E7BD3CC4005C','0','1',20020528000000,NULL,00000000000000,'status','Status','EE1636989C590FD740731F8D21status.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EE399186B35C580610D4EDD7A3','0','1',20020610000000,'1',20020610000000,'collection_descriptor','Collection Content','EE39A7FDB43CDFD00B21EA6672coll_desc.xml',0,1,'../module/collection_content/first.jsp?','1','','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EE39DC68885D4E61299258E68D','0','1',20020723000000,'1',20020723000000,'theme','Theme','EED8830E5DF4DF47FBE1F6926theme.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EE39EDBA36471BA27231DAFF78','0','1',20020604000000,'1',20020604000000,'template_object','Template Object','EE39F3ECCA8734EFBD690B00F3template_object.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EE39EDFFA5C0438D014F92A9A3','0','1',20020604000000,'1',20020604000000,'template_object_detail','Template Object Detail','EE39F3CD5646776D7FAE7F49C6template_object_detail.xml',0,1,'','0','','EE185CE0B82B41C1724F284685',NULL);
INSERT INTO descriptor VALUES ('EEB49F22144357635AD6A684B6','0','1',20020719000000,'1',20020719000000,'role_manager','Role Manager','EEB4A290413F69DA2284F97F7Arole_site.xml',0,1,'../module/role_site/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EED88F7EFBC8DFF1C5A048C73D','0','1',20020705000000,'1',20020705000000,'skin','Skin','EED93484525906F379F20E6364skin.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EF76BA4ED5D8F2A21B1933A750','0','1',20020805000000,'1',20020805000000,'about_us','About Us','EF76D42DA287310C1E3E8BC50Fabout_us.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name');
INSERT INTO descriptor VALUES ('EF1EE6CF42F37C9EA72FAE3B94','0','1',20020719000000,NULL,00000000000000,'open_job','Open Job','EF1EE7D34518B387674E9DD7DAjob_desc.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','title');
INSERT INTO descriptor VALUES ('EF1F0CD62F63F3B0A7205D5BC4','0','1',20020719000000,'1',20020719000000,'role_site_privilage','Role Site Privilage','EF1F0E578F1ACE31ADF87291DBrole_site_privilage.xml',0,1,'../module/role_site_privilage/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('EFE457F0C2A80EC35CC399876D','0','1',20020826000000,'1',20020826000000,'client_survey','Client Survey','EFE5BF784720189D6C04750567client_survey.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F1157841F5337A8CFCCD319BB2','0','1',20030828104553,'1',20030828104553,'document_pooling','Document Pooling','F13430218553B5D57ABA3B9F8Adocument_pooling.xml',0,1,'../module/doc_pooling/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F11F4FCC9526B5B7B3D29ADCC8','0','1',20021026000000,'1',20021026000000,'document_security','Document Security','F11F5174E72ACF929705956E68document_security.xml',0,0,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F12E17962FDD3B3AC25D99BE71','0','1',20021029000000,NULL,00000000000000,'document_upload','Document Upload','F12E18775A863CE34C9BD216C9document_upload.xml',0,0,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F15DB026AF629532843A3CC580','0','1',20021108000000,'1',20021108000000,'Search Manager','Search Manager',NULL,0,1,'../module/search_manager/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F1812260A4353E752C091D087','0','1',20030114000000,'1',20030114000000,'document_category','Document Category','F2BC5AAE45276A01507BAA5EC3document_category.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F186E0333C668AE9C8CFD62426','0','1',20030208000000,'1',20030208000000,'tips_trick','Tips & Trick','F186E0E092AB46E07B8E371502tips&trick.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('F186FA34E6B83A503DEE249E3','0','1',20030130000000,'1',20030130000000,'quote','Quote','F186FA9C365C869628ABF744Dquote.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('F1A59EF36F336E28498926F38A','0','1',20030108000000,'1',20030108000000,'project_tracking','Project Tracking','F29B58E56FFD80EA309A43BBE1project_tracking.xml',0,1,'../module/project_tracking/project_task/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F1A61B7AD45A8FE0C7226CB73C','0','1',20030116000000,'1',20030116000000,'employee_information','Employee Information','F1A9B76607EF1B550B8509CB79employee_information.xml',0,0,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F2E587923AC44C8979FBF2F26C','0','1',20030122000000,'1',20030122000000,'job_position','Job Position','F2E59F1CD7D0A8F31C1B034C4Bjob_position.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F1A9BE53CA5154655E89CC4AD2','0','1',20021122000000,NULL,00000000000000,'priority','Priority','F1A9BEC636E4D654ECF31AD840priority.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F1A9C5BF337F99C98C8944ACE1','0','1',20021122000000,NULL,00000000000000,'project_status','Project Status','F1A9C63D2A5933F5B5094D47F2project_status.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F1BE59DFBE674547A0FC415DE4','0','1',20021126000000,NULL,00000000000000,'project_member','Project Member','F1BE5D0EFAED955FEAAA6494DCproject_member.xml',0,0,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F1BF9F2D933537D9BBF0E629E4','0','1',20030220130550,'1',20030220130550,'project_task','Upload Document Task','F1BF9F8B26941FD7A16CCC6EAproject_task.xml',0,1,'../module/project_tracking/task_document/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F1CD9746F2FFCA5286614B6DC8','0','1',20021212000000,'1',20021212000000,'web_calendar','Web Calendar','F1CD9B95BE7D185C6ED2BB05D2intranet_cal.xml',0,1,'../module/webcal/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F20FC02DA4B8637A755046DEE3','0','1',20021212000000,NULL,00000000000000,'project_detail','Project Detail',NULL,0,1,'../module/project_tracking/project_detail/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F30D6D4A72F6871D6DB046BCB6','0','1',20030130000000,'1',20030130000000,'fact_figure','Makin Fact & Figure','F30D9033E38F2636EB8A781FF9fact_figure.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','title');
INSERT INTO descriptor VALUES ('F312A7DFF0D600D4866CCD4E28','0','1',20030319140417,'1',20030319140417,'makin_director','Board of Directors','F312A8F2B8E5970E0FB34298CAmakin_director.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name');
INSERT INTO descriptor VALUES ('F3132892F57B236985F02B3F4F','0','1',20030318111532,'1',20030318111532,'subsidary','Company Subsidiary','F3132E850E5844BA529DAB71EAsubsidary.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','name');
INSERT INTO descriptor VALUES ('F3364969091612B580AA048D2F','0','1',20030207000000,NULL,00000000000000,'project_category','Project Category','F3364A2BBD637707AE3BDFF2A2project_category.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','code');
INSERT INTO descriptor VALUES ('F38E7A30DCFFF83E486D127CCE','0','1',20030224131739,NULL,00000000000000,'support','Support','F38E7AB3E69C3C7012B53514Esupport.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F3C2963AD8A291EF75E1311711','0','1',20030306160837,NULL,00000000000000,'news_portal','Portal News','F3C296D4B7BD61D6AF35236209news_portal.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F3C2998AFDB590924800ACCC95','0','1',20030306161200,NULL,00000000000000,'press_release_portal','Portal Press Release','F3C299ED617911DCD21F77671Dpress_release_portal.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F3FF0CB5A1F1B01FDBEF1218F6','0','1',20030318102217,'1',20030318102217,'site_map','Site Map Makin Portal','F3FF1589275839556819920595site_map.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('F3FF36F3D74BBBACD7A0D5E93A','0','1',20030318111517,'1',20030318111517,'makin_subsidary','Makin & Subsidiary','F3FF50CA76AF5A7FA334794A35makin_subsidary.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('F501956E01E1C9C2DFFEC614DB','0','1',20030507144649,NULL,00000000000000,'blueoxygen_recipe','Blueoxygen Recipe','F5019638B7BC20088017CBE407blueoxygen_recipe.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('F50196413176576A64F6F27A86','0','1',20030507144747,'1',20030507144747,'blueoxygen_review','Blueoxygen Review','F5019719FA5B4020A109DD1AA5blueoxygen_review.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('F501EBD2F6B03958384BD30C50','0','1',20030507162054,NULL,00000000000000,'blueoxygen_project','Blueoxygen Project','F501EC5B2ABA18CDE4BBDE4520blueoxygen_project.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','headline');
INSERT INTO descriptor VALUES ('F6D5663C181596843F9DAFEC8A','0','1',20030829091652,'1',20030829091652,'activity_journal','Activity Journal','F74B7D1DF5BE649752143CD9E2journal.xml',0,1,'../module/activity/journal/index.jsp?','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F6DBF0819B1E35DD4776A0BD24','0','1',20030829092533,'1',20030829092533,'activity_journal_detail','Activity Journal Detail','F74B850E5677B305207CF691D0journal_detail.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F72286592BB6E269D3A30B39AF','0','1',20030821102911,'1',20030821102911,'user_role','User Role','F7228C72A2853EBA53D7F373Buser_role.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F74B611636B6B145443194E9','0','1',20030829092715,'1',20030829092715,'activity_task','Activity Task',NULL,0,1,'../module/activity/task/index.jsp?','1','','EE185CE0B82B41C1724F284685','id');
INSERT INTO descriptor VALUES ('F76A9583B418F4FB3D261C1D53','0','1',20030904101328,NULL,00000000000000,'usersite_v2.0','User Manager ver.2.0',NULL,0,1,'../module/usersite_v2.0/index.jsp?','1','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('F7AEF1A3414EC7F52B452E9562','0','1',20030917164807,NULL,00000000000000,'task_comment','Task Comment','F7AEF31370158C908F33061FBCtask_comment.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','id');
INSERT INTO descriptor VALUES ('F7D31BDF6B4015D5066BA1910E','0','1',20030924172542,'1',20030924172542,'activity_project','Activity Project',NULL,0,1,'../module/activity/project/index.jsp?','1','','EE185CE0B82B41C1724F284685','id');
INSERT INTO descriptor VALUES ('F8EE2D45B9F7549B13124FA380','0','1',20031119124622,'1',20031119124622,'report','Report','F8F28661A5DC903BB8EC3F802Dreport.xml',0,1,'../module/report/index.jsp?','1','','EE185CE0B82B41C1724F284685','id');
INSERT INTO descriptor VALUES ('F9552F9670D50E99AC4C09F898','0','1',20031208164538,'1',20031208164538,'notulen','notulen 1','F9553A42B09653043DAC558888notulen.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('FA1212E66C7D445B11998E48BB','0','1',20040114085107,NULL,00000000000000,'report_security','report_security','FA12132015E9571BD695A473D6report_security.xml',0,1,'','0','','EE185CE0B82B41C1724F284685','');
INSERT INTO descriptor VALUES ('ff808081055bcd7701055bcde408','0','1',20050728000000,'1',20050728000000,'alex','aaa','ass',1,1,'sss','1',NULL,NULL,'description');

--
-- Table structure for table `descriptor_group`
--

CREATE TABLE descriptor_group (
  id varchar(28) NOT NULL default '',
  group_id varchar(128) NOT NULL default '',
  folder varchar(128) NOT NULL default '',
  description varchar(125) NOT NULL default '',
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY code (group_id)
) TYPE=MyISAM;

--
-- Dumping data for table `descriptor_group`
--

INSERT INTO descriptor_group VALUES ('0','0','/','Based Location',1,'',00000000000000,'',00000000000000,'','1',NULL);
INSERT INTO descriptor_group VALUES ('EACA5B0EF8528DAC9EB73F3E92','product_item','product/item','Item Descriptor Group',1,'1',20011215185539,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `document_category`
--

CREATE TABLE document_category (
  id varchar(28) NOT NULL default '',
  code char(3) NOT NULL default '',
  iparentcode varchar(28) default NULL,
  url_category_image varchar(255) default NULL,
  description varchar(125) NOT NULL default '',
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `document_category`
--

INSERT INTO document_category VALUES ('F59B62F8C13BC4BBA141E1192B','AR','',NULL,'Article',1,'F162B448063A847319E641EF7D',20030606113237,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_category VALUES ('F99D1D2EAB4B52F2DC78F66670','RM','',NULL,'Report Meeting',1,'F36F8BFFF97F8A16505B8305F7',20031222154652,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');

--
-- Table structure for table `document_pooling`
--

CREATE TABLE document_pooling (
  id varchar(28) NOT NULL default '',
  display_style varchar(20) default NULL,
  source varchar(50) default NULL,
  file_name varchar(50) default NULL,
  path varchar(50) default NULL,
  headline varchar(100) default NULL,
  subheadline varchar(100) default NULL,
  abstract text,
  body text,
  linktext varchar(50) default NULL,
  byline varchar(50) default NULL,
  creditline varchar(50) default NULL,
  copyright varchar(50) default NULL,
  editor_notes text,
  keywords varchar(50) default NULL,
  transmitted_date_time datetime NOT NULL default '0000-00-00 00:00:00',
  news_topic_id varchar(50) default NULL,
  company_id varchar(28) NOT NULL default '',
  category_id varchar(28) default NULL,
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `document_pooling`
--

INSERT INTO document_pooling VALUES ('F59B675227D5D80ADABEC3345',NULL,NULL,NULL,NULL,'Linux article from Business Week','','Linux article from Business Week. Explaining Morgan Stanley implementation.','Linux article from Business Week. Explaining Morgan Stanley implementation.',NULL,NULL,NULL,NULL,'',NULL,'2003-06-06 11:45:16',NULL,'F337B149F1D7EB47954BF7EF7','F59B62F8C13BC4BBA141E1192B',NULL,NULL,NULL,NULL,'F162B448063A847319E641EF7D',20030606114516,NULL,00000000000000,'0','ip','F185C351B2FAC396169017978F');

--
-- Table structure for table `document_security`
--

CREATE TABLE document_security (
  id varchar(28) NOT NULL default '',
  document_id varchar(28) NOT NULL default '',
  role_id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `document_security`
--

INSERT INTO document_security VALUES ('F375AD600B59D623ACA1EF7F8E','F375AC9633F991EA0C4509913F','all',NULL,00000000000000,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_security VALUES ('F2C1809ED9D3A33390ACE287E2','F2C17C055C9E1F8BF9F40BD5DA','1',NULL,20030115180214,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_security VALUES ('F375A15AD6BE9EE0D1E58228F','F375A1200F4494AEB157052D94','all',NULL,00000000000000,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_security VALUES ('F59B67C147D0D92827447CC188','F59B675227D5D80ADABEC3345','all','F162B448063A847319E641EF7D',20030606114516,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_security VALUES ('F375AA9FA36A872C5783F01A17','F375AA624CA723B427769655A3','all',NULL,00000000000000,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_security VALUES ('F375A603475C83E77F40953A99','F375A5CEE92A127A3C3089B244','all',NULL,00000000000000,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');

--
-- Table structure for table `document_upload`
--

CREATE TABLE document_upload (
  id varchar(28) NOT NULL default '',
  document_id varchar(28) NOT NULL default '',
  file_name varchar(255) NOT NULL default '',
  file_desc varchar(255) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `document_upload`
--

INSERT INTO document_upload VALUES ('F59B6DF3D2B5563F92D6169499','F59B675227D5D80ADABEC3345','F59B6DF3D2B5563F92D6169499BWEprintLinux.pdf','Busienss Week Linux','F162B448063A847319E641EF7D',20030606114516,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_upload VALUES ('F375A18754F2B083D7779E6617','F375A1200F4494AEB157052D94','F375A18754F2B083D7779E6617icon10.gif','tttttttttttt',NULL,00000000000000,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_upload VALUES ('F375A6462CC7F514AC3FE78C6C','F375A5CEE92A127A3C3089B244','F375A6462CC7F514AC3FE78C6Cemail.txt','fdsfsdafsda',NULL,00000000000000,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_upload VALUES ('F2C180D0B751093753053C8B74','F2C17C055C9E1F8BF9F40BD5DA','F2C180D0B751093753053C8B74AC Nielsen NetRating Web Access.txt','Nielsen',NULL,20030115180214,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_upload VALUES ('F375ADA8AD1322B08F43F9E70A','F375AC9633F991EA0C4509913F','F375ADA8AD1322B08F43F9E70Afelix.gif','dddddddddd',NULL,00000000000000,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO document_upload VALUES ('F375AB44BD3A33C186EB74EEEB','F375AA624CA723B427769655A3','F375AB44BD3A33C186EB74EEEBemoticon1.gif','fdasfsafasdf',NULL,00000000000000,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');

--
-- Table structure for table `employee_information`
--

CREATE TABLE employee_information (
  id varchar(28) NOT NULL default '',
  first_name varchar(125) NOT NULL default '',
  last_name varchar(125) default NULL,
  email varchar(125) default NULL,
  address1 varchar(225) default NULL,
  address2 varchar(225) default NULL,
  city varchar(125) default NULL,
  telp varchar(50) default NULL,
  position varchar(125) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `employee_information`
--

INSERT INTO employee_information VALUES ('F1BE6416DE694041934439A4DF','Frans','Thamura','frans@intercitra.com','Cempaka Putih tengah II Blok.C no.21','Jakarta Pusat','Jakarta','','Project Manager','F162B448063A847',20030108045722,'F162B448063A847',20030108045722,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO employee_information VALUES ('F1BF38F900B7E0BA0952936A49','Dedeng','Meilani','dedeng@intercitra.com','Cempaka Putih tengah II Blok.C no.21','Jakarta Pusat','Jakarta','','Programmer','F162B448063A847',20030108045801,'F162B448063A847',20030108045801,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO employee_information VALUES ('F29AA66CC6DEF22BF6522ABC4B','Budi','Hidayat','budi@intercitra.com','Cempaka Putih tengah II Blok.C no.21','Jakarta Pusat','Jakarta','','Programmer','F162B448063A847',20030108045830,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');

--
-- Table structure for table `event`
--

CREATE TABLE event (
  id varchar(28) NOT NULL default '',
  highlight varchar(255) NOT NULL default '',
  description text,
  brief text,
  event_date varchar(50) NOT NULL default '',
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  publish_flag tinyint(1) default '1',
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `event`
--

INSERT INTO event VALUES ('EE82378E08C2687C527DB8661F','test','','','20001010',NULL,NULL,NULL,NULL,1,1,'2',20020618145502,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');

--
-- Table structure for table `fact_figure`
--

CREATE TABLE fact_figure (
  id varchar(28) NOT NULL default '',
  title varchar(128) NOT NULL default '',
  abstract text,
  content text,
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `fact_figure`
--

INSERT INTO fact_figure VALUES ('F30D90E2A1C592CC2D292166BB','fact1','<p class=\"mainct\"><strong>Your Privacy is taken seriously at makingroup.com.</strong></p><p class=\"mainct\">The data we collect is used to  give us demographic information about the entire makingroup.com audience to improve the makingroup.com service and help us sell the advertising that  supports the site. The personal information you  provide lets us inform you about updates to the service and notify you of products and services  of makingroup.com.</p>','<p class=\"mainct\"><strong>Your Privacy is taken seriously at makingroup.com.</strong></p><p class=\"mainct\">The data we collect is used to  give us demographic information about the entire makingroup.com audience to improve the makingroup.com service and help us sell the advertising that  supports the site. The personal information you  provide lets us inform you about updates to the service and notify you of products and services  of makingroup.com.</p><p class=\"mainct\">makingroup.com will not give out personal information to any third parties unless authorized. If you order from us after visiting Sonys Playstation.com web site you authorize us to forward your PlayStation Underground registration number to Sony along with any information regarding the products you have purchased. </p><p class=\"mainct\">If at any time you would no longer  like to take part in our newsletter program, simply e-mail us via the address that is provided at the bottom of any newsletter that we send to you  with the UN-SUBSCRIBE command and you will be taken off of the list within ten business days. </p><p class=\"mainct\"><br><strong>Still Have a Question?</strong></p><p><span class=\"mainct\">If you didnt find what you needed here, feel free to call our Customer Service center at 1-877-432-9675 to speak with a Customer Service Representative. If you prefer, contact us by e-mail. Hours of operation: Open  7 days a week, 8:00 am to midnight EST. </span><br></p> ','F30D9197F7234506713DEB1AD1image01.jpg',NULL,'F162B448063A847',20030130183455,'F162B448063A847',20030130183455,'0','ic','F185BD3FDC5CC7989A3CED51A1');

--
-- Table structure for table `faq`
--

CREATE TABLE faq (
  id varchar(28) NOT NULL default '',
  category_id varchar(28) default NULL,
  question text NOT NULL,
  answer1 text NOT NULL,
  answer2 text,
  answer3 text,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `faq`
--


--
-- Table structure for table `image_size`
--

CREATE TABLE image_size (
  id varchar(28) NOT NULL default '',
  code char(2) NOT NULL default '',
  description varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY code (code)
) TYPE=MyISAM;

--
-- Dumping data for table `image_size`
--


--
-- Table structure for table `intranet_cal`
--

CREATE TABLE intranet_cal (
  id bigint(20) NOT NULL auto_increment,
  start_date datetime NOT NULL default '0000-00-00 00:00:00',
  end_date datetime NOT NULL default '0000-00-00 00:00:00',
  subject varchar(150) NOT NULL default '',
  description varchar(255) NOT NULL default '',
  status int(11) NOT NULL default '0',
  priority int(11) NOT NULL default '0',
  last_mod datetime NOT NULL default '0000-00-00 00:00:00',
  create_by varchar(28) default NULL,
  creator varchar(100) NOT NULL default '',
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date datetime NOT NULL default '0000-00-00 00:00:00',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  all_day tinyint(1) default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `intranet_cal`
--

INSERT INTO intranet_cal VALUES (8,'2002-12-25 09:00:00','2002-12-26 10:00:00','mmm','mmm',0,0,'0000-00-00 00:00:00','EEA063FE983851EB34BC9EB3B8','Frans',20021221062952,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (9,'2002-12-25 09:00:00','2002-12-25 10:20:00','nnnnnnnn','',0,0,'0000-00-00 00:00:00','1','Administrator',20021221064639,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (7,'2002-12-25 10:00:00','2002-12-25 20:00:00','Meeting Kemana','Testing',0,0,'0000-00-00 00:00:00','EEA063FE983851EB34BC9EB3B8','Frans',20021221062914,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (6,'2002-12-20 12:00:00','2002-12-20 13:00:00','thshgzsdrg','',0,0,'0000-00-00 00:00:00','1','Administrator',20021221062414,NULL,'0000-00-00 00:00:00','0','ic',NULL,1);
INSERT INTO intranet_cal VALUES (116,'2003-01-23 12:00:00','2003-01-23 13:00:00','ccccccccc','',0,0,'0000-00-00 00:00:00','1','Administrator',20030130103702,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (117,'2003-02-04 10:00:00','2003-02-04 11:00:00','aaaaaaaaaaaaaaa','',0,0,'0000-00-00 00:00:00','1','Administrator',20030204102138,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (19,'2002-12-17 12:00:00','2002-12-17 13:00:00','efrawegaw','',0,0,'0000-00-00 00:00:00','EEA063FE983851EB34BC9EB3B8','Frans',20030108054245,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (118,'2003-02-04 17:00:00','2003-02-04 18:00:00','bbbbbbbbbbbbb','',0,0,'0000-00-00 00:00:00','1','Administrator',20030204102145,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (53,'2003-01-23 08:00:00','2003-01-23 09:00:00','hjkhkhjkhjkhkhj','hjhjhjhjhj',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030123191754,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (131,'2003-02-08 14:00:00','2003-02-10 21:00:00','Ketemu Budi','Ketemu Budi',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030207163721,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (123,'2003-02-04 14:00:00','2003-02-04 15:00:00','Makin Makina','Makin Makina',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030204111628,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (119,'2003-02-04 08:00:00','2003-02-04 13:00:00','cccccccccc','',0,0,'0000-00-00 00:00:00','1','Administrator',20030204102157,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (120,'2003-02-04 09:00:00','2003-02-04 18:00:00','dddddddddde','',0,0,'0000-00-00 00:00:00','1','Administrator',20030204102233,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (121,'2003-02-05 15:00:00','2003-02-06 13:00:00','vvvvv vvvvvvvv','',0,0,'0000-00-00 00:00:00','1','Administrator',20030204102313,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (122,'2003-02-05 11:00:00','2003-02-06 12:00:00','xxxxxxxxx cccccccc','',0,0,'0000-00-00 00:00:00','1','Administrator',20030204102330,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (57,'2003-01-24 08:00:00','2003-01-24 09:00:00','Nginex','12345',0,0,'0000-00-00 00:00:00','1','Administrator',20030124064122,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (128,'2003-02-04 12:00:00','2003-02-04 22:00:00','ggggggggggggg','',0,0,'0000-00-00 00:00:00','1','Administrator',20030207163434,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (124,'2003-02-04 15:00:00','2003-02-04 16:00:00','meeting dengan PAk Snny','Pak Sonny Meeting',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030204111824,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (125,'2003-02-04 19:00:00','2003-02-04 23:00:00','Mamamia','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030204111944,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (126,'2003-02-07 10:00:00','2003-02-07 14:00:00','adsafasf','a',0,0,'0000-00-00 00:00:00','1','Administrator',20030207163216,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (127,'2003-02-07 12:00:00','2003-02-08 13:00:00','xxxxxxxxx xxsssssss','',0,0,'0000-00-00 00:00:00','1','Administrator',20030207163303,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (130,'2003-02-08 14:00:00','2003-02-08 17:00:00','Makan Malam dengan Dedeng','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030207163706,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (129,'2003-02-08 14:00:00','2003-02-08 15:00:00','Makan Malam dengan Istri ke 2','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030207163649,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (140,'2003-02-05 21:00:00','2003-02-15 23:00:00','Budi kemana nih','kemana kek, bodo',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030218154327,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (141,'2003-02-08 17:00:00','2003-02-08 18:00:00','Makan Malam','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030210211031,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (142,'2003-02-08 20:00:00','2003-02-08 21:00:00','Ketupat Lindri','Ketupat Lindri',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030210211326,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (143,'2003-02-08 18:00:00','2003-02-08 20:00:00','Ketupat Lindry','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030210211341,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (144,'2003-02-17 08:00:00','2003-02-17 09:00:00','fgdsgdsgdsgd','dfsfsafdasf',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030217112103,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (145,'2003-02-18 10:00:00','2003-02-18 15:00:00','Budi Budi Budi','Budi Budi',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030218154227,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (87,'2003-01-24 08:00:00','2003-01-24 09:00:00','Pointing','Foolbook',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030129181624,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (132,'2003-02-08 14:00:00','2003-02-09 19:00:00','Bugs Bugs','Bygs',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030207163807,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (133,'2003-02-10 10:00:00','2003-02-10 11:00:00','Ketemu Budi','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030207163917,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (134,'2003-02-05 11:00:00','2003-02-05 16:00:00','Meeting Lagi Meeting Lagi','Cape meeting melulu',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030208095145,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (135,'2003-02-05 11:00:00','2003-02-05 14:00:00','Meeting ke -2','Meeting ke -2',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030208095304,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (136,'2003-02-05 12:00:00','2003-02-05 13:00:00','Meet Up','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030208100428,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (137,'2003-02-05 13:00:00','2003-02-05 14:00:00','Budi emang Hebat','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030208100444,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (138,'2003-02-05 13:00:00','2003-02-05 14:00:00','Dijodoin si budi','ai ah',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030218154705,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (139,'2003-02-05 13:00:00','2003-02-05 22:00:00','budi mau kawin','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030208100605,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (146,'2003-02-18 19:00:00','2003-02-18 20:00:00','pulang','mao pulang n tidur',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',00000000000000,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (147,'2003-02-24 08:00:00','2003-02-27 09:00:00','Meeting','Meeting dengan CEO Makin Group',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030221114229,NULL,'0000-00-00 00:00:00','0','ic',NULL,1);
INSERT INTO intranet_cal VALUES (148,'2003-03-04 08:00:00','2003-03-10 09:00:00','Director Meeting','Meeting all director nationally',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030221114305,NULL,'0000-00-00 00:00:00','0','ic',NULL,1);
INSERT INTO intranet_cal VALUES (149,'2003-03-04 08:00:00','2003-03-04 11:00:00','Golf','Golf dengan CEO Garuda',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030221115420,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (150,'2003-03-04 09:00:00','2003-03-04 10:00:00','Breakfast dengan Direktur Execom','Breakfast dengan Direktur Execom, bareng dengan CEO Garuda',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030221115448,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (151,'2003-03-05 10:00:00','2003-03-05 11:00:00','gbgbggadgabbbbbb','adadadadadad',0,0,'0000-00-00 00:00:00','1','Admin',20030305161409,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (152,'2003-03-05 10:00:00','2003-03-05 13:00:00','gseghashseh','drghesrhse',0,0,'0000-00-00 00:00:00','1','Admin',20030305161441,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (153,'2003-03-06 08:00:00','2003-03-06 09:00:00','fffffffffffffffffffffgggggggggggggggg','asdf',0,0,'0000-00-00 00:00:00','1','Admin',20030306104648,NULL,'0000-00-00 00:00:00','0','ic',NULL,1);
INSERT INTO intranet_cal VALUES (154,'2003-03-06 08:00:00','2003-03-06 12:00:00','feagaeg','ager',0,0,'0000-00-00 00:00:00','1','Admin',20030306104719,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (155,'2003-03-06 09:00:00','2003-03-06 11:00:00','bgshstr','bnar',0,0,'0000-00-00 00:00:00','1','Admin',20030306104748,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (156,'2003-03-03 08:00:00','2003-03-06 09:00:00','l;klk;lk;lk','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030320155541,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (157,'2003-03-01 08:00:00','2003-03-01 09:00:00','kkkk','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030320161503,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (158,'2003-04-01 08:00:00','2003-04-01 09:00:00','Makan pagi','Makan pagi',0,0,'0000-00-00 00:00:00','1','Admin',20030429083326,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (159,'2003-04-30 08:00:00','2003-04-30 09:00:00','Makan pagi','Makan pagi',0,0,'0000-00-00 00:00:00','1','Admin',20030429083412,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (160,'2003-04-29 12:00:00','2003-04-29 13:00:00','makan siang','makan siang dimana nih nanti',0,0,'0000-00-00 00:00:00','1','Admin',20030429104542,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (161,'2003-04-29 12:00:00','2003-04-29 13:00:00','makan lagi ah','makan-makan',0,0,'0000-00-00 00:00:00','1','Admin',20030429104642,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (163,'2003-06-04 08:00:00','2003-06-04 09:00:00','meen','gkjashfk.jhaskc',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030604130257,NULL,'0000-00-00 00:00:00','0','ic',NULL,1);
INSERT INTO intranet_cal VALUES (164,'2003-06-12 09:00:00','2003-06-12 10:00:00','bhkjfhfh','ncnmnZMCn',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030604225341,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (166,'2003-06-04 08:00:00','2003-06-04 09:00:00','bgj','b,nbb,',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Furansu',20030604225524,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (167,'2003-09-30 12:00:00','2003-09-12 13:00:00','lunch break','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030912104543,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (168,'2003-09-30 12:00:00','2003-09-12 13:00:00','lunch break','',0,0,'0000-00-00 00:00:00','F162B448063A847319E641EF7D','Makin',20030912104543,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (169,'2003-09-18 14:00:00','2003-09-18 16:00:00','Meeting with Handojo','Discuss about marketing strategy and working together to promote Universal Workspace',0,0,'0000-00-00 00:00:00','1','Admin',20030917143530,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (170,'2003-10-07 11:00:00','2003-10-07 17:00:00','Meeting with Bauma','Meeting with Bauma to talk about Absensi',0,0,'0000-00-00 00:00:00','F3FB0D6714905E04E2586A8E1A','Aris',20031007102225,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (171,'2003-10-08 08:00:00','2003-10-08 22:00:00','Internal Meeting','Meeting Intercitra Internal',0,0,'0000-00-00 00:00:00','F3FB0D6714905E04E2586A8E1A','Aris',20031007102322,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);
INSERT INTO intranet_cal VALUES (172,'2003-10-15 08:00:00','2003-10-15 13:00:00','Meeting with Umar','Meeting with Umar for Project Management Improvement',0,0,'0000-00-00 00:00:00','F36F8BFFF97F8A16505B8305F7','Dedeng',20031007102452,NULL,'0000-00-00 00:00:00','0','ic',NULL,1);
INSERT INTO intranet_cal VALUES (173,'2003-11-17 14:00:00','2003-11-17 15:00:00','Trikomsel','Presentasi di Trikomsel tentang Universal Workspace',0,0,'0000-00-00 00:00:00','F36F8BFFF97F8A16505B8305F7','Dedeng',20031117103220,NULL,'0000-00-00 00:00:00','0','ic',NULL,0);

--
-- Table structure for table `jiveattachment`
--

CREATE TABLE jiveattachment (
  attachmentID bigint(20) NOT NULL default '0',
  messageID bigint(20) NOT NULL default '0',
  fileName varchar(255) NOT NULL default '',
  fileSize int(11) NOT NULL default '0',
  contentType varchar(50) NOT NULL default '',
  creationDate varchar(15) NOT NULL default '',
  modificationDate varchar(15) NOT NULL default '',
  PRIMARY KEY  (attachmentID),
  KEY jiveAttachment_messageID_idx (messageID)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveattachment`
--


--
-- Table structure for table `jiveattachmentprop`
--

CREATE TABLE jiveattachmentprop (
  attachmentID bigint(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  propValue text NOT NULL,
  PRIMARY KEY  (attachmentID,name)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveattachmentprop`
--


--
-- Table structure for table `jivecategory`
--

CREATE TABLE jivecategory (
  categoryID bigint(20) NOT NULL default '0',
  name varchar(255) NOT NULL default '',
  description text,
  creationDate varchar(15) NOT NULL default '',
  modificationDate varchar(15) NOT NULL default '',
  lft int(11) NOT NULL default '0',
  rgt int(11) NOT NULL default '0',
  PRIMARY KEY  (categoryID),
  KEY jiveCategory_lft_idx (lft),
  KEY jiveCategory_rgt_idx (rgt)
) TYPE=MyISAM;

--
-- Dumping data for table `jivecategory`
--

INSERT INTO jivecategory VALUES (1,'root',' ','0','0',1,2);

--
-- Table structure for table `jivecategoryprop`
--

CREATE TABLE jivecategoryprop (
  categoryID bigint(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  propValue text NOT NULL,
  PRIMARY KEY  (categoryID,name)
) TYPE=MyISAM;

--
-- Dumping data for table `jivecategoryprop`
--


--
-- Table structure for table `jiveforum`
--

CREATE TABLE jiveforum (
  forumID bigint(20) NOT NULL default '0',
  name varchar(255) NOT NULL default '',
  description text,
  modDefaultThreadVal bigint(20) NOT NULL default '0',
  modMinThreadVal bigint(20) NOT NULL default '0',
  modDefaultMsgVal bigint(20) NOT NULL default '0',
  modMinMsgVal bigint(20) NOT NULL default '0',
  creationDate varchar(15) NOT NULL default '',
  modificationDate varchar(15) NOT NULL default '',
  categoryID bigint(20) NOT NULL default '0',
  categoryIndex int(11) NOT NULL default '0',
  PRIMARY KEY  (forumID),
  KEY jiveForum_name_idx (name(10)),
  KEY jiveForum_cat_idx (categoryID)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveforum`
--

INSERT INTO jiveforum VALUES (1,'Testing Forum','Semua uneq2 yang anda rasakan boleh diutarakan disini',1,1,1,1,'001068450625919','001068516997909',1,0);

--
-- Table structure for table `jiveforumprop`
--

CREATE TABLE jiveforumprop (
  forumID bigint(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  propValue text NOT NULL,
  PRIMARY KEY  (forumID,name)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveforumprop`
--


--
-- Table structure for table `jivegroup`
--

CREATE TABLE jivegroup (
  groupID bigint(20) NOT NULL default '0',
  name varchar(50) NOT NULL default '',
  description varchar(255) default NULL,
  creationDate varchar(15) NOT NULL default '',
  modificationDate varchar(15) NOT NULL default '',
  PRIMARY KEY  (groupID),
  KEY jiveGroup_name_idx (name(10)),
  KEY jiveGroup_cDate_idx (creationDate)
) TYPE=MyISAM;

--
-- Dumping data for table `jivegroup`
--


--
-- Table structure for table `jivegroupperm`
--

CREATE TABLE jivegroupperm (
  objectType int(11) NOT NULL default '0',
  objectID bigint(20) NOT NULL default '0',
  groupID bigint(20) NOT NULL default '0',
  permission int(11) NOT NULL default '0',
  KEY jiveGroupPerm_object_idx (objectType,objectID),
  KEY jiveGroupPerm_groupID_idx (groupID)
) TYPE=MyISAM;

--
-- Dumping data for table `jivegroupperm`
--


--
-- Table structure for table `jivegroupprop`
--

CREATE TABLE jivegroupprop (
  groupID bigint(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  propValue text NOT NULL,
  PRIMARY KEY  (groupID,name)
) TYPE=MyISAM;

--
-- Dumping data for table `jivegroupprop`
--


--
-- Table structure for table `jivegroupuser`
--

CREATE TABLE jivegroupuser (
  groupID bigint(20) NOT NULL default '0',
  userID bigint(20) NOT NULL default '0',
  administrator int(11) NOT NULL default '0',
  PRIMARY KEY  (groupID,userID,administrator)
) TYPE=MyISAM;

--
-- Dumping data for table `jivegroupuser`
--


--
-- Table structure for table `jiveid`
--

CREATE TABLE jiveid (
  idType int(11) NOT NULL default '0',
  id bigint(20) NOT NULL default '0',
  PRIMARY KEY  (idType)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveid`
--

INSERT INTO jiveid VALUES (0,2);
INSERT INTO jiveid VALUES (1,11);
INSERT INTO jiveid VALUES (2,31);
INSERT INTO jiveid VALUES (3,2);
INSERT INTO jiveid VALUES (4,1);
INSERT INTO jiveid VALUES (13,1);
INSERT INTO jiveid VALUES (14,2);

--
-- Table structure for table `jivemessage`
--

CREATE TABLE jivemessage (
  messageID bigint(20) NOT NULL default '0',
  parentMessageID bigint(20) default NULL,
  threadID bigint(20) NOT NULL default '0',
  forumID bigint(20) NOT NULL default '0',
  userID bigint(20) default NULL,
  subject varchar(255) default NULL,
  body text,
  modValue bigint(20) NOT NULL default '0',
  rewardPoints int(11) NOT NULL default '0',
  creationDate varchar(15) NOT NULL default '',
  modificationDate varchar(15) NOT NULL default '',
  PRIMARY KEY  (messageID),
  KEY jiveMessage_forumID_idx (forumID),
  KEY jiveMessage_threadID_idx (threadID),
  KEY jiveMessage_userID_idx (userID),
  KEY jiveMessage_forumID_modVal_idx (forumID,modValue),
  KEY jiveMessage_modValue_idx (modValue),
  KEY jiveMessage_cDate_idx (creationDate),
  KEY jiveMessage_mDate_idx (modificationDate)
) TYPE=MyISAM;

--
-- Dumping data for table `jivemessage`
--

INSERT INTO jivemessage VALUES (2,NULL,1,1,6,'Lagi Testing Forum neh...','Apa iya semua yang kita kerjakan disini tak bermanfaat?\r\n[u]masa sih....??[/u]\n\n\r\nMessage was edited by: Dedeng at Nov 10, 2003 2:52 PM\r\n',1,0,'001068450695519','001068450777517');
INSERT INTO jivemessage VALUES (3,2,1,1,6,'Re: Lagi Testing Forum neh...','reply....',1,0,'001068450969353','001068450969353');
INSERT INTO jivemessage VALUES (16,3,1,1,6,'Re: Lagi Testing Forum neh...','Testing lagi ah.....',1,0,'001068516952604','001068516952604');
INSERT INTO jivemessage VALUES (17,2,1,1,6,'Re: Lagi Testing Forum neh...','ini reply langsung dari gue...',1,0,'001068516978952','001068516978952');
INSERT INTO jivemessage VALUES (18,16,1,1,6,'Re: Lagi Testing Forum neh...','yang ini sih gak langsung',1,0,'001068516997909','001068516997909');

--
-- Table structure for table `jivemessageprop`
--

CREATE TABLE jivemessageprop (
  messageID bigint(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  propValue text NOT NULL,
  PRIMARY KEY  (messageID,name)
) TYPE=MyISAM;

--
-- Dumping data for table `jivemessageprop`
--

INSERT INTO jivemessageprop VALUES (2,'IP','127.0.0.1');
INSERT INTO jivemessageprop VALUES (3,'IP','127.0.0.1');
INSERT INTO jivemessageprop VALUES (16,'IP','192.168.0.41');
INSERT INTO jivemessageprop VALUES (17,'IP','192.168.0.41');
INSERT INTO jivemessageprop VALUES (18,'IP','192.168.0.41');

--
-- Table structure for table `jivemoderation`
--

CREATE TABLE jivemoderation (
  objectType bigint(20) NOT NULL default '0',
  objectID bigint(20) NOT NULL default '0',
  userID bigint(20) default NULL,
  modDate varchar(15) NOT NULL default '',
  modValue bigint(20) NOT NULL default '0',
  KEY jiveModeration_objectID_idx (objectID),
  KEY jiveModeration_objectType_idx (objectType),
  KEY jiveModeration_userID_idx (userID)
) TYPE=MyISAM;

--
-- Dumping data for table `jivemoderation`
--


--
-- Table structure for table `jivereadtracker`
--

CREATE TABLE jivereadtracker (
  userID bigint(20) NOT NULL default '0',
  objectType int(11) NOT NULL default '0',
  objectID bigint(20) NOT NULL default '0',
  readDate varchar(15) NOT NULL default '',
  PRIMARY KEY  (userID,objectType,objectID)
) TYPE=MyISAM;

--
-- Dumping data for table `jivereadtracker`
--


--
-- Table structure for table `jivereward`
--

CREATE TABLE jivereward (
  userID bigint(20) NOT NULL default '0',
  creationDate varchar(15) NOT NULL default '',
  rewardPoints bigint(20) NOT NULL default '0',
  messageID bigint(20) default NULL,
  threadID bigint(20) default NULL,
  KEY jiveReward_userID_idx (userID),
  KEY jiveReward_creationDate_idx (creationDate),
  KEY jiveReward_messageID_idx (messageID),
  KEY jiveReward_threadID_idx (threadID)
) TYPE=MyISAM;

--
-- Dumping data for table `jivereward`
--


--
-- Table structure for table `jivethread`
--

CREATE TABLE jivethread (
  threadID bigint(20) NOT NULL default '0',
  forumID bigint(20) NOT NULL default '0',
  rootMessageID bigint(20) NOT NULL default '0',
  modValue bigint(20) NOT NULL default '0',
  rewardPoints int(11) NOT NULL default '0',
  creationDate varchar(15) NOT NULL default '',
  modificationDate varchar(15) NOT NULL default '',
  PRIMARY KEY  (threadID),
  KEY jiveThread_forumID_idx (forumID),
  KEY jiveThread_modValue_idx (modValue),
  KEY jiveThread_cDate_idx (creationDate),
  KEY jiveThread_mDate_idx (modificationDate),
  KEY jiveThread_forumID_modVal_idx (forumID,modValue)
) TYPE=MyISAM;

--
-- Dumping data for table `jivethread`
--

INSERT INTO jivethread VALUES (1,1,2,1,0,'001068450695519','001068516997909');

--
-- Table structure for table `jivethreadprop`
--

CREATE TABLE jivethreadprop (
  threadID bigint(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  propValue text NOT NULL,
  PRIMARY KEY  (threadID,name)
) TYPE=MyISAM;

--
-- Dumping data for table `jivethreadprop`
--


--
-- Table structure for table `jiveuser`
--

CREATE TABLE jiveuser (
  userID bigint(20) NOT NULL default '0',
  username varchar(30) NOT NULL default '',
  passwordHash varchar(32) NOT NULL default '',
  name varchar(100) default NULL,
  nameVisible int(11) NOT NULL default '0',
  email varchar(100) NOT NULL default '',
  emailVisible int(11) NOT NULL default '0',
  creationDate varchar(15) NOT NULL default '',
  modificationDate varchar(15) NOT NULL default '',
  PRIMARY KEY  (userID),
  UNIQUE KEY username (username),
  KEY jiveUser_username_idx (username(10)),
  KEY jiveUser_hash_idx (passwordHash),
  KEY jiveUser_cDate_idx (creationDate)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveuser`
--

INSERT INTO jiveuser VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','Administrator',1,'admin@example.com',1,'0','0');

--
-- Table structure for table `jiveuserperm`
--

CREATE TABLE jiveuserperm (
  objectType int(11) NOT NULL default '0',
  objectID bigint(20) NOT NULL default '0',
  userID bigint(20) NOT NULL default '0',
  permission int(11) NOT NULL default '0',
  KEY jiveUserPerm_object_idx (objectType,objectID),
  KEY jiveUserPerm_userID_idx (userID)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveuserperm`
--

INSERT INTO jiveuserperm VALUES (17,-1,1,59);
INSERT INTO jiveuserperm VALUES (17,-1,-1,0);
INSERT INTO jiveuserperm VALUES (17,-1,0,1);
INSERT INTO jiveuserperm VALUES (17,-1,0,2);
INSERT INTO jiveuserperm VALUES (0,1,0,0);
INSERT INTO jiveuserperm VALUES (0,1,0,2);
INSERT INTO jiveuserperm VALUES (0,1,0,1);

--
-- Table structure for table `jiveuserprop`
--

CREATE TABLE jiveuserprop (
  userID bigint(20) NOT NULL default '0',
  name varchar(100) NOT NULL default '',
  propValue text NOT NULL,
  PRIMARY KEY  (userID,name)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveuserprop`
--


--
-- Table structure for table `jiveuserreward`
--

CREATE TABLE jiveuserreward (
  userID bigint(20) NOT NULL default '0',
  rewardPoints int(11) NOT NULL default '0',
  PRIMARY KEY  (userID,rewardPoints)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveuserreward`
--


--
-- Table structure for table `jiveuserroster`
--

CREATE TABLE jiveuserroster (
  userID bigint(20) NOT NULL default '0',
  subUserID bigint(20) NOT NULL default '0',
  PRIMARY KEY  (userID,subUserID)
) TYPE=MyISAM;

--
-- Dumping data for table `jiveuserroster`
--


--
-- Table structure for table `jivewatch`
--

CREATE TABLE jivewatch (
  userID bigint(20) NOT NULL default '0',
  objectID bigint(20) NOT NULL default '0',
  objectType bigint(20) NOT NULL default '0',
  watchType int(11) NOT NULL default '0',
  expirable int(11) NOT NULL default '0',
  PRIMARY KEY  (userID,objectID,objectType,watchType),
  KEY jiveWatch_userID_idx (userID),
  KEY jiveWatch_objectID_idx (objectID),
  KEY jiveWatch_objectType_idx (objectType)
) TYPE=MyISAM;

--
-- Dumping data for table `jivewatch`
--

INSERT INTO jivewatch VALUES (6,1,1,0,1);
INSERT INTO jivewatch VALUES (6,1,0,0,1);

--
-- Table structure for table `job_position`
--

CREATE TABLE job_position (
  id varchar(28) NOT NULL default '',
  name varchar(150) NOT NULL default '',
  description varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `job_position`
--

INSERT INTO job_position VALUES ('F2E8E250BAAE253CBC93B60FFB','Project Manager','','1',20030123000000,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO job_position VALUES ('F2E8E299E96959106BE15AF29B','Direktur Utama','','1',20030123000000,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `makin_director`
--

CREATE TABLE makin_director (
  id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  position varchar(128) NOT NULL default '',
  curiculum_vitae text,
  url_image1 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date datetime NOT NULL default '0000-00-00 00:00:00',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `makin_director`
--

INSERT INTO makin_director VALUES ('F312B3113B9A55D45AE41B5F73','Harianto Sutanto','Presiden Komisaris','######-cv detail######','F312B5A5543F5F9AF278532ACAsw.jpg','F162B448063A847',20030325122243,'F162B448063A847319E641EF7D','2003-03-25 12:22:43','0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO makin_director VALUES ('F312B60278CEAC24F96D8A3E3E','Bambang Harto Tjahjono','Wakil Presiden Komisaris','######-CV Detail########\r\nName :\r\naddress :\r\n','F312B6B1B3977FB21056DEF7EAsw.jpg','F162B448063A847',20030319141652,'F162B448063A847319E641EF7D','2003-03-19 14:16:52','0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO makin_director VALUES ('F4049E0F09488520CCC5AD7FED','Karta Rajasa','fdasfasfdas','fsdafasfdasfas','','F162B448063A847319E641EF7D',20030325122209,'F162B448063A847319E641EF7D','2003-03-25 12:22:09','0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO makin_director VALUES ('F4049BEBAC99B406F82B6CB1EC','test','Direktur Pelaksana','####-CV Detail########',NULL,'F162B448063A847319E641EF7D',20030319114924,NULL,'0000-00-00 00:00:00','0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO makin_director VALUES ('F404A350FBA3DDF84325002C41','test lagi ah','dkjdslfjkasklj','kjsdklajflaskjfdaskl','','F162B448063A847319E641EF7D',20030319140449,'F162B448063A847319E641EF7D','2003-03-19 14:04:49','0','ic','F185BD3FDC5CC7989A3CED51A1');

--
-- Table structure for table `makin_subsidary`
--

CREATE TABLE makin_subsidary (
  id varchar(28) NOT NULL default '',
  headline varchar(128) NOT NULL default '',
  url_page_collection varchar(128) NOT NULL default '',
  detail text,
  url_image1 varchar(255) default NULL,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `makin_subsidary`
--

INSERT INTO makin_subsidary VALUES ('F3FF5147D440C9419659788CA6','Board Of Directors','company_bod','Detail Board Of Directors\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Makin & Subsidiary##>search (Board Of Directors)\r\n<br>','F3FF562FFE8DF87B2491ACA8CAbod_icon.gif','F162B448063A847',20030318111451,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO makin_subsidary VALUES ('F3FF56FA82986E8090B7889445','Line Of Business','company_lob','Detail Line Of Business\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Makin & Subsidiary##>search (Line Of Business)\r\n<br>','F3FF5820354173ED4AD4C5B812lob_icon.gif','F162B448063A847',20030318111658,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO makin_subsidary VALUES ('F3FF582779228A15DE7C8FEE5B','Company Structure','company_structure','Detail Company Structure\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Makin & Subsidiary##>search (Company Structure)\r\n<br>','F4049F122167794EEB56BCC1C8comp_icon.gif','F162B448063A847',20030320145903,'F162B448063A847',20030320145903,'0','ic','F185BD3FDC5CC7989A3CED51A1');

--
-- Table structure for table `member_bengkel`
--

CREATE TABLE member_bengkel (
  id varchar(28) NOT NULL default '',
  membership_code_interlokal char(2) NOT NULL default '',
  membership_code_kode_pos varchar(4) NOT NULL default '',
  membership_code_digit varchar(9) NOT NULL default '',
  first_name varchar(35) NOT NULL default '',
  last_name varchar(35) default NULL,
  password varchar(15) NOT NULL default '',
  email varchar(125) default NULL,
  sex char(2) NOT NULL default '',
  ktp varchar(30) NOT NULL default '',
  martial_status varchar(15) NOT NULL default '',
  address1 varchar(55) default NULL,
  city varchar(15) default NULL,
  post_code varchar(10) NOT NULL default '',
  province varchar(35) NOT NULL default '',
  country varchar(35) NOT NULL default '',
  telp varchar(35) NOT NULL default '',
  fax varchar(35) NOT NULL default '',
  handphone varchar(35) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `member_bengkel`
--


--
-- Table structure for table `module_function`
--

CREATE TABLE module_function (
  id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  description varchar(255) default NULL,
  descriptor_id varchar(28) default NULL,
  iparent varchar(28) default '0',
  ref_desc varchar(255) default 'id',
  viewall_flag tinyint(1) default '1',
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id char(2) NOT NULL default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `module_function`
--

INSERT INTO module_function VALUES ('1','','User Management','25','E8D32F8713656B89EF6796025F','id',1,1,NULL,20020529013950,'1',20020413112504,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('11','','BackEnd User','13','1','first_name',1,1,NULL,20020529013950,'1',20010712222254,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('12','','User Role','14','1','name',1,1,NULL,20020529013950,NULL,00000000000000,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('23','','Descriptor Manager','1','E8D32F8713656B89EF6796025F','description',0,1,NULL,20020529013950,'1',20020413113517,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('25','','Section','7','23','description',0,1,NULL,20020529013950,'1',20010712222005,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('26','','Category','6','23','description',0,1,NULL,20020529013950,'1',20010712222226,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('3','','Content Manager','25','0','id',1,1,NULL,20020529013950,'1',20020330093516,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('35','','Section','7','3','description',0,1,NULL,20020529013950,'1',20010712222245,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('36','','Category','6','3','description',0,1,NULL,20020529013950,'1',20010909173524,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8D4BC0E76909677DF21CAFE8E','','Assign OSML to Site','E8D4B8FCEB555B9D2AD8D143F6','ED2D8E6981552183D56CF629BA','id',0,1,'1',20020529013950,'1',20020413112621,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('4','','Workflow Designer','25','0','id',1,1,NULL,20020529013950,'1',20010712230818,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ECE4EFFA9FAC1F0A6BD1F28156','','Site','2','E8D33058A24E65A33F1BD6FCCC','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('42','','WF Role','14','4','name',1,1,NULL,20020529013950,NULL,00000000000000,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('51','','Module Function','31','ED2D8E6981552183D56CF629BA','description',0,1,NULL,20020529013950,'1',20020413112924,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('52','','Role Privilage','32','ED2D8E6981552183D56CF629BA','role_id',0,1,NULL,20020529013950,'1',20020413112300,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('6','','Content Editor','25','0','id',1,1,NULL,20020529013950,'1',20010712230833,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('61','','Article','23','EE1A5E08C260764DF3D46FCC84','id',0,1,NULL,20020617135937,'1',20020617135937,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('62','','Template','22','EE39F5854E5520F32410A32496','name',0,1,NULL,20020604141145,'1',20020604141145,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('63','','Ads Banner','25','E7B5F42F47F3BDBD009F4A70F4','id',0,1,NULL,20020529013950,'1',20011215182246,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('64','','Ads Product','26','E7B5F42F47F3BDBD009F4A70F4','id',0,1,NULL,20020529013950,'1',20011215182250,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E7B5A7F5C033744C200FEC899D','','Net Usage','E7A780DC22C766324AD6580578','E7B5F42F47F3BDBD009F4A70F4','id',0,1,'1',20020529013950,'1',20010909151308,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E7B5F42F47F3BDBD009F4A70F4','','Toolbox','25','0','id',0,1,'1',20020529013950,'1',20010715164239,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E7B5F51BDE7170F031CCE84DF','','Poll','E7A781781AF25277BE8E49C2F4','E7B5F42F47F3BDBD009F4A70F4','question',1,1,'1',20020529013950,'1',20010715164632,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8D0C6E9E135A68EEFBC3D4C89','','Backend User ACL','E8D0C5535B234E62585FD6F09D','1','id',0,1,'1',20020529013950,'1',20010908153631,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8D32F8713656B89EF6796025F','','Site Manager','25','0','id',0,1,'1',20020529013950,'1',20010909020058,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED2EE37F5D7E051284ACBAD88F','','Global Parameter','ED2EE26B3A598A0761F1E1C84B','E8D32F8713656B89EF6796025F','id',0,1,'1',20020529013950,'1',20020413173349,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8D33058A24E65A33F1BD6FCCC','','Multi Site','2','E8D32F8713656B89EF6796025F','id',0,1,'1',20020712024801,'1',20020712024801,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8D330891A7C95E6B3B0EF5892','','OSML','E8D32766091238C92EFF1BA529','E8D33058A24E65A33F1BD6FCCC','description',1,1,'1',20020529013950,'1',20020330085325,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8D4AA6A8DC3BCE11B5562E09E','','Descriptor to Workflow','E8D4A7375EAF7B953F36C71292','23','description',1,1,'1',20020529013950,'1',20020330085255,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8D67AEA7A9FE58DF2AC73AAD1','','WF Action Status','17','4','description',1,1,'1',20020529013950,'1',20010909172125,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8D67C9AE5FA7732C75A8D0F4E','','WF Activity Status','18','4','description',1,1,'1',20020529013950,'1',20010909172216,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8F8A2421A2ED5C6F1CA05B57C','','WF Hierarchy','E8F8A0871FE7869F292A6CF810','4','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8F898DC38D6EA48412B3F8801','','Test','E8F88D6556F74E17CF1A3BD36D','4','id',1,0,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8F8A629B4B1D34EA31956BA5B','','OSML','E8D32766091238C92EFF1BA529','4','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('E8FA5E072DCE6E7D8916691658','','WF History','E8F706107AAD19C157222E67C9','4','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F50198ED2AA8765DFE7518E9D7','','Blueoxygen Review','F50196413176576A64F6F27A86','EE1A5E08C260764DF3D46FCC84','id',1,1,'1',20030507144957,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F501ED0D52A6EB2D3F32C2A2C7','','Blueoxygen Project','F501EBD2F6B03958384BD30C50','EE1A5E08C260764DF3D46FCC84','id',1,1,'1',20030507162153,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EACA42569235E40E79B3F48E5E','','UoM Master','EACA413AA6581697889BF0623D','EACA39DCA77602CFD35DAC87AE','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EACA445AB441EAAB8F3B4E0A23','','UoM Conversion','EACA415ECB83E40EE3F6D8CEE5','EACA39DCA77602CFD35DAC87AE','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED6B8F19E8636AF7C0E392380C','','Product','25','EACA39DCA77602CFD35DAC87AE','id',0,1,'1',20020529013950,'1',20020501165802,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED6B8F5DC6D51321B5FA837B8A','','Product','ED6B716DB53DFB1AD79B338A42','ED6B8F19E8636AF7C0E392380C','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EACA4C0C8758F5D749E5E2F31B','','Descriptor Group','EACA4B7F9596396050B73AB5EF','23','id',0,1,'1',20020529013950,'1',20020329155407,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EACB984A4A84AE7B4BCFD2EA62','','Glossary','E7A77FB00E6254A09B8342341C','E7B5F42F47F3BDBD009F4A70F4','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EACB987D3821EECE9043B8F2F2','','FAQ','E7A77F657568CBF5B670623DCD','E7B5F42F47F3BDBD009F4A70F4','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EACB98BAD5B257B77794FB1187','','Web Link','E7A781CFBA45A3CB44C81D8236','E7B5F42F47F3BDBD009F4A70F4','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EACB9FE3D2D4D16736E1335234','','To Do','EACB9F549BCDBA63D42F1EF9DF','E7B5F42F47F3BDBD009F4A70F4','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EAD2D2409EC1022AEBD088385','','Wizard','25','0','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EAD2D2CA783ABBEB6EE0B65346','','Wizard','EAD2D1C50028FD5258593CE983','EAD2D2409EC1022AEBD088385','wiz_name',1,1,'1',20020529013950,'1',20011218120529,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EAD2D3043647C032750043F759','','Wizard Steps','EAD2D1FB743D69F352E4779C1','EAD2D2409EC1022AEBD088385','name',0,1,'1',20020529013950,'1',20011218120514,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED2D68133C43DC88AF1CC899AB','','Component Manager','25','0','id',0,1,'1',20020529013950,'1',20020413104618,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EAF37D6694FD9EF45F21816545','','Product','EAF378C7E66A25F458B3A45F5F','EACA319302C5B45E20059EDF39','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EA6404C3F622A53B84FDC064FD','','Unit of Measure','EA63FEC28E8B17A920D615472F','ED8B72F73A774CE6156A3B8B50','id',0,1,'1',20020529013950,'1',20020501165439,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EA640520ACB3A436070A6B9C33','','UoM Class Conversion','EA63FF2E22296F72374F1A90BE','EACA39DCA77602CFD35DAC87AE','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EA6405843B661B7F000D4AB3FE','','UoM Class','EA63FF7EF31172D21CEC60386D','ED8B72F73A774CE6156A3B8B50','id',0,1,'1',20020529013950,'1',20020501165445,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EC27743B3895635D4C5A8AB066','','Sales Order','EC277327D3BE4303E75DA7385','EACA319302C5B45E20059EDF39','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EC279F578F5E11206ABAAC0654','','Program Mobil (Probil)','EC277FC604E5A3618F4E0DAC2A','EC279D8DE8320908065B827C6','id',0,1,'1',20020529013950,'1',20020221144615,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EC279FB9A17C2816412C15C2BE','','Program Motor (Protor)','EC277EFD42E80758F490BEE3CA','EC279D8DE8320908065B827C6','id',0,1,'1',20020529013950,'1',20020221144620,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EC279FEC498549224682BB8042','','Program Rumah (Promah)','EC27800E1C85E45260395CC14D','EC279D8DE8320908065B827C6','id',0,1,'1',20020529013950,'1',20020221144624,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EC27A032FA33BC19E9E61EB99E','','Program Sejahtera (Prosa)','EC277F3565FE498EEA44C87B0D','EC279D8DE8320908065B827C6','id',0,1,'1',20020529013950,'1',20020221145022,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EC27A078B9F81C3FC196DD724F','','Program Wisata/Ibadah Suci (Prowis)','EC277F6F724C601B96A094ECAC','EC279D8DE8320908065B827C6','id',0,1,'1',20020529013950,'1',20020221144643,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('38','','Descriptor','1','23','description',0,1,NULL,20020529013950,'1',20011125215915,'0','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED2D686287AFF8328D83B60279','','Component Library','ED2D5FC89DA4B624B60783E281','ED2D68133C43DC88AF1CC899AB','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED2D69489685DBC48502D9C8F8','','Component Methods','ED2D68F33A20F0789CE1B8CAD0','ED2D68133C43DC88AF1CC899AB','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED2D698299D342316F70D11755','','Component Package','ED2D68AA3264045584C17F100C','ED2D68133C43DC88AF1CC899AB','id',0,1,'1',20020529013950,'1',20020413104648,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED2D8E6981552183D56CF629BA','','Module Manager','25','E8D32F8713656B89EF6796025F','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED62A45A92D42FE1D91C1AD105','','UoM Conversion','25','ED8B72F73A774CE6156A3B8B50','id',0,1,'1',20020529013950,'1',20020501165453,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED667069063ABD4426DCD76E1E','','Intraclass Conversion','ED666557E377911B0E672412D7','ED62A45A92D42FE1D91C1AD105','id',0,1,'1',20020529013950,'1',20020424122611,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED62B33DB7909E0D4E3AD94FD5','','UoM Standardclass Conversion','ED62981B3E9E8FDBEBB06FCD2F','ED62A45A92D42FE1D91C1AD105','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED666D3A067BCE37F5ACF7382D','','Standard Conversion','ED665FD94B6AC6DA166949BC6A','ED62A45A92D42FE1D91C1AD105','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED6671B434B3220B039DEFE74C','','Interclass Conversion','ED6665F7ECCBF0B90275BEE375','ED62A45A92D42FE1D91C1AD105','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED80F62472E718F26076A2D05C','','Sales Order','ED80F08BA5B5CE411B8C161520','ED8A78A2E41B435000EC3170B','id',0,1,'1',20020529013950,'1',20020501122052,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED80F6677F693279D6A82D44D7','','Order Detail','ED80F1DFB463D6D67608FE97CD','ED8A78A2E41B435000EC3170B','id',0,1,'1',20020529013950,'1',20020501122129,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED81022A1DACBEFB98B29AAB1C','','Purchase Order','ED8100EADE893CD9EDBC21C39E','ED8A78A2E41B435000EC3170B','id',0,1,'1',20020529013950,'1',20020501122106,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED8A7BC50FDBD9687C72A75A4D','','Shipment Method','ED8A23950175908D976F4EB046','EACA39DCA77602CFD35DAC87AE','id',0,1,'1',20020529013950,'1',20020501165905,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED8A7C5F6C31C472C0C652FF23','','Provider','25','EACA39DCA77602CFD35DAC87AE','id',0,1,'1',20020529013950,'1',20020501165722,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED8A7CB160F2B435A606CEAFA8','','Provider','ED8A6CFBC6B303B8D7D61F9A02','ED8A7C5F6C31C472C0C652FF23','id',0,1,'1',20020529013950,'1',20020501122546,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED8B7A9E5FDBBDCB25E413CA57','','Member','ED8EF6E40C8CD0C8A1ED378B50','EACA39DCA77602CFD35DAC87AE','id',0,1,'1',20020529013950,'1',20020502091952,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED8B45918465A653AEEAE120BF','','Product Category','6','ED6B8F19E8636AF7C0E392380C','id',0,1,'1',20020529013950,'1',20020501161033,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('ED8B72F73A774CE6156A3B8B50','','Conversion','25','EACA39DCA77602CFD35DAC87AE','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EDA3EFCF78D41269D083025F4','','test','25','EDA3E90CE63AE04E6159FFC6E4','id',0,1,'1',20020529013950,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EDCEAE3ACC2987011BBB65CC98','','Collection Admin','EDCEA76E0E114961F605AAF79C','EE7CDF9E6099DD3FC1199246DA','id',0,1,'1',20020617140452,'1',20020617140452,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EDF168C3681C926B22748CA0B3','','Page Collection','EDEDA3BC67E064D0E609CF84FE','EE7CDF9E6099DD3FC1199246DA','id',0,1,'1',20020617140526,'1',20020617140526,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE18830F5DC1FEA166E6A28930','','User Site','EE187CB92554E9877310D9041D','ED2D8E6981552183D56CF629BA','id',0,1,'1',20020529021923,'1',20020529021923,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F5019890E51E20FC73A3CADA93','','Blueoxygen Recipe','F501956E01E1C9C2DFFEC614DB','EE1A5E08C260764DF3D46FCC84','id',1,1,'1',20030507144944,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A5CA1CECDE983AE507C9C67','','Contact Us','EE1633BB40ED75204D7CB5464E','EE1A5E08C260764DF3D46FCC84','id',0,1,'1',20020529105755,'1',20020529105755,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A5E08C260764DF3D46FCC84','','Asset','25','6','id',0,1,'1',20020617135909,'1',20020617135909,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A5F891A5482EA3F602CBCC1','','Company Profile','EE16334FF2AE40BA3386D21C2A','EE1A5E08C260764DF3D46FCC84','id',0,1,'1',20020529105828,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A5FEBEA158A28D78D2B3EC5','','Event','EE163461EFCD80B5C80D88A308','EE1A5E08C260764DF3D46FCC84','id',0,1,'1',20020529105845,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A603403A36C966BF725F368','','News','EE1634B19EB64BB12485263F79','EE1A5E08C260764DF3D46FCC84','id',0,1,'1',20020529105901,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A606B53D3CEFE510663E98','','News Detail','EE1634FFE547DA245362CB98CF','EE1A5E08C260764DF3D46FCC84','id',0,1,'1',20020529105914,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A60A2356144063FBE492D61','','Press Release','EE16354AB187B638CC4579F8B6','EE1A5E08C260764DF3D46FCC84','id',1,1,'1',20020925111620,'1',20020925111620,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE8C73784D7D531B86ED097FD3','','User Site','EE8C6A49BC200D77F9DD3F92AA','1','id',1,1,'1',20020620145717,'1',20020620145717,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A61B2A1A0C8BE6C48C0F3F5','','Services','EE163600A2BAD87965E20E9C9A','EE1A5E08C260764DF3D46FCC84','id',0,1,'1',20020529110044,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE1A61FC2D491128A88A008D14','','Web Link','E7A781CFBA45A3CB44C81D8236','EE1A5E08C260764DF3D46FCC84','id',0,1,'1',20020529110109,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE39ADF2FC5CDFA2DB9008A30D','','Collection Descriptor','EE399186B35C580610D4EDD7A3','3','id',0,1,'1',20020604125223,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE39EF833C39910E2471AB68E7','','Template Object','EE39EDBA36471BA27231DAFF78','EE39F5854E5520F32410A32496','id',0,1,'1',20020604141120,'1',20020604141120,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE39EFB816116F26B5401A6060','','Template Object Detail','EE39EDFFA5C0438D014F92A9A3','EE39F5854E5520F32410A32496','id',0,1,'1',20020604141123,'1',20020604141123,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE39F5854E5520F32410A32496','','Theme Management','25','3','id',0,1,'1',20020604141020,'',00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EED88A4C15CEA32D7E1C4283F2','','Theme','EE39DC68885D4E61299258E68D','EE39F5854E5520F32410A32496','id',1,1,'1',20030911101856,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE48E6CEF1F8BCBA9F049A6E6E','','Collection Content','EE399186B35C580610D4EDD7A3','EE7CDF9E6099DD3FC1199246DA','id',0,1,'1',20020617140431,'1',20020617140431,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE7CDF9E6099DD3FC1199246DA','','Collection','25','6','id',0,1,'1',20020617140054,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EE8CBAA3FAE3FFAA751B24FCE8','','Company','EE8CAB795CE226A0B079E64626','1','id',1,1,'1',20020620155435,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EEB4A48DA9C8C4A256FE643997','','Role Manager','EEB49F22144357635AD6A684B6','ED2D8E6981552183D56CF629BA','id',1,1,'1',20020628095524,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EED8906F8537D3F8CD4391F1A5','','Skin','EED88F7EFBC8DFF1C5A048C73D','EE39F5854E5520F32410A32496','id',1,1,'1',20030911101701,'',00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EF1EE9CDFBA6F6A9A4355F5A40','','Open Job','EF1EE6CF42F37C9EA72FAE3B94','EE1A5E08C260764DF3D46FCC84','id',0,1,'1',20020719011035,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EF1F0FC131CC7CB3E418786C62','','Role Site Privilage','EF1F0CD62F63F3B0A7205D5BC4','ED2D8E6981552183D56CF629BA','id',1,1,'1',20020719015207,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EF76D18A48B031996C5DC48D78','','About Us','EF76BA4ED5D8F2A21B1933A750','EE1A5E08C260764DF3D46FCC84','id',1,1,'1',20020805025045,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('EFE479BDC925B9D51CC38E1E84','','Client Survey','EFE457F0C2A80EC35CC399876D','1','id',1,1,'1',20020826095314,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F1158BCC10255DDC5563C9DC07','','Document Pooling','F1157841F5337A8CFCCD319BB2','0','id',1,1,'1',20021030142522,'1',20021030142522,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F1158CCDD11434588CA2EA56D5','','Document Pooling','F1157841F5337A8CFCCD319BB2','F1158BCC10255DDC5563C9DC07','id',1,1,'1',20021115143957,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F15DB4CB9E88FF3BD7726BFC44','','Search Manager','F15DB026AF629532843A3CC580','0','id',1,1,'1',20021107155432,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F15DB89361AEB21B2DF92412E4','','Search Manager','F15DB026AF629532843A3CC580','F15DB4CB9E88FF3BD7726BFC44','id',1,1,'1',20021107155833,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F181256EFAB34BB6B9EFB721CC','','Document Category','F1812260A4353E752C091D087','F1158BCC10255DDC5563C9DC07','id',1,1,'1',20021114130409,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F186E1B0CC5DB5F3EDC4F2E768','','Intranet Content','25','0','id',1,1,'1',20021115154810,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F186E2836A912AA158D23810A7','','Collection Manager','25','F186E1B0CC5DB5F3EDC4F2E768','id',1,1,'1',20021119110745,'1',20021119110745,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F186E3575C2F3C6F0BEF8235E9','','Page Asset','25','F186E1B0CC5DB5F3EDC4F2E768','id',1,1,'1',20021115154945,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F186E3FC85BCF10E7A697E806C','','Tips & Trick','F186E0333C668AE9C8CFD62426','F186E3575C2F3C6F0BEF8235E9','id',1,1,'1',20021115155032,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A814FB25D3EA4E2D48D6D6B','','Product','EE163600A2BAD87965E20E9C9A','F19A7F329A716789FAA42C03C1','id',1,1,'1',20021119111515,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A7ED8E71F5BE9AC192EE65A','','Portal Content','25','0','id',1,1,'1',20021119111213,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A7F329A716789FAA42C03C1','','Portal Asset','25','F19A7ED8E71F5BE9AC192EE65A','id',1,1,'1',20021119111251,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F186F239E24F545BD3178E4F33','','Page Collection','EDEDA3BC67E064D0E609CF84FE','F186E2836A912AA158D23810A7','id',1,1,'1',20021115160554,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F186F3A6AA8A14E2F56B0E2827','','News','EE1634B19EB64BB12485263F79','F186E3575C2F3C6F0BEF8235E9','id',1,1,'1',20021115160730,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F186F3F1DA9903033F7C1F807B','','Article','23','F186E3575C2F3C6F0BEF8235E9','id',1,1,'1',20021115160746,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F186FBC579E451F9CD3BC0D48A','','Quote','F186FA34E6B83A503DEE249E3','F186E3575C2F3C6F0BEF8235E9','id',1,1,'1',20021115161618,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A7FAB0355B44FB0408CD6DE','','Collection Manager','25','F19A7ED8E71F5BE9AC192EE65A','id',1,1,'1',20021119111313,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A7B5D6D54ABEA9BB780C3B7','','Collection Admin','EDCEA76E0E114961F605AAF79C','F186E2836A912AA158D23810A7','id',1,1,'1',20021119110827,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A7BA4458F38C6B77F5B8DCD','','Collection Content','EE399186B35C580610D4EDD7A3','F186E2836A912AA158D23810A7','id',1,1,'1',20021119110843,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A81CECA66A080F46A81932A','','Portal News','F3C2963AD8A291EF75E1311711','F19A7F329A716789FAA42C03C1','id',1,1,'1',20030306160934,'1',20030306160934,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A8208C4D0045F72E0A54E60','','Press Release','F3C2998AFDB590924800ACCC95','F19A7F329A716789FAA42C03C1','id',1,1,'1',20030306161221,'1',20030306161221,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A8263FD67026FCE30784CBA','','Company','EE8CAB795CE226A0B079E64626','F19A7F329A716789FAA42C03C1','id',1,1,'1',20021119111611,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A82F208CE9F6C4D525B9C00','','Collection Admin','EDCEA76E0E114961F605AAF79C','F19A7FAB0355B44FB0408CD6DE','id',1,1,'1',20021119111647,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A8338034FA816E06935C600','','Collection Content','EE399186B35C580610D4EDD7A3','F19A7FAB0355B44FB0408CD6DE','id',1,1,'1',20021119111700,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F19A836AE86EC73C59BF5F374B','','Page Collection','EDEDA3BC67E064D0E609CF84FE','F19A7FAB0355B44FB0408CD6DE','id',1,1,'1',20021119111716,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F1A9BF72A66F581B6857855165','','Priority','F1A9BE53CA5154655E89CC4AD2','F1A62489F16437AD6D12617D3F','id',1,1,'1',20021122101710,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F1A62489F16437AD6D12617D3F','','Project Tracking','F1A59EF36F336E28498926F38A','0','id',1,1,'1',20030828104234,'1',20030828104234,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F1A624EB9526FD1A59CD158BC7','','Employee Information','F1A61B7AD45A8FE0C7226CB73C','F1A62489F16437AD6D12617D3F','id',1,1,'1',20021121172936,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F1A625448A704615291D4581DE','','Project Tracking','F1A59EF36F336E28498926F38A','F1A62489F16437AD6D12617D3F','id',1,1,'1',20021121172956,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F1A9C67D15E2986771AD77CBBA','','Project Status','F1A9C5BF337F99C98C8944ACE1','F1A62489F16437AD6D12617D3F','id',1,1,'1',20021122102452,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F1BFBBE2C7411758F563732ECD','','Upload Document Project Task','F1BF9F2D933537D9BBF0E629E4','F1A62489F16437AD6D12617D3F','id',1,1,'1',20030220122449,'1',20030220122449,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F38E892615D22924DE6CE8146E','','Support','F38E7A30DCFFF83E486D127CCE','F33661890F73F3C0A23436294A','id',1,1,'1',20030224133347,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F2C647BF9481395356EA353559','','Press Release','EE16354AB187B638CC4579F8B6','F186E3575C2F3C6F0BEF8235E9','id',1,1,'1',20030116161811,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F2E59999C4BC031F855FED41BB','','Job Position','F2E587923AC44C8979FBF2F26C','1','id',1,1,'1',20030122181554,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F2E91756B4D92F2D18A2B144B1','','Web Link','E7A781CFBA45A3CB44C81D8236','F186E3575C2F3C6F0BEF8235E9','id',0,1,'1',20030123103158,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F2E91DA0EFB3A152EB7423CBA4','','FAQ','E7A77F657568CBF5B670623DCD','F186E3575C2F3C6F0BEF8235E9','id',0,1,'1',20030123103848,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F30D7095672A65622F148FA797','','Makin Fact & Figure','F30D6D4A72F6871D6DB046BCB6','F19A7F329A716789FAA42C03C1','id',1,1,'1',20030130115558,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F312B2C7BFD5E6E00F7CCA6ADB','','Board of Directors','F312A7DFF0D600D4866CCD4E28','F19A7F329A716789FAA42C03C1','name',1,1,'1',20030131123405,'1',20030131123405,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F312E00EEFFC798E3AA8055F4E','','Company Structure','EF76BA4ED5D8F2A21B1933A750','F19A7F329A716789FAA42C03C1','id',1,1,'1',20030131131544,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F3132B9BB14E4FA7D3E852A86B','','Makin Subsidary','F3132892F57B236985F02B3F4F','F19A7F329A716789FAA42C03C1','id',1,1,'1',20030131143817,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F332C5E9BCE1F6445D1E65EE03','','Company','F332B5D5577E444B78297AFE84','1','id',1,1,'1',20030206175458,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F3364B1292286DF2B446BBBC43','','Project Category','F3364969091612B580AA048D2F','F1A62489F16437AD6D12617D3F','id',1,1,'1',20030207101928,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F33661890F73F3C0A23436294A','','Admin Content','25','0','id',1,1,'1',20030207104406,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F3366239B2E746258A96784B26','','Company','F332B5D5577E444B78297AFE84','F33661890F73F3C0A23436294A','id',1,1,'1',20030207104437,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F33662885F4BE7EDBCB1C001A7','','Category','6','F33661890F73F3C0A23436294A','id',1,1,'1',20030207104454,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F3FF120177723F1520DDDD6C81','','Site Map','F3FF0CB5A1F1B01FDBEF1218F6','F19A7F329A716789FAA42C03C1','id',1,1,'1',20030318100042,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F3FF3858B6F31A66F21CE05204','','Makin Subsidary','F3FF36F3D74BBBACD7A0D5E93A','F19A7F329A716789FAA42C03C1','id',1,1,'1',20030318105612,'1',20030318105612,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F74B66C47DA8D50D2A0357552A','','Journal Detail','F6DBF0819B1E35DD4776A0BD24','F74B5F495A997365A16C0D6058','id',1,1,'1',20030829085239,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F74B667C336B1E055C5BDB4F4E','','Jounal Activity','F6D5663C181596843F9DAFEC8A','F74B5F495A997365A16C0D6058','id',1,1,'1',20030829085226,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F74B5F495A997365A16C0D6058','','Activity Management','25','0','id',1,1,'1',20030829084517,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F74B62467A86A58C20B83B28E','','Task Activity','F74B611636B6B145443194E9','F74B5F495A997365A16C0D6058','id',1,1,'1',20030829084746,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F76A981B3D378CD724E6D4680E','','User Manager ver.2.0','F76A9583B418F4FB3D261C1D53','1','id',1,1,'1',20030904101457,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F7D3200F14DA31238DAB32DFB8','','Project Activity','F7D31BDF6B4015D5066BA1910E','F74B5F495A997365A16C0D6058','id',1,1,'1',20030924172405,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F8EE2EDC0C6B2F32924D03427F','','Report Management','25','0','id',1,1,'1',20031118163328,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');
INSERT INTO module_function VALUES ('F8EE30624CC03759054ABAFC29','','Templates','F8EE2D45B9F7549B13124FA380','F8EE2EDC0C6B2F32924D03427F','id',1,1,'1',20031118163442,NULL,00000000000000,'ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `news`
--

CREATE TABLE news (
  id varchar(28) NOT NULL default '',
  display_style varchar(20) default NULL,
  source varchar(50) default NULL,
  file_name varchar(50) default NULL,
  path varchar(50) default NULL,
  headline varchar(128) default NULL,
  subheadline varchar(128) default NULL,
  abstract text,
  body text,
  linktext varchar(50) default NULL,
  byline varchar(50) default NULL,
  creditline varchar(50) default NULL,
  copyright varchar(50) default NULL,
  editor_notes text,
  keywords varchar(128) default NULL,
  transmitted_date_time datetime default NULL,
  news_topic_id varchar(50) default NULL,
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id),
  KEY transmitted_date_time (transmitted_date_time),
  KEY transmitted_date_time_2 (transmitted_date_time)
) TYPE=MyISAM;

--
-- Dumping data for table `news`
--

INSERT INTO news VALUES ('F53FDA1554D697E975ED986297',NULL,NULL,NULL,NULL,'Guerilla Innovation Initiative','Our newest initiative at www.guerilla-forum.org','We invite you to review our newest initiative at www.guerilla-forum.org.\r\nGuerilla an interactive multimedia marketing communication services.\r\n','We invite you to review our newest initiative at www.guerilla-forum.org.\r\nGuerilla an interactive multimedia marketing communication services. \' \" \' \'\'\"\r\n',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20040423103119,'F36F8BFFF97F8A1',20040423103119,'E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO news VALUES ('F620E137CCE6CF74A3B7F42269',NULL,NULL,NULL,NULL,'Pentagon Kembangkan Sistem yang Mengancam Privasi Orang','','Amerika Serikat (AS) dikenal sebagai negara yang mengagungkan privasi. Namun ternyata pemerintah AS, melalui Pentagon, sedang mengembangkan sistem pengawasan kota yang mengancam privasi atau kebebasan pribadi warganya.','<b>detikcom - Jakarta,</b> Amerika Serikat (AS) dikenal sebagai negara yang mengagungkan privasi. Namun ternyata pemerintah AS, melalui Pentagon, sedang mengembangkan sistem pengawasan kota yang mengancam privasi atau kebebasan pribadi warganya.<P>\r\nSistem yang sedang dikembang Pentagon ini akan menggunakan komputer dan ribuan kamera untuk melacak, merekam dan menganalisa setiap gerakan kendaraan di kota-kota yang ada di luar negeri. Sistem yang dijuluki \"daerah pertempuran yang dapat melihat\" ini dirancang untuk membantu militer AS melindungi pasukannya dan memerangi kota-kota di luar negeri.<P>\r\nPolisi, ilmuwan, dan para ahli privasi mengatakan teknologi yang membuka segala rahasia ini dapat dengan mudah diterapkan untuk memata-matai orang Amerika. <P>\r\n\"Pemerintah akan dengan mudah mengetahui keberadaan orang-orang setiap waktu,\" kata John Pike, seorang analis pertahanan seperti dikutip <i>Associated Press</i>, Rabu (2/7/2003). <P>\r\nBagian terpenting dalam proyek ini adalah mencari perangkat lunak komputer yang dapat mengidentifikasi kendaraan berdasarkan ukuran, warna, bentuk dan nomor polisi, atau pengemudi maupun penumpang melalui wajahnya dengan mudah.<P>\r\nPerangkat lunak itu juga harus dilengkapi dengan peringatan langsung setelah mendeteksi kendaraan dengan nomor polisi yang ada di daftar pengawasan, atau melacak rekaman untuk mencari dan membandingkan kendaraan yang terlihat di dekat tempat teroris beraktifitas.<P>\r\nProyek ini berada di bawah pengawasan Defense Advanced Research Projects Agency (DARPA) yang membantu Pentagon mengembangkan teknologi untuk membasmi terorisme. <P>\r\nProyek DARPA lainnya termasuk mengembangkan perangkat lunak yang mampu mengamati kumpulan data transaksi dan data pribadi setiap harinya untuk memprediksikan serangan teroris dan menciptakan catatan yang terkomputerisasi. Catatan itu akan merekam dan menganalisa seglsla sesuatu yang diucapkan, dilihat, didengar, baca atau sentuh oleh seseorang.<P>\r\nIlmuwan dan ahli privasi yang telah melihat teknologi pengenal muka di Super Bowl dan monitoring camera di London khawatir akan imbas dari teknologi DARPA jika nantinya diaplikasikan pada rakyat sipil atau agen pemerintah di luar Pentagon.<p>\r\n								',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'F162B448063A847319E641EF7D',20030702094512,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO news VALUES ('F540069CA7D1D0B25F26AAFEE6',NULL,NULL,NULL,NULL,'What is Guerilla Innovation?','Rebranding Your Corporation','Guerilla is an initiative, a tool that can help a company to increase brand equity and make a close relationship with your customer using a reflection of brand. Guerilla is designed and developed as a brand extension that is built with innovation and creativity. Guerilla is a living memory.','<b>Overview</b><br>\r\nPromotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.\r\n<p>\r\nWe all know that economic times are tougher than they were just years ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. \r\n<p>\r\n\r\nBefore you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. To learn how your competitors get marketing messages across, consult trade journals. Their advertising will show you which features they are focusing on. Learning about your target customer will help prevent wasting your money and time on unproductive promotional activities. \r\n<p>\r\n\r\nOne of marketing program is to build a brand equity. Increase brand equity that has a personality of its own, by communicating it gradually builds up character. Let us help you to build brands with innovation. Remember, product are mute; the brand is what gives them meaning and purpose, telling us how a product should be read.\r\n<p>\r\n\r\nThe spirit of a brand can be inferred through its products and it is advertising. The content of a brand grows out of the cumulative memory of these acts, provided they are governed by a unifying idea or guidelines. There must be an accumulation, not mere juxtaposition. The importance of memory in the making of a brand explains why its image can vary between generations.\r\n<p>\r\n\r\nToday, in the new real business, company need not only a brand campaign, promotion but a customer oriented solution. But, what kind of customer oriented program do you need? A good customer services? A well-designed website? A Wireless Solution? A Distributed Infrastructure? A extra expensive CRM (Customer Relationship Management) application? An E-Business Suite? Or just a luck?\r\n<p>\r\n\r\nWe need all, if we can. We need to integrate the complex e-business application with your brand. But how? Yes, You',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030519174650,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO news VALUES ('F9886736A93CF4E3C74AD9A32E',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20031218151526,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F4DD64134EC050E3D0A256EA0D');

--
-- Table structure for table `news_detail`
--

CREATE TABLE news_detail (
  id varchar(28) NOT NULL default '',
  news_id varchar(28) default NULL,
  name varchar(30) NOT NULL default '',
  description varchar(50) NOT NULL default '',
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  url_image3 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `news_detail`
--


--
-- Table structure for table `news_portal`
--

CREATE TABLE news_portal (
  id varchar(28) NOT NULL default '',
  display_style varchar(20) default NULL,
  source varchar(50) default NULL,
  file_name varchar(50) default NULL,
  path varchar(50) default NULL,
  headline varchar(128) default NULL,
  subheadline varchar(128) default NULL,
  abstract text,
  body text,
  linktext varchar(50) default NULL,
  byline varchar(50) default NULL,
  creditline varchar(50) default NULL,
  copyright varchar(50) default NULL,
  editor_notes text,
  keywords varchar(128) default NULL,
  transmitted_date_time datetime default NULL,
  news_topic_id varchar(50) default NULL,
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id),
  KEY transmitted_date_time (transmitted_date_time),
  KEY transmitted_date_time_2 (transmitted_date_time)
) TYPE=MyISAM;

--
-- Dumping data for table `news_portal`
--

INSERT INTO news_portal VALUES ('F3C7E50F04BFE0CBB83E2097BC',NULL,NULL,NULL,NULL,'ter','fsdafasfas','fasdfasfasddfasfas','dfasfasfsafsafd',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00',NULL,NULL,'',NULL,NULL,'F162B448063A847319E641EF7D',20030313163509,'F162B448063A847',20030313163509,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO news_portal VALUES ('F3DB45E9A794540762872174E3',NULL,NULL,NULL,NULL,'test News Portal','test headline','testttt...ttsessstt','dkjflkasjflskjflskajfsakfjdasljk',NULL,NULL,NULL,NULL,NULL,'','0000-00-00 00:00:00',NULL,NULL,'F3DB5648E061E594B3ABED171dreamonme_main.gif',NULL,NULL,'F162B448063A847319E641EF7D',20030311112837,'F162B448063A847',20030311112837,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO news_portal VALUES ('F404793169570860A9F5DC8789',NULL,NULL,NULL,NULL,'testing','mo coba data','<DIV></DIV>&gt;Kadang seorang pria bertingkah aneh seakan ingin menjauh dari \r\nanda. Padahal, sebenernya justru dia ingin menambatkan hatinya. Ada beberapa \r\ntingkah aneh yang dilakukan oleh pria : \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 1 \r\n<DIV></DIV>&gt;Ia Mengajak Anda Kumpul Bersama Gank-nya. \r\n<DIV></DIV>&gt;DUGAAN ANDA: Dia ingin menunjukkan bahwa teman baginya adalah \r\nnomor satu. \r\n<DIV></DIV>','<DIV>KETIKA DIA SIAP TERIKAT \r\n<DIV></DIV>\r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Kadang seorang pria bertingkah aneh seakan ingin menjauh dari \r\nanda. Padahal, sebenernya justru dia ingin menambatkan hatinya. Ada beberapa \r\ntingkah aneh yang dilakukan oleh pria : \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 1 \r\n<DIV></DIV>&gt;Ia Mengajak Anda Kumpul Bersama Gank-nya. \r\n<DIV></DIV>&gt;DUGAAN ANDA: Dia ingin menunjukkan bahwa teman baginya adalah \r\nnomor satu. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Pertemuan bagi kaum pria memang sangat berarti. \r\nMaka, ketika dia membuka pintu dunia gank-nya untuk anda masuki,bisa diartikan \r\nia ingin mulai menganggap penting kehadiran anada. Pokoknya,pria baru merasa \r\nperlu memperkenalkan sobat dekatnya kepada seorang perempuan,bila dia ingin \r\nmenjalin hubungan lebih serius.Dan tentu saja,ia ingin melihat dulu bisakah anda \r\ndan sobat2nya berteman akrab. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 2 \r\n<DIV></DIV>&gt;Tiba-tiba Pergi Berlibur Dengan Teman-temannya \r\n<DIV></DIV>&gt;DUGAAN ANDA: Dia ingin senang-senag dengan teman2nya sambil main \r\nmata dengan para perempuan di tempat liburan. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Ketika seorang pria sedang mengupayakan merebut \r\nhati seorang wanita, kerap kali kekuatiran akan ditolak muncul dalam dirinya. \r\nSelama ini dia menganggap bahwa dunia bergerak mengikuti dirinya.Bayangan kalau \r\nanda akan menjadi pusat perhatiannya,akan sedikit mengganggu.Jadi walaupun \r\nserius, ia harus tetap membuktikan pada dirinya sendiri kalau ia tidak akan \r\nkehilangan anda.Pergi liburan bersama gank,merupakan cara terakhir si<SPAN \r\nclass=550161202-26022003><FONT face=Arial>&nbsp;</FONT></SPAN>dia<SPAN \r\nclass=550161202-26022003><FONT face=Arial>&nbsp;</FONT><FONT \r\nface=\"Times New Roman\">m</FONT></SPAN>endeklarasikan&nbsp;kemerdekaannya.Padahal,terus \r\nterang saja,ia lebih senang menghabiskan waktu bersama anda,daripada \r\nberhura-hura. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah naeh 3 \r\n<DIV></DIV>&gt;Tak Lagi Bersikap Romantis \r\n<DIV></DIV>&gt;DUGAAN ANDA: Ia berhenti bersikap romantis,karena sudah tak \r\npeduli. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Di awal perkenalan atau pacaran,si dia ngajak \r\nanda kerestoran mahal untuk membuat anda terpesona.Karena tak percaya ada wanita \r\nyang menyukai mereka karena kepribadian semata. Betul juga,karena pergi berdua \r\ndan tanpa tau sedikitpun tentang diri masing2,biasanya bikin kikuk. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 4 \r\n<DIV></DIV>&gt;Sering Adu Argumentasi \r\n<DIV></DIV>&gt;DUGAAN ANDA: Biasanya pria berbuat apa saja untuk menghindari \r\npertengkaran. Tapi kini ia lebih sering ngotot dengan pendapatnya. Mungkinkah si \r\ndia ingin bubaran? \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Anda tidak sepenuhnya salah. Kebanyakan pria \r\npasti ingin melakukan apa saja agar tidak terlibat dalam pertengkarandengan \r\nkekasihnya. Namun,ketika lelaki sudah berpikir akan meninggalkan kehidupan \r\nlajangnya,ia ingin sepenuhnya yakin,kalau ia tidak berada dalam genggaman sang \r\npacar. Membuat anda kesal adalah cra si dia menguji,apakah anda siapmental \r\nmenghabiskan waktu bersamanya nanti. Juga agar ia pasti,kalau hal ini tidak akan \r\nmembuat hubungan anda berdua berantakan. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 5 \r\n<DIV></DIV>&gt;Ia Berkata Tak Akan Menikah \r\n<DIV></DIV>&gt;DUGAAN ANDA: Ia bilang begitu karena tidak mau menikahi anda. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Ini merupakan kontradiksi yang paling sering \r\ndilakukan oleh pria. Jangan lupa,pria adalah mahluk yang paling payah dalam \r\nberkomunikasi. Mereka tak dapat mengucapkan kata kata yang dimaksud dengan \r\n<DIV></DIV>&gt;begitu saja,melainkan dibungkus dalam humor. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Tingkah aneh 6 \r\n<DIV></DIV>&gt;Ia Mengajak Anda ketempa-tempat\"Aneh\" \r\n<DIV></DIV>&gt;DUGAAN ANDA: Si dia sengaja membuat anda kesal,dengan mengajak ke \r\ntempat-tempat yang tak anda sukai. \r\n<DIV></DIV>&gt;ARTI SEBENARNYA: Jangan kesal dulu jika si dia minta ditemani ke \r\ntempat yang lebih banyak dikunjungi laki-laki,seperti toko komputer,bengkel,toko \r\nperkakas rumah,atau toko hobi.Memang,kalau anda tak suka diajak berputa-putar \r\nkeliling pasar genteng untuk nyari alat elektronik.Namun,sebenarnya ini adalah \r\ntanda yang menyenangkan dari si dia untuk anda. Dengan mengajak anda ke \r\nbengkel,ia ingin menunjukkan pada anda bahwa ini adalah kegiatan yang ia sukai \r\ndan biasa dilakukan olehnya. Dan ia berusaha membuat anda tertarik juga,hingga \r\nakhirnya mau menerima hal yang disukainya sama seperti dia menyenangi anda. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Ini adalah tips yang didapat oleh seorang remaja pria setelah \r\nintrospeksinya selama kurang lebih 1,5 tahun.Dan dengan tips ini diharapkan akan \r\ntercipta<SPAN class=550161202-26022003><FONT face=Arial>&nbsp; \r\n&nbsp;</FONT></SPAN>hubungan yang lebih baik karena perlu pemahaman terhadap \r\norang terdekat di hati anda baik hubungan yang sudah lama atau baru. \r\n<DIV></DIV>&gt; \r\n<DIV></DIV>&gt;Kirimlah tips ini kepada teman-teman perempuanmu agar tercipta \r\ndunia yang penuh dengan cinta. GOOD LUCK. \r\n<DIV></DIV></DIV>',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'F40ADBBE5C615DFF8259E4EB2image01.jpg','F40ADBBEB99D2D0CF4B7127D9image02.jpg','','F40ADBBEC98B90464354F55D7image06.jpg','F162B448063A847319E641EF7D',20030320171007,'F162B448063A847',20030320171007,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO news_portal VALUES ('F42D89A4DA4678CEC153C10DF1',NULL,NULL,NULL,NULL,'Pakar Militer Mesir: AS Keliru Prediksi Kekuatan Irak','Subheadline : Pakar Militer Mesir: AS Keliru Prediksi Kekuatan Irak','detikcom - Jakarta, Perang memasuki hari ke-5. Koalisi kerap mengklaim kemenangan dan penguasaan sejumlah wilayah. Irak selalu membantah klaim itu. Dan bantahan tersebut dibenarkan oleh pakar militer Mesir. AS salah prediksi soal kekuatan Irak.\r\n\r\n','detikcom - Jakarta, Perang memasuki hari ke-5. Koalisi kerap mengklaim kemenangan dan penguasaan sejumlah wilayah. Irak selalu membantah klaim itu. Dan bantahan tersebut dibenarkan oleh pakar militer Mesir. AS salah prediksi soal kekuatan Irak.\r\n\r\nDemikiann disampaikan Zakariya Hussein pakar militer Mesir yang juga Direktur Akademi Militer Nasser di Cairo, Mesir seperti dilansir Islamonline, Senin (24/3/2003).\r\n\r\nMenurut Hussein, AS dan Inggris memang telah mengerahkan kekuatan perang yang besar. Tapi hingga saat ini, hasilnya masih nihil. Pernyataan pihak koalisi, bahwa pihak akan segera mencapai dan menguasai Baghdad, juga diragukan oleh Huseein.\r\n\r\nTentang klaim pasukan AS bahwa mereka telah memasuki wilayah Irak dari sisi selatan Kuwait sepanjang 100 mil, ke arah Baghdad, menurut Hussein ini bukan kisah sukses. Karena wilayah itu merupakan wilayah kosong yang tak ditempati pasukan Irak. Ini merupakan wilayah larangan di selatan, tutur Hussein. \r\n\r\nSelain itu, pasukan AS dan Inggris juga sudah melakukan serangan ke wilayah-wilayah tersebut sebelum dimulainya aksi penyerangan pada hari pertama. Ini dilakukan untuk meyakinkan mereka bahwa wilayah ini memang wilayah aman, katanya. \r\n\r\nHusein mennyebut dua alasan, kenapa hingga kini AS, Inggris dan sekutunya belum berhasil menguasai Irak sebagaimana yang mereka gembar-gemborkan sebelumnya.\r\n\r\nPertama, AS salah duga soal dukungan rakyat Irak. Sebelumnya, AS yakin begitu mereka melakukan gempuran pada hari pertama, maka rakyat pendukung Saddam akan berbalik mendukung mereka dan ikut menggulingkan Saddam. Dugaan itu ternyata sama sekali tidak terbukti, tegas Hussein. \r\n\r\nKedua, AS dan Inggris sempat menyatakan, pihaknya ingin mengajukan lebih dari 300 pimpinan Irak ke pengadilan internasional sebagai kriminal perang, jika mereka tidak terbunuh dalam peperangan. Pengumuman ini, justru memicu semangat baru pasukan Saddam yang menganggap perang melawan AS adalah soal hidup atau mati, kata Hussein. \r\n\r\nMenurut Hussein kegagalan pasukan AS juga dilatarbelakangi oleh kekeliruannya menilai rakyat Irak. Rakyat Irak, ternyata, telah melakukan pengkaderan dan pelatihan militer secara baik untuk menghadapi perang udara dan darat sejak 1991, pasca perang Teluk II.\r\n\r\nHussein yang mendapat gelar profesor dalam bidang Strategi Sains di Cairo itu melanjutkan, bahwa keberhasilan penyerangan ada pada penguasaan kota-kota inti di Irak. Dan hal itu yang hingga kini belum terjadi. \r\n\r\nAS, katanya, belum berhasil sepenuhnya menguasai kota kecil seperti Umm Qashr dan semenanjung Faw. Perlawanan rakyat Irak di Nashirah, Mousal, Baghdad dan Basra juga mengejutkan dunia dalam peperangan ini. \r\n\r\nPasukan koalisi sudah mengerahkan kekuatan perang yang besar sejak saat pertempuran pertama. Basra juga sudah dikepung selama tiga hari. Tapi, menurut Hussein hingga kini kota itu belum berhasil ditundukkan. Demikian juga Baghdad dan Umm Qashr yang terus menerus dibombardir oleh pasukan udara AS, tapi belum ada hasil apapun yang menunjukkan pasukan koalisi menguasai kota itu. \r\n\r\n',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'F42D8AE122C8A28BD67945AEEFagree.gif','F42D8AE132C9007AA42B50F4F0angry1.gif','F42D8AE142C7E6AE39152F22EEangry2.gif','F42D8AE142C7E6AE39152F22EEbuble_gum.gif','F162B448063A847319E641EF7D',20030327103456,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');

--
-- Table structure for table `notulen`
--

CREATE TABLE notulen (
  id varchar(28) NOT NULL default '',
  company_group_name varchar(100) default NULL,
  company_name varchar(100) default NULL,
  report_title varchar(100) default NULL,
  report_subtitle varchar(100) default NULL,
  day varchar(100) default NULL,
  date varchar(100) default NULL,
  time varchar(100) default NULL,
  place varchar(100) default NULL,
  subject varchar(100) default NULL,
  members text,
  report text,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `notulen`
--

INSERT INTO notulen VALUES ('F9634C53B5390C13ECE672B332','Matahari Kahuripan','PT Katingan Indah Utama Unit Santilik','Notulen Presentasi','Rapat Koordinasi Bulan','Senin\r\n\r\n\r\n\r\n\r\n','07-DEC-2003','12:30','Ruang Rapat I Gedung A','Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','1. Frans\r\n2. Thamura\r\n3. Domonikus\r\n\r\n\r\n\r\n\r\n','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie dolor et diam. Vestibulum non velit. In dolor magna, hendrerit quis, tincidunt nec, euismod vel, mauris. Vestibulum dolor nisl, interdum ac, venenatis in, vehicula sit amet, nisl. Maecenas leo quam, lobortis vitae, scelerisque quis, elementum consectetuer, lectus. Ut lobortis, lorem eget hendrerit sagittis, lectus sem vehicula mi, id imperdiet diam ligula et mi. Praesent sit amet turpis. Aenean vitae ipsum consectetuer turpis pretium rutrum. Nam tellus lacus, lobortis eget, sodales quis, ultrices sed, eros. Duis lorem felis, gravida vitae, placerat a, semper a, orci. Nam massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis in metus sed lorem sagittis bibendum. Morbi interdum magna a enim. Ut sollicitudin tempus est. Morbi risus. Praesent cursus orci ac sapien. Suspendisse potenti. Cras diam dui, dignissim sed, convallis nec, elementum et, quam. Nam ac est et turpis euismod lobortis. \r\n\r\nNullam eleifend dui et wisi. Nulla dolor est, feugiat vitae, dapibus eget, sagittis vitae, est. In accumsan lacinia justo. Proin lacus massa, molestie sit amet, facilisis molestie, volutpat non, risus. Curabitur sagittis tincidunt magna. In non lectus. Donec consequat, erat in dapibus facilisis, ante lacus venenatis lectus, eget semper risus elit non pede. Praesent fermentum, massa vitae ultrices imperdiet, lacus urna semper sem, eu consequat turpis purus eu arcu. Proin arcu augue, faucibus nec, aliquam vitae, aliquet in, lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec ultrices egestas tortor. Quisque lobortis libero eu dolor. Sed ligula risus, ultrices ut, facilisis eget, tristique ac, lacus. \r\n\r\nNunc pede. Donec molestie, risus eget facilisis ornare, eros pede egestas felis, sit amet eleifend augue neque nec magna. Donec at augue. Suspendisse ullamcorper diam nec nisl. Sed eget pede. Vestibulum mattis urna quis elit. Integer ac velit eget lorem viverra interdum. Mauris dolor tellus, ornare ac, consectetuer a, molestie sit amet, sapien. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc neque. Phasellus imperdiet diam vitae mi. \r\n\r\nDonec at lorem ac justo tristique eleifend. Pellentesque ligula diam, pulvinar sit amet, dictum ut, rutrum ut, orci. Sed tellus nisl, ultrices eu, ullamcorper in, malesuada placerat, pede. Vestibulum est. Etiam facilisis. Morbi enim velit, malesuada ac, laoreet ac, cursus ac, enim. Pellentesque iaculis pellentesque justo. Aliquam pharetra. Donec eget velit ut odio sollicitudin venenatis. Proin vestibulum mi vel ipsum. Suspendisse at sapien sed nisl auctor condimentum. Sed quis nisl sit amet magna malesuada ullamcorper. \r\n\r\nNam in enim sodales augue iaculis tincidunt. Duis mauris est, gravida nec, pellentesque non, sagittis eget, nulla. Cras enim neque, feugiat eu, convallis eget, pulvinar ac, urna. Aenean cursus viverra purus. Aenean lacinia malesuada enim. Etiam mauris. Suspendisse ullamcorper tortor id sem. Etiam erat dolor, lacinia vel, molestie id, scelerisque a, orci. Ut nunc metus, tempus vitae, semper quis, elementum in, tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris iaculis interdum mauris. Cras viverra. Fusce vestibulum, felis at suscipit venenatis, nisl enim eleifend quam, eu iaculis augue lorem at velit. Maecenas iaculis blandit quam. Maecenas porta lectus eu mi. Nullam quis odio. Sed ipsum nulla, hendrerit a, nonummy quis, scelerisque ac, massa. Suspendisse elit risus, consequat nec, congue eget, venenatis ac, est. \r\n\r\nNam in enim sodales augue iaculis tincidunt. Duis mauris est, gravida nec, pellentesque non, sagittis eget, nulla. Cras enim neque, feugiat eu, convallis eget, pulvinar ac, urna. Aenean cursus viverra purus. Aenean lacinia malesuada enim. Etiam mauris. Suspendisse ullamcorper tortor id sem. Etiam erat dolor, lacinia vel, molestie id, scelerisque a, orci. Ut nunc metus, tempus vitae, semper quis, elementum in, tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris iaculis interdum mauris. Cras viverra. Fusce vestibulum, felis at suscipit venenatis, nisl enim eleifend quam, eu iaculis augue lorem at velit. Maecenas iaculis blandit quam. Maecenas porta lectus eu mi. Nullam quis odio. Sed ipsum nulla, hendrerit a, nonummy quis, scelerisque ac, massa. Suspendisse elit risus, consequat nec, congue eget, venenatis ac, est. \r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec molestie dolor et diam. Vestibulum non velit. In dolor magna, hendrerit quis, tincidunt nec, euismod vel, mauris. Vestibulum dolor nisl, interdum ac, venenatis in, vehicula sit amet, nisl. Maecenas leo quam, lobortis vitae, scelerisque quis, elementum consectetuer, lectus. Ut lobortis, lorem eget hendrerit sagittis, lectus sem vehicula mi, id imperdiet diam ligula et mi. Praesent sit amet turpis. Aenean vitae ipsum consectetuer turpis pretium rutrum. Nam tellus lacus, lobortis eget, sodales quis, ultrices sed, eros. Duis lorem felis, gravida vitae, placerat a, semper a, orci. Nam massa. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis in metus sed lorem sagittis bibendum. Morbi interdum magna a enim. Ut sollicitudin tempus est. Morbi risus. Praesent cursus orci ac sapien. Suspendisse potenti. Cras diam dui, dignissim sed, convallis nec, elementum et, quam. Nam ac est et turpis euismod lobortis. \r\n\r\nNullam eleifend dui et wisi. Nulla dolor est, feugiat vitae, dapibus eget, sagittis vitae, est. In accumsan lacinia justo. Proin lacus massa, molestie sit amet, facilisis molestie, volutpat non, risus. Curabitur sagittis tincidunt magna. In non lectus. Donec consequat, erat in dapibus facilisis, ante lacus venenatis lectus, eget semper risus elit non pede. Praesent fermentum, massa vitae ultrices imperdiet, lacus urna semper sem, eu consequat turpis purus eu arcu. Proin arcu augue, faucibus nec, aliquam vitae, aliquet in, lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec ultrices egestas tortor. Quisque lobortis libero eu dolor. Sed ligula risus, ultrices ut, facilisis eget, tristique ac, lacus. \r\n\r\nNunc pede. Donec molestie, risus eget facilisis ornare, eros pede egestas felis, sit amet eleifend augue neque nec magna. Donec at augue. Suspendisse ullamcorper diam nec nisl. Sed eget pede. Vestibulum mattis urna quis elit. Integer ac velit eget lorem viverra interdum. Mauris dolor tellus, ornare ac, consectetuer a, molestie sit amet, sapien. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc neque. Phasellus imperdiet diam vitae mi. \r\n\r\nDonec at lorem ac justo tristique eleifend. Pellentesque ligula diam, pulvinar sit amet, dictum ut, rutrum ut, orci. Sed tellus nisl, ultrices eu, ullamcorper in, malesuada placerat, pede. Vestibulum est. Etiam facilisis. Morbi enim velit, malesuada ac, laoreet ac, cursus ac, enim. Pellentesque iaculis pellentesque justo. Aliquam pharetra. Donec eget velit ut odio sollicitudin venenatis. Proin vestibulum mi vel ipsum. Suspendisse at sapien sed nisl auctor condimentum. Sed quis nisl sit amet magna malesuada ullamcorper. \r\n\r\nNam in enim sodales augue iaculis tincidunt. Duis mauris est, gravida nec, pellentesque non, sagittis eget, nulla. Cras enim neque, feugiat eu, convallis eget, pulvinar ac, urna. Aenean cursus viverra purus. Aenean lacinia malesuada enim. Etiam mauris. Suspendisse ullamcorper tortor id sem. Etiam erat dolor, lacinia vel, molestie id, scelerisque a, orci. Ut nunc metus, tempus vitae, semper quis, elementum in, tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris iaculis interdum mauris. Cras viverra. Fusce vestibulum, felis at suscipit venenatis, nisl enim eleifend quam, eu iaculis augue lorem at velit. Maecenas iaculis blandit quam. Maecenas porta lectus eu mi. Nullam quis odio. Sed ipsum nulla, hendrerit a, nonummy quis, scelerisque ac, massa. Suspendisse elit risus, consequat nec, congue eget, venenatis ac, est. \r\n\r\nNam in enim sodales augue iaculis tincidunt. Duis mauris est, gravida nec, pellentesque non, sagittis eget, nulla. Cras enim neque, feugiat eu, convallis eget, pulvinar ac, urna. Aenean cursus viverra purus. Aenean lacinia malesuada enim. Etiam mauris. Suspendisse ullamcorper tortor id sem. Etiam erat dolor, lacinia vel, molestie id, scelerisque a, orci. Ut nunc metus, tempus vitae, semper quis, elementum in, tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris iaculis interdum mauris. Cras viverra. Fusce vestibulum, felis at suscipit venenatis, nisl enim eleifend quam, eu iaculis augue lorem at velit. Maecenas iaculis blandit quam. Maecenas porta lectus eu mi. Nullam quis odio. Sed ipsum nulla, hendrerit a, nonummy quis, scelerisque ac, massa. Suspendisse elit risus, consequat nec, congue eget, venenatis ac, est. \r\n\r\n','F162B448063A847319E641EF7D',20031215163125,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('F963A06C9D176B93A9C3B41000','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Rapat','Rakor Bulan Desember 2003','Kamis\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','11-DEC-2003','13.00 - 15.00','Gedung III Ruang Rapat 1','Progress Project','1. Dedeng\r\n2. Meilani\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla urna augue, accumsan sed, eleifend non, hendrerit nec, velit. Donec elementum pretium dolor. Praesent et massa et velit interdum dignissim. Nulla pulvinar. Suspendisse a tellus. Duis et nulla ac nunc posuere aliquam. Morbi sagittis, velit nec malesuada semper, ante neque blandit augue, sed convallis risus nulla nec felis. Mauris facilisis eleifend lacus. Nulla wisi augue, pulvinar dictum, molestie nec, lacinia pulvinar, nunc. Morbi diam libero, euismod nec, aliquet eget, varius quis, ipsum. Etiam dictum ante eget orci. Ut nunc nunc, eleifend eu, feugiat eu, ultricies ac, enim. Sed nec mauris. Nunc arcu. \r\n\r\nSed pulvinar tortor et arcu. Suspendisse sit amet sapien eget pede elementum vulputate. Pellentesque a turpis eu arcu pharetra venenatis. Etiam nulla nulla, ullamcorper ac, convallis eu, tincidunt id, lacus. Morbi ut justo. Sed ut massa ut nibh vulputate rutrum. Proin in magna. Praesent dui nibh, tempor et, vestibulum sed, sodales eget, tortor. Vivamus a eros. Praesent eget erat. Maecenas feugiat. \r\n\r\nSed vitae risus eget est porttitor lacinia. Ut sed massa non massa rhoncus interdum. Phasellus erat nibh, aliquet vitae, luctus eget, tempor et, nulla. In at lectus id leo molestie molestie. Suspendisse potenti. Nullam lacinia wisi eu enim. Quisque et neque non dui fringilla dictum. Phasellus at erat. Quisque quam lorem, rutrum id, convallis eget, egestas et, arcu. Maecenas eget tortor. Sed sit amet orci. Curabitur quam tellus, dignissim quis, tristique quis, fermentum quis, quam. \r\n\r\nEtiam eget urna nec neque feugiat nonummy. Integer a ipsum. Vestibulum ac diam et libero consequat varius. Nulla facilisi. Praesent varius. Phasellus enim neque, condimentum in, ullamcorper quis, auctor sit amet, ante. Donec nisl ante, commodo et, volutpat id, ultrices ac, odio. Suspendisse massa odio, luctus ut, posuere id, tristique eget, diam. Vestibulum consequat. Donec nec orci. Aliquam erat volutpat. Aliquam erat volutpat. Praesent sit amet enim. Mauris porttitor molestie lorem. Nulla sed purus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. \r\n\r\nNulla vestibulum urna quis mi. Curabitur eu mauris et enim tempus aliquet. Phasellus tempus. Nulla elementum, quam ut porttitor fringilla, nisl lorem semper nulla, malesuada porta quam augue a neque. Etiam sit amet purus. Aliquam eget augue ac magna facilisis vestibulum. Donec porttitor, purus at luctus eleifend, mi libero luctus lorem, ac scelerisque arcu felis at est. Sed dui dui, convallis eu, congue et, eleifend eu, urna. Sed non arcu. Suspendisse dignissim. Nulla massa dolor, egestas vitae, viverra ac, lobortis sed, metus. Etiam at est ut justo rhoncus commodo. Nam mi odio, euismod ut, cursus a, condimentum ac, arcu. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas at dui vel orci lacinia lobortis. Phasellus rhoncus aliquam turpis. Nam nonummy. Etiam molestie scelerisque nisl. \r\n\r\nNulla facilisi. Pellentesque risus magna, congue ut, gravida sed, ultrices nec, mauris. Nunc id tortor. Mauris adipiscing posuere lectus. Etiam posuere. Aenean porttitor. Pellentesque quis risus eget mi condimentum ultricies. Fusce sagittis, tortor et tincidunt fermentum, ligula mi pretium eros, ac hendrerit neque erat id tortor. Integer quis lacus at diam congue tempus. Phasellus eu eros id enim iaculis accumsan. Nam sit amet sem. Praesent fringilla luctus tellus. Nunc porttitor wisi eget ipsum. Suspendisse ut nulla quis sapien sodales volutpat. Fusce adipiscing arcu id odio. \r\n\r\nMauris iaculis. Nam non augue. Cras ac velit id elit laoreet tincidunt. Suspendisse potenti. Duis pellentesque lacus nec arcu. Cras iaculis fringilla nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut at wisi non eros iaculis porttitor. Ut facilisis eros ac libero. Praesent congue, lectus sed vulputate condimentum, justo orci consequat leo, sit amet nonummy odio sem sit amet arcu. Etiam tempus, neque ut feugiat ultricies, lacus justo tincidunt wisi, ac tempor ante nunc non sem. Pellentesque neque. Curabitur elementum viverra turpis. \r\n\r\nMorbi eleifend lorem et lacus. Donec mattis pulvinar leo. Fusce augue justo, eleifend et, tempus vel, auctor id, pede. In congue, tortor et suscipit fringilla, nulla libero bibendum magna, nec cursus sem urna vitae massa. Sed elementum condimentum arcu. Aliquam ac lectus a nibh congue mattis. Duis tempus. Sed malesuada vehicula ipsum. Suspendisse vestibulum. Duis ut turpis. Nunc vel leo sit amet arcu euismod pretium. \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','F36F8BFFF97F8A16505B8305F7',20040126110904,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('F964B6AC1074E889A440C5CFF','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','','','','','','','F36F8BFFF97F8A16505B8305F7',20040115122746,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA08B73F15CA1F551D35E90358','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','\r\n','12-JAN-2004','12:30 - 13.00','','ASDDDASD ASDD','qwqweeqwe\r\n<br>qweqwe\r\n<br>qwehweryety\r\n<br>dfggg\r\n<br>dfggnbvcn\r\n<br>ryesddgfg\r\n<br>\r\n','qwerqwerqwrv  qweewewqe\r\n','F36F8BFFF97F8A16505B8305F7',20040114171557,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('F9839B7F5D67617CC9DF8C837','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7',20031217165446,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('F99D875C4A457BEC110B83AB42','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Presentasi','Rapat Koordinasi','Rabu\r\n','22-DEC-2003','','','Testing Report','1. dedeng\r\n<br>2. umar\r\n','testing report\r\n','F36F8BFFF97F8A16505B8305F7',20040115141730,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('F9F9CA6AB83C5CD84D3C4EB85D','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Presentasi','Rapat Koordinasi','\r\n','','','','','','','F36F8BFFF97F8A16505B8305F7',20040115104114,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('F9F9CF7142DC5BC54F2FB9C34E','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7',20040109154621,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA13B24B75E47E2F327674BC5','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7',20040114162438,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA13BB510732643EDA704C8A12','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','\r\n','','','','','','','F36F8BFFF97F8A16505B8305F7',20040115123436,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA13BDE3CAE53C3E870F6C7F41','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','\r\n','','','','','','','F36F8BFFF97F8A16505B8305F7',20040115151218,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA13C634D4A3128518ED888059','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7',20040114164622,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA1C711062690AA02729E06434','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Presentasi','Rapat Koordinasi','Jumat\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','16-JAN-2004','10.00 - 11.00','Ruang Rapat II Gedung Utama','Progress','1. Frans Thamura\r\n2. Wahyu Aris\r\n3. Umar Khatab\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','Proin mi. Suspendisse erat nunc, pellentesque quis, viverra ac, tincidunt ut, wisi. Donec nisl nisl, elementum suscipit, tristique vitae, fringilla at, ante. Donec erat tellus, blandit eget, rhoncus non, congue et, felis. Morbi auctor urna non pede. Mauris faucibus aliquam metus. Aenean quis erat. Vestibulum est nisl, tristique eu, rutrum in, euismod nec, mi. Ut nibh. Nullam fringilla nisl. Suspendisse sed arcu. Donec et lectus nec dui lobortis sagittis. Phasellus in lectus a lorem dictum pretium. Morbi nec mauris. Cras at mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \r\n\r\nVivamus ut nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Proin eleifend leo nec ipsum fermentum vehicula. Nulla vel est nec mi consectetuer commodo. Quisque vestibulum, libero eu venenatis tincidunt, orci eros consequat quam, in condimentum felis arcu nec libero. Nunc nulla. Integer feugiat lacus sed metus. Integer sapien mi, vestibulum sit amet, pulvinar a, egestas in, elit. Donec nulla leo, aliquet non, commodo eget, ornare vel, enim. Ut tristique felis a velit fermentum porttitor. Etiam interdum orci quis erat. \r\n\r\nMorbi sed wisi. Quisque nibh dolor, feugiat vel, aliquam eget, pharetra eget, eros. Donec quis sem eget massa sagittis consectetuer. Integer laoreet molestie neque. Etiam rutrum, purus ut euismod rutrum, felis augue interdum augue, ut tincidunt lacus ipsum non purus. Mauris eu nisl. Etiam eros tellus, scelerisque at, elementum sagittis, placerat at, lectus. Nunc eget est. Pellentesque ultricies, enim vel mollis nonummy, dolor tellus mattis dolor, nec consectetuer libero sem a nibh. Donec et justo. Nulla facilisi. Cras pellentesque velit non arcu. Proin elit. Fusce convallis convallis nunc. Phasellus vitae mi. Cras quis sapien. Proin placerat rhoncus orci. Cras ipsum massa, ultricies sed, vestibulum quis, imperdiet in, nibh. Nam porttitor arcu viverra ante. Duis id metus. \r\n\r\n\r\n','F36F8BFFF97F8A16505B8305F7',20040315113544,'F36F8BFFF97F8A1',20040315113544,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA1DD0C210FD5329EC59D9425','Testing the most extreme Group','Company','Notulen Presentation','Report subtitle','Senin\r\n','15-JAN-2004','','','Meeting for Geek','Frans\r\nJohannes\r\nYosana\r\nSiska\r\n','Etiam lorem. Duis molestie aliquet urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Pellentesque ut odio. Duis commodo rutrum arcu. Mauris congue pulvinar mauris. Cras eu turpis. Donec ut sem quis elit dapibus dapibus. Curabitur a purus nec pede mattis ullamcorper. Suspendisse lorem libero, ultricies ac, tempor eu, fringilla non, orci. Mauris sit amet nunc. Cras felis. Vivamus varius accumsan sapien. Mauris tristique malesuada mauris. Vivamus id urna luctus purus tristique consectetuer. Maecenas fringilla metus nec eros. Quisque vitae nisl sed augue tincidunt scelerisque. Fusce non neque at tortor congue tincidunt. Vestibulum sit amet augue non wisi mattis lacinia. Praesent eget est. \r\n\r\nCurabitur odio lectus, adipiscing sed, consequat vitae, rhoncus sit amet, quam. Aliquam tortor. Phasellus vel neque. Nulla quis nisl. Cras in diam eget libero volutpat imperdiet. Maecenas a nulla. Integer nisl. Aliquam condimentum lectus at wisi. Nam vel diam in purus dignissim sodales. Nullam auctor erat quis ipsum. \r\n\r\nQuisque eget nulla nec felis varius faucibus. Curabitur facilisis auctor leo. Suspendisse nec nibh. Nam varius facilisis velit. Nullam luctus, augue ut pretium volutpat, orci felis dapibus felis, at euismod lectus pede non justo. Proin dolor. Fusce mattis malesuada pede. Donec egestas neque sit amet elit pellentesque convallis. Suspendisse potenti. Sed ut leo vel metus ornare convallis. Etiam pellentesque nulla at ligula. Praesent facilisis cursus lacus. Pellentesque ac elit at velit facilisis vulputate. Aliquam dolor augue, luctus id, accumsan sed, blandit in, sapien. Morbi sodales nisl fringilla magna. Integer arcu leo, accumsan eget, rhoncus in, egestas id, erat. Vivamus eget felis eu est rhoncus pretium. \r\n','F36F8BFFF97F8A16505B8305F7',20040204092347,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA1E3B93B620423F82EAB94547','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','Senin\r\n\r\n\r\n\r\n','18-JAN-2004','09.00 - 10.00','Ruang Rapat II Gedung Utama','','','Proin mi. Suspendisse erat nunc, pellentesque quis, viverra ac, tincidunt ut, wisi. Donec nisl nisl, elementum suscipit, tristique vitae, fringilla at, ante. Donec erat tellus, blandit eget, rhoncus non, congue et, felis. Morbi auctor urna non pede. Mauris faucibus aliquam metus. Aenean quis erat. Vestibulum est nisl, tristique eu, rutrum in, euismod nec, mi. Ut nibh. Nullam fringilla nisl. Suspendisse sed arcu. Donec et lectus nec dui lobortis sagittis. Phasellus in lectus a lorem dictum pretium. Morbi nec mauris. Cras at mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \r\n<br>\r\n<br>Vivamus ut nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Proin eleifend leo nec ipsum fermentum vehicula. Nulla vel est nec mi consectetuer commodo. Quisque vestibulum, libero eu venenatis tincidunt, orci eros consequat quam, in condimentum felis arcu nec libero. Nunc nulla. Integer feugiat lacus sed metus. Integer sapien mi, vestibulum sit amet, pulvinar a, egestas in, elit. Donec nulla leo, aliquet non, commodo eget, ornare vel, enim. Ut tristique felis a velit fermentum porttitor. Etiam interdum orci quis erat. \r\n<br>\r\n<br>Morbi sed wisi. Quisque nibh dolor, feugiat vel, aliquam eget, pharetra eget, eros. Donec quis sem eget massa sagittis consectetuer. Integer laoreet molestie neque. Etiam rutrum, purus ut euismod rutrum, felis augue interdum augue, ut tincidunt lacus ipsum non purus. Mauris eu nisl. Etiam eros tellus, scelerisque at, elementum sagittis, placerat at, lectus. Nunc eget est. Pellentesque ultricies, enim vel mollis nonummy, dolor tellus mattis dolor, nec consectetuer libero sem a nibh. Donec et justo. Nulla facilisi. Cras pellentesque velit non arcu. Proin elit. Fusce convallis convallis nunc. Phasellus vitae mi. Cras quis sapien. Proin placerat rhoncus orci. Cras ipsum massa, ultricies sed, vestibulum quis, imperdiet in, nibh. Nam porttitor arcu viverra ante. Duis id metus. \r\n\r\n\r\n\r\n','F36F8BFFF97F8A16505B8305F7',20040116173529,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA1E3783D13D510C2107FD96A3','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7',20040116172624,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA1E402FA79B397914EC9B0EAE','Matahari Kahuripan','test','Notulen Presentasi','Rapat Koordinasi','','','','','asdfasdf','tesate\r<br>testa','asdfasdf','F36F8BFFF97F8A16505B8305F7',20040116173554,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FA1E408A7C74FF502CD071D17E','Matahari Kahuripan','','Notulen Presentasi','Rapat Koordinasi','','','asdf','asdf','asdfasdf','asdfasdf\r<br>asdfasdf','asdfasdf','F36F8BFFF97F8A16505B8305F7',20040116173620,NULL,00000000000000,'0','ic',NULL);
INSERT INTO notulen VALUES ('FACCC28CD1AFF5DEF87F890FE3','Matahari Kahuripan','PT. Intercitra Prima Integrasi','Notulen Presentasi','Rapat Koordinasi','','','','','','','','F36F8BFFF97F8A16505B8305F7',20040219145223,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `open_job`
--

CREATE TABLE open_job (
  id varchar(28) NOT NULL default '',
  title varchar(50) default NULL,
  highlight text,
  detail text,
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  publish_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `open_job`
--

INSERT INTO open_job VALUES ('EF1EF7ECE9D2C40A656132F2E','Java Developer','1 year J2EE Development <br>\r\nOpen Source Component Contributor','We need a developer that make development is a hobby. If you eager with IT, you can join us, call us and tell what do you want, We can make your dream came true.',NULL,'EF616044AE4A60EE00C92C858open_jobs_big.jpg','','',1,'EEA063FE983851E',20020731225442,'EEA063FE983851E',20020731225442,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO open_job VALUES ('EF2F0FC62FE000588342B2A58','Java Developer','Java Developer Position','Requirement<br>\r\nS1 Information Technology<br>\r\nmale/female<br>\r\nage max.27th<br>',NULL,'EF57BC3531E9D3B61E7C3C0116images01.gif',NULL,NULL,1,'EEA063FE983851E',20020730015942,'EEA063FE983851E',20020730015942,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO open_job VALUES ('EF57BD11F59D7A2C77A5A3D378','Accounting','Accounting Possition','Requirement<br>\r\nS1 Accounting<br>\r\nmale/female<br>\r\nage max.27th<br>',NULL,'EF57BD7DEE80E1C0398B2283D9images02.gif',NULL,NULL,1,'EEA063FE983851E',20020730020020,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO open_job VALUES ('EF57BDF80FA246572D73D85E63','Programmer','Programmer Possition','Requirement<br>\r\nS1/D3 Information Technology<br>\r\nmale/female<br>\r\nage max.27th<br>',NULL,'EF57BE9CBC9FDC09220C39222Eimages03.gif',NULL,NULL,1,'EEA063FE983851E',20020730020133,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO open_job VALUES ('EF8E3DFB8756AAC9A08A37A4DE','Java Developer','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ',NULL,'EF8E3E520FA8F6FE1E1F9C8265images1.jpg',NULL,NULL,1,'EEA063FE983851E',20020809160032,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO open_job VALUES ('EF8E3E604C996AD28FBBE57424','Secretary','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ',NULL,'EF8E3ED131CAFA180DC4C56310images2.jpg',NULL,NULL,1,'EEA063FE983851E',20020809160105,'EEA063FE983851E',20020809160105,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO open_job VALUES ('F4D794F7472487264299D41ED8','Programmer','Java Programmer','Qualification\r\n(J2EE, XML, JDOM)\r\n',NULL,'F4D796C98C96B311759C18658Aproduct(2).gif',NULL,NULL,1,'F36F8BFFF97F8A16505B8305F7',20030429110323,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO open_job VALUES ('F98866BF31A1054E005D57ACEA','','','',NULL,NULL,NULL,NULL,1,'F36F8BFFF97F8A16505B8305F7',20031218151454,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO open_job VALUES ('F988724523BDA5982AAD3262DF','','','',NULL,NULL,NULL,NULL,1,'F36F8BFFF97F8A16505B8305F7',20031218152730,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');

--
-- Table structure for table `opportunity`
--

CREATE TABLE opportunity (
  id varchar(28) NOT NULL default '',
  amount varchar(255) default NULL,
  description varchar(255) default NULL,
  expectedCloseDate varchar(255) default NULL,
  name varchar(255) default NULL,
  nextStep varchar(255) default NULL,
  probability varchar(255) default NULL,
  salesStage varchar(255) default NULL,
  type varchar(255) default NULL,
  businessPartnerId varchar(28) default NULL,
  create_by varchar(28) default NULL,
  update_by varchar(28) default NULL,
  create_date date default NULL,
  update_date date default NULL,
  active_flag int(11) default NULL,
  PRIMARY KEY  (id),
  KEY businessPartnerId (businessPartnerId),
  KEY businessPartnerId_2 (businessPartnerId),
  KEY businessPartnerId_3 (businessPartnerId),
  KEY businessPartnerId_4 (businessPartnerId),
  KEY businessPartnerId_5 (businessPartnerId),
  KEY businessPartnerId_6 (businessPartnerId),
  KEY businessPartnerId_7 (businessPartnerId),
  KEY businessPartnerId_8 (businessPartnerId),
  KEY businessPartnerId_9 (businessPartnerId),
  KEY businessPartnerId_10 (businessPartnerId),
  KEY businessPartnerId_11 (businessPartnerId),
  KEY businessPartnerId_12 (businessPartnerId),
  KEY businessPartnerId_13 (businessPartnerId),
  KEY businessPartnerId_14 (businessPartnerId),
  KEY businessPartnerId_15 (businessPartnerId),
  KEY businessPartnerId_16 (businessPartnerId),
  KEY businessPartnerId_17 (businessPartnerId),
  KEY businessPartnerId_18 (businessPartnerId),
  KEY businessPartnerId_19 (businessPartnerId),
  KEY businessPartnerId_20 (businessPartnerId),
  KEY businessPartnerId_21 (businessPartnerId),
  KEY businessPartnerId_22 (businessPartnerId),
  KEY businessPartnerId_23 (businessPartnerId),
  KEY businessPartnerId_24 (businessPartnerId),
  KEY businessPartnerId_25 (businessPartnerId),
  KEY businessPartnerId_26 (businessPartnerId),
  KEY businessPartnerId_27 (businessPartnerId),
  KEY businessPartnerId_28 (businessPartnerId),
  KEY businessPartnerId_29 (businessPartnerId),
  KEY businessPartnerId_30 (businessPartnerId),
  KEY businessPartnerId_31 (businessPartnerId)
) TYPE=MyISAM;

--
-- Dumping data for table `opportunity`
--

INSERT INTO opportunity VALUES ('ff808081055c020801055c024b01','fdsf','','sddsf','sdfs','','','Prospecting','',NULL,'1','1','2005-07-28','2005-07-29',0);
INSERT INTO opportunity VALUES ('ff808081055c298501055c29c63d','ss','','aaa','new','','','Prospecting','',NULL,'1','1','2005-07-28','2005-07-29',0);
INSERT INTO opportunity VALUES ('ff808081055c2e4501055c2e755d','dd','','ddd','sss','','','Prospecting','',NULL,'1','','2005-07-28','2005-07-28',0);
INSERT INTO opportunity VALUES ('ff808081055c2e4501055c310a9e','dasdas','','das','sssaasd','','','Prospecting','',NULL,'1','1','2005-07-28','2005-07-28',0);
INSERT INTO opportunity VALUES ('ff808081055c458a01055c45ede4','ssds','','sddas','sasdsa','','','Prospecting','',NULL,'1','','2005-07-28','2005-07-28',0);
INSERT INTO opportunity VALUES ('ff8080810561a314010561a3b2b8','daas','','assa','aaaa','','100','Prospecting','','ff8080810561d256010561da3ca7','1','1','2005-07-29','2005-07-29',0);

--
-- Table structure for table `opportunityProduct`
--

CREATE TABLE opportunityProduct (
  id varchar(28) NOT NULL default '',
  opportunityId varchar(28) default NULL,
  price varchar(255) default NULL,
  unit varchar(255) default NULL,
  productId varchar(255) default NULL,
  name varchar(255) default NULL,
  sale varchar(255) default NULL,
  create_by varchar(28) default NULL,
  update_by varchar(28) default NULL,
  create_date date default NULL,
  update_date date default NULL,
  active_flag int(11) default NULL,
  PRIMARY KEY  (id),
  KEY opportunityId_18 (opportunityId),
  KEY opportunityId_4 (opportunityId),
  KEY opportunityId_19 (opportunityId),
  KEY opportunityId_5 (opportunityId),
  KEY opportunityId_6 (opportunityId),
  KEY opportunityId_7 (opportunityId),
  KEY opportunityId_8 (opportunityId),
  KEY opportunityId (opportunityId),
  KEY opportunityId_9 (opportunityId),
  KEY opportunityId_10 (opportunityId),
  KEY opportunityId_11 (opportunityId),
  KEY opportunityId_12 (opportunityId),
  KEY opportunityId_13 (opportunityId),
  KEY opportunityId_14 (opportunityId),
  KEY opportunityId_15 (opportunityId),
  KEY opportunityId_16 (opportunityId),
  KEY opportunityId_2 (opportunityId),
  KEY opportunityId_17 (opportunityId),
  KEY opportunityId_3 (opportunityId),
  KEY opportunityId_20 (opportunityId),
  KEY opportunityId_21 (opportunityId),
  KEY opportunityId_22 (opportunityId),
  KEY opportunityId_23 (opportunityId),
  KEY opportunityId_24 (opportunityId),
  KEY opportunityId_25 (opportunityId),
  KEY opportunityId_26 (opportunityId),
  KEY opportunityId_27 (opportunityId),
  KEY opportunityId_28 (opportunityId),
  KEY opportunityId_29 (opportunityId),
  KEY opportunityId_30 (opportunityId),
  KEY opportunityId_31 (opportunityId)
) TYPE=MyISAM;

--
-- Dumping data for table `opportunityProduct`
--

INSERT INTO opportunityProduct VALUES ('ff80808105617a5b0105617ae85c','ff808081055c298501055c29c63d','1000','100','ff808081055be9f001055beec362','games','100000.0','','','2005-07-29','2005-07-29',0);

--
-- Table structure for table `order_detail`
--

CREATE TABLE order_detail (
  id varchar(28) NOT NULL default '',
  order_number varchar(30) NOT NULL default '',
  product_id varchar(30) NOT NULL default '',
  provider_id varchar(30) NOT NULL default '',
  qty varchar(5) NOT NULL default '',
  uom_code varchar(5) NOT NULL default '',
  price_per_unit varchar(20) NOT NULL default '',
  sub_total varchar(20) NOT NULL default '',
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `order_detail`
--

INSERT INTO order_detail VALUES ('ED8FB6BB234ABF7B3521F54F23','ED8FB933E1B20A0477428DCF39','ED80C1CC8EFAD01106B3B4A981','','6','PR','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED8FB6E0B04F447F3A8BED6D3F','ED8FB933E1B20A0477428DCF39','ED80C222115F7AC8C0CA6DE789','','10','DZ','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED8FBD99AE3EB5BA3FA87C22B8','ED8FBEA2DEC2E418C4213EC4BB','ED80CA904A9C34627B0E9C6D31','ED8ABDC4A5E38A4C2A8EB7FFD0','5','GRS','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED8FBE0E2D8310B7F6051B4441','ED8FBEA2DEC2E418C4213EC4BB','ED80CAF9A2A14C2BA2BEC628AF','ED8ABDF1799ED55FB193F90BD7','8','BX','1500','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED8FC1E58BE380DB30914D00B','ED8FC227614398F167A97A8865','ED80C222115F7AC8C0CA6DE789','ED8B2E9D553E356621A976EEC2','5','GRS','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED8FC4AC4A5009EEB9F7D4AB39','ED8FC515F311DBD9643F7BF526','ED80CAF9A2A14C2BA2BEC628AF','ED8ABDF1799ED55FB193F90BD7','0','BX','1500','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED943AE9AE3F4D1116F2EA7B7','ED943B28EF42B6DD4306D48D82','ED80C1CC8EFAD01106B3B4A981','','3','DZ','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED943C1478FB15F5D104A4F936','ED943C84F9B09A4BBA74686F00','ED80CAF9A2A14C2BA2BEC628AF','ED8ABDC4A5E38A4C2A8EB7FFD0','4','EA','1500','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED943BED3BC8E61906F3D06512','ED943C84F9B09A4BBA74686F00','ED80C1CC8EFAD01106B3B4A981','ED8B2E9D553E356621A976EEC2','5','PR','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED949E62079C429370DDBBC612','ED949EDC46E8603C895C8B9F6D','ED80C222115F7AC8C0CA6DE789','','6','BX','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED949F24F5E83AE83E1DAB7C42','ED949FE1E79E11AAF7FE1F7767','ED80C222115F7AC8C0CA6DE789','ED8B2E9D553E356621A976EEC2','6','PR','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED95008D6D30DB5FCA86631453','ED950379E322BD948144AC2F1','ED80C1CC8EFAD01106B3B4A981','','1','GRS','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED953B77DBCAB01F799E88B789','ED953C9F7A21AA27C265AF660A','ED80CA904A9C34627B0E9C6D31','','2','EA','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED953C3242387543DF90DE72BE','ED953C9F7A21AA27C265AF660A','ED80CAF9A2A14C2BA2BEC628AF','','2','PR','1500','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED95758EB1DD7B7757793D96B2','ED9583D9645512FB4B68A3D4A5','ED80CA904A9C34627B0E9C6D31','','6','DZ','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED958E55E0AF1592528E5BD38D','ED958ED75CB1C5282BB3023BBF','ED80CAF9A2A14C2BA2BEC628AF','','1','PR','1500','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('ED95AE91286F928C0FB6E148F9','ED95AEFA625817502E9DDD1903','ED80C1CC8EFAD01106B3B4A981','','1','EA','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('EDA3CD9180FBE46D7A05FED277','EDA3CE4084EEA75681CEF9AD49','ED80CA904A9C34627B0E9C6D31','','3','PR','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO order_detail VALUES ('EDA41E4A446741A3CBA895DFD0','EDA41F74BEB17084234E5BF0F1','ED80CA904A9C34627B0E9C6D31','','6','PR','120000','',0,'',00000000000000,'',00000000000000,'','',NULL);

--
-- Table structure for table `osml`
--

CREATE TABLE osml (
  id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  description varchar(255) NOT NULL default '',
  url_osml varchar(255) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'IC',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `osml`
--

INSERT INTO osml VALUES ('E8D4BE646EF710FAB3F79BE639','Standard','Standard Approval for News Company','standard.osml',1,'1',20010910233337,'1',20010910233337,'IC',NULL);

--
-- Table structure for table `page_collection`
--

CREATE TABLE page_collection (
  id varchar(28) NOT NULL default '',
  site_id varchar(28) NOT NULL default '',
  name varchar(128) default NULL,
  description text,
  skin_id varchar(28) NOT NULL default '',
  descriptor_id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  active_flag tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `page_collection`
--

INSERT INTO page_collection VALUES ('EDF2443813F00F1BF2C6BD8562','ED2E4202F2AE0340726C67A877','main_page','Main Page','EF33952CCDF48014677207390C','25',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF3DD618C889897019A439732','ED2E4202F2AE0340726C67A877','about_us','Green Matrix About Us','EF3DD04583B1E0BF80BF38F7B4','25',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EE7C72FC589FF167B7B8978BEC','EDDCA9DCE41A14EE5D5ABE7E3C','solution_detail','Solution Page','EEED90B7B09350BB36F389A43E','EE163600A2BAD87965E20E9C9A',NULL,20020729000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EE24CA21C58A6418C358BCB0E2','EE185CE0B82B41C1724F284685','cimande','cimande','EED8A79711FD1B9C63BA7ADA0E','',NULL,20020705000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF3E3F0419D7F9729AE28D8D6E','ED2E4202F2AE0340726C67A877','contact_us','Green Matrix Contact Us','EF3DD0B340E38780B1B49BB820','25',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EE7CCE9C61D7D9ED63A579A196','EDDCA9DCE41A14EE5D5ABE7E3C','solution','','EEEE887BFAA2FB39A07504A03A','25',NULL,20021015000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EE7CCFA78F6D0C6E8C7F0711F6','EDDCA9DCE41A14EE5D5ABE7E3C','news','','EEED8F61ACA8FD143C4A127AE','25',NULL,20020729000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EE7CCFEE491A0E3B6A5497D05D','EDDCA9DCE41A14EE5D5ABE7E3C','news_detail','','EEED8FAA79AC379210C5F52060','EE1634B19EB64BB12485263F79',NULL,20020729000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EE7CD0F71F15D0FC571C472A3F','EDDCA9DCE41A14EE5D5ABE7E3C','press_release','Press Release Page','EEED91195E6BDC9CF09ECB2DF3','25',NULL,20020729000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF3E486027CD676EEB50BB88A7','ED2E4202F2AE0340726C67A877','press_release','Green Matrix Press Release','EF3DD27718347862F68D50A66','EE16354AB187B638CC4579F8B6',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EEFB3546C96942F32BA73D2837','EDDCA9DCE41A14EE5D5ABE7E3C','main_page','Main Page of Intercitra Website','EEED8E57002048A2E9071DAF76','25',NULL,20020730000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EEFB66A82BBA981ABDCDD0F336','EDDCA9DCE41A14EE5D5ABE7E3C','about_us','About Us Detail Page','EEED8EE4881FA530706324955E','25',NULL,20020729000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EEFB671AFB98DFAFD13702A2B6','EDDCA9DCE41A14EE5D5ABE7E3C','contact_us','Contact Us Input Form','EEED8F22116F192E521FCB6C46','25',NULL,20020729000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF19B5F650A671C3BD83C6CD37','EDDCA9DCE41A14EE5D5ABE7E3C','press_release_detail','Press Release Detail','EEED915B2AE8D8F40ACED882C5','EE16354AB187B638CC4579F8B6',NULL,20020730000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF1EF9CA64986834DE8B1107F5','EDDCA9DCE41A14EE5D5ABE7E3C','open_job_detail','Open Job Detail','EF1EEC2113DFA19FB81258C38A','EF1EE6CF42F37C9EA72FAE3B94',NULL,20020729000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF3E4A1FD930D3F55FE60D71EB','ED2E4202F2AE0340726C67A877','latest_news','Green Matrix Latest News','EF3DB199C4997C0D4CF66C2FE3','EE1634B19EB64BB12485263F79',NULL,20020730000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF3E4C91A4FC8D8B3D69E33A0C','ED2E4202F2AE0340726C67A877','our_solutions','Green Matrix Our Solutions','EF3DD1C31AAA5A6C655E9DE458','EE163600A2BAD87965E20E9C9A',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF3E5B33DB2B41B00EBD520A2D','ED2E4202F2AE0340726C67A877','our_solution_details','Green Matrix Our Solution Details','EF3DD11C4B8AF9FF295F58BA9E','EE163600A2BAD87965E20E9C9A',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF3E62C28C692B6F12ABB8444B','ED2E4202F2AE0340726C67A877','latest_news_details','Green Matrix Latest News Details','EF3DCE12F3E784A3504C51EE52','EE1634B19EB64BB12485263F79',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF3E65A1E6DA0C6EDDC1849967','ED2E4202F2AE0340726C67A877','press_release_details','Green Matrix Press Release Details','EF3DD3C0DE6F7365ABC3BC9FB7','EE16354AB187B638CC4579F8B6',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF5D4EEB993D601978D2A9B1B1','ED2E4202F2AE0340726C67A877','open_job','Open Job','EF3DD45212976F3861F684F91C','EF1EE6CF42F37C9EA72FAE3B94',NULL,20020731000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF61EBE35B969F4673370B2083','EDDCAA0575D694D2560CC2511F','main_page','Main Page','EF878D43B44129DB9FF337D315','25',NULL,20020808000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF620671B2D8FF97E9378AF9F4','EDDCAA0575D694D2560CC2511F','our_solutions','Our Solutions','EF8790300BE12E5CCE2C2E4701','EE163600A2BAD87965E20E9C9A',NULL,20020808000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF627EC23B9147AA2660FFB9CA','EF62687CC1170D25FC73E0051C','main_page','Main Page','EF61D94A207A243FA2C5E7DACC','23',NULL,20020801000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF6686333E17BA23A91D28BF74','EF62687CC1170D25FC73E0051C','our_solutions','Our Solutions','EF61D9BA4FA37DC5D61F0B8B6A','EE163600A2BAD87965E20E9C9A',NULL,20020801000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF6692056DD285D1F852EC5517','EF62687CC1170D25FC73E0051C','about_us','About Us','EF61DD5C4D4F996AE3D9853CD8','25',NULL,20020801000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF6706D25EC924ECA1B7B16A67','EF62687CC1170D25FC73E0051C','latest_news','Latest News','EF61DAA20FF6FC31E28AAFACDB','EE1634B19EB64BB12485263F79',NULL,20020802000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF670DDA1C2334375FB7DFBC4C','EF62687CC1170D25FC73E0051C','press_release','Press Release','EF61DA32CA45F6895A5FF65099','EE16354AB187B638CC4579F8B6',NULL,20020802000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF6727F71CFE669F4CB952B586','EF62687CC1170D25FC73E0051C','contact_us','Contact Us','EF61DCC666E816B86B1EF4A04B','23',NULL,20020802000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF67474EAB993A923F9991F26D','EF62687CC1170D25FC73E0051C','press_release_detail','Press Release Detail','EF61DC5B0983D882183BF23C11','EE16354AB187B638CC4579F8B6',NULL,20020802000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF67542644748EC41A104CDBD6','EF62687CC1170D25FC73E0051C','latest_news_detail','Latest News Detail','EF61DB0ABCB2C0383ED89CF3BE','EE1634B19EB64BB12485263F79',NULL,20020802000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF6775ADB3CB233515945B3C44','EF62687CC1170D25FC73E0051C','our_solutions_detail','Our Solutions Detail','EF61DBC92A5A01266BD3D0D049','EE163600A2BAD87965E20E9C9A',NULL,20020802000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF7710A1291755B321405AB0EF','EE1B28DE85CED7258C4D46D2E2','main_page','Main Page','EF770682B51853368774F11E41','23',NULL,20020805000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF7710FD241522562748FDB505','EE1B28DE85CED7258C4D46D2E2','about_us','About Us','EF7706DCFA2042BE91940B9029','EF76BA4ED5D8F2A21B1933A750',NULL,20020805000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF774E5BB6704460C14A05B178','EE1B28DE85CED7258C4D46D2E2','our_solutions','Our Solutions','EF77097FA9F464579815DAB4DB','EE163600A2BAD87965E20E9C9A',NULL,20020805000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF776ECC8533F1DCD8771A673E','EE1B28DE85CED7258C4D46D2E2','press_release','Press Release','EF770A3D3C54272D02290A7ACF','EE16354AB187B638CC4579F8B6',NULL,20020805000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF7B149A3B1F991DC9DC557434','EE1B28DE85CED7258C4D46D2E2','latest_news','Lates News','EF770890284513762413980D61','EE1634B19EB64BB12485263F79',NULL,20020805000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF83E8305D147F07BDA66CFD87','EE1B28DE85CED7258C4D46D2E2','contact_us','Contact Us','EF7708560D9A33A55538E8D5DD','25',NULL,20020807000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF83E8C7F3F067529DEEF2976F','EE1B28DE85CED7258C4D46D2E2','our_solutions_detail','Our Solutions Detail','EF7709E076918224E2C5B07B7A','EE163600A2BAD87965E20E9C9A',NULL,20020807000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF83E9957BAD9DACFEB3B99228','EE1B28DE85CED7258C4D46D2E2','press_release_detail','Press Release Detail','EF770A8FA2B9C566FEB2D07D71','EE16354AB187B638CC4579F8B6',NULL,20020807000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF83EA1701723C106B5DDD79F5','EE1B28DE85CED7258C4D46D2E2','latest_news_detail','Latest News Detail','EF7708F5A92C7708E431064FF','EE1634B19EB64BB12485263F79',NULL,20020807000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF87E6C46078E6ADE3CC37678A','EDDCAA0575D694D2560CC2511F','about_us','About Us','EF878D94EA13DF41D77ECEEA3F','EF76BA4ED5D8F2A21B1933A750',NULL,20020808000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF881575F96BDDA74A2F9F67CF','EDDCAA0575D694D2560CC2511F','contact_us','Contact Us','EF878DE1DCA0A8D06486C85DA6','23',NULL,20020808000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF88311F355F6697A7A15241F6','EDDCAA0575D694D2560CC2511F','latest_news','Latest News','EF878E3C0754B2250A49C18A01','EE1634B19EB64BB12485263F79',NULL,20020808000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8CEB306882629A3A349C4DA0','EDDCAA0575D694D2560CC2511F','our_solutions_detail','Our Solutions Detail','EF87930075DA19F24E509D71A0','EE163600A2BAD87965E20E9C9A',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8CEBFC8737ED0AEB94671FE5','EDDCAA0575D694D2560CC2511F','latest_news_detail','Latest News Detail','EF878EBEE25A571043B9E2D699','EE1634B19EB64BB12485263F79',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8CECAE032AA95498E258BA5F','EDDCAA0575D694D2560CC2511F','press_release_detail','Press Release Detail','EF878F2718A11A7D23D6EBF386','EE16354AB187B638CC4579F8B6',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8CEDB9638E69EAE45AA9C1B4','EDDCAA0575D694D2560CC2511F','press_release','Press Release','EF878FD2836818603346084F2F','EE16354AB187B638CC4579F8B6',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E41866B8177D79F12CAAB4A','EF8E260F5EE7A2E8ECE6F2F3A3','main_page','Main Page','EF8E277F34F1C4DE8229CFC10D','23',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E45713A4A84AC617D643646','EF8E260F5EE7A2E8ECE6F2F3A3','our_solutions','Our Solutions','EF8E2910D6DC72DE5A739B7323','EE163600A2BAD87965E20E9C9A',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E45F70D38098217F3204833','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news','Latest News','EF8E2AA141B4B44CED456914C8','EE1634B19EB64BB12485263F79',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E469192716E4177E8AE9E69','EF8E260F5EE7A2E8ECE6F2F3A3','press_release','Press Release','EF8E29F7DF9BD41DE59E1B3273','EE16354AB187B638CC4579F8B6',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E4703CCD3FD17EAF48DB207','EF8E260F5EE7A2E8ECE6F2F3A3','about_us','About Us','EF8E285DE8A1E858D8BCC33A12','EF76BA4ED5D8F2A21B1933A750',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E476A72C68187818F3CB5A3','EF8E260F5EE7A2E8ECE6F2F3A3','contact_us','Contact Us','EF8E28BDB57036C93F24B9B14E','23',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E47BA5DAD18EA08DA96AE10','EF8E260F5EE7A2E8ECE6F2F3A3','latest_news_detail','Latest News Detail','EF8E2B0BB26649B06A069D8519','EE1634B19EB64BB12485263F79',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E48391C972F711E2B9156E7','EF8E260F5EE7A2E8ECE6F2F3A3','press_release_detail','Press Release Detail','EF8E2A49DD1A4B7CB00B8D1A88','EE16354AB187B638CC4579F8B6',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E48C49144CA95A0A1285F5E','EF8E260F5EE7A2E8ECE6F2F3A3','our_solutions_detail','Our Solutions Detail','EF8E29788AD8D3BFDC5F397011','EE163600A2BAD87965E20E9C9A',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('EF8E494CB3417536B4C7864C0D','EF8E260F5EE7A2E8ECE6F2F3A3','open_jobs','Open Jobs','EF8E2B6302127EB28DF0796D9','EF1EE6CF42F37C9EA72FAE3B94',NULL,20020809000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F07B5DECBC9820D2C4A0997697','F07B23B53C6185EACC86EFE1D8','main_page','Main Page','F07B379B79C9CD7743C23D2596','EF76BA4ED5D8F2A21B1933A750',NULL,20020924000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F08040377B159867B63329097A','F07B23B53C6185EACC86EFE1D8','forum','Forum','F07B3995D35970D90584A8EE7F','EF76BA4ED5D8F2A21B1933A750',NULL,20020925000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F083F2AFBD672047F65BC8E27C','F07B23B53C6185EACC86EFE1D8','recipe','Recipe','F07B3801CF22E2E91A2A70AE4D','EE1634B19EB64BB12485263F79',NULL,20020926000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F083FA41C296D2549F9BCC92A5','F07B23B53C6185EACC86EFE1D8','project','Project','F07B3AFC312B9E0CA737CE8886','EE1634B19EB64BB12485263F79',NULL,20020926000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F0E64DB4BE71F4619D1F2686B5','EDDCA9DCE41A14EE5D5ABE7E3C','latest_news','Latest News','EEED8F61ACA8FD143C4A127AE','EE1634B19EB64BB12485263F79',NULL,20021015000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F08423844B51176B81DFF67352','F07B23B53C6185EACC86EFE1D8','review','Review','F07B3CA6AAD39BFD520EFFEFC0','EE1634B19EB64BB12485263F79',NULL,20020926000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F0842A677E305275FF9B0053C3','F07B23B53C6185EACC86EFE1D8','contact_us','Contact Us','F07B3C19D634A84A21B00B2304','EF76BA4ED5D8F2A21B1933A750',NULL,20020926000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F084348DB860453D6349097F08','F07B23B53C6185EACC86EFE1D8','resource','Resource','F07B3A364057068AFB1D09B24B','E7A781CFBA45A3CB44C81D8236',NULL,20020926000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F0846040A08C2276BB6D12E742','F07B23B53C6185EACC86EFE1D8','recipe_detail','Recipe Detail','F07B38486BD0AC516EDA596175','EE1634B19EB64BB12485263F79',NULL,20020926000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F09DE35103CB6229E57415D40A','F07B23B53C6185EACC86EFE1D8','press_release','Press Release','F09DDFE362D841F17A30993ED','EE16354AB187B638CC4579F8B6',NULL,20021001000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F09DBD4A6D15B9A4E250AE165','F07B23B53C6185EACC86EFE1D8','press_release_detail','Press Release Detail','F07B392A0461FE3079C1826E3A','EE16354AB187B638CC4579F8B6',NULL,20021001000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F09DC31E56256DB4D5065F94AD','F07B23B53C6185EACC86EFE1D8','review_detail','Review Detail','F07B3CF003DAFE9F27A30978A7','EE1634B19EB64BB12485263F79',NULL,20021001000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F09DC3B9F4A559FA1B309469B8','F07B23B53C6185EACC86EFE1D8','project_detail','Project Detail','F07B3BCB177AC6A7F14766D6F6','EE1634B19EB64BB12485263F79',NULL,20021001000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F302E048FD76B0E2FB7B980A33','F185BD3FDC5CC7989A3CED51A1','main_page','Main Page (Index)','F302D4FE6D537C49721004181F','25',NULL,20030707163235,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30428329BB897A3EACA58D37A','F185BD3FDC5CC7989A3CED51A1','sitemap','Site Map Page Collection','F30424474044603B72B3C3BA3','F3FF0CB5A1F1B01FDBEF1218F6',NULL,20030318102757,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F3086E4D9C9B193C48E4E598DD','F185BD3FDC5CC7989A3CED51A1','press_release','Press Release Page Collection','F308699BD428889A5632750137','EE16354AB187B638CC4579F8B6',NULL,20030129000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F3086FF169FB5CC2E73B72058','F185BD3FDC5CC7989A3CED51A1','fact_figure','Fact & Figure','F308692D6AEE5FC7D30CACD99C','25',NULL,20030129000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30E29C6E333632615BA33F58D','F185BD3FDC5CC7989A3CED51A1','press_release_archive','Press Release Archive','F30869E6C74A56DDF243778A81','EE16354AB187B638CC4579F8B6',NULL,20030130000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30E4D1920F5C5815456845B78','F185BD3FDC5CC7989A3CED51A1','press_release_detail','Press Release Detail','F3086A26128F78FF6610A15097','F3C2998AFDB590924800ACCC95',NULL,20030307165045,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30E9D6ECC70A75382B764F275','F185BD3FDC5CC7989A3CED51A1','news','News','F3086B7E11837F450B77703C40','EE1634B19EB64BB12485263F79',NULL,20030130000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30E9DDF1A9FE5A589EC5DB77D','F185BD3FDC5CC7989A3CED51A1','news_archive','News Archive','F3086C6E2EBC786E9D341C958','EE1634B19EB64BB12485263F79',NULL,20030130000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30E9E5E2E6738CA27D794C38E','F185BD3FDC5CC7989A3CED51A1','news_detail','News Detail','F3086CF73451A89028B438A4C2','F3C2963AD8A291EF75E1311711',NULL,20030307165004,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30EB26FEFEA3B27A2CC02B513','F185BD3FDC5CC7989A3CED51A1','contact_us','Contact Us','F3086DE1A3F88F17DAA77F5EA8','F3132892F57B236985F02B3F4F',NULL,20030318161437,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30EC05E28727D8633FB935398','F185BD3FDC5CC7989A3CED51A1','product_service','Product & Service','F30D50F630C4B3D981A66A4BD4','EE163600A2BAD87965E20E9C9A',NULL,20030130000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30EC104B94B44D0C394CFE15C','F185BD3FDC5CC7989A3CED51A1','product_service_detail','Product & Service Detail','F30D52A7E7A3412E1B36707786','EE163600A2BAD87965E20E9C9A',NULL,20030130000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30EDC9FCD7E6B1169454FF8D0','F185BD3FDC5CC7989A3CED51A1','fact_figure_detail','Fact & Figure Detail','F30EDC23C73CD41B124A2387A7','F30D6D4A72F6871D6DB046BCB6',NULL,20030130000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F30EF2941AA7B9AF80B963B9C3','F185BD3FDC5CC7989A3CED51A1','company_subsidary','Company Subsidiary','F30D5022D3E7ABE3498CA22B8A','F3FF36F3D74BBBACD7A0D5E93A',NULL,20030318112034,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F312BF4F635BA82668D772E458','F185BD3FDC5CC7989A3CED51A1','company_bod','Company Board Of Director','F30D4CB7B4E33CC6D6DD8CE981','F312A7DFF0D600D4866CCD4E28',NULL,20030131000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F312CE723436BEEC0D74D9DD88','F185BD3FDC5CC7989A3CED51A1','company_bod_detail','Company Board of Director (detail)','F30D4D403DB20A08FF49504FFA','F312A7DFF0D600D4866CCD4E28',NULL,20030131000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F312F1E8E1CA99D4801813532A','F185BD3FDC5CC7989A3CED51A1','company_structure','Company Structure (About Us)','F30D4F8ED066660E9734DEF2B','EF76BA4ED5D8F2A21B1933A750',NULL,20030131000000,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F3133567EE10690EBB0B862E93','F185BD3FDC5CC7989A3CED51A1','company_lob','Company Line Of Business','F30D4DCBF2ED7BDB30932694B1','F3132892F57B236985F02B3F4F',NULL,20030320132346,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F322DCAC8723CABF95DD7086A9','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_plantation','Company Line Of Business Plantation','F30D4E637FCDCE6858748449C9','F3132892F57B236985F02B3F4F',NULL,20030320132401,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F322DD58B5AB5151C43B3F6709','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_mining','Company Line Of Business Mining','F322D9F44D31058660940D64A7','F3132892F57B236985F02B3F4F',NULL,20030320132418,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F322DDE15D751BAD950CD86091','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_horticulture','Company Line Of Business Horticulture','F322DABC02B874D8B83A401BA1','F3132892F57B236985F02B3F4F',NULL,20030320133035,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F322DE707E9AE4A7E1D345A1EA','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_others','Company Line Of Business Others','F322DBD188CC9C1CD5B70A28E2','F3132892F57B236985F02B3F4F',NULL,20030320132540,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F40A22BD46954B5768899D5880','F185BD3FDC5CC7989A3CED51A1','company_lob_detail_logging','Company Line Of Business Logging','F40A0EE9A7454478A824E1AD44','F3132892F57B236985F02B3F4F',NULL,20030320133522,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D34CF976FEFDC0031BF21231','F4D30718756B8401E43FD2AAE6','main_page','Main Page (index)','EEED8E57002048A2E9071DAF76','25',NULL,20030428150734,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D3EA76EC7E38868A98D211E4','F4D30718756B8401E43FD2AAE6','solution','Solution Page','EEED906F3DD8D8C52409FB4D9F','EE163600A2BAD87965E20E9C9A',NULL,20030428175649,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D7722D457F9DBC01ACE2093E','F4D30718756B8401E43FD2AAE6','press_release','Press Release Page Collection','EEED91195E6BDC9CF09ECB2DF3','EE16354AB187B638CC4579F8B6',NULL,20030429102401,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D7773B104E76B596FE4C8EA2','F4D30718756B8401E43FD2AAE6','solution_detail','Solution Detail Page Collection','EEED90B7B09350BB36F389A43E','EE163600A2BAD87965E20E9C9A',NULL,20030429102942,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D787ECE9AB7757B6558460FE','F4D30718756B8401E43FD2AAE6','news','Latest News Page Collection','EEED8F61ACA8FD143C4A127AE','EE1634B19EB64BB12485263F79',NULL,20030429104752,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D78F564380A4DE230A7DBC32','F4D30718756B8401E43FD2AAE6','news_detail','Latest News Detail Page Collection','EEED8FAA79AC379210C5F52060','EE1634B19EB64BB12485263F79',NULL,20030429105607,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D791BE062178F471B508C22B','F4D30718756B8401E43FD2AAE6','about_us','About Us Page Collection','EEED8EE4881FA530706324955E','EF76BA4ED5D8F2A21B1933A750',NULL,20030429105844,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D792B97C276DF5E284D80319','F4D30718756B8401E43FD2AAE6','contact_us','Contact Us Page Collection','EEED8F22116F192E521FCB6C46','25',NULL,20030429105938,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D7987BCFE17D999E624D07EA','F4D30718756B8401E43FD2AAE6','open_job_detail','Open Job Detail Page Collection','EF1EEC2113DFA19FB81258C38A','EF1EE6CF42F37C9EA72FAE3B94',NULL,20030429110551,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4D7A0504C9C4965B7196DE421','F4D30718756B8401E43FD2AAE6','press_release_detail','Press Release Detail Page Collection','EEED915B2AE8D8F40ACED882C5','EE16354AB187B638CC4579F8B6',NULL,20030429111421,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4DD69BB6BA68346E2E76955C3','F4DD64134EC050E3D0A256EA0D','main_page','Main Page Collection','F07B379B79C9CD7743C23D2596','25',NULL,20030430141224,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E2C8BC14DF149A4E9EEAABFF','F4DD64134EC050E3D0A256EA0D','contact_us','Contact Us Page Collection','F07B3C19D634A84A21B00B2304','25',NULL,20030501151422,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E2D6DD05510DEA09BC27F562','F4DD64134EC050E3D0A256EA0D','press_release','Press Release Page Collection','F09DDFE362D841F17A30993ED','EE16354AB187B638CC4579F8B6',NULL,20030501152946,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E2FDFB28EC2FC5316E2A6037','F4DD64134EC050E3D0A256EA0D','press_release_detail','Press Release Detail Page Collection','F07B392A0461FE3079C1826E3A','EE16354AB187B638CC4579F8B6',NULL,20030501161235,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E302D3A8DB6ECA572660F6DB','F4DD64134EC050E3D0A256EA0D','project','Project Page Collection','F07B3AFC312B9E0CA737CE8886','F501EBD2F6B03958384BD30C50',NULL,20030507162333,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E303A198252225633D919401','F4DD64134EC050E3D0A256EA0D','project_detail','Project Detail Page Collection','F07B3BCB177AC6A7F14766D6F6','F501EBD2F6B03958384BD30C50',NULL,20030507162414,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E308109A9463EE134F00315C','F4DD64134EC050E3D0A256EA0D','recipe','Recipe Page Collection','F07B3801CF22E2E91A2A70AE4D','F501956E01E1C9C2DFFEC614DB',NULL,20030507154025,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E3089F82B65B4A287DE7A947','F4DD64134EC050E3D0A256EA0D','recipe_detail','Recipe Detail Page Collection','F07B38486BD0AC516EDA596175','F501956E01E1C9C2DFFEC614DB',NULL,20030507154056,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E30F51613E371778C736F03A','F4DD64134EC050E3D0A256EA0D','resource','Resource Page Collection','F07B3A364057068AFB1D09B24B','E7A781CFBA45A3CB44C81D8236',NULL,20030501163143,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E31023945AF9EE0A6BBC31F6','F4DD64134EC050E3D0A256EA0D','resource_detail','Resource Detail Page Collection','F07B3A976C284A50C0D07B0DEC','E7A781CFBA45A3CB44C81D8236',NULL,20030501163232,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E315E4DD43B835B008E37B6A','F4DD64134EC050E3D0A256EA0D','review','Review Page Collection','F07B3CA6AAD39BFD520EFFEFC0','F50196413176576A64F6F27A86',NULL,20030507154110,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E316762262130C29F9EC7336','F4DD64134EC050E3D0A256EA0D','review_detail','Review Detail Page Collection','F07B3CF003DAFE9F27A30978A7','F50196413176576A64F6F27A86',NULL,20030507154123,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E836D22CEDB9EFC5D105E617','F4E6A635A8AC141BAE7F98504','main_page','Main Page Collection','EF8E277F34F1C4DE8229CFC10D','25',NULL,20030502163254,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E844EA1179FA4B139A9E6E17','F4E6A635A8AC141BAE7F98504','latest_news','Latest News Page Collection','EF8E2AA141B4B44CED456914C8','EE1634B19EB64BB12485263F79',NULL,20030502164953,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E84C856B7EA0D8C8D3D79A14','F4E6A635A8AC141BAE7F98504','our_solutions','Our Solutions Page Collection','EF8E2910D6DC72DE5A739B7323','EE163600A2BAD87965E20E9C9A',NULL,20030502165653,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E84F74BF3402AF26102517C1','F4E6A635A8AC141BAE7F98504','press_release','Press Release Page Collection','EF8E29F7DF9BD41DE59E1B3273','EE16354AB187B638CC4579F8B6',NULL,20030502165953,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E85047C450445D599FDAD93C','F4E6A635A8AC141BAE7F98504','contact_us','Contact Us Page Collection','EF8E28BDB57036C93F24B9B14E','25',NULL,20030502170020,NULL,00000000000000,'0','ic',1);
INSERT INTO page_collection VALUES ('F4E850BD0DB3A304CB52352701','F4E6A635A8AC141BAE7F98504','about_us','About Us Page Collection','EF8E285DE8A1E858D8BCC33A12','EF76BA4ED5D8F2A21B1933A750',NULL,20030502170053,NULL,00000000000000,'0','ic',1);

--
-- Table structure for table `page_collection_detail`
--

CREATE TABLE page_collection_detail (
  id varchar(28) NOT NULL default '',
  frontpage_id varchar(28) NOT NULL default '',
  collection_id varchar(28) NOT NULL default '',
  collection_name varchar(128) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `page_collection_detail`
--

INSERT INTO page_collection_detail VALUES ('EE7CCEC7EBD025CE2E745A33BC','EE7CCE9C61D7D9ED63A579A196','EE7C699016F886FEA906FA5DAC','solution_collection',NULL,20021015170406,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EE7CCF2894A95BF0BE52502C53','EE7CCE9C61D7D9ED63A579A196','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20021015170406,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF5C9A6D0EE02766F78D5E995E','EF3E486027CD676EEB50BB88A7','EF5C9801CA3FF9F3D99A20F1CD','press_release',NULL,20020804230328,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EE3993B3B6D98C083DA48BAEE2','EE24CA21C58A6418C358BCB0E2','EE0143B3463ABA91CECFBE588B','Money',NULL,20020604161219,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO page_collection_detail VALUES ('EF59056932BC7742D50B060233','EF3E4A1FD930D3F55FE60D71EB','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020804232501,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF57BFDE15F9455BCA43B9B484','EDF2443813F00F1BF2C6BD8562','EF57BEBF18DC03624A9537EE53','open_job',NULL,20020804225854,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF19BDACDF63B1ECFCF96AC30','EE7C72FC589FF167B7B8978BEC','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20020805034326,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF575B8E27268DBB013B2F5E3A','EDF2443813F00F1BF2C6BD8562','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804225854,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5717EA5B40E862A3C55186E0','EDF2443813F00F1BF2C6BD8562','EF5C9801CA3FF9F3D99A20F1CD','press_release',NULL,20020804225854,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5362322EA0196047862AED2D','EDF2443813F00F1BF2C6BD8562','EF535BF707DC20CA4F0222EAB2','news_collection',NULL,20020804225854,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF1F331C952B1A3478439155D9','EEFB3546C96942F32BA73D2837','EF1EEB444F1CC7924207265864','open_job_collection',NULL,20030127171006,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF0190FAEC9E71CE606B067B92','EE7CCFEE491A0E3B6A5497D05D','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20021016103158,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF040D24BDC1C5FEE5A8C47A62','EE7CCFA78F6D0C6E8C7F0711F6','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20020805034403,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF040D0EB7A117DE5BD2D1C7AE','EE7CCFA78F6D0C6E8C7F0711F6','EE7CCC6E6D6BEAA209410E58D5','news_collection',NULL,20020805034403,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF041BE2FE8D47DACD4C5B1CCC','EE7CD0F71F15D0FC571C472A3F','EE7CCBBE336CC05ECCC3DEDB04','press_release_front_page',NULL,20021015153121,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('F0E72D91B615DED0F19E49C156','EE7CD0F71F15D0FC571C472A3F','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20021015153121,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('F302E0A2197BE69A979548B62','F302E048FD76B0E2FB7B980A33','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030707163235,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('EF1EBC4435AF924D4FEF6F5C97','EEFB3546C96942F32BA73D2837','EE7CCC6E6D6BEAA209410E58D5','news_collection',NULL,20030127171006,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF06849CBDE34D9A93748FB9D4','EEFB671AFB98DFAFD13702A2B6','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20021015160142,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('F0E65012E4AA502872BFF8429B','EEFB66A82BBA981ABDCDD0F336','EFABD73B9F5C8A2AFC1BC06327','about_us',NULL,20021015150205,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF19B658E484A1DD1E0075AB37','EF19B5F650A671C3BD83C6CD37','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20020805034529,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF581700D87CF46F6354059062','EDF2443813F00F1BF2C6BD8562','EF580C9F50774CC4BBA9C305DC','solution_collection',NULL,20020804225854,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF1EFA10081B5826414D85AD18','EF1EF9CA64986834DE8B1107F5','EF1EEB444F1CC7924207265864','open_job_collection',NULL,20020805034543,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF1EFA265EDD2CA360DB163024','EF1EF9CA64986834DE8B1107F5','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20020805034543,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF1EBC2CB59D56C7C39BF88E3D','EEFB3546C96942F32BA73D2837','EF1EB25BD481435B56271A67D2','solution_main_page',NULL,20030127171006,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF1EBC68373A338928D7994487','EEFB3546C96942F32BA73D2837','EE7CCBBE336CC05ECCC3DEDB04','press_release_front_page',NULL,20030127171006,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('EF5CB44D817F664FC6A529E9C3','EF3E4C91A4FC8D8B3D69E33A0C','EF5CB147C39DE591879212AE26','our_solutions',NULL,20020804232522,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF58A9E268CDB2379A92055E84','EF3E4A1FD930D3F55FE60D71EB','EF58A8B439BA814A7D93B240EA','latest_news',NULL,20020804232501,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF58921E3EAB53DADEB4A2F14','EF3E4A1FD930D3F55FE60D71EB','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804232501,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF58DC47E6210D49FAC7E1D48F','EF3E4A1FD930D3F55FE60D71EB','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020804232501,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF589856E4AFFEA29625B4D04F','EF3E4C91A4FC8D8B3D69E33A0C','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804232522,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF59262051FFDEC6BFA4ACB897','EF3E4C91A4FC8D8B3D69E33A0C','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020804232522,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5926F573E44F01DED8B86E0E','EF3E4C91A4FC8D8B3D69E33A0C','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020804232522,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5C9A923958C80E61A63F66CE','EF3E486027CD676EEB50BB88A7','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804230328,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5C9AB5CF98D570DD72F5FABA','EF3E486027CD676EEB50BB88A7','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020804230328,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5C9AF01931A8EF63081AAEFD','EF3E486027CD676EEB50BB88A7','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020804230328,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5CEB8ABD83F0B8AC0ECF4179','EF3DD618C889897019A439732','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020805031045,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5CEBA162A64B6AC441156390','EF3DD618C889897019A439732','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020805031045,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5CEBC110ECF397C19296E387','EF3DD618C889897019A439732','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020805031045,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5CFA53E53EBD142352AC8595','EF3E3F0419D7F9729AE28D8D6E','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020804230114,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5CFA69715D2BDDFD861A2B85','EF3E3F0419D7F9729AE28D8D6E','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020804230114,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D258DA15A675BAC126A5C81','EF3E62C28C692B6F12ABB8444B','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020804232607,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D256605D365B608A86FC7D7','EF3E62C28C692B6F12ABB8444B','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020804232607,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D254FAEC62FE52669F347A6','EF3E62C28C692B6F12ABB8444B','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804232607,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D3DDA7539C05234214E3A58','EF3E5B33DB2B41B00EBD520A2D','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020804232551,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D3DCD55D6AE7483596A65A8','EF3E5B33DB2B41B00EBD520A2D','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020804232551,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D3DB7CAB851476F575EDCD8','EF3E5B33DB2B41B00EBD520A2D','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804232551,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D4F9D749D11163F7F90B26A','EF5D4EEB993D601978D2A9B1B1','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020804232639,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D4F80662175766394FAF44F','EF5D4EEB993D601978D2A9B1B1','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020804232639,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D4F64D0C9EC60504572E039','EF5D4EEB993D601978D2A9B1B1','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804232639,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D65ADD4E2E09809006E5DD3','EF3E65A1E6DA0C6EDDC1849967','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804232623,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D65C1CAF1D9AF93EC42D9B','EF3E65A1E6DA0C6EDDC1849967','EF5902B02CC7C4E3E55AE7B0AD','cross_line_solution',NULL,20020804232623,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5D65D15A6A7AE1BB6BBB443D','EF3E65A1E6DA0C6EDDC1849967','EF58D8599C4F377913FD8D1DB0','product_service',NULL,20020804232623,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF5CFA33DAFBAE9E6EC439A484','EF3E3F0419D7F9729AE28D8D6E','EF575A3BB6F9D65E1376C562F9','coss_selling',NULL,20020804230114,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('EF87806CB636E083DAB6938D3F','EF61EBE35B969F4673370B2083','EF877C16F3E59D308B85284D46','latest_news_main',NULL,20020808095620,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF6206F048DF663FABC6E386EE','EF620671B2D8FF97E9378AF9F4','EF61F69872E80B522B3F7D1698','cross_selling',NULL,20020808114822,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF62ADFAEBDA7526E15F1B403F','EF627EC23B9147AA2660FFB9CA','EF62ABFFD639CEDC6F503B678','product_service_main_collection',NULL,20020801073348,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF62953974149617601095E241','EF627EC23B9147AA2660FFB9CA','EF6293FFACC7928F2CCCCA37B1','news_main_collection',NULL,20020801073348,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF62A5819B8CBD49707542A099','EF627EC23B9147AA2660FFB9CA','EF62A08AAB45C4D0CC1FC6CE06','press_release_main_collection',NULL,20020801073348,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF633B66B6B332266A57BD2ABA','EF627EC23B9147AA2660FFB9CA','EF633A256C589D6A8ED8B8A941','press_release_main',NULL,20020801073348,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF668AD40FDF6DC31F6FBA00D0','EF6686333E17BA23A91D28BF74','EF66892594573B88F1A1CEC0F3','our_solution_collection',NULL,20020801230703,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF66885A6449B52A1F99D6FC37','EF6686333E17BA23A91D28BF74','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,20020801230703,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF669BE49796D901D063B3C8DB','EF6692056DD285D1F852EC5517','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,20020805032548,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF670727F0E6489C0FEAF50A50','EF6706D25EC924ECA1B7B16A67','EF6704F9D5930E81F3D8232AA0','latest_news_collections',NULL,20020802011517,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF67073D0F7D924ADE1CBD393C','EF6706D25EC924ECA1B7B16A67','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,20020802011517,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF670E3CCEA2DCDE4927F647E3','EF670DDA1C2334375FB7DFBC4C','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,20020802012302,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF670E4DB6903823CD16001AFC','EF670DDA1C2334375FB7DFBC4C','EF670C78C784ECA3E832D49F41','press_release_collection',NULL,20020802012302,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF672855889FA73F7C47A8EEC2','EF6727F71CFE669F4CB952B586','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,20020802015126,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF6747B13DBAFCDC25FF6C6ADD','EF67474EAB993A923F9991F26D','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,20020802022820,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF6754979CA959D2132A3023A8','EF67542644748EC41A104CDBD6','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,20020802023953,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF67955C0D764B66C61C76CC63','EF6775ADB3CB233515945B3C44','EF668717A39DDB0F1D4DF9F526','cross_selling',NULL,20020802035802,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF76F1C7D21DCD7ECBCE979F12','EF6692056DD285D1F852EC5517','EF76F0C602372C01717F4AD69B','about_us',NULL,20020805032548,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C');
INSERT INTO page_collection_detail VALUES ('EF76E3FF32BBADE4CCBF7068FD','EF3DD618C889897019A439732','EF76DEAB4E65F944FC318B10F2','about_us',NULL,20020805031045,NULL,00000000000000,'0','ic','ED2E4202F2AE0340726C67A877');
INSERT INTO page_collection_detail VALUES ('F302E0B69B512CB8C30864A4A4','F302E048FD76B0E2FB7B980A33','F302DD80386E12F543A34F650','latest_news_main_page',NULL,20030707163235,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('EF7711349F2A4ABFAFE6E57A46','EF7710FD241522562748FDB505','EF770FC06E8EF90EA0E86B7EF4','about_us',NULL,20020805040900,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF771961A379C0CB755E73A670','EF7710FD241522562748FDB505','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,20020805040900,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF774EFAA5BEA1D840D527E7CB','EF774E5BB6704460C14A05B178','EF774C7D03E84F326EDC640E5F','our_solutions',NULL,20020805221656,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF774EE7BA2076EBD5590C5853','EF774E5BB6704460C14A05B178','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,20020805221656,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF7B02172818D6951C55D8F67B','EF7710A1291755B321405AB0EF','EF7B00DDED2FDABD09CD662C65','product_service_main',NULL,20020805224458,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF776F3189A6D5F4958DC8730','EF776ECC8533F1DCD8771A673E','EF776DA97229A12BB7901E9EEE','press_release',NULL,20020805221643,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF776F1F29CE5D81D3BC608C8B','EF776ECC8533F1DCD8771A673E','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,20020805221643,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF775FE3FE41EB5BF218E9FF2','EF7710A1291755B321405AB0EF','EF775DC852350BB4108EF6BD48','our_solutions_main',NULL,20020805224458,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF777031E2CD9CDB45D461A78D','EF7710A1291755B321405AB0EF','EF776F524038C0A0701BD2751C','press_release_main',NULL,20020805224458,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF7B14E86B97F9A8BF549BD1B7','EF7B149A3B1F991DC9DC557434','EF7B1369BAAA94553E83D3C23E','latest_news',NULL,20020805224247,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF7B150931A1CDA946A480DD8A','EF7B149A3B1F991DC9DC557434','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,20020805224247,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF7B17060B7D249E271F65D80','EF7710A1291755B321405AB0EF','EF7B157A3BBA63A103A7417FEA','latest_news_main',NULL,20020805224458,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF83E87862CAF978CC5FC0BADF','EF83E8305D147F07BDA66CFD87','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,20020807160532,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF83E96A9145A9185704B90176','EF83E8C7F3F067529DEEF2976F','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,20020807155142,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF83E9F367857C3D47EBF5D9D5','EF83E9957BAD9DACFEB3B99228','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,20020807155217,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF83EA8DC460F22E40D63E2F64','EF83EA1701723C106B5DDD79F5','EF771865DE82B9AE726ACF15BC','cross_selling',NULL,20020807155301,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2');
INSERT INTO page_collection_detail VALUES ('EF87809995F6F696CA8187DBAE','EF61EBE35B969F4673370B2083','EF877DD13084F34A4E13E123C7','press_release_main',NULL,20020808095620,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF6208CFF5180792A409B77062','EF620671B2D8FF97E9378AF9F4','EF620774DA99A708D10B48F528','our_solutions',NULL,20020808114822,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF87CA5E82509D7DF6E3480DE9','EF61EBE35B969F4673370B2083','EF87C834C829B55008B5659662','our_solutions_main1',NULL,20020808095620,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF87CA70C7876CF1821B82AEA4','EF61EBE35B969F4673370B2083','EF87C954124BE5827E8C5ED93D','our_solutions_main2',NULL,20020808095620,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF87E6F7E517EB0E6888F3B0FE','EF87E6C46078E6ADE3CC37678A','EF87E5E89B29E72B13DA8407BA','about_us',NULL,20020808102736,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF87E7073BBAD2E5CA437E891A','EF87E6C46078E6ADE3CC37678A','EF61F69872E80B522B3F7D1698','cross_selling',NULL,20020808102736,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF8815B775E58C99231D47469B','EF881575F96BDDA74A2F9F67CF','EF61F69872E80B522B3F7D1698','cross_selling',NULL,20020808111835,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF883173FA15C3E9F1E7E92188','EF88311F355F6697A7A15241F6','EF61F69872E80B522B3F7D1698','cross_selling',NULL,20020808114858,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF883186A3DFDFC32356980002','EF88311F355F6697A7A15241F6','EF62053D7884A7B7C28B461E87','latest_news',NULL,20020808114858,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF8CEBB7CC79255EE03ED452BE','EF8CEB306882629A3A349C4DA0','EF61F69872E80B522B3F7D1698','cross_selling',NULL,20020809095057,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF8CEC741DDD258D0DCCBDE622','EF8CEBFC8737ED0AEB94671FE5','EF61F69872E80B522B3F7D1698','cross_selling',NULL,20020809095142,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF8CED324F3DC19AB4EBA7BDF7','EF8CECAE032AA95498E258BA5F','EF61F69872E80B522B3F7D1698','cross_selling',NULL,20020809100622,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF8CEE0FAF9BA3441943446541','EF8CEDB9638E69EAE45AA9C1B4','EF61F69872E80B522B3F7D1698','cross_selling',NULL,20020809095328,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF8CEE293A8B07ADBA47400E','EF8CEDB9638E69EAE45AA9C1B4','EF62010E6C4C37EEA867611132','press_release',NULL,20020809095328,NULL,00000000000000,'0','ic','EDDCAA0575D694D2560CC2511F');
INSERT INTO page_collection_detail VALUES ('EF8E452A3A81ABB81642BC186E','EF8E41866B8177D79F12CAAB4A','EF8E42AF4ADA1F31E1F62D5525','latest_news_main',NULL,20020809160816,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO page_collection_detail VALUES ('EF8E453EE1C955F9ED88F5F0CD','EF8E41866B8177D79F12CAAB4A','EF8E42301D17943E5955D9AA44','press_release_main',NULL,20020809160816,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO page_collection_detail VALUES ('EF8E454FE5B550FFEC9B557D63','EF8E41866B8177D79F12CAAB4A','EF8E433D0E138F733F2D166C00','open_jobs_main',NULL,20020809160816,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO page_collection_detail VALUES ('EF8E45D3B0E40AC2BEB75DC8F','EF8E45713A4A84AC617D643646','EF8E3B3AB9F109C7BF163C0AD7','our_solutions',NULL,20020809160852,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO page_collection_detail VALUES ('EF8E4665E0B54416C61C92CC21','EF8E45F70D38098217F3204833','EF8E3C4ADFBDFB74192B71CB43','latest_news',NULL,20020809160931,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO page_collection_detail VALUES ('EF8E46E386D3B35858B9CDC245','EF8E469192716E4177E8AE9E69','EF8E3D1D196B477841A58FC9A0','press_release',NULL,20020809161001,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO page_collection_detail VALUES ('EF8E474BBC8C5311EDE33A81C2','EF8E4703CCD3FD17EAF48DB207','EF8E3FA2E9F723DB325F6A7D02','about_us',NULL,20020809161027,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3');
INSERT INTO page_collection_detail VALUES ('F07B5E40F599772DC989BDDF6','F07B5DECBC9820D2C4A0997697','F07B56FBB0DE46F4CF2AE5698E','press_release_main',NULL,20020924173729,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F07B5E2CEEDC7579D4D84A938C','F07B5DECBC9820D2C4A0997697','F07B581DE9BA007DB73EB1BEBC','news_main',NULL,20020924173729,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F07B7B7B524FBA50E85DC4AF21','F07B5DECBC9820D2C4A0997697','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20020924173729,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F080409CA51AEAE61F3299D0B8','F08040377B159867B63329097A','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20020925155122,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F083F30C05F4DD9B0F9C500C6D','F083F2AFBD672047F65BC8E27C','F083F1F7C33EA7F3A9A59BE10A','recipe',NULL,20020926090517,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F083F326DB14A97042AF3FFB','F083F2AFBD672047F65BC8E27C','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20020926090517,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F083FB8A65178A3567B444D001','F083FA41C296D2549F9BCC92A5','F083F929ABA341797CD38BBE7D','project',NULL,20020926091422,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F083FB9E275F80C9487B27D141','F083FA41C296D2549F9BCC92A5','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20020926091422,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F0E64E4DD15ADA9CDE624BC01B','F0E64DB4BE71F4619D1F2686B5','EE7CCC6E6D6BEAA209410E58D5','news_collection',NULL,20021015112730,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('F0E64E1BA03CA64C68493E7DD2','F0E64DB4BE71F4619D1F2686B5','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20021015112730,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('F08423E2872DBB1C4722C54908','F08423844B51176B81DFF67352','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20020926100229,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F08427A94F65C0C100B4905768','F08423844B51176B81DFF67352','F0842659151A5462F92C16E9D1','review',NULL,20020926100229,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F0842AA6E7B572EF9D4967C9C3','F0842A677E305275FF9B0053C3','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20020926100545,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F08434EEC61A190D68EFEAC340','F084348DB860453D6349097F08','F08432B3F4174A089CD81F3616','resource',NULL,20020926101704,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F08435028760B6627CC59BA3D','F084348DB860453D6349097F08','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20020926101704,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F08460B384B13DE3BA8B943E78','F0846040A08C2276BB6D12E742','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20020926110447,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F09DE3BE6D9B227697E918AEE8','F09DE35103CB6229E57415D40A','F09DE1952B7D669AD21E500D72','press_release',NULL,20021001095826,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F09DE3A8D564A56FDD218E9388','F09DE35103CB6229E57415D40A','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20021001095826,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F09DBDFA80B965BA01FCDBD874','F09DBD4A6D15B9A4E250AE165','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20021001091710,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F09DC390862E42AAB01142D16A','F09DC31E56256DB4D5065F94AD','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20021001092317,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F09DC41917377DBE7409BA4FB9','F09DC3B9F4A559FA1B309469B8','F07B796043A756D9E97A3FEFF','cross_selling',NULL,20021001092351,NULL,00000000000000,'0','ic','F07B23B53C6185EACC86EFE1D8');
INSERT INTO page_collection_detail VALUES ('F0E712BCC688F71665CE9B892B','EEFB66A82BBA981ABDCDD0F336','EE7C7412CB68D123F4F160B4B8','cross_selling_solution',NULL,20021015150205,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C');
INSERT INTO page_collection_detail VALUES ('F302E0C1C75EBA99873DCBB676','F302E048FD76B0E2FB7B980A33','F302DF2D5C14DB19C7398591BC','services_main_page',NULL,20030707163235,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30428B085D48CD98D75C7B11A','F30428329BB897A3EACA58D37A','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030318102757,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F3086EB501936AFC006EE6DF64','F3086E4D9C9B193C48E4E598DD','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030130150348,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F3086FCCE98230D7BB71747123','F3086E4D9C9B193C48E4E598DD','F3086EE25AC268B9D89977E44B','press_release',NULL,20030130150348,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F3087033F033CE5B6E2D8339B9','F3086FF169FB5CC2E73B72058','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030130133153,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30DC892DBB52A1329623856F0','F3086FF169FB5CC2E73B72058','F30D7A35F127C9F525D69A4BCE','fact_figure',NULL,20030130133153,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30E2A37ED211FA6DFCF8089E8','F30E29C6E333632615BA33F58D','F30D61195A51759F754A534603','press_release_archive',NULL,20030130152512,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30E2A234CD87ED228D5E919C8','F30E29C6E333632615BA33F58D','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030130152512,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30E5EC173CE54FEA75DB2E607','F30E4D1920F5C5815456845B78','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030307165045,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30E9DAC81662431B9E4A8812','F30E9D6ECC70A75382B764F275','F30D6218D92D6172A83CF70347','news',NULL,20030130172438,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30E9DC0282F34862AF2975BF5','F30E9D6ECC70A75382B764F275','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030130172438,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30E9E2EA2C85D821D38BD68BA','F30E9DDF1A9FE5A589EC5DB77D','F30D62AFC966604EE6B63D5EA','news_archive',NULL,20030130172511,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30E9E40A3BC2C9625A7F2F8','F30E9DDF1A9FE5A589EC5DB77D','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030130172511,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30E9F03A55162262983A765B0','F30E9E5E2E6738CA27D794C38E','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030307165004,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30EB2B44BA53A24FE85814053','F30EB26FEFEA3B27A2CC02B513','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030318161738,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30EC0E74E3F5A9204C04AB765','F30EC05E28727D8633FB935398','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030130180823,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30EC0C98551EDAFB9A0DEC72C','F30EC05E28727D8633FB935398','F30D638087912EB63CFF2413C4','product_service',NULL,20030130180823,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30EC175E279E49FCE0D55A043','F30EC104B94B44D0C394CFE15C','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030130180807,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30EDD1DC758C6FA19E48FD442','F30EDC9FCD7E6B1169454FF8D0','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030130183350,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F30EF302A325EAD70C9633D572','F30EF2941AA7B9AF80B963B9C3','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030318112034,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F312C003EEC87F74148D0A40AF','F312BF4F635BA82668D772E458','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030131124043,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F312C01321252B5D96644980B3','F312BF4F635BA82668D772E458','F312B7926E1BA7B9EEAAB39558','dewan_komisaris',NULL,20030131124043,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F312C02E4A1C2280D798DA8CFD','F312BF4F635BA82668D772E458','F312B82623C31410C34434A7B3','dewan_direksi',NULL,20030131124043,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F312CEE234E959AA6F0F63D7AD','F312CE723436BEEC0D74D9DD88','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030131125646,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F312F2693C9D81BA7126CE30AF','F312F1E8E1CA99D4801813532A','F30D64A967EC8A114463B155EC','company_structure',NULL,20030320145922,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F312F2593FB754049303C0E703','F312F1E8E1CA99D4801813532A','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030320145922,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F40A15518B277D059347755E09','F3133567EE10690EBB0B862E93','F40A12670642457146FE92A5BF','company_lob_logging',NULL,20030320132346,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F31335E7DC2200AA16513692A0','F3133567EE10690EBB0B862E93','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030320132346,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F40A151ACCBAFDC9D4A842A2F4','F3133567EE10690EBB0B862E93','F3133249977BD2C0636E037D23','company_lob_plantation',NULL,20030320132346,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F40A14B53CFA10D541E296D3A9','F3133567EE10690EBB0B862E93','F31330D19DFD3F3245616F57B0','company_lob_horticulture',NULL,20030320132346,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F40A1533C2D659E3AEE891DE9F','F3133567EE10690EBB0B862E93','F3133322C1D43F2988CD387324','company_lob_mining',NULL,20030320132346,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F322DD266AB2442C28B6F4E4B5','F322DCAC8723CABF95DD7086A9','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030320132401,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F322DDC2AA22D3016B2191A665','F322DD58B5AB5151C43B3F6709','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030320132418,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F322DE4A8720FB3CA4CB3D5F77','F322DDE15D751BAD950CD86091','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030320133035,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F322DEC91E4066F002D6F6A1BD','F322DE707E9AE4A7E1D345A1EA','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030320132540,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F3FF5B220CD2B19D1944A36E99','F30EF2941AA7B9AF80B963B9C3','F3FF58FF3B49C217BA449F6849','makin_subsidiary',NULL,20030318112034,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F3FF2B1766C7B6C4D56D5C5EBA','F30428329BB897A3EACA58D37A','F3FF22FA60FDC1B3F09C2A27AF','sitemap',NULL,20030318102757,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F40068C3AE2C4761F55BA146FB','F30EB26FEFEA3B27A2CC02B513','F40025C7BB2B1555515A1FF83F','head_office',NULL,20030318161738,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F4006B3A9AFC9AB611DC56B129','F30EB26FEFEA3B27A2CC02B513','F4006A4702C02EC8B03504B154','branch_office',NULL,20030318161738,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F40A154259B3DC6FC0BD54D27C','F3133567EE10690EBB0B862E93','F31333E67F5209AE9B31726965','company_lob_others',NULL,20030320132346,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F40A237098D33ABDDF6F5DD918','F40A22BD46954B5768899D5880','F302DC45188ECE996BB4E65A63','cross_selling',NULL,20030320133522,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO page_collection_detail VALUES ('F4D34F379CB5AD858A63D3C0F2','F4D34CF976FEFDC0031BF21231','F4D345059E58F35226610428E3','solution_main_page',NULL,20030428150734,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D34F837036C4F825A0A5DD05','F4D34CF976FEFDC0031BF21231','F4D34862CECEC33E7A3DFBF2F6','news_collection',NULL,20030428150734,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D34F929593DA8E4EA031CBCA','F4D34CF976FEFDC0031BF21231','F4D34917CF2D95241724082D6E','press_release_front_page',NULL,20030428150734,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D34FA0FE837B0970EBE16007','F4D34CF976FEFDC0031BF21231','F4D34AE05BA664870CE107F5C4','open_job_collection',NULL,20030428150734,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D3EAC4AFF9EC55AF0E9E99CD','F4D3EA76EC7E38868A98D211E4','F4D332FCE8E1713BFFA339672F','cross_selling',NULL,20030428175649,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D3EAD4BF583912E3CBEFE074','F4D3EA76EC7E38868A98D211E4','F4D3E9C42018508CFBD44C1F7F','solution_collection',NULL,20030428175649,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D7731C6771C800FA748A924F','F4D7722D457F9DBC01ACE2093E','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,20030429104017,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D772922081B471EF9B4F7796','F4D7722D457F9DBC01ACE2093E','F4D77D9A595E11607831E05333','press_release',NULL,20030429104017,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D777DB3CA22054DB63F1879F','F4D7773B104E76B596FE4C8EA2','F4D332FCE8E1713BFFA339672F','cross_selling',NULL,20030429102942,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D78857B56956BAC72349EE6D','F4D787ECE9AB7757B6558460FE','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,20030429104752,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D7886F137C71577D3D9B8309','F4D787ECE9AB7757B6558460FE','F4D7872202EEF42DB1BEE35CAD','news_collection',NULL,20030429104752,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D79003137EC41483E76F009E','F4D78F564380A4DE230A7DBC32','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,20030429105607,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D7923293DBBF9C83B48EE4C5','F4D791BE062178F471B508C22B','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,20030429105844,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D79245BBBB296F6634EC53C5','F4D791BE062178F471B508C22B','F4D7908E18A0B591AD5B35C429','about_us',NULL,20030429105844,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D793208E67DD0B5AE29EA87B','F4D792B97C276DF5E284D80319','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,20030429105938,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D798EFB97DC22EAC0668BCA8','F4D7987BCFE17D999E624D07EA','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,20030429110646,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D799BAA343D2AA40F27FB031','F4D7987BCFE17D999E624D07EA','F4D34AE05BA664870CE107F5C4','open_job_collection',NULL,20030429110646,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4D7A0B65B45F24B566B3E6BDC','F4D7A0504C9C4965B7196DE421','F4D332FCE8E1713BFFA339672F','cross_selling_solution',NULL,20030429111421,NULL,00000000000000,'0','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO page_collection_detail VALUES ('F4E2FA2C693CF8C2E28AA1AEEA','F4DD69BB6BA68346E2E76955C3','F4E2F93A23C96AF5243A648900','press_release_main',NULL,20030507134611,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4DD6A0574988FB9829DA108C0','F4DD69BB6BA68346E2E76955C3','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030507134611,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E2C92D01551BC06A423FF220','F4E2C8BC14DF149A4E9EEAABFF','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030501151422,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E2D735F1AD88C166DE45A97B','F4E2D6DD05510DEA09BC27F562','F4E2D64CF8DDBED197CF1D4EC7','press_release',NULL,20030501152946,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E2D749F4DA1DD43913860AE4','F4E2D6DD05510DEA09BC27F562','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030501152946,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4DD6A1ECA171ACFD11890F6E0','F4DD69BB6BA68346E2E76955C3','F4DD6885A1EF5A5916B28F0DE0','review_main',NULL,20030507134611,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E2FE792EC6453AC847E1C729','F4E2FDFB28EC2FC5316E2A6037','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030501161235,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E3034C606505BBCF4DAF40FF','F4E302D3A8DB6ECA572660F6DB','F4E30221D6345730817DF8B10B','project',NULL,20030507162333,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E3033C4E7F534F5E8450C333','F4E302D3A8DB6ECA572660F6DB','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030507162333,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E3040DB5CEDEF7F7412C800D','F4E303A198252225633D919401','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030507162414,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E3087D847DD3873573183068','F4E308109A9463EE134F00315C','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030507154025,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E30866F2DD9E1A6CE89DEB8C','F4E308109A9463EE134F00315C','F4E30766D4F6B10B77D890862C','recipe',NULL,20030507154025,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E30934F49DCFA91BB4007F0B','F4E3089F82B65B4A287DE7A947','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030507154056,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E30FF27F81697A4F572203D9','F4E30F51613E371778C736F03A','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030501163143,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E31003831696F6A977E07323','F4E30F51613E371778C736F03A','F4E30E4255F0C0ECA9CF12C58D','resource',NULL,20030501163143,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E310BDC0EAEDA84C5356E124','F4E31023945AF9EE0A6BBC31F6','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030501163232,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E31652A03850152AAD62BBF2','F4E315E4DD43B835B008E37B6A','F4E315146AC0D62352296671C6','review',NULL,20030507154110,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E3163EB0C07545FF8CB8369','F4E315E4DD43B835B008E37B6A','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030507154110,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E316E68F180CCC95083E0081','F4E316762262130C29F9EC7336','F4DD67C9F9D543C3720D645FA0','cross_selling',NULL,20030507154123,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F4E83738B1B63E20A689FAED90','F4E836D22CEDB9EFC5D105E617','F4E8349537A24F34C2BADB1136','press_release_main',NULL,20030502163254,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO page_collection_detail VALUES ('F4E8374DDC89D87CF4978D7F5C','F4E836D22CEDB9EFC5D105E617','F4E8355C0D223308A5E405F8C3','latest_news_main',NULL,20030502163254,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO page_collection_detail VALUES ('F4E8375BF0F30FBAA645AE2896','F4E836D22CEDB9EFC5D105E617','F4E8361B7E88B3E21FDEC4E502','our_solutions_main',NULL,20030502163254,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO page_collection_detail VALUES ('F4E846ABDAB6C89F0971B477B0','F4E844EA1179FA4B139A9E6E17','F4E83EF7F42ADCFA4C089A7267','latest_news',NULL,20030502164953,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO page_collection_detail VALUES ('F4E84D4A26BB462C54B77A558','F4E84C856B7EA0D8C8D3D79A14','F4E841228EF31C223EC4C3C44','our_solutions',NULL,20030502165653,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO page_collection_detail VALUES ('F4E8500676BEDF02A6E01A6E86','F4E84F74BF3402AF26102517C1','F4E84237BF3A0CE289DCA92CD4','press_release',NULL,20030502165953,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO page_collection_detail VALUES ('F4E851FBE8276BC3A726A000C6','F4E850BD0DB3A304CB52352701','F4E85130966839B75E0A0C8C90','about_us',NULL,20030502170158,NULL,00000000000000,'0','ic','F4E6A635A8AC141BAE7F98504');
INSERT INTO page_collection_detail VALUES ('F5015E47821A4F46DF1B821465','F4DD69BB6BA68346E2E76955C3','F5015CD1D2ED0D963111F06942','recipe_main',NULL,20030507134611,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO page_collection_detail VALUES ('F5015E8F30CE32515C3B663358','F4DD69BB6BA68346E2E76955C3','F5015D733AF172E8FBC3427079','resource_main',NULL,20030507134611,NULL,00000000000000,'0','ic','F4DD64134EC050E3D0A256EA0D');

--
-- Table structure for table `poll`
--

CREATE TABLE poll (
  id varchar(28) NOT NULL default '',
  question varchar(50) NOT NULL default '',
  option1 varchar(50) NOT NULL default '',
  option2 varchar(50) default NULL,
  option3 varchar(50) default NULL,
  option4 varchar(50) default NULL,
  option5 varchar(50) default NULL,
  option6 varchar(50) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `poll`
--

INSERT INTO poll VALUES ('EEB4EFB2DA2B96EC3AEFA3A17A','hgfhgf','ghgh','','','','','',1,'EEA063FE983851E',20020628111710,NULL,00000000000000,'ic','ED2E4202F2AE0340726C67A877');

--
-- Table structure for table `press_release`
--

CREATE TABLE press_release (
  id varchar(28) NOT NULL default '',
  display_style varchar(20) default NULL,
  source varchar(50) default NULL,
  file_name varchar(50) default NULL,
  path varchar(50) default NULL,
  headline varchar(100) default NULL,
  subheadline varchar(100) default NULL,
  abstract text,
  body text,
  linktext varchar(50) default NULL,
  byline varchar(50) default NULL,
  creditline varchar(50) default NULL,
  copyright varchar(50) default NULL,
  editor_notes text,
  keywords varchar(50) default NULL,
  transmitted_date_time datetime default '0000-00-00 00:00:00',
  news_topic_id varchar(50) default NULL,
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `press_release`
--

INSERT INTO press_release VALUES ('F5401A6980C10268C5DF7005CE',NULL,NULL,NULL,NULL,'Lestari choose Intercitra as Everest implementation','','Lestaribusana Anggunmahkota choose Everest Enterprise as their accounting information system.','Lestaribusana Anggunmahkota choose Everest Enterprise as their accounting information system. \r<br>\r<br>The system will connect head office at Lippo Plaza, Sudirman Street with factory office and manufacturing plant at Ciputat.\r<br>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20040419115637,'F36F8BFFF97F8A16505B8305F7',20040419115637,'E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO press_release VALUES ('F5F82196D149F00E113012FB58',NULL,NULL,NULL,NULL,'BlueOxygen Development Framework June 2003','Java Open Source and Mobile Collection','Try this, and you can create a killer business applicaition in a zap.','BlueOxygen Development Framework is a collection of more than 200 Open Source Java Project and several development tools for Java and Mobile Java.<br>\r\n\r\nYou can see the edition (without the file) at <a href=\"http://www.blueoxygen.org/distro\">BlueOxygen Dev Framework</a> Website.',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'F5F824556274AFE826C44E051Dbo2-logo.jpg','F5F82587C675C8C52206D536B7bo2-logo.jpg',NULL,NULL,'F501555A2ECD5AC8FCC32F4DD6',20030624114956,'F501555A2ECD5AC8FCC32F4DD6',20030624114956,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO press_release VALUES ('F5400D99CA1809BEA6DD57D847',NULL,NULL,NULL,NULL,'Makin Group Integrated Portal','','Makin Group choose Intercitra as their technology partner to develop a integrated collaboration system.','Makin Group has made some tremendous changes on their corporate strategy. With the full online system that connect customer and their internal employee that separate across multiple area (Borneo, Andalas, Sulawesi and Java).<br>\r\n',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030519175439,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO press_release VALUES ('F54001CA03A28F1A4E0D150871',NULL,NULL,NULL,NULL,'Guerilla Innovation Soft Launch','Guerilla Innovation Soft Launch','We launch the Guerilla Innovation web site. A website for all innovative and creative people. ','We launch the Guerilla Innovation web site. A website for all innovative and creative people. <p> We invite you to join and promote Guerilla to your company and take benefit of this magic box.',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030519174323,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO press_release VALUES ('F53FFF216F58A0CC0F716FB3D0',NULL,NULL,NULL,NULL,'Guerilla Innovation Website go to production.','Guerilla Innovation Website go to production.','Guerilla Innovation Website go to production.','Jakarta, 16 August 2002, a day before Indonesian Independent Day. We launch Guerilla Innovation Website. A website that is designed to become a gateway of all marketing gurus and e-business gurus. <p> We hope this website can open a new approach to implement an e-business in a new way, and to approach new way to do a marketing campaign.<p>\r\nVisit the Guerilla Innovation initiative website at <a href=\"http://www.guerilla-forum.org\">www.guerilla-forum.org</a>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030519173832,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO press_release VALUES ('F53FFB2B6CF788143D4C096953',NULL,NULL,NULL,NULL,'Vico Oil and Gas Company Migration','Vico Oil and Gas Company Migration','Migrate smoothly from VMX system to new Oracle powered system back by Sun Microsystem technology.','Vico has run their business from 1980s using Fortran based system that connected with Ingres Database. <br><br>Now, their system is powered by Oracle Developer, run on top of Sun Solaris.<br><br>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030519173438,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F4D30718756B8401E43FD2AAE6');
INSERT INTO press_release VALUES ('F4E2F7B554DE304AF29A6E9603',NULL,NULL,NULL,NULL,'BlueOxygen relaunching','BlueOxygen relaunching again...','Relaunch of BlueOxygen.org Website','After several issue and problem. We are relaunching blueoxygen.org, and we want to say sorry to our contributor for our cimande project. Our project now in Source Forge, you can visit at <a href=\"http://cimande.sf.net\">SF.net</a><p>\r\n\r\nWe need contributor to this project. <p>\r\n\r\nFor more information you can email <a href=\"mailto:frans@blueoxygen.org\">me</a>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'F520754FC13282086D2B779255bo2-logo.jpg','F520754FC13282086D2B779255bo2-logo.jpg',NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030513143906,'F36F8BFFF97F8A16505B8305F7',20030513143906,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO press_release VALUES ('F9887285B84902ED7D2E597EEB',NULL,NULL,NULL,NULL,'','','','',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20031218152747,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F4DD64134EC050E3D0A256EA0D');

--
-- Table structure for table `press_release_portal`
--

CREATE TABLE press_release_portal (
  id varchar(28) NOT NULL default '',
  display_style varchar(20) default NULL,
  source varchar(50) default NULL,
  file_name varchar(50) default NULL,
  path varchar(50) default NULL,
  headline varchar(100) default NULL,
  subheadline varchar(100) default NULL,
  abstract text,
  body text,
  linktext varchar(50) default NULL,
  byline varchar(50) default NULL,
  creditline varchar(50) default NULL,
  copyright varchar(50) default NULL,
  editor_notes text,
  keywords varchar(50) default NULL,
  transmitted_date_time datetime default '0000-00-00 00:00:00',
  news_topic_id varchar(50) default NULL,
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `press_release_portal`
--

INSERT INTO press_release_portal VALUES ('F3C7E607AC71DAEC61401BA2D6',NULL,NULL,NULL,NULL,'Test Headline','test subheadline','Teman adalah Hadiah dari Yang Di Atas Buat Kita','<DIV><FONT size=4>Teman adalah Hadiah dari Yang Di Atas Buat \r\n      Kita<BR></FONT><BR>Seperti hadiah, ada yang bungkusnya bagus dan ada yang \r\n      bungkusnya jelek.<BR>Yang bungkusnya bagus punya wajah rupawan, atau \r\n      kepribadian yang menarik.<BR>Yang bungkusnya jelek punya wajah biasa saja, \r\n      atau kepribadian yang biasa<BR>saja, atau malah \r\n      menjengkelkan.<BR><BR>Seperti hadiah, ada yang isinya bagus dan ada yang \r\n      isinya jelek. Yang<BR>isinya bagus punya jiwa yang begitu indah sehingga \r\n      kita terpukau ketika berbagi<BR>rasa dengannya, ketika kita tahan \r\n      menghabiskan waktu berjam-jam saling<BR>bercerita dan menghibur, menangis \r\n      bersama, dan tertawa bersama. Kita<BR>mencintai dia dan dia mencintai \r\n      kita.<BR><BR>Yang isinya buruk, punya jiwa yang terluka. Begitu dalam \r\n      luka-lukanya<BR>sehingga jiwanya tidak mampu lagi mencintai, justru karena \r\n      ia tidak<BR>merasakan cinta dalam hidupnya. Sayangnya yang kita tangkap \r\n      darinya<BR>seringkali justru sikap penolakan, dendam, kebencian, iri \r\n      hati,<BR>kesombongan, amarah, dll. Kita tidak suka dengan jiwa-jiwa \r\n      semacam ini dan mencoba menghindar dari mereka. Kita tidak tahu bahwa itu \r\n      semua BUKANlah karena<BR>mereka pada dasarnya buruk, tetapi ketidakmampuan \r\n      jiwanya memberikan cinta<BR>karena justru ia membutuhkan cinta kita, \r\n      membutuhkan empati kita, kesabaran<BR>dan keberanian kita untuk \r\n      mendengarkan luka-luka terdalam yang memasung<BR>jiwanya.<BR><BR>Bagaimana \r\n      bisa kita mengharapkan seseorang yang terluka lututnya berlari<BR>bersama \r\n      kita? Bagaimana bisa kita mengajak seseorang yang takut air<BR>berenang \r\n      bersama? Luka di lututnya dan ketakutan terhadap airlah yang \r\n      mesti<BR>disembuhkan, bukan mencaci mereka karena mereka tidak mau berlari \r\n      atau<BR>berenang bersama kita. Mereka tidak akan bilang bahwa \"lutut\" \r\n      mereka luka<BR>atau mereka takut air\", mereka akan bilang bahwa mereka \r\n      tidak suka berlari<BR>atau mereka akan bilang berenang itu membosankan \r\n      dll.<BR><BR>Its a defense mechanism. Itulah cara mereka mempertahankan \r\n      diri. Mereka<BR>tidak akan bilang: \"Aku tidak bisa menari\" ...... tapi \r\n      Mereka akan bilang<BR>\"Menari itu tidak menarik.\"<BR>\" Aku membutuhkan \r\n      kamu\"<BR>\"Tidak ada yang cocok denganku.\"<BR>\"Aku \r\n      kesepian\"<BR>\"Teman-temanku sudah lulus semua\"<BR>\"Aku butuh \r\n      diterima\"<BR>\"Aku ini buruk, siapa yang bakal tahan denganku..\"<BR>\"Aku \r\n      ingin didengarkan\"<BR>\"Kisah hidupku membosankan..\"<BR><BR>Mereka semua \r\n      hadiah buat kita, entah bungkusnya bagus atau jelek, entah<BR>isinya bagus \r\n      atau jelek. Dan jangan tertipu oleh kemasan. Hanya ketika kita<BR>bertemu \r\n      jiwa-dengan-jiwa, kita tahu hadiah sesungguhnya yang sudah<BR>disiapkanNya \r\n      buat kita. Berikanlah makna di dlm kehidupan Anda bukan hanya<BR>untuk \r\n      diri Anda sendiri saja melainkan juga untuk membahagiakan \r\n      sesama<BR>manusia di dlm lingkungan kehidupan Anda. Berikanlah \r\n      waktu<BR>Anda dgn digabung oleh rasa kasih!<BR><BR>Seorang sahabat sama \r\n      seperti satu permata yg tak ternilai harganya.<BR>Seorang kawan bisa \r\n      membuat kita ceria, membuat kita terhibur.<BR>Mereka meminjamkan kupingnya \r\n      kepada kita pada saat kita membutuhkannya.<BR>Mereka bersedia membuka hati \r\n      maupun perasaannya untuk berbagi suka dan duka<BR>dgn kita pada saat kita \r\n      membutuhkannya.<BR><BR>Maka dari itu janganlah buang waktu yg Anda miliki, \r\n      janganlah sia-sia akan<BR>waktu yg sedemikian berharganya. Bagikanlah \r\n      sebagian dari waktu yg Anda<BR>miliki untuk seorang kawan. Pasti waktu yg \r\n      Anda berikan tsb akan berbalik<BR>kembali seperti juga satu lingkaran \r\n      walaupun terkadang kita tidak tahu<BR>dari mana dan dari siapa \r\n      datangnya.<BR><BR>Sumber: Unknown (Tidak Diketahui)</DIV></TD></TR>\r\n  <TR>\r\n    <TD id=INCREDIFOOTER width=\"100%\">\r\n      <TABLE cellPadding=0 cellSpacing=0 width=\"100%\">\r\n        <TBODY>\r\n        <TR>\r\n          <TD width=\"100%\"></TD>\r\n          <TD align=middle id=INCREDISOUND vAlign=bottom></TD>\r\n          <TD align=middle id=INCREDIANIM \r\n  vAlign=bottom></TD></TR></TBODY></TABLE></TD></TR>',NULL,NULL,NULL,NULL,'',NULL,'0000-00-00 00:00:00',NULL,'F40AEF18A490010BE7D27D9125img2.gif','F4096ED80D84A086FE268FF309img3.gif','','F40AEF18B4905EFAB58488D725logo1.jpg','F162B448063A847319E641EF7D',20030327171759,'F162B448063A847',20030327171759,'0','ic','F185BD3FDC5CC7989A3CED51A1');

--
-- Table structure for table `priority`
--

CREATE TABLE priority (
  id varchar(28) NOT NULL default '',
  name varchar(125) NOT NULL default '',
  description varchar(125) default NULL,
  url_image varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `priority`
--

INSERT INTO priority VALUES ('F29B5E6EEA4F8502216737425D','Blocked','Priority Blocked','F29B5EF725937306B8265239E3priority_blocker.gif','F162B448063A847',20030108081937,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO priority VALUES ('F29B5F01575A67C4CEF5B0AFC0','Major','Priority Major','F29B5F564D16EA3B3DED9DBBC2priority_major.gif','F162B448063A847',20030108082002,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO priority VALUES ('F29B5F9EFED0C98D41D5D9C0A0','Minor','Priority Minor','F29B5FEDCA515419A7879AF3B2priority_minor.gif','F162B448063A847',20030108082040,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO priority VALUES ('F29B60033659548CF158DD9A0D','Trivial','Priority Trivial','F29B6072E87EC22AE5B328CE84priority_trivial.gif','F162B448063A847',20030108082114,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');

--
-- Table structure for table `product`
--

CREATE TABLE product (
  id varchar(28) NOT NULL default '',
  price int(11) default NULL,
  supplier varchar(255) default NULL,
  unit int(11) default NULL,
  description varchar(255) default NULL,
  name varchar(255) default NULL,
  measure varchar(255) default NULL,
  create_by varchar(28) default NULL,
  update_by varchar(28) default NULL,
  create_date date default NULL,
  update_date date default NULL,
  active_flag int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `product`
--

INSERT INTO product VALUES ('ff808081055be9f001055beec362',0,'',0,'ddd','games','','1','1','2005-07-28','2005-07-28',0);
INSERT INTO product VALUES ('ff8080810562057e0105620e195d',0,'',0,'aaa','boneka','Pieces','1','1','2005-07-29','2005-07-29',1);

--
-- Table structure for table `product_category`
--

CREATE TABLE product_category (
  id varchar(28) NOT NULL default '',
  pcategory_name varchar(25) NOT NULL default '',
  pcategory_desc varchar(35) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `product_category`
--

INSERT INTO product_category VALUES ('ED8B64721650D7ABF0F6E1291F','Accessories','',1,'EACA3FDC25B52DC',20020501163749,NULL,00000000000000,'0','ic',NULL);
INSERT INTO product_category VALUES ('ED8B648B836E84B9420B178EAE','Spare parts','',1,'EACA3FDC25B52DC',20020501163754,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `product_opportunity`
--

CREATE TABLE product_opportunity (
  product_id varchar(28) NOT NULL default '',
  opportunity_id varchar(28) NOT NULL default '',
  PRIMARY KEY  (opportunity_id,product_id),
  KEY product_id (product_id),
  KEY opportunity_id (opportunity_id),
  KEY product_id_2 (product_id),
  KEY opportunity_id_2 (opportunity_id),
  KEY product_id_3 (product_id),
  KEY opportunity_id_3 (opportunity_id),
  KEY product_id_4 (product_id),
  KEY opportunity_id_4 (opportunity_id),
  KEY product_id_5 (product_id),
  KEY opportunity_id_5 (opportunity_id),
  KEY product_id_6 (product_id),
  KEY opportunity_id_6 (opportunity_id),
  KEY product_id_7 (product_id),
  KEY opportunity_id_7 (opportunity_id),
  KEY product_id_8 (product_id),
  KEY opportunity_id_8 (opportunity_id),
  KEY product_id_9 (product_id),
  KEY opportunity_id_9 (opportunity_id),
  KEY product_id_10 (product_id),
  KEY opportunity_id_10 (opportunity_id),
  KEY product_id_11 (product_id),
  KEY opportunity_id_11 (opportunity_id),
  KEY product_id_12 (product_id),
  KEY opportunity_id_12 (opportunity_id),
  KEY product_id_13 (product_id),
  KEY opportunity_id_13 (opportunity_id),
  KEY product_id_14 (product_id),
  KEY opportunity_id_14 (opportunity_id),
  KEY product_id_15 (product_id),
  KEY opportunity_id_15 (opportunity_id),
  KEY product_id_16 (product_id)
) TYPE=MyISAM;

--
-- Dumping data for table `product_opportunity`
--

INSERT INTO product_opportunity VALUES ('ff808081055be9f001055beec362','ff808081055c298501055c29c63d');

--
-- Table structure for table `project_category`
--

CREATE TABLE project_category (
  id varchar(28) NOT NULL default '',
  code char(3) NOT NULL default '',
  iparentcode varchar(28) default NULL,
  url_category_image varchar(255) default NULL,
  description varchar(125) NOT NULL default '',
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `project_category`
--

INSERT INTO project_category VALUES ('F7D6D340DBE94436A979AEEF0C','TMN','','F7D6D5952581C7D46853720D3E01.gif','Taman',1,'F162B448063A847319E641EF7D',20031218105728,'F36F8BFFF97F8A16505B8305F7',20031218105728,'0','ic','F74B696E86AA0CA5819A4FB36C');

--
-- Table structure for table `project_doc_upload`
--

CREATE TABLE project_doc_upload (
  id varchar(28) NOT NULL default '',
  project_id varchar(28) NOT NULL default '',
  file_name varchar(255) NOT NULL default '',
  file_desc varchar(255) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date datetime NOT NULL default '0000-00-00 00:00:00',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `project_doc_upload`
--

INSERT INTO project_doc_upload VALUES ('F7E18EB7C055EFA3BA5502AF92','F7E15AF81C4EE1CE1024ECB170','F7E18EB7C055EFA3BA5502AF92devil-little.gif','test','F162B448063A847319E641EF7D',20030927123911,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('FAF50BF694DCAFDE2D51560DFD','F969A328D2B4E2FACE7F3CB59D','FAF50BF694DCAFDE2D51560DFDERD System Design##Activity Tracking.doc','Disain untuk modul Activity Tracking project fase I',NULL,20040227103706,NULL,'0000-00-00 00:00:00','0','ic',NULL);
INSERT INTO project_doc_upload VALUES ('F8153309DC43FC74DE7BF248C4','F81531366ECC267317ED1FF968','F8153309DC43FC74DE7BF248C4bintang.gif','doc2','F36F8BFFF97F8A16505B8305F7',20031111125140,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('F81532F18772464EC3D9A95EF4','F81531366ECC267317ED1FF968','F81532F18772464EC3D9A95EF4boneka.gif','doc1','F36F8BFFF97F8A16505B8305F7',20031111125140,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('F8166CE328632114D995834EC4','F81531366ECC267317ED1FF968','F8166CE328632114D995834EC4ask.gif','test document','F36F8BFFF97F8A16505B8305F7',20031111125140,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('F9359A66B6806D1CFC9A16F1','F8CF4DAED752F9C07B439B29EB','F9359A66B6806D1CFC9A16F1detail.jsp','test add reference pake email','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('F9A7B4EC56A9B45C110D211BD0','F8FD820EF33CAB30DE0E5CC501','F9A7B4EC56A9B45C110D211BD0KOP SURAT.doc','New Reference','F36F96E4EA83CB95AC4DC601F2',20040220102319,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('FA7E7D6E23FAFD6A54F3891471','F969A328D2B4E2FACE7F3CB59D','FA7E7D6E23FAFD6A54F3891471lorem-ipsum.txt','lorem ipsum',NULL,20040204100613,NULL,'0000-00-00 00:00:00','0','ic',NULL);
INSERT INTO project_doc_upload VALUES ('F93F24FB2FDEAA215486A86126','F8CF4DAED752F9C07B439B29EB','F93F24FB2FDEAA215486A86126contoh-blog.txt','Add R\'eference','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('F9364D738F270A61CCF54D6B0F','F8CF4DAED752F9C07B439B29EB','F9364D738F270A61CCF54D6B0FIcon7EFDA3AC3.txt','test re\'ference','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('F935929B43E25333B9C8636533','F8CF4DAED752F9C07B439B29EB','F935929B43E25333B9C8636533sql1.txt','Test \'ada apa\'','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('F93594F9728092C0AE94FD5149','F8CF4DAED752F9C07B439B29EB','F93594F9728092C0AE94FD5149localhost_aconix_log.2003-11-05.txt','test','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');
INSERT INTO project_doc_upload VALUES ('F8CD9C8D224C74B619BF4BBB1B','F7E13F805B3510289EA5FF5020','F8CD9C8D224C74B619BF4BBB1BKOP SURAT.doc','test upload','F162B448063A847319E641EF7D',20031112090841,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C');

--
-- Table structure for table `project_member`
--

CREATE TABLE project_member (
  id varchar(28) NOT NULL default '',
  project_id varchar(28) NOT NULL default '',
  employee_id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  coordinator_flag tinyint(1) NOT NULL default '0',
  version int(8) NOT NULL default '1',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `project_member`
--

INSERT INTO project_member VALUES ('F9357B7FA54F5FB8158B2B6C5D','F8CF4DAED752F9C07B439B29EB','F36F8BFFF97F8A16505B8305F7','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO project_member VALUES ('FAC827756178391DA350075EB','F8FD555F0676F9CB4D9DDE40B9','FA89238CD9BCDF331DF9B845EB','F36F96E4EA83CB95AC4DC601F2',20040218172500,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO project_member VALUES ('FAC8276417A63BA0587113967F','F8FD555F0676F9CB4D9DDE40B9','F3FB0D6714905E04E2586A8E1A','F36F96E4EA83CB95AC4DC601F2',20040218172500,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',1,1);
INSERT INTO project_member VALUES ('F9356D46C94F490BB39F3FCA1F','F8CF4DAED752F9C07B439B29EB','1','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',1,1);
INSERT INTO project_member VALUES ('F9358CD80E51EB0D4B5683E237','F8CF4DAED752F9C07B439B29EB','F3FB0D6714905E04E2586A8E1A','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO project_member VALUES ('FAC8278435E9966812802FA070','F8FD555F0676F9CB4D9DDE40B9','F36F96E4EA83CB95AC4DC601F2','F36F96E4EA83CB95AC4DC601F2',20040218172500,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO project_member VALUES ('FAD0F16CEFE929F8DBB621DE74','F8FD820EF33CAB30DE0E5CC501','FA89238CD9BCDF331DF9B845EB','F36F96E4EA83CB95AC4DC601F2',20040220102319,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',1,1);
INSERT INTO project_member VALUES ('FAD0F196B6529069D1722ED2C9','F8FD820EF33CAB30DE0E5CC501','F3FB0D6714905E04E2586A8E1A','F36F96E4EA83CB95AC4DC601F2',20040220102319,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO project_member VALUES ('FAD0F1A7743A2FFBFCA2488018','F8FD820EF33CAB30DE0E5CC501','F36F8BFFF97F8A16505B8305F7','F36F96E4EA83CB95AC4DC601F2',20040220102319,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,1);
INSERT INTO project_member VALUES ('FAD1F2AB684C00FFB4A0995C7D','FAD1F2207512CE8432F948248A','F501555A2ECD5AC8FCC32F4DD6','F36F8BFFF97F8A16505B8305F7',20040220150332,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',1,2);
INSERT INTO project_member VALUES ('FAD1F2BF33947E9ADE376C925E','FAD1F2207512CE8432F948248A','F53FAAF09AB84F412CDA27FF72','F36F8BFFF97F8A16505B8305F7',20040220150332,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,2);
INSERT INTO project_member VALUES ('FAD1F2D634A3AD4F5652E5AAD3','FAD1F2207512CE8432F948248A','F36F96E4EA83CB95AC4DC601F2','F36F8BFFF97F8A16505B8305F7',20040220150332,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,2);
INSERT INTO project_member VALUES ('FAD1F2E499992CB75DBF499F1A','FAD1F2207512CE8432F948248A','F3FB0D6714905E04E2586A8E1A','F36F8BFFF97F8A16505B8305F7',20040220150332,NULL,00000000000000,'0','ic','F74B696E86AA0CA5819A4FB36C',0,2);

--
-- Table structure for table `project_security`
--

CREATE TABLE project_security (
  id varchar(28) NOT NULL default '',
  project_id varchar(28) NOT NULL default '',
  role_id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date datetime NOT NULL default '0000-00-00 00:00:00',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  version int(8) NOT NULL default '1',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `project_security`
--

INSERT INTO project_security VALUES ('F9356D2BCB57846E0ED53614B3','F8CF4DAED752F9C07B439B29EB','3','F36F8BFFF97F8A16505B8305F7',20040210144310,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1);
INSERT INTO project_security VALUES ('F8FD8284262813E9734458046B','F8FD820EF33CAB30DE0E5CC501','all','F36F96E4EA83CB95AC4DC601F2',20040220102319,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1);
INSERT INTO project_security VALUES ('FAC8274987B0FCCC7E0F176258','F8FD555F0676F9CB4D9DDE40B9','3','F36F96E4EA83CB95AC4DC601F2',20040218172500,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',1);
INSERT INTO project_security VALUES ('FAD1F2877FC1B7D3BCAF5A062E','FAD1F2207512CE8432F948248A','3','F36F8BFFF97F8A16505B8305F7',20040220150332,NULL,'0000-00-00 00:00:00','0','ic','F74B696E86AA0CA5819A4FB36C',2);

--
-- Table structure for table `project_status`
--

CREATE TABLE project_status (
  id varchar(28) NOT NULL default '',
  name varchar(125) NOT NULL default '',
  description varchar(125) default NULL,
  url_image varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `project_status`
--

INSERT INTO project_status VALUES ('F29B616F1A1CC8B277C3FEDB39','Assigned','Status Assigned','F29B61B461D76F9FF18692D4D9status_assigned.gif','F162B448063A847',20030108082237,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO project_status VALUES ('F29B61BC3183CB12E066E332F','Closed','Status Closed','F29B61EE2E26420A3C4675D278status_closed.gif','F162B448063A847',20030108082252,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO project_status VALUES ('F29B61FCC4924584D4222C7178','In Progress','Status In Progress','F29B626199F2D598C495EE3873status_inprogress.gif','F162B448063A847',20030108082321,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO project_status VALUES ('F29B6267D2CE64E45213EEA052','Need Info','Status Need Info','F29B62A79A57F26E89D5FE12BAstatus_needinfo.gif','F162B448063A847',20030108082339,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO project_status VALUES ('F29B62B055CEDA8AB0E7635FED','Re-opened','Status Re-opened','F29B631FA96DEE3162C47F357Dstatus_reopened.gif','F162B448063A847',20030108082410,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');
INSERT INTO project_status VALUES ('F29B6325372E79EAB162E84386','Resolved','Status Resolved','F29B635F61F1FABD8217E58DDBstatus_resolved.gif','F162B448063A847',20030108082426,NULL,00000000000000,'0','ic','F185C351B2FAC396169017978F');

--
-- Table structure for table `project_task`
--

CREATE TABLE project_task (
  id varchar(28) NOT NULL default '',
  project_id varchar(28) default NULL,
  task_name varchar(128) default NULL,
  description varchar(128) default NULL,
  due_date datetime NOT NULL default '0000-00-00 00:00:00',
  pic_name varchar(128) NOT NULL default '',
  company_id varchar(28) default NULL,
  division varchar(128) default NULL,
  department varchar(128) default NULL,
  percent_complete tinyint(3) default NULL,
  duration_value tinyint(4) default NULL,
  duration_unit varchar(28) default NULL,
  start_date datetime NOT NULL default '0000-00-00 00:00:00',
  finish_date datetime NOT NULL default '0000-00-00 00:00:00',
  predecessor varchar(28) default NULL,
  resource_name varchar(128) default NULL,
  task_notes text,
  critical_task tinyint(1) default '1',
  priority varchar(28) default NULL,
  deadline_date datetime NOT NULL default '0000-00-00 00:00:00',
  constraint_type tinyint(1) default '1',
  constraint_date datetime NOT NULL default '0000-00-00 00:00:00',
  mile_stones tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `project_task`
--


--
-- Table structure for table `project_tracking`
--

CREATE TABLE project_tracking (
  id varchar(28) NOT NULL default '',
  company_id varchar(28) default NULL,
  name varchar(128) default NULL,
  description varchar(128) default NULL,
  start_date datetime NOT NULL default '0000-00-00 00:00:00',
  finish_date datetime NOT NULL default '0000-00-00 00:00:00',
  priority varchar(28) default NULL,
  status varchar(28) default NULL,
  category_id varchar(28) default NULL,
  progress_presentage varchar(28) default NULL,
  project_manager varchar(28) default NULL,
  critical_project tinyint(1) default '1',
  project_notes text,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `project_tracking`
--


--
-- Table structure for table `quote`
--

CREATE TABLE quote (
  id varchar(28) NOT NULL default '',
  headline varchar(100) default NULL,
  subheadline varchar(100) default NULL,
  abstract text,
  body text,
  editor_notes text,
  transmitted_date_time datetime NOT NULL default '0000-00-00 00:00:00',
  category_id varchar(50) default NULL,
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `quote`
--

INSERT INTO quote VALUES ('F59B0EB0AEAACB311668C9BA87',NULL,NULL,NULL,'Kemarahan merupakan halangan bagi manusia untuk menyadari kebenaran.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606100039,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B0D3DF4D7B8CB80FEC1FDC4',NULL,NULL,NULL,'Kekurangan terbesar manusia adalah sifat berkeluh kesah dan tidak memiliki kebijaksanaan.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095916,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B078E92EC2C32A3E8831F75',NULL,NULL,NULL,'Orang yang membosankan adalah orang yang bicara, waktu Anda inginkan dia mendengarkan.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095312,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B0CF4F45CC3E4289CC28B2F',NULL,NULL,NULL,'Kegagalan terutama manusia adalah kesombongan.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095842,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B0B729A729A5923DCFDD49B',NULL,NULL,NULL,'Manusia memang tidak perlu mengetahui semua hal, tapi setiap orang harus tahu apa yang patut dimengerti.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095745,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B0C61ADC8B1F90112DEA93',NULL,NULL,NULL,'Ketentraman dan kedamaian terutama manusia adalah suka berdana dan beramal.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095818,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B063FEAA1E55EE0EC6CECA0',NULL,NULL,NULL,'Jangan tunggu sampai esok apa yang dapat Anda kerjakan hari ini.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095229,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B0DEE872D7128B3F6FE793',NULL,NULL,NULL,'Ubahlah cara berpikir Anda, maka dunia Anda juga akan berubah.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095955,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B0832E04B209161716B0836',NULL,NULL,NULL,'Orang yang berbudi tinggal dibelakang layar, tetapi sebenarnya ia ada di tempat yang paling depan.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095357,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B08E6036DCE63DEB315A7F6',NULL,NULL,NULL,'Lebih baik menghadapi orang yang marah daripada orang yang lapar.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095421,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B0943E31625D86CDFCE2516',NULL,NULL,NULL,'Orang lebih cepat melupakan suatu dukacita yang hebat daripada suatu hinaan yang tak berarti.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095456,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F59B09D3EE845D9F6E867C6067',NULL,NULL,NULL,'Pembohong yang terbesar adalah orang yang paling banyak bicara tentang diri sendiri.','Anonim','0000-00-00 00:00:00',NULL,NULL,NULL,'000000138',20030606095525,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F5B57A08062102FE1B35AD3E85',NULL,NULL,NULL,'Live to feel the Passion','Ferdinand Ramba','0000-00-00 00:00:00',NULL,NULL,NULL,'000000051',20030611131601,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F5B62F50D643060FE41D3333B7',NULL,NULL,NULL,'Competition is like life. The challenge is to master the rules, lead the pace and create a sensation. Spare no effort and let it ride - success require extreme dedication and boldness. The ultimate reward is in the effort of doing your best at all times, regardless of how challenging the road may be. Winning, after all, is more than a fleeting moment. It is an attitude that we live for, running deep in everything we do, inspiring performance on and off the track. Long may we run.\r\n\r\n- From : Live to feel the Passion of Mitsubishi Motors','Ferdinand Ramba','0000-00-00 00:00:00',NULL,NULL,NULL,'000000051',20030828153716,'000000138',20030828153716,'E8D4BE646EF710FAB3F79BE639','ic','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F736551CA75D648CB8D24D6001',NULL,NULL,NULL,'It is not enough to have wisdom, you need to know how to use it','Marcus Tullius Cicero (106 AC-43 B.C.)','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002',20030825064200,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F736567B9B1B57B427CEC58724',NULL,NULL,NULL,'In practice, only what can be solved through intelligence is a problem.','Hermann Keyserling;(1880-1946); German phylosopher.\r\n','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002',20030825064523,'000000002',20030825064523,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F736574FC43EF3A820C2C3D127',NULL,NULL,NULL,'The greatness of a nation can be judged by the way its animals are treated.','Mahatma Gandhi (1869-1948) Indian philosopher and politician','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002',20030825064419,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F745C0EEAFC6AFF075D2BDA255',NULL,NULL,NULL,'Most powerful is he who has himself in his own power','Lucius Annaeus Seneca (2 BC-65AD) Roman philosphe','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002',20030828063348,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F74B9AFB1C2331E3EA2FB4FD26',NULL,NULL,NULL,'An experience is never a failure because it always serves to show something','Thomas Alva Edison (1847-1931); US physicist and inventor.\r\n','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002',20030829095009,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO quote VALUES ('F75AC2BD6F1EB58F57DC82237F',NULL,NULL,NULL,'Never shall I forget the time I spent with you. Please continue to be my friend, as you will always find me yours\r\n','Ludwig van Beethoven (1770-1827); German composer.','0000-00-00 00:00:00',NULL,NULL,NULL,'000000002',20030901082747,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F185C29BDFC64CD3D08E1A15E8');

--
-- Table structure for table `report`
--

CREATE TABLE report (
  id varchar(28) NOT NULL default '',
  display_style varchar(20) default NULL,
  report_template_file varchar(50) default NULL,
  report_form_file varchar(50) default NULL,
  description varchar(50) default NULL,
  preview_pic varchar(50) default NULL,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `report`
--


--
-- Table structure for table `report_security`
--

CREATE TABLE report_security (
  id varchar(100) NOT NULL default '',
  template_id varchar(50) default NULL,
  report_id varchar(50) default NULL,
  role_id varchar(50) default NULL,
  type varchar(10) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `report_security`
--

INSERT INTO report_security VALUES ('F963A06C9D176B93A9C3B41000E8615A12EE2ABB0357752928E5','F93B0B43E2B125A432871C8E48','F963A06C9D176B93A9C3B41000','E8615A12EE2ABB0357752928E5','View',NULL,20040116084058,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('F963A06C9D176B93A9C3B41000E8615A896C1AEEBB5470D7AAB7','F93B0B43E2B125A432871C8E48','F963A06C9D176B93A9C3B41000','E8615A896C1AEEBB5470D7AAB7','Edit',NULL,20040116084058,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA13BDE3CAE53C3E870F6C7F411','F93B0B43E2B125A432871C8E48','FA13BDE3CAE53C3E870F6C7F41','1','Edit',NULL,20040115152229,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('F963A06C9D176B93A9C3B41000E8615AC4915CA30C4B13A7A1C0','F93B0B43E2B125A432871C8E48','F963A06C9D176B93A9C3B41000','E8615AC4915CA30C4B13A7A1C0','Edit',NULL,20040116084058,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA13BDE3CAE53C3E870F6C7F415','F93B0B43E2B125A432871C8E48','FA13BDE3CAE53C3E870F6C7F41','5','View',NULL,20040115152229,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E402FA79B397914EC9B0EAEEACA3F077E886331F0863628FF','F93B0BB39BDDD84D8198E71DAB','FA1E402FA79B397914EC9B0EAE','EACA3F077E886331F0863628FF','Edit',NULL,20040116173600,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1C711062690AA02729E06434F9A202E61CD5BE6BE70F60BC30','F93B0BB39BDDD84D8198E71DAB','FA1C711062690AA02729E06434','F9A202E61CD5BE6BE70F60BC30','View',NULL,20040116173514,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E402FA79B397914EC9B0EAEE8615AC4915CA30C4B13A7A1C0','F93B0BB39BDDD84D8198E71DAB','FA1E402FA79B397914EC9B0EAE','E8615AC4915CA30C4B13A7A1C0','Edit',NULL,20040116173600,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E402FA79B397914EC9B0EAEE8615A896C1AEEBB5470D7AAB7','F93B0BB39BDDD84D8198E71DAB','FA1E402FA79B397914EC9B0EAE','E8615A896C1AEEBB5470D7AAB7','Edit',NULL,20040116173600,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1DD0C210FD5329EC59D94251','F93B0B43E2B125A432871C8E48','FA1DD0C210FD5329EC59D9425','1','View',NULL,20040116153531,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1DD0C210FD5329EC59D94254','F93B0B43E2B125A432871C8E48','FA1DD0C210FD5329EC59D9425','4','Edit',NULL,20040116153531,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1DD0C210FD5329EC59D9425E8615A896C1AEEBB5470D7AAB7','F93B0B43E2B125A432871C8E48','FA1DD0C210FD5329EC59D9425','E8615A896C1AEEBB5470D7AAB7','View',NULL,20040116153531,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1DD0C210FD5329EC59D9425E8615AC4915CA30C4B13A7A1C0','F93B0B43E2B125A432871C8E48','FA1DD0C210FD5329EC59D9425','E8615AC4915CA30C4B13A7A1C0','View',NULL,20040116153531,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1C711062690AA02729E06434EACA3F077E886331F0863628FF','F93B0BB39BDDD84D8198E71DAB','FA1C711062690AA02729E06434','EACA3F077E886331F0863628FF','View',NULL,20040116173514,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1C711062690AA02729E06434E8615A12EE2ABB0357752928E5','F93B0BB39BDDD84D8198E71DAB','FA1C711062690AA02729E06434','E8615A12EE2ABB0357752928E5','Edit',NULL,20040116173514,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E3B93B620423F82EAB94547E8615A5669989A7E9BF0062A7C','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','E8615A5669989A7E9BF0062A7C','View',NULL,20040116173500,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E3B93B620423F82EAB94547E8615A12EE2ABB0357752928E5','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','E8615A12EE2ABB0357752928E5','View',NULL,20040116173500,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E3B93B620423F82EAB945475','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','5','View',NULL,20040116173500,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E3B93B620423F82EAB945473','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','3','View',NULL,20040116173500,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E3B93B620423F82EAB945471','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','1','View',NULL,20040116173500,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E3B93B620423F82EAB945472','F93B0BB39BDDD84D8198E71DAB','FA1E3B93B620423F82EAB94547','2','View',NULL,20040116173500,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E408A7C74FF502CD071D17EE8615A12EE2ABB0357752928E5','F93B0B43E2B125A432871C8E48','FA1E408A7C74FF502CD071D17E','E8615A12EE2ABB0357752928E5','View',NULL,20040116173628,NULL,00000000000000,'0','ic',NULL);
INSERT INTO report_security VALUES ('FA1E408A7C74FF502CD071D17E5','F93B0B43E2B125A432871C8E48','FA1E408A7C74FF502CD071D17E','5','View',NULL,20040116173628,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `report_template`
--

CREATE TABLE report_template (
  id varchar(28) NOT NULL default '',
  name varchar(65) NOT NULL default '',
  report_template_file varchar(50) default NULL,
  report_form_file varchar(50) default NULL,
  description varchar(50) default NULL,
  preview_pic varchar(50) default NULL,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  active_flag tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `report_template`
--

INSERT INTO report_template VALUES ('F93B0B43E2B125A432871C8E48','Template 1','F93B0B43E2B125A432871C8E48WebappReport3.xml','F93B0B43E2B125A432871C8E48form-search.jsp','Template 1\r\n\r\n','',NULL,20040116175020,NULL,00000000000000,'0','ic',NULL,1);
INSERT INTO report_template VALUES ('F93B0BB39BDDD84D8198E71DAB','Report Template 1','F93B0BB39BDDD84D8198E71DABWebappReport2.xml','F93B0BB39BDDD84D8198E71DABcreate-report.jsp','Report Template 1','',NULL,20040116174016,NULL,00000000000000,'0','ic',NULL,1);

--
-- Table structure for table `role_privilage`
--

CREATE TABLE role_privilage (
  id varchar(28) NOT NULL default '',
  role_id varchar(28) default NULL,
  module_function_id varchar(28) default NULL,
  privilage_flag tinyint(1) default '0',
  url_xml varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id char(2) NOT NULL default 'ic',
  active_flag tinyint(1) NOT NULL default '1',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `role_privilage`
--

INSERT INTO role_privilage VALUES ('1','1','1',1,NULL,NULL,20020529014406,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('3','1','3',1,NULL,NULL,20020529014406,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('4','1','4',1,NULL,NULL,20020529014406,'1',20010713191218,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('12','2','3',1,NULL,NULL,20020529014406,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('13','2','6',1,NULL,NULL,20020529014406,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('E8D32FCE1316C8CAA11F6CA00E','1','E8D32F8713656B89EF6796025F',1,NULL,'1',20020529014406,'1',20010909020028,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('EACA38F53AAF7CADDF9E20D48B','EACA3F077E886331F0863628FF','EACA319302C5B45E20059EDF39',1,NULL,'1',20020529014406,'1',20011215182500,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('EAD2D2935AE815149B0E7DAB00','1','EAD2D2409EC1022AEBD088385',1,NULL,'1',20020529014406,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('EC27D7EEAEB95E55C505A080DC','3','6',1,NULL,'1',20020529014406,'1',20020413104221,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('EC27E61BD8AC0CC27990148F79','3','E7B5F42F47F3BDBD009F4A70F4',1,NULL,'1',20020529014406,'1',20020413104540,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('ED6262836FC467113861BEC347','EACA3F077E886331F0863628FF','ED625E63C7DD6F60D0A3429A5F',1,NULL,'1',20020529014406,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('EDA3EF16A2A1CF45DB6A29DBD3','EACA3F077E886331F0863628FF','EDA3E90CE63AE04E6159FFC6E4',1,NULL,'1',20020529014406,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('EDA3F7680646631B52B5579C2B','EDA4618AC8FEE77BEEF571204D','EDA3F28096FBA22FDAF8AE2FCB',1,NULL,'1',20020529014406,'1',20020506131702,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('F15DB620D0C7D7986FEE136B0C','3','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'1',20021107155546,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('F1158F9530557FF2B881A28959','3','F1158BCC10255DDC5563C9DC07',1,NULL,'1',20021024154100,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('F162B3E3B9753CCB20FE38CCE1','5','F1158BCC10255DDC5563C9DC07',1,NULL,'1',20021108151135,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('F162BB988F4485C1980C43BBC5','5','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'1',20021108151947,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('F162BCDD7B9E05CF86705E93A4','E8615A5669989A7E9BF0062A7C','F1158BCC10255DDC5563C9DC07',1,NULL,'1',20021108152118,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('F162BD234FA764DD448B82D82B','E8615A5669989A7E9BF0062A7C','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'1',20021108152127,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('F8EE3511AECA4C232B49542662','3','F8EE2EDC0C6B2F32924D03427F',1,NULL,'1',20031118163920,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_privilage VALUES ('F9A78081DD38E14E8F8C1B3FB1','3','F8EE2EDC0C6B2F32924D03427F',1,NULL,'1',20031224161216,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');

--
-- Table structure for table `role_site`
--

CREATE TABLE role_site (
  id varchar(28) NOT NULL default '',
  role_id varchar(28) NOT NULL default '',
  rsite_id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `role_site`
--

INSERT INTO role_site VALUES ('F199E8F90A87DB35EAA0B810B8','3','F199E755B97B662FC248CAC80',NULL,20021119082832,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO role_site VALUES ('F186BF7B53F10B7406CB96A1DD','3','F185BD3FDC5CC7989A3CED51A1',NULL,20021115151020,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO role_site VALUES ('F186BF656B571EA0CD8A1D6BCC','3','F185C29BDFC64CD3D08E1A15E8',NULL,20021115151020,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO role_site VALUES ('F186BF5394823B80AD8D6364FF','3','F185C351B2FAC396169017978F',NULL,20021115151020,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO role_site VALUES ('F74B6B78EBE6BDDAB1FEA8DF3F','3','F74B696E86AA0CA5819A4FB36C',NULL,20030829085753,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO role_site VALUES ('F78E9C6F2288CD721B04670153','3','F78E9748E9F76ABD233C5EAD39',NULL,20030911100604,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO role_site VALUES ('F9A20322793136B6AFD2F8C7AE','F9A202E61CD5BE6BE70F60BC30','F9A2020F6D2B0CA30F3A1C8745',NULL,20031223143624,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `role_site_privilage`
--

CREATE TABLE role_site_privilage (
  id varchar(28) NOT NULL default '',
  role_site_id varchar(28) default NULL,
  module_function_id varchar(28) default NULL,
  privilage_flag tinyint(1) default '1',
  url_xml varchar(255) default NULL,
  rs_site_id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id char(2) NOT NULL default 'ic',
  active_flag tinyint(1) NOT NULL default '1',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `role_site_privilage`
--

INSERT INTO role_site_privilage VALUES ('2','1','2',1,NULL,'EE185CE0B82B41C1724F284685',NULL,20020709094430,NULL,20020709081753,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('1','1','1',1,NULL,'EE185CE0B82B41C1724F284685',NULL,20020709094503,NULL,20020709094503,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F19A75C323A3B0D49FFA8787B3','F186BF656B571EA0CD8A1D6BCC','F186E1B0CC5DB5F3EDC4F2E768',1,NULL,'F185C29BDFC64CD3D08E1A15E8',NULL,20021119110220,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F1868AC0C6C48059DFA7CB8FB6','EF201F06FE6D8F2B1E1754401A','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'EF62687CC1170D25FC73E0051C',NULL,20021115144453,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F186B7E27F6534C0FFB92A8E6B','F186816737F04F453D615080A3','F15DB4CB9E88FF3BD7726BFC44',1,NULL,'F185C351B2FAC396169017978F',NULL,20021115150204,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F186B7BB1A72061092EBC71BED','F186816737F04F453D615080A3','F1158BCC10255DDC5563C9DC07',1,NULL,'F185C351B2FAC396169017978F',NULL,20021115150204,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F74B6C20E5B9244F91A27900C0','F74B6B78EBE6BDDAB1FEA8DF3F','F1A62489F16437AD6D12617D3F',1,NULL,'F74B696E86AA0CA5819A4FB36C',NULL,20030829085825,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F19A8020FE26D4663C46E6B7AD','F186BF7B53F10B7406CB96A1DD','F19A7ED8E71F5BE9AC192EE65A',1,NULL,'F185BD3FDC5CC7989A3CED51A1',NULL,20021119111336,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F33663953B4902CDFB5A3F49C5','F199E8F90A87DB35EAA0B810B8','F33661890F73F3C0A23436294A',1,NULL,'F199E755B97B662FC248CAC80',NULL,20030207104607,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F74B6C0EAA8231A279077A25C5','F74B6B78EBE6BDDAB1FEA8DF3F','F74B5F495A997365A16C0D6058',1,NULL,'F74B696E86AA0CA5819A4FB36C',NULL,20030829085825,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F186C02D2892C034E4F433C5D','F186BF5394823B80AD8D6364FF','F1158BCC10255DDC5563C9DC07',1,NULL,'F185C351B2FAC396169017978F',NULL,20030829085809,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');
INSERT INTO role_site_privilage VALUES ('F9A203A43A378BC1AD30EF3787','F9A20322793136B6AFD2F8C7AE','E8D32F8713656B89EF6796025F',1,NULL,'F9A2020F6D2B0CA30F3A1C8745',NULL,20031223143653,NULL,00000000000000,'ic',1,'EE185CE0B82B41C1724F284685');

--
-- Table structure for table `section`
--

CREATE TABLE section (
  id varchar(28) NOT NULL default '',
  descriptor_id varchar(28) default NULL,
  code char(3) NOT NULL default '',
  url_section varchar(255) default NULL,
  description varchar(125) NOT NULL default '',
  active_flag tinyint(1) default '1',
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id),
  UNIQUE KEY code (code)
) TYPE=MyISAM;

--
-- Dumping data for table `section`
--

INSERT INTO section VALUES ('0','0','0','','None',1,'',00000000000000,'',00000000000000,NULL);
INSERT INTO section VALUES ('E7F97EEA3CEEBEA8EC6F1C15F0','23','js',NULL,'Jetspeed',1,'1',20010728194803,'1',20010728194803,NULL);
INSERT INTO section VALUES ('E7F991893FEA8B3E04041D13B9','23','xml',NULL,'XML',1,'1',20010728194839,NULL,00000000000000,NULL);
INSERT INTO section VALUES ('E7F991B4A14316A4CF7D442850','23','trb',NULL,'Turbine',1,'1',20010728195015,'1',20010728195015,NULL);
INSERT INTO section VALUES ('E7F991CF9F5341CB12073B8CE7','23','ax',NULL,'Axis',1,'1',20010728195033,'1',20010728195033,NULL);
INSERT INTO section VALUES ('E7F991F1D9E829257E68A11CE9','23','cmd',NULL,'Cimande',1,'1',20010728195027,'1',20010728195027,NULL);
INSERT INTO section VALUES ('E7F99214AACD3A409FFABCB35B','23','rdf',NULL,'RDF / RSS',1,'1',20010728195038,'1',20010728195038,NULL);
INSERT INTO section VALUES ('E7F99240F3E1B38464CF34CE2','23','jv',NULL,'Java',1,'1',20010728195043,'1',20010728195043,NULL);
INSERT INTO section VALUES ('E7F992589D9CE2D5C24E56149F','23','cc',NULL,'Cocoon',1,'1',20010728195048,'1',20010728195048,NULL);
INSERT INTO section VALUES ('E7F992908EF5E3E2EB9AF1E8D1','23','cc2',NULL,'Cocoon 2',1,'1',20010728195052,'1',20010728195052,NULL);
INSERT INTO section VALUES ('E7F992ABB44F53CC40EC77B66','23','sp',NULL,'SOAP',1,'1',20010728195057,'1',20010728195057,NULL);
INSERT INTO section VALUES ('ED2D85BE602599BAF25358B0B3','ED2D5FC89DA4B624B60783E281','c1',NULL,'Component',1,'1',20020413110959,NULL,00000000000000,NULL);
INSERT INTO section VALUES ('ED2D86B569E6F72A89D00C8388','ED2D68F33A20F0789CE1B8CAD0','cm1',NULL,'Component Methods',1,'1',20020413111101,NULL,00000000000000,NULL);
INSERT INTO section VALUES ('ED2D86DD275BABE9B6EA14D4D1','ED2D68AA3264045584C17F100C','cp1',NULL,'Component Package',1,'1',20020413111114,NULL,00000000000000,NULL);
INSERT INTO section VALUES ('EE1831591496E357FD66A2AFFC','25','sc1',NULL,'Section1',1,'1',20020529010504,NULL,00000000000000,'ED2E4202F2AE0340726C67A877');
INSERT INTO section VALUES ('EE18412555E0763CFF94247013','25','sc2',NULL,'Section1',1,'1',20020529010550,NULL,00000000000000,'EDDCA9DCE41A14EE5D5ABE7E3C');

--
-- Table structure for table `send_to_friend`
--

CREATE TABLE send_to_friend (
  id varchar(28) NOT NULL default '',
  name1 varchar(55) NOT NULL default '',
  name2 varchar(55) default NULL,
  name3 varchar(55) default NULL,
  email1 varchar(255) NOT NULL default '',
  email2 varchar(255) default NULL,
  email3 varchar(255) default NULL,
  comment varchar(255) default NULL,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `send_to_friend`
--


--
-- Table structure for table `services`
--

CREATE TABLE services (
  id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  headline varchar(255) NOT NULL default '',
  abstract text,
  cross_selling_headline varchar(255) default NULL,
  detail text,
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  url_image3 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) NOT NULL default '',
  description varchar(128) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `services`
--

INSERT INTO services VALUES ('EE7C61E38B5AFBCD607107B080','Knowledge Management Solution','Discover how to connect the right people with the right information for competitive advantage.','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession. \r\n','','New digital technology is improving business efficiency by radically increasing the quality and quantity of information available to knowledge workers. KNOWLEDGE MANAGEMENT SOLUTION will help you decide which new knowledge-management technologies are relevant to your business and show you how to use them to build an integrated knowledge-management solution. The book also provides detailed case studies of successful knowledge-management implementations, complete with quantifiable benefits. You&#8217;ll discover how these implementations enable smarter business planning and analysis, faster product design and feedback, more effective project and people tracking, and better employee management and training. <p>\r\nIn most companies, people spend a large amount of their time looking for information. When they find what they need, they make important decisions based on it, often without verifying the accuracy or the source. They don&#8217;t know the context in which it was written, or whether there are other related documents that they should be accessing. \r\n<br>\r\n            KMS will optimizes knowledge management in context for \r\n            all business areas across your enterprise. Our processes and tools \r\n            allow you to:<br>\r\n            <ul>\r\n              <li> Develop a knowledge management framework reflecting the organizational \r\n                structure<br>\r\n                of your business<br>\r\n                <br>\r\n              </li>\r\n              <li><font face=\"Arial, Helvetica, sans-serif\" size=\"2\"> Compile \r\n                knowledge dedicated to specific functional areas and strategic \r\n                concerns<br>\r\n                <br>\r\n                </font></li>\r\n              <li><b><font face=\"Arial, Helvetica, sans-serif\" size=\"2\"> </font></b>Develop \r\n                and share documents internally and externally, maintaining the \r\n                context in <br>\r\n                which they were written<br>\r\n                <br>\r\n              </li>\r\n              <li><font face=\"Arial, Helvetica, sans-serif\" size=\"2\"> Personalize \r\n                information access to individuals, groups and teams<br>\r\n                <br>\r\n                </font></li>\r\n              <li><font face=\"Arial, Helvetica, sans-serif\" size=\"2\"> Highlight \r\n                and disseminate knowledge of interest to team members and functional \r\n                areas<br>\r\n                <br>\r\n                </font></li>\r\n              <li>Create knowledge dashboards with summary overviews to aid in \r\n                strategic decision-making<br>\r\n                <br>','EF3EB8174696D6727AF5269490knowledge_sphere.gif','F0386DC4CA7E26EE108EC7951Fknowledge_sphere.gif',NULL,'2',20030429163708,'EEA063FE983851E',20020911170827,'0','ic','F4D30718756B8401E43FD2AAE6',NULL);
INSERT INTO services VALUES ('EE7C684145375E2988E9863A1E','Guerilla Wired Program','\"Learn our step-by-step Guerrilla Marketing Method and join over one million businesses who have boosted their profits without spending a lot of money on marketing!\"','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.<p>\r\n','\"Learn our step-by-step Guerrilla Marketing Method and join over one million businesses who have boosted their profits without spending a lot of money on marketing!\"','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.<p>\r\n<p>\r\nWe all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. \r\n\r\nIt is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? \r\n\r\nIt is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. \r\n\r\n<p>\r\nBefore you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. To learn how your competitors get marketing messages across, consult trade journals. Their advertising will show you which features they are focusing on. Learning about your target customer will help prevent wasting your money and time on unproductive promotional activities. \r\n\r\n','EFA66F0F861C2842F761721D8Clogo_guerilla_big.gif','EFA66F0F9A1C6EB61226FA920Clogo_guerilla.gif','EF472546E6EBDE2B3995597846v3_java_logo.gif','2',20030429163911,'EEA063FE983851E',20020814084440,'0','ic','F4D30718756B8401E43FD2AAE6',NULL);
INSERT INTO services VALUES ('F54DDEB3128EB3D851D48A46C9','Content Management Solution','Content Management Solution','Organizations increasingly demand content management and portal solutions that capture and automate online business processes and enable them to effectively manage and deliver enterprise content to the right audiences','','Organizations increasingly demand content management and portal solutions that capture and automate online business processes and enable them to effectively manage and deliver enterprise content to the right audiences. By encouraging companies to evaluate and its competitors content management and portal solutions for comprehensiveness, time to deployment, scalability, ease of use and flexibility, the Dare to Compare campaign is designed to help organizations select a vendor that best meets their needs. \r\n<br><BR>\r\nMore than 1,600 leading companies across the globe have made the comparison and selected some combination of content management, integration and portal applications to power their mission-critical Web applications. \r\n<br><BR>\r\nContent Management suites empower users to quickly create, manage and deploy enterprise Web applications that extend and leverage the customers existing information infrastructure. Each suite offers modular and easily configurable services components and a central administrative console to maximize flexibility and productivity. \r\n<br><BR>\r\nOrganizations tend to look at content management as content thats good enough for outside folks, while they refer to knowledge management as the sharing of knowledge primarily by inside folks. We think the time is ripe for a collision. \r\nA blend of content management systems and knowledge management tactics may provide just the combination a company needs. By examining the following points of overlap between content management and knowledge management, companies can leverage that overlap to boost immediate ROI.\r\n<br><BR>\r\nA content management system (CMS) is a system used to manage the content of a Web site. Typically, a CMS consists of two elements: the content management application (CMA) and the content delivery application (CDA). The CMA element allows the content manager or author, who may not know Hypertext Markup Language (HTML), to manage the creation, modification, and removal of content from a Web site without needing the expertise of a Webmaster. The CDA element uses and compiles that information to update the Web site. The features of a CMS system vary, but most include Web-based publishing, format management, revision control, and indexing, search, and retrieval. \r\nThe Web-based publishing feature allows individuals to use a template or a set of templates approved by the organization, as well as wizards and other tools to create or modify Web content. The format management feature allows documents including legacy electronic documents and scanned paper documents to be formatted into HTML or Portable Document Format (PDF) for the Web site. The revision control feature allows content to be updated to a newer version or restored to a previous version. Revision control also tracks any changes made to files by individuals. An additional feature is indexing, search, and retrieval. A CMS system indexes all data within an organization. Individuals can then search for data using keywords, which the CMS system retrieves. \r\nA CMS system may also provide tools for one-to-one marketing. One-to-one marketing is the ability of a Web site to tailor its content and advertising to a user specific characteristics using information provided by the user or gathered by the site (for example, a particular users page sequence pattern). For example, if you visit a search engine and search for digital camera,the advertising banners will advertise businesses that sell digital cameras instead of businesses that sell garden products. \r\n<BR><BR>\r\nTwo factors must be considered before an organization decides to invest in a CMS. First, an organization size and geographic dispersion must be considered especially if an organization is spread out over several countries. For these organizations, the transition to CMS is more difficult. Secondly, the diversity of the electronic data forms used within an organization must be considered. If an organization uses text documents, graphics, video, audio, and diagrams to convey information, the content will be more difficult to manage.\r\n','F54DEB833C79C9E3D7F3CE1E8BEF3EB8174696D6727AF5269490knowledge_sphere.gif',NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030525141629,'F501555A2ECD5AC8FCC32F4DD6',20030525141629,'0','ic','F4D30718756B8401E43FD2AAE6',NULL);
INSERT INTO services VALUES ('F4E2D890EB72913C59F94EFC93','Our Product 1','Our Product 1','Testing','Solution Design','testing juga','F4E2ECAFDE234AF95A7AD7B24Dbig_images1.jpg',NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030501155302,'F36F8BFFF97F8A16505B8305F7',20030501155302,'0','ic','F4DD64134EC050E3D0A256EA0D',NULL);
INSERT INTO services VALUES ('EE8211E52DC1267A57F95D214','Technology Education Service','Technology Education Service','Technology Education Service1 <br> Technology Education Service2 <br> Technology Education Service3','Technology Education Service','a Technology Education Service <br>\r\nb Technology Education Service <br>\r\nc Technology Education Service','EF6188EB1DC2FAE4EC28FAC6BDjava.gif',NULL,NULL,'2',20020731233906,'EEA063FE983851E',20020731233906,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C',NULL);
INSERT INTO services VALUES ('EE8213E8C3D062C30B823889D','Collaboration Internetworking','Collaboration Internetworking Enable Service','Collaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable Service','Collaboration all people into a single integrate collaboration services.','Collaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable ServiceCollaboration Internetworking Enable Service','EF614ECBF67D34C1EA5D47999Acollab_inter_logo_big.jpg','EF614E2585EF979E2ECFCE2097collab_inter_logo.jpg',NULL,'2',20020801013351,'EEA063FE983851E',20020731223537,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C',NULL);
INSERT INTO services VALUES ('EE8214A9F871934094D11E0502','Custom Application Development','Custom Application Development','Custom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application Development',NULL,'Custom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application DevelopmentCustom Application Development','EE821548DF7EE4515ADB222229poohfieldback.jpg',NULL,NULL,'2',20020618141729,NULL,00000000000000,'0','ic','EDDCA9DCE41A14EE5D5ABE7E3C',NULL);
INSERT INTO services VALUES ('EF5754755119A3B2E3211AD22','guerilla_service','Guerilla Solution','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Guerilla Solution','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.\r\n(Detail Solution)','EF57574C6E24199469951E43EAsolution01.gif','EF57574C6E24199469951E43EAsolution01_in.gif','EF592B88695D2DE0715A6420C6images01.gif','EEA063FE983851E',20020805065437,'EEA063FE983851E',20020805065437,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF57575AD591ECDA1C2FEC8C8D','integrated_solution','Integrated Solution','this is the abstract of Integrated Solution','Integrated Solution','this is the detail of Integrated Solution','EF575883B57B6BE86E88162C26solution02.gif','EF575883C57A521C0471F45A24solution02_in.gif','EF592BBEACE05B1989B2090AC8images02.gif','EEA063FE983851E',20020805065449,'EEA063FE983851E',20020805065449,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF5758B1CA281B487CECF66532','offline_online_solution','Offline-Online Solution','this is the abstract of Offline-Online Solution','Offline-Online Solution','this is the detail of Offline-Online Solution','EF575961151FC0ACA0682753EDsolution03.gif','EF575961151FC0ACA0682753EDsolution03_in.gif','EF592BE87B29FEB6B03F0CCB9Fimages03.gif','EEA063FE983851E',20020805065458,'EEA063FE983851E',20020805065458,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF57598A487F5669844986B7B0','360_degrees_solution','360 Degrees Solution','this is the abstract of 360 Degrees Solution111','360 Degrees Solution','this is the detail of 360 Degrees Solution','EF575A2A4192053ED45F6FB4A1solution04.gif','EF575A2A4192053ED45F6FB4A1solution04_in.gif','EF592C0CEB1FA9876049BDF5B7images04.gif','EEA063FE983851E',20020805065512,'EEA063FE983851E',20020805065512,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF580638377E2B7CBCCF61C0F2','Guerilla Solution','Guerilla Solution','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','Guerilla Solution','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives. Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF580A119198F417729A311D19main01.gif','EF580A11A197DA4B07840F4B17main01_in.gif','EF5CB2F8907D8F0926493D3CDEimages01.gif','EEA063FE983851E',20020805065522,'EEA063FE983851E',20020805065522,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF580A9A97C6CC86E36D458F58','Integrated Solution','Integrated Solution','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','Integrated Solution','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','EF580AFB16962905DB751C6FD6main02.gif','EF580AFB16962905DB751C6FD6main02_in.gif','EF5CB326C411A0B3A84906DE5Aimages02.gif','EEA063FE983851E',20020805065532,'EEA063FE983851E',20020805065532,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF580B00B41345C82F8D1E1DB0','Offline-Online Solution','Offline-Online Solution','In most companies, people spend a large amount of their time looking for information. When they find what they need, they make important decisions based on it, often without verifying the accuracy or the source. They dont know the context in which it was written, or whether there are other related documents that they should be accessing. \r\nKMS will optimizes knowledge management in context for all business areas across your enterprise. Our processes and tools allow you to:','Offline-Online Solution','In most companies, people spend a large amount of their time looking for information. When they find what they need, they make important decisions based on it, often without verifying the accuracy or the source. They dont know the context in which it was written, or whether there are other related documents that they should be accessing. \r\nKMS will optimizes knowledge management in context for all business areas across your enterprise. Our processes and tools allow you to: In most companies, people spend a large amount of their time looking for information. When they find what they need, they make important decisions based on it, often without verifying the accuracy or the source. They dont know the context in which it was written, or whether there are other related documents that they should be accessing. \r\nKMS will optimizes knowledge management in context for all business areas across your enterprise. Our processes and tools allow you to:','EF580B5D3B13D2EA424D15AECBmain03.gif','EF580B5D3B13D2EA424D15AECBmain03_in.gif','EF5CB39FBD71B1F5D6B8FBB618images03.gif','EEA063FE983851E',20020805065544,'EEA063FE983851E',20020805065544,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF580BCBF3D3D23511CA3B2407','360 Degrees Solution','360 Degrees Solution','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy.','360 Degrees Solution','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. <br>\r\nWe all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','EF580C2D9B5CF2BFBD5E2C2299main04.gif','EF580C2D9B5CF2BFBD5E2C2299main04_in.gif','EF5CB3D40BCE6FF3D82B6A6371images04.gif','EEA063FE983851E',20020805065555,'EEA063FE983851E',20020805065555,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF580C339697C55B5E4CDB68E1','460 Degrees Solution/Impossibl','460 Degrees Solution/Impossible Solution','Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. ','460 Degrees Solution/Impossible Solution','Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. To learn how your competitors get marketing messages across, consult trade journals. Their advertising will show you which features they are focusing on. Learning about your target customer will help prevent wasting your money and time on unproductive promotional activities. <br>\r\nBefore you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. To learn how your competitors get marketing messages across, consult trade journals. Their advertising will show you which features they are focusing on. Learning about your target customer will help prevent wasting your money and time on unproductive promotional activities. ','EF580C8C07204512DFA3F11A21main05.gif','EF580C8C07204512DFA3F11A21main05_in.gif','EF5CB41395321D3D7CDED62146images04.gif','EEA063FE983851E',20020805065607,'EEA063FE983851E',20020805065607,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF58DA8798E54DC5055094C02F','Product Service one','Guerilla Services','lorem ipsum i must get this website done today or not i can meet get through next step. ','Guerilla Services','lorem ipsum i must get this website done today or not i can meet get through next step. ','EF58DB5A3AD6D94B2526E39B05product_services.gif','EF58DB5A3AD6D94B2526E39B05product_services_in.gif','EF5D9DFDF8E20B394BA5020486images06.gif','EEA063FE983851E',20020805065619,'EEA063FE983851E',20020805065619,'0','ic','ED2E4202F2AE0340726C67A877',NULL);
INSERT INTO services VALUES ('EF61F2D63A9B1B817C092F7213','Guerilla Solution','The most prefered solution by our client.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives. ','The most prefered solution by our client.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.  <br>\r\nPromotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.  <br><br>\r\nPromotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives. ','EF87CB773A4717F0A080C25DB5main03.gif','EF87CB77444609E20EE0E1F474main03_in.gif','EF87CB774E45E6A8827E1DBA33images01.gif','EEA063FE983851E',20020808095722,'EEA063FE983851E',20020808095722,'0','ic','EDDCAA0575D694D2560CC2511F',NULL);
INSERT INTO services VALUES ('EF61F3DBC3C859321EFED5A9A6','Integrated Solution','The most prefered solution by our client.','The most prefered solution by our client.In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','The most prefered solution by our client.','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.<br>\r\nIn the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','EF87CBD5122027C908BBA348E4main04.gif','EF87CBD5122027C908BBA348E4main04_in.gif','EF87CBD51C1FD598147FD96BA4images02.gif','EEA063FE983851E',20020808095746,'EEA063FE983851E',20020808095746,'0','ic','EDDCAA0575D694D2560CC2511F',NULL);
INSERT INTO services VALUES ('EF61F58898B017F75FED2DD3D1','360 Degrees Solution','The most prefered solution by our client.','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? ','The most prefered solution by our client.','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? <br>\r\nWe all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? ','EF87CC1F708FD95F9676003B4Fmain05.gif','EF87CC1F7A8FB62608133C010Emain05_in.gif','EF87CC1F7A8FB62608133C010Eimages03.gif','EEA063FE983851E',20020808095805,'EEA063FE983851E',20020808095805,'0','ic','EDDCAA0575D694D2560CC2511F',NULL);
INSERT INTO services VALUES ('EF62A61FDEC343F346D6F23BCF','Guerilla Solutions','Guerilla Solutions','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','The most prefered solution by our client.','Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.Promotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.<br>\r\nPromotion is the most frequently overlooked aspect of a marketing plan. A strong promotion plan outlines the promotional tools or tactics used to achieve your marketing goals. Your promotion plan should also include the projected costs for the year, and an explanation of how your promotion tactics will support your marketing objectives.','EF62A7E3397895429EE43CCA8pservices01.gif',NULL,NULL,'EEA063FE983851E',20020801045233,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C',NULL);
INSERT INTO services VALUES ('EF62A8037310E14AD6249180A3','Integrated Solution','Integrated Solution','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','The most prefered solution by our client.','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.<br>\r\nIn the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','EF62A8F64F2E7DAAD0DB006979pservices02.gif',NULL,NULL,'EEA063FE983851E',20020801045344,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C',NULL);
INSERT INTO services VALUES ('EF62A903FBF28EB04E90461810','360 Degrees','360 Degrees Solution','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... ','The most prefered solution by our client.','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... <br>\r\nWe all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... ','EF62AA35A568F478CC845A9C80pservices03.gif',NULL,NULL,'EEA063FE983851E',20020801045505,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C',NULL);
INSERT INTO services VALUES ('EF62AA52F1B1F3782F64E3FABC','CMS Solution','CMS Solution','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','The most prefered solution by our client.','In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.In the Hippocratic oath, physicians pledge, among other things, to \"impart a knowledge of the art ... \" But the importance of conveying and sharing knowledge extends beyond doctors to everyone in the healthcare profession.','EF62AB440825F0D181988E83C7pservices01.gif',NULL,NULL,'EEA063FE983851E',20020801045615,NULL,00000000000000,'0','ic','EF62687CC1170D25FC73E0051C',NULL);
INSERT INTO services VALUES ('EF62AB63677999BD325F7F8475','Off-On Solution','Offline-Online Solution','Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. ','The most prefered solution by our client.','Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. Before you can determine which promotional strategy will help you reach your target market, you need to do some competitive research and learn about your target customer. Your research should consist of studying your industry and discovering what other companies are up to. ','EF62ABF23AE3F738BD38B760C0pservices02.gif',NULL,NULL,'EEA063FE983851E',20020801053239,'EEA063FE983851E',20020801053239,'0','ic','EF62687CC1170D25FC73E0051C',NULL);
INSERT INTO services VALUES ('EF7712C6D8F2D0CF72470FC290','Guerilla Solution','Guerilla Solution','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand','Guerilla Solution','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\n','EF77149195B98F433323AB5CC6services01.gif',NULL,NULL,'EEA063FE983851E',20020805040340,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2',NULL);
INSERT INTO services VALUES ('EF77149A8ED66E9A456D827119','Offline-Online-Inline Solution','Offline-Online-Inline Solutions','The technology is changing rapidly, making today is solution obsolete almost the next day. ','Offline-Online-Inline Solutions','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand','EF77156FFFFFD1FF6F95B249A7services02.gif',NULL,NULL,'EEA063FE983851E',20020805040437,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2',NULL);
INSERT INTO services VALUES ('EF77157D7C6689524396E625FD','180 Degrees Solutions','180 Degrees Solutions','The technology is changing rapidly, making today is solution obsolete almost the next day. ','180 Degrees Solutions','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand\r\nThe technology is changing rapidly, making today is solution obsolete almost the next day. On the other hand','EF77165965189AB2C4507D5A7Cservices03.gif',NULL,NULL,'EEA063FE983851E',20020805225315,'EEA063FE983851E',20020805225315,'0','ic','EE1B28DE85CED7258C4D46D2E2',NULL);
INSERT INTO services VALUES ('EF771663D4C828285B493C4E87','Deluxe Solution','Deluxe Solution','The technology is changing rapidly, making today is solution ','Deluxe Solution','The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution The technology is changing rapidly, making today is solution ','EF77178B8C1B19AE3129CF86F8solutions04.gif',NULL,NULL,'EEA063FE983851E',20020805040655,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2',NULL);
INSERT INTO services VALUES ('EF771797B13278072B04FD8142','360 Degrees Solution','360 Degrees Solution','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe ','360 Degrees Solution','The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe The technology is changing rapidly, making today is solution obsolete almost the next day. On the other handThe ','EF77185BADD787ACAF545600F9solutions03.gif',NULL,NULL,'EEA063FE983851E',20020805040748,NULL,00000000000000,'0','ic','EE1B28DE85CED7258C4D46D2E2',NULL);
INSERT INTO services VALUES ('EF8E38F1D2CF3B7DB7749F37B9','New Service 1','Our Service Number Uno','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','EF8E39B0FE1F0260210BC3E430images1.jpg',NULL,NULL,'EEA063FE983851E',20020809155529,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3',NULL);
INSERT INTO services VALUES ('EF8E39B632FA978A9C44E5006F','Our Service 2','Our Product #2','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','EF8E3A34D3D6E677F60600BFC5images2.jpg',NULL,NULL,'EEA063FE983851E',20020809155603,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3',NULL);
INSERT INTO services VALUES ('EF8E3A44C9BC8168B1E2DC6C11','Our Service Number 3','Our Service Number Three','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','','We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. We all know that economic times are tougher than they were just one year ago. Most all of us are feeling the pinch... and as a result many of your past customers and potential prospects are less likely to spend money on your products and services. It is understandable that in these times you may have a tendency to cut back on your own marketing expenses .... but what will happen if you do? It is important to remember that tough times are the most important time to energize your marketing program. And more than ever your need focus, accountability and a strong marketing strategy. We are here to help. ','EF8E3AC400CBC8109654A5A63Aimages1.jpg',NULL,NULL,'EEA063FE983851E',20020809155639,NULL,00000000000000,'0','ic','EF8E260F5EE7A2E8ECE6F2F3A3',NULL);
INSERT INTO services VALUES ('F30EB9AD35A6F31B21D5957D1B','Service 1','Alkisah Sebuah Jam','Alkisah, seorang pembuat jam tangan berkata kepada jam yang sedang\r\ndibuatnya. \"Hai jam, apakah kamu sanggup untuk berdetak paling tidak\r\n31,104,000 kali selama setahun?\" \"Ha?,\" kata jam terperanjat, \"Mana\r\nsanggup saya?\"','Plantation1','Alkisah, seorang pembuat jam tangan berkata kepada jam yang sedang\r\ndibuatnya. \"Hai jam, apakah kamu sanggup untuk berdetak paling tidak\r\n31,104,000 kali selama setahun?\" \"Ha?,\" kata jam terperanjat, \"Mana\r\nsanggup saya?\"\r\n<br>\r\n\"Bagaimana kalau 86,400 kali dalam sehari?\" \"Delapan puluh enam ribu\r\nempat ratus kali? Dengan jarum yang ramping-ramping seperti ini?\" jawab\r\njam penuh keraguan.\r\n<br>\r\n\"Bagaimana kalau 3,600 kali dalam satu jam?\" \"Dalam satu jam harus\r\nberdetak 3,600 kali? Banyak sekali itu\" tetap saja jam ragu-ragu dengan\r\nkemampuan dirinya.\r\n<br>\r\nTukang jam itu dengan penuh kesabaran kemudian bicara kepada si jam.\r\n\"Kalau begitu, sanggupkah kamu berdetak satu kali setiap detik?\" \"Naaaa,\r\nkalau begitu, aku sanggup!\" kata jam dengan penuh antusias.\r\n<br>\r\nMaka, setelah selesai dibuat, jam itu berdetak satu kali setiap detik.\r\nTanpa terasa, detik demi detik terus berlalu dan jam itu sungguh luar\r\n>biasa karena ternyata selama satu tahun penuh dia telah berdetak tanpa\r\nhenti. Dan itu berarti ia telah berdetak sebanyak 31,104,000 kali.\r\n<br>\r\nRenungan :\r\n<br>\r\nAda kalanya kita ragu-ragu dengan segala tugas pekerjaan yang begitu\r\nterasa berat. Namun sebenarnya kalau kita sudah menjalankannya, kita\r\nternyata mampu. Bahkan yang semula kita anggap impossible untuk\r\ndilakukan \r\nsekalipun. Jangan berkata \"tidak\" sebelum Anda pernah mencobanya.\r\n<p>\r\nSumber: Unknown (Tidak Diketahui)\r\n</p>\r\n','F30EBCCB3E9C157D5ED2EE81F5image03.jpg','F42DB5B7142A01E5C677E6825Fshocked.gif','F42DB5B723290573FB0968363Dnice_face.gif','F162B448063A847',20030328160307,'F162B448063A847319E641EF7D',20030328160307,'0','ic','F185BD3FDC5CC7989A3CED51A1',NULL);
INSERT INTO services VALUES ('F36A003A8C91E394B863C31255','jflsdjkflkasj','ldkjflsajkfsalkjfsla','fdsfsafsdaf','','fdsafsafd','F4096AB0F18E9A95D2E4A36429img2.gif',NULL,NULL,'F162B448063A847',20030320101327,'F162B448063A847319E641EF7D',20030320101327,'0','ic','F185BD3FDC5CC7989A3CED51A1',NULL);
INSERT INTO services VALUES ('F40968C09AB90A9BF9DEB16B87','Service 1','Product And Service 1','testing..abstract','','body detail','F409699FCF7D4B4C740BB0B56Dimg1_large.jpg',NULL,NULL,'F162B448063A847319E641EF7D',20030320101217,'F162B448063A847319E641EF7D',20030320101217,'0','ic','F185BD3FDC5CC7989A3CED51A1',NULL);
INSERT INTO services VALUES ('F54DF24547EC2B015A9222D5DE','BlueOxygen Strategic Framework','BlueOxygen Strategic Framework','A framework is a partially complete software system \r\n    that is intended to be instantiated. It defines the architecture for a \r\n    family of systems and provides the basic building blocks to create them. It \r\n    also defines the places were adaptations for specific functionality should \r\n    be made','','<p>The following are two commonly used definitions of a framework: </p>\r\n<dir>\r\n    \r\n    <p>1. A framework is a partially complete software system \r\n    that is intended to be instantiated. It defines the architecture for a \r\n    family of systems and provides the basic building blocks to create them. It \r\n    also defines the places were adaptations for specific functionality should \r\n    be made.&quot; (Buschmann 1996) </p>\r\n    \r\n    <p>2. A framework is a set of classes that embodies an \r\n    abstract design for solutions to a family of related problems (Johnson and \r\n    Foote 1988)</p>\r\n  \r\n</dir>\r\n<p><br>\r\nBasically, a framework is a semi-complete application. It is different from a \r\nclass library in that control is inverted. When you use class libraries, the \r\nmain control flow is in the application code that makes calls to methods in the \r\nclass library. In the case of a framework, the main control flow is in the \r\nframework code that makes calls to the application code. This inversion of \r\ncontrol is typically referred to as the Hollywood Principle: &quot;Do not call us. \r\nWe will call you.&quot;<br>\r\n<br>\r\nThe developer builds a complete application by inheriting from and instantiating \r\ncomponents in the framework.<br>\r\n<br>\r\nThe following are some of the key benefits of using an application development \r\nframework: </p>\r\n  <dir>\r\n    \r\n    <p><b>Shorter development schedule/shorter time to market</b>: \r\n    Development projects no longer have to solve the many problems related to \r\n    Web applications. They simply reuse the code provided by the framework. \r\n    Project developers do not have to design, develop, or test these framework \r\n    services; they take them for granted. </p>\r\n    \r\n    <p><b>Reduced development risk</b>: With a complex \r\n    programming model like J2EE, the risk of project failure is high to begin \r\n    with. An application development framework can significantly reduce the risk \r\n    by serving as a reliable proven base. </p>\r\n    \r\n    <p> <b>Consistent application architectures</b>: Using a \r\n    framework results in all applications having similar application \r\n    architectures, which makes them easier to learn, support, and maintain.</p>\r\n</dir>\r\n<p>If you plan to develop your own framework or assemble one using various open \r\nsource components, you should have a framework development and maintenance \r\nprocess in place to ensure the framework has all necessary functionality and the \r\nROI is constantly improving.<br>\r\n<br>\r\nYour framework development and maintenance process should consist of the \r\nfollowing phases: </p>\r\n<dir>\r\n    <b>\r\n    <p>1. Initial development</b>: This is your upfront development effort to \r\n    get to the first release of your framework.</p>\r\n    <b>\r\n    <p>2. First use</b>: The first application you build with the framework.</p>\r\n    <b>\r\n    <p>3. Harvesting framework candidates</b>: When you build an application, \r\n    there will be elements you expect to be part of the framework that are not \r\n    there; you will end up building these. It makes sense to move these into the \r\n    framework so applications that follow can benefit. At the end of every \r\n    application development effort, you should undertake a formal\r\n    process to harvest framework candidates. You will have to make sure the \r\n    component candidate is not business-specific; these generally are not \r\n    reusable.<br>\r\n    <b>Second use</b>: The next application you build will use the framework \r\n    plus any components harvested from the previous application.</p>\r\n    <b>\r\n    <p>4. Harvesting framework candidates</b>: Again, a formal process for \r\n    harvesting framework component candidates keeps the framework in a good \r\n    position to meet the needs of future application development efforts.</p>\r\n</dir>\r\n<b><dir>\r\n<p>5. Next use</b>: And so on ...</p></dir>\r\n\r\n','F54DFE5BBD1582D142C7291047Untitled-1.jpg',NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030525141604,'F501555A2ECD5AC8FCC32F4DD6',20030525141604,'0','ic','F4D30718756B8401E43FD2AAE6',NULL);
INSERT INTO services VALUES ('F54E9E6FFEB4F7B5E20F9F3FA8','Java Experience Traning Boot Camp','Java Experience Traning Boot Camp','Learn our Java Experience and join over three million Java programmer who have ecxperinted in application developmet. ','','We provide a batch training program that based on our experience to deliver and develop e-business applicaiton for our client. The curricullum is very flexible and we provide in house and join development approach.<p>\r\n\r\nWe share our experience to bring your developer to the next level. Currently our training topics are:\r\n<li>Java E-Business Foundation\r\n<li>Business Application Development using BlueOxygen Strategic Framework\r\n<li>Wireless Mobile using J2ME\r\n<li> Symbian Wireless Development using Java\r\n<li>MVC Development using Struts\r\n<li>Servlet JSP Development using Tomcat\r\n<li>Java Development using Eclipse\r\n<li>Web Development using Velocity\r\n\r\n<li> Everest Accounting\r\n\r\n\r\n<p> Visit <a href=\"http://training.intercitra.com \">http://training.intercitra.com</a> for more information of our standard curicullum. For more information call our customer service office at (021)-4260933.\r\n<p>\r\n','F54EA21D95FB3DC0A21657B76AEF4721F1DF4429F3B5684DB6F9v3_java_logo.gif',NULL,NULL,'F36F8BFFF97F8A16505B8305F7',20030525141448,'F501555A2ECD5AC8FCC32F4DD6',20030525141448,'0','ic','F4D30718756B8401E43FD2AAE6',NULL);

--
-- Table structure for table `site`
--

CREATE TABLE site (
  id varchar(28) NOT NULL default '',
  name varchar(64) NOT NULL default '',
  description varchar(255) default NULL,
  theme_id varchar(28) NOT NULL default '',
  title varchar(255) default NULL,
  site_headline text,
  url_branding varchar(255) default NULL,
  site_url varchar(255) default NULL,
  admin_email varchar(255) default NULL,
  notify_flag tinyint(1) NOT NULL default '1',
  notify_email varchar(255) default NULL,
  notify_from varchar(255) default NULL,
  notify_message varchar(255) default NULL,
  active_flag tinyint(1) NOT NULL default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `site`
--

INSERT INTO site VALUES ('EE185CE0B82B41C1724F284685','Cimande Backend','Cimande Backend Site','EE39E38171B7328E0269CF4E06',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,'1',20020705094826,'1',20020705094826,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F185BD3FDC5CC7989A3CED51A1','Makin Portal','Makin Portal','F302D39D46B228A55412E3D127','Welcome to Intercitra.com','Isi dengan kata2 dari makin di menu site (Site Headline)','F63C152A8E6428CDB41A42DFC3logo intercitra.gif','makingroup.com','',1,'','','',1,'1',20030707163027,'1',20030707163027,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F185C29BDFC64CD3D08E1A15E8','Makin Intranet','Makin Intranet','F07B2292454364DA2311935565','Welcome to Makin Intranet','ini tulisan cuma test doang',NULL,'','',1,'','','',1,'1',20030306155330,'1',20030306155330,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F185C351B2FAC396169017978F','Document Archive','Document Archive','F07B2292454364DA2311935565','',NULL,NULL,'','',1,'','','',1,'1',20021115104608,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F199E755B97B662FC248CAC80','Makin Admin','Makin Admin','F07B2292454364DA231193556','',NULL,NULL,'','',1,'','','',1,'1',20021119082714,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F4D30718756B8401E43FD2AAE6','Intercitra Site','Intercitra Site','EEEE7A657391D5CD89EAFFA648','Welcome to Intercitra.com','','F63C1E7B8C37B54490B4438C3Blogo intercitra.gif','intercitra-inovation.com','admin.intercitra.com',1,'','','',1,'1',20030707163625,'1',20030707163625,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F4DD64134EC050E3D0A256EA0D','Blueoxygen Site','Blueoxygen Organization Site','F07B2292454364DA2311935565','Welcome to Blueoxygen.org','','F5F866CA1561299B679656D596logo-blueoxygen.gif','bio2.org','',1,'','','',1,'1',20030707163859,'1',20030707163859,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F4E6A635A8AC141BAE7F98504','Guerill-Forum Site','Guerilla Forum Site','EF8E248CD64707158718C93173','Welcome to Guerilla-Forum.org','','F4E6A7AE60B56B4CC55AE7C4BElogo_guerilla.gif','www.guerilla-forum.org','',1,'','','',1,'1',20030502091609,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F74B696E86AA0CA5819A4FB36C','Activity Management','Project & Task Tracking','F302D39D46B228A55412E3D127','','',NULL,'','',1,'','','',1,'1',20030829085556,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F78E9748E9F76ABD233C5EAD39','PAN','','F302D39D46B228A55412E3D127','','',NULL,'intercitra-inovation.com','',1,'','','',1,'1',20030911110721,'1',20030911110721,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F8EE4789BA9DC24BAD1ECD597D','Report Management','Report Management','F302D39D46B228A55412E3D127','Report Management','',NULL,'','',1,'','','',1,'1',20031118165946,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO site VALUES ('F9A2020F6D2B0CA30F3A1C8745','DJPLN','','0','','',NULL,'','',0,'','','',1,'1',20031223143549,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `site_map`
--

CREATE TABLE site_map (
  id varchar(28) NOT NULL default '',
  headline varchar(128) NOT NULL default '',
  url_page_collection varchar(128) NOT NULL default '',
  detail text,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `site_map`
--

INSERT INTO site_map VALUES ('F3FF164552682DC676682DD1FB','Home','main_page','Detail Home\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Home)\r\n<br>','F162B448063A847',20030318102911,'F162B448063A847',20030318102911,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO site_map VALUES ('F3FF1FBC1DA441971DF760AC86','Press Release','press_release','Detail Press Release \r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Press Release)\r\n<br>','F162B448063A847',20030318101732,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO site_map VALUES ('F3FF21BB87A1806688C0D236D4','News','news','Detail News \r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (News)\r\n<br>','F162B448063A847',20030318101809,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO site_map VALUES ('F3FF2251AC8FDBE206FC5F2184','Fact & Figure','fact_figure','Detail Fact Figure\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Fact Figure)\r\n<br>','F162B448063A847',20030318103305,'F162B448063A847',20030318103305,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO site_map VALUES ('F3FF2FF9A57F7A6B01EF0A9773','Makin & Subsidiaries','company_subsidary','Detail Makin & Subsidiaries\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Makin & Subsidiaries)\r\n<br>','F162B448063A847',20030318105409,'F162B448063A847',20030318105409,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO site_map VALUES ('F3FF308923177AB6C29733A930','Contact Us','contact_us','Detail Contact Us\r\n<br>\r\nuntuk edit detail masuk ke menu Workspace##>Makin Portal##>Portal Asset##Site Map Makin Portal##>search (Contact Us)\r\n<br>','F162B448063A847',20030318103413,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');

--
-- Table structure for table `sites`
--

CREATE TABLE sites (
  id varchar(20) NOT NULL default '',
  name varchar(50) NOT NULL default '',
  pid varchar(20) NOT NULL default '',
  active_flag varchar(5) NOT NULL default '',
  site_id varchar(20) NOT NULL default '',
  main_img varchar(255) NOT NULL default '',
  front_img varchar(255) NOT NULL default '',
  detail_img varchar(255) NOT NULL default ''
) TYPE=MyISAM;

--
-- Dumping data for table `sites`
--

INSERT INTO sites VALUES ('1','Intercitra','2','0','abc','i1.jpg','i2.jpg','i3.jpg');
INSERT INTO sites VALUES ('2','BlueOxygen','2','1','def','z1.jpg','z2.jpg','z3.jpg');
INSERT INTO sites VALUES ('3','GuerillaForum','2','0','ghi','g1.jpg','g2.jpg','g3.jpg');

--
-- Table structure for table `skin`
--

CREATE TABLE skin (
  id varchar(28) NOT NULL default '',
  theme_id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  description varchar(255) default NULL,
  url_theme varchar(128) default NULL,
  active_flag tinyint(1) NOT NULL default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `skin`
--

INSERT INTO skin VALUES ('EED8A71A292BDD79AE8D438AB3','EE39E360586DC4030AA5D88CAA','Article','Article Techno','article.vm',1,'1',20020709150709,'1',20020709150709,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EED8A79711FD1B9C63BA7ADA0E','EE39E360586DC4030AA5D88CAA','Page Techno','Page Techno','page.vm',1,'1',20020709150731,'1',20020709150731,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED8E57002048A2E9071DAF76','EEEE7A657391D5CD89EAFFA648','index','Index - Main Page','index.htm',1,'1',20020712025007,'1',20020712025007,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED8EE4881FA530706324955E','EEEE7A657391D5CD89EAFFA648','about_us','About Us','about_us.htm',1,'1',20020712025023,'1',20020712025023,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED8F22116F192E521FCB6C46','EEEE7A657391D5CD89EAFFA648','contact_us','Contact Us','contact_us.htm',1,'1',20020712025027,'1',20020712025027,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED8F61ACA8FD143C4A127AE','EEEE7A657391D5CD89EAFFA648','lates_news','Latest News Archive','latest_news.htm',1,'1',20020712025033,'1',20020712025033,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED8FAA79AC379210C5F52060','EEEE7A657391D5CD89EAFFA648','lates_news_details','Latest News Detail','latest_news_detail.htm',1,'1',20020718002920,'1',20020718002920,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED906F3DD8D8C52409FB4D9F','EEEE7A657391D5CD89EAFFA648','our_solutions','Our Solutions','our_solutions.htm',1,'1',20020712025041,'1',20020712025041,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED90B7B09350BB36F389A43E','EEEE7A657391D5CD89EAFFA648','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1',20020712025045,'1',20020712025045,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED91195E6BDC9CF09ECB2DF3','EEEE7A657391D5CD89EAFFA648','press_release','Press Release Archive','press_release.htm',1,'1',20020712032229,'1',20020712032229,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EEED915B2AE8D8F40ACED882C5','EEEE7A657391D5CD89EAFFA648','press_release_details','Press Release Details','press_release_detail.htm',1,'1',20020712040015,'1',20020712040015,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F524BB45D2E30AEA8249BE6225','Document asli','Sugiarto','Mau pasang dokument','',1,'1',20030514103448,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F2FF1ABC722599C16FE990B95E','EE39E38171B7328E0269CF4E06','page_collection.vm','','',1,'1',20030127170720,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF1EEC2113DFA19FB81258C38A','EEEE7A657391D5CD89EAFFA648','open_job','Open Job Skin','open_job.htm',1,'1',20020719011332,'1',20020719011332,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF33952CCDF48014677207390C','EF339499195C4175BFFF300B14','mainpage','Main Page Green Matrix','index.htm',1,'1',20020723013025,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DB199C4997C0D4CF66C2FE3','EF339499195C4175BFFF300B14','latest_news','Latest News','latest_news.htm',1,'1',20020725010721,'1',20020725010721,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DCE12F3E784A3504C51EE52','EF339499195C4175BFFF300B14','latest_news_details','Latest News Details','latest_news_details.htm',1,'1',20020725010915,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DD04583B1E0BF80BF38F7B4','EF339499195C4175BFFF300B14','about_us','About Us','about_us.htm',1,'1',20020725011108,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DD0B340E38780B1B49BB820','EF339499195C4175BFFF300B14','contact_us','Contact Us','contact_us.htm',1,'1',20020725011136,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DD11C4B8AF9FF295F58BA9E','EF339499195C4175BFFF300B14','our_solution_details','Our Solution Details','our_solution_details.htm',1,'1',20020725034900,'1',20020725034900,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DD1C31AAA5A6C655E9DE458','EF339499195C4175BFFF300B14','our_solutions','Our Solutions Archive','our_solutions.htm',1,'1',20020730235452,'1',20020730235452,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DD27718347862F68D50A66','EF339499195C4175BFFF300B14','press_release','Press Release Archive','press_release.htm',1,'1',20020725011340,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DD3C0DE6F7365ABC3BC9FB7','EF339499195C4175BFFF300B14','press_release_details','Press Release Details','press_release_details.htm',1,'1',20020725011506,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF3DD45212976F3861F684F91C','EF339499195C4175BFFF300B14','open_job','Open Job','open_job.htm',1,'1',20020725011540,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61D94A207A243FA2C5E7DACC','EEED769D1CA72C8DD9829685BC','main_page','Main Page','index.htm',1,'1',20020801010720,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61D9BA4FA37DC5D61F0B8B6A','EEED769D1CA72C8DD9829685BC','our_solutions','Our Solutions','our_solutions.htm',1,'1',20020801010751,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61DA32CA45F6895A5FF65099','EEED769D1CA72C8DD9829685BC','press_release','Press Release','press_release.htm',1,'1',20020801010820,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61DAA20FF6FC31E28AAFACDB','EEED769D1CA72C8DD9829685BC','latest_news','Latest News','latest_news.htm',1,'1',20020801010846,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61DB0ABCB2C0383ED89CF3BE','EEED769D1CA72C8DD9829685BC','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1',20020802024845,'1',20020802024845,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61DBC92A5A01266BD3D0D049','EEED769D1CA72C8DD9829685BC','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1',20020802034934,'1',20020802034934,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61DC5B0983D882183BF23C11','EEED769D1CA72C8DD9829685BC','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1',20020802024911,'1',20020802024911,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61DCC666E816B86B1EF4A04B','EEED769D1CA72C8DD9829685BC','contact_us','Contact Us','contact_us.htm',1,'1',20020801011103,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF61DD5C4D4F996AE3D9853CD8','EEED769D1CA72C8DD9829685BC','about_us','About Us','about_us.htm',1,'1',20020801011140,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF770682B51853368774F11E41','EF77053DB1F41DEAE9E0EC8A2F','main_page','Main Page','index.htm',1,'1',20020805035448,'1',20020805035448,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF7706DCFA2042BE91940B9029','EF77053DB1F41DEAE9E0EC8A2F','about_us','About Us','about_us.htm',1,'1',20020805035457,'1',20020805035457,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF7708560D9A33A55538E8D5DD','EF77053DB1F41DEAE9E0EC8A2F','contact_us','Contact Us','contact_us.htm',1,'1',20020807160623,'1',20020807160623,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF770890284513762413980D61','EF77053DB1F41DEAE9E0EC8A2F','latest_news','Latest News','latest_news.htm',1,'1',20020805035515,'1',20020805035515,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF7708F5A92C7708E431064FF','EF77053DB1F41DEAE9E0EC8A2F','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1',20020805035526,'1',20020805035526,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF77097FA9F464579815DAB4DB','EF77053DB1F41DEAE9E0EC8A2F','our_solutions','Our Solutions','our_solutions.htm',1,'1',20020805035535,'1',20020805035535,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF7709E076918224E2C5B07B7A','EF77053DB1F41DEAE9E0EC8A2F','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1',20020805035549,'1',20020805035549,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF770A3D3C54272D02290A7ACF','EF77053DB1F41DEAE9E0EC8A2F','press_release','Press Release','press_release.htm',1,'1',20020805035600,'1',20020805035600,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF770A8FA2B9C566FEB2D07D71','EF77053DB1F41DEAE9E0EC8A2F','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1',20020805035613,'1',20020805035613,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF878D43B44129DB9FF337D315','EF878CDA15F79452ECED780C03','main_page','Main Page','index.htm',1,'1',20020808084943,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF878D94EA13DF41D77ECEEA3F','EF878CDA15F79452ECED780C03','about_us','About Us','about_us.htm',1,'1',20020808085004,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF878DE1DCA0A8D06486C85DA6','EF878CDA15F79452ECED780C03','contact_us','Contact Us','contact_us.htm',1,'1',20020808085027,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF878E3C0754B2250A49C18A01','EF878CDA15F79452ECED780C03','latest_news','Latest News','latest_news.htm',1,'1',20020808085101,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF878EBEE25A571043B9E2D699','EF878CDA15F79452ECED780C03','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1',20020808085127,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF878F2718A11A7D23D6EBF386','EF878CDA15F79452ECED780C03','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1',20020808085155,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF878FD2836818603346084F2F','EF878CDA15F79452ECED780C03','press_release','Press Release','press_release.htm',1,'1',20020808085235,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8790300BE12E5CCE2C2E4701','EF878CDA15F79452ECED780C03','our_solutions','Our Solutions','our_solutions.htm',1,'1',20020808085540,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF87930075DA19F24E509D71A0','EF878CDA15F79452ECED780C03','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1',20020808085625,'1',20020808085625,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E277F34F1C4DE8229CFC10D','EF8E248CD64707158718C93173','main_page','Main Page','index.htm',1,'1',20020809153630,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E285DE8A1E858D8BCC33A12','EF8E248CD64707158718C93173','about_us','About Us','about_us.htm',1,'1',20020809153656,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E28BDB57036C93F24B9B14E','EF8E248CD64707158718C93173','contact_us','Contact Us','contact_us.htm',1,'1',20020809153718,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E2910D6DC72DE5A739B7323','EF8E248CD64707158718C93173','our_solutions','Our Solutions','our_solutions.htm',1,'1',20020809153744,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E29788AD8D3BFDC5F397011','EF8E248CD64707158718C93173','our_solutions_detail','Our Solutions Detail','our_solutions_detail.htm',1,'1',20020809153817,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E29F7DF9BD41DE59E1B3273','EF8E248CD64707158718C93173','press_release','Press Release','press_release.htm',1,'1',20020809153838,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E2A49DD1A4B7CB00B8D1A88','EF8E248CD64707158718C93173','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1',20020809153900,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E2AA141B4B44CED456914C8','EF8E248CD64707158718C93173','latest_news','Latest News','latest_news.htm',1,'1',20020809153927,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E2B0BB26649B06A069D8519','EF8E248CD64707158718C93173','latest_news_detail','Latest News Detail','latest_news_detail.htm',1,'1',20020809153950,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('EF8E2B6302127EB28DF0796D9','EF8E248CD64707158718C93173','open_job','Open Job','open_job.htm',1,'1',20020809154020,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B379B79C9CD7743C23D2596','F07B2292454364DA2311935565','index','Index-Main Page','index.htm',1,'1',20020924162336,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3801CF22E2E91A2A70AE4D','F07B2292454364DA2311935565','recipe','Recipe','recipe.htm',1,'1',20020924162355,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B38486BD0AC516EDA596175','F07B2292454364DA2311935565','recipe_detail','Recipe Detail','recipe_detail.htm',1,'1',20020924162423,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F09DDFE362D841F17A30993ED','F07B2292454364DA2311935565','press_release','Press Release','press_release.htm',1,'1',20021001095459,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B392A0461FE3079C1826E3A','F07B2292454364DA2311935565','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1',20020924162520,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3995D35970D90584A8EE7F','F07B2292454364DA2311935565','forum','Forum','forum.htm',1,'1',20020924162535,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B39CF04A50D59C1EEA94799','F07B2292454364DA2311935565','forum_detail','Forum Detail','forum_detail.htm',1,'1',20020924162602,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3A364057068AFB1D09B24B','F07B2292454364DA2311935565','resource','Resource','resource.htm',1,'1',20020924162627,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3A976C284A50C0D07B0DEC','F07B2292454364DA2311935565','resource_detail','Resource Detail','resource_detail.htm',1,'1',20020924162652,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3AFC312B9E0CA737CE8886','F07B2292454364DA2311935565','project','Project','project.htm',1,'1',20020924162745,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3BCB177AC6A7F14766D6F6','F07B2292454364DA2311935565','project_detail','Project Detail','project_detail.htm',1,'1',20020924162806,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3C19D634A84A21B00B2304','F07B2292454364DA2311935565','contact_us','Contact Us','contact_us.htm',1,'1',20020924162841,'1',20020924162841,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3CA6AAD39BFD520EFFEFC0','F07B2292454364DA2311935565','review','Review','review.htm',1,'1',20020924162859,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F07B3CF003DAFE9F27A30978A7','F07B2292454364DA2311935565','review_detail','Review Detail','review_detail.htm',1,'1',20020924162923,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F302D4FE6D537C49721004181F','F302D39D46B228A55412E3D127','main_page','Main Page (Index)','index.htm',1,'1',20030128102951,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30424474044603B72B3C3BA3','F302D39D46B228A55412E3D127','sitemap','Site Map Page','sitemap.htm',1,'1',20030128163557,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F308692D6AEE5FC7D30CACD99C','F302D39D46B228A55412E3D127','fact_figure','Fact & Figure','fact_figure.htm',1,'1',20030129122949,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F308699BD428889A5632750137','F302D39D46B228A55412E3D127','press_release','Press Release','press_release.htm',1,'1',20030129123009,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30869E6C74A56DDF243778A81','F302D39D46B228A55412E3D127','press_release_archive','Press Release Archive','press_release_archive.htm',1,'1',20030130111230,'1',20030130111230,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F3086A26128F78FF6610A15097','F302D39D46B228A55412E3D127','press_release_detail','Press Release Detail','press_release_detail.htm',1,'1',20030130111256,'1',20030130111256,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F3086B7E11837F450B77703C40','F302D39D46B228A55412E3D127','news','News','news.htm',1,'1',20030130111447,'1',20030130111447,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F3086C6E2EBC786E9D341C958','F302D39D46B228A55412E3D127','news_archive','News Archive','news_archive.htm',1,'1',20030130111516,'1',20030130111516,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F3086CF73451A89028B438A4C2','F302D39D46B228A55412E3D127','news_detail','News Detail','news_detail.htm',1,'1',20030130111543,'1',20030130111543,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F3086DE1A3F88F17DAA77F5EA8','F302D39D46B228A55412E3D127','contact_us','Contact Us','contact_us.htm',1,'1',20030129123448,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30D4CB7B4E33CC6D6DD8CE981','F302D39D46B228A55412E3D127','company_bod','Company Board Of Director','company_bod.htm',1,'1',20030130111656,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30D4D403DB20A08FF49504FFA','F302D39D46B228A55412E3D127','company_bod_detail','Company Board Of Director (detail)','company_bod_detail.htm',1,'1',20030130111733,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30D4DCBF2ED7BDB30932694B1','F302D39D46B228A55412E3D127','company_lob','Company Line Of Business','company_lob.htm',1,'1',20030130111811,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30D4E637FCDCE6858748449C9','F302D39D46B228A55412E3D127','company_lob_detail_plantation','Company Line Of Business Detail Plantation','company_lob_detail_plantation.htm',1,'1',20030320131119,'1',20030320131119,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30D4F8ED066660E9734DEF2B','F302D39D46B228A55412E3D127','company_structure','Company Structure (About Us)','company_structure.htm',1,'1',20030130112006,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30D5022D3E7ABE3498CA22B8A','F302D39D46B228A55412E3D127','company_subsidary','Company Subsidary (index of company menu)','company_subsidary.htm',1,'1',20030130112059,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30D50F630C4B3D981A66A4BD4','F302D39D46B228A55412E3D127','product_service','Product & Service','product_service.htm',1,'1',20030130112251,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30D52A7E7A3412E1B36707786','F302D39D46B228A55412E3D127','product_service_detail','Product & Service (detail)','product_service_detail.htm',1,'1',20030130112325,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F30EDC23C73CD41B124A2387A7','F302D39D46B228A55412E3D127','fact_figure_detail','Fact & Figure (detail)','fact_figure_detail.htm',1,'1',20030130183306,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F322D9F44D31058660940D64A7','F302D39D46B228A55412E3D127','company_lob_detail_mining','Company Line of Business Detail Mining','company_lob_detail_mining.htm',1,'1',20030320132309,'1',20030320132309,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F322DABC02B874D8B83A401BA1','F302D39D46B228A55412E3D127','company_lob_detail_horticulture','Company  Line of Business Detail Horticulture','company_lob_detail_horticulture.htm',1,'1',20030320131219,'1',20030320131219,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F322DBD188CC9C1CD5B70A28E2','F302D39D46B228A55412E3D127','company_lob_detail_others','Company Line of Business Detail Others','company_lob_detail_others.htm',1,'1',20030320131247,'1',20030320131247,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO skin VALUES ('F40A0EE9A7454478A824E1AD44','F302D39D46B228A55412E3D127','company_lob_detail_logging','Company  Line of Business Detail Logging','company_lob_detail_logging.htm',1,'1',20030320131331,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `smilecounter`
--

CREATE TABLE smilecounter (
  membership_id varchar(28) default NULL,
  backend_id varchar(28) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table `smilecounter`
--

INSERT INTO smilecounter VALUES ('149','3');

--
-- Table structure for table `sni_member_bengkel`
--

CREATE TABLE sni_member_bengkel (
  id varchar(28) NOT NULL default '',
  membership_code_interlokal char(2) NOT NULL default '',
  membership_code_kode_pos varchar(4) NOT NULL default '',
  membership_code_digit varchar(9) NOT NULL default '',
  first_name varchar(35) NOT NULL default '',
  last_name varchar(35) default NULL,
  password varchar(15) NOT NULL default '',
  email varchar(125) default NULL,
  sex varchar(6) NOT NULL default '',
  ktp varchar(30) NOT NULL default '',
  martial_status varchar(15) NOT NULL default '',
  address1 varchar(55) default NULL,
  city varchar(15) default NULL,
  post_code varchar(10) NOT NULL default '',
  province varchar(35) NOT NULL default '',
  country varchar(35) NOT NULL default '',
  telp varchar(35) NOT NULL default '',
  fax varchar(35) NOT NULL default '',
  handphone varchar(35) NOT NULL default '',
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `sni_member_bengkel`
--

INSERT INTO sni_member_bengkel VALUES ('ED8EFCD83137B1F3C0E41A1FC7','87','8798','61','Chandra','wijaya','password','skyjamz@hotmail.com','m','123456789','single','Teluk gong Jl.Y','Jakarta','14450','DKI Jakarta','indonesia','654897462','654879764','08162456879','EACA3FDC25B52DC',20020502092454,NULL,00000000000000,'0','ic',NULL);
INSERT INTO sni_member_bengkel VALUES ('ED94E16078B2967F93D36486D6','87','8798','142','Yulianty','Liong','yuli','','fe','','unmarried','','','','','','','','','',00000000000000,'',00000000000000,'','',NULL);
INSERT INTO sni_member_bengkel VALUES ('ED94E4B8466DA223CE4624D16A','87','8798','144','Dedeng','','dedeng','','female','','unmarried','','','','','','','','','',00000000000000,'',00000000000000,'','',NULL);

--
-- Table structure for table `status`
--

CREATE TABLE status (
  id varchar(28) NOT NULL default '',
  name varchar(10) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `status`
--


--
-- Table structure for table `subsidary`
--

CREATE TABLE subsidary (
  id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  address text,
  detail text NOT NULL,
  url_image1 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  url_image3 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `subsidary`
--

INSERT INTO subsidary VALUES ('F3132F13E0914B4F07AC47DA05','PT. Intercitra Prima Integrasi','Desa Murung Keramat, Kecamatan Selat, Kabupaten Kapuas, Kalimantan Tengah.','',NULL,NULL,NULL,'F162B448063A847',20030325120417,'F162B448063A847319E641EF7D',20030325120417,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO subsidary VALUES ('F313346BDB791AAC4D271E93C9','PT Kehutanan','','',NULL,NULL,NULL,'F162B448063A847',20030318155637,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO subsidary VALUES ('F3133492BCE6F40CC8B1F438E5','PT Perkayuan','','',NULL,NULL,NULL,'F162B448063A847',20030318155644,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO subsidary VALUES ('F31334B3542D790038A0B17E9D','PT Lainnya','','',NULL,NULL,NULL,'F162B448063A847',20030318155651,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO subsidary VALUES ('F40054F2FDF6D0B998BA5147B','PT. Antang Ganda Utama','Jl. Cempaka Putih Tengah II Block C No. 21\r\n<br>\r\nJakarta Pusat\r\n<br>\r\nTel. 021.4260933\r\n<br>\r\nFax. 021.4260933\r\n<br>\r\nEmail. <a href=\"mailto:info@intercitra.com\">info@intercitra.com</a>','<ul>\r\n  <li>Kapasitas Produksi : 200 ton/hr </li>\r\n  <li>Jenis Produksi : Hasil Hutan</li>\r\n  <li>Luas Areal : 1000 Ha</li>\r\n  <li>Target Produksi Th 2003 : Pembukaan 200 Lahan baru</li>\r\n</ul>','F40990306EC54DCD315C8733DDimg1.gif','F40990306EC54DCD315C8733DDimg2.gif','F40990307DC59A1F38DD305CBEimg3.gif','F162B448063A847319E641EF7D',20030325121141,'F162B448063A847319E641EF7D',20030325121141,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO subsidary VALUES ('F4098E903BEF8CD68572BC9C6F','PT. inter','Jl. Cempaka Putih Tengah II Block C No. 21\r\n<br>\r\nJakarta Pusat\r\n<br>\r\nTel. 021.4260933\r\n<br>\r\nFax. 021.4260933\r\n<br>\r\nEmail. <a href=\"mailto:info@intercitra.com\">info@intercitra.com</a>','Kapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\nKapasitas Produksi : 100 sistem /bulan <br>\r\n','F4098F9249C19658E05950AC01image01.jpg','F4098F92D6C50CD69BB99B10A8image02.jpg','F4098F92D6C50CD69BB99B10A8image03.jpg','F162B448063A847319E641EF7D',20030325114215,'F162B448063A847319E641EF7D',20030325114215,'0','ic','F185BD3FDC5CC7989A3CED51A1');
INSERT INTO subsidary VALUES ('F40A2EE778115018EE80E397AB','PT. Matahari Kahuripan Indonesia','Jl. Cempaka Putih Tengah II Block C No. 21\r\n<br>\r\nJakarta Pusat\r\n<br>\r\nTel. 021.4260933\r\n<br>\r\nFax. 021.4260933\r\n<br>\r\nEmail. <a href=\"mailto:info@intercitra.com\">info@intercitra.com</a>\r\n\r\n','',NULL,NULL,NULL,'F162B448063A847319E641EF7D',20030320134813,NULL,00000000000000,'0','ic','F185BD3FDC5CC7989A3CED51A1');

--
-- Table structure for table `support`
--

CREATE TABLE support (
  id varchar(28) NOT NULL default '',
  name varchar(128) NOT NULL default '',
  email varchar(128) NOT NULL default '',
  category_id varchar(28) default NULL,
  body text,
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `support`
--

INSERT INTO support VALUES ('F8AF2DB8D8880A6F46FB609210','Dedeng','dedeng@blueoxygen.org','Support','test',NULL,20031106105458,NULL,00000000000000,'0','ic',NULL);
INSERT INTO support VALUES ('F87D01DE3F3C66F431857EDB6D','test','test@yahoo.com','F3A3C194E7E95564790B11AE0B','test ahahahhhh',NULL,20031027170603,NULL,00000000000000,'0','ic',NULL);
INSERT INTO support VALUES ('F87CF26D6AF380B45D13B252C3','yanti','yanti@intercitra.com','F3A3C194E7E95564790B11AE0B','test lagiiii',NULL,20031027164911,NULL,00000000000000,'0','ic',NULL);
INSERT INTO support VALUES ('F4C8369B2FFE223F639ABBE390','Frans','frans@intercitra.com','F3A3C194E7E95564790B11AE0B','Tolong tolong',NULL,20030426112402,NULL,00000000000000,'0','ic',NULL);
INSERT INTO support VALUES ('F87CE028ECD2FCBDE721BCAFDF','dedeng','dedeng@blueoxygen.org','F3A3C194E7E95564790B11AE0B',NULL,NULL,20031027162914,NULL,00000000000000,'0','ic',NULL);
INSERT INTO support VALUES ('F87CE2256D4D4D077AD741BFD9','Umar','umar@intercitra.com','F3A3C194E7E95564790B11AE0B',NULL,NULL,20031027163124,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `task_doc_upload`
--

CREATE TABLE task_doc_upload (
  id varchar(28) NOT NULL default '',
  task_id varchar(28) NOT NULL default '',
  file_name varchar(255) NOT NULL default '',
  file_desc varchar(255) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `task_doc_upload`
--

INSERT INTO task_doc_upload VALUES ('FAF5277E73942ED001E1ADA1E0','FAF506AFCFC61A8E401E8242E6','FAF5277E73942ED001E1ADA1E0database(smiletown).xls','Perubahan pada database smiletown',NULL,20040227110856,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `template`
--

CREATE TABLE template (
  id varchar(28) NOT NULL default '',
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  name varchar(125) NOT NULL default '',
  description varchar(255) default NULL,
  folder varchar(15) default NULL,
  descriptor_id varchar(28) default NULL,
  url_xsl_template varchar(255) default NULL,
  active_flag tinyint(1) default '0',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `template`
--

INSERT INTO template VALUES ('0','',20010712195845,'',00000000000000,'None','',NULL,'0','',0,NULL);
INSERT INTO template VALUES ('2',NULL,20010715162111,'1',20010715162111,'Article 2 image','',NULL,'23','template2.xsl',1,NULL);
INSERT INTO template VALUES ('3',NULL,20010712195845,NULL,00000000000000,'Article 3 image',NULL,NULL,'23','template3.xsl',1,NULL);
INSERT INTO template VALUES ('EDCEA7A1ED94597C49EA9303D9','1',20020514180611,NULL,00000000000000,'Order Collection','Ordered Collection',NULL,'EDCEA76E0E114961F605AAF79C',NULL,1,NULL);
INSERT INTO template VALUES ('EDCEA8252152A8A6CCD0AC9C82','1',20020514180632,NULL,00000000000000,'Standard Collection','Standard Collection',NULL,'EDCEA76E0E114961F605AAF79C',NULL,1,NULL);
INSERT INTO template VALUES ('EDCEA8252152A8A6FGD0AC9C82','chandra',20020521124613,NULL,20020521124328,'Classic','classic template','classic',NULL,NULL,0,NULL);
INSERT INTO template VALUES ('EDCEA8672152A8A6CCD0AC9C82','chandra',20020521124603,NULL,20020521124603,'Techno','Technology template','techno',NULL,NULL,0,NULL);

--
-- Table structure for table `template_object`
--

CREATE TABLE template_object (
  id varchar(28) NOT NULL default '',
  theme_id varchar(28) default NULL,
  template_skin varchar(25) NOT NULL default '',
  description varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `template_object`
--

INSERT INTO template_object VALUES ('F2FF1B11C6A173DABC02724EAF','EE39E38171B7328E0269CF4E06','collection.vm','Collection.vm','1',20030127170744,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `template_object_detail`
--

CREATE TABLE template_object_detail (
  id varchar(28) NOT NULL default '',
  template_object_id varchar(28) default NULL,
  collection_id varchar(28) default NULL,
  descriptor_id varchar(28) default NULL,
  description varchar(255) default NULL,
  type_id varchar(28) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `template_object_detail`
--


--
-- Table structure for table `theme`
--

CREATE TABLE theme (
  id varchar(28) NOT NULL default '',
  name varchar(25) NOT NULL default '',
  description varchar(255) default NULL,
  active_flag tinyint(1) default '1',
  theme_folder varchar(255) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `theme`
--

INSERT INTO theme VALUES ('EE39E360586DC4030AA5D88CAA','Tecno','Tecno Skin',1,'techno','1',20020709150557,'1',20020709150557,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('EE39E38171B7328E0269CF4E06','Classic','Classic Theme',1,'classic','1',20020709150603,'1',20020709150603,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('EEED769D1CA72C8DD9829685BC','Erica','Green Ericsson',1,'erica','1',20020801010514,'1',20020801010514,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('EEEE7A657391D5CD89EAFFA648','Green Pattern','Green with Gray Pattern',1,'greenpattern','1',20030428114510,'1',20030428114510,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('EF339499195C4175BFFF300B14','GreenMatrix','Green Matrix',1,'greenmatrix','1',20020723014041,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('EF77053DB1F41DEAE9E0EC8A2F','Green Portal','Green Portal',1,'greenportal','1',20020805034812,'1',20020805034812,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('EF878CDA15F79452ECED780C03','Interbox','Interbox',1,'interbox','1',20030128102847,'1',20030128102847,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('EF8E248CD64707158718C93173','Guerilla','Guerilla Theme',1,'dot_boobs','1',20030128102856,'1',20030128102856,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('F07B2292454364DA2311935565','Blueoxygen','Blueoxygen',1,'template14','1',20030128102904,'1',20030128102904,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO theme VALUES ('F302D39D46B228A55412E3D127','Makin','Makin Portal',1,'makinwb','1',20030206171837,'1',20030206171837,'0','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `tips_trick`
--

CREATE TABLE tips_trick (
  id varchar(28) NOT NULL default '',
  headline varchar(100) default NULL,
  subheadline varchar(100) default NULL,
  abstract text,
  body text,
  keywords varchar(128) default NULL,
  transmitted_date_time datetime NOT NULL default '0000-00-00 00:00:00',
  category_id varchar(50) default NULL,
  url_thumbnail1 varchar(255) default NULL,
  url_image1 varchar(255) default NULL,
  url_thumbnail2 varchar(255) default NULL,
  url_image2 varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `tips_trick`
--


--
-- Table structure for table `user_role`
--

CREATE TABLE user_role (
  id varchar(28) NOT NULL default '',
  user_id varchar(28) NOT NULL default '',
  role_id varchar(28) NOT NULL default '0',
  default_role tinyint(1) NOT NULL default '0',
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(15) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `user_role`
--

INSERT INTO user_role VALUES ('F78504D16152CEEA643E886D12','F36F96E4EA83CB95AC4DC601F2','1',0,'F36F96E4EA83CB9',20031001134005,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_role VALUES ('F78A4F806ED6607BFD6D540A4E','1','1',1,'1',20030919151202,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_role VALUES ('F8154AEBCF7217F34B7C689C91','F501555A2ECD5AC8FCC32F4DD6','1',0,'1',20031114160329,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_role VALUES ('FAF5F932667792F8F16C3F5A8A','FAF5F729BB986D84D965E8C0F4','3',1,'1',20040227150402,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_role VALUES ('FAF5FA32FB59AFE9FEBB615518','FAF5F729BB986D84D965E8C0F4','FA84B7C4A3DA2013FA2CEA182B',0,'1',20040227150402,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_role VALUES ('FABD26F9D5C4D3E32E4BFFAC523','1','3',0,NULL,20040216140752,NULL,00000000000000,'0','ic',NULL);
INSERT INTO user_role VALUES ('FAA39A4195CE64EF0E058B0968','F36F8BFFF97F8A16505B8305F7','2',0,'1',20040329124117,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_role VALUES ('FABD26F9D5C4D3E32E4BFFAC522','F53FAAF09AB84F412CDA27FF72','3',0,NULL,20040216140752,NULL,00000000000000,'0','ic',NULL);
INSERT INTO user_role VALUES ('FAA399FA12BCA7098B1CC597F3','F36F8BFFF97F8A16505B8305F7','3',1,'1',20040329124117,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_role VALUES ('FA89280AA024785E951B6236130','FA89238CD9BCDF331DF9B845EB','4',0,NULL,20040206114846,NULL,00000000000000,'0','ic',NULL);
INSERT INTO user_role VALUES ('FA8923EB70976CA5ABB7E6FD7D','FA89238CD9BCDF331DF9B845EB','FA84B7C4A3DA2013FA2CEA182B',1,'1',20040206114735,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_role VALUES ('FA8916B91AECAF9B13474EEA390','F501555A2ECD5AC8FCC32F4DD6','FA84B7C4A3DA2013FA2CEA182B',0,NULL,20040206112951,NULL,00000000000000,'0','ic',NULL);
INSERT INTO user_role VALUES ('FA892427F4A288E5756BF19A75','FA89238CD9BCDF331DF9B845EB','3',0,'1',20040206114735,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `user_site`
--

CREATE TABLE user_site (
  id varchar(28) NOT NULL default '',
  user_id varchar(28) NOT NULL default '',
  user_site_id varchar(28) NOT NULL default '',
  module_function_id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `user_site`
--

INSERT INTO user_site VALUES ('EEB0BB5046410D02A6CE7ACF65','EEB0B93A1B6402AF681315D441','EE185CE0B82B41C1724F284685','',NULL,20020627154145,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('EEB0BAE43A4263DAED44E63E2C','EEB0B93A1B6402AF681315D441','EDDCA9DCE41A14EE5D5ABE7E3C','',NULL,20020627154145,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F185CFA73ECFB1AD36B2903150','F162B448063A847319E641EF7D','F185BD3FDC5CC7989A3CED51A1','','1',20030927144612,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F74B6ABBA98BA2CB244E682174','F162B448063A847319E641EF7D','F74B696E86AA0CA5819A4FB36C','','1',20030927144612,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F199E877AC273113D0FA8A3F1F','F162B448063A847319E641EF7D','F199E755B97B662FC248CAC80','','1',20030927144612,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F369EA9AE7DA283CDE99D7A274','F369EA124E984A9790A43C14B1','EE185CE0B82B41C1724F284685','',NULL,20030218102703,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F369EB3439B0BBB2BBD1E9E41A','F369EA124E984A9790A43C14B1','F199E755B97B662FC248CAC80','',NULL,20030218102703,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F36EFB4E1A2F77BB20AF829316','F36EFAE07C9722187EB9F5E3D3','EE185CE0B82B41C1724F284685','',NULL,20030218103023,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F185D188037C8F3BC5807927F0','F162B448063A847319E641EF7D','F185C351B2FAC396169017978F','','1',20030927144612,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F7E118762EE8790C80C4A1923F','F3FB0D6714905E04E2586A8E1A','F78E9748E9F76ABD233C5EAD39','','1',20031111162818,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F8EE490696FC6ED025A4C4DD20','F36F8BFFF97F8A16505B8305F7','F8EE4789BA9DC24BAD1ECD597D','','1',20040211150420,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F4D30893462F2C792DB4185F95','F36F8BFFF97F8A16505B8305F7','F4D30718756B8401E43FD2AAE6','','1',20040211150420,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F50155FC3216ED4114889E41C1','F501555A2ECD5AC8FCC32F4DD6','F4D30718756B8401E43FD2AAE6','','1',20031111162835,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F50155E55F8EDDC8BCB3A9EBF0','F501555A2ECD5AC8FCC32F4DD6','F4E6A635A8AC141BAE7F98504','','1',20031111162835,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F50155CF326EFD2295732FE25D','F501555A2ECD5AC8FCC32F4DD6','F4DD64134EC050E3D0A256EA0D','','1',20031111162835,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F53FABB5EDFA9FFA635D4F13B2','F53FAAF09AB84F412CDA27FF72','F4D30718756B8401E43FD2AAE6','','1',20030910113848,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('EEB0B1C4E117F2EBC107D7E03A','1','EE185CE0B82B41C1724F284685','','1',20030927102735,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F185CF82299CD400D6344EC11C','F162B448063A847319E641EF7D','F185C29BDFC64CD3D08E1A15E8','','1',20030927144612,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F78504E9CA6B87DFD26F26A198','F36F96E4EA83CB95AC4DC601F2','EE185CE0B82B41C1724F284685','','F36F96E4EA83CB95AC4DC601F2',20031001133958,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F8A07899371FBFC29CD9A655CF','F36F8BFFF97F8A16505B8305F7','F185C351B2FAC396169017978F','','1',20040211150420,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F7E1176BD2F22E8D87F4FC1984','F36F96E4EA83CB95AC4DC601F2','F74B696E86AA0CA5819A4FB36C','','F36F96E4EA83CB95AC4DC601F2',20031001133958,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F7E11861C3B616E56BD4F59606','F3FB0D6714905E04E2586A8E1A','F4E6A635A8AC141BAE7F98504','','1',20031111162818,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F7E11850AACA9728DC1C44D550','F3FB0D6714905E04E2586A8E1A','F4DD64134EC050E3D0A256EA0D','','1',20031111162818,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F7E118398CBBE3BDD35A7A88BC','F3FB0D6714905E04E2586A8E1A','F4D30718756B8401E43FD2AAE6','','1',20031111162818,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F7DD5471E74DAACCF5C6AF2C8F','F36F8BFFF97F8A16505B8305F7','F74B696E86AA0CA5819A4FB36C','','1',20040211150420,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F8C9C0D7F3766F540CAC2C827E','F501555A2ECD5AC8FCC32F4DD6','EE185CE0B82B41C1724F284685','','1',20031111162835,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F8C9C17C35BC3070349F969EE9','F501555A2ECD5AC8FCC32F4DD6','F74B696E86AA0CA5819A4FB36C','','1',20031111162835,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F8CA1E5F6435F95FE1841F5E56','F3FB0D6714905E04E2586A8E1A','F74B696E86AA0CA5819A4FB36C','','1',20031111162818,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F4DD65DF494F8DAFF30D612131','F36F8BFFF97F8A16505B8305F7','F4DD64134EC050E3D0A256EA0D','','1',20040211150420,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F4E6AF2191AD16BED7A4EB7C4A','F36F8BFFF97F8A16505B8305F7','F4E6A635A8AC141BAE7F98504','','1',20040211150420,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('F9A20532CF58D9C5F170229724','F9A204566AA30595ACD597D51E','F9A2020F6D2B0CA30F3A1C8745','','1',20031223143841,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('FA89248E72953C4C73DFA64111','FA89238CD9BCDF331DF9B845EB','F74B696E86AA0CA5819A4FB36C','','1',20040206114735,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('FAF5FAF8EC2CB834BE217641D1','FAF5F729BB986D84D965E8C0F4','F74B696E86AA0CA5819A4FB36C','','1',20040227150402,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');
INSERT INTO user_site VALUES ('FAF5FB2E8DF3DC2618FEC102C8','FAF5F729BB986D84D965E8C0F4','F185C351B2FAC396169017978F','','1',20040227150402,NULL,00000000000000,'0','ic','EE185CE0B82B41C1724F284685');

--
-- Table structure for table `visitor`
--

CREATE TABLE visitor (
  ID varchar(28) NOT NULL default '',
  NAME varchar(128) NOT NULL default '',
  TITLE varchar(128) default NULL,
  OFFICE varchar(128) default NULL,
  PRIMARY KEY  (ID)
) TYPE=MyISAM COMMENT='Daftar Visitor';

--
-- Dumping data for table `visitor`
--

INSERT INTO visitor VALUES ('F7A9145B9642FC5CFBD79F3ABF','asds','asdasd','asdsd');
INSERT INTO visitor VALUES ('F7A915EC0C38183C81C339C1A','ooiertu','srmmmasdf','sdfgjh');
INSERT INTO visitor VALUES ('F7A916D22ED8512840405644F7','pppweroo','mmsdfkh','KSDKFL9');
INSERT INTO visitor VALUES ('F7A96A6F7EC6E39AF34A939ED6','Umar','Programmer','Intercitra');
INSERT INTO visitor VALUES ('F7A9740999CF8720A378F126C7','ooiweur','ooiwer','oiuwer');

--
-- Table structure for table `visitor_detail`
--

CREATE TABLE visitor_detail (
  ID varchar(28) NOT NULL default '',
  ID_VISITOR varchar(28) NOT NULL default '',
  ID_SITE varchar(28) NOT NULL default '',
  DATE date NOT NULL default '0000-00-00',
  PRIMARY KEY  (ID)
) TYPE=MyISAM COMMENT='Tabel kunjungan visitor ke site';

--
-- Dumping data for table `visitor_detail`
--


--
-- Table structure for table `web_link`
--

CREATE TABLE web_link (
  id varchar(28) NOT NULL default '',
  link_url varchar(128) default NULL,
  link_text varchar(255) default NULL,
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `web_link`
--

INSERT INTO web_link VALUES ('F07FCCB3BE58B3C064012378EB','www.intercitra.com','Intercitra Website, our sponsor','EEA063FE983851E',20030507134020,'F501555A2ECD5AC8FCC32F4DD6',20030507134020,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F084492A4A2C8D93F58E0536C8','www.guerilla-forum.org','This is our Guerilla project.<br>\r\nYou can visit us..here..<br>\r\nRebranding your corporation with Guerilla','EEA063FE983851E',20030507135615,'F501555A2ECD5AC8FCC32F4DD6',20030507135615,'E8D4BE646EF710FAB3F79BE639','ic','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F2EA82B0963A694E83849A7EF5','www.neotek.co.id','Indonesian Magazine, Hacker must read','F162B448063A847',20030507134227,'F501555A2ECD5AC8FCC32F4DD6',20030507134227,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F4E3116394C22B9ADAF30439C5','eclipse-plugins.2y.net','Eclipse Plug Ins Portal','F36F8BFFF97F8A16505B8305F7',20030507151838,'F36F8BFFF97F8A16505B8305F7',20030507151838,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F5015B509FF04AD2AD8190466D','www.benpinter.net','Indonesian Website (Manage by Isak Rickyanto)','F501555A2ECD5AC8FCC32F4DD6',20030507151849,'F36F8BFFF97F8A16505B8305F7',20030507151849,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F501646E3DF106E15918D2F680','www.developerforce.net/','Developer Force Network','F501555A2ECD5AC8FCC32F4DD6',20030507151857,'F36F8BFFF97F8A16505B8305F7',20030507151857,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F54362991CE3179656894402FA','','','F162B448063A847319E641EF7D',20030520092526,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F185C29BDFC64CD3D08E1A15E8');
INSERT INTO web_link VALUES ('F5590DE6C6E5D5E909EF6F959D','www.opensymphony.com','OpenSymphony is an Open Source project dedicated to providing enterprise class J2EE applications and components. Our components aim to be specification compliant, and should work in any J2EE compliant application server. (Although some components only req','F501555A2ECD5AC8FCC32F4DD6',20030606113041,'F501555A2ECD5AC8FCC32F4DD6',20030606113041,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F559153B1BDC46DF2356622090','www.ofbiz.org','The Open For Business Project, founded in May, 2001 by David E. Jones and Andy Zeneski, is an open source enterprise automation software project licensed under the MIT Open Source License. The goal of the project is to create an open source application fr','F501555A2ECD5AC8FCC32F4DD6',20030606113035,'F501555A2ECD5AC8FCC32F4DD6',20030606113035,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F59B60B1E6CBCBF18C02132649','www.jaydeetechnology.co.uk/planetjava/tutorials/swing.htm','Swing Tutorial','F501555A2ECD5AC8FCC32F4DD6',20030606113024,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ip','F4DD64134EC050E3D0A256EA0D');
INSERT INTO web_link VALUES ('F988766897CA9A56BAE6DF88E8','','','F36F8BFFF97F8A16505B8305F7',20031218153200,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic','F4DD64134EC050E3D0A256EA0D');

--
-- Table structure for table `website`
--

CREATE TABLE website (
  ID varchar(28) NOT NULL default '',
  NAME varchar(128) NOT NULL default '',
  URL varchar(128) default NULL,
  STATUS varchar(128) default NULL,
  PRIMARY KEY  (ID)
) TYPE=MyISAM COMMENT='Daftar website';

--
-- Dumping data for table `website`
--

INSERT INTO website VALUES ('FHGY7654098898JUILO09IUYHJU6','Yahoo!','www.yahoo.com','active');
INSERT INTO website VALUES ('FHGY7654098898JUILO09IUYHJ34','Google - The Best Search Engine','www.google.com','active');
INSERT INTO website VALUES ('FHGY7654098898KBBLO09IUYHJU6','Indonesia news portal','www.detik.com','active');
INSERT INTO website VALUES ('F7A974F2B4C933F486C22FF7BE','Amazon book store','ww.amazon.com','active');
INSERT INTO website VALUES ('F7A97C2121E9709DC2EC4B72D8','Intercitra','www.intercitra.com','active');
INSERT INTO website VALUES ('F7A97CAEA9299967F6A245AB3','Kompas','www.kompas.com','active');

--
-- Table structure for table `wizard`
--

CREATE TABLE wizard (
  id varchar(28) NOT NULL default '',
  name varchar(255) default NULL,
  description varchar(255) default NULL,
  folderName varchar(255) default NULL,
  create_by varchar(28) default NULL,
  update_by varchar(28) default NULL,
  create_date date default NULL,
  update_date date default NULL,
  active_flag int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `wizard`
--


--
-- Table structure for table `wizards`
--

CREATE TABLE wizards (
  id varchar(28) NOT NULL default '',
  wiz_name varchar(50) default NULL,
  wiz_description varchar(128) default NULL,
  wiz_folder varchar(128) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `wizards`
--

INSERT INTO wizards VALUES ('EAD2EC7DBCCD548AEBCBADE8E3','Membership','Registration for New Member','/member',1,'1',20011224200730,'1',20011224200730,'0','ic',NULL);
INSERT INTO wizards VALUES ('EAD30EE12D1F2A2ABF82B3D22B','WizWizGen','Wizard Generator','/wizard_generator',1,'1',20011217120824,'1',20011217120824,'0','ic',NULL);
INSERT INTO wizards VALUES ('EAD7199F04955BC364EE3A9BFA','MarketSpace','MarketSpace is your Virtual Marketplace','/mspace',1,'1',20011218062627,'1',20011218062627,'0','ic',NULL);
INSERT INTO wizards VALUES ('EAD731C8A1F91BF747CE07403A','Catalog','Catalog Management','/catalog',1,'1',20011218065227,'1',20011218065227,'0','ic',NULL);
INSERT INTO wizards VALUES ('EAD738C5E1E0BBF45246B9AA13','RFQ','RFQ','/rfq',1,'1',20011218065301,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards VALUES ('EAD86B91E4F9DB7D5E6F84B3C9','Quotations','Quotations','/quotation',1,'1',20011218122810,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards VALUES ('ED2F13A6A961E80A8DF701E7E7','Global Parameter','Global Parameter','global/parameter',1,'1',20020413223710,'1',20020413223710,'0','ic',NULL);
INSERT INTO wizards VALUES ('ED61618D94D51115C41E463CC6','Chandra','Chandra testing','asalproduct/asaltransaction',1,'1',20020423125233,'1',20020423125233,'0','ic',NULL);

--
-- Table structure for table `wizards_steps`
--

CREATE TABLE wizards_steps (
  id varchar(28) NOT NULL default '',
  wizard_id varchar(28) default NULL,
  number int(11) default NULL,
  name varchar(50) default NULL,
  title varchar(255) default NULL,
  description varchar(255) default NULL,
  file varchar(255) default NULL,
  information varchar(255) default NULL,
  information_alt varchar(255) default NULL,
  main text,
  iparent_id varchar(28) default NULL,
  private_flag tinyint(1) NOT NULL default '0',
  active_flag tinyint(1) default '1',
  show_steps_flag tinyint(1) NOT NULL default '1',
  create_by varchar(15) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `wizards_steps`
--

INSERT INTO wizards_steps VALUES ('EAD2FE317CD5D512E9CC2DDEAE','EAD2EC7DBCCD548AEBCBADE8E3',1,'Registration','Registration','Registration New Member','register','Register to Access This Site','Registration Form to Access This Site','M2Space.com \r\n            membership is <b>FREE</b>. However, it is required in order to buy \r\n            or sell products in our marketplace. Membership assures buyers they \r\n            are purchasing from reputable sellers, and assures sellers they are \r\n            conducting business with serious buyers. Please take a few minutes \r\n            to complete the following questionnaire, so that we may qualify you.</font> \r\n          </p>\r\n          <p> \r\n          <ol>\r\n            <li><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\">Sell \r\n              Memberships - Open to all qualified companies (OEMs, contract electronic \r\n              manufacturers, component manufacturers, distributors, etc.) with \r\n              new (never used) components to sell</font> \r\n            <li><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\">Buy \r\n              Memberships - Open to all individuals, organizations, or companies \r\n              that wish to negotiate, bid, and purchase through FastParts.com</font> \r\n            </li>\r\n          </ol>\r\n          <p><font size=\"2\" face=\"Verdana, Arial, Helvetica, sans-serif\">Member \r\n            may be Sell Members, Buy Members, or both, depending on their needs \r\n            and qualifications.</font> ','0',0,1,1,'1',20011218114242,'1',20011218114242,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD30638AB7DD03AD904F3877','EAD2EC7DBCCD548AEBCBADE8E3',2,'Activation','Activate Account','Activate Account','activate','Activate Account','Activate Account','Your account needs to be activated, because we maintenance your email for our internal data.','0',0,1,1,'1',20011217112012,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD30F53A3FEDDBD333DD130ED','EAD30EE12D1F2A2ABF82B3D22B',1,'Wizard Generator','Wizard Generator','Wizard will generate folder and files. The folder will be folder name, and the files will be (generator.jsp, generator_action.jsp, generator_form.jsp). Another support such as .vm will be added later.','generator','Wizard Folder Generator','','This wizard will generate all the folder and files.','0',0,1,1,'1',20011217113325,'1',20011217113325,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD572D2B51A1C1CF5B43C3722','EAD2EC7DBCCD548AEBCBADE8E3',3,'Profile','Profile','','profile','User Profile Preferences','','User Profile Preferences','0',0,1,1,'1',20011217223735,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD71A0C789C215CBAB7DDB78','EAD7199F04955BC364EE3A9BFA',2,'Create MarketSpace','Create MarketSpace','','/register','Register New MarketSpace','An MarketMaker can create more than 1 MarketSpace.','','0',0,1,1,'1',20011218063855,'1',20011218063855,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD72C1DC16B0DB3D72B806EA9','EAD7199F04955BC364EE3A9BFA',1,'Search MarketSpace','Search MarketSpace','','search','Search Your Own MarketSpace','Search Your Own MarketSpace','','0',0,1,1,'1',20011218101239,'1',20011218101239,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD7279BF21B36AF155230732C','EAD7199F04955BC364EE3A9BFA',6,'Manage MarketSpace','Manage MarketSpace','Manager Your MarketSpace','manage','Manage MarketSpace','You cannot change the industry of your MarketSpace.','Managing Your MarketSpace is like managing your own company.','0',0,1,1,'1',20011218063840,'1',20011218063840,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD72CA0FF43D790DD0AA6358C','EAD7199F04955BC364EE3A9BFA',3,'Invite User','Invite User','','invite','Invite User','Invitation can be based on email or registered account.','You can invite a registered account or new account base on email.<br>A notification by email will be sent as soon as you submit the form.','0',0,1,1,'1',20011218064110,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD72EB64D39C9593865E1B802','EAD7199F04955BC364EE3A9BFA',5,'Approve User','Approve User','','approve','Approve User','Approve User','If there is an user interest with you own MarketSpace, you can approve the user to join you MarketSpace.<br>This feature only affect if your MarketSpace is a private MarketSpace.','0',0,1,1,'1',20011218064307,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD730C6E0C68C3FF442BD919C','EAD7199F04955BC364EE3A9BFA',5,'User Permission','User Permission','','user_permission','List all your member of your MarketSpace','List all you member of your MarketSpace','','0',0,1,1,'1',20011218064456,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD732314FB44D3881D5C2E9BB','EAD731C8A1F91BF747CE07403A',1,'Search Product Item','Search Product Item','','search_product','Search Product based on Category','You can search all private and public product.','Add items to \r\n                  your requisition. You can add items from the catalog or from \r\n                  your favorites list, or enter details for non-catalog items. \r\n                  When you finish adding items, click <B>Next</B> to go to the \r\n                  next step in the process or <B>Summary</B> to review your \r\n                  request.','0',0,1,1,'1',20011222001045,'1',20011222001045,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD734A1732D4314A34989D3EA','EAD731C8A1F91BF747CE07403A',2,'Create Product','Create New Product','','create_product','Create New Product','','Our Product Management support UNSPSC as an international standard of categorizing product. Please visit <a href=\"http://www.unspsc.org\">UNSPSC.org</a> if you want to implement it.','0',0,1,1,'1',20011218064948,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD73C3314799987414F36E48C','EAD738C5E1E0BBF45246B9AA13',1,'Search RFQ','Search RFQ','Search RFQ','search','Search RFQ','You can search posted and unposted RFQ here. Searching base on RFQ Number','','0',0,1,1,'1',20011218065802,'1',20011218065802,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD8572B7F382340CC136B3BF7','EAD738C5E1E0BBF45246B9AA13',2,'Create RFQ','Create RFQ','Create RFQ','create','Create New RFQ','Create New RFQ','','0',0,1,1,'1',20011218120628,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD857F82B35F09765BAC2385C','EAD738C5E1E0BBF45246B9AA13',3,'Assign Expires Date','Assign Expires Date','Assign Expires Date','assign_expire','Assign Expires Date','Assign Expires Date','Assign Expires Date','0',1,1,1,'1',20011218120655,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD8585F99AF6D3EF3C992AF11','EAD738C5E1E0BBF45246B9AA13',4,'View Product','View Product','View Product','view_product','View Product','View Product','View Product','0',1,1,1,'1',20011222002732,'1',20011222002732,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86836CE682DCA42B26C49ED','EAD738C5E1E0BBF45246B9AA13',5,'Shipping','Shipping','Shipping','shipping','Shipping','Shipping','Shipping','0',1,1,1,'1',20011222003105,'1',20011222003105,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD8694FDF627CA977623C4461','EAD738C5E1E0BBF45246B9AA13',6,'Comments','Comments','Comments','comment','Comments','Comments','Comments','0',1,1,1,'1',20011222003508,'1',20011222003508,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86A0CF9BE5396A276938E2D','EAD738C5E1E0BBF45246B9AA13',7,'Approval','Approval','Approval','approval','Approval','Approval','Approval','0',0,1,1,'1',20011222003545,'1',20011222003545,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('ED2F140F942ACF48BD5D3A5DC9','ED2F13A6A961E80A8DF701E7E7',1,'Global Parameter','Global Parameter','XML Config Manipulator','','Global Information1','Global Alt','Global Description','0',0,1,1,'1',20020423124419,'1',20020423124419,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86AD0FF9D8946C4017E9E1B','EAD738C5E1E0BBF45246B9AA13',8,'Summary','Summary','Summary','summary','Summary','Summary','Summary','0',1,1,1,'1',20011222003318,'1',20011222003318,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86BEC4B77AB69A525120E36','EAD86B91E4F9DB7D5E6F84B3C9',1,'Search RFQ','Search RFQ','Search RFQ','search_rfq','Search RFQ','Search RFQ','Search RFQ','0',1,1,1,'1',20011218122848,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86C66B2183068128438638B','EAD86B91E4F9DB7D5E6F84B3C9',2,'Response Product Line','Response Product Line','Response Product Line','response_rfq_product','Response Product Line','Response Product Line','Response Product Line','0',1,1,1,'1',20011218122920,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86CE4E532790C26D353D1C8','EAD86B91E4F9DB7D5E6F84B3C9',3,'Assign Expires Date','Assign Expires Date','Assign Expires Date','assign_expire','Assign Expires Date','Assign Expires Date','Assign Expires Date','0',1,1,1,'1',20011218122950,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86D589163C4EF2456FC1F5B','EAD86B91E4F9DB7D5E6F84B3C9',4,'Post Response','Post Response','Post Response','post_response','Post Response','Post Response','Post Response','0',1,1,1,'1',20011218123025,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86DEAA34DB6285AF9B0EEDC','EAD86B91E4F9DB7D5E6F84B3C9',5,'View Response','View Response','View Response','view_response','View Response','View Response','View Response','0',1,1,1,'1',20011218123058,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('EAD86E66CDD498589FDFEC14BA','EAD86B91E4F9DB7D5E6F84B3C9',6,'History','History','History','history','History','History','History','0',1,1,1,'1',20011218123116,NULL,00000000000000,'0','ic',NULL);
INSERT INTO wizards_steps VALUES ('ED616831B877F593D5426505F8','ED61618D94D51115C41E463CC6',111111,'chandrawizardstepsname','chandrawizardstepstitle','chandrawizardstepsdescription','chandratestingfolder','chandrawizardstepsinformation','chandrawizardstepsinfoalt','chandrawizardstepsinfodesc','0',1,1,1,'1',20020423125926,NULL,00000000000000,'0','ic',NULL);

--
-- Table structure for table `workflow_action`
--

CREATE TABLE workflow_action (
  id varchar(28) NOT NULL default '',
  code varchar(255) NOT NULL default '',
  description varchar(255) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `workflow_action`
--

INSERT INTO workflow_action VALUES ('E8D6793D768051B18C56701A53','ap','Approve (ap)',1,'1',20010910213426,'1',20010910213426,'ic',NULL);
INSERT INTO workflow_action VALUES ('E8D67DE7FE788DAAB62AAB4D7','rj','Reject (rj)',1,'1',20010910213318,'1',20010910213318,'ip',NULL);
INSERT INTO workflow_action VALUES ('E8D67E593440951270F7812937','fw','Forward (fw)',1,'1',20010910213314,'1',20010910213314,'ip',NULL);

--
-- Table structure for table `workflow_activity`
--

CREATE TABLE workflow_activity (
  id varchar(28) NOT NULL default '',
  code varchar(255) NOT NULL default '',
  description varchar(255) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `workflow_activity`
--

INSERT INTO workflow_activity VALUES ('E8D678F70C118D213FEAD99F6','ip','In Progress (ip)',1,'1',20010909172756,'1',20010909172756,'ic',NULL);
INSERT INTO workflow_activity VALUES ('E8D67D43F8CA645C22CC79A442','ic','Initiated / In Complete (ic)',1,'1',20010909174849,'1',20010909174849,'ic',NULL);
INSERT INTO workflow_activity VALUES ('E8D67D6DFB31C62BA935489794','rj','Rejected (rj)',1,'1',20010909172804,'1',20010909172804,'ic',NULL);
INSERT INTO workflow_activity VALUES ('E8D67D8A947E0CB15E9D16B775','pl','Published (pl)',1,'1',20010909172816,'1',20010909172816,'ic',NULL);
INSERT INTO workflow_activity VALUES ('E8D67EB8F789AE948167691A8','rd','Remedy (rd)',1,'1',20010909172808,'1',20010909172808,'ic',NULL);
INSERT INTO workflow_activity VALUES ('E8D6813DF4AE31691D41874130','dl','Deleted (dl)',1,'1',20010909172739,'1',20010909172739,'ic',NULL);
INSERT INTO workflow_activity VALUES ('E8D6815EBCE1FFC96EB80594C6','ep','Expired (ep)',1,'1',20010909172745,'1',20010909172745,'ic',NULL);
INSERT INTO workflow_activity VALUES ('E8D681BBE1CA2C7DABA816D330','ra','Re-Approve (ra)',1,'1',20010909174919,'1',20010909174919,'ic',NULL);

--
-- Table structure for table `workflow_hierarchy`
--

CREATE TABLE workflow_hierarchy (
  id varchar(28) NOT NULL default '',
  iparentcode varchar(28) default NULL,
  role_id varchar(28) default NULL,
  active_flag tinyint(1) default '1',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  osml_id varchar(28) default '0',
  status_id varchar(28) default 'ic',
  site_id varchar(28) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table `workflow_hierarchy`
--

INSERT INTO workflow_hierarchy VALUES ('E8F8A93F018F6824A42D9579D2','0','3',1,'1',20010916083741,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic',NULL);
INSERT INTO workflow_hierarchy VALUES ('E8F8A98C7F1AF0D7235E06B8B','E8F8A93F018F6824A42D9579D2','2',1,'1',20010916083800,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic',NULL);
INSERT INTO workflow_hierarchy VALUES ('E8F8A9CDAB93F37F4EBC7B9C82','E8F8A98C7F1AF0D7235E06B8B','5',1,'1',20010916084231,'1',20010916084231,'E8D4BE646EF710FAB3F79BE639','ic',NULL);
INSERT INTO workflow_hierarchy VALUES ('EC4C4ACC295A5EA969484FE17B','E8F8A98C7F1AF0D7235E06B8B','E8615A12EE2ABB0357752928E5',1,'1',20020228173104,NULL,00000000000000,'E8D4BE646EF710FAB3F79BE639','ic',NULL);

--
-- Table structure for table `workflow_role`
--

CREATE TABLE workflow_role (
  id varchar(28) NOT NULL default '',
  create_by varchar(28) default NULL,
  create_date timestamp(14) NOT NULL,
  update_by varchar(28) default NULL,
  update_date timestamp(14) NOT NULL default '00000000000000',
  name varchar(50) NOT NULL default '',
  description varchar(125) default NULL,
  active_flag tinyint(1) default '0',
  site_id varchar(28) default NULL,
  id_parent varchar(28) default '0',
  PRIMARY KEY  (id),
  KEY id_parent (id_parent),
  KEY id_parent_2 (id_parent),
  KEY id_parent_3 (id_parent),
  KEY id_parent_4 (id_parent),
  KEY id_parent_5 (id_parent),
  KEY id_parent_6 (id_parent),
  KEY id_parent_7 (id_parent),
  KEY id_parent_8 (id_parent),
  KEY id_parent_9 (id_parent),
  KEY id_parent_10 (id_parent),
  KEY id_parent_11 (id_parent),
  KEY id_parent_12 (id_parent),
  KEY id_parent_13 (id_parent),
  KEY id_parent_14 (id_parent),
  KEY id_parent_15 (id_parent),
  KEY id_parent_16 (id_parent),
  KEY id_parent_17 (id_parent),
  KEY id_parent_18 (id_parent),
  KEY id_parent_19 (id_parent),
  KEY id_parent_20 (id_parent),
  KEY id_parent_21 (id_parent),
  KEY id_parent_22 (id_parent),
  KEY id_parent_23 (id_parent),
  KEY id_parent_24 (id_parent),
  KEY id_parent_25 (id_parent),
  KEY id_parent_26 (id_parent),
  KEY id_parent_27 (id_parent),
  KEY id_parent_28 (id_parent),
  KEY id_parent_29 (id_parent),
  KEY id_parent_30 (id_parent),
  KEY id_parent_31 (id_parent)
) TYPE=MyISAM;

--
-- Dumping data for table `workflow_role`
--

INSERT INTO workflow_role VALUES ('1','',20030903154041,'1',20010909020152,'Gods','Gods',1,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('2','',20040204144214,'',00000000000000,'Editor','Edit the document',0,'EE185CE0B82B41C1724F284685','1');
INSERT INTO workflow_role VALUES ('3','',20040204144216,'1',20010916084116,'Journalist','Create the document',0,'EE185CE0B82B41C1724F284685','1');
INSERT INTO workflow_role VALUES ('4','',20030903154143,'',00000000000000,'Approver','Approve the document',0,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('5','',20030903154143,'1',20010713183412,'Publisher','Publish the document',0,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('E8615A12EE2ABB0357752928E5','1',20030903154143,'1',20010817232931,'Content Editor','Content Editor',1,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('E8615A5669989A7E9BF0062A7C','1',20040206151830,'',00000000000000,'Observer','Observer',1,'EE185CE0B82B41C1724F284685','4');
INSERT INTO workflow_role VALUES ('E8615A896C1AEEBB5470D7AAB7','1',20030903154143,'',00000000000000,'Legal','Legal',1,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('E8615AC4915CA30C4B13A7A1C0','1',20030903154143,'1',20010817232936,'Element Editor','Element Editor',1,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('EACA3F077E886331F0863628FF','1',20030903154143,'EACA3FDC25B52DC',20020709094303,'B2B Role','B2B Staff',1,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('EC02BB50344043E7379E0256A7','1',20040206112029,NULL,00000000000000,'Topaz','Topaz',1,'EE185CE0B82B41C1724F284685','EACA3F077E886331F0863628FF');
INSERT INTO workflow_role VALUES ('EDA4618AC8FEE77BEEF571204D','1',20030903154143,NULL,00000000000000,'pos','pos',1,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('F9A202E61CD5BE6BE70F60BC30','1',20031223143600,NULL,00000000000000,'Juragan','Juragan',1,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('FA84B7C4A3DA2013FA2CEA182B','',20040216140751,'',00000000000000,'supervisor','supervising',0,'EE185CE0B82B41C1724F284685','0');
INSERT INTO workflow_role VALUES ('ff808081055bcd7701055bcdb857','1',20050728000000,'1',20050728000000,'test','test',1,NULL,NULL);

