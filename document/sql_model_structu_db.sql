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

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7566 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

/*Table structure for table `wh_allocation_lines` */

DROP TABLE IF EXISTS `wh_allocation_lines`;

CREATE TABLE `wh_allocation_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `wh_allocations` */

DROP TABLE IF EXISTS `wh_allocations`;

CREATE TABLE `wh_allocations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=31335 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `wh_bpartners_bpartnertype_bpartnercode_unique` (`bpartnertype`,`bpartnercode`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

/*Table structure for table `wh_invoiceline` */

DROP TABLE IF EXISTS `wh_invoiceline`;

CREATE TABLE `wh_invoiceline` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

/*Table structure for table `wh_payment_lines` */

DROP TABLE IF EXISTS `wh_payment_lines`;

CREATE TABLE `wh_payment_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

/*Table structure for table `wh_payments` */

DROP TABLE IF EXISTS `wh_payments`;

CREATE TABLE `wh_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `wh_pos_configs` */

DROP TABLE IF EXISTS `wh_pos_configs`;

CREATE TABLE `wh_pos_configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `posname` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` bigint(20) unsigned NOT NULL,
  `sequencer_fac_id` bigint(20) unsigned DEFAULT NULL,
  `sequencer_bve_id` bigint(20) unsigned DEFAULT NULL,
  `sequencer_ndb_id` bigint(20) unsigned DEFAULT NULL,
  `sequencer_ncr_id` bigint(20) unsigned DEFAULT NULL,
  `sequencer_who_id` bigint(20) unsigned DEFAULT NULL,
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
  KEY `wh_pos_configs_currency_id_foreign` (`currency_id`),
  KEY `wh_pos_configs_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `wh_pos_configs_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `wh_currency` (`id`),
  CONSTRAINT `wh_pos_configs_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `wh_warehouses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

/*Table structure for table `wh_return` */

DROP TABLE IF EXISTS `wh_return`;

CREATE TABLE `wh_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `wh_returnline` */

DROP TABLE IF EXISTS `wh_returnline`;

CREATE TABLE `wh_returnline` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `wh_role_users` */

DROP TABLE IF EXISTS `wh_role_users`;

CREATE TABLE `wh_role_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Table structure for table `wh_roles` */

DROP TABLE IF EXISTS `wh_roles`;

CREATE TABLE `wh_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

/*Table structure for table `wh_team_grants` */

DROP TABLE IF EXISTS `wh_team_grants`;

CREATE TABLE `wh_team_grants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` bigint(20) unsigned NOT NULL,
  `isgrant` enum('Y','N','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `iscreate` enum('Y','N','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isread` enum('Y','N','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isupdate` enum('Y','N','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isdelete` enum('Y','N','D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
	TRUNCATE TABLE wh_roles;
		inseRT INTO wh_roles(rolename)VALUES('admin');
		INSERT INTO wh_roles(rolename)VALUES('user');
		INSERT INTO wh_roles(rolename)VALUES('cliente');
		INSERT INTO wh_roles(rolename)VALUES('proveedor');
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
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 MEDIUM NEGRO','1012');		
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 MEDIUM AZUL','1013');				
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 MEDIUM ROJO','1014');		
		INSERT INTO wh_products(productname,productcode)VALUES('LAPICERO TRILUX 032 MEDIUM VERDE','1015');
		INSERT INTO wh_products(productcode,productname)VALUES('1016','JERSEY 30/1 ALGODON 90 AZULINO');
		INSERT INTO wh_products(productcode,productname)VALUES('1017','JERSEY 30/1 ALGODON 90 ROJO');
		INSERT INTO wh_products(productcode,productname)VALUES('1019','JERSEY 30/1 ALGODON 90 BLANCO');
		INSERT INTO wh_products(productcode,productname)VALUES('1020','JERSEY 30/1 ALGODON 90 ARENA');
		
		INSERT INTO wh_products(productcode,productname)VALUES('1021','JERSEY 30/1 ALGODON 80 AZULINO');
		INSERT INTO wh_products(productcode,productname)VALUES('1022','JERSEY 30/1 ALGODON 80 ROJO');
		INSERT INTO wh_products(productcode,productname)VALUES('1023','JERSEY 30/1 ALGODON 80 BLANCO');
		INSERT INTO wh_products(productcode,productname)VALUES('1024','JERSEY 30/1 ALGODON 80 ARENA');		
		
		INSERT INTO wh_products(productcode,productname)VALUES('1025','GAMUZA 30/1 ALGODON 90 ROJO');
		INSERT INTO wh_products(productcode,productname)VALUES('1026','GAMUZA 30/1 ALGODON 90 BLANCO');
		INSERT INTO wh_products(productcode,productname)VALUES('1027','GAMUZA 30/1 ALGODON 90 ARENA');
		INSERT INTO wh_products(productcode,productname)VALUES('1028','GAMUZA 30/1 ALGODON 90 PATO');
		INSERT INTO wh_products(productcode,productname)VALUES('1029','GAMUZA 30/1 ALGODON 90 CREMA');
		INSERT INTO wh_products(productcode,productname)VALUES('1030','RIB 30/1 ALGODON 80 PLATA');
		INSERT INTO wh_products(productcode,productname)VALUES('1031','RIB 30/1 ALGODON 80 MARINO');
		INSERT INTO wh_products(productcode,productname)VALUES('1032','RIB 30/1 ALGODON 80 GUINDA');
		INSERT INTO wh_products(productcode,productname)VALUES('1033','RIB 30/1 ALGODON 80 NEGRO');
		INSERT INTO wh_products(productcode,productname)VALUES('1034','RIB 30/1 ALGODON 80 SALESIANO');
		INSERT INTO wh_products(productcode,productname)VALUES('1035','RIB 30/1 ALGODON 80 PLATA');
		INSERT INTO wh_products(productcode,productname)VALUES('1036','RIB 30/1 ALGODON 80 MELANGE 25%');
		INSERT INTO wh_products(productcode,productname)VALUES('1037','RIB 30/1 ALGODON 80 ORO');
		INSERT INTO wh_products(productcode,productname)VALUES('1038','RIB 30/1 ALGODON 80 AZULINO');
		INSERT INTO wh_products(productcode,productname)VALUES('1039','RIB 30/1 ALGODON 80 ROJO');
		INSERT INTO wh_products(productcode,productname)VALUES('1040','RIB 30/1 ALGODON 80 MOSTAZA');
		
		
		
		
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

/* Procedure structure for procedure `install_bpartner` */

/*!50003 DROP PROCEDURE IF EXISTS  `install_bpartner` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `install_bpartner`()
BEGIN
    
insert into wh_bank_received(doctype,currency_id,bank_id,datetrx,bpartner_id,documentno,office,amount) values ('DEP',1,1,'20210115',42,'169857','JULIACA','2500');
insert into wh_bank_received(doctype,currency_id,bank_id,datetrx,bpartner_id,documentno,office,amount) values ('DEP',1,1,'20210105',49,'169854','AREQUIPA','4382.5');

UPDATE wh_bank_received set amount = round(amount,2);

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
											p_bpartner_id BIGINT(20),
											p_sequence_id BIGINT(20))
BEGIN
	/*
	
CALL sp_invoice_create_from_pos('',2,1)
	*/
	/* INVOICE - Creando la cabecdra */
	INSERT INTO wh_invoice(
		sequence_id,
		bpartner_id,
		token
	) select
		p_sequence_id,
		p_bpartner_id
		token
	from `wh_temp`;
	-- WHERE
	-- 	token = p_session;
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
CALL sp_report_eecc(4,'2021-01-01','2021-03-01')

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
		
		/* SALIDA MERCADERIA - COMO CLIENTE */
		SELECT
			'moutput' AS `module`,
			`b`.`id` AS `record_id`,
			`b`.`datetrx` AS `datetrx`,
			`b`.`bpartner_id` AS `bpartner_id`,
			CONCAT('DESPACHO',' '
				,aw.warehousename
			) AS description,
			'-' AS `typesignal`,
			NULL AS `amount_abono`,
			NULL AS `amount_cargo`,
			`b`.`grandamount` * -1 AS `amountsignal`,
			`b`.`grandamount` AS `amount`
		FROM
			`wh_moutputs` `b`
		LEFT JOIN wh_warehouses aw ON aw.id = b.warehouse_id
		WHERE 
			b.datetrx BETWEEN p_dateinit AND p_dateend
			AND b.bpartner_id = p_bpartner_id
		
		UNION ALL
		
		/* PAGOS RECIBIDOS */
		select 
			'preceived' AS `module`,
			c.id AS record_id,
			`c`.`datetrx` AS `datetrx`,
			`c`.`bpartner_id` AS `bpartner_id`,
			concat(
				c.doctype,' #'
				,c.documentno,' / '
				,TRIM(COALESCE(c.office,'')),' '
				,trim(COALESCE(c.observation,'')) 
			) as description,
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
