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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_clients` */

insert  into `zxcms_clients`(`id`,`en_name`,`cn_name`,`icon`,`link`,`create_time`,`create_uid`,`update_time`,`update_uid`,`status`) values (1,'asdfasdf','asdfasdf','/uploads/20170421/5a34e0248009273edffea231d27be83f.jpg','http://www.baidu.com',1492745044,1,1492745385,1,1),(2,'中文','中文','/uploads/20170421/04a131cb8007ab9a7c4463ab103e25d4.jpg','http://www.sina.com.cn',1492745543,1,1492745562,1,1);

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
  `create_uid` int(10) unsigned NOT NULL COMMENT '创建者uid',
  `update_uid` int(10) unsigned NOT NULL COMMENT '更新者uid',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(4) NOT NULL COMMENT '状态：-1 删除，0-禁用，1-发布 2-草稿',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='平台新闻表';

/*Data for the table `zxcms_events` */

insert  into `zxcms_events`(`id`,`cn_title`,`en_title`,`cn_content`,`en_content`,`attache_name`,`attache_url`,`create_uid`,`update_uid`,`create_time`,`update_time`,`status`) values (7,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','sdf asdf asf asdf asfasdf','1','1',1,1,1,1,1),(8,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','按时发放','1','1',1,1,1,1,1),(9,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发','','',1,1,1487059118,1487059118,1),(10,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(11,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(12,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(13,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(14,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','1','1',1,1,1,1,1),(15,'asfa sf asfasf','','','asdf asfasfd','','',1,1,1487060748,1487060748,1),(16,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','<span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span><span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span>','','',1,1,1487060764,1487060764,1),(17,'阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发','','','<span style=\"color:#686868;font-family:&quot;font-size:14px;background-color:#F2F2F2;\">阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发阿萨德发</span>','','',1,1,1487060895,1487060895,1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `zxcms_honor` */

insert  into `zxcms_honor`(`id`,`en_title`,`cn_title`,`en_desc`,`cn_desc`,`img`,`create_time`,`create_uid`,`update_time`,`update_uid`,`status`) values (1,'asdfasd','sdfas','asdfasdf','asdfasdf','',1492741295,1,1492741295,1,1),(2,'asdfasd','asdfasf','asdfasdfasdf','ffasdfasdf','/uploads/20170421/e62a8cafd6a2cfd3c5a4795720be4822.jpg',1492741314,1,1492743137,1,1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='幻灯片表';

/*Data for the table `zxcms_slide` */

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

insert  into `zxcms_user`(`id`,`username`,`password`,`lastloginip`,`lastlogintime`,`email`,`mobile`,`realname`,`status`,`updatetime`) values (1,'admin','4297f44b13955235245b2497399d7a93',0,1492831925,'5552123@qq.com','18888873646','超级管理员',1,1492699587),(2,'zhenxun','9db06bcff9248837f86d1a6bcf41c9e7',2130706433,1476067533,'','18888873646','用户1',1,1476067742),(3,'zhangsan','9db06bcff9248837f86d1a6bcf41c9e7',0,0,'','','用户2',1,0),(4,'guanli1','9db06bcff9248837f86d1a6bcf41c9e7',0,1492698479,'','','管理1',1,1492698479),(5,'guanli2','9db06bcff9248837f86d1a6bcf41c9e7',0,1492698515,'','','管理二',1,1492698515),(6,'forks','63ee451939ed580ef3c4b6f0109d1fd0',0,1492734778,'','','allen wood',1,1492734778);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
