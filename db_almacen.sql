/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - db_almacen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_almacen` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_almacen`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5089 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(5054,'2012_10_12_000000_create_users_table',1),
(5055,'2013_05_21_100000_create_teams_table',1),
(5056,'2014_10_12_100000_create_password_resets_table',1),
(5057,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),
(5058,'2019_08_19_000000_create_failed_jobs_table',1),
(5059,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5060,'2020_05_21_200000_create_team_user_table',1),
(5061,'2020_11_02_053654_wh_currency',1),
(5062,'2020_11_02_055432_wh_warehouse',1),
(5063,'2020_11_02_083324_create_sessions_table',1),
(5064,'2020_11_02_084430_wh_line',1),
(5065,'2020_11_02_084439_wh_sub_line',1),
(5066,'2020_11_02_084448_wh_family',1),
(5067,'2020_11_02_084519_wh_bar_code',1),
(5068,'2020_11_02_084601_wh_reason',1),
(5069,'2020_11_02_084649_wh_product',1),
(5070,'2020_11_02_084657_wh_minput',1),
(5071,'2020_11_02_084709_wh_minput_line',1),
(5072,'2020_11_02_084724_wh_moutput',1),
(5073,'2020_11_02_084732_wh_moutput_line',1),
(5074,'2020_11_02_084800_wh_transfer',1),
(5075,'2020_11_02_084807_wh_transfer_line',1),
(5076,'2020_11_02_084845_wh_production',1),
(5077,'2020_11_02_084852_wh_production_line',1),
(5078,'2020_11_03_204500_wh_um',1),
(5079,'2020_11_04_061934_wh_bpartner',1),
(5080,'2020_11_04_154442_wh_temp',1),
(5081,'2020_11_09_002024_wh_stock',1),
(5082,'2020_11_09_144528_wh_bank',1),
(5083,'2020_11_09_152223_bank_received',1),
(5084,'2020_11_09_152344_bank_delivered',1),
(5085,'2020_11_10_003507_wh_doc_type',1),
(5086,'2020_11_26_050021_create_wh_team_grants_table',1),
(5087,'2020_12_03_024854_create_wh_sequencers_table',1),
(5088,'2022_11_10_004346_wh_param',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('Dao6FfkTVnxarnwQVFIz6MKigDwZAvLOeySQDjIV',1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTXNvejRmWm9CeWVOeXV5N3Z3c3VhZmRUa3pGd1AxMWo0VDdRZ2tlMyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vYWxtYWNlbi5sb2NhbGhvc3QvYmFuay9yZWNlaXZlZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRuV1JteHdNTHduNzRDRk5KWllROTkuaGlsYUdJSXZHU1JhaVg5aWFyLjZwMk9odFJnWnpuZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbldSbXh3TUx3bjc0Q0ZOSlpZUTk5LmhpbGFHSUl2R1NSYWlYOWlhci42cDJPaHRSZ1p6bmUiO30=',1607050936);

/*Table structure for table `team_user` */

DROP TABLE IF EXISTS `team_user`;

CREATE TABLE `team_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `team_user` */

/*Table structure for table `wh_bank_delivered` */

DROP TABLE IF EXISTS `wh_bank_delivered`;

CREATE TABLE `wh_bank_delivered` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `amount` double DEFAULT NULL,
  `exchange` double unsigned DEFAULT 1,
  `bpartner_id` bigint(20) unsigned DEFAULT NULL,
  `currency_id` bigint(20) unsigned DEFAULT NULL,
  `bank_id` bigint(20) unsigned DEFAULT NULL,
  `doctype` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_bank_delivered_bpartner_id_foreign` (`bpartner_id`),
  KEY `wh_bank_delivered_currency_id_foreign` (`currency_id`),
  KEY `wh_bank_delivered_bank_id_foreign` (`bank_id`),
  CONSTRAINT `wh_bank_delivered_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `wh_banks` (`id`),
  CONSTRAINT `wh_bank_delivered_bpartner_id_foreign` FOREIGN KEY (`bpartner_id`) REFERENCES `wh_bpartners` (`id`),
  CONSTRAINT `wh_bank_delivered_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `wh_currency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_bank_delivered` */

insert  into `wh_bank_delivered`(`id`,`datetrx`,`amount`,`exchange`,`bpartner_id`,`currency_id`,`bank_id`,`doctype`,`documentno`,`office`,`observation`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'2020-11-23',300.55,1,1,1,1,'EFE',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'2020-11-26',320.45,1,1,1,1,'EFE',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'2020-11-27',117.5,1,1,1,1,'EFE',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `wh_bank_received` */

DROP TABLE IF EXISTS `wh_bank_received`;

CREATE TABLE `wh_bank_received` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `amount` double DEFAULT NULL,
  `exchange` double unsigned DEFAULT 1,
  `bpartner_id` bigint(20) unsigned DEFAULT NULL,
  `currency_id` bigint(20) unsigned DEFAULT NULL,
  `bank_id` bigint(20) unsigned DEFAULT NULL,
  `doctype` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentno` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_bank_received_bpartner_id_foreign` (`bpartner_id`),
  KEY `wh_bank_received_currency_id_foreign` (`currency_id`),
  KEY `wh_bank_received_bank_id_foreign` (`bank_id`),
  CONSTRAINT `wh_bank_received_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `wh_banks` (`id`),
  CONSTRAINT `wh_bank_received_bpartner_id_foreign` FOREIGN KEY (`bpartner_id`) REFERENCES `wh_bpartners` (`id`),
  CONSTRAINT `wh_bank_received_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `wh_currency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_bank_received` */

insert  into `wh_bank_received`(`id`,`datetrx`,`amount`,`exchange`,`bpartner_id`,`currency_id`,`bank_id`,`doctype`,`documentno`,`office`,`observation`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'2020-11-18',2500,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'2020-11-20',2500,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'2020-11-23',3200,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(4,'2020-11-25',1500,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `wh_banks` */

DROP TABLE IF EXISTS `wh_banks`;

CREATE TABLE `wh_banks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bankname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_banks` */

insert  into `wh_banks`(`id`,`bankname`,`currency_id`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'BCP SOLES',1,'Y',NULL,NULL,NULL,NULL),
(2,'BBVA SOLES',2,'Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_bpartners` */

DROP TABLE IF EXISTS `wh_bpartners`;

CREATE TABLE `wh_bpartners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bpartnername` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpartnercode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documentno` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpartnertype` enum('C','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `creditline` double(15,6) DEFAULT 0.000000,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_bpartners` */

insert  into `wh_bpartners`(`id`,`bpartnername`,`bpartnercode`,`shortname`,`documentno`,`bpartnertype`,`isactive`,`creditline`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'GRUPO SBF PERU SAC','C20606384387',NULL,NULL,'C','Y',0.000000,NULL,NULL,NULL,NULL),
(2,'CLIENTE UNO SAC','C20123456789',NULL,NULL,'C','Y',0.000000,NULL,NULL,NULL,NULL),
(3,'SIFUENTES LETELIER ELIZABETH','C10123456780',NULL,NULL,'C','Y',0.000000,NULL,NULL,NULL,NULL),
(4,'TRICOT FINE SAC','C20000000001',NULL,NULL,'C','Y',0.000000,NULL,NULL,NULL,NULL),
(5,'COMERCIAL PICHARA PERU SAC','P20602367615',NULL,NULL,'P','Y',0.000000,NULL,NULL,NULL,NULL);

/*Table structure for table `wh_currency` */

DROP TABLE IF EXISTS `wh_currency`;

CREATE TABLE `wh_currency` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isoname` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suffix` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_currency` */

insert  into `wh_currency`(`id`,`currencyname`,`isoname`,`prefix`,`suffix`,`symbol`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'SOLES','PEN',NULL,NULL,'S/','Y',NULL,NULL,NULL,NULL),
(2,'DOLAR','USD',NULL,NULL,'$','Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_doc_type` */

DROP TABLE IF EXISTS `wh_doc_type`;

CREATE TABLE `wh_doc_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctypename` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_doc_type` */

/*Table structure for table `wh_families` */

DROP TABLE IF EXISTS `wh_families`;

CREATE TABLE `wh_families` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `familyname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_families` */

insert  into `wh_families`(`id`,`familyname`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'JER ALG OSC','Y',NULL,NULL,NULL,NULL),
(2,'JER ALG CLARO','Y',NULL,NULL,NULL,NULL),
(3,'JER ALG MEDIOS','Y',NULL,NULL,NULL,NULL),
(4,'JER ALG BLANCO','Y',NULL,NULL,NULL,NULL),
(5,'GAMUZA ALG OSC','Y',NULL,NULL,NULL,NULL),
(6,'GAMUZA ALG CLARO','Y',NULL,NULL,NULL,NULL),
(7,'GAMUZA ALG MEDIOS','Y',NULL,NULL,NULL,NULL),
(8,'GAMUZA ALG BLANCO','Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_lines` */

DROP TABLE IF EXISTS `wh_lines`;

CREATE TABLE `wh_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `linename` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_lines` */

insert  into `wh_lines`(`id`,`linename`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'TELA ACABADA','Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_minput_lines` */

DROP TABLE IF EXISTS `wh_minput_lines`;

CREATE TABLE `wh_minput_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `minput_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `qty` double(15,6) DEFAULT NULL,
  `price` double(15,6) DEFAULT 0.000000,
  `pack` double(15,6) DEFAULT NULL,
  `grandline` double(15,6) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_minput_lines_minput_id_foreign` (`minput_id`),
  KEY `wh_minput_lines_product_id_foreign` (`product_id`),
  CONSTRAINT `wh_minput_lines_minput_id_foreign` FOREIGN KEY (`minput_id`) REFERENCES `wh_minputs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `wh_minput_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `wh_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_minput_lines` */

insert  into `wh_minput_lines`(`id`,`minput_id`,`product_id`,`qty`,`price`,`pack`,`grandline`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,1,5,120.500000,12.000000,NULL,1446.000000,NULL,NULL,NULL,NULL),
(2,2,5,400.100000,11.900000,NULL,4761.190000,NULL,NULL,NULL,NULL);

/*Table structure for table `wh_minputs` */

DROP TABLE IF EXISTS `wh_minputs`;

CREATE TABLE `wh_minputs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_id` bigint(20) unsigned DEFAULT NULL,
  `bpartner_id` bigint(20) unsigned DEFAULT NULL,
  `warehouse_id` bigint(20) unsigned DEFAULT NULL,
  `currency_id` bigint(20) unsigned DEFAULT NULL,
  `grandqty` double(15,6) DEFAULT 0.000000,
  `grandamount` double(15,6) DEFAULT 0.000000,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_minputs` */

insert  into `wh_minputs`(`id`,`datetrx`,`token`,`reason_id`,`bpartner_id`,`warehouse_id`,`currency_id`,`grandqty`,`grandamount`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'2020-11-21','',NULL,1,1,NULL,0.000000,1446.000000,'Y',NULL,NULL,NULL,NULL),
(2,'2020-11-26','',NULL,1,1,NULL,0.000000,4761.190000,'Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_moutput_lines` */

DROP TABLE IF EXISTS `wh_moutput_lines`;

CREATE TABLE `wh_moutput_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `moutput_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `qty` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT 0.00,
  `pack` double(8,2) DEFAULT NULL,
  `grandline` double(8,2) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_moutput_lines_moutput_id_foreign` (`moutput_id`),
  KEY `wh_moutput_lines_product_id_foreign` (`product_id`),
  CONSTRAINT `wh_moutput_lines_moutput_id_foreign` FOREIGN KEY (`moutput_id`) REFERENCES `wh_moutputs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `wh_moutput_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `wh_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_moutput_lines` */

insert  into `wh_moutput_lines`(`id`,`moutput_id`,`product_id`,`qty`,`price`,`pack`,`grandline`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,1,5,62.40,12.50,NULL,780.00,NULL,NULL,NULL,NULL),
(2,2,5,81.00,12.10,NULL,980.10,NULL,NULL,NULL,NULL);

/*Table structure for table `wh_moutputs` */

DROP TABLE IF EXISTS `wh_moutputs`;

CREATE TABLE `wh_moutputs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_id` bigint(20) unsigned DEFAULT NULL,
  `bpartner_id` bigint(20) unsigned DEFAULT NULL,
  `warehouse_id` bigint(20) unsigned DEFAULT NULL,
  `currency_id` bigint(20) unsigned DEFAULT NULL,
  `grandqty` double(15,6) DEFAULT 0.000000,
  `grandamount` double(15,6) DEFAULT 0.000000,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_moutputs` */

insert  into `wh_moutputs`(`id`,`datetrx`,`token`,`reason_id`,`bpartner_id`,`warehouse_id`,`currency_id`,`grandqty`,`grandamount`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'2020-11-22','',NULL,1,1,NULL,0.000000,780.000000,'Y',NULL,NULL,NULL,NULL),
(2,'2020-11-28','',NULL,1,1,NULL,0.000000,980.100000,'Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_param` */

DROP TABLE IF EXISTS `wh_param`;

CREATE TABLE `wh_param` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `identity` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id1` bigint(20) DEFAULT NULL,
  `id2` bigint(20) DEFAULT NULL,
  `id3` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_param` */

/*Table structure for table `wh_productions` */

DROP TABLE IF EXISTS `wh_productions`;

CREATE TABLE `wh_productions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_productions` */

/*Table structure for table `wh_products` */

DROP TABLE IF EXISTS `wh_products`;

CREATE TABLE `wh_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `productcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_id` bigint(20) unsigned DEFAULT NULL,
  `subline_id` bigint(20) unsigned DEFAULT NULL,
  `family_id` bigint(20) unsigned DEFAULT NULL,
  `um_id` bigint(20) unsigned DEFAULT NULL,
  `stk_min` double(15,6) NOT NULL DEFAULT 0.000000,
  `stk_max` double(15,6) NOT NULL DEFAULT 0.000000,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wh_products_productcode_unique` (`productcode`),
  KEY `wh_products_line_id_foreign` (`line_id`),
  KEY `wh_products_subline_id_foreign` (`subline_id`),
  KEY `wh_products_family_id_foreign` (`family_id`),
  CONSTRAINT `wh_products_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `wh_families` (`id`),
  CONSTRAINT `wh_products_line_id_foreign` FOREIGN KEY (`line_id`) REFERENCES `wh_lines` (`id`),
  CONSTRAINT `wh_products_subline_id_foreign` FOREIGN KEY (`subline_id`) REFERENCES `wh_sublines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_products` */

insert  into `wh_products`(`id`,`productcode`,`productname`,`shortname`,`sku`,`ean`,`isactive`,`line_id`,`subline_id`,`family_id`,`um_id`,`stk_min`,`stk_max`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'C0002','CUELLOS 24/1 ALGODON 40 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(2,'C0003','CUELLOS 24/1 ALGODON 40 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(3,'C0004','CUELLOS 24/1 ALGODON 40 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(4,'C0005','CUELLOS 24/1 ALGODON 40 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(5,'C0006','CUELLOS 24/1 ALGODON 40 CHOCOLATE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(6,'C0007','CUELLOS 24/1 ALGODON 40 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(7,'C0008','CUELLOS 24/1 ALGODON 40 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(8,'C0009','CUELLOS 24/1 ALGODON 40 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(9,'C0010','CUELLOS 24/1 ALGODON 40 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(10,'C0011','CUELLOS 24/1 ALGODON 40 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(11,'C0012','CUELLOS 24/1 ALGODON 40 SOMBRA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(12,'F0013','FALSO INTERLOCK 30/1 ALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(13,'F0014','FALSO INTERLOCK 30/1 ALGODON 80 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(14,'F0015','FALSO INTERLOCK 30/1 ALGODON 80 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(15,'F0016','FALSO INTERLOCK 30/1 ALGODON 80 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(16,'F0017','FALSO INTERLOCK 30/1 ALGODON 80 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(17,'F0018','FRANELA 20/10 ALGODON 90 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(18,'F0019','FRANELA 20/10 ALGODON 90 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(19,'F0020','FRANELA 20/10 ALGODON 90 AZUL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(20,'F0021','FRANELA 20/10 ALGODON 90 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(21,'F0022','FRANELA 20/10 ALGODON 90 BARNIE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(22,'F0023','FRANELA 20/10 ALGODON 90 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(23,'F0024','FRANELA 20/10 ALGODON 90 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(24,'F0025','FRANELA 20/10 ALGODON 90 GUINDA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(25,'F0026','FRANELA 20/10 ALGODON 90 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(26,'F0027','FRANELA 20/10 ALGODON 90 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(27,'F0028','FRANELA 20/10 ALGODON 90 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(28,'F0029','FRANELA 20/10 ALGODON 90 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(29,'F0030','FRANELA 20/10 ALGODON 90 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(30,'F0031','FRANELA 20/10 ALGODON 90 MELANGE 5%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(31,'F0032','FRANELA 20/10 ALGODON 90 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(32,'F0033','FRANELA 20/10 ALGODON 90 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(33,'F0034','FRANELA 20/10 ALGODON 90 PALO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(34,'F0035','FRANELA 20/10 ALGODON 90 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(35,'F0036','FRANELA 20/10 ALGODON 90 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(36,'F0037','FRANELA 20/10 ALGODON 90 ROSA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(37,'F0038','FRANELA 20/10 ALGODON 90 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(38,'F0039','FRANELA 20/10 ALGODON 90 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(39,'F0040','FRANELA 20/10 POLYALGODON 90 AZUL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(40,'F0041','FRANELA 20/10 POLYALGODON 90 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(41,'F0042','FRANELA 20/10 POLYALGODON 90 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(42,'F0043','FRANELA 20/10 POLYALGODON 90 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(43,'F0044','FRANELA 20/10 POLYALGODON 90 MELANGE 12%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(44,'F0045','FRANELA 20/10 POLYALGODON 90 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(45,'F0046','FRANELA 20/10 POLYALGODON 90 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(46,'F0047','FRANELA 20/10 POLYALGODON 90 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(47,'F0048','FRANELA 20/10 POLYALGODON 90 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(48,'F0049','FRANELA 24/10 ALGODON 95 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(49,'G0050','GAMUZA 30/1 ALGODON 90 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(50,'G0051','GAMUZA 30/1 ALGODON 90 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(51,'G0052','GAMUZA 30/1 ALGODON 90 BARNIE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(52,'G0053','GAMUZA 30/1 ALGODON 90 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(53,'G0054','GAMUZA 30/1 ALGODON 90 FRESA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(54,'G0055','GAMUZA 30/1 ALGODON 90 FUCSIA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(55,'G0056','GAMUZA 30/1 ALGODON 90 KORAL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(56,'G0057','GAMUZA 30/1 ALGODON 90 LIMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(57,'G0058','GAMUZA 30/1 ALGODON 90 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(58,'G0059','GAMUZA 30/1 ALGODON 90 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(59,'G0060','GAMUZA 30/1 ALGODON 90 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(60,'G0061','GAMUZA 30/1 ALGODON 90 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(61,'G0062','GAMUZA 30/1 ALGODON 90 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(62,'G0063','GAMUZA 30/1 ALGODON 90 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(63,'G0064','GAMUZA 30/1 ALGODON 90 MORA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(64,'G0065','GAMUZA 30/1 ALGODON 90 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(65,'G0066','GAMUZA 30/1 ALGODON 90 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(66,'G0067','GAMUZA 30/1 ALGODON 90 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(67,'G0068','GAMUZA 30/1 ALGODON 90 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(68,'G0069','GAMUZA 30/1 ALGODON 90 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(69,'G0070','GAMUZA 30/1 POLYALGODON 90 AQUA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(70,'G0071','GAMUZA 30/1 POLYALGODON 90 BANANA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(71,'G0072','GAMUZA 30/1 POLYALGODON 90 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(72,'G0073','GAMUZA 30/1 POLYALGODON 90 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(73,'G0074','GAMUZA 30/1 POLYALGODON 90 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(74,'G0075','GAMUZA 30/1 POLYALGODON 90 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(75,'G0076','GAMUZA 30/1 POLYALGODON 90 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(76,'G0077','GAMUZA 30/1 POLYALGODON 90 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(77,'G0078','GAMUZA 30/1 POLYALGODON 90 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(78,'G0079','GAMUZA 30/1 POLYALGODON 90 MELON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(79,'G0080','GAMUZA 30/1 POLYALGODON 90 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(80,'G0081','GAMUZA 30/1 POLYALGODON 90 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(81,'G0082','GAMUZA 30/1 POLYALGODON 90 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(82,'G0083','GAMUZA 30/1 POLYALGODON 90 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(83,'G0084','GAMUZA 30/1 POLYALGODON 92 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(84,'G0085','GAMUZA 30/1 POLYALGODON 92 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(85,'G0086','GAMUZA 30/1 POLYALGODON 92 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(86,'G0087','GAMUZA 30/1 POLYALGODON 92 ROSA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(87,'G0088','GAMUZA 30/1 POLYALGODON 92 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(88,'G0089','GAMUZA 30/1 POLYALGODON 93 ROSA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(89,'G0090','GAMUZA 30/1 POLYALGODON 93 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(90,'G0091','GAMUZA 30/1 POLYALGODON 93 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(91,'G0092','GAMUZA 30/1 POLYALGODON 94 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(92,'G0093','GAMUZA 30/1 POLYALGODON 94 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(93,'G0094','GAMUZA 30/1 POLYALGODON 94 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(94,'G0095','GAMUZA 30/1 POLYALGODON 94 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(95,'G0096','GAMUZA 30/1 POLYALGODON 94 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(96,'G0097','GAMUZA 30/1 POLYALGODON 94 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(97,'G0098','GAMUZA 30/1 POLYALGODON 94 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(98,'G0099','GAMUZA 30/1 POLYALGODON 94 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(99,'G0100','GAMUZA 30/1 POLYALGODON 94 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(100,'G0101','GAMUZA 30/1 POLYALGODON 94 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(101,'G0102','GAMUZA 50/1 ALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(102,'G0103','GAMUZA 50/1 ALGODON 80 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(103,'G0104','GAMUZA 50/1 ALGODON 80 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(104,'G0105','GAMUZA 50/1 POLYALGODON 80 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(105,'J0106','JERSEY 20/1 ALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(106,'J0107','JERSEY 20/1 ALGODON 80 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(107,'J0108','JERSEY 20/1 ALGODON 90 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(108,'J0109','JERSEY 20/1 ALGODON 90 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(109,'J0110','JERSEY 20/1 ALGODON 90 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(110,'J0111','JERSEY 20/1 ALGODON 90 BARNIE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(111,'J0112','JERSEY 20/1 ALGODON 90 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(112,'J0113','JERSEY 20/1 ALGODON 90 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(113,'J0114','JERSEY 20/1 ALGODON 90 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(114,'J0115','JERSEY 20/1 ALGODON 90 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(115,'J0116','JERSEY 20/1 ALGODON 90 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(116,'J0117','JERSEY 20/1 ALGODON 90 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(117,'J0118','JERSEY 20/1 ALGODON 90 GUINDA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(118,'J0119','JERSEY 20/1 ALGODON 90 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(119,'J0120','JERSEY 20/1 ALGODON 90 LACRE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(120,'J0121','JERSEY 20/1 ALGODON 90 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(121,'J0122','JERSEY 20/1 ALGODON 90 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(122,'J0123','JERSEY 20/1 ALGODON 90 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(123,'J0124','JERSEY 20/1 ALGODON 90 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(124,'J0125','JERSEY 20/1 ALGODON 90 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(125,'J0126','JERSEY 20/1 ALGODON 90 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(126,'J0127','JERSEY 20/1 ALGODON 90 MORA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(127,'J0128','JERSEY 20/1 ALGODON 90 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(128,'J0129','JERSEY 20/1 ALGODON 90 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(129,'J0130','JERSEY 20/1 ALGODON 90 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(130,'J0131','JERSEY 20/1 ALGODON 90 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(131,'J0132','JERSEY 20/1 ALGODON 90 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(132,'J0133','JERSEY 20/1 ALGODON 90 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(133,'J0134','JERSEY 20/1 ALGODON 90 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(134,'J0135','JERSEY 20/1 ALGODON 90 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(135,'J0136','JERSEY 20/1 ALGODON 90 SOMBRA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(136,'J0137','JERSEY 20/1 ALGODON 90 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(137,'J0138','JERSEY 20/1 POLYALGODON 90 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(138,'J0139','JERSEY 20/1 POLYALGODON 90 MELANGE 12%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(139,'J0140','JERSEY 20/1 POLYALGODON 90 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(140,'J0141','JERSEY 20/1 POLYALGODON 90 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(141,'J0142','JERSEY 24/1 ALGODON 80 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(142,'J0143','JERSEY 24/1 ALGODON 90 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(143,'J0144','JERSEY 30/1 ALGODON 50 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(144,'J0145','JERSEY 30/1 ALGODON 52 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(145,'J0146','JERSEY 30/1 ALGODON 52 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(146,'J0147','JERSEY 30/1 ALGODON 52 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(147,'J0148','JERSEY 30/1 ALGODON 52 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(148,'J0149','JERSEY 30/1 ALGODON 52 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(149,'J0150','JERSEY 30/1 ALGODON 52 LACRE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(150,'J0151','JERSEY 30/1 ALGODON 52 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(151,'J0152','JERSEY 30/1 ALGODON 52 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(152,'J0153','JERSEY 30/1 ALGODON 52 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(153,'J0154','JERSEY 30/1 ALGODON 52 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(154,'J0155','JERSEY 30/1 ALGODON 52 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(155,'J0156','JERSEY 30/1 ALGODON 52 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(156,'J0157','JERSEY 30/1 ALGODON 52 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(157,'J0158','JERSEY 30/1 ALGODON 52 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(158,'J0159','JERSEY 30/1 ALGODON 52 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(159,'J0160','JERSEY 30/1 ALGODON 58 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(160,'J0161','JERSEY 30/1 ALGODON 58 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(161,'J0162','JERSEY 30/1 ALGODON 58 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(162,'J0163','JERSEY 30/1 ALGODON 58 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(163,'J0164','JERSEY 30/1 ALGODON 58 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(164,'J0165','JERSEY 30/1 ALGODON 58 LACRE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(165,'J0166','JERSEY 30/1 ALGODON 58 LIMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(166,'J0167','JERSEY 30/1 ALGODON 58 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(167,'J0168','JERSEY 30/1 ALGODON 58 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(168,'J0169','JERSEY 30/1 ALGODON 58 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(169,'J0170','JERSEY 30/1 ALGODON 58 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(170,'J0171','JERSEY 30/1 ALGODON 58 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(171,'J0172','JERSEY 30/1 ALGODON 58 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(172,'J0173','JERSEY 30/1 ALGODON 58 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(173,'J0174','JERSEY 30/1 ALGODON 58 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(174,'J0175','JERSEY 30/1 ALGODON 58 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(175,'J0176','JERSEY 30/1 ALGODON 58 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(176,'J0177','JERSEY 30/1 ALGODON 58 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(177,'J0178','JERSEY 30/1 ALGODON 75 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(178,'J0179','JERSEY 30/1 ALGODON 75 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(179,'J0180','JERSEY 30/1 ALGODON 75 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(180,'J0181','JERSEY 30/1 ALGODON 75 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(181,'J0182','JERSEY 30/1 ALGODON 75 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(182,'J0183','JERSEY 30/1 ALGODON 75 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(183,'J0184','JERSEY 30/1 ALGODON 75 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(184,'J0185','JERSEY 30/1 ALGODON 75 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(185,'J0186','JERSEY 30/1 ALGODON 80 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(186,'J0187','JERSEY 30/1 ALGODON 80 ANTIQUE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(187,'J0188','JERSEY 30/1 ALGODON 80 AQUA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(188,'J0189','JERSEY 30/1 ALGODON 80 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(189,'J0190','JERSEY 30/1 ALGODON 80 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(190,'J0191','JERSEY 30/1 ALGODON 80 BARNIE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(191,'J0192','JERSEY 30/1 ALGODON 80 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(192,'J0193','JERSEY 30/1 ALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(193,'J0194','JERSEY 30/1 ALGODON 80 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(194,'J0195','JERSEY 30/1 ALGODON 80 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(195,'J0196','JERSEY 30/1 ALGODON 80 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(196,'J0197','JERSEY 30/1 ALGODON 80 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(197,'J0198','JERSEY 30/1 ALGODON 80 CHOCOLATE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(198,'J0199','JERSEY 30/1 ALGODON 80 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(199,'J0200','JERSEY 30/1 ALGODON 80 FRESA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(200,'J0201','JERSEY 30/1 ALGODON 80 FUCSIA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(201,'J0202','JERSEY 30/1 ALGODON 80 GUINDA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(202,'J0203','JERSEY 30/1 ALGODON 80 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(203,'J0204','JERSEY 30/1 ALGODON 80 JADE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(204,'J0205','JERSEY 30/1 ALGODON 80 KORAL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(205,'J0206','JERSEY 30/1 ALGODON 80 LACRE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(206,'J0207','JERSEY 30/1 ALGODON 80 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(207,'J0208','JERSEY 30/1 ALGODON 80 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(208,'J0209','JERSEY 30/1 ALGODON 80 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(209,'J0210','JERSEY 30/1 ALGODON 80 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(210,'J0211','JERSEY 30/1 ALGODON 80 MANZANA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(211,'J0212','JERSEY 30/1 ALGODON 80 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(212,'J0213','JERSEY 30/1 ALGODON 80 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(213,'J0214','JERSEY 30/1 ALGODON 80 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(214,'J0215','JERSEY 30/1 ALGODON 80 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(215,'J0216','JERSEY 30/1 ALGODON 80 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(216,'J0217','JERSEY 30/1 ALGODON 80 MORA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(217,'J0218','JERSEY 30/1 ALGODON 80 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(218,'J0219','JERSEY 30/1 ALGODON 80 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(219,'J0220','JERSEY 30/1 ALGODON 80 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(220,'J0221','JERSEY 30/1 ALGODON 80 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(221,'J0222','JERSEY 30/1 ALGODON 80 PALO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(222,'J0223','JERSEY 30/1 ALGODON 80 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(223,'J0224','JERSEY 30/1 ALGODON 80 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(224,'J0225','JERSEY 30/1 ALGODON 80 PISTACHO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(225,'J0226','JERSEY 30/1 ALGODON 80 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(226,'J0227','JERSEY 30/1 ALGODON 80 PLOMO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(227,'J0228','JERSEY 30/1 ALGODON 80 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(228,'J0229','JERSEY 30/1 ALGODON 80 ROSA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(229,'J0230','JERSEY 30/1 ALGODON 80 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(230,'J0231','JERSEY 30/1 ALGODON 80 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(231,'J0232','JERSEY 30/1 ALGODON 80 SOMBRA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(232,'J0233','JERSEY 30/1 ALGODON 80 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(233,'J0234','JERSEY 30/1 ALGODON 80 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(234,'J0235','JERSEY 30/1 ALGODON 82 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(235,'J0236','JERSEY 30/1 ALGODON 85 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(236,'J0237','JERSEY 30/1 ALGODON 85 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(237,'J0238','JERSEY 30/1 ALGODON 85 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(238,'J0239','JERSEY 30/1 ALGODON 85 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(239,'J0240','JERSEY 30/1 ALGODON 85 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(240,'J0241','JERSEY 30/1 ALGODON 85 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(241,'J0242','JERSEY 30/1 ALGODON 85 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(242,'J0243','JERSEY 30/1 ALGODON 85 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(243,'J0244','JERSEY 30/1 ALGODON 85 CHOCOLATE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(244,'J0245','JERSEY 30/1 ALGODON 85 FUCSIA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(245,'J0246','JERSEY 30/1 ALGODON 85 GUINDA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(246,'J0247','JERSEY 30/1 ALGODON 85 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(247,'J0248','JERSEY 30/1 ALGODON 85 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(248,'J0249','JERSEY 30/1 ALGODON 85 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(249,'J0250','JERSEY 30/1 ALGODON 85 MANZANA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(250,'J0251','JERSEY 30/1 ALGODON 85 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(251,'J0252','JERSEY 30/1 ALGODON 85 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(252,'J0253','JERSEY 30/1 ALGODON 85 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(253,'J0254','JERSEY 30/1 ALGODON 85 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(254,'J0255','JERSEY 30/1 ALGODON 85 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(255,'J0256','JERSEY 30/1 ALGODON 85 MORA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(256,'J0257','JERSEY 30/1 ALGODON 85 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(257,'J0258','JERSEY 30/1 ALGODON 85 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(258,'J0259','JERSEY 30/1 ALGODON 85 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(259,'J0260','JERSEY 30/1 ALGODON 85 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(260,'J0261','JERSEY 30/1 ALGODON 85 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(261,'J0262','JERSEY 30/1 ALGODON 85 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(262,'J0263','JERSEY 30/1 ALGODON 85 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(263,'J0264','JERSEY 30/1 ALGODON 85 ROSA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(264,'J0265','JERSEY 30/1 ALGODON 85 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(265,'J0266','JERSEY 30/1 ALGODON 85 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(266,'J0267','JERSEY 30/1 ALGODON 85 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(267,'J0268','JERSEY 30/1 ALGODON 87 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(268,'J0269','JERSEY 30/1 ALGODON 87 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(269,'J0270','JERSEY 30/1 ALGODON 87 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(270,'J0271','JERSEY 30/1 ALGODON 87 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(271,'J0272','JERSEY 30/1 ALGODON 87 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(272,'J0273','JERSEY 30/1 ALGODON 87 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(273,'J0274','JERSEY 30/1 ALGODON 87 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(274,'J0275','JERSEY 30/1 ALGODON 87 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(275,'J0276','JERSEY 30/1 ALGODON 87 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(276,'J0277','JERSEY 30/1 ALGODON 87 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(277,'J0278','JERSEY 30/1 ALGODON 87 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(278,'J0279','JERSEY 30/1 ALGODON 87 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(279,'J0280','JERSEY 30/1 ALGODON 87 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(280,'J0281','JERSEY 30/1 ALGODON 88 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(281,'J0282','JERSEY 30/1 ALGODON 90 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(282,'J0283','JERSEY 30/1 ALGODON 90 AMARILLO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(283,'J0284','JERSEY 30/1 ALGODON 90 ANTIQUE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(284,'J0285','JERSEY 30/1 ALGODON 90 AQUA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(285,'J0286','JERSEY 30/1 ALGODON 90 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(286,'J0287','JERSEY 30/1 ALGODON 90 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(287,'J0288','JERSEY 30/1 ALGODON 90 BARNIE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(288,'J0289','JERSEY 30/1 ALGODON 90 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(289,'J0290','JERSEY 30/1 ALGODON 90 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(290,'J0291','JERSEY 30/1 ALGODON 90 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(291,'J0292','JERSEY 30/1 ALGODON 90 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(292,'J0293','JERSEY 30/1 ALGODON 90 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(293,'J0294','JERSEY 30/1 ALGODON 90 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(294,'J0295','JERSEY 30/1 ALGODON 90 CHOCOLATE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(295,'J0296','JERSEY 30/1 ALGODON 90 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(296,'J0297','JERSEY 30/1 ALGODON 90 CRISTAL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(297,'J0298','JERSEY 30/1 ALGODON 90 FRESA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(298,'J0299','JERSEY 30/1 ALGODON 90 FUCSIA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(299,'J0300','JERSEY 30/1 ALGODON 90 GUINDA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(300,'J0301','JERSEY 30/1 ALGODON 90 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(301,'J0302','JERSEY 30/1 ALGODON 90 JADE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(302,'J0303','JERSEY 30/1 ALGODON 90 KORAL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(303,'J0304','JERSEY 30/1 ALGODON 90 LACRE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(304,'J0305','JERSEY 30/1 ALGODON 90 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(305,'J0306','JERSEY 30/1 ALGODON 90 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(306,'J0307','JERSEY 30/1 ALGODON 90 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(307,'J0308','JERSEY 30/1 ALGODON 90 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(308,'J0309','JERSEY 30/1 ALGODON 90 MANZANA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(309,'J0310','JERSEY 30/1 ALGODON 90 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(310,'J0311','JERSEY 30/1 ALGODON 90 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(311,'J0312','JERSEY 30/1 ALGODON 90 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(312,'J0313','JERSEY 30/1 ALGODON 90 MELANGE 12%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(313,'J0314','JERSEY 30/1 ALGODON 90 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(314,'J0315','JERSEY 30/1 ALGODON 90 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(315,'J0316','JERSEY 30/1 ALGODON 90 MELON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(316,'J0317','JERSEY 30/1 ALGODON 90 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(317,'J0318','JERSEY 30/1 ALGODON 90 MORA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(318,'J0319','JERSEY 30/1 ALGODON 90 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(319,'J0320','JERSEY 30/1 ALGODON 90 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(320,'J0321','JERSEY 30/1 ALGODON 90 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(321,'J0322','JERSEY 30/1 ALGODON 90 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(322,'J0323','JERSEY 30/1 ALGODON 90 PALO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(323,'J0324','JERSEY 30/1 ALGODON 90 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(324,'J0325','JERSEY 30/1 ALGODON 90 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(325,'J0326','JERSEY 30/1 ALGODON 90 PISTACHO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(326,'J0327','JERSEY 30/1 ALGODON 90 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(327,'J0328','JERSEY 30/1 ALGODON 90 PLOMO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(328,'J0329','JERSEY 30/1 ALGODON 90 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(329,'J0330','JERSEY 30/1 ALGODON 90 ROSA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(330,'J0331','JERSEY 30/1 ALGODON 90 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(331,'J0332','JERSEY 30/1 ALGODON 90 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(332,'J0333','JERSEY 30/1 ALGODON 90 SOMBRA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(333,'J0334','JERSEY 30/1 ALGODON 90 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(334,'J0335','JERSEY 30/1 ALGODON 90 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(335,'J0336','JERSEY 30/1 ALGODON 91 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(336,'J0337','JERSEY 30/1 ALGODON 91 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(337,'J0338','JERSEY 30/1 ALGODON 94 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(338,'J0339','JERSEY 30/1 ALGODON 94 MELANGE 25%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(339,'J0340','JERSEY 30/1 LAGODON 90 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(340,'J0341','JERSEY 30/1 POLYALGODON 50 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(341,'J0342','JERSEY 30/1 POLYALGODON 51 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(342,'J0343','JERSEY 30/1 POLYALGODON 52 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(343,'J0344','JERSEY 30/1 POLYALGODON 54 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(344,'J0345','JERSEY 30/1 POLYALGODON 56 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(345,'J0346','JERSEY 30/1 POLYALGODON 58 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(346,'J0347','JERSEY 30/1 POLYALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(347,'J0348','JERSEY 30/1 POLYALGODON 80 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(348,'J0349','JERSEY 30/1 POLYALGODON 85 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(349,'J0350','JERSEY 30/1 POLYALGODON 86 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(350,'J0351','JERSEY 30/1 POLYALGODON 90 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(351,'J0352','JERSEY 30/1 POLYALGODON 90 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(352,'J0353','JERSEY 30/1 POLYALGODON 90 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(353,'J0354','JERSEY 30/1 POLYALGODON 90 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(354,'J0355','JERSEY 30/1 POLYALGODON 90 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(355,'J0356','JERSEY 30/1 POLYALGODON 90 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(356,'J0357','JERSEY 30/1 POLYALGODON 90 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(357,'J0358','JERSEY 30/1 POLYALGODON 90 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(358,'J0359','JERSEY 30/1 POLYALGODON 90 CRISTAL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(359,'J0360','JERSEY 30/1 POLYALGODON 90 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(360,'J0361','JERSEY 30/1 POLYALGODON 90 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(361,'J0362','JERSEY 30/1 POLYALGODON 90 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(362,'J0363','JERSEY 30/1 POLYALGODON 90 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(363,'J0364','JERSEY 30/1 POLYALGODON 90 MELON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(364,'J0365','JERSEY 30/1 POLYALGODON 90 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(365,'J0366','JERSEY 30/1 POLYALGODON 90 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(366,'J0367','JERSEY 30/1 POLYALGODON 90 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(367,'J0368','JERSEY 30/1 POLYALGODON 90 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(368,'J0369','JERSEY 30/1 POLYALGODON 90 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(369,'J0370','JERSEY 30/1 POLYALGODON 90 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(370,'J0371','JERSEY 30/1 POLYALGODON 93 BANANA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(371,'J0372','JERSEY 30/1 POLYALGODON 93 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(372,'J0373','JERSEY 30/1 POLYALGODON 93 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(373,'J0374','JERSEY 30/1 POLYALGODON 93 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(374,'J0375','JERSEY 30/1 POLYALGODON 93 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(375,'J0376','JERSEY 30/1 POLYALGODON 93 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(376,'J0377','JERSEY 30/1 POLYALGODON 93 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(377,'J0378','JERSEY LABRADO 30/1 ALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(378,'J0379','JERSEY LABRADO 30/1 ALGODON 80 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(379,'J0380','JERSEY LABRADO 30/1 ALGODON 80 ROSAD',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(380,'J0381','JERSEY LABRADO 30/1 ALGODON 80 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(381,'J0382','JERSEY LISTADO 30/1 ALGODON 80 ANTIQUE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(382,'J0383','JERSEY LISTADO 30/1 ALGODON 80 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(383,'J0384','JERSEY LISTADO 30/1 ALGODON 80 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(384,'J0385','JERSEY LISTADO 30/1 ALGODON 80 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(385,'J0386','JERSEY LISTADO 30/1 ALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(386,'J0387','JERSEY LISTADO 30/1 ALGODON 80 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(387,'J0388','JERSEY LISTADO 30/1 ALGODON 80 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(388,'J0389','JERSEY LISTADO 30/1 ALGODON 80 CHOCOLATE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(389,'J0390','JERSEY LISTADO 30/1 ALGODON 80 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(390,'J0391','JERSEY LISTADO 30/1 ALGODON 80 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(391,'J0392','JERSEY LISTADO 30/1 ALGODON 80 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(392,'J0393','JERSEY LISTADO 30/1 ALGODON 80 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(393,'J0394','JERSEY LISTADO 30/1 ALGODON 80 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(394,'J0395','JERSEY LISTADO 30/1 ALGODON 80 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(395,'J0396','JERSEY LISTADO 30/1 ALGODON 80 SOMBRA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(396,'J0397','JERSEY LISTADO 30/1 ALGODON 90 ANTIQUE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(397,'J0398','JERSEY LISTADO 30/1 ALGODON 90 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(398,'J0399','JERSEY LISTADO 30/1 ALGODON 90 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(399,'J0400','JERSEY LISTADO 30/1 ALGODON 90 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(400,'J0401','JERSEY LISTADO 30/1 ALGODON 90 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(401,'J0402','JERSEY LISTADO 30/1 ALGODON 90 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(402,'J0403','JERSEY LISTADO 30/1 ALGODON 90 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(403,'J0404','JERSEY LISTADO 30/1 ALGODON 90 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(404,'J0405','JERSING LISTADO 30/1 ALGODON 75 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(405,'J0406','JERSING LISTADO 30/1 ALGODON 75 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(406,'J0407','JERSING LISTADO 30/1 ALGODON 75 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(407,'J0408','JERSING LISTADO 30/1 ALGODON 75 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(408,'J0409','JERSING LISTADO 30/1 ALGODON 75 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(409,'P0410','PIQUE 24/1 ALGODON 90 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(410,'R0411','RIB 150/2 POLYALGODON 85 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(411,'R0412','RIB 20/1 ALGODON 80 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(412,'R0413','RIB 20/1 ALGODON 80 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(413,'R0414','RIB 20/1 ALGODON 80 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(414,'R0415','RIB 20/1 ALGODON 80 BARNIE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(415,'R0416','RIB 20/1 ALGODON 80 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(416,'R0417','RIB 20/1 ALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(417,'R0418','RIB 20/1 ALGODON 80 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(418,'R0419','RIB 20/1 ALGODON 80 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(419,'R0420','RIB 20/1 ALGODON 80 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(420,'R0421','RIB 20/1 ALGODON 80 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(421,'R0422','RIB 20/1 ALGODON 80 GUINDA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(422,'R0423','RIB 20/1 ALGODON 80 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(423,'R0424','RIB 20/1 ALGODON 80 LACRE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(424,'R0425','RIB 20/1 ALGODON 80 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(425,'R0426','RIB 20/1 ALGODON 80 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(426,'R0427','RIB 20/1 ALGODON 80 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(427,'R0428','RIB 20/1 ALGODON 80 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(428,'R0429','RIB 20/1 ALGODON 80 MANZANA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(429,'R0430','RIB 20/1 ALGODON 80 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(430,'R0431','RIB 20/1 ALGODON 80 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(431,'R0432','RIB 20/1 ALGODON 80 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(432,'R0433','RIB 20/1 ALGODON 80 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(433,'R0434','RIB 20/1 ALGODON 80 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(434,'R0435','RIB 20/1 ALGODON 80 MORA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(435,'R0436','RIB 20/1 ALGODON 80 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(436,'R0437','RIB 20/1 ALGODON 80 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(437,'R0438','RIB 20/1 ALGODON 80 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(438,'R0439','RIB 20/1 ALGODON 80 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(439,'R0440','RIB 20/1 ALGODON 80 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(440,'R0441','RIB 20/1 ALGODON 80 PISTACHO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(441,'R0442','RIB 20/1 ALGODON 80 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(442,'R0443','RIB 20/1 ALGODON 80 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(443,'R0444','RIB 20/1 ALGODON 80 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(444,'R0445','RIB 20/1 ALGODON 80 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(445,'R0446','RIB 20/1 ALGODON 80 SOMBRA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(446,'R0447','RIB 20/1 ALGODON 80 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(447,'R0448','RIB 20/1 POLYALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(448,'R0449','RIB 20/1 POLYALGODON 80 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(449,'R0450','RIB 24/1 ALGODON 80 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(450,'R0451','RIB 24/1 ALGODON 80 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(451,'R0452','RIB 30/1 ALGODON 60 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(452,'R0453','RIB 30/1 ALGODON 80 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(453,'R0454','RIB 30/1 ALGODON 80 AMARILLO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(454,'R0455','RIB 30/1 ALGODON 80 ANTIQUE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(455,'R0456','RIB 30/1 ALGODON 80 AQUA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(456,'R0457','RIB 30/1 ALGODON 80 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(457,'R0458','RIB 30/1 ALGODON 80 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(458,'R0459','RIB 30/1 ALGODON 80 BARNIE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(459,'R0460','RIB 30/1 ALGODON 80 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(460,'R0461','RIB 30/1 ALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(461,'R0462','RIB 30/1 ALGODON 80 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(462,'R0463','RIB 30/1 ALGODON 80 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(463,'R0464','RIB 30/1 ALGODON 80 CEMENTO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(464,'R0465','RIB 30/1 ALGODON 80 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(465,'R0466','RIB 30/1 ALGODON 80 CHOCOLATE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(466,'R0467','RIB 30/1 ALGODON 80 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(467,'R0468','RIB 30/1 ALGODON 80 CRISTAL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(468,'R0469','RIB 30/1 ALGODON 80 FRESA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(469,'R0470','RIB 30/1 ALGODON 80 FUCSIA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(470,'R0471','RIB 30/1 ALGODON 80 GUINDA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(471,'R0472','RIB 30/1 ALGODON 80 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(472,'R0473','RIB 30/1 ALGODON 80 JADE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(473,'R0474','RIB 30/1 ALGODON 80 KORAL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(474,'R0475','RIB 30/1 ALGODON 80 LACRE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(475,'R0476','RIB 30/1 ALGODON 80 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(476,'R0477','RIB 30/1 ALGODON 80 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(477,'R0478','RIB 30/1 ALGODON 80 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(478,'R0479','RIB 30/1 ALGODON 80 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(479,'R0480','RIB 30/1 ALGODON 80 MANZANA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(480,'R0481','RIB 30/1 ALGODON 80 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(481,'R0482','RIB 30/1 ALGODON 80 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(482,'R0483','RIB 30/1 ALGODON 80 MELANGE 12%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(483,'R0484','RIB 30/1 ALGODON 80 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(484,'R0485','RIB 30/1 ALGODON 80 MELON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(485,'R0486','RIB 30/1 ALGODON 80 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(486,'R0487','RIB 30/1 ALGODON 80 MORA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(487,'R0488','RIB 30/1 ALGODON 80 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(488,'R0489','RIB 30/1 ALGODON 80 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(489,'R0490','RIB 30/1 ALGODON 80 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(490,'R0491','RIB 30/1 ALGODON 80 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(491,'R0492','RIB 30/1 ALGODON 80 PALO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(492,'R0493','RIB 30/1 ALGODON 80 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(493,'R0494','RIB 30/1 ALGODON 80 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(494,'R0495','RIB 30/1 ALGODON 80 PISTACHO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(495,'R0496','RIB 30/1 ALGODON 80 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(496,'R0497','RIB 30/1 ALGODON 80 PLOMO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(497,'R0498','RIB 30/1 ALGODON 80 ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(498,'R0499','RIB 30/1 ALGODON 80 ROSA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(499,'R0500','RIB 30/1 ALGODON 80 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(500,'R0501','RIB 30/1 ALGODON 80 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(501,'R0502','RIB 30/1 ALGODON 80 SOMBRA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(502,'R0503','RIB 30/1 ALGODON 80 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(503,'R0504','RIB 30/1 ALGODON 80 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(504,'R0505','RIB 30/1 POLYALGODON 80 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(505,'R0506','RIB 30/1 POLYALGODON 80 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(506,'R0507','RIB 30/1 POLYALGODON 80 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(507,'R0508','RIB 30/1 POLYALGODON 80 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(508,'R0509','RIB 30/1 POLYALGODON 80 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(509,'R0510','RIB 30/1 POLYALGODON 80 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(510,'R0511','RIB 30/1 POLYALGODON 80 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(511,'R0512','RIB 30/1 POLYALGODON 80 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(512,'R0513','RIB 30/1 POLYALGODON 80 MELON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(513,'R0514','RIB 30/1 POLYALGODON 80 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(514,'R0515','RIB 30/1 POLYALGODON 80 ROSA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(515,'R0516','RIB 30/1 POLYALGODON 80 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(516,'R0517','RIB 30/1 POLYALGODON 80 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(517,'R0518','RIB LYCRADO 30/1 ALGODON 78 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(518,'R0519','RIB LYCRADO 30/1 ALGODON 78 FRESA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(519,'R0520','RIB LYCRADO 30/1 ALGODON 78 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(520,'R0521','RIB LYCRADO 30/1 ALGODON 78 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(521,'R0522','RIB LYCRADO 30/1 ALGODON 78 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(522,'R0523','RIB LYCRADO 30/1 ALGODON 78 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(523,'R0524','RIB LYCRADO 30/1 ALGODON 78 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(524,'R0525','RIB LYCRADO 30/1 ALGODON 78 PALO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(525,'R0526','RIB LYCRADO 30/1 ALGODON 78 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(526,'R0527','RIB LYCRADO 30/1 ALGODON 78 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(527,'R0528','RIB LYCRADOR 30/1 ALGODON 78 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(528,'R0529','RIB LYCRADOR 30/1 ALGODON 78 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(529,'R0530','RIB LYCRADOR 30/1 ALGODON 78 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(530,'R0531','RIB LYCRADOR 30/1 ALGODON 78 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(531,'R0532','RIB LYCRADOR 30/1 ALGODON 80 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(532,'S0533','STRECH 24/1 ALGODON 83 ACERO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(533,'S0534','STRECH 24/1 ALGODON 83 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(534,'S0535','STRECH 24/1 ALGODON 83 AZULINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(535,'S0536','STRECH 24/1 ALGODON 83 BARNIE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(536,'S0537','STRECH 24/1 ALGODON 83 BOTELLA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(537,'S0538','STRECH 24/1 ALGODON 83 CHICLE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(538,'S0539','STRECH 24/1 ALGODON 83 FUCSIA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(539,'S0540','STRECH 24/1 ALGODON 83 ITALIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(540,'S0541','STRECH 24/1 ALGODON 83 LACRE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(541,'S0542','STRECH 24/1 ALGODON 83 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(542,'S0543','STRECH 24/1 ALGODON 83 MANDARINA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(543,'S0544','STRECH 24/1 ALGODON 83 MANZANA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(544,'S0545','STRECH 24/1 ALGODON 83 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(545,'S0546','STRECH 24/1 ALGODON 83 MARRON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(546,'S0547','STRECH 24/1 ALGODON 83 MELANGE 10%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(547,'S0548','STRECH 24/1 ALGODON 83 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(548,'S0549','STRECH 24/1 ALGODON 83 MILITAR',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(549,'S0550','STRECH 24/1 ALGODON 83 MORA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(550,'S0551','STRECH 24/1 ALGODON 83 MOSTAZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(551,'S0552','STRECH 24/1 ALGODON 83 NARANJA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(552,'S0553','STRECH 24/1 ALGODON 83 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(553,'S0554','STRECH 24/1 ALGODON 83 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(554,'S0555','STRECH 24/1 ALGODON 83 PALO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(555,'S0556','STRECH 24/1 ALGODON 83 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(556,'S0557','STRECH 24/1 ALGODON 83 PERICO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(557,'S0558','STRECH 24/1 ALGODON 83 PISTACHO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(558,'S0559','STRECH 24/1 ALGODON 83 SALESIANO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(559,'S0560','STRECH 24/1 ALGODON 83 TURQUEZA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(560,'S0561','STRECH 24/1 ALGODON 83 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(561,'S0562','STRECH 24/1 POLYALGODON 83 ARENA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(562,'S0563','STRECH 24/1 POLYALGODON 83 AZUL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(563,'S0564','STRECH 24/1 POLYALGODON 83 BEIGE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(564,'S0565','STRECH 24/1 POLYALGODON 83 BLANCO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(565,'S0566','STRECH 24/1 POLYALGODON 83 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(566,'S0567','STRECH 24/1 POLYALGODON 83 CREMA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(567,'S0568','STRECH 24/1 POLYALGODON 83 LILA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(568,'S0569','STRECH 24/1 POLYALGODON 83 MAIZ',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(569,'S0570','STRECH 24/1 POLYALGODON 83 MARINO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(570,'S0571','STRECH 24/1 POLYALGODON 83 MELANGE 3%',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(571,'S0572','STRECH 24/1 POLYALGODON 83 NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(572,'S0573','STRECH 24/1 POLYALGODON 83 ORO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(573,'S0574','STRECH 24/1 POLYALGODON 83 PALO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(574,'S0575','STRECH 24/1 POLYALGODON 83 PLATA',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(575,'S0576','STRECH 24/1 POLYALGODON 83 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(576,'S0577','STRECH 24/1 POLYALGODON 83 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(577,'W0578','WAFFER 30/1 ALGODON 78 CELESTE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(578,'W0579','WAFFER 30/1 ALGODON 78 LIMON',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(579,'W0580','WAFFER 30/1 ALGODON 78 PATO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(580,'W0581','WAFFER 30/1 ALGODON 78 ROSADO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(581,'W0582','WAFFER 30/1 ALGODON 78 VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL);

/*Table structure for table `wh_reasons` */

DROP TABLE IF EXISTS `wh_reasons`;

CREATE TABLE `wh_reasons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reasonname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movetype` enum('IN','SA','TR','PR','ME') COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_reasons` */

insert  into `wh_reasons`(`id`,`reasonname`,`movetype`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'COMPRA','IN','Y',NULL,NULL,NULL,NULL),
(2,'VENTA','SA','Y',NULL,NULL,NULL,NULL),
(3,'TRASLADO ENTRE ALMACENES','TR','Y',NULL,NULL,NULL,NULL),
(4,'PRODUCCION','PR','Y',NULL,NULL,NULL,NULL),
(5,'AJUSTE POR MERMA','ME','Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_sequencers` */

DROP TABLE IF EXISTS `wh_sequencers`;

CREATE TABLE `wh_sequencers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sequencername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastnumber` bigint(20) NOT NULL DEFAULT 0,
  `doctype_id` bigint(20) unsigned NOT NULL,
  `isfex` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_sequencers` */

/*Table structure for table `wh_stock` */

DROP TABLE IF EXISTS `wh_stock`;

CREATE TABLE `wh_stock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stock` double(15,6) NOT NULL DEFAULT 0.000000,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `warehouse_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `warehouse_id` (`product_id`,`warehouse_id`),
  KEY `wh_stock_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `wh_stock_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `wh_products` (`id`),
  CONSTRAINT `wh_stock_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `wh_warehouses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_stock` */

insert  into `wh_stock`(`id`,`stock`,`product_id`,`warehouse_id`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,377.200004,5,1,NULL,NULL,'2020-12-03 21:58:31','2020-12-03 21:58:31');

/*Table structure for table `wh_sublines` */

DROP TABLE IF EXISTS `wh_sublines`;

CREATE TABLE `wh_sublines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sublinename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_sublines` */

insert  into `wh_sublines`(`id`,`sublinename`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'LAPICEROS TINTA SECA','Y',NULL,NULL,NULL,NULL),
(2,'LAPICEROS TINTA GEL','Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_team_grants` */

DROP TABLE IF EXISTS `wh_team_grants`;

CREATE TABLE `wh_team_grants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint(20) unsigned NOT NULL,
  `isgrant` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `iscreate` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isread` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isupdate` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isdelete` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_team_grants` */

insert  into `wh_team_grants`(`id`,`name`,`module`,`url`,`team_id`,`isgrant`,`iscreate`,`isread`,`isupdate`,`isdelete`,`isactive`,`created_at`,`updated_at`) values 
(1,'','system.user',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(2,'','system.team',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(3,'','system.team.line',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(4,'','master.bpartner',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(5,'','master.product',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(6,'','master.product.line',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(7,'','master.product.subline',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(8,'','master.product.family',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(9,'','master.product.barcode',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(10,'','master.product.reason',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(11,'','move.input',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(12,'','move.input.line',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(13,'','move.output',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(14,'','move.output.line',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(15,'','move.transfer',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(16,'','move.transfer.line',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(17,'','move.production',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(18,'','move.production.line',NULL,1,'N','N','N','N','N','N','2020-12-04 02:58:30','2020-12-04 02:58:30'),
(19,NULL,'system.sequencer',NULL,1,'N','N','N','N','N','N',NULL,NULL),
(20,NULL,'master.currency',NULL,1,'N','N','N','N','N','N',NULL,NULL);

/*Table structure for table `wh_teams` */

DROP TABLE IF EXISTS `wh_teams`;

CREATE TABLE `wh_teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_teams_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_teams` */

insert  into `wh_teams`(`id`,`user_id`,`name`,`personal_team`,`isactive`,`created_at`,`updated_at`) values 
(1,1,'Administradores',1,'Y','2020-12-04 02:58:28','2020-12-04 02:58:28'),
(2,1,'Supervisores',1,'Y','2020-12-04 02:58:28','2020-12-04 02:58:28');

/*Table structure for table `wh_temp` */

DROP TABLE IF EXISTS `wh_temp`;

CREATE TABLE `wh_temp` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `umshort` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datetrx` date DEFAULT NULL,
  `warehouse_id` bigint(20) DEFAULT NULL,
  `reason_id` bigint(20) DEFAULT NULL,
  `bpartner_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `qty` double(15,6) DEFAULT NULL,
  `price` double(15,6) DEFAULT NULL,
  `pack` double(15,6) DEFAULT NULL,
  `grandline` double(15,6) DEFAULT NULL,
  `um_id` bigint(20) DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_temp` */

/*Table structure for table `wh_transfers` */

DROP TABLE IF EXISTS `wh_transfers`;

CREATE TABLE `wh_transfers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `warehouse_id` bigint(20) unsigned DEFAULT NULL,
  `reason_id` bigint(20) unsigned NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_transfers_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `wh_transfers_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `wh_warehouses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_transfers` */

/*Table structure for table `wh_ums` */

DROP TABLE IF EXISTS `wh_ums`;

CREATE TABLE `wh_ums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `umname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isoname` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_ums` */

insert  into `wh_ums`(`id`,`umname`,`shortname`,`isoname`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'KILOS','KG',NULL,'Y',NULL,NULL,NULL,NULL),
(2,'UNIDADES','UND',NULL,'Y',NULL,NULL,NULL,NULL);

/*Table structure for table `wh_users` */

DROP TABLE IF EXISTS `wh_users`;

CREATE TABLE `wh_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isadmin` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wh_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_users` */

insert  into `wh_users`(`id`,`name`,`email`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`current_team_id`,`profile_photo_path`,`isadmin`,`isactive`,`created_at`,`updated_at`) values 
(1,'admin','soporte@miasoftware.net',NULL,'$2y$10$nWRmxwMLwn74CFNJZYQ99.hilaGIIvGSRaiX9iar.6p2OhtRgZzne',NULL,NULL,'6VsPG1id6wgnaOO8OlbeouOw3GMHK9YnjVOQSJKiapTn6gLnbDwg0XEL5HbH',1,NULL,'Y','Y','2020-12-04 02:58:28','2020-12-04 02:58:28');

/*Table structure for table `wh_warehouses` */

DROP TABLE IF EXISTS `wh_warehouses`;

CREATE TABLE `wh_warehouses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `warehousename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehousecode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubigeo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_warehouses` */

insert  into `wh_warehouses`(`id`,`warehousename`,`warehousecode`,`ubigeo`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'ALMACEN PRINCIPAL','AP01',NULL,'Y',NULL,NULL,NULL,NULL),
(2,'AREQUIPA','AR01',NULL,'Y',NULL,NULL,NULL,NULL),
(3,'LIMA - LOS OLIVOS','LI01',NULL,'Y',NULL,NULL,NULL,NULL),
(4,'LIMA - LA VICTORIA','LI02',NULL,'Y',NULL,NULL,NULL,NULL),
(5,'LIMA - SAN BORJA','LI03',NULL,'Y',NULL,NULL,NULL,NULL),
(6,'LIMA - INDEPENDENCIA','LI04',NULL,'Y',NULL,NULL,NULL,NULL);

/* Trigger structure for table `wh_minput_lines` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_add_stock_in_live` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `tr_add_stock_in_live` AFTER INSERT ON `wh_minput_lines` FOR EACH ROW             BEGIN 
                CALL sp_stock_live_proccess('I',NEW.id);
            END */$$


DELIMITER ;

/* Trigger structure for table `wh_moutput_lines` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_rest_stock_in_live` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `tr_rest_stock_in_live` AFTER INSERT ON `wh_moutput_lines` FOR EACH ROW             BEGIN 
                CALL sp_stock_live_proccess('O',NEW.id);
            END */$$


DELIMITER ;

/* Procedure structure for procedure `installx` */

/*!50003 DROP PROCEDURE IF EXISTS  `installx` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `installx`()
BEGIN
	SET FOREIGN_KEY_CHECKS = 0;
	TRUNCATE TABLE wh_currency;
		INSERT INTO wh_currency(currencyname,isoname,symbol)values('SOLES','PEN','S/');
		INSERT INTO wh_currency(currencyname,isoname,symbol)VALUES('DOLARES','USD','$');
	truncate table wh_warehouses; 
		INSERT INTO wh_warehouses(warehousename,warehousecode)VALUES('ALMACEN PRINCIPAL','AP01');
		INSERT INTO wh_warehouses(warehousename,warehousecode)VALUES('AREQUIPA','AR01');
		INSERT INTO wh_warehouses(warehousename,warehousecode)VALUES('LIMA - LOS OLIVOS','LI01');
		INSERT INTO wh_warehouses(warehousename,warehousecode)VALUES('LIMA - LA VICTORIA','LI02');
		INSERT INTO wh_warehouses(warehousename,warehousecode)VALUES('LIMA - SAN BORJA','LI03');
		INSERT INTO wh_warehouses(warehousename,warehousecode)VALUES('LIMA - INDEPENDENCIA','LI04');
	TRUNCATE TABLE wh_ums; 
		INSERT INTO wh_ums(umname,shortname)VALUES('KILOS','KG');
		INSERT INTO wh_ums(umname,shortname)VALUES('UNIDADES','UND');
	TRUNCATE TABLE wh_lines; 
		INSERT INTO wh_lines(linename)VALUES('TELA ACABADA');
	TRUNCATE TABLE wh_sublines; 
		INSERT INTO wh_sublines(sublinename)VALUES('LAPICEROS TINTA SECA');
		INSERT INTO wh_sublines(sublinename)VALUES('LAPICEROS TINTA GEL');
	TRUNCATE TABLE wh_families; 
		INSERT INTO wh_families(familyname)VALUES('JER ALG OSC');
		INSERT INTO wh_families(familyname)VALUES('JER ALG CLARO');
		INSERT INTO wh_families(familyname)VALUES('JER ALG MEDIOS');
		INSERT INTO wh_families(familyname)VALUES('JER ALG BLANCO');
		INSERT INTO wh_families(familyname)VALUES('GAMUZA ALG OSC');
		INSERT INTO wh_families(familyname)VALUES('GAMUZA ALG CLARO');
		INSERT INTO wh_families(familyname)VALUES('GAMUZA ALG MEDIOS');
		INSERT INTO wh_families(familyname)VALUES('GAMUZA ALG BLANCO');
	TRUNCATE TABLE wh_bpartners; 
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20606384387','GRUPO SBF PERU SAC');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20123456789','CLIENTE UNO SAC');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10123456780','SIFUENTES LETELIER ELIZABETH');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20000000001','TRICOT FINE SAC');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602367615','COMERCIAL PICHARA PERU SAC');
		
  	TRUNCATE TABLE wh_reasons; 
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('IN','COMPRA');
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('SA','VENTA');
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('TR','TRASLADO ENTRE ALMACENES');
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('PR','PRODUCCION');
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('ME','AJUSTE POR MERMA');
	truncate table wh_banks;
		insert into wh_banks(currency_id,bankname)values(1,'BCP SOLES');
		INSERT INTO wh_banks(currency_id,bankname)VALUES(2,'BBVA SOLES');
	TRUNCATE TABLE wh_bank_received;
		INSERT INTO wh_bank_received(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,DATE_ADD(NOW(), INTERVAL -15 DAY),1,1,2500,'DEP');
		INSERT INTO wh_bank_received(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,DATE_ADD(NOW(), INTERVAL -13 DAY),1,1,2500,'DEP');
		INSERT INTO wh_bank_received(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,DATE_ADD(NOW(), INTERVAL -10 DAY),1,1,3200,'DEP');
		INSERT INTO wh_bank_received(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,DATE_ADD(NOW(), INTERVAL -8 DAY),1,1,1500,'DEP');
	TRUNCATE TABLE wh_bank_delivered;
		INSERT INTO wh_bank_delivered(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,DATE_ADD(NOW(), INTERVAL -10 DAY),1,1,300.55,'EFE');
		INSERT INTO wh_bank_delivered(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,DATE_ADD(NOW(), INTERVAL -7 DAY),1,1,320.45,'EFE');
		INSERT INTO wh_bank_delivered(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,DATE_ADD(NOW(), INTERVAL -6 DAY),1,1,117.50,'EFE');
	/* Agregamos Movimiento en ALMACEN */
	TRUNCATE TABLE wh_minput_lines;
	TRUNCATE TABLE wh_minputs;
		INSERT INTO wh_minputs(bpartner_id,warehouse_id,datetrx,grandamount) VALUES (1,1,DATE_ADD(NOW(), INTERVAL -12 DAY),120.5*12);
		INSERT INTO wh_minput_lines(minput_id,product_id,qty,price,grandline)VALUES(1,5,120.5,12,120.5*12);
		INSERT INTO wh_minputs(bpartner_id,warehouse_id,datetrx,grandamount) VALUES (1,1,DATE_ADD(NOW(), INTERVAL -7 DAY),400.1*11.9);
		INSERT INTO wh_minput_lines(minput_id,product_id,qty,price,grandline)VALUES(2,5,400.1,11.9,400.1*11.9);
	TRUNCATE TABLE wh_moutput_lines;
	TRUNCATE TABLE wh_moutputs;
		INSERT INTO wh_moutputs(bpartner_id,warehouse_id,datetrx,grandamount) VALUES (1,1,DATE_ADD(NOW(), INTERVAL -11 DAY),62.4*12.5);
		INSERT INTO wh_moutput_lines(moutput_id,product_id,qty,price,grandline)VALUES(1,5,62.4,12.5,62.4*12.5);
		INSERT INTO wh_moutputs(bpartner_id,warehouse_id,datetrx,grandamount) VALUES (1,1,DATE_ADD(NOW(), INTERVAL -5 DAY),81*12.1);
		INSERT INTO wh_moutput_lines(moutput_id,product_id,qty,price,grandline)VALUES(2,5,81,12.1,81*12.1);
	truncate table wh_products;
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 ARENA','C0002');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 AZULINO','C0003');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 BOTELLA','C0004');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 CEMENTO','C0005');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 CHOCOLATE','C0006');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 MARINO','C0007');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 MELANGE 25%','C0008');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 NEGRO','C0009');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 PLATA','C0010');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 ROJO','C0011');
		INSERT INTO wh_products(productname,productcode)VALUES('CUELLOS 24/1 ALGODON 40 SOMBRA','C0012');
		INSERT INTO wh_products(productname,productcode)VALUES('FALSO INTERLOCK 30/1 ALGODON 80 BLANCO','F0013');
		INSERT INTO wh_products(productname,productcode)VALUES('FALSO INTERLOCK 30/1 ALGODON 80 CELESTE','F0014');
		INSERT INTO wh_products(productname,productcode)VALUES('FALSO INTERLOCK 30/1 ALGODON 80 PATO','F0015');
		INSERT INTO wh_products(productname,productcode)VALUES('FALSO INTERLOCK 30/1 ALGODON 80 ROSADO','F0016');
		INSERT INTO wh_products(productname,productcode)VALUES('FALSO INTERLOCK 30/1 ALGODON 80 VERDE','F0017');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 ACERO','F0018');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 ARENA','F0019');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 AZUL','F0020');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 AZULINO','F0021');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 BARNIE','F0022');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 BLANCO','F0023');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 CELESTE','F0024');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 GUINDA','F0025');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 MANDARINA','F0026');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 MARINO','F0027');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 MARRON','F0028');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 MELANGE 10%','F0029');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 MELANGE 3%','F0030');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 MELANGE 5%','F0031');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 MILITAR','F0032');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 NEGRO','F0033');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 PALO','F0034');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 PATO','F0035');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 ROJO','F0036');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 ROSA','F0037');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 TURQUEZA','F0038');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 ALGODON 90 VERDE','F0039');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 AZUL','F0040');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 BLANCO','F0041');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 CELESTE','F0042');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 MARINO','F0043');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 MELANGE 12%','F0044');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 NEGRO','F0045');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 PATO','F0046');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 ROSADO','F0047');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 20/10 POLYALGODON 90 VERDE','F0048');
		INSERT INTO wh_products(productname,productcode)VALUES('FRANELA 24/10 ALGODON 95 MELANGE 3%','F0049');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 ACERO','G0050');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 AZULINO','G0051');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 BARNIE','G0052');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 CHICLE','G0053');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 FRESA','G0054');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 FUCSIA','G0055');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 KORAL','G0056');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 LIMA','G0057');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 MANDARINA','G0058');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 MARINO','G0059');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 MARRON','G0060');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 MELANGE 10%','G0061');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 MELANGE 25%','G0062');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 MILITAR','G0063');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 MORA','G0064');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 NARANJA','G0065');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 NEGRO','G0066');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 PERICO','G0067');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 ROJO','G0068');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 ALGODON 90 TURQUEZA','G0069');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 AQUA','G0070');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 BANANA','G0071');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 BLANCO','G0072');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 CELESTE','G0073');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 CREMA','G0074');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 LIMON','G0075');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 MAIZ','G0076');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 MARINO','G0077');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 MELANGE 25%','G0078');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 MELON','G0079');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 NEGRO','G0080');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 PATO','G0081');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 ROSADO','G0082');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 90 VERDE','G0083');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 92 BLANCO','G0084');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 92 CELESTE','G0085');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 92 MAIZ','G0086');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 92 ROSA','G0087');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 92 VERDE','G0088');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 93 ROSA','G0089');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 93 ROSADO','G0090');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 93 VERDE','G0091');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 AZULINO','G0092');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 BLANCO','G0093');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 CELESTE','G0094');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 LILA','G0095');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 MAIZ','G0096');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 NARANJA','G0097');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 ORO','G0098');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 PATO','G0099');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 ROSADO','G0100');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 30/1 POLYALGODON 94 TURQUEZA','G0101');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 50/1 ALGODON 80 BLANCO','G0102');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 50/1 ALGODON 80 MARINO','G0103');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 50/1 ALGODON 80 TURQUEZA','G0104');
		INSERT INTO wh_products(productname,productcode)VALUES('GAMUZA 50/1 POLYALGODON 80 CHICLE','G0105');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 80 BLANCO','J0106');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 80 NEGRO','J0107');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 ACERO','J0108');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 ARENA','J0109');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 AZULINO','J0110');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 BARNIE','J0111');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 BEIGE','J0112');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 BLANCO','J0113');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 BOTELLA','J0114');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 CELESTE','J0115');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 CEMENTO','J0116');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 CREMA','J0117');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 GUINDA','J0118');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 ITALIANO','J0119');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 LACRE','J0120');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 LILA','J0121');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 LIMON','J0122');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 MANDARINA','J0123');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 MARINO','J0124');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 MELANGE 10%','J0125');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 MILITAR','J0126');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 MORA','J0127');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 MOSTAZA','J0128');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 NARANJA','J0129');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 NEGRO','J0130');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 ORO','J0131');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 PERICO','J0132');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 PLATA','J0133');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 ROSADO','J0134');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 SALESIANO','J0135');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 SOMBRA','J0136');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 ALGODON 90 TURQUEZA','J0137');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 POLYALGODON 90 BLANCO','J0138');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 POLYALGODON 90 MELANGE 12%','J0139');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 POLYALGODON 90 MELANGE 25%','J0140');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 20/1 POLYALGODON 90 MELANGE 3%','J0141');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 24/1 ALGODON 80 NEGRO','J0142');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 24/1 ALGODON 90 MARINO','J0143');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 50 BLANCO','J0144');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 ARENA','J0145');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 AZULINO','J0146');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 BLANCO','J0147');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 BOTELLA','J0148');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 ITALIANO','J0149');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 LACRE','J0150');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 MARINO','J0151');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 MELANGE 25%','J0152');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 MILITAR','J0153');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 MOSTAZA','J0154');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 NEGRO','J0155');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 ORO','J0156');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 PLATA','J0157');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 ROJO','J0158');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 52 SALESIANO','J0159');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 ARENA','J0160');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 AZULINO','J0161');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 BLANCO','J0162');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 BOTELLA','J0163');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 ITALIANO','J0164');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 LACRE','J0165');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 LIMA','J0166');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 MARINO','J0167');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 MELANGE 25%','J0168');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 MILITAR','J0169');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 MOSTAZA','J0170');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 NARANJA','J0171');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 NEGRO','J0172');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 ORO','J0173');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 PERICO','J0174');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 PLATA','J0175');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 ROJO','J0176');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 58 SALESIANO','J0177');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 75 BLANCO','J0178');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 75 MARINO','J0179');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 75 MILITAR','J0180');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 75 NARANJA','J0181');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 75 NEGRO','J0182');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 75 ORO','J0183');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 75 ROJO','J0184');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 75 TURQUEZA','J0185');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 ACERO','J0186');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 ANTIQUE','J0187');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 AQUA','J0188');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 ARENA','J0189');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 AZULINO','J0190');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 BARNIE','J0191');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 BEIGE','J0192');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 BLANCO','J0193');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 BOTELLA','J0194');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 CELESTE','J0195');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 CEMENTO','J0196');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 CHICLE','J0197');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 CHOCOLATE','J0198');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 CREMA','J0199');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 FRESA','J0200');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 FUCSIA','J0201');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 GUINDA','J0202');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 ITALIANO','J0203');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 JADE','J0204');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 KORAL','J0205');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 LACRE','J0206');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 LILA','J0207');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 LIMON','J0208');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MAIZ','J0209');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MANDARINA','J0210');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MANZANA','J0211');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MARRON','J0212');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MELANGE 10%','J0213');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MELANGE 25%','J0214');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MELANGE 3%','J0215');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MILITAR','J0216');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MORA','J0217');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 MOSTAZA','J0218');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 NARANJA','J0219');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 NEGRO','J0220');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 ORO','J0221');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 PALO','J0222');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 PATO','J0223');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 PERICO','J0224');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 PISTACHO','J0225');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 PLATA','J0226');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 PLOMO','J0227');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 ROJO','J0228');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 ROSA','J0229');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 ROSADO','J0230');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 SALESIANO','J0231');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 SOMBRA','J0232');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 TURQUEZA','J0233');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 80 VERDE','J0234');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 82 ORO','J0235');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 ARENA','J0236');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 AZULINO','J0237');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 BEIGE','J0238');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 BLANCO','J0239');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 BOTELLA','J0240');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 CELESTE','J0241');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 CEMENTO','J0242');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 CHICLE','J0243');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 CHOCOLATE','J0244');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 FUCSIA','J0245');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 GUINDA','J0246');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 ITALIANO','J0247');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 LILA','J0248');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 LIMON','J0249');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 MANZANA','J0250');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 MARINO','J0251');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 MARRON','J0252');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 MELANGE 10%','J0253');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 MELANGE 25%','J0254');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 MILITAR','J0255');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 MORA','J0256');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 MOSTAZA','J0257');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 NARANJA','J0258');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 NEGRO','J0259');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 ORO','J0260');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 PERICO','J0261');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 PLATA','J0262');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 ROJO','J0263');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 ROSA','J0264');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 ROSADO','J0265');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 SALESIANO','J0266');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 85 TURQUEZA','J0267');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 AZULINO','J0268');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 BLANCO','J0269');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 LILA','J0270');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 MARINO','J0271');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 MILITAR','J0272');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 NARANJA','J0273');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 NEGRO','J0274');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 ORO','J0275');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 PATO','J0276');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 PERICO','J0277');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 ROJO','J0278');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 SALESIANO','J0279');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 87 TURQUEZA','J0280');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 88 BLANCO','J0281');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 ACERO','J0282');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 AMARILLO','J0283');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 ANTIQUE','J0284');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 AQUA','J0285');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 ARENA','J0286');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 AZULINO','J0287');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 BARNIE','J0288');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 BEIGE','J0289');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 BLANCO','J0290');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 BOTELLA','J0291');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 CELESTE','J0292');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 CEMENTO','J0293');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 CHICLE','J0294');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 CHOCOLATE','J0295');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 CREMA','J0296');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 CRISTAL','J0297');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 FRESA','J0298');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 FUCSIA','J0299');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 GUINDA','J0300');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 ITALIANO','J0301');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 JADE','J0302');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 KORAL','J0303');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 LACRE','J0304');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 LILA','J0305');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 LIMON','J0306');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MAIZ','J0307');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MANDARINA','J0308');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MANZANA','J0309');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MARINO','J0310');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MARRON','J0311');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MELANGE 10%','J0312');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MELANGE 12%','J0313');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MELANGE 25%','J0314');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MELANGE 3%','J0315');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MELON','J0316');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MILITAR','J0317');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MORA','J0318');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 MOSTAZA','J0319');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 NARANJA','J0320');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 NEGRO','J0321');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 ORO','J0322');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 PALO','J0323');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 PATO','J0324');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 PERICO','J0325');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 PISTACHO','J0326');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 PLATA','J0327');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 PLOMO','J0328');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 ROJO','J0329');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 ROSA','J0330');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 ROSADO','J0331');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 SALESIANO','J0332');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 SOMBRA','J0333');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 TURQUEZA','J0334');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 90 VERDE','J0335');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 91 BLANCO','J0336');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 91 CELESTE','J0337');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 94 BLANCO','J0338');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 ALGODON 94 MELANGE 25%','J0339');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 LAGODON 90 PERICO','J0340');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 50 BLANCO','J0341');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 51 BLANCO','J0342');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 52 BLANCO','J0343');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 54 BLANCO','J0344');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 56 BLANCO','J0345');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 58 BLANCO','J0346');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 80 BLANCO','J0347');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 80 MELANGE 3%','J0348');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 85 BLANCO','J0349');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 86 BLANCO','J0350');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 ARENA','J0351');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 AZULINO','J0352');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 BEIGE','J0353');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 BLANCO','J0354');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 CELESTE','J0355');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 CEMENTO','J0356');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 CHICLE','J0357');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 CREMA','J0358');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 CRISTAL','J0359');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 LILA','J0360');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 LIMON','J0361');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 MAIZ','J0362');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 MANDARINA','J0363');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 MELON','J0364');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 PATO','J0365');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 PLATA','J0366');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 ROJO','J0367');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 ROSADO','J0368');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 TURQUEZA','J0369');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 90 VERDE','J0370');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 93 BANANA','J0371');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 93 CELESTE','J0372');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 93 CREMA','J0373');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 93 LIMON','J0374');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 93 PATO','J0375');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 93 ROSADO','J0376');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY 30/1 POLYALGODON 93 VERDE','J0377');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LABRADO 30/1 ALGODON 80 BLANCO','J0378');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LABRADO 30/1 ALGODON 80 CELESTE','J0379');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LABRADO 30/1 ALGODON 80 ROSAD','J0380');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LABRADO 30/1 ALGODON 80 VERDE','J0381');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 ANTIQUE','J0382');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 ARENA','J0383');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 AZULINO','J0384');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 BEIGE','J0385');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 BLANCO','J0386');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 BOTELLA','J0387');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 CEMENTO','J0388');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 CHOCOLATE','J0389');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 CREMA','J0390');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 ITALIANO','J0391');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 MARINO','J0392');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 MELANGE 3%','J0393');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 NEGRO','J0394');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 PLATA','J0395');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 80 SOMBRA','J0396');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 90 ANTIQUE','J0397');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 90 ARENA','J0398');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 90 AZULINO','J0399');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 90 BLANCO','J0400');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 90 BOTELLA','J0401');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 90 MARINO','J0402');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 90 PLATA','J0403');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSEY LISTADO 30/1 ALGODON 90 ROJO','J0404');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSING LISTADO 30/1 ALGODON 75 CELESTE','J0405');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSING LISTADO 30/1 ALGODON 75 LIMON','J0406');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSING LISTADO 30/1 ALGODON 75 PATO','J0407');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSING LISTADO 30/1 ALGODON 75 ROSADO','J0408');
		INSERT INTO wh_products(productname,productcode)VALUES('JERSING LISTADO 30/1 ALGODON 75 VERDE','J0409');
		INSERT INTO wh_products(productname,productcode)VALUES('PIQUE 24/1 ALGODON 90 PERICO','P0410');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 150/2 POLYALGODON 85 ROJO','R0411');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 ACERO','R0412');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 ARENA','R0413');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 AZULINO','R0414');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 BARNIE','R0415');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 BEIGE','R0416');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 BLANCO','R0417');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 BOTELLA','R0418');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 CELESTE','R0419');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 CEMENTO','R0420');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 CREMA','R0421');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 GUINDA','R0422');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 ITALIANO','R0423');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 LACRE','R0424');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 LILA','R0425');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 LIMON','R0426');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MAIZ','R0427');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MANDARINA','R0428');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MANZANA','R0429');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MARINO','R0430');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MARRON','R0431');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MELANGE 10%','R0432');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MELANGE 3%','R0433');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MILITAR','R0434');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MORA','R0435');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 MOSTAZA','R0436');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 NARANJA','R0437');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 NEGRO','R0438');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 ORO','R0439');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 PERICO','R0440');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 PISTACHO','R0441');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 PLATA','R0442');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 ROJO','R0443');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 ROSADO','R0444');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 SALESIANO','R0445');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 SOMBRA','R0446');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 ALGODON 80 TURQUEZA','R0447');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 POLYALGODON 80 BLANCO','R0448');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 20/1 POLYALGODON 80 MELANGE 3%','R0449');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 24/1 ALGODON 80 MARINO','R0450');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 24/1 ALGODON 80 MELANGE 10%','R0451');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 60 BLANCO','R0452');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 ACERO','R0453');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 AMARILLO','R0454');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 ANTIQUE','R0455');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 AQUA','R0456');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 ARENA','R0457');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 AZULINO','R0458');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 BARNIE','R0459');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 BEIGE','R0460');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 BLANCO','R0461');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 BOTELLA','R0462');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 CELESTE','R0463');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 CEMENTO','R0464');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 CHICLE','R0465');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 CHOCOLATE','R0466');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 CREMA','R0467');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 CRISTAL','R0468');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 FRESA','R0469');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 FUCSIA','R0470');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 GUINDA','R0471');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 ITALIANO','R0472');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 JADE','R0473');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 KORAL','R0474');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 LACRE','R0475');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 LILA','R0476');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 LIMON','R0477');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MAIZ','R0478');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MANDARINA','R0479');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MANZANA','R0480');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MARINO','R0481');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MARRON','R0482');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MELANGE 12%','R0483');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MELANGE 3%','R0484');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MELON','R0485');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MILITAR','R0486');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MORA','R0487');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 MOSTAZA','R0488');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 NARANJA','R0489');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 NEGRO','R0490');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 ORO','R0491');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 PALO','R0492');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 PATO','R0493');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 PERICO','R0494');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 PISTACHO','R0495');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 PLATA','R0496');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 PLOMO','R0497');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 ROJO','R0498');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 ROSA','R0499');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 ROSADO','R0500');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 SALESIANO','R0501');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 SOMBRA','R0502');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 TURQUEZA','R0503');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 ALGODON 80 VERDE','R0504');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 BLANCO','R0505');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 CELESTE','R0506');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 CHICLE','R0507');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 CREMA','R0508');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 LILA','R0509');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 LIMON','R0510');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 MAIZ','R0511');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 MELANGE 10%','R0512');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 MELON','R0513');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 PATO','R0514');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 ROSA','R0515');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 ROSADO','R0516');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB 30/1 POLYALGODON 80 VERDE','R0517');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 ARENA','R0518');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 FRESA','R0519');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 ITALIANO','R0520');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 MARINO','R0521');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 MARRON','R0522');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 MELANGE 10%','R0523');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 NEGRO','R0524');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 PALO','R0525');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 ROSADO','R0526');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADO 30/1 ALGODON 78 TURQUEZA','R0527');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADOR 30/1 ALGODON 78 BLANCO','R0528');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADOR 30/1 ALGODON 78 CELESTE','R0529');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADOR 30/1 ALGODON 78 PATO','R0530');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADOR 30/1 ALGODON 78 VERDE','R0531');
		INSERT INTO wh_products(productname,productcode)VALUES('RIB LYCRADOR 30/1 ALGODON 80 ACERO','R0532');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 ACERO','S0533');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 ARENA','S0534');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 AZULINO','S0535');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 BARNIE','S0536');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 BOTELLA','S0537');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 CHICLE','S0538');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 FUCSIA','S0539');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 ITALIANO','S0540');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 LACRE','S0541');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 LILA','S0542');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MANDARINA','S0543');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MANZANA','S0544');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MARINO','S0545');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MARRON','S0546');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MELANGE 10%','S0547');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MELANGE 3%','S0548');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MILITAR','S0549');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MORA','S0550');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 MOSTAZA','S0551');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 NARANJA','S0552');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 NEGRO','S0553');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 ORO','S0554');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 PALO','S0555');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 PATO','S0556');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 PERICO','S0557');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 PISTACHO','S0558');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 SALESIANO','S0559');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 TURQUEZA','S0560');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 ALGODON 83 VERDE','S0561');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 ARENA','S0562');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 AZUL','S0563');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 BEIGE','S0564');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 BLANCO','S0565');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 CELESTE','S0566');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 CREMA','S0567');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 LILA','S0568');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 MAIZ','S0569');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 MARINO','S0570');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 MELANGE 3%','S0571');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 NEGRO','S0572');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 ORO','S0573');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 PALO','S0574');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 PLATA','S0575');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 ROSADO','S0576');
		INSERT INTO wh_products(productname,productcode)VALUES('STRECH 24/1 POLYALGODON 83 VERDE','S0577');
		INSERT INTO wh_products(productname,productcode)VALUES('WAFFER 30/1 ALGODON 78 CELESTE','W0578');
		INSERT INTO wh_products(productname,productcode)VALUES('WAFFER 30/1 ALGODON 78 LIMON','W0579');
		INSERT INTO wh_products(productname,productcode)VALUES('WAFFER 30/1 ALGODON 78 PATO','W0580');
		INSERT INTO wh_products(productname,productcode)VALUES('WAFFER 30/1 ALGODON 78 ROSADO','W0581');
		INSERT INTO wh_products(productname,productcode)VALUES('WAFFER 30/1 ALGODON 78 VERDE','W0582');
		update wh_products set um_id=1;
	SET FOREIGN_KEY_CHECKS = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_bpartner_update_saldo` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_bpartner_update_saldo` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `sp_bpartner_update_saldo`(p_bpartner_id bigint)
BEGIN
	select 0;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_grant` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_grant` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `sp_grant`(p_user_id bigint,p_team_id bigint,p_module varchar(100))
BEGIN
	set @flag = 0;
	set @IsAdmin = 'N';
	set @response = 'N';
	-- declare flag int DEFAULT 0;
	-- declare @response char(1) DEFAULT 'N';
	
	SET @flag = (
					select COUNT(*) 
					FROM wh_team_grants 
					where 
						team_id = p_team_id
						AND module = p_module
				);
	set @IsAdmin = (
					SELECT isadmin
					from wh_users
					WHERE wh_users.id = p_user_id
				);
	if @flag = 0 then
		INSERT INTO wh_team_grants(team_id,module) values (p_team_id,p_module);
	end if;
	-- Recuperamos el registro
	if @IsAdmin = 'Y' then
		SELECT p_module as module,
				'Y' as isgrant, 
				'Y' AS iscreate,
				'Y' AS isread,
				'Y' AS isupdate,
				'Y' AS isdelete,
				'Y' AS isactive; 	
	else
		SELECT module, isgrant, iscreate, isread, isupdate, isdelete, isactive 
		FROM wh_team_grants
		WHERE team_id = p_team_id
			AND module = p_module;
	end if;
	
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_grant_action` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_grant_action` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `sp_grant_action`(p_team_id bigint,p_module varchar(100), p_action varchar(30))
BEGIN
	set @flag = 0;
	set @response = 'N';
	-- declare flag int DEFAULT 0;
	-- declare @response char(1) DEFAULT 'N';
	
	SET @flag = (
					select COUNT(*) 
					FROM wh_team_grants 
					where 
						team_id = p_team_id
						AND module = p_module
				);
	if @flag = 0 then
		INSERT INTO wh_team_grants(team_id,module) values (p_team_id,p_module);
	end if;
	-- Recuperamos el registro
	select isgrant, iscreate,isread,isupdate,isdelete,isactive 
	into @isgrant,@iscreate,@isread,@isupdate,@isdelete,@isactive 
	FROM wh_team_grants
	where team_id = p_team_id
		AND module = p_module;
	-- verificamos el tipo de accion para responder el grant
	SELECT 
		CASE 
		when p_action = 'grant' then @isgrant
		WHEN p_action = 'create' THEN @iscreate
		WHEN p_action = 'read' THEN @isread
		WHEN p_action = 'update' THEN @isupdate
		WHEN p_action = 'delete' THEN @isdelete
		WHEN p_action = 'active' THEN @isactive
		else 'N'
		end as run;
		
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_eecc` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_eecc` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `sp_report_eecc`(p_bpartner_id bigint, p_dateinit date,p_dateend date)
BEGIN
/*
Para hacer pruebas se debe de hacer lo siguiente:

CALL sp_report_eecc(1,'2020-01-01','2020-12-31');

*/
 
	
	select
		eecc.datetrx,
		eecc.record_id,
		eecc.description,
		eecc.typesignal,
		eecc.amount_abono,
		eecc.amount_cargo,
		eecc.amount,
		SUM(eecc.amountsignal) OVER (oRDER BY eecc.datetrx,eecc.record_id) AS balance
	from (
		/* SALDO INICIAL */
		SELECT 
			'init' AS `module`,
			0 as record_id,
			DATE_ADD(p_dateinit, INTERVAL -1 DAY) as datetrx,	
			p_bpartner_id as bpartner_id,		
			'SALDO INICIAL' as description,
			null as typesignal, 
			null as amount_cargo,			
			null as amount_abono,
			SUM(si.amount) as amountsignal,
			sum(si.amount) as amount
		from whv_eecc si
		WHERE 
			si.typesignal = '+'
			and si.datetrx < p_dateinit
			and si.bpartner_id = p_bpartner_id
				
		UNION ALL
			
		/* INGRESO MERCADERIA - COMO PROVEEDOR */
		SELECT
			'minput' AS `module`,
			`a`.`id` AS `record_id`,
			`a`.`datetrx` AS `datetrx`,
			`a`.`bpartner_id` AS `bpartner_id`,
			CONCAT('INGRESO',' ',aw.warehousename) AS description,
			'+' AS `typesignal`,
			NULL AS `amount_abono`,
			NULL AS `amount_cargo`,
			`a`.`grandamount` * -1 AS `amountsignal`,
			`a`.`grandamount` AS `amount`
		FROM
			`wh_minputs` `a`
		left join wh_warehouses aw on aw.id = a.warehouse_id
		where 
			a.datetrx BETWEEN p_dateinit AND p_dateend
			AND a.bpartner_id = p_bpartner_id
		
		union all
		/* PAGOS RECIBIDOS */
		select 
			'preceived' AS `module`,
			c.id AS record_id,
			`c`.`datetrx` AS `datetrx`,
			`c`.`bpartner_id` AS `bpartner_id`,
			'ABONO' as description,
			'+' AS `typesignal`,    
			null AS amount_cargo,
			c.amount AS amount_abono,
			`c`.`amount` AS `amountsignal`,
			`c`.`amount` AS `amount`
		FROM
			`wh_bank_received` `c`
		where
			c.datetrx between p_dateinit AND p_dateend
			and c.bpartner_id = p_bpartner_id
			
		union all
		/* PAGOS EMITIDOS */
		SELECT 
			'pdelivered' AS `module`,
			c.id AS record_id,
			`c`.`datetrx` AS `datetrx`,
			`c`.`bpartner_id` AS `bpartner_id`,
			concat(c.doctype,' ',cb.bankname) AS description,
			'-' AS `typesignal`,    
			c.amount AS amount_cargo,
			null AS amount_abono,
			`c`.`amount` * -1 AS `amountsignal`,
			`c`.`amount` AS `amount`
		FROM
			`wh_bank_delivered` `c`
		inner join wh_banks cb on cb.id = c.bank_id
		WHERE
			c.datetrx BETWEEN p_dateinit AND p_dateend
			AND c.bpartner_id = p_bpartner_id
	) as eecc
	ORDER BY eecc.datetrx;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_report_kardex_product` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_report_kardex_product` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `sp_report_kardex_product`(p_product_id BIGINT, p_dateinit DATE,p_dateend DATE)
BEGIN
	select 
		null as kx_datetrx,
		null as kx_qty;
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_stock_live_proccess` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_stock_live_proccess` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `sp_stock_live_proccess`(p_movetype varchar(1),p_doc_line_id bigint)
BEGIN
/*
	El valor de p_doc_line_id debe ser el ID de la Linea del documento
	
	Ingreso de producto
	CALL sp_stock_live_proccess('I',1230);

	Salida de producto, el valor se pasa como positivo absoluto
	CALL sp_stock_live_proccess('O',3452);
*/
	DECLARE l_check BIGINT DEFAULT 0;
	DECLARE l_warehouse_id BIGINT;
	declare l_product_id bigint;
	declare l_qty float;
	if(p_movetype = 'I') then
		begin 
			SELECT warehouse_id,product_id,a.qty into l_warehouse_id,l_product_id,l_qty
			from wh_minput_lines a
			inner join wh_minputs b on b.id = a.minput_id
			where a.id = p_doc_line_id;
			
			-- Verificamos si el producto esta en el STOCK
			SET l_check = (
							SELECT COUNT(*)  
							FROM wh_stock a
							WHERE a.product_id = l_product_id
							AND a.warehouse_id = l_warehouse_id
						);
			-- INSERT INTO messages(message)VALUES(CONCAT('check=',l_check));
			IF(l_check = 0 ) THEN
				BEGIN
					INSERT INTO wh_stock (warehouse_id,product_id,stock,created_at)
					VALUES (l_warehouse_id,l_product_id,l_qty,now());
					-- INSERT INTO messages(message)VALUES(CONCAT('add_stock=',l_warehouse_id,l_product_id,l_qty));
				END; 
			ELSE
				BEGIN
					UPDATE wh_stock SET 
						wh_stock.stock =  wh_stock.stock + l_qty, 
						wh_stock.updated_at = now()
					WHERE wh_stock.warehouse_id = l_warehouse_id 
						AND wh_stock.product_id = l_product_id;
					-- INSERT INTO messages(message)VALUES(CONCAT('upd_stock=',l_warehouse_id,l_product_id,l_qty));
				END;
			END IF;
		end;
	elseif(p_movetype = 'O') then
		begin
			SELECT warehouse_id,product_id,a.qty INTO l_warehouse_id,l_product_id,l_qty
			FROM wh_moutput_lines a
			INNER JOIN wh_moutputs b ON b.id = a.moutput_id
			WHERE a.id = p_doc_line_id;
			
			-- Verificamos si el producto esta en el STOCK
			SET l_check = (
							SELECT COUNT(*)  
							FROM wh_stock a
							WHERE a.product_id = l_product_id
							AND a.warehouse_id = l_warehouse_id
						);
			-- INSERT INTO messages(message)VALUES(CONCAT('check=',l_check));
			IF(l_check = 0 ) THEN
				BEGIN
					INSERT INTO wh_stock (warehouse_id,product_id,stock,created_at)
					VALUES (l_warehouse_id,l_product_id,l_qty,NOW());
					-- INSERT INTO messages(message)VALUES(CONCAT('add_stock=',l_warehouse_id,l_product_id,l_qty));
				END; 
			ELSE
				BEGIN
					UPDATE wh_stock SET 
						wh_stock.stock =  wh_stock.stock - l_qty, 
						wh_stock.updated_at = NOW()
					WHERE wh_stock.warehouse_id = l_warehouse_id 
						AND wh_stock.product_id = l_product_id;
					-- INSERT INTO messages(message)VALUES(CONCAT('upd_stock=',l_warehouse_id,l_product_id,l_qty));
				END;
			END IF;
		end;
	end if;
	
END */$$
DELIMITER ;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

/*!50001 DROP VIEW IF EXISTS `users` */;
/*!50001 DROP TABLE IF EXISTS `users` */;

/*!50001 CREATE TABLE  `users`(
 `id` bigint(20) unsigned ,
 `name` varchar(255) ,
 `email` varchar(255) ,
 `email_verified_at` timestamp ,
 `password` varchar(255) ,
 `two_factor_secret` text ,
 `two_factor_recovery_codes` text ,
 `remember_token` varchar(100) ,
 `current_team_id` bigint(20) unsigned ,
 `profile_photo_path` text ,
 `created_at` timestamp ,
 `updated_at` timestamp 
)*/;

/*Table structure for table `whv_eecc` */

DROP TABLE IF EXISTS `whv_eecc`;

/*!50001 DROP VIEW IF EXISTS `whv_eecc` */;
/*!50001 DROP TABLE IF EXISTS `whv_eecc` */;

/*!50001 CREATE TABLE  `whv_eecc`(
 `module` varchar(10) ,
 `record_id` bigint(20) unsigned ,
 `datetrx` date ,
 `bpartner_id` bigint(20) unsigned ,
 `typesignal` varchar(1) ,
 `amount_abono` null ,
 `amount_cargo` null ,
 `amountsignal` double ,
 `amount` double 
)*/;

/*Table structure for table `whv_stock` */

DROP TABLE IF EXISTS `whv_stock`;

/*!50001 DROP VIEW IF EXISTS `whv_stock` */;
/*!50001 DROP TABLE IF EXISTS `whv_stock` */;

/*!50001 CREATE TABLE  `whv_stock`(
 `id` bigint(20) unsigned ,
 `datetrx` date ,
 `token` varchar(50) ,
 `reason_id` bigint(20) unsigned ,
 `bpartner_id` bigint(20) unsigned ,
 `warehouse_id` bigint(20) unsigned ,
 `isactive` enum('Y','N') ,
 `created_at` timestamp ,
 `updated_at` timestamp 
)*/;

/*View structure for view users */

/*!50001 DROP TABLE IF EXISTS `users` */;
/*!50001 DROP VIEW IF EXISTS `users` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `users` AS (select `u`.`id` AS `id`,`u`.`name` AS `name`,`u`.`email` AS `email`,`u`.`email_verified_at` AS `email_verified_at`,`u`.`password` AS `password`,`u`.`two_factor_secret` AS `two_factor_secret`,`u`.`two_factor_recovery_codes` AS `two_factor_recovery_codes`,`u`.`remember_token` AS `remember_token`,`u`.`current_team_id` AS `current_team_id`,`u`.`profile_photo_path` AS `profile_photo_path`,`u`.`created_at` AS `created_at`,`u`.`updated_at` AS `updated_at` from `wh_users` `u`) */;

/*View structure for view whv_eecc */

/*!50001 DROP TABLE IF EXISTS `whv_eecc` */;
/*!50001 DROP VIEW IF EXISTS `whv_eecc` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `whv_eecc` AS select 'minput' AS `module`,`a`.`id` AS `record_id`,`a`.`datetrx` AS `datetrx`,`a`.`bpartner_id` AS `bpartner_id`,'+' AS `typesignal`,NULL AS `amount_abono`,NULL AS `amount_cargo`,`a`.`grandamount` * -1 AS `amountsignal`,`a`.`grandamount` AS `amount` from `wh_minputs` `a` union all select 'moutput' AS `module`,`b`.`id` AS `record_id`,`b`.`datetrx` AS `datetrx`,`b`.`bpartner_id` AS `bpartner_id`,'-' AS `typesignal`,NULL AS `amount_abono`,NULL AS `amount_cargo`,`b`.`grandamount` AS `amountsignal`,`b`.`grandamount` AS `amount` from `wh_moutputs` `b` union all select 'preceived' AS `module`,`c`.`id` AS `record_id`,`c`.`datetrx` AS `datetrx`,`c`.`bpartner_id` AS `bpartner_id`,'+' AS `typesignal`,NULL AS `amount_abono`,NULL AS `amount_cargo`,`c`.`amount` AS `amountsignal`,`c`.`amount` AS `amount` from `wh_bank_received` `c` union all select 'pdelivered' AS `module`,`d`.`id` AS `record_id`,`d`.`datetrx` AS `datetrx`,`d`.`bpartner_id` AS `bpartner_id`,'-' AS `typesignal`,NULL AS `amount_abono`,NULL AS `amount_cargo`,`d`.`amount` * -1 AS `amountsignal`,`d`.`amount` AS `amount` from `wh_bank_delivered` `d` */;

/*View structure for view whv_stock */

/*!50001 DROP TABLE IF EXISTS `whv_stock` */;
/*!50001 DROP VIEW IF EXISTS `whv_stock` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `whv_stock` AS (select `a`.`id` AS `id`,`a`.`datetrx` AS `datetrx`,`a`.`token` AS `token`,`a`.`reason_id` AS `reason_id`,`a`.`bpartner_id` AS `bpartner_id`,`a`.`warehouse_id` AS `warehouse_id`,`a`.`isactive` AS `isactive`,`a`.`created_at` AS `created_at`,`a`.`updated_at` AS `updated_at` from `wh_minputs` `a`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
