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
  `logo` varchar(255) DEFAULT NULL COMMENT '公司logo',
  `cn_company_name` varchar(255) DEFAULT NULL COMMENT '中文公司名称',
  `en_company_name` varchar(255) DEFAULT NULL COMMENT '英文公司名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_about` */

insert  into `zxcms_about`(`id`,`logo`,`cn_company_name`,`en_company_name`,`cn_company_desc`,`en_company_desc`,`cn_service_desc`,`en_service_desc`,`cn_other_desc`,`en_other_desc`,`create_time`,`udpate_time`,`create_uid`,`update_uid`) values (1,'/uploads/20170421/168c9bfa4ea4e461feb1caa57102a328.png','青岛丽凯化工有限公司','Qingdao Richkem Co., Ltd.','青岛丽凯化工有限公司','Qingdao Richkem Co., Ltd.，is a high-tech fine chemical enterprise engaged in the R & D, manufacturing , trading of flame retardants and pharmaceutical intermediates.Production site located in Binhai Economic Development Zone in Weifang,Shandong,China,the company has been approved by SGS, ROHS 2002/95/EC, and products have been pre-registered with REACH. \r\nTaking full use of abundant bromine resources, adhering to advanced techniques, strict management, enthusiasm sales team,Richkem has been accepted in international market.We believe “quality, reliable, customer satisfaction, continuous improvement”as principle. Richkem focuses on plastic additives and pharmaceutical intermediates. Current main products are brominated polystyrene,Sb2O3 masterbatch,and flame retardant masterbatch. Production capacity has been brominated polystyrene(2000mt per year, flame retardant masterbatch 2000mt per year).Sales covers Europe,USA,Asia etc. \r\nIn the future, the company will insist on technique improving and innoviation, optimize company structure, attract excellent people ,improve company competition，develop international market. \r\nBased on philosophy of \"reliable cooperation, mutural developing \", we sincerely welcome all cooperations.','青岛丽凯化工有限公司','Qingdao Richkem Co., Ltd.，is a high-tech fine chemical enterprise engaged in the R & D, manufacturing , trading of flame retardants and pharmaceutical intermediates.Production site located in Binhai Economic Development Zone in Weifang,Shandong,China,the company has been approved by SGS, ROHS 2002/95/EC, and products have been pre-registered with REACH. \r\nTaking full use of abundant bromine resources, adhering to advanced techniques, strict management, enthusiasm sales team,Richkem has been accepted in international market.We believe “quality, reliable, customer satisfaction, continuous improvement”as principle. Richkem focuses on plastic additives and pharmaceutical intermediates. Current main products are brominated polystyrene,Sb2O3 masterbatch,and flame retardant masterbatch. Production capacity has been brominated polystyrene(2000mt per year, flame retardant masterbatch 2000mt per year).Sales covers Europe,USA,Asia etc. \r\nIn the future, the company will insist on technique improving and innoviation, optimize company structure, attract excellent people ,improve company competition，develop international market. \r\nBased on philosophy of \"reliable cooperation, mutural developing \", we sincerely welcome all cooperations.','其他描述','其他描述',1492706275,1492738502,1,1);

/*Table structure for table `zxcms_action_log` */

DROP TABLE IF EXISTS `zxcms_action_log`;

CREATE TABLE `zxcms_action_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `m` varchar(15) DEFAULT NULL,
  `c` varchar(20) DEFAULT NULL,
  `a` varchar(20) DEFAULT NULL,
  `querystring` varchar(255) DEFAULT NULL,
  `userid` mediumint(8) unsigned DEFAULT '0',
  `username` varchar(20) DEFAULT NULL,
  `ip` int(10) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_action_log` */

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_clients` */

insert  into `zxcms_clients`(`id`,`en_name`,`cn_name`,`icon`,`link`,`create_time`,`create_uid`,`update_time`,`update_uid`,`status`) values (1,'中文','english','/uploads/20170421/5a34e0248009273edffea231d27be83f.jpg','http://www.baidu.com',1492745044,1,1492745385,1,1),(2,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(3,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(4,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(5,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(6,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(7,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(8,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(9,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(10,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(11,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1),(12,'中文','english','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_contact` */

insert  into `zxcms_contact`(`id`,`cn_fact_addr`,`en_fact_addr`,`cn_company_addr`,`en_company_addr`,`phone`,`fax`,`email`,`website`,`other`,`desc`) values (1,'as','sdf','asdf','asdf','asdf','asdf','asdf','sadf','aasdfasdfasdf','asdfasdfasdf');

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
  `istop` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-不置顶，2-置顶',
  `sort` tinyint(4) DEFAULT NULL COMMENT '置顶时的排序编号',
  `create_uid` int(10) unsigned NOT NULL COMMENT '创建者uid',
  `update_uid` int(10) unsigned NOT NULL COMMENT '更新者uid',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(4) NOT NULL COMMENT '状态：-1 删除，0-禁用，1-发布 2-草稿',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='平台新闻表';

/*Data for the table `zxcms_events` */

insert  into `zxcms_events`(`id`,`cn_title`,`en_title`,`cn_content`,`en_content`,`attache_name`,`attache_url`,`istop`,`sort`,`create_uid`,`update_uid`,`create_time`,`update_time`,`status`) values (7,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','sdf asdf asf asdf asfasdf','sdf asdf asf asdf asfasdf','1','1',1,0,1,1,1,1,1),(8,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','sdf asdf asf asdf asfasdf','按时发放','1','1',1,0,1,1,1,1,1),(9,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','sdf asdf asf asdf asfasdf','阿萨德发','','',1,0,1,1,1487059118,1487059118,1),(10,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','sdf asdf asf asdf asfasdf','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,0,1,1,1,1,1),(11,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','sdf asdf asf asdf asfasdf','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',2,4,1,1,1,1,1),(12,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','<p>sdf asdf asf asdf asfasdf</p>','<p>阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</p>','1','1',1,0,1,1,1,1493005357,1),(13,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','sdf asdf asf asdf asfasdf','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',2,3,1,1,1,1,1),(14,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','<p>sdf asdf asf asdf asfasdf</p>','<p>阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</p>','1','1',1,0,1,1,1,1493005412,1),(15,'asfa sf asfasf','is this titile long enough to strength a table cell with enough colume width','<p>sdf asdf asf asdf asfasdf</p>','<p>asdf asfasfd</p>','','',1,0,1,1,1487060748,1493006258,-1),(16,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','<p>sdf asdf asf asdf asfasdf</p>','<p><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span></p>','','',1,0,1,1,1487060764,1493005378,1),(17,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','is this titile long enough to strength a table cell with enough colume width','<p>sdf asdf asf asdf asfasdf</p>','<p><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span></p>','','',1,0,1,1,1487060895,1493005429,1);

/*Table structure for table `zxcms_group` */

DROP TABLE IF EXISTS `zxcms_group`;

CREATE TABLE `zxcms_group` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_group` */

insert  into `zxcms_group`(`id`,`name`,`description`,`rules`,`listorder`,`updatetime`) values (1,'普通管理员','密码加密只是MD5','',0,1477622552),(2,'工作人员','仅拥有日志管理权限','18,23,27',0,1476067479);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_honor` */

insert  into `zxcms_honor`(`id`,`en_title`,`cn_title`,`en_desc`,`cn_desc`,`img`,`create_time`,`create_uid`,`update_time`,`update_uid`,`status`) values (1,'asdfasd','sdfas','asdfasdf','asdfasdf','/uploads/20170424/7537447c2e676aedcd4774caec4ca3c4.jpg',1492741295,1,1493043608,1,1),(2,'asdfasd','asdfasf','asdfasdfasdf','ffasdfasdf','/uploads/20170421/e62a8cafd6a2cfd3c5a4795720be4822.jpg',1492741314,1,1492743137,1,1),(3,'asdfasd','asdfasd','asdfasdfasdf','asdfasdfasdf','/uploads/20170424/7537447c2e676aedcd4774caec4ca3c4.jpg',1492741314,1,1492743137,1,1),(4,'asdfasd','asdfasd','asdfasdfasdf','asdfasdfasdf','/uploads/20170424/7537447c2e676aedcd4774caec4ca3c4.jpg',1492741314,1,1492743137,1,1),(5,'asdfasd','asdfasd','asdfasdfasdf','asdfasdfasdf','/uploads/20170424/7537447c2e676aedcd4774caec4ca3c4.jpg',1492741314,1,1492743137,1,1),(6,'asdfasd','asdfasd','asdfasdfasdf','asdfasdfasdf','/uploads/20170424/7537447c2e676aedcd4774caec4ca3c4.jpg',1492741314,1,1492743137,1,1),(7,'asdfasd','asdfasd','asdfasdfasdf','asdfasdfasdf','/uploads/20170424/7537447c2e676aedcd4774caec4ca3c4.jpg',1492741314,1,1492743137,1,1);

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
  `cn_other` text COMMENT '中文其它描述',
  `en_other` text COMMENT '英文其它描述',
  `istop` tinyint(3) unsigned DEFAULT NULL COMMENT '是否置顶',
  `top_sort` int(3) unsigned DEFAULT NULL COMMENT '置顶排序',
  `create_uid` int(11) DEFAULT NULL COMMENT '创建者uid',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间戳',
  `update_uid` int(11) DEFAULT NULL COMMENT '修改人uid',
  `update_time` int(10) DEFAULT NULL COMMENT '修改人时间戳',
  `status` int(11) DEFAULT NULL COMMENT '-1:删除，0-禁用，1：启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='产品库';

/*Data for the table `zxcms_product` */

insert  into `zxcms_product`(`id`,`cid`,`casno`,`product_pic`,`cn_title`,`en_title`,`sf_pic`,`cn_spec`,`en_spec`,`cn_desc`,`en_desc`,`cn_other`,`en_other`,`istop`,`top_sort`,`create_uid`,`create_time`,`update_uid`,`update_time`,`status`) values (1,2,'33-42-10-23','/static/home/img/product3.jpg','中文名称','中文名称','','兼职：12341241234\r\n知道：31234124234\r\n百度：1234124123424','中文名称','中文名称','中文名称',NULL,NULL,1,999,1,1492413336,1,1493043537,1),(2,2,'85-55-21-38','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(3,4,'26-14-94-25','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','阿萨德发水电费','1213412341234','','阿萨德发水电费','啊沙发沙发','阿萨德发水电费','啊沙发沙发',NULL,NULL,2,999,1,1493192245,1,1493192245,1),(4,4,'43-40-71-35','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(5,2,'62-6-40-84','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(6,4,'99-43-16-50','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(7,2,'2-61-100-13','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(8,3,'67-94-69-64','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(9,4,'12-66-93-67','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(10,2,'55-75-9-18','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(11,4,'63-63-24-29','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(12,4,'72-73-49-25','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(13,2,'76-5-98-74','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(14,4,'75-51-32-5','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(15,4,'29-29-59-6','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(16,4,'51-38-35-62','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(17,4,'6-42-93-39','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(18,3,'15-59-46-56','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(19,2,'41-34-48-36','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(20,2,'38-79-82-73','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(21,3,'17-66-80-100','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(22,1,'60-100-21-2','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(23,3,'49-39-45-9','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(24,1,'11-25-94-95','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(25,3,'93-77-8-8','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(26,1,'13-42-72-33','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(27,3,'48-41-58-70','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(28,2,'74-61-80-18','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(29,4,'47-83-74-20','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(30,3,'76-21-78-26','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(31,4,'93-89-66-61','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(32,4,'6-48-19-51','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(33,1,'98-38-96-65','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(34,4,'38-93-49-68','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(35,1,'91-51-80-46','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(36,3,'93-23-38-22','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(37,1,'92-96-3-26','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(38,1,'19-16-23-67','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(39,3,'68-35-71-51','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(40,2,'43-59-66-53','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(41,2,'68-77-83-83','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(42,4,'64-73-73-43','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(43,3,'98-57-94-97','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(44,3,'4-27-22-28','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(45,3,'76-95-45-41','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(46,2,'67-13-64-79','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(47,2,'2-71-51-42','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(48,1,'55-50-84-70','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(49,1,'98-78-97-49','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(50,3,'52-14-15-33','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(51,4,'18-89-90-84','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(52,2,'51-3-60-90','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(53,4,'72-88-23-52','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(54,3,'90-92-91-79','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(55,4,'22-73-98-72','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(56,1,'63-99-6-31','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(57,3,'37-92-47-60','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(58,3,'60-18-8-89','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(59,4,'18-22-56-14','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(60,4,'100-58-91-81','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(61,1,'32-17-88-89','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(62,1,'78-23-80-31','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(63,1,'16-85-76-26','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(64,1,'3-35-64-16','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(65,1,'88-89-82-42','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(66,3,'65-96-85-36','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(67,3,'24-14-98-47','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(68,1,'38-51-38-39','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(69,2,'79-79-56-41','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(70,4,'38-67-20-97','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(71,3,'24-30-79-4','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(72,3,'81-93-23-36','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(73,4,'11-44-89-11','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(74,4,'88-4-59-81','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(75,1,'29-99-7-37','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(76,3,'67-20-99-33','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(77,3,'69-43-11-23','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(78,1,'84-48-89-1','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(79,4,'38-85-11-1','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(80,2,'70-47-25-84','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(81,1,'45-70-17-76','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(82,3,'25-97-11-61','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(83,3,'75-89-19-29','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(84,3,'87-46-70-11','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(85,1,'43-82-81-57','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(86,1,'43-41-79-69','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(87,1,'6-26-10-71','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(88,2,'25-12-86-90','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(89,3,'95-2-24-14','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(90,2,'99-53-69-82','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(91,1,'5-79-77-48','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(92,1,'8-97-60-10','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(93,2,'67-4-20-89','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(94,4,'84-50-99-43','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(95,4,'18-62-55-89','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(96,1,'80-30-12-70','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(97,2,'14-58-47-61','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(98,3,'65-38-98-74','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(99,2,'76-55-50-83','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(100,4,'66-81-7-91','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(101,4,'35-99-92-63','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(102,3,'39-3-97-77','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(103,3,'94-40-15-54','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(104,2,'27-72-79-79','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(105,3,'58-52-84-63','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(106,1,'63-25-36-2','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(107,2,'5-19-78-34','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(108,1,'33-65-24-25','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(109,1,'54-91-96-7','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(110,4,'43-97-52-70','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(111,4,'95-65-40-2','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(112,1,'91-49-72-14','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(113,1,'51-13-11-15','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(114,1,'41-61-79-14','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(115,1,'32-19-99-36','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(116,3,'85-13-13-22','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(117,2,'73-99-73-70','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(118,2,'31-41-15-49','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(119,1,'2-60-95-95','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(120,4,'88-57-20-29','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(121,4,'82-24-73-94','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(122,3,'49-62-61-20','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(123,4,'19-31-97-94','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(124,4,'79-11-18-55','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(125,3,'22-42-47-5','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(126,4,'87-18-30-94','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(127,1,'81-20-56-20','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(128,4,'33-5-24-6','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(129,2,'55-56-17-16','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(130,1,'30-100-8-41','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(131,1,'80-77-46-98','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(132,4,'51-59-41-30','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(133,4,'24-31-82-17','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(134,4,'40-46-12-22','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(135,3,'71-89-30-85','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(136,3,'32-4-26-18','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(137,1,'9-91-29-70','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(138,2,'63-6-39-77','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(139,1,'69-12-51-18','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1),(140,3,'39-39-76-64','/uploads/20170424/a174eec882422c5742fb4d76c1791288.jpg','产品1','product1','/uploads/20170424/d855fdbf99919786f41b0167f1c3d3de.png','阿士大夫撒旦f','阿萨德发生','伺服阀撒的发','sdfg',NULL,NULL,1,999,1,1493042309,1,1493043447,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='产品类别中文库';

/*Data for the table `zxcms_product_category` */

insert  into `zxcms_product_category`(`id`,`icon`,`cn_title`,`en_title`,`cn_desc`,`en_desc`,`sort`,`create_uid`,`update_uid`,`create_time`,`update_time`,`status`) values (1,NULL,'阻燃剂','Flame retardant','化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.\r\n化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.','Qingdao Richkem Co., Ltd. is a high-tech fine chemical enterprise dedicated in researching and supplying flame retardants and intermediates.',1,1,1,1492179000,1492179000,1),(2,NULL,'阻燃母粒','Masterbatch','化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.','Qingdao Richkem Co., Ltd. is a high-tech fine chemical enterprise dedicated in researching and supplying flame retardants and intermediates.',2,1,1,1492179000,1492179000,1),(3,NULL,'中间体','Intermediates','化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.','Qingdao Richkem Co., Ltd. is a high-tech fine chemical enterprise dedicated in researching and supplying flame retardants and intermediates.',3,1,1,1492179000,1492179000,1),(4,NULL,'大林PLAVIS','Daelim Plavis','化学品是指各种元素组成的纯净物和混合物，无论是天然的还是人造的。 据美国化学文摘登录，全世界已有的化学品多达700万种，其中已作为商品上市的有10万余种，经常使用的有7万.','Qingdao Richkem Co., Ltd. is a high-tech fine chemical enterprise dedicated in researching and supplying flame retardants and intermediates.',4,1,1,1492179000,1492179000,1);

/*Table structure for table `zxcms_rule` */

DROP TABLE IF EXISTS `zxcms_rule`;

CREATE TABLE `zxcms_rule` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_rule` */

insert  into `zxcms_rule`(`uid`,`group_id`) values (2,2),(3,2);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

/*Data for the table `zxcms_slide` */

insert  into `zxcms_slide`(`id`,`cn_title`,`cn_subtitle`,`en_title`,`en_subtitle`,`content_img`,`sort`,`create_time`,`update_time`,`create_uid`,`update_uid`,`status`) values (1,'1真是一个很长的中文名称可以用来做测试','十公分的个十公分的个十公分的个十公分的个十公分的个','The position of national security adviser is extremely sensitive - effectively the ','The position of national security adviser is extremely sensitive - effectively the ','/uploads/20170424/690c1b9181530023c16b51320a69a390.jpg','3',1493044632,1493045262,1,1,'1'),(2,'2真是一个很长的中文名称可以用来做测试','十公分的个十公分的个十公分的个十公分的个十公分的个十公分的个十公分的个','The position of national security adviser is extremely sensitive - effectively the ','The position of national security adviser is extremely sensitive - effectively the ','/uploads/20170424/cef874ef37639d05c3b4d907a4150e35.jpg','78',1493044657,1493045249,1,1,'1'),(3,'3真是一个很长的中文名称可以用来做测试','十公分的个十公分的个十公分的个十公分的个十公分的个','The position of national security adviser is extremely sensitive - effectively the ','The position of national security adviser is extremely sensitive - effectively the ','/uploads/20170424/4c5da3c375efc4d292635c38bed4e277.jpg','999',1493045084,1493045214,1,1,'1'),(4,'4真是一个很长的中文名称可以用来做测试','十公分的个十公分的个十公分的个十公分的个十公分的个','The position of national security adviser is extremely sensitive - effectively the ','asdfasdf','/uploads/20170426/c2618e3733bfc69c2dc2d3cd144327da.jpg','999',1493186729,1493186785,1,1,'1');

/*Table structure for table `zxcms_user` */

DROP TABLE IF EXISTS `zxcms_user`;

CREATE TABLE `zxcms_user` (
  `id` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `lastloginip` int(10) DEFAULT '0',
  `lastlogintime` int(10) unsigned DEFAULT '0',
  `email` varchar(40) DEFAULT '',
  `mobile` varchar(11) DEFAULT '',
  `realname` varchar(50) DEFAULT '',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否有效(-1:删除，0无效,1:有效)',
  `updatetime` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_user` */

insert  into `zxcms_user`(`id`,`username`,`password`,`lastloginip`,`lastlogintime`,`email`,`mobile`,`realname`,`status`,`updatetime`) values (1,'admin','4297f44b13955235245b2497399d7a93',0,1493041650,'5552123@qq.com','18888873646','超级管理员',1,1492699587),(2,'zhenxun','9db06bcff9248837f86d1a6bcf41c9e7',2130706433,1476067533,'','18888873646','用户1',1,1476067742),(3,'zhangsan','9db06bcff9248837f86d1a6bcf41c9e7',0,0,'','','用户2',1,0),(4,'guanli1','9db06bcff9248837f86d1a6bcf41c9e7',0,1492698479,'','','管理1',1,1492698479),(5,'guanli2','9db06bcff9248837f86d1a6bcf41c9e7',0,1492698515,'','','管理二',1,1492698515),(6,'forks','63ee451939ed580ef3c4b6f0109d1fd0',0,1492734778,'','','allen wood',1,1492734778);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
