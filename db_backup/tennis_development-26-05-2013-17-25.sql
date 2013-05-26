# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.27)
# Database: tennis_development
# Generation Time: 2013-05-26 16:25:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table coaches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `coaches`;

CREATE TABLE `coaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;

INSERT INTO `coaches` (`id`, `name`, `created_at`, `updated_at`, `user_id`)
VALUES
	(1,'Ricky','2013-05-25 21:42:02','2013-05-25 21:42:02',1),
	(2,'James','2013-05-25 21:42:10','2013-05-25 21:42:10',1),
	(3,'Gary','2013-05-25 21:42:17','2013-05-25 21:42:17',1),
	(4,'Dinos','2013-05-25 21:42:23','2013-05-25 21:42:23',1),
	(5,'New Coach (University)','2013-05-26 14:39:37','2013-05-26 14:39:37',1),
	(11,'Ricky','2013-05-26 15:48:14','2013-05-26 16:07:14',2);

/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table disciplines
# ------------------------------------------------------------

DROP TABLE IF EXISTS `disciplines`;

CREATE TABLE `disciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;

INSERT INTO `disciplines` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'Forehand','2013-05-25 21:46:12','2013-05-25 21:46:12'),
	(2,'Backhand','2013-05-25 21:46:22','2013-05-25 21:46:22'),
	(3,'Serve','2013-05-25 21:46:43','2013-05-25 21:46:43'),
	(4,'Dropshot','2013-05-25 21:46:50','2013-05-25 21:46:50'),
	(5,'Lob','2013-05-25 21:46:56','2013-05-25 21:46:56'),
	(6,'Volleys','2013-05-25 21:47:14','2013-05-25 21:47:14'),
	(7,'Fitness','2013-05-25 21:47:22','2013-05-25 21:47:22'),
	(8,'Footwork','2013-05-25 21:47:30','2013-05-25 21:47:30'),
	(9,'Scoring','2013-05-25 21:47:39','2013-05-25 21:47:39'),
	(10,'Match Play','2013-05-25 23:17:10','2013-05-25 23:23:21'),
	(11,'Rallying','2013-05-25 23:17:32','2013-05-25 23:23:30'),
	(14,'Other','2013-05-26 16:04:01','2013-05-26 16:04:01');

/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table lessons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lessons`;

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `coach_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `location_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;

INSERT INTO `lessons` (`id`, `date`, `coach_id`, `notes`, `location_id`, `type_id`, `created_at`, `updated_at`, `player_id`, `points`)
VALUES
	(1,'2013-05-25 11:00:00',1,'Overall quite good',3,1,'2013-05-25 21:56:27','2013-05-26 16:14:39',1,9),
	(2,'2013-05-24 16:30:00',2,'cancelled due to weather',2,2,'2013-05-25 23:38:07','2013-05-26 07:14:29',1,0),
	(4,'2013-05-26 11:30:00',5,'amazing lesson',1,3,'2013-05-26 07:21:51','2013-05-26 16:18:06',1,10),
	(7,'2013-05-26 17:07:00',11,'sadasd',4,7,'2013-05-26 16:07:45','2013-05-26 16:07:45',2,9);

/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`, `user_id`)
VALUES
	(1,'The Elms - Small Courts','2013-05-25 21:42:43','2013-05-25 21:42:43',1),
	(2,'The Elms - Large Courts','2013-05-25 21:42:54','2013-05-25 21:42:54',1),
	(3,'Boxtree Park','2013-05-25 21:43:06','2013-05-25 21:43:06',1),
	(4,'elms','2013-05-26 15:55:51','2013-05-26 15:55:51',2);

/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table performances
# ------------------------------------------------------------

DROP TABLE IF EXISTS `performances`;

CREATE TABLE `performances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discipline_id` int(11) DEFAULT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  `notes` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `performances` WRITE;
/*!40000 ALTER TABLE `performances` DISABLE KEYS */;

INSERT INTO `performances` (`id`, `discipline_id`, `lesson_id`, `points`, `notes`, `created_at`, `updated_at`)
VALUES
	(1,4,1,9,'Only use this shot when close to the net','2013-05-25 21:58:37','2013-05-26 13:44:00'),
	(2,1,1,5,'Remember to turn sideways','2013-05-25 22:01:16','2013-05-25 22:01:16'),
	(3,7,1,4,'Good Running','2013-05-25 22:02:18','2013-05-25 22:02:18'),
	(4,10,1,4,'Good play - Hit Ricky :)','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(5,11,1,3,'Good Control','0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(6,5,NULL,10,'aeawea','2013-05-26 13:56:51','2013-05-26 13:56:51'),
	(10,11,4,10,'amazing','2013-05-26 14:39:11','2013-05-26 14:39:11'),
	(11,1,4,10,'','2013-05-26 14:40:08','2013-05-26 14:40:08'),
	(12,2,4,9,'A lot of backhand work','2013-05-26 14:40:14','2013-05-26 14:43:50'),
	(13,10,4,10,'','2013-05-26 14:40:24','2013-05-26 14:40:24'),
	(14,6,7,6,'','2013-05-26 16:08:07','2013-05-26 16:08:07'),
	(15,7,7,0,'e2','2013-05-26 16:08:19','2013-05-26 16:08:19'),
	(16,4,9,8,'good work','2013-05-26 16:19:19','2013-05-26 16:19:19'),
	(17,7,9,10,'','2013-05-26 16:19:27','2013-05-26 16:19:27');

/*!40000 ALTER TABLE `performances` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table players
# ------------------------------------------------------------

DROP TABLE IF EXISTS `players`;

CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;

INSERT INTO `players` (`id`, `first_name`, `last_name`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Katelyn','Baker',1,'2013-05-25 21:46:00','2013-05-25 21:46:00'),
	(2,'Jayden','Lee',2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(3,'Vivienne','Baker',1,'2013-05-26 15:20:09','2013-05-26 15:20:09');

/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20130525205210'),
	('20130525205300'),
	('20130525205312'),
	('20130525205618'),
	('20130525205735'),
	('20130525211811'),
	('20130525213455'),
	('20130525214423'),
	('20130525214920'),
	('20130525231014'),
	('20130525233552'),
	('20130526065229'),
	('20130526065458'),
	('20130526152941');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tournaments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tournaments`;

CREATE TABLE `tournaments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`, `user_id`)
VALUES
	(1,'Private','2013-05-26 07:07:19','2013-05-26 07:07:19',1),
	(2,'SOE','2013-05-26 07:07:37','2013-05-26 07:07:37',1),
	(3,'Group','2013-05-26 07:07:48','2013-05-26 07:14:54',1),
	(6,'Private','2013-05-26 16:06:43','2013-05-26 16:06:43',2),
	(7,'SOE','2013-05-26 16:06:49','2013-05-26 16:06:49',2);

/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `string` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `first_name`, `string`, `last_name`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`)
VALUES
	(1,'clive@clivebaker.com','$2a$10$Yq.qT.myRj/syYiezMET4uZ8uhM5wT/7bBjT.Mbq0bSWCUSEdNt0m','Clive','','Baker',NULL,NULL,NULL,7,'2013-05-26 16:10:48','2013-05-26 16:08:44','127.0.0.1','127.0.0.1','2013-05-25 21:54:29','2013-05-26 16:10:48'),
	(2,'clive+1@clivebaker.com','$2a$10$3gmfw6YMOIWIo7XMM52gf.YJdp0aBdVAIb160h7lSo0BvWxKRyx5u','Julia','','Lee',NULL,NULL,NULL,4,'2013-05-26 16:10:16','2013-05-26 15:39:09','127.0.0.1','127.0.0.1','2013-05-26 15:17:39','2013-05-26 16:10:16');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
