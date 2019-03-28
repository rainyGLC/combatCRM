# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.24)
# Database: combatCRM
# Generation Time: 2019-03-28 09:27:59 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table clue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clue`;

CREATE TABLE `clue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` int(11) DEFAULT NULL COMMENT '跟踪销售',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `comment` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `clue` WRITE;
/*!40000 ALTER TABLE `clue` DISABLE KEYS */;

INSERT INTO `clue` (`id`, `name`, `phone`, `source`, `create_time`, `user_id`, `status`, `comment`)
VALUES
	(1,'coco','123456789','baidu','2019-03-28 08:17:52',2,4,'备注'),
	(2,'dany','12345678902','baidu','2019-03-28 08:15:26',3,3,'备注'),
	(3,'effy','1234567893','zhihu','2019-03-28 01:47:25',2,3,'备注2');

/*!40000 ALTER TABLE `clue` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table clue_record
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clue_record`;

CREATE TABLE `clue_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `clue_id` int(11) DEFAULT NULL COMMENT '线索id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `clue_record` WRITE;
/*!40000 ALTER TABLE `clue_record` DISABLE KEYS */;

INSERT INTO `clue_record` (`id`, `content`, `clue_id`, `create_time`)
VALUES
	(1,'跟踪一',1,'2019-03-27 23:54:38'),
	(2,'跟踪内容',3,'2019-03-28 08:11:13'),
	(3,'跟踪内容',3,'2019-03-28 08:11:13'),
	(4,'跟踪内容1',2,'2019-03-28 08:16:09'),
	(5,'跟踪内容1',2,'2019-03-28 08:16:09'),
	(6,'跟踪内容二',1,'2019-03-28 08:18:20'),
	(7,'跟踪内容二',1,'2019-03-28 08:18:20');

/*!40000 ALTER TABLE `clue_record` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(255) NOT NULL DEFAULT '' COMMENT '电话',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `role` int(11) DEFAULT NULL COMMENT '角色',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `phone`, `password`, `role`, `create_time`)
VALUES
	(1,'anan','13480235227','1234567',1,'2019-03-26 20:42:28'),
	(2,'bobs','12345678902','123456',2,'2019-03-26 22:37:52'),
	(3,'city','15119313660','123456',2,'2019-03-26 20:43:58');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
