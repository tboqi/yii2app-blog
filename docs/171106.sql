/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.7.18-log : Database - yiiblog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiiblog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiiblog`;

/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('普通管理员','2',1509680679);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('普通管理员','4',1479267383);
insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('超级管理员','1',1467629090);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/*',2,NULL,NULL,NULL,1467628934,1467628934);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/*',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/article/*',2,NULL,NULL,NULL,1509686654,1509686654);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/*',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/assign',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/index',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/revoke',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/view',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/default/*',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/default/index',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/*',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/create',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/delete',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/index',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/update',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/view',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/*',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/assign',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/create',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/delete',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/index',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/remove',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/update',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/view',2,NULL,NULL,NULL,1467628930,1467628930);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/*',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/assign',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/create',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/delete',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/index',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/remove',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/update',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/view',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/*',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/assign',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/create',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/index',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/refresh',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/remove',2,NULL,NULL,NULL,1467628931,1467628931);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/*',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/create',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/delete',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/index',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/update',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/view',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/*',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/activate',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/change-password',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/create',2,NULL,NULL,NULL,1467626433,1467626433);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/delete',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/index',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/list',2,NULL,NULL,NULL,1467684059,1467684059);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/login',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/logout',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/request-password-reset',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/reset-password',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/signup',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/update',2,NULL,NULL,NULL,1467626433,1467626433);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/view',2,NULL,NULL,NULL,1467628932,1467628932);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/*',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/*',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/db-explain',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/download-mail',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/index',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/toolbar',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/debug/default/view',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/*',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/*',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/action',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/diff',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/index',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/preview',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/gii/default/view',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/index/welcome',2,NULL,NULL,NULL,1467885038,1467885038);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/*',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/error',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/index',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/login',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/logout',2,NULL,NULL,NULL,1467628933,1467628933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('普通管理员',1,'普通管理员',NULL,NULL,1467626553,1467626553);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('用户管理',2,'用户管理',NULL,NULL,1467626475,1467626475);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('超级权限',2,'超级权限拥有最高级系统权限',NULL,NULL,1467628984,1467629027);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('超级管理员',1,'超级管理员拥有最高级别系统权限',NULL,NULL,1467629059,1467629059);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/assignment/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/assignment/assign');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/assignment/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/assignment/revoke');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/assignment/view');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/default/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/menu/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/menu/create');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/menu/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/menu/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/menu/update');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/menu/view');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/permission/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/permission/assign');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/permission/create');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/permission/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/permission/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/permission/remove');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/permission/update');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/permission/view');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/role/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/role/assign');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/role/create');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/role/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/role/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/role/remove');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/role/update');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/role/view');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/route/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/route/assign');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/route/create');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/route/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/route/refresh');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/route/remove');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/rule/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/rule/create');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/rule/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/rule/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/rule/update');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/rule/view');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/activate');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/change-password');
insert  into `auth_item_child`(`parent`,`child`) values ('用户管理','/admin/user/create');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/create');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/delete');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/index');
insert  into `auth_item_child`(`parent`,`child`) values ('用户管理','/admin/user/list');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/list');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/login');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/logout');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/request-password-reset');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/reset-password');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/signup');
insert  into `auth_item_child`(`parent`,`child`) values ('用户管理','/admin/user/update');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/update');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/admin/user/view');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/debug/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/debug/default/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/debug/default/db-explain');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/debug/default/download-mail');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/debug/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/debug/default/toolbar');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/debug/default/view');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/gii/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/gii/default/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/gii/default/action');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/gii/default/diff');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/gii/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/gii/default/preview');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/gii/default/view');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/index/welcome');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/site/*');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/site/error');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/site/index');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/site/login');
insert  into `auth_item_child`(`parent`,`child`) values ('超级权限','/site/logout');
insert  into `auth_item_child`(`parent`,`child`) values ('普通管理员','用户管理');
insert  into `auth_item_child`(`parent`,`child`) values ('超级管理员','超级权限');

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `auth_rule` */

insert  into `auth_rule`(`name`,`data`,`created_at`,`updated_at`) values ('编辑文章','O:30:\"backend\\components\\ArticleRule\":3:{s:4:\"name\";s:12:\"编辑文章\";s:9:\"createdAt\";i:1467706283;s:9:\"updatedAt\";i:1467706305;}',1467706283,1467706305);

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `data` varchar(64) DEFAULT NULL,
  `create_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `log` */

insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (1,'lzkong1029','127.0.0.1','','1460439851');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (2,'lzkong1029','127.0.0.1','','1460441344');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (3,'test','127.0.0.1','','1460441372');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (4,'lzkong1029','127.0.0.1','','1460441448');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (5,'lzkong1029','127.0.0.1','','1460443092');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (6,'test','127.0.0.1','','1460510935');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (7,'lzkong1029','127.0.0.1','','1460511022');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (8,'lzkong1029','127.0.0.1','','1460511099');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (9,'test','127.0.0.1','','1460511126');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (10,'lzkong1029','127.0.0.1','','1460518525');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (11,'test','127.0.0.1','','1460529644');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (12,'lzkong1029','127.0.0.1','','1460683222');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (13,'test','127.0.0.1','','1460687319');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (14,'lzkong1029','127.0.0.1','','1460687331');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (15,'admin','127.0.0.1','','1460687467');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (16,'admin','127.0.0.1','','1460713859');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (17,'admin','127.0.0.1','','1466130336');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (18,'test','127.0.0.1','','1467701285');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (19,'admin','127.0.0.1','','1467704379');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (20,'admin','127.0.0.1','','1467711872');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (21,'test','127.0.0.1','','1467711883');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (22,'admin','127.0.0.1','','1467712267');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (23,'test','127.0.0.1','','1467799040');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (24,'admin','127.0.0.1','','1467806743');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (25,'admin','127.0.0.1','','1467874541');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (26,'test','127.0.0.1','','1467885125');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (27,'admin','127.0.0.1','','1467888107');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (28,'admin','127.0.0.1','','1479280452');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (29,'admin','127.0.0.1','','1479280483');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (30,'admin','172.17.0.1','---','1509686358');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (31,'admin','172.17.0.1','---','1509692827');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (32,'admin','172.17.0.1','---','1509692885');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (33,'admin','172.17.0.1','---','1509699145');
insert  into `log`(`id`,`username`,`ip`,`data`,`create_time`) values (34,'admin','172.17.0.1','---','1509699980');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (1,'用户中心',NULL,'/admin/user/list',NULL,'{\"icon\": \"fa fa-user\"}');
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (2,'权限控制',NULL,'/admin/default/index',1,'{\"icon\": \"fa fa-key\"}');
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (3,'路由列表',2,'/admin/route/index',2,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (4,'菜单管理',2,'/admin/menu/index',7,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (5,'权限管理',2,'/admin/permission/index',3,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (6,'角色管理',2,'/admin/role/index',4,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (7,'分配权限',2,'/admin/assignment/index',5,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (9,'规则管理',2,'/admin/rule/index',6,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (10,'新增用户',1,'/admin/user/create',2,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (11,'用户管理',1,'/admin/user/list',8,'{\"icon\": \"fa fa-group\"}');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (1,'admin','C5f5K1Kg8tL-IutYAom4-s7RMh_xMk_l','$2y$13$zUhKPW6Y69gn.DDWjSI.kOp9OXZWSuMDTq5JRZvw6yK9dr2QK43qu',NULL,'272067517@qq.com',10,1467626063,1467626063);
insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (2,'test','C5f5K1Kg8tL-IutYAom4-s7RMh_xMk_l','$2y$13$zUhKPW6Y69gn.DDWjSI.kOp9OXZWSuMDTq5JRZvw6yK9dr2QK43qu',NULL,'2720675171@qq.com',10,1467629909,1467629909);

/*Table structure for table `userbak` */

DROP TABLE IF EXISTS `userbak`;

CREATE TABLE `userbak` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `auth_key` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `password_hash` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `userbak` */

insert  into `userbak`(`id`,`username`,`auth_key`,`status`,`password_hash`) values (1,'admin','LkHEFE_bQ9aOz1cDiQ2IUezuC90bjEde',10,'$2y$13$He3qENCatXq/4w3T6Q/q8edvnLRRdDEyxFMqs8OqiqnlnBG33sVkS');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
