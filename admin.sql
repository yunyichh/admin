# Host: localhost  (Version: 5.5.53)
# Date: 2019-08-28 15:22:51
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin_menu"
#

DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_menu"
#

/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8,0,8,'Diy','fa-bars','users','*','2019-08-28 07:07:39','2019-08-28 07:13:40');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;

#
# Structure for table "admin_operation_log"
#

DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_operation_log"
#

/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','127.0.0.1','[]','2019-08-28 06:49:22','2019-08-28 06:49:22'),(2,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 06:49:27','2019-08-28 06:49:27'),(3,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 06:49:29','2019-08-28 06:49:29'),(4,1,'admin/auth/users','GET','127.0.0.1','[]','2019-08-28 06:49:29','2019-08-28 06:49:29'),(5,1,'admin','GET','127.0.0.1','[]','2019-08-28 06:56:35','2019-08-28 06:56:35'),(6,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 06:56:38','2019-08-28 06:56:38'),(7,1,'admin/auth/users','GET','127.0.0.1','[]','2019-08-28 06:56:38','2019-08-28 06:56:38'),(8,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 06:56:55','2019-08-28 06:56:55'),(9,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 06:56:57','2019-08-28 06:56:57'),(10,1,'admin/auth/roles','GET','127.0.0.1','[]','2019-08-28 06:56:57','2019-08-28 06:56:57'),(11,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 06:57:01','2019-08-28 06:57:01'),(12,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 06:57:03','2019-08-28 06:57:03'),(13,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 06:58:38','2019-08-28 06:58:38'),(14,1,'admin/auth/users','GET','127.0.0.1','[]','2019-08-28 06:58:38','2019-08-28 06:58:38'),(15,1,'admin/auth/users','GET','127.0.0.1','[]','2019-08-28 07:03:39','2019-08-28 07:03:39'),(16,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:03:44','2019-08-28 07:03:44'),(17,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:03:53','2019-08-28 07:03:53'),(18,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:03:59','2019-08-28 07:03:59'),(19,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:04:04','2019-08-28 07:04:04'),(20,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:04:05','2019-08-28 07:04:05'),(21,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:04:18','2019-08-28 07:04:18'),(22,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:04:19','2019-08-28 07:04:19'),(23,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:04:20','2019-08-28 07:04:20'),(24,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:04:20','2019-08-28 07:04:20'),(25,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:04:21','2019-08-28 07:04:21'),(26,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:05:49','2019-08-28 07:05:49'),(27,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:05:49','2019-08-28 07:05:49'),(28,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:05:50','2019-08-28 07:05:50'),(29,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:05:53','2019-08-28 07:05:53'),(30,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:05:56','2019-08-28 07:05:56'),(31,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:14','2019-08-28 07:06:14'),(32,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:15','2019-08-28 07:06:15'),(33,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:15','2019-08-28 07:06:15'),(34,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:16','2019-08-28 07:06:16'),(35,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:17','2019-08-28 07:06:17'),(36,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:21','2019-08-28 07:06:21'),(37,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:26','2019-08-28 07:06:26'),(38,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:28','2019-08-28 07:06:28'),(39,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:29','2019-08-28 07:06:29'),(40,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:06:29','2019-08-28 07:06:29'),(41,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-bars\",\"uri\":\"users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pBn4wcoZXvyifj2Ij1F8SMBT78oF3vGxLCRPtYYb\"}','2019-08-28 07:07:39','2019-08-28 07:07:39'),(42,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-08-28 07:07:39','2019-08-28 07:07:39'),(43,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:07:45','2019-08-28 07:07:45'),(44,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:07:47','2019-08-28 07:07:47'),(45,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:07:53','2019-08-28 07:07:53'),(46,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-08-28 07:08:02','2019-08-28 07:08:02'),(47,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:08:09','2019-08-28 07:08:09'),(48,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:08:18','2019-08-28 07:08:18'),(49,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-bars\",\"uri\":\"admin\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pBn4wcoZXvyifj2Ij1F8SMBT78oF3vGxLCRPtYYb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.gohosts.com\\/admin\\/auth\\/menu\"}','2019-08-28 07:08:24','2019-08-28 07:08:24'),(50,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-08-28 07:08:24','2019-08-28 07:08:24'),(51,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:08:27','2019-08-28 07:08:27'),(52,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-08-28 07:08:35','2019-08-28 07:08:35'),(53,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:08:42','2019-08-28 07:08:42'),(54,1,'admin','GET','127.0.0.1','[]','2019-08-28 07:08:57','2019-08-28 07:08:57'),(55,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:03','2019-08-28 07:09:03'),(56,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:06','2019-08-28 07:09:06'),(57,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pBn4wcoZXvyifj2Ij1F8SMBT78oF3vGxLCRPtYYb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.gohosts.com\\/admin\\/auth\\/menu\"}','2019-08-28 07:09:13','2019-08-28 07:09:13'),(58,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-08-28 07:09:13','2019-08-28 07:09:13'),(59,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:14','2019-08-28 07:09:14'),(60,1,'admin','GET','127.0.0.1','[]','2019-08-28 07:09:25','2019-08-28 07:09:25'),(61,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:28','2019-08-28 07:09:28'),(62,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:30','2019-08-28 07:09:30'),(63,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:32','2019-08-28 07:09:32'),(64,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:36','2019-08-28 07:09:36'),(65,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:39','2019-08-28 07:09:39'),(66,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Diy\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pBn4wcoZXvyifj2Ij1F8SMBT78oF3vGxLCRPtYYb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.gohosts.com\\/admin\\/auth\\/menu\"}','2019-08-28 07:09:45','2019-08-28 07:09:45'),(67,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-08-28 07:09:45','2019-08-28 07:09:45'),(68,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:48','2019-08-28 07:09:48'),(69,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"pBn4wcoZXvyifj2Ij1F8SMBT78oF3vGxLCRPtYYb\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}','2019-08-28 07:09:49','2019-08-28 07:09:49'),(70,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:49','2019-08-28 07:09:49'),(71,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:50','2019-08-28 07:09:50'),(72,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:51','2019-08-28 07:09:51'),(73,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:53','2019-08-28 07:09:53'),(74,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:57','2019-08-28 07:09:57'),(75,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:57','2019-08-28 07:09:57'),(76,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:09:59','2019-08-28 07:09:59'),(77,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:10:00','2019-08-28 07:10:00'),(78,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:10:01','2019-08-28 07:10:01'),(79,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:10:05','2019-08-28 07:10:05'),(80,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:10:07','2019-08-28 07:10:07'),(81,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:11:23','2019-08-28 07:11:23'),(82,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:11:28','2019-08-28 07:11:28'),(83,1,'admin','GET','127.0.0.1','[]','2019-08-28 07:12:44','2019-08-28 07:12:44'),(84,1,'admin','GET','127.0.0.1','[]','2019-08-28 07:12:47','2019-08-28 07:12:47'),(85,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:12:49','2019-08-28 07:12:49'),(86,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:12:52','2019-08-28 07:12:52'),(87,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:12:55','2019-08-28 07:12:55'),(88,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:12:57','2019-08-28 07:12:57'),(89,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:01','2019-08-28 07:13:01'),(90,1,'admin/users','GET','127.0.0.1','[]','2019-08-28 07:13:21','2019-08-28 07:13:21'),(91,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:29','2019-08-28 07:13:29'),(92,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:33','2019-08-28 07:13:33'),(93,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Diy\",\"icon\":\"fa-bars\",\"uri\":\"users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pBn4wcoZXvyifj2Ij1F8SMBT78oF3vGxLCRPtYYb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.gohosts.com\\/admin\\/auth\\/menu\"}','2019-08-28 07:13:40','2019-08-28 07:13:40'),(94,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-08-28 07:13:40','2019-08-28 07:13:40'),(95,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:43','2019-08-28 07:13:43'),(96,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:44','2019-08-28 07:13:44'),(97,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:44','2019-08-28 07:13:44'),(98,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:48','2019-08-28 07:13:48'),(99,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:51','2019-08-28 07:13:51'),(100,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:53','2019-08-28 07:13:53'),(101,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:55','2019-08-28 07:13:55'),(102,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:56','2019-08-28 07:13:56'),(103,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:56','2019-08-28 07:13:56'),(104,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:58','2019-08-28 07:13:58'),(105,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:13:59','2019-08-28 07:13:59'),(106,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:03','2019-08-28 07:14:03'),(107,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:05','2019-08-28 07:14:05'),(108,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"pBn4wcoZXvyifj2Ij1F8SMBT78oF3vGxLCRPtYYb\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}','2019-08-28 07:14:06','2019-08-28 07:14:06'),(109,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:07','2019-08-28 07:14:07'),(110,1,'admin/auth/menu/8/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:14','2019-08-28 07:14:14'),(111,1,'admin/auth/menu/8','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"Diy\",\"icon\":\"fa-bars\",\"uri\":\"users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pBn4wcoZXvyifj2Ij1F8SMBT78oF3vGxLCRPtYYb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.gohosts.com\\/admin\\/auth\\/menu\"}','2019-08-28 07:14:18','2019-08-28 07:14:18'),(112,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-08-28 07:14:18','2019-08-28 07:14:18'),(113,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:20','2019-08-28 07:14:20'),(114,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:26','2019-08-28 07:14:26'),(115,1,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:43','2019-08-28 07:14:43'),(116,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:45','2019-08-28 07:14:45'),(117,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:51','2019-08-28 07:14:51'),(118,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:14:58','2019-08-28 07:14:58'),(119,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:15:05','2019-08-28 07:15:05'),(120,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:15:09','2019-08-28 07:15:09'),(121,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:15:12','2019-08-28 07:15:12'),(122,1,'admin','GET','127.0.0.1','[]','2019-08-28 07:15:19','2019-08-28 07:15:19'),(123,1,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:15:22','2019-08-28 07:15:22'),(124,1,'admin/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:15:25','2019-08-28 07:15:25'),(125,1,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:15:30','2019-08-28 07:15:30'),(126,1,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:15:31','2019-08-28 07:15:31'),(127,1,'admin','GET','127.0.0.1','[]','2019-08-28 07:21:33','2019-08-28 07:21:33'),(128,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:21:36','2019-08-28 07:21:36'),(129,1,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-08-28 07:21:37','2019-08-28 07:21:37');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;

#
# Structure for table "admin_permissions"
#

DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_permissions"
#

/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;

#
# Structure for table "admin_role_menu"
#

DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_role_menu"
#

/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,8,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;

#
# Structure for table "admin_role_permissions"
#

DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_role_permissions"
#

/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;

#
# Structure for table "admin_role_users"
#

DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_role_users"
#

/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;

#
# Structure for table "admin_roles"
#

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_roles"
#

/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-08-21 06:48:40','2019-08-21 06:48:40');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;

#
# Structure for table "admin_user_permissions"
#

DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_user_permissions"
#

/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;

#
# Structure for table "admin_users"
#

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "admin_users"
#

/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$7bzrUXU7r36pbHw7V8C/OeB9CGm7G2GSFYKKHt93ddPUDtWhDjevC','Administrator',NULL,'iKyu5MKieGK9s7Yl7y9KEQfO6KuL0IO5A2rqiPWK12OQnZe8b02Xf9dze6eN','2019-08-21 06:48:40','2019-08-21 06:48:40');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;

#
# Structure for table "migrations"
#

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "migrations"
#

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

#
# Structure for table "password_resets"
#

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "password_resets"
#

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
