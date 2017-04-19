/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.7.14 : Database - auth
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`auth` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `auth`;

/*Table structure for table `zxcms_about` */

DROP TABLE IF EXISTS `zxcms_about`;

CREATE TABLE `zxcms_about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `cn_company_desc` text COMMENT '中文公司简介',
  `en_company_desc` text COMMENT '英文公司简介',
  `cn_service_desc` text COMMENT '中文业务简介',
  `en_service_desc` text COMMENT '英文业务简介',
  `cn_other_desc` text COMMENT '中文补充描述',
  `en_other_desc` text COMMENT '英文补充描述',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `udpate_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `create_uid` int(11) DEFAULT NULL COMMENT '创建人uid',
  `update_uid` int(11) DEFAULT NULL COMMENT '更新人uid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_about` */

/*Table structure for table `zxcms_admin` */

DROP TABLE IF EXISTS `zxcms_admin`;

CREATE TABLE `zxcms_admin` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `encrypt` varchar(6) NOT NULL DEFAULT '',
  `lastloginip` int(10) NOT NULL DEFAULT '0',
  `lastlogintime` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(40) NOT NULL DEFAULT '',
  `mobile` varchar(11) NOT NULL DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `openid` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(2:无效,1:有效)',
  `updatetime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_admin` */

insert  into `zxcms_admin`(`id`,`username`,`password`,`encrypt`,`lastloginip`,`lastlogintime`,`email`,`mobile`,`realname`,`openid`,`status`,`updatetime`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','',0,1492399346,'5552123@qq.com','18888873646','阿杜','',1,1477623198),(2,'zhenxun','c2785bf6585103658d34413683ac36f8','',2130706433,1476067533,'','18888873646','','',1,1476067742),(3,'zhangsan','01d7f40760960e7bd9443513f22ab9af','',0,0,'','','','',1,0);

/*Table structure for table `zxcms_admin_group` */

DROP TABLE IF EXISTS `zxcms_admin_group`;

CREATE TABLE `zxcms_admin_group` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_admin_group` */

insert  into `zxcms_admin_group`(`id`,`name`,`description`,`rules`,`listorder`,`updatetime`) values (1,'普通管理员','密码加密只是MD5','',0,1477622552),(2,'工作人员','仅拥有日志管理权限','18,23,27',0,1476067479);

/*Table structure for table `zxcms_admin_group_access` */

DROP TABLE IF EXISTS `zxcms_admin_group_access`;

CREATE TABLE `zxcms_admin_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_admin_group_access` */

insert  into `zxcms_admin_group_access`(`uid`,`group_id`) values (2,2),(3,2);

/*Table structure for table `zxcms_admin_log` */

DROP TABLE IF EXISTS `zxcms_admin_log`;

CREATE TABLE `zxcms_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m` varchar(15) NOT NULL,
  `c` varchar(20) NOT NULL,
  `a` varchar(20) NOT NULL,
  `querystring` varchar(255) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` int(10) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_admin_log` */

insert  into `zxcms_admin_log`(`id`,`m`,`c`,`a`,`querystring`,`userid`,`username`,`ip`,`time`) values (227,'admin','Index','favicon.ico','',1,'admin',0,'2017-04-17 10:21:50'),(228,'admin','Product','category','',1,'admin',0,'2017-04-17 10:21:52'),(229,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 10:21:52'),(230,'admin','Product','lists','',1,'admin',0,'2017-04-17 10:21:53'),(231,'admin','Product','category','',1,'admin',0,'2017-04-17 10:21:54'),(232,'admin','Product','edit','?id=1',1,'admin',0,'2017-04-17 10:21:56'),(233,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 10:21:56'),(234,'admin','Product','category','',1,'admin',0,'2017-04-17 10:21:58'),(235,'admin','Index','favicon.ico','',1,'admin',0,'2017-04-17 10:42:28'),(236,'admin','Product','category','',1,'admin',0,'2017-04-17 10:42:49'),(237,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 10:42:49'),(238,'admin','Product','info','',1,'admin',0,'2017-04-17 10:42:50'),(239,'admin','Product','category','',1,'admin',0,'2017-04-17 10:42:54'),(240,'admin','Product','category','',1,'admin',0,'2017-04-17 10:44:03'),(241,'admin','Product','category','',1,'admin',0,'2017-04-17 10:44:28'),(242,'admin','Product','edit','',1,'admin',0,'2017-04-17 10:44:30'),(243,'admin','Product','category','',1,'admin',0,'2017-04-17 10:44:31'),(244,'admin','Product','category','',1,'admin',0,'2017-04-17 10:45:36'),(245,'admin','Product','edit','',1,'admin',0,'2017-04-17 10:45:38'),(246,'admin','Product','update','',1,'admin',0,'2017-04-17 10:49:52'),(247,'admin','Product','update','',1,'admin',0,'2017-04-17 10:55:02'),(248,'admin','Product','lists','',1,'admin',0,'2017-04-17 10:55:04'),(249,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 10:55:04'),(250,'admin','Product','category','',1,'admin',0,'2017-04-17 10:56:06'),(251,'admin','Product','category','',1,'admin',0,'2017-04-17 10:57:16'),(252,'admin','Product','category','',1,'admin',0,'2017-04-17 11:00:34'),(253,'admin','Product','category','',1,'admin',0,'2017-04-17 11:00:36'),(254,'admin','Product','category','',1,'admin',0,'2017-04-17 11:00:44'),(255,'admin','Product','edit','?id=5',1,'admin',0,'2017-04-17 11:02:08'),(256,'admin','Product','update','',1,'admin',0,'2017-04-17 11:02:30'),(257,'admin','Product','category','',1,'admin',0,'2017-04-17 11:02:32'),(258,'admin','Index','favicon.ico','',1,'admin',0,'2017-04-17 11:22:27'),(259,'admin','Product','category','',1,'admin',0,'2017-04-17 11:22:36'),(260,'admin','Product','category','',1,'admin',0,'2017-04-17 11:25:32'),(261,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 11:25:32'),(262,'admin','Product','edit','?id=5',1,'admin',0,'2017-04-17 11:25:40'),(263,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 11:25:40'),(264,'admin','Product','edit','?id=5',1,'admin',0,'2017-04-17 11:26:54'),(265,'admin','Product','edit','?id=5',1,'admin',0,'2017-04-17 11:27:22'),(266,'admin','Product','edit','?id=5',1,'admin',0,'2017-04-17 11:27:35'),(267,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 11:27:36'),(268,'admin','Product','update','',1,'admin',0,'2017-04-17 11:27:49'),(269,'admin','Product','category','',1,'admin',0,'2017-04-17 11:27:51'),(270,'admin','Product','category','',1,'admin',0,'2017-04-17 11:29:27'),(271,'admin','Product','edit','?id=1',1,'admin',0,'2017-04-17 11:29:49'),(272,'admin','Product','category','',1,'admin',0,'2017-04-17 11:29:52'),(273,'admin','Product','category','',1,'admin',0,'2017-04-17 11:29:53'),(274,'admin','Product','lists','?id=3',1,'admin',0,'2017-04-17 11:29:57'),(275,'admin','Product','category','',1,'admin',0,'2017-04-17 11:29:58'),(276,'admin','Product','category','',1,'admin',0,'2017-04-17 11:30:25'),(277,'admin','Product','category','',1,'admin',0,'2017-04-17 11:30:43'),(278,'admin','Product','category','',1,'admin',0,'2017-04-17 11:31:08'),(279,'admin','Product','category','',1,'admin',0,'2017-04-17 11:31:39'),(280,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 11:31:40'),(281,'admin','Product','category','',1,'admin',0,'2017-04-17 11:31:58'),(282,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 11:31:59'),(283,'admin','Product','category','',1,'admin',0,'2017-04-17 11:32:08'),(284,'admin','Product','category','',1,'admin',0,'2017-04-17 11:32:36'),(285,'admin','Product','category','',1,'admin',0,'2017-04-17 11:32:42'),(286,'admin','Product','edit','',1,'admin',0,'2017-04-17 11:33:01'),(287,'admin','Product','update','',1,'admin',0,'2017-04-17 11:33:36'),(288,'admin','Product','category','',1,'admin',0,'2017-04-17 11:33:37'),(289,'admin','Product','edit','',1,'admin',0,'2017-04-17 11:34:38'),(290,'admin','Product','update','',1,'admin',0,'2017-04-17 11:34:57'),(291,'admin','Product','update','',1,'admin',0,'2017-04-17 11:35:07'),(292,'admin','Product','category','',1,'admin',0,'2017-04-17 11:35:09'),(293,'admin','Product','del','?id=6',1,'admin',0,'2017-04-17 11:35:21'),(294,'admin','Product','category','',1,'admin',0,'2017-04-17 11:35:24'),(295,'admin','Product','category','',1,'admin',0,'2017-04-17 11:35:25'),(296,'admin','Product','del','?id=7',1,'admin',0,'2017-04-17 11:36:14'),(297,'admin','Product','category','',1,'admin',0,'2017-04-17 11:36:18'),(298,'admin','Product','del','?id=5',1,'admin',0,'2017-04-17 11:37:25'),(299,'admin','Product','category','',1,'admin',0,'2017-04-17 11:37:27'),(300,'admin','Product','lists','',1,'admin',0,'2017-04-17 11:37:31'),(301,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 11:37:31'),(302,'admin','Product','lists','',1,'admin',0,'2017-04-17 11:41:37'),(303,'admin','Product','lists','',1,'admin',0,'2017-04-17 11:55:56'),(304,'admin','Product','lists','',1,'admin',0,'2017-04-17 13:35:55'),(305,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:35:56'),(306,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:36:26'),(307,'admin','Product','lists','',1,'admin',0,'2017-04-17 13:36:29'),(308,'admin','Product','lists','',1,'admin',0,'2017-04-17 13:38:04'),(309,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:40:17'),(310,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:40:19'),(311,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:40:39'),(312,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:40:40'),(313,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:41:33'),(314,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:42:11'),(315,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:42:44'),(316,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:42:56'),(317,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:43:00'),(318,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:43:03'),(319,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:43:20'),(320,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:43:41'),(321,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:44:59'),(322,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:45:06'),(323,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:46:01'),(324,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:46:21'),(325,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:46:27'),(326,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:46:39'),(327,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:48:50'),(328,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:56:43'),(329,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 13:56:50'),(330,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:01:41'),(331,'admin','Product','$product.product_pic','',1,'admin',0,'2017-04-17 14:01:41'),(332,'admin','Product','$product.product_pic','',1,'admin',0,'2017-04-17 14:01:41'),(333,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:01:55'),(334,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:03:19'),(335,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:04:10'),(336,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:04:25'),(337,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:04:47'),(338,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 14:04:48'),(339,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:05:28'),(340,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:05:58'),(341,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:07:21'),(342,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:10:54'),(343,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 14:10:55'),(344,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:14:37'),(345,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:15:05'),(346,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:17:06'),(347,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:18:03'),(348,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:18:52'),(349,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:19:12'),(350,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:19:51'),(351,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:20:21'),(352,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:26:04'),(353,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:27:02'),(354,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:27:25'),(355,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:27:55'),(356,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:33:02'),(357,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:34:47'),(358,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:36:05'),(359,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:37:32'),(360,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:38:25'),(361,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:39:11'),(362,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 14:39:53'),(363,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 14:40:20'),(364,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 15:05:48'),(365,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 15:13:28'),(366,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 15:14:24'),(367,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 15:14:54'),(368,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 15:15:11'),(369,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 15:15:16'),(370,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 15:15:36'),(371,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 15:15:39'),(372,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:15:45'),(373,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:16:17'),(374,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:16:49'),(375,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:17:02'),(376,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:17:09'),(377,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:17:31'),(378,'admin','Product','category','',1,'admin',0,'2017-04-17 15:19:04'),(379,'admin','Product','lists','?id=1',1,'admin',0,'2017-04-17 15:19:13'),(380,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 15:19:13'),(381,'admin','Product','category','',1,'admin',0,'2017-04-17 15:19:16'),(382,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:19:19'),(383,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:19:22'),(384,'admin','Product','edit','?id=1',1,'admin',0,'2017-04-17 15:19:25'),(385,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:19:27'),(386,'admin','Product','lists','',1,'admin',0,'2017-04-17 15:19:46'),(387,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:19:48'),(388,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 15:20:04'),(389,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:20:06'),(390,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:20:38'),(391,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 15:20:43'),(392,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:20:46'),(393,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:21:31'),(394,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:23:20'),(395,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:24:06'),(396,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:24:14'),(397,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:24:30'),(398,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:24:40'),(399,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:24:48'),(400,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:25:27'),(401,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:26:10'),(402,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:27:04'),(403,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 15:29:46'),(404,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:29:47'),(405,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:29:49'),(406,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 15:29:50'),(407,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:30:28'),(408,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:30:55'),(409,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:31:08'),(410,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:31:21'),(411,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:32:46'),(412,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:33:22'),(413,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:34:13'),(414,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:35:12'),(415,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:35:42'),(416,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 15:35:48'),(417,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:35:49'),(418,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 15:35:54'),(419,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:35:55'),(420,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:37:28'),(421,'admin','Product','prdupdate','',1,'admin',0,'2017-04-17 15:37:55'),(422,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:37:58'),(423,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:38:05'),(424,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:42:38'),(425,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:43:53'),(426,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:44:31'),(427,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:44:42'),(428,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 15:44:55'),(429,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 16:03:28'),(430,'admin','Product','prdedit','?id=1',1,'admin',0,'2017-04-17 16:04:02'),(431,'admin','Product','lists','',1,'admin',0,'2017-04-17 16:05:40'),(432,'admin','Product','favicon.ico','',1,'admin',0,'2017-04-17 16:05:40'),(433,'admin','Product','lists','',1,'admin',0,'2017-04-17 16:05:52'),(434,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:05:53'),(435,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:07:26'),(436,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:07:43'),(437,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:08:39'),(438,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:09:19'),(439,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:11:30'),(440,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:11:48'),(441,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:11:50'),(442,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:12:08'),(443,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:19:50'),(444,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:20:07'),(445,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:25:30'),(446,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:32:28'),(447,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:33:04'),(448,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:42:40'),(449,'admin','Product','index','',1,'admin',0,'2017-04-17 16:42:42'),(450,'admin','Index','favicon.ico','',1,'admin',0,'2017-04-17 16:45:43'),(451,'admin','Product','lists','',1,'admin',0,'2017-04-17 16:50:55'),(452,'admin','Product','prdedit','',1,'admin',0,'2017-04-17 16:50:56'),(453,'admin','Product','index','',1,'admin',0,'2017-04-17 16:50:57');

/*Table structure for table `zxcms_app` */

DROP TABLE IF EXISTS `zxcms_app`;

CREATE TABLE `zxcms_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `price` decimal(10,0) NOT NULL DEFAULT '0',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '图标',
  `total` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1软件，2游戏，3付费',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `user_id` int(11) NOT NULL COMMENT '发布人ID',
  `position` smallint(5) NOT NULL DEFAULT '0' COMMENT '位置',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '标记说明',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL COMMENT '开始时间',
  `s_time` time DEFAULT NULL,
  `date_total` int(11) DEFAULT NULL,
  `time_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '时间类型：1全天，2时间段',
  PRIMARY KEY (`id`),
  KEY `nums` (`total`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_app` */

/*Table structure for table `zxcms_clients` */

DROP TABLE IF EXISTS `zxcms_clients`;

CREATE TABLE `zxcms_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary id',
  `en_name` varchar(50) DEFAULT NULL COMMENT 'english client name',
  `cn_name` varchar(50) DEFAULT NULL COMMENT 'chinese client name',
  `icon` varchar(255) DEFAULT NULL COMMENT 'client reg icon',
  `link` varchar(255) DEFAULT NULL COMMENT 'client website link',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT 'create time',
  `create_uid` int(10) unsigned DEFAULT NULL COMMENT 'create user id',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT 'update time',
  `update_uid` int(10) unsigned DEFAULT NULL COMMENT 'update uid',
  `status` tinyint(4) DEFAULT '1' COMMENT '-1 for deleted, 0 for disabled and 1 for enabled',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_clients` */

/*Table structure for table `zxcms_config` */

DROP TABLE IF EXISTS `zxcms_config`;

CREATE TABLE `zxcms_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置说明',
  `group` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '配置值',
  `remark` varchar(100) NOT NULL COMMENT '配置说明',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `value` text NOT NULL COMMENT '配置值',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `type` (`type`),
  KEY `group` (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_config` */

/*Table structure for table `zxcms_contact` */

DROP TABLE IF EXISTS `zxcms_contact`;

CREATE TABLE `zxcms_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '联系方式自增id',
  `cn_fact_addr` varchar(255) DEFAULT NULL COMMENT '中文工厂地址',
  `en_fact_addr` varchar(255) DEFAULT NULL COMMENT '英文工厂地址',
  `cn_company_addr` varchar(255) DEFAULT NULL COMMENT '中文公司地址',
  `en_company_addr` varchar(255) DEFAULT NULL COMMENT '英文公司地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `fax` varchar(255) DEFAULT NULL COMMENT '传真',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱地址',
  `website` varchar(255) DEFAULT NULL COMMENT '网站地址',
  `other` text COMMENT '其它方式',
  `desc` text COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_contact` */

/*Table structure for table `zxcms_events` */

DROP TABLE IF EXISTS `zxcms_events`;

CREATE TABLE `zxcms_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动通知主键id',
  `cn_title` varchar(256) NOT NULL COMMENT '中文活动通知标题',
  `en_title` varchar(256) NOT NULL COMMENT '英文活动通知标题',
  `cn_content` text NOT NULL COMMENT '中文咨询内容',
  `en_content` text NOT NULL COMMENT '英文咨询内容',
  `attache_name` varchar(36) DEFAULT NULL COMMENT '附件名称',
  `attache_url` varchar(256) DEFAULT NULL COMMENT '附件地址',
  `create_uid` int(10) unsigned NOT NULL COMMENT '创建者uid',
  `update_uid` int(10) unsigned NOT NULL COMMENT '更新者uid',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(4) NOT NULL COMMENT '状态：-1 删除，0-禁用，1-发布',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='平台新闻表';

/*Data for the table `zxcms_events` */

insert  into `zxcms_events`(`id`,`cn_title`,`en_title`,`cn_content`,`en_content`,`attache_name`,`attache_url`,`create_uid`,`update_uid`,`create_time`,`update_time`,`status`) values (7,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','sdf asdf asf asdf asfasdf','1','1',1,1,1,1,1),(8,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','按时发放','1','1',1,1,1,1,1),(9,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发','','',1,1,1487059118,1487059118,1),(10,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(11,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(12,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(13,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(14,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(15,'asfa sf asfasf','','','asdf asfasfd','','',1,1,1487060748,1487060748,1),(16,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','<span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span>','','',1,1,1487060764,1487060764,1),(17,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','<span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span>','','',1,1,1487060895,1487060895,1);

/*Table structure for table `zxcms_honor` */

DROP TABLE IF EXISTS `zxcms_honor`;

CREATE TABLE `zxcms_honor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary id',
  `en_title` varchar(255) DEFAULT NULL COMMENT 'english honor title',
  `cn_title` varchar(255) DEFAULT NULL COMMENT 'chinese honor title',
  `en_desc` text COMMENT 'english honor description',
  `cn_desc` text COMMENT 'chinese honor description',
  `img` varchar(255) DEFAULT NULL COMMENT 'honor photo',
  `create_time` int(11) DEFAULT NULL COMMENT 'create time',
  `create_uid` int(11) DEFAULT NULL COMMENT 'create user id',
  `update_time` int(11) DEFAULT NULL COMMENT 'update time',
  `update_uid` int(11) DEFAULT NULL COMMENT 'update user id',
  `status` tinyint(4) DEFAULT NULL COMMENT '-1 for deleted,0 for disabled and 1 for enabled',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_honor` */

/*Table structure for table `zxcms_menu` */

DROP TABLE IF EXISTS `zxcms_menu`;

CREATE TABLE `zxcms_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) DEFAULT '0',
  `icon` varchar(20) NOT NULL DEFAULT '',
  `c` varchar(20) DEFAULT NULL,
  `a` varchar(20) DEFAULT NULL,
  `data` varchar(50) NOT NULL DEFAULT '',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '999',
  `display` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示(1:显示,2:不显示)',
  `updatetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_menu` */

insert  into `zxcms_menu`(`id`,`name`,`parentid`,`icon`,`c`,`a`,`data`,`tip`,`group`,`listorder`,`display`,`updatetime`) values (1,'管理设置',0,'fa-users','Admin','admin','','','',1,1,1476175413),(2,'管理员管理',1,'','Admin','index','','','',0,1,1476175413),(3,'详情',2,'','Admin','info','','','',0,2,1476175413),(4,'添加',2,'','Admin','add','','','',0,2,1476175413),(5,'修改',2,'','Admin','edit','','','',0,2,1476175413),(6,'删除',2,'','Admin','del','','','',0,2,1476175413),(7,'分组管理',1,'','Group','index','','','',0,1,1476175413),(8,'详情',7,'','Group','info','','','',0,2,1476175413),(9,'添加',7,'','Group','add','','','',0,2,1476175413),(10,'修改',7,'','Group','edit','','','',0,2,1476175413),(11,'删除',7,'','Group','del','','','',0,2,1476175413),(12,'菜单管理',18,'','Menu','index','','','',0,1,1476175413),(13,'查看',12,'','Menu','info','','','',0,2,1476175413),(14,'添加',12,'','Menu','add','','','',0,2,1476175413),(15,'修改',12,'','Menu','edit','','','',0,2,1476175413),(16,'删除',12,'','Menu','del','','','',0,2,1476175413),(18,'系统设置',0,'fa-cogs','Menu','index','','','',2,1,1476175413),(22,'权限设置',2,'','Group','rule','','','',999,2,1476175413),(23,'个人设置',1,'','Admin','public_edit_info','','','',999,1,1476175413),(27,'日志管理',18,'','Log','index','','','',999,1,1476175413),(31,'系统首页',0,'fa-bank','Index','index','','','',0,1,1476175413),(32,'产品管理',0,'fa-product-hunt','Product','lists','','','',999,1,1492161794),(33,'产品分类',32,'fa-paperclip','Product','category','','','',999,1,NULL),(34,'产品列表',32,'fa-list-ol','Product','lists','','','',999,1,NULL),(35,'新闻管理',0,'fa-newspaper-o','Event','index','','','',999,1,NULL),(36,'新闻列表',35,'fa-bookmark','Event','lists','','','',999,1,NULL),(37,'联系我们',0,' fa-mobile-phone','Contact','index','','','',999,1,NULL),(38,'关于我们',0,' fa-hand-o-right','About','index','','','',999,1,NULL),(39,'首页管理',0,'fa-bank','Homepage','index','','','',999,1,NULL),(40,'留言管理',0,'fa-question','Msg','lists','','','',999,1,NULL);

/*Table structure for table `zxcms_product` */

DROP TABLE IF EXISTS `zxcms_product`;

CREATE TABLE `zxcms_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `cid` int(10) unsigned NOT NULL COMMENT '类别id',
  `casno` varchar(50) DEFAULT NULL COMMENT 'CAS No',
  `product_pic` varchar(256) DEFAULT NULL COMMENT '产品图片',
  `cn_title` varchar(256) NOT NULL COMMENT '产品中文名称',
  `en_title` varchar(256) NOT NULL COMMENT '产品英文名称',
  `sf_pic` varchar(256) DEFAULT NULL COMMENT '结构方程式',
  `cn_spec` text COMMENT '中文参数',
  `en_spec` text COMMENT '英文参数',
  `cn_desc` text COMMENT '中文产品简介',
  `en_desc` text COMMENT '英文产品简介',
  `create_uid` int(11) DEFAULT NULL COMMENT '创建者uid',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间戳',
  `update_uid` int(11) DEFAULT NULL COMMENT '修改人uid',
  `update_time` int(10) DEFAULT NULL COMMENT '修改人时间戳',
  `status` int(11) DEFAULT NULL COMMENT '-1:删除，0-禁用，1：启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品库';

/*Data for the table `zxcms_product` */

insert  into `zxcms_product`(`id`,`cid`,`casno`,`product_pic`,`cn_title`,`en_title`,`sf_pic`,`cn_spec`,`en_spec`,`cn_desc`,`en_desc`,`create_uid`,`create_time`,`update_uid`,`update_time`,`status`) values (1,3,'中文名称','/static/img/product2.jpg','中文名称','中文名称','/static/img/user2.jpg','兼职：12341241234\r\n知道：31234124234\r\n百度：1234124123424','中文名称','中文名称','中文名称',1,1492413336,1,1492414675,1);

/*Table structure for table `zxcms_product_category` */

DROP TABLE IF EXISTS `zxcms_product_category`;

CREATE TABLE `zxcms_product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品类别自增id',
  `icon` varchar(255) DEFAULT NULL COMMENT '冗余字段，产品类别icon',
  `cn_title` varchar(255) DEFAULT NULL COMMENT '类别中文名称',
  `en_title` varchar(255) DEFAULT NULL COMMENT '类别英文名称',
  `cn_desc` text COMMENT '中文描述',
  `en_desc` text COMMENT '英文描述',
  `sort` int(10) unsigned DEFAULT NULL COMMENT '排序值',
  `create_uid` int(10) unsigned DEFAULT NULL COMMENT '创建者uid',
  `update_uid` int(10) unsigned DEFAULT NULL COMMENT '编辑者uid',
  `create_time` int(10) unsigned DEFAULT NULL COMMENT '创建时间戳',
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '修改时间',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '-1:删除，0-禁用，1-启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='产品类别中文库';

/*Data for the table `zxcms_product_category` */

insert  into `zxcms_product_category`(`id`,`icon`,`cn_title`,`en_title`,`cn_desc`,`en_desc`,`sort`,`create_uid`,`update_uid`,`create_time`,`update_time`,`status`) values (1,NULL,'阻燃剂','Flame retardant','化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.','Qingdao Richkem Co., Ltd. is a high-tech fine chemical enterprise dedicated in researching and supplying flame retardants and intermediates.',1,1,1,1492179000,1492179000,1),(2,NULL,'阻燃母粒','Masterbatch','化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.','Qingdao Richkem Co., Ltd. is a high-tech fine chemical enterprise dedicated in researching and supplying flame retardants and intermediates.',2,1,1,1492179000,1492179000,1),(3,NULL,'中间体','Intermediates','化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.','Qingdao Richkem Co., Ltd. is a high-tech fine chemical enterprise dedicated in researching and supplying flame retardants and intermediates.',3,1,1,1492179000,1492179000,1),(4,NULL,'大林PLAVIS','Daelim Plavis','化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.','Qingdao Richkem Co., Ltd. is a high-tech fine chemical enterprise dedicated in researching and supplying flame retardants and intermediates.',4,1,1,1492179000,1492179000,1),(5,NULL,'爆炸物品','Explode Thin','爆炸物品属于禁运物品','The Exploded Thins is forbidden where trasfering using trucks or ships. please try to blow somethinkg up.',6,NULL,1,NULL,1492400245,-1),(6,NULL,'中文的名字可以更长','English name can be longer','中文的描述可以更称','english description can be longer',7,NULL,NULL,1492400016,1492400016,-1),(7,NULL,'阿拉法接啊十六块腹肌','sldfjaslfjl','阿拉就废了；阿飞就卡死了；巨峰路；看',' asldfjlaskfjlaskfjlas',8,1,1,1492400107,1492400175,-1);

/*Table structure for table `zxcms_service` */

DROP TABLE IF EXISTS `zxcms_service`;

CREATE TABLE `zxcms_service` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cn_title` varchar(255) DEFAULT NULL COMMENT '中文标题',
  `en_title` varchar(255) DEFAULT NULL COMMENT '英文标题',
  `cn_desc` text COMMENT '中文描述',
  `en_desc` text COMMENT '英文描述',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned DEFAULT NULL COMMENT '更新时间',
  `create_uid` int(11) unsigned DEFAULT NULL COMMENT '创建人id',
  `update_uid` int(11) unsigned DEFAULT NULL COMMENT '更新人id',
  `status` int(10) unsigned DEFAULT NULL COMMENT '-1删除，0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_service` */

/*Table structure for table `zxcms_slide` */

DROP TABLE IF EXISTS `zxcms_slide`;

CREATE TABLE `zxcms_slide` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自增id',
  `cn_title` varchar(255) DEFAULT NULL COMMENT '中文主标题',
  `cn_subtitle` varchar(255) NOT NULL COMMENT '中文副标题',
  `en_title` varchar(255) DEFAULT NULL COMMENT '英文主标题',
  `en_subtitle` varchar(255) DEFAULT NULL COMMENT '英文副标题',
  `content_img` varchar(255) DEFAULT NULL COMMENT '展示图标',
  `sort` varchar(255) DEFAULT NULL COMMENT '幻灯片排序',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `create_uid` int(11) DEFAULT NULL COMMENT '创建人uid',
  `update_uid` int(11) DEFAULT NULL COMMENT '更新人uid',
  `status` text COMMENT '状态：-1删除，0禁用，1正常',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

/*Data for the table `zxcms_slide` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
