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
) ENGINE=InnoDB AUTO_INCREMENT=6513 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(6466,'2012_10_12_000000_create_users_table',1),
(6467,'2013_05_21_100000_create_teams_table',1),
(6468,'2014_10_12_100000_create_password_resets_table',1),
(6469,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),
(6470,'2019_08_19_000000_create_failed_jobs_table',1),
(6471,'2019_12_14_000001_create_personal_access_tokens_table',1),
(6472,'2020_05_21_200000_create_team_user_table',1),
(6473,'2020_11_02_053654_wh_currency',1),
(6474,'2020_11_02_055432_wh_warehouse',1),
(6475,'2020_11_02_083324_create_sessions_table',1),
(6476,'2020_11_02_084430_wh_line',1),
(6477,'2020_11_02_084439_wh_sub_line',1),
(6478,'2020_11_02_084448_wh_family',1),
(6479,'2020_11_02_084519_wh_bar_code',1),
(6480,'2020_11_02_084601_wh_reason',1),
(6481,'2020_11_02_084649_wh_product',1),
(6482,'2020_11_02_084657_wh_minput',1),
(6483,'2020_11_02_084709_wh_minput_line',1),
(6484,'2020_11_02_084724_wh_moutput',1),
(6485,'2020_11_02_084732_wh_moutput_line',1),
(6486,'2020_11_02_084800_wh_transfer',1),
(6487,'2020_11_02_084807_wh_transfer_line',1),
(6488,'2020_11_02_084845_wh_production',1),
(6489,'2020_11_02_084852_wh_production_line',1),
(6490,'2020_11_03_204500_wh_um',1),
(6491,'2020_11_04_061934_wh_bpartner',1),
(6492,'2020_11_04_154442_wh_temp',1),
(6493,'2020_11_09_002024_wh_stock',1),
(6494,'2020_11_09_144528_wh_bank',1),
(6495,'2020_11_09_152223_bank_received',1),
(6496,'2020_11_09_152344_bank_delivered',1),
(6497,'2020_11_10_003507_wh_doc_type',1),
(6498,'2020_11_26_050021_create_wh_team_grants_table',1),
(6499,'2020_12_03_024854_create_wh_sequencers_table',1),
(6500,'2020_12_07_050449_create_wh_pos_configs_table',1),
(6501,'2020_12_21_061557_create_wh_allocations_table',1),
(6502,'2020_12_21_061702_create_wh_allocation_lines_table',1),
(6503,'2020_12_25_171544_create_wh_product_barcodes_table',1),
(6504,'2020_12_29_044408_create_wh_payments_table',1),
(6505,'2020_12_29_044520_create_wh_payment_lines_table',1),
(6506,'2020_12_29_044643_create_wh_temp_payments_table',1),
(6507,'2020_12_31_070605_create_wh_payment_methods_table',1),
(6508,'2021_01_02_000806_create_wh_invoices_table',1),
(6509,'2021_01_02_000928_create_wh_invoice_lines_table',1),
(6510,'2021_01_02_000948_create_wh_returns_table',1),
(6511,'2021_01_02_001000_create_wh_return_lines_table',1),
(6512,'2022_11_10_004346_wh_param',1);

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
('PkkDOdwS0d6oH7GmdjdT0YB9GTwGWdzjWJabEgyR',1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6Ikc1M21ZdldtT0luUnBJVlAxdXRwRjJ2WmExcTEyMHkxS2d4QVBTUDgiO3M6MzoidXJsIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MzoiaHR0cDovL2FsbWFjZW4ubG9jYWxob3N0L3Bvcy9pbnZvaWNlL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQyazlwRzN4LjlDVm1BMDRyWjFhQ0YuWERBZU0wRDd3c3UweC5YY0J1NE1kbGYzYjRMZDVzTyI7czo5OiJwb3NfdG9rZW4iO3M6MzI6IjY5YjlhMDBhZjlhNGMwNmY3NGViOTczMzkyMTgxYjc2IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQyazlwRzN4LjlDVm1BMDRyWjFhQ0YuWERBZU0wRDd3c3UweC5YY0J1NE1kbGYzYjRMZDVzTyI7aTowO3M6MTc6InNlbGVjdF9wcm9kdWN0X2lkIjtpOjE7czoxOiIxIjt9',1609564321);

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

/*Table structure for table `wh_allocation_lines` */

DROP TABLE IF EXISTS `wh_allocation_lines`;

CREATE TABLE `wh_allocation_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_allocation_lines` */

/*Table structure for table `wh_allocations` */

DROP TABLE IF EXISTS `wh_allocations`;

CREATE TABLE `wh_allocations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_allocations` */

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
(1,'2020-12-22',300.55,1,1,1,1,'EFE',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'2020-12-25',320.45,1,1,1,1,'EFE',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'2020-12-26',117.5,1,1,1,1,'EFE',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
(1,'2020-12-17',2500,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,'2020-12-19',2500,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'2020-12-22',3200,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(4,'2020-12-24',1500,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
  `isorder` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isinvoice` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isreturn` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `iswarehouse` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_doc_type` */

insert  into `wh_doc_type`(`id`,`doctypename`,`isorder`,`isinvoice`,`isreturn`,`iswarehouse`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'FACTURA','N','Y','N','N','Y',NULL,NULL,NULL,NULL),
(2,'BOLETA DE VENTA','N','Y','N','N','Y',NULL,NULL,NULL,NULL),
(3,'NOTA DE DEBITO','N','Y','N','N','Y',NULL,NULL,NULL,NULL),
(4,'NOTA DE CREDITO','N','N','Y','N','Y',NULL,NULL,NULL,NULL),
(5,'GUIA DE REMISION REMITENTE','N','N','N','Y','Y',NULL,NULL,NULL,NULL),
(6,'PEDIDO','Y','N','N','N','Y',NULL,NULL,NULL,NULL);

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

/*Table structure for table `wh_invoice` */

DROP TABLE IF EXISTS `wh_invoice`;

CREATE TABLE `wh_invoice` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequencer_id` bigint(20) unsigned NOT NULL,
  `bpartner_id` bigint(20) unsigned NOT NULL,
  `currency_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_invoice_sequencer_id_foreign` (`sequencer_id`),
  KEY `wh_invoice_bpartner_id_foreign` (`bpartner_id`),
  KEY `wh_invoice_currency_id_foreign` (`currency_id`),
  CONSTRAINT `wh_invoice_bpartner_id_foreign` FOREIGN KEY (`bpartner_id`) REFERENCES `wh_bpartners` (`id`),
  CONSTRAINT `wh_invoice_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `wh_currency` (`id`),
  CONSTRAINT `wh_invoice_sequencer_id_foreign` FOREIGN KEY (`sequencer_id`) REFERENCES `wh_sequencers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_invoice` */

/*Table structure for table `wh_invoiceline` */

DROP TABLE IF EXISTS `wh_invoiceline`;

CREATE TABLE `wh_invoiceline` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_invoiceline` */

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
(1,'2020-12-20','',NULL,1,1,NULL,0.000000,1446.000000,'Y',NULL,NULL,NULL,NULL),
(2,'2020-12-25','',NULL,1,1,NULL,0.000000,4761.190000,'Y',NULL,NULL,NULL,NULL);

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
(1,'2020-12-21','',NULL,1,1,NULL,0.000000,780.000000,'Y',NULL,NULL,NULL,NULL),
(2,'2020-12-27','',NULL,1,1,NULL,0.000000,980.100000,'Y',NULL,NULL,NULL,NULL);

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
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_param` */

/*Table structure for table `wh_payment_lines` */

DROP TABLE IF EXISTS `wh_payment_lines`;

CREATE TABLE `wh_payment_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_payment_lines` */

/*Table structure for table `wh_payment_methods` */

DROP TABLE IF EXISTS `wh_payment_methods`;

CREATE TABLE `wh_payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pmname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pmcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_payment_methods` */

insert  into `wh_payment_methods`(`id`,`pmname`,`pmcode`,`created_at`,`updated_at`) values 
(1,'EFECTIVO','EFE','2021-01-02 02:37:38','2021-01-02 02:37:38'),
(2,'TARJETA','CAR','2021-01-02 02:37:38','2021-01-02 02:37:38'),
(3,'TRANSFERENCIA','TRA','2021-01-02 02:37:38','2021-01-02 02:37:38'),
(4,'NOTA DE CREDITO','NCR','2021-01-02 02:37:38','2021-01-02 02:37:38'),
(5,'CUPONES','CUP','2021-01-02 02:37:38','2021-01-02 02:37:38'),
(6,'VENTA A CREDITO','CRE','2021-01-02 02:37:38','2021-01-02 02:37:38');

/*Table structure for table `wh_payments` */

DROP TABLE IF EXISTS `wh_payments`;

CREATE TABLE `wh_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_payments` */

/*Table structure for table `wh_pos_configs` */

DROP TABLE IF EXISTS `wh_pos_configs`;

CREATE TABLE `wh_pos_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `posname` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sequencer_id` bigint(20) unsigned NOT NULL,
  `warehouse_id` bigint(20) unsigned NOT NULL,
  `bpartner_id` bigint(20) unsigned DEFAULT NULL,
  `ismovestock` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `iscreateproduct` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `iscreatebpartner` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_pos_configs_sequencer_id_foreign` (`sequencer_id`),
  KEY `wh_pos_configs_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `wh_pos_configs_sequencer_id_foreign` FOREIGN KEY (`sequencer_id`) REFERENCES `wh_sequencers` (`id`),
  CONSTRAINT `wh_pos_configs_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `wh_warehouses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_pos_configs` */

insert  into `wh_pos_configs`(`id`,`posname`,`sequencer_id`,`warehouse_id`,`bpartner_id`,`ismovestock`,`iscreateproduct`,`iscreatebpartner`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'TIENDA CANADA',1,3,NULL,'Y','Y','Y','Y',NULL,NULL,'2021-01-02 03:10:42','2021-01-02 03:10:42');

/*Table structure for table `wh_product_barcodes` */

DROP TABLE IF EXISTS `wh_product_barcodes`;

CREATE TABLE `wh_product_barcodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_product_barcodes_product_id_foreign` (`product_id`),
  CONSTRAINT `wh_product_barcodes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `wh_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_product_barcodes` */

insert  into `wh_product_barcodes`(`id`,`product_id`,`barcode`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,1,'7754111532037','Y',NULL,NULL,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_products` */

insert  into `wh_products`(`id`,`productcode`,`productname`,`shortname`,`sku`,`ean`,`isactive`,`line_id`,`subline_id`,`family_id`,`um_id`,`stk_min`,`stk_max`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'10012','LAPICERO TRILUX 032 MEDIUM NEGRO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(2,'10013','LAPICERO TRILUX 032 MEDIUM AZUL',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(3,'10014','LAPICERO TRILUX 032 MEDIUM ROJO',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL),
(4,'10015','LAPICERO TRILUX 032 MEDIUM VERDE',NULL,NULL,NULL,'Y',NULL,NULL,NULL,1,0.000000,0.000000,NULL,NULL,NULL,NULL);

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

/*Table structure for table `wh_return` */

DROP TABLE IF EXISTS `wh_return`;

CREATE TABLE `wh_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_return` */

/*Table structure for table `wh_returnline` */

DROP TABLE IF EXISTS `wh_returnline`;

CREATE TABLE `wh_returnline` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_returnline` */

/*Table structure for table `wh_sequencers` */

DROP TABLE IF EXISTS `wh_sequencers`;

CREATE TABLE `wh_sequencers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sequencername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codsunat` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastnumber` bigint(20) NOT NULL DEFAULT 0,
  `doctype_id` bigint(20) unsigned NOT NULL,
  `isfex` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_sequencers` */

insert  into `wh_sequencers`(`id`,`sequencername`,`serial`,`codsunat`,`lastnumber`,`doctype_id`,`isfex`,`isactive`,`created_by`,`updated_by`,`created_at`,`updated_at`) values 
(1,'F001-FACTURA','F001','01',0,1,'Y','Y',NULL,NULL,NULL,NULL),
(2,'B001-BOLETA','B001','03',0,2,'Y','Y',NULL,NULL,NULL,NULL),
(3,'F001-NOTA DE CREDITO/FACTURA','F001','07',0,4,'Y','Y',NULL,NULL,NULL,NULL),
(4,'B001-NOTA DE CREDITO/BOLETA','B001','07',0,4,'Y','Y',NULL,NULL,NULL,NULL);

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
(1,377.200004,5,1,NULL,NULL,'2021-01-01 21:37:38','2021-01-01 21:37:38');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_team_grants` */

insert  into `wh_team_grants`(`id`,`name`,`module`,`url`,`team_id`,`isgrant`,`iscreate`,`isread`,`isupdate`,`isdelete`,`isactive`,`created_at`,`updated_at`) values 
(1,'','system.user',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(2,'','system.team',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(3,'','system.team.line',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(4,'','master.bpartner',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(5,'','master.product',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(6,'','master.product.line',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(7,'','master.product.subline',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(8,'','master.product.family',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(9,'','master.product.barcode',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(10,'','master.product.reason',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(11,'','move.input',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(12,'','move.input.line',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(13,'','move.output',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(14,'','move.output.line',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(15,'','move.transfer',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(16,'','move.transfer.line',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(17,'','move.production',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(18,'','move.production.line',NULL,1,'N','N','N','N','N','N','2021-01-02 02:37:37','2021-01-02 02:37:37'),
(19,NULL,'system.posconfig',NULL,1,'N','N','N','N','N','N',NULL,NULL);

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
(1,1,'Administradores',1,'Y','2021-01-02 02:37:36','2021-01-02 02:37:36'),
(2,1,'Supervisores',1,'Y','2021-01-02 02:37:36','2021-01-02 02:37:36');

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

/*Table structure for table `wh_temp_payments` */

DROP TABLE IF EXISTS `wh_temp_payments`;

CREATE TABLE `wh_temp_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movetype` enum('EFE','CAR','TRA','NCR','CUP','CRE') COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` bigint(20) unsigned DEFAULT NULL,
  `payment_method_id` bigint(20) unsigned NOT NULL,
  `card_id` bigint(20) unsigned NOT NULL,
  `card_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankacccount_id` bigint(20) unsigned DEFAULT NULL,
  `documentope` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_id` bigint(20) unsigned DEFAULT NULL,
  `cuponno` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_temp_payments` */

insert  into `wh_temp_payments`(`id`,`token`,`movetype`,`currency_id`,`payment_method_id`,`card_id`,`card_number`,`bankacccount_id`,`documentope`,`return_id`,`cuponno`,`amount`,`created_at`,`updated_at`) values 
(1,'e9f4572d0c249f045ee2efdf7ca910a8','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,12.3,'2021-01-02 02:39:15','2021-01-02 02:39:15'),
(2,'e9f4572d0c249f045ee2efdf7ca910a8','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,50.2,'2021-01-02 02:39:18','2021-01-02 02:39:18'),
(5,'35f80bd73bc92e867541ebc9f5838320','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,50.2,'2021-01-02 02:49:04','2021-01-02 02:49:04'),
(8,'4d2a74f3be7841b0aa4121cb877db2a1','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,12.3,'2021-01-02 03:09:23','2021-01-02 03:09:23'),
(9,'4d2a74f3be7841b0aa4121cb877db2a1','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,12.3,'2021-01-02 03:09:23','2021-01-02 03:09:23'),
(10,'4d2a74f3be7841b0aa4121cb877db2a1','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,12.3,'2021-01-02 03:09:23','2021-01-02 03:09:23'),
(11,'4d2a74f3be7841b0aa4121cb877db2a1','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,12.3,'2021-01-02 03:09:23','2021-01-02 03:09:23'),
(15,'f542d1bbe55277ae9338e40474dd6333','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,12.3,'2021-01-02 03:18:32','2021-01-02 03:18:32'),
(17,'55a841ac985581cad4a44dbb14cd4870','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,'2021-01-02 04:40:14','2021-01-02 04:40:14'),
(18,'55a841ac985581cad4a44dbb14cd4870','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,'2021-01-02 04:40:14','2021-01-02 04:40:14'),
(19,'55a841ac985581cad4a44dbb14cd4870','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,'2021-01-02 04:40:15','2021-01-02 04:40:15'),
(20,'55a841ac985581cad4a44dbb14cd4870','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,2,'2021-01-02 04:40:15','2021-01-02 04:40:15'),
(21,'ae8f215621f0dd4d2c7015cb2fbd3bd5','EFE',NULL,1,1,NULL,NULL,NULL,NULL,NULL,12,'2021-01-02 05:00:46','2021-01-02 05:00:46');

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
(1,'admin','soporte@miasoftware.net',NULL,'$2y$10$2k9pG3x.9CVmA04rZ1aCF.XDAeM0D7wsu0x.XcBu4Mdlf3b4Ld5sO',NULL,NULL,NULL,1,NULL,'Y','Y','2021-01-02 02:37:36','2021-01-02 02:37:36');

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
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 MEDIUM NEGRO','10012');		
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 MEDIUM AZUL','10013');				
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 MEDIUM ROJO','10014');		
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 MEDIUM VERDE','10015');				
		update wh_products set um_id=1;
	TRUNCATE TABLE wh_product_barcodes;
		insert INTO wh_product_barcodes(product_id,barcode)VALUES(1,'7754111532037');
	/* Tipo de Documento */
	TRUNCATE TABLE wh_doc_type;
		INSERT INTO wh_doc_type(doctypename,isinvoice)VALUES('FACTURA','Y');
		INSERT INTO wh_doc_type(doctypename,isinvoice)VALUES('BOLETA DE VENTA','Y');
		INSERT INTO wh_doc_type(doctypename,isinvoice)VALUES('NOTA DE DEBITO','Y');
		INSERT INTO wh_doc_type(doctypename,isreturn)VALUES('NOTA DE CREDITO','Y');
		INSERT INTO wh_doc_type(doctypename,iswarehouse)VALUES('GUIA DE REMISION REMITENTE','Y');
		INSERT INTO wh_doc_type(doctypename,isorder)VALUES('PEDIDO','Y');
	/* Sequencer - SERIE */		
	TRUNCATE TABLE wh_sequencers;
		INSERT INTO wh_sequencers(codsunat,sequencername,`serial`,lastnumber,isfex,isactive,doctype_id) VALUES ('01','F001-FACTURA','F001','0','Y','Y',1);
		INSERT INTO wh_sequencers(codsunat,sequencername,`serial`,lastnumber,isfex,isactive,doctype_id) VALUES ('03','B001-BOLETA','B001','0','Y','Y',2);
		INSERT INTO wh_sequencers(codsunat,sequencername,`serial`,lastnumber,isfex,isactive,doctype_id) VALUES ('07','F001-NOTA DE CREDITO/FACTURA','F001','0','Y','Y',4);
		INSERT INTO wh_sequencers(codsunat,sequencername,`serial`,lastnumber,isfex,isactive,doctype_id) VALUES ('07','B001-NOTA DE CREDITO/BOLETA','B001','0','Y','Y',4);

	SET FOREIGN_KEY_CHECKS = 1;
END */$$
DELIMITER ;

/* Procedure structure for procedure `installxX` */

/*!50003 DROP PROCEDURE IF EXISTS  `installxX` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `installxX`()
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
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 - NEGRO','10012');
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
	/* Tipo de Documento */
	TRUNCATE TABLE wh_doc_type;
		INSERT INTO wh_doc_type(doctypename,isinvoice)VALUES('FACTURA','Y');
		INSERT INTO wh_doc_type(doctypename,isinvoice)VALUES('BOLETA DE VENTA','Y');
		INSERT INTO wh_doc_type(doctypename,isinvoice)VALUES('NOTA DE DEBITO','Y');
		INSERT INTO wh_doc_type(doctypename,isreturn)VALUES('NOTA DE CREDITO','Y');
		INSERT INTO wh_doc_type(doctypename,iswarehouse)VALUES('GUIA DE REMISION REMITENTE','Y');
		INSERT INTO wh_doc_type(doctypename,isorder)VALUES('PEDIDO','Y');
	/* Sequencer - SERIE */		
	TRUNCATE TABLE wh_sequencers;
		INSERT INTO wh_sequencers(codsunat,sequencername,`serial`,lastnumber,isfex,isactive,doctype_id) VALUES ('01','F001-FACTURA','F001','0','Y','Y',1);
		INSERT INTO wh_sequencers(codsunat,sequencername,`serial`,lastnumber,isfex,isactive,doctype_id) VALUES ('03','B001-BOLETA','B001','0','Y','Y',2);
		INSERT INTO wh_sequencers(codsunat,sequencername,`serial`,lastnumber,isfex,isactive,doctype_id) VALUES ('07','F001-NOTA DE CREDITO/FACTURA','F001','0','Y','Y',4);
		INSERT INTO wh_sequencers(codsunat,sequencername,`serial`,lastnumber,isfex,isactive,doctype_id) VALUES ('07','B001-NOTA DE CREDITO/BOLETA','B001','0','Y','Y',4);

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

/* Procedure structure for procedure `sp_invoice_create_from_pos` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_invoice_create_from_pos` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `sp_invoice_create_from_pos`( 
											p_session varchar(50),
											p_bpartner BIGINT(20),
											p_sequence_id BIGINT(20))
BEGIN
	/* INVOICE - Creando la cabecdra */
	INSERT INTO wh_invoice(
		token
	) select
		token
	from `wh_temp`
	WHERE
		token = p_session;
	/* Respondiendo con la confirmacion */
	select 
		0 as invoice_id
		,'F001' as invoice_serie
		,'1255' as invoice_no
		,'01' as codsunat
		,100 as status_id
		,null as message;
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
