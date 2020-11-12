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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_almacen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

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

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `messages` */

insert  into `messages`(`message`) values 
('l_check=0'),
('stock_new=4179142020-11-10 03:53:52'),
('l_check=0'),
('stock_new=1179322020-11-10 04:04:24');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3405 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(3372,'2012_10_12_000000_create_users_table',1),
(3373,'2013_05_21_100000_create_teams_table',1),
(3374,'2014_10_12_100000_create_password_resets_table',1),
(3375,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),
(3376,'2019_08_19_000000_create_failed_jobs_table',1),
(3377,'2019_12_14_000001_create_personal_access_tokens_table',1),
(3378,'2020_05_21_200000_create_team_user_table',1),
(3379,'2020_11_02_053654_wh_currency',1),
(3380,'2020_11_02_055432_wh_warehouse',1),
(3381,'2020_11_02_083324_create_sessions_table',1),
(3382,'2020_11_02_084430_wh_line',1),
(3383,'2020_11_02_084439_wh_sub_line',1),
(3384,'2020_11_02_084448_wh_family',1),
(3385,'2020_11_02_084519_wh_bar_code',1),
(3386,'2020_11_02_084601_wh_reason',1),
(3387,'2020_11_02_084657_wh_minput',1),
(3388,'2020_11_02_084709_wh_minput_line',1),
(3389,'2020_11_02_084724_wh_moutput',1),
(3390,'2020_11_02_084732_wh_moutput_line',1),
(3391,'2020_11_02_084800_wh_transfer',1),
(3392,'2020_11_02_084807_wh_transfer_line',1),
(3393,'2020_11_02_084845_wh_production',1),
(3394,'2020_11_02_084852_wh_production_line',1),
(3395,'2020_11_03_204349_wh_product',1),
(3396,'2020_11_03_204500_wh_um',1),
(3397,'2020_11_04_061934_wh_bpartner',1),
(3398,'2020_11_04_154442_wh_temp',1),
(3399,'2020_11_09_002024_wh_stock',1),
(3400,'2020_11_09_144528_wh_bank',1),
(3401,'2020_11_09_152223_bank_received',1),
(3402,'2020_11_09_152344_bank_delivered',1),
(3403,'2020_11_10_003507_wh_doc_type',1),
(3404,'2022_11_10_004346_wh_param',1);

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
('HkLXWEBRLb0D2G8raWNTdwz8hzfXsap456Np4g74',1,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6InhhdVRyR2hiRk5odmlZYnNSWjZYZ3VzSG9KdXIySEVCRENNanFQeUciO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vYWxtYWNlbi5sb2NhbGhvc3QvbW92ZS9pbnB1dCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRjLlZsM21mLmZ4N05YOW5oa29XL3R1ZkQ5ZmdRNTJmd3BTQ3ZBbzh3U2I1RnB5NXAvRjB0RyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkYy5WbDNtZi5meDdOWDluaGtvVy90dWZEOWZnUTUyZndwU0N2QW84d1NiNUZweTVwL0YwdEciO3M6MTE6ImlucHV0X3Rva2VuIjtzOjMyOiI1M2E1NWVhMTFlNGI3OWQ1ZjEwNDQzZGE5YTcxYzhlZCI7czoxMzoiaW5wdXRfZGF0ZXRyeCI7czoxMDoiMjAyMC0xMS0xMiI7czoxOToiaW5wdXRfYnBhcnRuZXJfbmFtZSI7czozMjoiQzIwMTM3NDI5ODcxIC0gSkVUIFRFWFRJTCBTLlIuTC4iO3M6MjA6ImlucHV0X3dhcmVob3VzZV9uYW1lIjtzOjE3OiJBTE1BQ0VOIFBSSU5DSVBBTCI7czoxNzoiaW5wdXRfcmVhc29uX25hbWUiO3M6NjoiQ09NUFJBIjt9',1605197229);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_bank_delivered_bpartner_id_foreign` (`bpartner_id`),
  KEY `wh_bank_delivered_currency_id_foreign` (`currency_id`),
  KEY `wh_bank_delivered_bank_id_foreign` (`bank_id`),
  CONSTRAINT `wh_bank_delivered_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `wh_banks` (`id`),
  CONSTRAINT `wh_bank_delivered_bpartner_id_foreign` FOREIGN KEY (`bpartner_id`) REFERENCES `wh_bpartners` (`id`),
  CONSTRAINT `wh_bank_delivered_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `wh_currency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_bank_delivered` */

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_bank_received_bpartner_id_foreign` (`bpartner_id`),
  KEY `wh_bank_received_currency_id_foreign` (`currency_id`),
  KEY `wh_bank_received_bank_id_foreign` (`bank_id`),
  CONSTRAINT `wh_bank_received_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `wh_banks` (`id`),
  CONSTRAINT `wh_bank_received_bpartner_id_foreign` FOREIGN KEY (`bpartner_id`) REFERENCES `wh_bpartners` (`id`),
  CONSTRAINT `wh_bank_received_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `wh_currency` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_bank_received` */

insert  into `wh_bank_received`(`id`,`datetrx`,`amount`,`exchange`,`bpartner_id`,`currency_id`,`bank_id`,`doctype`,`documentno`,`office`,`observation`,`created_at`,`updated_at`) values 
(1,'2020-11-12',2500,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL),
(2,'2020-11-12',3200,1,1,1,1,'DEP',NULL,NULL,NULL,NULL,NULL),
(3,'2020-11-12',500,1,1,1,1,'EFE',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `wh_banks` */

DROP TABLE IF EXISTS `wh_banks`;

CREATE TABLE `wh_banks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bankname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_banks` */

insert  into `wh_banks`(`id`,`bankname`,`currency_id`,`isactive`,`created_at`,`updated_at`) values 
(1,'191-01234567-0-00',1,'Y',NULL,NULL),
(2,'191-07654321-1-00',2,'Y',NULL,NULL);

/*Table structure for table `wh_bpartners` */

DROP TABLE IF EXISTS `wh_bpartners`;

CREATE TABLE `wh_bpartners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bpartnername` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bpartnercode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documentno` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpartnertype` enum('C','P') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C',
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_bpartners` */

insert  into `wh_bpartners`(`id`,`bpartnername`,`bpartnercode`,`documentno`,`bpartnertype`,`isactive`,`created_at`,`updated_at`) values 
(1,'GRUPO SBF PERU SAC','C20606384387',NULL,'C','Y',NULL,NULL),
(2,'TEJIDOS JORGITO SAC','C20101717098',NULL,'C','Y',NULL,NULL),
(3,'LEYVA MAMANI GLADYS','C10296512643',NULL,'C','Y',NULL,NULL),
(4,'VEGA SUCASACA NANCY','C10013083946',NULL,'C','Y',NULL,NULL),
(5,'CLIENTE VARIOS','C00010000000',NULL,'C','Y',NULL,NULL),
(6,'YMATEX E.I.R.L.','C20550393132',NULL,'C','Y',NULL,NULL),
(7,'MILLA GAVINO DOMINICA JUANA','C10086203818',NULL,'C','Y',NULL,NULL),
(8,'PIZARRO CORONADO DELIA NARCIZA','C10090743088',NULL,'C','Y',NULL,NULL),
(9,'CONFECCIONES NACHTS S.A.','C20304434032',NULL,'C','Y',NULL,NULL),
(10,'ALVAREZ RAZZETO DE SILES ROSA','C10078099491',NULL,'C','Y',NULL,NULL),
(11,'SERVICHECK S.A.','C20388096871',NULL,'C','Y',NULL,NULL),
(12,'CREACIONES TIBURON S.A.','C20347318702',NULL,'C','Y',NULL,NULL),
(13,'CONFECCIONES QUIMI S A COQUISA','C20101597921',NULL,'C','Y',NULL,NULL),
(14,'ALVES DE OLIVEIRA JASAUI, PAULO CESAR','C10093823155',NULL,'C','Y',NULL,NULL),
(15,'BUENDIA GILVONIO JORGE EDDY','C10003686014',NULL,'C','Y',NULL,NULL),
(16,'VIVAR ZANABRIA GIORDANO WILBUR','C10091911839',NULL,'C','Y',NULL,NULL),
(17,'SUCASACA MOLLEAPAZA FRANCISCA FILOMENA','C10105633829',NULL,'C','Y',NULL,NULL),
(18,'HURTADO CUBAS JOSE HIPOLITO','C10083286631',NULL,'C','Y',NULL,NULL),
(19,'JARUFE SABAT DE ESPEJO MARIA ANTONIETA','C10091608532',NULL,'C','Y',NULL,NULL),
(20,'ZEVALLOS HUANCA CARLOS MARTIN','C10017728887',NULL,'C','Y',NULL,NULL),
(21,'VISCARRA BALLON JESUSA','C10310313845',NULL,'C','Y',NULL,NULL),
(22,'EXPRESO WARI S.A.','C20293875163',NULL,'C','Y',NULL,NULL),
(23,'CAPURO VILLARAN S.R.L.','C20218859322',NULL,'C','Y',NULL,NULL),
(24,'BLADETEX S.A.C.','C20418193591',NULL,'C','Y',NULL,NULL),
(25,'BLADE S.A.C.','C20100667437',NULL,'C','Y',NULL,NULL),
(26,'BABY CENTER E.I.R.L.','C20215570305',NULL,'C','Y',NULL,NULL),
(27,'CARAZAS QUIN AUREA ESTELA','C10093257532',NULL,'C','Y',NULL,NULL),
(28,'MILLAN MEZA GLORIA','C10153569920',NULL,'C','Y',NULL,NULL),
(29,'QUISPE DE ITICONA MARIA MAGDALENA','C10023716386',NULL,'C','Y',NULL,NULL),
(30,'MAMANI COARITE FREDY','C10024262419',NULL,'C','Y',NULL,NULL),
(31,'CRUZ CONDORI LEONIDAS','C10024137231',NULL,'C','Y',NULL,NULL),
(32,'KARI MAMANI GRIMALDO','C10024136014',NULL,'C','Y',NULL,NULL),
(33,'HUAMAN CARRIZALES PEDRO','C10012284018',NULL,'C','Y',NULL,NULL),
(34,'FERNANDEZ GOMEZ EVARISTO','C00001833278',NULL,'C','Y',NULL,NULL),
(35,'ALAY  URA,  JORGE  LEON','C10024132108',NULL,'C','Y',NULL,NULL),
(36,'JUAREZ DE QUEVEDO ROSA EUSEBIA','C10035869099',NULL,'C','Y',NULL,NULL),
(37,'CREACIONES J & E S.A.','C20260798881',NULL,'C','Y',NULL,NULL),
(38,'CARPIO ABARCA MARTIN','C10083273343',NULL,'C','Y',NULL,NULL),
(39,'YANARICO DE MACHACA TEODORA','C10023712925',NULL,'C','Y',NULL,NULL),
(40,'A SPORT E.I.R.LTDA','C20211695871',NULL,'C','Y',NULL,NULL),
(41,'3 L TEXTILES S.A.','C20415216514',NULL,'C','Y',NULL,NULL),
(42,'ALGODONERA PERUANA S.A.C','C20136435397',NULL,'C','Y',NULL,NULL),
(43,'M G POZO S.A.C.','C20546000975',NULL,'C','Y',NULL,NULL),
(44,'ENRIQUEZ CHAVEZ WENCES ALEJANDRO','C10099127452',NULL,'C','Y',NULL,NULL),
(45,'CHOQUEPUMA LAUCATA PASTOR LORENZO','C10065489550',NULL,'C','Y',NULL,NULL),
(46,'JET TEXTIL S.R.L.','C20137429871',NULL,'C','Y',NULL,NULL),
(47,'CONDORI CANAZA ALFREDO','C00002448125',NULL,'C','Y',NULL,NULL),
(48,'CONFECCIONES CAMELL S.A.C','C20510553226',NULL,'C','Y',NULL,NULL),
(49,'LOBATO ORTIZ LEONCIO','C10085803251',NULL,'C','Y',NULL,NULL),
(50,'WESTERN COTTON S.A.','C20100675618',NULL,'C','Y',NULL,NULL),
(51,'TINTESA S A','C20100267765',NULL,'C','Y',NULL,NULL),
(52,'BAZAN NAVEDA CESAR HUMBERTO','C10091637508',NULL,'C','Y',NULL,NULL),
(53,'CONFECCIONES LOMA\"S S.R.LTDA.','C20381596401',NULL,'C','Y',NULL,NULL),
(54,'TEJIDO Y COLOR S.R.L.','C20411562361',NULL,'C','Y',NULL,NULL),
(55,'LAIVE S.A.','C20100095450',NULL,'C','Y',NULL,NULL),
(56,'HUANCA CASTILLO JUAN','C10023941690',NULL,'C','Y',NULL,NULL),
(57,'PROTEL S.A.C.','C20136644557',NULL,'C','Y',NULL,NULL),
(58,'ARTICULOS Y CONFECCIONES INDUSTRIALES SA','C20193075658',NULL,'C','Y',NULL,NULL),
(59,'PUMACHAICO QUEZADA, DELIA TERESA','C10179482091',NULL,'C','Y',NULL,NULL),
(60,'COMPAÑIA EL PROGRESO S.A.','C20118021411',NULL,'C','Y',NULL,NULL),
(61,'DISTRIBUIDORA PERUANA SAN ROQUE','C20298007151',NULL,'C','Y',NULL,NULL),
(62,'MARKETEX PROMOCIONES S.R.L.','C20387634828',NULL,'C','Y',NULL,NULL),
(63,'CONFECCIONES GILDA E I R LTDA','C20101776345',NULL,'C','Y',NULL,NULL),
(64,'MANUFACTURAS LEON HNOS S A','C20101692834',NULL,'C','Y',NULL,NULL),
(65,'MENDOZA SUAREZ JUAN LUCIO','C10218121433',NULL,'C','Y',NULL,NULL),
(66,'NIEVA CAPARACHIN ISAAC TEODORO','C10060483201',NULL,'C','Y',NULL,NULL),
(67,'MITRE MISAD PAUL FERNANDO','C10072545163',NULL,'C','Y',NULL,NULL),
(68,'CORNEJO RUIZ RAIDA','C10067494071',NULL,'C','Y',NULL,NULL),
(69,'CREACIONES JULISSA EIRL','C20130529993',NULL,'C','Y',NULL,NULL),
(70,'D PAULES EIRL','C20258008261',NULL,'C','Y',NULL,NULL),
(71,'ROMERO GOMEZ SANCHEZ MARIA DEL CARMEN','C10087711914',NULL,'C','Y',NULL,NULL),
(72,'QUISPE SUAREZ EDELMIRA','C10106725484',NULL,'C','Y',NULL,NULL),
(73,'LINO LOPEZ MERCEDES ISABEL','C10255770433',NULL,'C','Y',NULL,NULL),
(74,'VALENCIA URQUIZO GREGORIO','C10238049984',NULL,'C','Y',NULL,NULL),
(75,'DISTRIBUIDORA NACIONAL FORTALEZA E.I.R.L','C20422831348',NULL,'C','Y',NULL,NULL),
(76,'LANCIA S.A.','C20336018081',NULL,'C','Y',NULL,NULL),
(77,'ESPINOZA CACERES HUGO MIGUEL','C10073178482',NULL,'C','Y',NULL,NULL),
(78,'CELADITA RUIZ LUIS ALBERTO','C10255062331',NULL,'C','Y',NULL,NULL),
(79,'CARDENAS PALOMINO LAURO','C10074043521',NULL,'C','Y',NULL,NULL),
(80,'TAPIA VILLANUEVA MARIA CATALINA','C10096611965',NULL,'C','Y',NULL,NULL),
(81,'PIZARRO FIERRO GINA ALICIA','C10093119181',NULL,'C','Y',NULL,NULL),
(82,'SORIA CAPARACHIN ADOLFO FELIPE','C10211026770',NULL,'C','Y',NULL,NULL),
(83,'PUMAINCA SANTA CRUZ ALFREDO','C10074778530',NULL,'C','Y',NULL,NULL),
(84,'YBANEZ ALEGRE VDA. DE VICENTE ALEJANDRINA','C10085096058',NULL,'C','Y',NULL,NULL),
(85,'ACROPOLIS CONFECCIONES SRLTDA','C20263001002',NULL,'C','Y',NULL,NULL),
(86,'ALANIA PALACIN VICTOR JAVIER','C10074542331',NULL,'C','Y',NULL,NULL),
(87,'HILANDERIAS DE ALGODON EULOTEX S.A.','C20100251419',NULL,'C','Y',NULL,NULL),
(88,'COMINSA S.A.','C20100297591',NULL,'C','Y',NULL,NULL),
(89,'BANCOSUR','C20100127327',NULL,'C','Y',NULL,NULL),
(90,'CLARIANT (PERU) S.A.','C20293623431',NULL,'C','Y',NULL,NULL),
(91,'PALOMINO AGUILAR JOSE LUIS','C10258438685',NULL,'C','Y',NULL,NULL),
(92,'RODRIGUEZ FLORES CONCEPCION GLORIA','C10091951270',NULL,'C','Y',NULL,NULL),
(93,'COMERCIAL NADER E.I.R.LTDA','C20298049407',NULL,'C','Y',NULL,NULL),
(94,'COMARGEN S.A.','C20119773912',NULL,'C','Y',NULL,NULL),
(95,'JIMENEZ VALLADOLIC CECILIA','C10198210272',NULL,'C','Y',NULL,NULL),
(96,'LAVADO VILCAHUAMAN CELESTINA','C15125729131',NULL,'C','Y',NULL,NULL),
(97,'JAIMES INGA CARLOS ALBERTO','C10254314671',NULL,'C','Y',NULL,NULL),
(98,'HILARIO GUTIERREZ WALTER JUAN','C10083148115',NULL,'C','Y',NULL,NULL),
(99,'INDUSTRIA MCKENZY S.A.','C20330081393',NULL,'C','Y',NULL,NULL),
(100,'TACO PARI GUADALUPE MORELIA','C10073337416',NULL,'C','Y',NULL,NULL),
(101,'SANDONAS ALEGRE GERARDO AMBROCIO','C10086027211',NULL,'C','Y',NULL,NULL),
(102,'CARVED SRLTDA','C20125763589',NULL,'C','Y',NULL,NULL),
(103,'RAMA FIBRA DEL PERU S.A.C','C20388094312',NULL,'C','Y',NULL,NULL),
(104,'TEXTILES RENACER EIRL','C20501843742',NULL,'C','Y',NULL,NULL),
(105,'INVERSIONES ESTIBEN E.I.R.L.','C20604689806',NULL,'C','Y',NULL,NULL),
(106,'BRISOFY COMPANY E.I.R.L.','C20604686246',NULL,'C','Y',NULL,NULL),
(107,'S SBELLITA FASHION S.A.C.','C20544643127',NULL,'C','Y',NULL,NULL),
(108,'LAMONJA GUARDAMINO KIARA YARET','C10748905508',NULL,'C','Y',NULL,NULL),
(109,'MENDOZA GONZALES JHONNY MOISES','C10449367303',NULL,'C','Y',NULL,NULL),
(110,'TEXTILES HABIBI S.A.C','C20519150388',NULL,'C','Y',NULL,NULL),
(111,'INVERSIONES DUBARTEX E.I.R.L.','C20556304026',NULL,'C','Y',NULL,NULL),
(112,'CERNADES MAXDEO MARIA JESUS','C10238529579',NULL,'C','Y',NULL,NULL),
(113,'INDUSTRIAS ALDO DANIRO S.A.C.','C20500467968',NULL,'C','Y',NULL,NULL),
(114,'UGARTE JAUREGUI JOSELLYN DAYSSY','C10773358465',NULL,'C','Y',NULL,NULL),
(115,'ROJAS ZAMORA SOLEDAD','C10709024758',NULL,'C','Y',NULL,NULL),
(116,'RAMIREZ ESPINOZA JUAN CARLOS','C10410418130',NULL,'C','Y',NULL,NULL),
(117,'TEXTILES TRENDS H Y M E.I.R.L.','P20557687816',NULL,'P','Y',NULL,NULL),
(118,'MADERERA BUENOS AMIGOS S.R.LTDA.','P20258126034',NULL,'P','Y',NULL,NULL),
(119,'PONFECCIONES NIKEL S.A.C','P20536378503',NULL,'P','Y',NULL,NULL),
(120,'MALVEX DEL PERU S.A.','P20100776562',NULL,'P','Y',NULL,NULL),
(121,'INTERBRAND S.A.C.','P20603494181',NULL,'P','Y',NULL,NULL),
(122,'ST. JUDE INDUSTRY S.A.C.','P20548425621',NULL,'P','Y',NULL,NULL),
(123,'PONFECCIONES CALEB S.A.C.','P20604716447',NULL,'P','Y',NULL,NULL),
(124,'TRANSPORTE YAULLI E.I.R.L.','P20600319745',NULL,'P','Y',NULL,NULL),
(125,'STATUS EMPRESARIAL S.A.C. - SARIAL S.A.C.','P20600134095',NULL,'P','Y',NULL,NULL),
(126,'TEXTILES TBM S.A.C.','P20604516634',NULL,'P','Y',NULL,NULL),
(127,'TEXTILES REYES S.A.C.','P20604826064',NULL,'P','Y',NULL,NULL),
(128,'DFD SOLUCIONES E.I.R.L.','P20603842058',NULL,'P','Y',NULL,NULL),
(129,'GRUAP E.I.R.L.','P20604687587',NULL,'P','Y',NULL,NULL),
(130,'POTTON INDUSTRY S.A.C.','P20548145181',NULL,'P','Y',NULL,NULL),
(131,'POTTON WORK PERUVIAN COMPANY S.A.C.','P20521400308',NULL,'P','Y',NULL,NULL),
(132,'MALUPUBLI S.A.C.','P20601862621',NULL,'P','Y',NULL,NULL),
(133,'MONTALVO V & V S.A.C.','P20602475477',NULL,'P','Y',NULL,NULL),
(134,'YAMAUE IMPEX S.A.C.','P20518537769',NULL,'P','Y',NULL,NULL),
(135,'TEXTIL EMMY E.I.R.L.','P20522727696',NULL,'P','Y',NULL,NULL),
(136,'TEJIDOS Y RENDAS LEON S.A.C','P20513172461',NULL,'P','Y',NULL,NULL),
(137,'IMPORTACION EXPORTACION APC SAC','P20555224215',NULL,'P','Y',NULL,NULL),
(138,'PAMILA SPORT E.I.R.L.','P20602041531',NULL,'P','Y',NULL,NULL),
(139,'JHMSECURITY S.A.C.','P20600424824',NULL,'P','Y',NULL,NULL),
(140,'AUCKLAND S.A.C.','P20565587308',NULL,'P','Y',NULL,NULL),
(141,'PORPORACION VALTAKS S.C.R.L.','P20502143973',NULL,'P','Y',NULL,NULL),
(142,'PREACIONES D VICTORIA S.A.C.','P20536092952',NULL,'P','Y',NULL,NULL),
(143,'IMP. Y DISTRI. DE RETENES RODAMIENTOS Y AFINES S.A.C.','P20432420834',NULL,'P','Y',NULL,NULL),
(144,'PEYTHON KIDS S.A.C.','P20601387736',NULL,'P','Y',NULL,NULL),
(145,'PONFECCIONES Y CORTES S.A.C.','P20602965750',NULL,'P','Y',NULL,NULL),
(146,'BLACK FLYS S.R.L.','P20503438713',NULL,'P','Y',NULL,NULL),
(147,'D BRYTEX S. A. C.','P20604350159',NULL,'P','Y',NULL,NULL),
(148,'PROYECTOS E INVERSIONES MONTANO E.I.R.L.','P20600968981',NULL,'P','Y',NULL,NULL),
(149,'PORPORACION LICHA E.I.R.L','P20600973577',NULL,'P','Y',NULL,NULL),
(150,'A & R TEXTILES S.A.C.','P20601633028',NULL,'P','Y',NULL,NULL),
(151,'B & N CORPORACION LOGISTICA E.I.R.L.','P20602068251',NULL,'P','Y',NULL,NULL),
(152,'TEJIDOS LATI ANDINOS S.A.C','P20604196532',NULL,'P','Y',NULL,NULL),
(153,'LEXA TRANSPORT LOGISTICS E.I.R.L.','P20554964045',NULL,'P','Y',NULL,NULL),
(154,'TALMA SERVICIOS AEROPORTUARIOS S.A','P20204621242',NULL,'P','Y',NULL,NULL),
(155,'IMPORT EXPORT EVOLUCION S.A.C.','P20604147787',NULL,'P','Y',NULL,NULL),
(156,'ODIBA TEXTIL S.A.C.','P20555692235',NULL,'P','Y',NULL,NULL),
(157,'PORPORACION ZHARA S.A.C.','P20600461461',NULL,'P','Y',NULL,NULL),
(158,'NEGOTEX S.A.C','P20515983776',NULL,'P','Y',NULL,NULL),
(159,'ALSOCOL E.I.R.L.','P20563295369',NULL,'P','Y',NULL,NULL),
(160,'INVERSIONES PUMATEX S.A.C.','P20550949424',NULL,'P','Y',NULL,NULL),
(161,'TEXTILES ALGO DISTINTO S.A.C.','P20602708455',NULL,'P','Y',NULL,NULL),
(162,'PORPORACION ABB S.A.C','P20600918096',NULL,'P','Y',NULL,NULL),
(163,'PONFECCIONES CHIKYTEXS S.A.C.','P20604187185',NULL,'P','Y',NULL,NULL),
(164,'MODA YESNIF E.I.R.L.','P20551681301',NULL,'P','Y',NULL,NULL),
(165,'G & G MANUFACTURAS S.A.C.','P20602039821',NULL,'P','Y',NULL,NULL),
(166,'NL GROUP S.A.C.','P20602398596',NULL,'P','Y',NULL,NULL),
(167,'DISTRIBUCIONES TEXTILES FARIDE E.I.R.L.','P20604254907',NULL,'P','Y',NULL,NULL),
(168,'TINTECOLOR S.A.C.','P20565476492',NULL,'P','Y',NULL,NULL),
(169,'TEXTIL LA CASA DE LA GAMUZA ANTIPEELING E.I.R.L.','P20565487184',NULL,'P','Y',NULL,NULL),
(170,'MSJ KIDS S.A.C.','P20515252721',NULL,'P','Y',NULL,NULL),
(171,'FLAM RYP S.A.C.','P20492752771',NULL,'P','Y',NULL,NULL),
(172,'PONSORCIO FAZZA S.A.C.','P20604031835',NULL,'P','Y',NULL,NULL),
(173,'TEXTIL RODRIGUEZ S.A.C.','P20432350445',NULL,'P','Y',NULL,NULL),
(174,'SOPORTE TEXTIL SOCIEDAD ANONIMA','P20492049655',NULL,'P','Y',NULL,NULL),
(175,'POORPORACION TEXTIL STEVEN & JHARET S.A.C.','P20601999723',NULL,'P','Y',NULL,NULL),
(176,'HARRYTEX S.A.C.','P20518943244',NULL,'P','Y',NULL,NULL),
(177,'TEXTIL CHARIS E.I.R.L.','P20600833376',NULL,'P','Y',NULL,NULL),
(178,'TEJIDOS ALPAFINA E.I.R.L.','P20601584981',NULL,'P','Y',NULL,NULL),
(179,'PARGO 1 S.A.','P20485978233',NULL,'P','Y',NULL,NULL),
(180,'PORPORACION TEXTIL R & L S.A.C.','P20601195446',NULL,'P','Y',NULL,NULL),
(181,'INVERSIONES Y NEGOCIACIONES ALFAPERU E.I.R.L.','P20600106890',NULL,'P','Y',NULL,NULL),
(182,'TEXTILES SANCHEZ L & N E.I.R.L.','P20603556047',NULL,'P','Y',NULL,NULL),
(183,'ODITEX E.I.R.L.','P20551935338',NULL,'P','Y',NULL,NULL),
(184,'NEGOCIOS E INVERSIONES AIRIN SAC','P20547504047',NULL,'P','Y',NULL,NULL),
(185,'PORPORACION K&H E.I.R.L.','P20551378897',NULL,'P','Y',NULL,NULL),
(186,'PORPORACION KOSEY S.A.C.','P20600855990',NULL,'P','Y',NULL,NULL),
(187,'VCL TEXTIL SERVICE E.I.R.L.','P20603929986',NULL,'P','Y',NULL,NULL),
(188,'PREACIONES MARCHENITA E.I.R.L.','P20553017191',NULL,'P','Y',NULL,NULL),
(189,'PONSORCIO INDUSTRIAL ALIMBER E.I.R.L.','P20554152181',NULL,'P','Y',NULL,NULL),
(190,'RIOS & HNOS SAC','P20108129841',NULL,'P','Y',NULL,NULL),
(191,'MABETEX S.R.L.','P20602959415',NULL,'P','Y',NULL,NULL),
(192,'TRADERTEX E.I.R.L.','P20603950616',NULL,'P','Y',NULL,NULL),
(193,'PORPORACION RENZO CAMILA S.A.C.','P20603471076',NULL,'P','Y',NULL,NULL),
(194,'PORPORACION TEXTIL SAMIR E.I.R.L.','P20601406625',NULL,'P','Y',NULL,NULL),
(195,'INVETEXTIL ROSCH E.I.R.L.','P20602750095',NULL,'P','Y',NULL,NULL),
(196,'TEXTIL SAMHY S E.I.R.L.','P20491910659',NULL,'P','Y',NULL,NULL),
(197,'TEXTIL NIKO S.A.C.','P20603687681',NULL,'P','Y',NULL,NULL),
(198,'VANELYN E.I.R.L.','P20603916108',NULL,'P','Y',NULL,NULL),
(199,'PORPORACION MISAMORES E.I.R.L.','P20550317541',NULL,'P','Y',NULL,NULL),
(200,'ADIS MULTISERVICIOS DE LOGISTICA S.A.C.','P20603713223',NULL,'P','Y',NULL,NULL),
(201,'SOQUITEX ING. S.R.LTDA','P20424371581',NULL,'P','Y',NULL,NULL),
(202,'REMO PERU TEXTIL S.R.L.','P20522550079',NULL,'P','Y',NULL,NULL),
(203,'LABORATORIOS LELY S.A.C','P20505721374',NULL,'P','Y',NULL,NULL),
(204,'PREACIONES GREGORYTEX E.I.R.L','P20600216156',NULL,'P','Y',NULL,NULL);

/*Table structure for table `wh_currency` */

DROP TABLE IF EXISTS `wh_currency`;

CREATE TABLE `wh_currency` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currencyname` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isoname` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_currency` */

insert  into `wh_currency`(`id`,`currencyname`,`isoname`,`symbol`,`isactive`,`created_at`,`updated_at`) values 
(1,'SOLES','PEN','S/','Y',NULL,NULL),
(2,'DOLAR','USD','$','Y',NULL,NULL);

/*Table structure for table `wh_doc_type` */

DROP TABLE IF EXISTS `wh_doc_type`;

CREATE TABLE `wh_doc_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `doctypename` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_families` */

insert  into `wh_families`(`id`,`familyname`,`isactive`,`created_at`,`updated_at`) values 
(1,'LIBRERIA','Y',NULL,NULL),
(2,'TELA RIB','Y',NULL,NULL),
(3,'TELA JERSEY','Y',NULL,NULL),
(4,'TELA GAMUZA','Y',NULL,NULL);

/*Table structure for table `wh_lines` */

DROP TABLE IF EXISTS `wh_lines`;

CREATE TABLE `wh_lines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `linename` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_lines` */

insert  into `wh_lines`(`id`,`linename`,`isactive`,`created_at`,`updated_at`) values 
(1,'LAPICEROS','Y',NULL,NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_minput_lines_minput_id_foreign` (`minput_id`),
  KEY `wh_minput_lines_product_id_foreign` (`product_id`),
  CONSTRAINT `wh_minput_lines_minput_id_foreign` FOREIGN KEY (`minput_id`) REFERENCES `wh_minputs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `wh_minput_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `wh_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_minput_lines` */

insert  into `wh_minput_lines`(`id`,`minput_id`,`product_id`,`qty`,`price`,`pack`,`grandline`,`created_at`,`updated_at`) values 
(1,1,309,420.400000,12.000000,20.000000,NULL,'2020-11-12 15:15:12','2020-11-12 15:15:12'),
(2,2,257,420.100000,12.000000,20.000000,5041.200000,'2020-11-12 15:16:12','2020-11-12 15:16:12'),
(3,3,2098,420.100000,12.000000,20.000000,5041.200000,'2020-11-12 15:36:14','2020-11-12 15:36:14');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_minputs` */

insert  into `wh_minputs`(`id`,`datetrx`,`token`,`reason_id`,`bpartner_id`,`warehouse_id`,`currency_id`,`grandqty`,`grandamount`,`isactive`,`created_at`,`updated_at`) values 
(1,'2020-11-12','11720e99aa3afa409229e1708260a200',1,46,1,NULL,420.400000,5044.800000,'Y','2020-11-12 15:15:12','2020-11-12 15:15:12'),
(2,'2020-11-12','4be68d080aea42f753e30cd624780904',1,46,1,NULL,420.100000,5041.200000,'Y','2020-11-12 15:16:12','2020-11-12 15:16:12'),
(3,'2020-11-12','c42058b7b4f2350a488e4a630ed36951',1,46,1,NULL,420.100000,5041.200000,'Y','2020-11-12 15:36:14','2020-11-12 15:36:14');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_moutput_lines_moutput_id_foreign` (`moutput_id`),
  KEY `wh_moutput_lines_product_id_foreign` (`product_id`),
  CONSTRAINT `wh_moutput_lines_moutput_id_foreign` FOREIGN KEY (`moutput_id`) REFERENCES `wh_moutputs` (`id`) ON DELETE SET NULL,
  CONSTRAINT `wh_moutput_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `wh_products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_moutput_lines` */

/*Table structure for table `wh_moutputs` */

DROP TABLE IF EXISTS `wh_moutputs`;

CREATE TABLE `wh_moutputs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_id` bigint(20) unsigned DEFAULT NULL,
  `bpartner_id` bigint(20) unsigned DEFAULT NULL,
  `warehouse_id` bigint(20) unsigned DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_moutputs` */

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_productions` */

/*Table structure for table `wh_products` */

DROP TABLE IF EXISTS `wh_products`;

CREATE TABLE `wh_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `productname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ean` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_id` bigint(20) unsigned DEFAULT NULL,
  `subline_id` bigint(20) unsigned DEFAULT NULL,
  `family_id` bigint(20) unsigned DEFAULT NULL,
  `um_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_products` */

insert  into `wh_products`(`id`,`productname`,`productcode`,`shortname`,`sku`,`ean`,`isactive`,`line_id`,`subline_id`,`family_id`,`um_id`,`created_at`,`updated_at`) values 
(1,'LAPICERO PILOT BPS-GP-F AZUL','1000',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2,'LAPICERO PILOT BPS-GP-F ROJO','1001',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(3,'LAPICERO PILOT BPS-GP-F NEGRO','1002',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(4,'LAPICERO FRIXION BALL PRO BL-FR07 AZUL','1003',NULL,NULL,NULL,'Y',1,2,1,1,NULL,NULL),
(5,'JERSEY 30/1 ALGODON 80 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(6,'RIB 30/1 ALGODON 80 BLANCO 1','RBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(7,'JERSEY 30/1 ALGODON 80 NEGRO 4101','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(8,'JERSEY 30/1 ALGODON 90 AZULINO 19','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(9,'GAMUZA 30/1 POLYALGODON 90 BLANCO 1101','GPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(10,'FRANELA 20/10 ALGODON 90 BLANCO 1','FBL9020',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(11,'FRANELA 20/10 ALGODON 90 ACERO 3106','FO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(12,'JERSEY 30/1 ALGODON 91 BLANCO 1192','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(13,'JERSEY 30/1 ALGODON 90 ACERO 3123','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(14,'JERSEY 30/1 ALGODON 90 ACERO 6','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(15,'JERSEY 30/1 ALGODON 90 ROJO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(16,'JERSEY 30/1 ALGODON 90 MARINO 2','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(17,'JERSEY 30/1 ALGODON 90 ARENA 1102','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(18,'JERSEY 30/1 ALGODON 80 MELANGE 25% 1A','JMEL3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(19,'JERSEY 30/1 ALGODON 90 NEGRO 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(20,'GAMUZA 30/1 POLYALGODON 90 CELESTE 1102','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(21,'GAMUZA 30/1 POLYALGODON 90 MELON 1101','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(22,'GAMUZA 30/1 POLYALGODON 90 VERDE AGUA 1103','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(23,'GAMUZA 30/1 POLYALGODON 90 PATO 1101','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(24,'GAMUZA 30/1 POLYALGODON 90 ROSADO 1101','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(25,'GAMUZA 30/1 POLYALGODON 90 CREMA 1103','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(26,'GAMUZA 30/1 POLYALGODON 90 LIMON BB 1130','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(27,'GAMUZA 30/1 POLYALGODON 90 MAIZ 1114','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(28,'GAMUZA 30/1 POLYALGODON 90 MELANGE 25% 1A','GMA3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(29,'JERSEY 30/1 ALGODON 80 PLATA 1107','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(30,'JERSEY 30/1 ALGODON 75 MARINO 3110','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(31,'JERSEY 30/1 ALGODON 90 PLATA 1107','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(32,'JERSEY 30/1 ALGODON 90 ITALIANO 2104','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(33,'JERSEY 30/1 ALGODON 80 ITALIANO 2104','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(34,'JERSEY 30/1 ALGODON 90 PLATA 1139','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(35,'JERSEY 30/1 ALGODON 80 PLATA 1139','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(36,'RIB 30/1 ALGODON 80 ITALIANO 2104','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(37,'JERSEY 30/1 ALGODON 90 MELANGE 25% 1A','JMEL3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(38,'JERSEY 30/1 ALGODON 90 ORO 2121','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(39,'JERSEY 30/1 ALGODON 80 ORO 2121','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(40,'JERSEY 30/1 ALGODON 80 AZULINO 19','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(41,'JERSEY 30/1 ALGODON 90 MOSTAZA 7B','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(42,'JERSEY 30/1 ALGODON 80 MOSTAZA 7B','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(43,'JERSEY 30/1 ALGODON 90 PISTACHO 16','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(44,'JERSEY 30/1 ALGODON 80 PISTACHO 16','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(45,'JERSEY 30/1 ALGODON 80 ARENA 1102','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(46,'JERSEY 30/1 ALGODON 80 ACERO 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(47,'JERSEY 30/1 ALGODON 80 ACERO 4123','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(48,'JERSEY 30/1 ALGODON 80 ROJO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(49,'JERSEY 30/1 ALGODON 90 MILITAR 54','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(50,'JERSEY 30/1 ALGODON 80 MILITAR 3154','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(51,'JERSEY 30/1 ALGODON 90 TURQUEZA 3102','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(52,'JERSEY 30/1 ALGODON 80 TURQUEZA 3102','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(53,'JERSEY 30/1 ALGODON 80 GUINDA 3120','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(54,'JERSEY 30/1 ALGODON 90 GUINDA 3120','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(55,'JERSEY 30/1 ALGODON 80 SALESIANO 1105','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(56,'JERSEY 30/1 ALGODON 90 SALESIANO 5','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(57,'JERSEY 30/1 ALGODON 80 LIMON 2105','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(58,'JERSEY 30/1 ALGODON 90 LIMON 2105','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(59,'JERSEY 30/1 ALGODON 80 PERICO 4107','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(60,'JERSEY 30/1 ALGODON 90 PERICO 4107','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(61,'JERSEY 30/1 ALGODON 80 NARANJA 3101','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(62,'JERSEY 30/1 ALGODON 90 ANTIQUE 1','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(63,'JERSEY 30/1 ALGODON 90 SOMBRA 1112','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(64,'JERSEY 30/1 ALGODON 80 SOMBRA 1112','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(65,'JERSEY 30/1 ALGODON 90 NARANJA 3101','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(66,'JERSEY 30/1 ALGODON 80 ANTIQUE 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(67,'JERSEY 30/1 ALGODON 90 CEMENTO 10','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(68,'JERSEY 30/1 ALGODON 80 CEMENTO 10','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(69,'RIB 30/1 ALGODON 80 PLATA 1107','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(70,'RIB 30/1 ALGODON 80 MARINO 2','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(71,'RIB 30/1 ALGODON 80 GUINDA 3120','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(72,'RIB 30/1 ALGODON 80 NEGRO 4101','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(73,'RIB 30/1 ALGODON 80 SALESIANO 1105','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(74,'RIB 30/1 ALGODON 80 PLATA 1139','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(75,'RIB 30/1 ALGODON 80 MELANGE 25%','RMEL3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(76,'RIB 30/1 ALGODON 80 ORO 2121','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(77,'RIB 30/1 ALGODON 80 AZULINO 19','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(78,'RIB 30/1 ALGODON 80 ROJO 8','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(79,'RIB 30/1 ALGODON 80 MOSTAZA 7B','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(80,'RIB 30/1 ALGODON 80 PISTACHO 16','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(81,'RIB 30/1 ALGODON 80 ARENA 1102','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(82,'RIB 30/1 ALGODON 80 LIMON 2105','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(83,'RIB 30/1 ALGODON 80 PERICO 4107','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(84,'RIB 30/1 ALGODON 80 SOMBRA 1112','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(85,'RIB 30/1 ALGODON 80 MILITAR 3154','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(86,'RIB 30/1 ALGODON 80 TURQUEZA 3102','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(87,'RIB 30/1 ALGODON 80 NARANJA 3101','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(88,'RIB 30/1 ALGODON 80 CEMENTO 10','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(89,'RIB 30/1 ALGODON 80 ACERO 3106','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(90,'RIB 30/1 ALGODON 80 ACERO 4123','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(91,'STRECH 24/1 POLYALGODON 83 AZUL JEAN 11','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(92,'STRECH 24/1 POLYALGODON 83 BLANCO 1101','STPCB24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(93,'STRECH 24/1 POLYALGODON 83 MARINO 2','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(94,'STRECH 24/1 POLYALGODON 83 NEGRO 1','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(95,'STRECH 24/1 ALGODON 83 NEGRO 1','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(96,'STRECH 24/1 ALGODON 83 MARINO 2','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(97,'STRECH 24/1 ALGODON 83 ROJO 8','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(98,'STRECH 24/1 ALGODON 83 PALO ROSA 23','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(99,'STRECH 24/1 ALGODON 83 TURQUEZA 3102','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(100,'STRECH 24/1 ALGODON 83 MARRON 9','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(101,'STRECH 24/1 ALGODON 83 CHICLE 1','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(102,'STRECH 24/1 ALGODON 83 PERICO 7','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(103,'STRECH 24/1 ALGODON 83 AZULINO 19','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(104,'STRECH 24/1 ALGODON 83 MELANGE 10% 1A','STMEL2410',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(105,'STRECH 24/1 POLYALGODON 83 MELANGE 25%','STM2425',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(106,'STRECH 24/1 ALGODON 83 CONCHO DE VINO 6','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(107,'JERSEY 30/1 ALGODON 90 BEIGE 1105','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(108,'JERSEY 30/1 ALGODON 80 BEIGE 1105','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(109,'JERSEY 30/1 ALGODON 90 BEIGE CARNE 2B','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(110,'JERSEY 30/1 ALGODON 80 BEIGE CARNE 2B','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(111,'JERSEY 30/1 ALGODON 90 BEIGE 10B','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(112,'JERSEY 30/1 ALGODON 80 BEIGE 10B','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(113,'JERSEY 30/1 ALGODON 90 BOTELLA 3110','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(114,'JERSEY 30/1 ALGODON 80 JADE 7','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(115,'JERSEY 30/1 ALGODON 80 BOTELLA 10B','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(116,'JERSEY 30/1 ALGODON 90 BOTELLA 3','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(117,'JERSEY 30/1 ALGODON 80 BOTELLA 3','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(118,'JERSEY 30/1 ALGODON 90 CELESTE 1102','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(119,'JERSEY 30/1 ALGODON 80 CELESTE 2','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(120,'JERSEY 30/1 ALGODON 91 CELESTE 1109','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(121,'JERSEY 30/1 ALGODON 80 CELESTE 49','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(122,'JERSEY 30/1 ALGODON 90 CHICLE 1101','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(123,'JERSEY 30/1 ALGODON 80 CHICLE 1101','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(124,'JERSEY 30/1 ALGODON 90 CIELO 12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(125,'JERSEY 30/1 ALGODON 80 CIELO 12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(126,'JERSEY 30/1 ALGODON 90 CREMA 21','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(127,'JERSEY 30/1 ALGODON 90 MELANGE 3% 1A','JMEL303',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(128,'JERSEY 30/1 ALGODON 80 CREMA 3','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(129,'JERSEY 30/1 ALGODON 90 CREMA 3','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(130,'JERSEY 30/1 ALGODON 80 CREMA 21','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(131,'JERSEY 30/1 ALGODON 90 FUCSIA 3101','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(132,'JERSEY 30/1 ALGODON 80 FUCSIA 3101','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(133,'JERSEY 30/1 POLYALGODON 80 MELANGE 3%','JM303',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(134,'JERSEY 30/1 ALGODON 90 JADE 7','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(135,'JERSEY 30/1 ALGODON 90 LACRE 15','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(136,'JERSEY 30/1 ALGODON 90 LACRE 6','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(137,'JERSEY 30/1 ALGODON 90 LILA CLARO 1121','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(138,'JERSEY 30/1 ALGODON 90 MAIZ 1','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(139,'JERSEY 30/1 ALGODON 90 MAIZ 14','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(140,'JERSEY 30/1 ALGODON 90 MANDARINA 17','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(141,'JERSEY 30/1 ALGODON 90 MANZANA 3102','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(142,'JERSEY 30/1 ALGODON 90 MARRON 3109','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(143,'JERSEY 30/1 ALGODON 90 MELON 1','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(144,'JERSEY 30/1 ALGODON 90 ORO BRAZIL 2133','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(145,'JERSEY 30/1 ALGODON 90 PATO 1','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(146,'JERSEY 30/1 ALGODON 90 PATO 27','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(147,'JERSEY 30/1 ALGODON 90 PATO BB16','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(148,'JERSEY 30/1 ALGODON 90 PLOMO COLEGIAL 9','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(149,'JERSEY 30/1 ALGODON 90 ROSADO 1','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(150,'JERSEY 30/1 ALGODON 90 ROSADO 1137','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(151,'JERSEY 30/1 ALGODON 90 ROSADO BB12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(152,'JERSEY 30/1 ALGODON 90 TURQUEZA MEDIO 2109','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(153,'JERSEY 30/1 ALGODON 90 LIMON BB 30','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(154,'JERSEY 30/1 ALGODON 90 VERDE AGUA 3','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(155,'JERSEY 30/1 POLYALGODON 90 BLANCO 1101','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(156,'JERSEY 30/1 POLYALGODON 90 CELESTE 1102','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(157,'JERSEY 30/1 POLYALGODON 90 CELESTE 49','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(158,'JERSEY 30/1 POLYALGODON 90 CREMA 21','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(159,'JERSEY 30/1 POLYALGODON 90 CREMA 1103','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(160,'JERSEY 30/1 POLYALGODON 90 MAIZ 1114','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(161,'JERSEY 30/1 POLYALGODON 90 MELON 1101','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(162,'JERSEY 30/1 POLYALGODON 90 MELON BB 15','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(163,'JERSEY 30/1 POLYALGODON 90 PATO 1130','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(164,'JERSEY 30/1 POLYALGODON 90 PATO BB 1116','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(165,'JERSEY 30/1 POLYALGODON 90 ROSADO 1137','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(166,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA 1103','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(167,'RIB 30/1 POLYALGODON 80 BLANCO 1','RPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(168,'RIB 30/1 POLYALGODON 80 CELESTE 1102','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(169,'RIB 30/1 POLYALGODON 80 CELESTE 49','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(170,'RIB 30/1 POLYALGODON 80 CREMA 21','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(171,'RIB 30/1 POLYALGODON 80 CREMA 1103','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(172,'RIB 30/1 POLYALGODON 80 MAIZ 1114','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(173,'RIB 30/1 POLYALGODON 80 MELON 1101','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(174,'RIB 30/1 POLYALGODON 80 MELON D1100','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(175,'RIB 30/1 POLYALGODON 80 PATO 30','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(176,'RIB 30/1 POLYALGODON 80 PATO BB 1116','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(177,'RIB 30/1 POLYALGODON 80 ROSADO 1137','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(178,'RIB 30/1 POLYALGODON 80 VERDE AGUA 1103','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(179,'JERSEY 30/1 ALGODON 80 LACRE 15','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(180,'JERSEY 30/1 ALGODON 80 LACRE 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(181,'JERSEY 30/1 ALGODON 80 LILA CLARO 1121','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(182,'BOBINA PLASTICA 20x0.70 ALT DEN (JER)','BP20x0.70A/D',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(183,'JERSEY 30/1 ALGODON 80 MAIZ 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(184,'JERSEY 30/1 ALGODON 80 MAIZ 14','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(185,'JERSEY 30/1 ALGODON 80 MANDARINA 17','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(186,'JERSEY 30/1 ALGODON 80 MANZANA 3102','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(187,'JERSEY 30/1 ALGODON 80 MARRON 3109','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(188,'JERSEY 30/1 ALGODON 80 PLOMO COLEGIAL 9','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(189,'JERSEY 30/1 ALGODON 80 MELON 1','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(190,'JERSEY 30/1 ALGODON 80 ORO BRAZIL 2133','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(191,'JERSEY 30/1 ALGODON 80 PATO 1','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(192,'JERSEY 30/1 ALGODON 80 PATO 27','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(193,'JERSEY 30/1 ALGODON 80 PATO BB16','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(194,'JERSEY 30/1 ALGODON 80 ROSADO 1','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(195,'JERSEY 30/1 ALGODON 80 ROSADO 1137','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(196,'JERSEY 30/1 ALGODON 80 ROSADO BB12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(197,'JERSEY 30/1 ALGODON 80 TURQUEZA MEDIO 9','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(198,'JERSEY 30/1 ALGODON 80 LIMON BB30','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(199,'JERSEY 30/1 ALGODON 80 VERDE AGUA 1103','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(200,'JERSEY 30/1 ALGODON 87 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(201,'JERSEY 30/1 POLYALGODON 90 BEIGE CARNE 1102','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(202,'RIB 30/1 ALGODON 80 CHICLE 1101','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(203,'STRECH 24/1 ALGODON 83 TURQUEZA MEDIO 9','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(204,'STRECH 24/1 ALGODON 83 FUCSIA 3101','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(205,'STRECH 24/1 POLYALGODON 83 ROSADO 37','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(206,'RIB 30/1 ALGODON 80 PATO BB1116','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(207,'RIB 30/1 ALGODON 80 CREMA 3','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(208,'RIB 30/1 ALGODON 80 CREMA 21','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(209,'JERSEY 30/1 POLYALGODON 90 MAIZ 1','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(210,'STRECH 24/1 POLYALGODON 83 CELESTE 49','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(211,'STRECH 24/1 POLYALGODON 83 CELESTE 2','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(212,'STRECH 24/1 POLYALGODON 83 MELON 1','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(213,'STRECH 24/1 POLYALGODON 83 VERDE AGUA 3','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(214,'STRECH 24/1 POLYALGODON 83 BEIGE CARNE 2B','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(215,'STRECH 24/1 ALGODON 83 MELANGE 3%','STMEL243',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(216,'RIB 30/1 ALGODON 80 BEIGE 1105','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(217,'RIB 30/1 ALGODON 80 LACRE 6','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(218,'RIB 30/1 ALGODON 80 ANTIQUE 1','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(219,'JERSEY 30/1 ALGODON 85 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(220,'JERSEY 30/1 ALGODON 85 NEGRO 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(221,'RIB 30/1 ALGODON 80 FUCSIA 3101','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(222,'RIB 30/1 ALGODON 80 BOTELLA 3','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(223,'JERSEY 30/1 ALGODON 87 NEGRO 1','JOSC',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(224,'STRECH 24/1 POLYALGODON 83 PALO ROSA 23','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(225,'JERSEY 30/1 ALGODON 80 KORAL 2101','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(226,'RIB 30/1 ALGODON 80 MELON 1101','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(227,'RIB 30/1 ALGODON 80 TURQUEZA MEDIO 2109','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(228,'RIB 30/1 ALGODON 80 KORAL 2101','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(229,'RIB 30/1 ALGODON 80 MANDARINA 17','ROSC',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(230,'RIB 30/1 ALGODON 80 VERDE AGUA 1103','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(231,'JERSEY 30/1 ALGODON 85 ROJO 3108','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(232,'JERSEY 30/1 ALGODON 85 NARANJA 3101','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(233,'JERSEY 30/1 ALGODON 87 PARICO 7','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(234,'JERSEY 30/1 ALGODON 87 PERICO 7','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(235,'JERSEY 30/1 ALGODON 87 ORO 21','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(236,'JERSEY 30/1 ALGODON 87 MARINO 2','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(237,'RIB 30/1 ALGODON 80 ROSADO 1','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(238,'RIB 30/1 ALGODON 80 CELESTE 49','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(239,'RIB 30/1 ALGODON 80 MAIZ 1114','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(240,'RIB 30/1 ALGODON 80 ROSADO 1137','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(241,'STRECH 24/1 POLYALGODON 83 ARENA 1B','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(242,'STRECH 24/1 ALGODON 83 ARENA 1B','STCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(243,'JERSEY 30/1 ALGODON 85 AZULINO 19','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(244,'JERSEY 30/1 ALGODON 85 MILITAR 3154','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(245,'JERSEY 30/1 ALGODON 85 ORO 2121','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(246,'JERSEY 30/1 ALGODON 85 MARINO 2','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(247,'JERSEY 30/1 ALGODON 85 BOTELLA 3','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(248,'JERSEY 30/1 ALGODON 85 CEMENTO 10','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(249,'JERSEY 30/1 ALGODON 85 PLATA 7','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(250,'JERSEY 30/1 ALGODON 85 ITALIANO 4','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(251,'JERSEY 30/1 ALGODON 85 ARENA 1B','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(252,'JERSEY 20/1 ALGODON 90 BLANCO 1','JBL2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(253,'JERSEY 20/1 ALGODON 90 MANDARINA S/M','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(254,'JERSEY 20/1 ALGODON 90 PLATA 1107','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(255,'JERSEY 20/1 ALGODON 90 CREMA 1103','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(256,'JERSEY 20/1 ALGODON 90 NEGRO 1','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(257,'JERSEY 20/1 ALGODON 90 MARINO 2','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(258,'JERSEY 20/1 ALGODON 90 SALESIANO 1105','JCA20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(259,'JERSEY 20/1 ALGODON 90 MAIZ 14','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(260,'JERSEY 20/1 ALGODON 90 AZULINO 3115','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(261,'RIB 20/1 POLYALGODON 80 BLANCO 1','RPCBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(262,'RIB 20/1 ALGODON 80 NEGRO 1','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(263,'RIB 20/1 ALGODON 80 SALESIANO 1105','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(264,'RIB 20/1 ALGODON 80 PLATA 1107','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(265,'RIB 20/1 ALGODON 80 CREMA 1103','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(266,'RIB 20/1 ALGODON 80 AZULINO 19','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(267,'RIB 20/1 ALGODON 80 MAIZ 14','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(268,'RIB 20/1 ALGODON 80 MARINO 2','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(269,'STRECH 24/1 ALGODON 83 MANZANA 2','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(270,'STRECH 24/1 ALGODON 83 LACRE 6','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(271,'STRECH 24/1 ALGODON 83 ITALIANO 4','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(272,'RIB 20/1 ALGODON 80 PISTACHO 16','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(273,'JERSEY 30/1 ALGODON 85 LIMON 2105','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(274,'JERSEY 30/1 ALGODON 85 SALESIANO 1105','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(275,'RIB 30/1 ALGODON 80 LILA CLARO 21','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(276,'RIB 30/1 ALGODON 80 MELANGE 3% 1A','JMEL303',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(277,'JERSEY PEINADO 30/1 ALGODON 90 BLANCO 1147','JPEIBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(278,'JERSEY PEINADO 30/1 ALGODON 90 ROJO 8','JPEINOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(279,'RIB PEINADO 30/1 ALGODON 80 BLANCO 1','RPEINBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(280,'RIB PEINADO 30/1 ALGODON 80 ROJO 8','RPEINOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(281,'JERSEY 30/1 ALGODON 90 KORAL 2101','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(282,'JERSEY 20/1 ALGODON 90 MOSTAZA 7B','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(283,'RIB 20/1 ALGODON 80 MOSTAZA 7B','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(284,'JERSEY 20/1 ALGODON 90 ACERO 6','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(285,'RIB 20/1 ALGODON 80 ACERO 6','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(286,'RIB 20/1 ALGODON 80 MELANGE 10% 1A','RMEL2010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(287,'RIB 30/1 ALGODON 80 CELESTE 1102','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(288,'RIB 30/1 ALGODON 80 LACRE 15','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(289,'RIB 30/1 ALGODON 80 BEIGE 10B','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(290,'STRECH 24/1 ALGODON 83 MILITAR 54','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(291,'JERSEY 20/1 ALGODON 90 NEGRO 1D','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(292,'JERSEY 20/1 ALGODON 90 MARRON 9','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(293,'JERSEY 20/1 ALGODON 90 MILITAR 54','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(294,'RIB 20/1 ALGODON 80 MARRON 9','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(295,'RIB 20/1 ALGODON 80 MILITAR 3154','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(296,'JERSEY 30/1 POLYALGODON TRUZA 90 BLANCO 1','JPCTRBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(297,'JERSEY 30/1 ALGODON 75 ROJO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(298,'JERSEY 30/1 ALGODON 90 MELANGE 10% 1A','JMEL3010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(299,'RIB 30/1 POLYALGODON 80 MELANGE 10% 1A','RM3010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(300,'RIB 30/1 ALGODON 80 MANZANA 3102','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(301,'STRECH 24/1 POLYALGODON 83 CREMA 3','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(302,'JERSEY 30/1 ALGODON 90 NEGRO 1D','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(303,'JERSEY 30/1 ALGODON 80 NEGRO 1D','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(304,'JERSEY 20/1 ALGODON 80 NEGRO 1D','JOSC202',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(305,'STRECH 24/1 POLYALGODON 83 CREMA 21','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(306,'JERSEY 30/1 ALGODON 87 ROJO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(307,'JERSEY 30/1 ALGODON 87 AZULINO 19','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(308,'JERSEY 20/1 ALGODON 90 ROJO 8','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(309,'JERSEY 20/1 ALGODON 90 ARENA 1B','JCL2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(310,'RIB 20/1 ALGODON 80 ROJO 8','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(311,'RIB 20/1 ALGODON 80 ARENA 1101','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(312,'JERSEY 20/1 ALGODON 90 LACRE 15','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(313,'RIB 20/1 ALGODON 80 LACRE 15','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(314,'JERSEY 30/1 ALGODON 58 ARENA 1B','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(315,'JERSEY 30/1 ALGODON 75 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(316,'JERSEY 30/1 ALGODON 75 NEGRO 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(317,'JERSEY 30/1 ALGODON 75 ROJO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(318,'RIB 30/1 ALGODON 80 NEGRO 1D','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(319,'GAMUZA 50/1 ALGODON 80 NEGRO','GBL50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(320,'STRECH 24/1 POLYALGODON 83 PLATA 7','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(321,'STRECH 24/1 ALGODON 83 NARANJA 1','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(322,'RIB 30/1 POLYALGODON 80 LIMON BB 1130','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(323,'JERSEY 20/1 ALGODON 90 MILITAR 63','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(324,'RIB 20/1 ALGODON 80 MILITAR 63','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(325,'JERSEY 30/1 ALGODON 85 PERICO 7','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(326,'STRECH 24/1 ALGODON 83 LIMON 5','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(327,'JERSEY 30/1 ALGODON 90 CHOCOLATE 1116','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(328,'JERSEY 30/1 POLYALGODON 90 ROSADO 1101','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(329,'RIB 30/1 ALGODON 80 CHOCOLATE 1116','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(330,'JERSEY 30/1 ALGODON 87 TURQUEZA 2','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(331,'JERSEY 20/1 ALGODON 90 PISTACHO 16','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(332,'RIB 20/1 ALGODON 80 PISTACHO 16','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(333,'JERSEY 30/1 ALGODON 85 CHICLE 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(334,'JERSEY 30/1 ALGODON 80 ITALIANO 24','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(335,'JERSEY 30/1 ALGODON 80 SALESIANO 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(336,'FRANELA 20/10 ALGODON 90 MELANGE 10% 1A','FMEL10',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(337,'RIB 30/1 ALGODON 80 PATO 1','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(338,'JERSEY 30/1 ALGODON 87 MILITAR 54','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(339,'JERSEY 30/1 ALGODON 75 ORO 21','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(340,'JERSEY 20/1 ALGODON 90 LIMON 2105','JME20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(341,'RIB 20/1 ALGODON 80 LIMON 2105','RME20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(342,'JERSEY 20/1 ALGODON 90 GUINDA 3120','JOA20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(343,'RIB 20/1 ALGODON 80 GUINDA 3120','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(344,'JERSEY 20/1 ALGODON 90 ITALIANO 2104','JME20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(345,'JERSEY 20/1 ALGODON 90 MORADO 8','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(346,'JERSEY 20/1 ALGODON 90 TURQUEZA 3102','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(347,'JERSEY 20/1 POLYALGODON 90 MELANGE 3% 1A','JM203',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(348,'RIB 30/1 ALGODON 80 JADE 7','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(349,'RIB 30/1 ALGODON 80 JADE 1','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(350,'RIB 20/1 ALGODON 80 ITALIANO 2104','RME20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(351,'JERSEY 30/1 ALGODON 90 MILITAR 50','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(352,'RIB 30/1 ALGODON 80 MILITAR 50','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(353,'JERSEY PEINADO 30/1 ALGODON 90 ARENA 1B','JPEINCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(354,'RIB PEINADO 30/1 ALGODON ARENA 1B','RPEINCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(355,'JERSEY 20/1 ALGODON 90 ORO 2121','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(356,'JERSEY 20/1 ALGODON 90 PERICO 7','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(357,'JERSEY 20/1 ALGODON 90 NARANJA 3101','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(358,'RIB 20/1 ALGODON 80 ORO 2121','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(359,'RIB 20/1 ALGODON 80 PERICO 7','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(360,'RIB 20/1 ALGODON 80 NARANJA 3101','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(361,'JERSEY 30/1 POLYALGODON 90 LIMON BB 1130','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(362,'DOBLE PIQUE ALGODON 24/1 90 NEGRO 1','DPIQUEOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(363,'DOBLE PIQUE ALGODON 24/1 90 MARINO 2','DPIQUEOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(364,'DOBLE PIQUE ALGODON 24/1 90 ROJO 8','DPIQUEOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(365,'DOBLE PIQUE ALGODON 24/1 90 AZULINO 19','DPIQUEOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(366,'DOBLE PIQUE ALGODON 24/1 90 BLANCO 1','DPIQUEBL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(367,'RIB 24/1 ALGODON 80 MELANGE 10% 1A','RMEL2410',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(368,'RIB 20/1 POLYALGODON 80 MELANGE 3% 1A','RM203',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(369,'RIB 20/1 ALGODON 80 MORADO 1','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(370,'FRANELA 20/10 ALGODON 90 MELANGE 3% 1A','FMEL3',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(371,'FRANELA 20/10 ALGODON 90 NEGRO 3146','FO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(372,'FRANELA 20/10 ALGODON 90 MARINO 3110','FO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(373,'FRANELA 20/10 POLYALGODON 90 AZUL JEAN 11','FPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(374,'FRANELA 20/10 POLYALGODON 90 MARINO 3105','FPCO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(375,'FRANELA 10/10 POLYALGODON 90 NEGRO 1','FPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(376,'JERSEY LISTADO 30/1 ALGODON 80 AZULINO19','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(377,'JERSEY LISTADO 30/1 ALGODON 80 MARINO 2','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(378,'JERSEY LISTADO 30/1 ALGODON 80 NEGRO 1','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(379,'JERSEY LISTADO 30/1 ALGODON 80 ANTIQUE 1','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(380,'JERSEY LISTADO 30/1 ALGODON 80 CREMA 3','JLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(381,'JERSEY LISTADO 30/1 ALGODON 80 BOTELLA 3','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(382,'JERSEY LISTADO 30/1 ALGODON 80 PLATA 7','JLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(383,'JERSEY LISTADO 30/1 ALGODON 80 ARENA 1B','JLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(384,'JERSEY LISTADO 30/1 ALGODON 80 CEMENTO 10','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(385,'JERSEY LISTADO 30/1 ALGODON 80 ITALIANO 4','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(386,'FRANELA 20/10 ALGODON 90 ROJO 8','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(387,'JERSEY 20/1 POLYALGODON 90 MELANGE 25% 1A','JM2025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(388,'GAMUZA 30/1 POLYALGODON 90 PATO 30','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(389,'RIB 30/1 ALG LYC 78 BLANCO 1','RLYCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(390,'RIB 30/1 ALGODON LYCTADO 78 ROSADO 12','RLYCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(391,'RIB 30/1 ALG LYC 78 CELESTE 2','RLYCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(392,'RIB 30/1 ALG LYC 78 PATO 12','RLYCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(393,'RIB 30/1 ALG LYC 78 VERDE AGUA 3','RLYCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(394,'JERSEY LISTADO 30/1 ALGODON 80 BLANCO 1','JLISTBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(395,'JERSEY 30/1 ALGODON 90 ARENA 32','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(396,'JERSEY 30/1 ALGODON 80 ARENA 32','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(397,'JERSEY 30/1 ALGODON 90 PALO ROSA 23','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(398,'JERSEY 30/1 ALGODON 58 ROJO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(399,'JERSEY 30/1 ALGODON 58 NEGRO 1D','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(400,'JERSEY 30/1 ALGODON 58 MARINO 2','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(401,'JERSEY 30/1 ALGODON 90 LACRE D16','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(402,'JERSEY 30/1 ALGODON 80 LACRE D16','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(403,'JERSEY 30/1 ALGODON 58 SALESIANO 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(404,'JERSEY 30/1 ALGODON 80 PALO ROSA 23','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(405,'JERSEY 30/1 ALGODON 58 ARENA 32','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(406,'JERSEY 30/1 ALGODON 90 SALESIANO 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(407,'RIB 30/1 ALGODON 80 ARENA 32','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(408,'JERSEY 30/1 ALGODON 90 ITALIANO 24','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(409,'JERSEY 30/1 ALGODON 58 LACRE D16','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(410,'JERSEY 30/1 ALGODON 58 MILITAR 54','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(411,'JERSEY 30/1 ALGODON 90 LONDON 3','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(412,'JERSEY 30/1 ALGODON 80 LONDON 3','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(413,'JERSEY 30/1 ALGODON 58 LONDON 3','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(414,'JERSEY 30/1 ALGODON 90 ARENA 1D','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(415,'JERSEY 30/1 ALGODON 80 ARENA 1D','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(416,'JERSEY 30/1 ALGODON 58 ARENA 1D','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(417,'JERSEY 30/1 ALGODON 58 PLATA 7','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(418,'JERSEY 30/1 ALGODON 58 ITALIANO 24','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(419,'JERSEY 30/1 ALGODON 58 SALESIANO 5','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(420,'JERSEY 30/1 ALGODON 58 AZULINO 19','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(421,'JERSEY 30/1 ALGODON 58 BOTELLA 3','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(422,'RIB 30/1 ALGODON 80 MAIZ 1','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(423,'STRECH 24/1 POLYALGODON 83 ORO BRASIL 33','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(424,'JERSEY LISTADO 30/1 ALGODON 80 BEIGE 5','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(425,'JERSEY 24/1 ALGODON 80 LILA CLARO 21','JCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(426,'JERSEY 30/1 POLYALGODON 90 PATO 1101','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(427,'RIB 30/1 POLYALGODON 80 PATO 1101','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(428,'BOBINA PLASTICA 25x0.70 ALT DEN (FRA)','BP25x0.70A/D',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(429,'JERSEY 30/1 ALGODON 58 MELANGE 25% 1A','JMEL3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(430,'JERSEY 30/1 ALGODON 58 MOSTAZA 7B','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(431,'JERSEY 30/1 ALGODON 58 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(432,'JERSEY LABRADO 30/1 ALGODON 80 BLANCO 1','JLABBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(433,'JERSEY LABRADO 30/1 ALGODON 80 ROSADO 12','JLABCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(434,'JERSEY LABRADO 30/1 ALGODON 80 CELESTE 2','JLABCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(435,'JERSEY LABRADO 30/1 ALGODON 80 PATO 12','JLABCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(436,'JERSEY LABRADO 30/1 ALGODON 80 VERDE AGUA 3','JLABCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(437,'JERSEY 20/1 ALGODON 90 CELESTE 1102','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(438,'RIB 30/1 ALGODON 80 PALO ROSA 23','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(439,'RIB 20/1 ALGODON 80 CELESTE 1102','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(440,'JERSEY 30/1 POLYALGODON 90 PATO 27','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(441,'RIB 30/1 ALGODON 80 MARRON 3109','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(442,'RIB 30/1 ALGODON 80 LIMON BB 1130','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(443,'STRECH 24/1 POLYALGODON 83 MAIZ 14','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(444,'RIB 20/1 ALGODON 80 NEGRO 1D','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(445,'JERSEY 30/1 ALGODON 90 BOTELLA 35','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(446,'RIB 20/1 ALGODON 80 SOMBRA 12','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(447,'JERSEY 20/1 ALGODON 90 SOMBRA 12','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(448,'RIB 30/1 ALGODON 80 BOTELLA 35','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(449,'JERSEY 30/1 ALGODON 85 TURQUEZA 3102','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(450,'STRECH 24/1 POLYALGODON 83 PATO 27','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(451,'JERSEY 30/1 POLYALGODON 90 CEMENTO 4','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(452,'JERSEY 30/1 POLYALGODON TRUZA 90 PLATA 1102','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(453,'JERSEY 30/1 POLYALGODON TRUZA 90 CIELO 1','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(454,'JERSEY 30/1 ALGODON TRUZA 90 GUINDA 3138','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(455,'JERSEY 30/1 ALGODON TRUZA 90 BOTELLA 3114','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(456,'JERSEY 30/1 ALGODON TRUZA 90 AZULINO 16','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(457,'JERSEY 30/1 ALGODON 90 CONCHO DE VINO 3106','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(458,'JERSEY 20/1 ALGODON 90 BLANCO 1','JBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(459,'RIB 20/1 ALGODON 80 BLANCO 1','RBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(460,'JERSEY 30/1 ALGODON 90 JADE 1','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(461,'JERSEY 30/1 ALGODON 90 FRESA 1','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(462,'RIB 30/1 ALGODON 80 FRESA 1192','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(463,'STRECH 24/1 ALGODON 83 ORO 21','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(464,'STRECH 24/1 ALGODON 83 PISTACHO 16','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(465,'STRECH 24/1 ALGODON 83 SALESIANO 5','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(466,'JERSEY 30/1 ALGODON 90 MANDARINA 2105','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(467,'JERSEY 30/1 ALGODON 80 CHOCOLATE 1116','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(468,'RIB 30/1 ALGODON 80 MANDARINA 2105','RMA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(469,'JERSEY 30/1 ALGODON 90 ROJO 3132','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(470,'RIB 20/1 ALGODON 80 MELANGE 25%','RMEL2025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(471,'STRECH 24/1 ALGODON 83 MOSTAZA 7B','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(472,'JERSEY 30/1 ALGODON 75 NARANJA 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(473,'RIB 30/1 ALGODON 80 LACRE D16','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(474,'JERSEY 20/1 ALGODON 90 MELANGE 10% 1A','JMEL2010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(475,'JERSEY 20/1 ALGODON 90 ARENA 1102','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(476,'RIB 20/1 ALGODON 80 MANDARINA S/M','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(477,'RIB 20/1 ALGODON 80 BOTELLA 3','ROSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(478,'JERSEY 30/1 ALGODON 90 ROJO 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(479,'JERSEY 30/1 ALGODON 90 ORO 11','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(480,'JERSEY 20/1 ALGODON 90 NARANJA 34','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(481,'JERSEY 20/1 ALGODON TURQUEZA S/M','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(482,'RIB 20/1 ALGODON 80 TURQUEZA S/M','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(483,'STRECH 24/1 ALGODON 83 LILA CLARO 21','STCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(484,'STRECH 24/1 ALGODON 83 MANDARINA 10','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(485,'RIB 20/1 ALGODON 80 TURQUEZA 3102','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(486,'JERSEY 30/1 POLYALGODON 90 ROSADO BB 12','JPCCL',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(487,'RIB 30/1 ALGODON 80 PATO 30','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(488,'JERSEY 30/1 ALGODON 90 PATO FOS120','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(489,'JERSEY 30/1 ALGODON 90 ROSADO 12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(490,'RIB 30/1 ALGODON 80 PATO FOS120','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(491,'RIB 30/1 POLYALGODON 80 ROSADO 1112','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(492,'RIB 30/1 ALGODON 80 BOTELLA 3110','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(493,'JERSEY 30/1 POLYALGODON 85 BLANCO 1','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(494,'GAMUZA 30/1 POLYALGODON 90 ROSADO 37','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(495,'STRECH 24/1 ALGODON 83 BOTELLA 3110','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(496,'FRANELA 20/10ALGODON 90 CELESTE2','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(497,'FRANELA 20/10 ALGODON 90 VERDE AGUA3','FCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(498,'FRANELA 20/10 ALGODON 90 ROSADO12','FCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(499,'FRANELA 20/10 ALGODON 90 PATO12','FCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(500,'JERSEY 30/1 ALGODON 90 ORO 46','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(501,'JERSEY 30/1 ALGODON 80 ORO 46','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(502,'RIB 30/1 ALGODON 80 ORO 46','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(503,'JERSEY 30/1 ALGODON 90 PATO BB 12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(504,'JERSEY 30/1 ALGODON 90 ORO 39','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(505,'RIB 30/1 ALGODON 80 ROSADO BB12','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(506,'GAMUZA 30/1 POLYALGODON 90 PATO BB16','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(507,'JERSEY 20/1 ALGODON 90 MAIZ 11','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(508,'RIB 30/1 ALGODON 80 MARINO 2 RX','ROSC30RX',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(509,'JERSEY 30/1 ALGODON 85 MELANGE 25% 1A','JMEL3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(510,'JERSEY 20/1 ALGODON 90 CEMENTO 10','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(511,'JERSEY 30/1 POLYALGODON 86 BLANCO 1','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(512,'JERSEY 30/1 ALGODON 90 NEGRO 28','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(513,'JERSEY 30/1 ALGODON 80 NEGRO 28','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(514,'JERSEY 30/1 ALGODON 90 PATO 30','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(515,'RIB 30/1 ALGODON 80 NEGRO 28','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(516,'JERSEY 30/1 ALGODON 82 ORO 21','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(517,'JERSEY 20/1 ALGODON 90 BOTELLA 3','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(518,'JERSEY 30/1 POLYALGODON 80 BLANCO 1','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(519,'RIB 30/1 POLYALGODON 80 ROSADO BB 12','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(520,'JERSEY 30/1 ALGODON 85 ROSADO 1','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(521,'GAMUZA 30/1 POLYALGODON 93 BLANCO 1','GPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(522,'GAMUZA 50/1 ALGODON 80 BLANCO 1113','GPB50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(523,'GAMUZA 50/1 POLYALGODON 80 CHICLE FOS204','GPCO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(524,'GAMUZA 50/1 ALGODON 80 TURQUEZA 2123','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(525,'RIB 30/1 ALGODON 80 ITALIANO 24','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(526,'JERSEY 30/1  ALGODON 94 MELANGE 25% 1A','JMEL3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(527,'JERSEY 30/1 ALGODON 80 MANDARINA 2105','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(528,'JERSEY 30/1 ALGODON 80 JADE 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(529,'JERSEY 30/1 ALGODON 52 NEGRO 28','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(530,'JERSEY 30/1 ALGODON 52 ROJO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(531,'JERSEY 30/1 ALGODON 52 AZULINO 19','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(532,'JERSEY 30/1 ALGODON 52 PLATA 7','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(533,'JERSEY 30/1 ALGODON 52 MOSTAZA 7B','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(534,'JERSEY 30/1 ALGODON 52 LACRE D16','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(535,'JERSEY 30/1 ALGODON 52 ARENA 32','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(536,'JERSEY 30/1 ALGODON 52 ORO 21','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(537,'JERSEY 30/1 ALGODON 52 BOTELLA 3','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(538,'JERSEY 30/1 ALGODON 52 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(539,'JERSEY 30/1 ALGODON 52 MARINO 2','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(540,'JERSEY 30/1 ALGODON 52 ARENA 1D','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(541,'RIB 30/1 POLYALGODON 80 ROSADO 1','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(542,'JERSEY 30/1 ALGODON 58 NARANJA 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(543,'FRANELA 20/10 ALGODON 90 CONCHO DE VINO 6','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(544,'JERSEY 30/1 ALGODON 85 CELESTE 1102','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(545,'JERSEY 30/1 ALGODON 90 VERDE AGUA 63','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(546,'FRANELA 20/10 ALGODON 90 MILITAR 54','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(547,'FRANELA 20/10 ALGODON 90 MILITAR 54','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(548,'FRANELA  20/10 ALGODON 90 TURQUEZA MEDIO 9','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(549,'FRANELA 20/10 ALGODON 90 GUINDA 20','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(550,'FRANELA 20/10 ALGODON 90 MARRON 9','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(551,'FRANELA 20/10 ALGODON 90 PALO ROSA 23','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(552,'JERSEY 20/1 ALGODON 90 NEGRO 1','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(553,'JERSEY 20/1 ALGODON 90 PISTACHO 16','JOSC20A',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(554,'FRANELA 20/10 ALGODON 90 PATO 1','FCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(555,'FRANELA 20/10 ALGODON 90 MELON 1','FCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(556,'FRANELA 20/10 ALGODON 90 TURQUEZA 2','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(557,'FRANELA 20/10 ALGODON 90 ROSADO 1','FCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(558,'FRANELA 20/10 ALGODON 90 MANDARINA 17','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(559,'RIB 30/1 ALGODON 80 ARENA 1D','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(560,'JERSEY LISTADO 30/1 ALGODON 90 ROJO 8','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(561,'JERSEY LISTADO 30/1 ALGODON 90 MARINO 2','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(562,'JERSEY LISTADO 30/1 ALGODON 90 PLATA 7','JLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(563,'JERSEY LISTADO 30/1 ALGODON 90 ANTIQUE 1','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(564,'JERSEY LISTADO 30/1 ALGODON 90 BLANCO 1','JLISTBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(565,'CUELLOS 24/1 ALGODON 40 ROJO 8','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(566,'CUELLOS 24/1 ALGODON 40 MARINO 2','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(567,'CUELLOS 24/1 ALGODON 40 ANTIQUE 1','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(568,'CUELLOS 24/1 ALGODON 40 PLATA 7','CCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(569,'CUELLOS 24/1 ALGODON 40X10 BLANCO 1','CBL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(570,'JERSEY LISTADO 30/1 ALGODON 90 ARENA 1B','JLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(571,'JERSEY LISTADO 30/1 ALGODON 90 BOTELLA 3','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(572,'JERSEY LISTADO 30/1 ALGODON 90 AZULINO 19','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(573,'STRECH 24/1 POLYALGODON 83 MAIZ 1','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(574,'JERSEY 30/1 ALGODON 52 SALESIANO 5','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(575,'JERSEY 30/1 ALGODON 52 ITALIANO 24','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(576,'JERSEY 30/1 ALGODON 52 MELANGE 25% 1A','JMEL3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(577,'JERSEY 20/1 ALGODON 90 TURQUEZA MEDIO 2109','JME20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(578,'RIB 20/1 ALGODON 80 TURQUEZA MEDIO 2109','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(579,'GAMUZA 30/1 ALGODON 90 MARINO 3110','GOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(580,'GAMUZA 30/1 ALGODON 90 NEGRO 3146','GOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(581,'GAMUZA 30/1 ALGODON 90 MELANGE 25/% 1A','GMEL3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(582,'JERSEY 20/1 ALGODON 90 MOSTAZA S/M','JOSC2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(583,'RIB 20/1 ALGODON 80 MOSTAZA S/M','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(584,'CUELLOS 24/1 ALGODON 40 AZULINO 19','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(585,'CUELLOS 24/1 ALGODON 40 BOTELLA 3','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(586,'CUELLOS 24/1 ALGODON 40 ARENA 1B','CCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(587,'JERSEY 30/1 ALGODON 58 NEGRO 28','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(588,'JERSEY 30/1 ALGODON 58 ORO 21','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(589,'JERSEY 30/1 ALGODON 52 MILITAR 54','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(590,'RIB 30/1 ALGODON LYCRADO 78 NEGRO 1','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(591,'JERSEY 30/1 ALGODON 88 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(592,'GAMUZA 30/1 ALGODON 90 FUCSIA 1','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(593,'GAMUZA 30/1 ALGODON 90 ROJO 8','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(594,'GAMUZA 30/1 ALGODON 90 TURQUEZA MEDIO 9','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(595,'JERSEY 30/1 ALGODON 80 ACERO 51','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(596,'RIB 30/1ALGODON 80 ACERO 51','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(597,'FRANELA 20/10 ALGODON 90 ARENA 1B','FCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(598,'JERSEY 30/1 ALGODON 80 ANTIQUE 55','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(599,'RIB 30/1 ALGODON 80 ANTIQUE 51','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(600,'JERSEY 30/1 ALGODON 90 BLANCO 67','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(601,'JERSEY 30/1 ALGODON 80 BLANCO 67','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(602,'GAMUZA 30/1 POLYALGODON 90 MARINO 2','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(603,'GAMUZA 30/1 POLYALGODON 90 NEGRO 1','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(604,'JERSEY LISTADO 30/1 ALGODON 80 CHOCOLATE 16','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(605,'JERSEY LISTADO 30/1 ALGODON 80 MELANGE 10 %','JLISTMEL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(606,'JERSEY LISTADO 30/1 ALGODON 80 SOMBRA 10','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(607,'CUELLOS 24/1 ALGODON 40 NEGRO 1','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(608,'CUELLOS 24/1 ALGODON 40 CHOCOLATE 16','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(609,'CUELLOS 24/1 ALGODON 40 CEMENTO 10','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(610,'CUELLOS 30/1 POLYALGODON 40 MELANGE 10 % 1A','CM3010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(611,'CUELLOS 24/1 ALGODON 40 SOMBRA 12','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(612,'GAMUZA 30/1 ALGODON 90 ACERO 3106','GOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(613,'GAMUZA 30/1 ALGODON 90 PERICO 7','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(614,'GAMUZA 30/1 ALGODON 90 KORAL 1','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(615,'GAMUZA 30/1 ALGODON 90 NARANJA 1','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(616,'GAMUZA 30/1 ALGODON 90 LILA 6','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(617,'JERSEY 30/1 ALGODON 90 SOMBRA S/M','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(618,'JERSEY 20/1 ALGODON 90 BOTELLA 10','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(619,'JERSEY 30/1 ALGODON 80 PLATA 2','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(620,'RIB 30/1 ALGODON 80 PLATA 2','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(621,'JERSEY 30/1 ALGODON 90 PLATA 2','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(622,'JERSEY 30/1 ALGODON 80 PLATA 2004','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(623,'RIB 30/1 ALGODON 80 PLATA 2004','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(624,'JERSEY 30/1 ALGODON 85 MANZANA 2','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(625,'JERSEY 30/1 POLYALGODON 90 AZULINO 19','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(626,'JERSEY 30/1 POLYALGODON 90 ROJO 8','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(627,'STRECH 24/1 POLYALGODON 83 ORO 21','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(628,'JERSEY 20/1 ALGODON 80 NEGRO 28','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(629,'JERSEY 20/1 ALGODON 90 NEGRO 28','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(630,'JERSEY 30/1 ALGODON 90 AQUA 63','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(631,'RIB 30/1 ALGODON 80 AQUA 63','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(632,'JERSEY 30/1 ALGODON 80 AQUA 63','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(633,'RIB 30/1 ALGODON 80 ORO BRASIL 2133','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(634,'RIB 30/1 ALGODON 80 SOMBRA 2','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(635,'GAMUZA 30/1 ALGODON 90 MELANGE 10% 1A','GMEL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(636,'JERSEY 30/1 ALGODON 85 MARRON 9','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(637,'JERSEY 30/1 ALGODON 58 LIMON 5','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(638,'JERSEY 20/1 ALGODON 90 LILA CLARO 21','JCL2015',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(639,'RIB 20/1 ALGODON 80 LILA CLARO 1121','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(640,'JERSEY 30/1 ALGODON 80 SOMBRA 2','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(641,'RIB 20/1 ALGODON 80 CEMENTO 10','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(642,'JERSEY 30/1 ALGODON 85 AZULINO 19 C','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(643,'RIB 30/1 ALGODON 80 AZULINO 19 C','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(644,'JERSEY 30/1 ALGODON 90 AZULINO 19 C','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(645,'JERSEY 30/1 ALGODON 90 ITALIANO 8','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(646,'JERSEY 30/1 ALGODON 90 CHICLE 31','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(647,'RIB 30/1 ALGODON 80 CONCHO DE VINO 3106','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(648,'JERSEY 30/1 ALGODON 87 NARANGA 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(649,'JERSEY 30/1 ALGODON 90 ROJO 8 C','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(650,'CUADRE S/N','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(651,'JERSEY 20/1 POLYALGODON 90 BLANCO 1','JPCBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(652,'JERSEY 30/1 POLYALGODON 56 BLANCO 1','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(653,'JERSEY 30/1 ALGODON 90 SALESIANO 1105','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(654,'RIB 30/1 POLYALGODON 80 CHICLE D2152','RPCME30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(655,'RIB 30/1 ALGODON 80 ROJO 6','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(656,'RIB 30/1 ALGODON 80 ROJO 8C','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(657,'MOVI','MOVILIDA',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(658,'JERSEY 30/1 POLYALGODON 52 BLANCO 1','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(659,'JERSEY 30/1 ALGODON 85 LILA CLARO 21','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(660,'RIB 20/1 ALGODON 80 NEGRO 28','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(661,'JERSEY 30/1 ALGODON 80 BARNIE 2113','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(662,'RIB 30/1 ALGODON 80 BARNIE 2113','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(663,'JERSEY 30/1 ALGODON 90 MORADO 8','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(664,'RIB 30/1 ALGODON 80 MORADO 1','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(665,'JERSEY 30/1 ALGODON 85 MELANGE 10% 1A','JMEL3010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(666,'JERSEY 30/1 ALGODON 85 FUCSIA 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(667,'JERSEY 30/1 POLYALGODON 51 BLANCO 1','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(668,'JERSEY 30/1 ALGODON 80 MORADO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(669,'CUELLOS 24/1 ALGODON 40 MELANGE 25% 1A','CMEL2425',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(670,'JERSEY 30/1 ALGODON 80 ROJO 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(671,'JERSEY 30/1 ALGODON 90 BARNIE 2113','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(672,'RIB 30/1 ALGODON 80 SALESIANO 6','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(673,'JERSEY 30/1 POLYALGODON 90 VERDE MONINA 1191','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(674,'JERSEY 30/1 POLYALGODON 50 BLANCO 1','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(675,'GAMUZA 30/1 POLYALGODON 94 ROJO 8','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(676,'GAMUZA 30/1 POLYALGODON 94 TURQUEZA 2','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(677,'GAMUZA 30/1 POLYALGODON 94 LIMON 5','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(678,'GAMUZA 30/1 POLYALGODON 94 NARANJA 1','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(679,'GAMUZA 30/1 POLYALGODON 94 AZULINO 19','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(680,'GAMUZA 30/1 POLYALGODON 94 ORO 21','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(681,'JERSEY 30/1 POLYALGODON 93 PATO 12','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(682,'JERSEY 30/1 POLYALGODON 93 CELESTE 21','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(683,'JERSEY 30/1 POLYALGODON 93 ROSADO 12','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(684,'JERSEY 30/1 POLYALGODON 93 BANANA 8','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(685,'JERSEY 30/1 POLYALGODON 93 LIMON BB 30','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(686,'JERSEY 30/1 POLYALGODON 93 CREMA 3','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(687,'RIB 30/1 ALGODON 80 LONDON 3','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(688,'RIB 30/1 POLYALGODON 80 LIMON 5','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(689,'GAMUZA 30/1 ALGODON 90 FRESA 1','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(690,'GAMUZA 30/1 ALGODON 90 ORO BRASIL 33','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(691,'GAMUZA 30/1 ALGODON 90 LIMON 5','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(692,'GAMUZA 30/1 ALGODON 90 MANDARINA 17','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(693,'JERSEY 30/1 POLYALGODON 93 VERDE AGUA BB','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(694,'JERSEY 30/1 POLYALGODON 93 PERLA','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(695,'GAMUZA 30/1 ALGODON 90 TURQUEZA 2','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(696,'GAMUZA 30/1 POLYALGODON 90 CELESTE 169','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(697,'JERSEY 30/1 POLYALGODON 90 CELESTE BB 12','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(698,'GAMUZA 30/1 POLYALGODON 94 BLANCO 1','GPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(699,'GAMUZA 30/1 POLYALGODON 94 CELESTE 169','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(700,'GAMUZA 30/1 POLYALGODON 94 PATO BB16','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(701,'GAMUZA 30/1 POLYALGODON 94 ROSADO 12','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(702,'GAMUZA 30/1 POLYALGODON 94 VERDE AGUA 3','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(703,'GAMUZA 30/1 POLYALGODON 94 MAIZ 9','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(704,'JERSEY 30/1 ALGODON 90 PATO S/M','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(705,'RIB 30/1 ALGODON 80 PATO S/M','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(706,'JERSEY 30/1 ALGODON 85 MORADO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(707,'JERSEY 30/1 POLYALGODON 58 BLANCO 1','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(708,'JERSEY 20/1 ALGODON 90 BARNIE 13','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(709,'RIB 20/1 ALGODON 80 BARNIE 13','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(710,'JERSEY 30/1 ALGODON 80 MORADO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(711,'RIB 30/1 ALGODON 80 MORADO 8','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(712,'RIB 20/1 ALGODON 80 MORADO 8','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(713,'JERSEY 20/1 ALGODON 90 ORO BRASIL 2133','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(714,'RIB 20/1 ALGODON 80 ORO BRASIL 2133','Ro20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(715,'JERSEY 20/1 ALGODON 90 MANZANA 37','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(716,'JERSEY 20/1 ALGODON 90 BEIGE 17','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(717,'RIB 20/1 ALGODON 80 BEIGE 17','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(718,'RIB 20/1 ALGODON 80 MANZANA 37','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(719,'JERSEY PEINADO 30/1 ALGODON 90 ROSADO 12','JPEINCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(720,'JERSEY PEINADO 30/1 ALGODON 90 CELESTE 2','JPEINCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(721,'JERSEY PEINADO 30/1 ALGODON 90 PATO 12','JPEINCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(722,'JERSEY PEINADO 30/1 ALGODON 90 VERDE AGUA 3','JPEINCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(723,'JERSEY 30/1 ALGODON 50 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(724,'GAMUZA 30/1 ALGODON 90 CHICLE 1','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(725,'JERSEY 20/1 ALGODON 80 BLANCO 1','JBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(726,'GAMUZA 30/1 POLYALGODON 94 MAIZ 14','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(727,'GAMUZA 30/1 POLYALGODON 94 CELESTE 2','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(728,'GAMUZA 30/1 POLYALGODON 94 ROSADO 1','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(729,'GAMUZA 30/1 POLYALGODON 94 PATO 1','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(730,'JERSEY 30/1 ALGODON 90 PALO ROSA 18','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(731,'RIB 30/1 ALGODON 80 PALO ROSA 18','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(732,'JERSEY 30/1 ALGODON 75 TURQUEZA 2','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(733,'JERSEY 30/1 ALGODON 75 MILITAR 54','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(734,'JERSEY 30/1 ALGODON 80 MELANGE 10% 1A','JMEL3010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(735,'RIB 30/1 ALGODON LYCRADO 80 ROJO 3107','RLYCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(736,'RIB 30/1 ALGODON LYCRADO 78 ARENA 1B','RLYCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(737,'RIB 30/1 ALGODON LYCRADO 78 MARRON 9','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(738,'RIB 30/1 ALGODON LYCRADO 78 MARINO 2','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(739,'RIB 30/1 ALGODON LYCRADO 78 MELANGE 10% 1A','RLYCMEL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(740,'JERSEY 30/1 POLYALGODON 54 BLANCO 1','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(741,'RIB 30/1 ALGODON LYCRADO 78 PALO ROSA 23','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(742,'RIB 30/1 ALGODON LYCRADO 80 TURQUEZA 2182','RLYCME30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(743,'RIB 30/1 ALGODON LYCRADO 80 AZULINO 3115','RLYCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(744,'FALSO INTERLOCK 30/1 ALGODON 80 BLANCO 1','FIPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(745,'FALSO INTERLOCK 30/1 ALGODON 80 ROSADO 12','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(746,'FALSO INTERLOCK 30/1 ALGODON 80 CELESTE 2','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(747,'FALSO INTERLOCK 30/1 ALGODON 80 PATO 12','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(748,'FALSO INTERLOCK 30/1 ALGODON 80 VERDE AGUA 3','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(749,'GAMUZA 30/1 POLYALGODON 93 ROSADO 1','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(750,'GAMUZA 30/1 POLYALGODON 93 CELESTE 2','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(751,'GAMUZA 30/1 POLYALGODON 93 PATO 1','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(752,'GAMUZA 30/1 POLYALGODON 93 VERDE AGUA 3','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(753,'GAMUZA 30/1 POLYALGODON 93 MAIZ 14','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(754,'JERSEY 30/1 ALGODON 90 PLOMO ESCOLAR 26','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(755,'JERSEY 30/1 ALGODON 80 PLOMO ESCOLAR 26','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(756,'RIB 30/1 ALGODON 80 PLOMO ESCOLAR 26','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(757,'GAMUZA 30/1 ALGODON 90 AZULINO 19','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(758,'GAMUZA 30/1 ALGODON 90 MARRON 3109','GOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(759,'JERSEY 30/1 ALGODON 85 GUINDA 20','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(760,'JERSEY 30/1 ALGODON 90 PATO BB 16','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(761,'RIB 30/1 ALGODON LYCRADO 78 TURQUEZA MEDIO 9','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(762,'RIB 30/1 ALGODON LYCRADO 78 ITALIANO 4','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(763,'RIB 20/1 ALGODON 80 BOTELLA 10','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(764,'JERSEY 30/1 ALGODON 85 BEIGE 5','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(765,'JERSEY 20/1 ALGODON 80 NEGRO 1','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(766,'FRANELA 20/10 POLYALGODON 90 BLANCO 1192','FPCB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(767,'FRANELA 20/10 POLYALGODON 90 ROSADO 12','FPCCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(768,'FRANELA 20/10 POLYALGODON 90 CELESTE 1102','FPCC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(769,'FRANELA 20/10 POLYALGODON 90 PATO 12','FPCCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(770,'FRANELA 20/10 POLYALGODON 90 VERDE AGUA 1103','FPCC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(771,'STRECH 24/1 ALGODON 83 ACERO 6','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(772,'GAMUZA 30/1 POLYALGODON 90 ROSADO 1220','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(773,'GAMUZA 30/1 POLYALGODON 90 CELESTE 21','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(774,'GAMUZA 30/1 POLYALGODON 90 VERDE AGUA 1109','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(775,'GAMUZA 30/1 POLYALGODON 90 PATO 12','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(776,'GAMUZA 30/1 POLYALGODON 90 BANANA 8','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(777,'GAMUZA 30/1 POLYALGODON 90 LIMON 30-B','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(778,'RIB 30/1 ALGODON 80 CELESTE 16','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(779,'JERSEY 30/1 ALGODON 90 CELESTE 16','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(780,'GAMUZA 50/1 ALGODON 80 MARINO 2 RX','GOSC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(781,'JERSEY 30/1 ALGODON 52 BLANCO 67','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(782,'JERSEY 30/1 ALGODON 58 BLANCO 67','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(783,'RIB 30/1 ALGODON 80 BLANCO 67','RBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(784,'JERSEY 20/1 ALGODON 90 MARINO 21','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(785,'RIB 20/1 ALGODON 80 MARINO 21','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(786,'RIB 30/1 ALGODON LYCRADO 78 CONCHO DE VINO 6','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(787,'RIB 30/1 ALGODON LYCRADO 78 FRESA 1','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(788,'FRANELA 20/10 ALGODON 90 AZULINO 19','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(789,'JERSEY 30/1 ALGODON 80 CONCHO DE VINO 3106','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(790,'JERSEY 30/1 ALGODON 58 PLATA 39','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(791,'STRECH 24/1 ALGODON 83 COBALTO','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(792,'JERSEY 30/1 ALGODON 85 MOSTAZA 7B','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(793,'FRANELA 20/10 ALGODON 90 AZUL BLUE','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(794,'JERSING LISTADO 30/1 ALGODON 75 ROSADO 12','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(795,'JERSING LISTADO 30/1 ALGODON 75 CELESTE 2','JGLIST30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(796,'JERSING LISTADO 30/1 ALGODON 75 VERDE AGUA 3','JGLIST30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(797,'JERSING LISTADO 30/1 ALGODON 75 LIMON BB 30','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(798,'JERSING LISTADO 30/1 ALGODON 75 PATO 12','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(799,'STRECH 24/1 ALGODON 83 MORADO 8','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(800,'PIQUE 24/1 ALGODON 90 PERICO RX','POSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(801,'CUELLOS Y PRETINA ALGODON 24/1 PERICO RX','CPOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(802,'JERSEY 30/1 ALGODON 90 BARNIE 17','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(803,'RIB 30/1 ALGODON 80 BARNIE 17','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(804,'RIB 30/1 ALGODON 80 NEGRO 10','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(805,'JERSEY 30/1 ALGODON 80 NEGRO 10','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(806,'STRECH 24/1 ALGODON 83 BARNIE 13','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(807,'FRANELA 24/10 ALGODON 95 MELANGE 15%','FMEL15',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(808,'RIB 150/2 POLYALGODON 85 ROJO 8','RPCOSC150',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(809,'GAMUZA 30/1 POLYALGODON 92 MAIZ 14','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(810,'GAMUZA 30/1 POLYALGODON 92 CELESTE 2','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(811,'GAMUZA 30/1 POLYALGODON 92 PATO 1','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(812,'GAMUZA 30/1 POLYALGODON 92 ROSADO 1','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(813,'GAMUZA 30/1 POLYALGODON 92 VERDE AGUA 3','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(814,'GAMUZA 30/1 POLYALGODON 92 BLANCO 1','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(815,'FRANELA 20/10 ALGODON 100 MELANGE 25% 1A','FMEL25',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(816,'JERSEY 30/1 POLYALGODON 90 CELESTE 73','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(817,'JERSEY 20/1 ALGODON 90 MANDARINA 17','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(818,'RIB 20/1 ALGODON 80 MANDARINA 17','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(819,'JERSEY 30/1 POLYALGODON 90 TURQUEZA 1126','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(820,'JERSEY 30/1 POLYALGODON 90 CELESTE 69','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(821,'RIB 30/1 POLYALGODON 80 CELESTE 69','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(822,'JERSEY 30/1 ALGODON 94 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(823,'JERSEY 30/1 ALGODON 80 FRESA 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(824,'JERSEY 30/1 ALGODON 80 PISTACHO 3112','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(825,'JERSEY 30/1 ALGODON 80 MOSTAZA 5','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(826,'RIB 30/1 ALGODON 80 PISTACHO 3112','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(827,'RIB 30/1 ALGODON 80 MOSTAZA 5','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(828,'GAMUZA 30/1 ALGODON 90 MILITAR 54','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(829,'STRECH 24/1 POLYALGODON 83 LILA CLARO 21','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(830,'FRANELA 20/10 POLYALGODON 90 MELANGE 12.5 %','FMEL12.5',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(831,'JERSEY 30/1 ALGODON 90 MELANGE 12.5 %','JMEL3012',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(832,'RIB 30/1 ALGODON 80 MELANGE 12.5 %','RMEL3012.5',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(833,'JERSEY 30/1 ALGODON 80 LIMON FOS244','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(834,'JERSEY 30/1 ALGODON 80 MOSTAZA 62','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(835,'RIB 30/1 ALGODON 80 LIMON FOS244','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(836,'RIB 30/1 ALGODON 80 MOSTAZA 62','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(837,'GAMUZA 30/1 POLYALGODON 93 ROSADO 37','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(838,'GAMUZA 30/1 POLYALGODON 93 PATO BB 16','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(839,'NIDO DE ABEJA 30/1 ALGODON 80 PATO 12','NDCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(840,'NIDO DE ABEJA 30/1 ALGODON 80 VERDE AGUA 3','NDCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(841,'NIDO DE ABEJA 30/1 ALGODON 80 ROSADO 12','NDCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(842,'NIDO DE ABEJA 30/1 ALGODON 80 CELESTE 2','NDCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(843,'NIDO DE ABEJA 30/1 ALGODON 80 BLANCO 1','NDCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(844,'JERSEY 30/1 ALGODON 90 MELON BB 15','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(845,'RIB 30/1 ALGODON 80 MELON BB 15','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(846,'JERSEY 30/1 ALGODON 80 ITALIANO 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(847,'RIB 30/1 ALGODON 80 ITALIANO 1','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(848,'JERSEY 30/1 ALGODON 85 ROSADO 37','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(849,'JERSEY 30/1 ALGODON 90 MELANGE 12.5 %','JMEL3012',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(850,'JERSEY 30/1 ALGODON 52 NEGRO 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(851,'JERSEY 30/1 ALGODON 90 ITALIANO 1','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(852,'GAMUZA 30/1 POLYALGODON 90 ROSADO 12','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(853,'GAMUZA 30/1 POLYALGODON 90 MAIZ 8','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(854,'JERSEY 20/1 POLYALGODON 90 MELANGE 12.5 %','JM20125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(855,'JERSEY 20/1 ALGODON 90 PLATA 39','JCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(856,'RIB 20/1 ALGODON 80 PLATA 39','RCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(857,'STRECH 24/1 ALGODON 83 PALO ROSA 18','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(858,'JERSEY 30/1 ALGODON 90 PERICO 38','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(859,'RIB 30/1 ALGODON 80 PERICO 38','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(860,'RIB 150/2 PES ROJO FONCODES','RIB FONCODES',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(861,'JERSEY 30/1 ALGODON 80 ROSADO 12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(862,'JERSEY 30/1 ALGODON 90 NEGRO 10','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(863,'JERSEY 24/1 ALGODON 90 MARINO 2','JOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(864,'RIB 24/1 ALGODON 80 MARINO 2','ROSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(865,'JERSEY 30/1 POLYALGODON 90 PATO 36','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(866,'WAFFER 30/1 ALGODON 78 CELESTE 2','WCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(867,'WAFFER 30/1 ALGODON 78 LIMON BB 30','WCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(868,'WAFFER 30/1 ALGODON 78 ROSADO 37','WCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(869,'WAFFER 30/1 ALGODON 78 VERDE AGUA 3','WCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(870,'WAFFER 30/1 ALGODON 78 PATO 1','WCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(871,'JERSEY 30/1 ALGODON 90 BOTELLA S/M','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(872,'RIB 30/1 ALGODON 80 BOTELLA 43','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(873,'JERSEY 30/1 ALGODON NEGRO RX','JOSC30RX',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(874,'RIB 30/1 ALGODON 80 NEGRO RX','ROSC30RX',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(875,'MOVI','MOVILIDAD',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(876,'JERSEY 30/1 ALGODON 90 MOSTAZA 5','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(877,'JERSEY 30/1 ALGODON 90 PALO ROSA 13','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(878,'RIB 30/1 ALGODON 80 PALO ROSA 13','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(879,'JERSEY 30/1 ALGODON 80 MELANGE 12.5%','JMEL3012',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(880,'RIB 30/1 ALGODON 80 BLANCO 17','RBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(881,'JERSEY 30/1 ALGODON 90 FRESA 36','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(882,'RIB 30/1 ALGODON 80 FRESA 36','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(883,'JERSEY 30/1 ALGODON 80 BLANCO 17','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(884,'JERSEY 30/1 ALGODON 85 PERICO 38','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(885,'JERSEY 30/1 ALGODON 90 PISTACHO 3112','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(886,'JERSEY 30/1 ALGODON 90 MOSTAZA 62','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(887,'STRECH 24/1 POLYALGODON 83 MELANGE 12.5%','STMEL2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(888,'JERSEY 30/1 ALGODON 90 JADE COL1','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(889,'JERSEY 20/1 ALGODON 90 ARENA S/M','JCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(890,'JERSEY 30/1 ALGODON 90 PLOMO OSCURO ?','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(891,'JERSEY 30/1 ALGODON 90 PLOMO CLARO ?','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(892,'JERSEY 30/1 ALGODON 90 ACERO BLUE ?','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(893,'JERSEY 30/1 ALGODON 90 LACRE ?','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(894,'JERSEY 30/1 ALGODON 90 VERDE OLIVO ?','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(895,'JERSEY 30/1 ALGODON 90 CRISTAL 26','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(896,'JERSEY 30/1 ALGODON 90 AMARILLO ?','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(897,'JERSEY 30/1 ALGODON 90 NEGRO ?','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(898,'JERSEY 30/1 ALGODON 90 MARINO ?','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(899,'JERSEY 30/1 ALGODON 90 ESMERALDA ?','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(900,'JERSEY 30/1 ALGODON 90 ROJO ?','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(901,'JERSEY 30/1 ALGODON 90 MILITAR ?','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(902,'JERSEY 30/1 ALGODON 90 BLANCO ?','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(903,'RIB 30/1 ALGODON 80 PLOMO OSCURO ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(904,'RIB 30/1 ALGODON 80 PLOMO CLARO ?','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(905,'RIB 30/1 ALGODON 80 LACRE ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(906,'RIB 30/1 ALGODON 80 VERDE OLIVO ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(907,'RIB 30/1 ALGODON 80 CRISTAL 26','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(908,'RIB 30/1 ALGODON 80 AMARILLO ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(909,'RIB 30/1 ALGODON 80 NEGRO ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(910,'RIB 30/1 ALGODON 80 MARINO ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(911,'RIB 30/1 ALGODON 80 ESMERALDA ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(912,'RIB 30/1 ALGODON 80 ROJO ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(913,'RIB 30/1 ALGODON 80 MARRON ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(914,'RIB 30/1 ALGODON 80  MILITAR ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(915,'RIB 30/1 ALGODON 80 BLANCO','RBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(916,'RIB 30/1 ALGODON 80 ACERO BLUE ?','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(917,'JERSEY 30/1 ALGODON 90 MARRON ?','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(918,'RIB 30/1 ALGODON 80 BLANCO ?','RBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(919,'JERSEY 20/1 ALGODON 90 ACERO 23','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(920,'RIB 20/1 ALGODON 80 ACERO 23','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(921,'JERSEY 20/1 ALGODON 90 AZULINO RX','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(922,'JERSEY 30/1 ALGODON 58 ITALIANO 4','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(923,'JERSEY 30/1 ALGODON 58 NEGRO 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(924,'JERSEY 30/1 POLYALGODON 90 MANDARINA 48','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(925,'JERSEY 30/1 POLYALGODON 90 CHICLE 1122','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(926,'JERSEY 30/1 POLYALGODON 90 CARTON 2144','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(927,'JERSEY 30/1 POLYALGODON 90 LILA CLARO 1121','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(928,'JERSEY 30/1 POLYALGODON 90 PLATA 2','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(929,'JERSEY 30/1 POLYALGODON 90 CRISTAL 2108','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(930,'JERSEY 30/1 POLYALGODON 90 ARENA 1102','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(931,'JERSEY 30/1 POLYALGODON 90 VERDE HOJA 2112','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(932,'STRECH 24/1 ALGODON 83 PATO 1','STCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(933,'STRECH 24/1 ALGODON 83 VERDE MUSGO','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(934,'JERSEY 30/1 POLYALGODON 90 PATO 1161','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(935,'GAMUZA 30/1 ALGODON 90 BARNIE 13','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(936,'GAMUZA 30/1 ALGODON 90 MORADO 8','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(937,'RIB 20/1 ALGODON 80 LACRE ?','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(938,'RIB 20/1 ALGODON 80 MOSTAZA ?','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(939,'JERSEY 20/1 ALGODON 90 LACRE ?','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(940,'JERSEY 30/1 ALGODON 80 SOMBRA 28','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(941,'RIB 30/1 ALGODON 80 SOMBRA 28','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(942,'JERSEY 30/1 ALGODON 80 PISTACHO 18','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(943,'RIB 30/1 ALGODON 80 PISTACHO 18','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(944,'RIB 30/1 ALGODON 80 PLOMO OSCURO 27','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(945,'JERSEY 30/1 ALGODON 80 PLOMO OSCURO 27','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(946,'JERSEY 30/1 ALGODON 80 ACERO 74','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(947,'RIB 30/1 ALGODON 80 ACERO 74','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(948,'JERSEY 30/1 ALGODON 80 ARENA 53','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(949,'RIB 30/1 ALGODON 80 ARENA 53','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(950,'JERSEY 30/1 ALGODON 80 CELESTE 193','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(951,'RIB 30/1 ALGODON 80 CELESTE 193','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(952,'JERSEY 30/1 ALGODON 80 MOSTAZA 64','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(953,'RIB 30/1 ALGODON 80 MOSTAZA 64','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(954,'JERSEY 30/1 ALGODON 80 BEIGE 114','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(955,'RIB 30/1 ALGODON 80 BEIGE 114','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(956,'JERSEY 30/1 ALGODON 90 LILA 6','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(957,'JERSEY 30/1 ALGODON 80 LILA 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(958,'RIB 30/1 ALGODON 80 LILA 6','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(959,'JERSEY 20/1 ALGODON 90 BLANCO 56','JBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(960,'JERSEY 30/1 ALGODON 80 TURQUEZA 101','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(961,'JERSEY 30/1 ALGODON 80 ROJO 56','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(962,'JERSEY 30/1 ALGODON 90 ARENA 53','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(963,'JERSEY 30/1 ALGODON 90 CELESTE 193','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(964,'JERSEY 30/1 ALGODON 90 ACERO 74','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(965,'JERSEY 30/1 ALGODON 90 MOSTAZA 64','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(966,'JERSEY 30/1 ALGODON 90 PISTACHO 18','JOSC',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(967,'JERSEY 30/1 ALGODON 90 ROJO 56','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(968,'JERSEY 30/1 ALGODON 90 TURQUEZA 101','JOSC',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(969,'RIB 30/1 ALGODON 80 TURQUEZA 101','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(970,'RIB 30/1 ALGODON 80 ROJO 56','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(971,'RIB 30/1 ALGODON 80 ITALIANO 49','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(972,'JERSEY 30/1 ALGODON 90 ITALIANO 49','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(973,'JERSEY 30/1 ALGODON 80 ITALIANO 49','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(974,'JERSEY 20/1 ALGODON 90 ROSADO 1137','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(975,'RIB 20/1 ALGODON 80 ROSADO 1137','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(976,'RIB 20/1 ALGODON 80 MELANGE 12.5%','RMEL2012.5',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(977,'GAMUZA 30/1 POLYALGODON 90 CELESTE 43','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(978,'GAMUZA 30/1 POLYALGODON 90 AQUA 26','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(979,'JERSEY 30/1 ALGODON 80 DUNA 12','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(980,'RIB 30/1 ALGODON 80 DUNA 12','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(981,'JERSEY 30/1 ALGODON 87 SALESIANO 5','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(982,'JERSEY 30/1 ALGODON 87 LIMON 5','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(983,'JERSEY 30/1 ALGODON 85 CHOCOLATE 16','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(984,'MOVILIDAD','MOVILIDAD',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(985,'PIQUE 24/1 ALGODON 1.05 BLANCO 1','PBL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(986,'RIB ACANALADO 2X1 30/1 ALGODON 60 BLANCO 1','RABL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(987,'CUELLOS 24/1 ALGODON 32X9   BLANCO 1','CBL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(988,'JERSEY 30/1 ALGODON 80 PISTACHO S/M','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(989,'RIB 30/1 ALGODON 80 PISTACHO 20','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(990,'JERSEY 30/1 LAGODON 90 PERICO S/M','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(991,'RIB 30/1 ALGODON 80 PERICO S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(992,'JERSEY 30/1 ALGODON 80 MILITAR 81','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(993,'RIB 30/1 ALGODON 80 MILITAR 81','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(994,'JERSEY 30/1 ALGODON 90 SALESIANO 13','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(995,'RIB 30/1 ALGODON 80 SALESIANO 13','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(996,'JERSEY 20/1 ALGODON 88 NEGRO ?','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(997,'GAMUZA 30/1 POLYALGODON 93 LIMON BB 30','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(998,'JERSEY 30/1 ALGODON 58 PERICO 7','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(999,'JERSEY 30/1 ALGODON 90 CREMA 64','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1000,'FRANELA 20/10 ALGODON 90 BARNIE 3113','FO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1001,'SERVICIO VARIOS','SERV',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1002,'JERSEY 30/1 ALGODON 58 ROJO 6','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1003,'JERSEY 30/1 ALGODON 58 PISTACHO 12','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1004,'BLISTER 30/1 LYCRADO ACANALADO 60 ROJO 8','BLYCAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1005,'BLISTER 30/1 LYCRADO ACANALADO 60 TURQUEZA 2','BLYCAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1006,'BLISTER 30/1 LYCRADO ACANALADO 60 NARANJA 1','BLYCAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1007,'BLISTER 30/1 LYCRADO ACANALADO 60 ROSADO 1','BLYCACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1008,'BLISTER 30/1 LYCRADO ACANALADO 60 BLANCO 1','BLYCABL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1009,'BLISTER 30/1 LYCRADO ACANALADO 60 MAIZ 14','BLYCAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1010,'BLISTER 30/1 LYCRADO ACANALADO 60 VERDE AGUA 3','BLYCACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1011,'JERSEY 30/1 ALGODON 90 DUNA 12','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1012,'JERSEY 20/1 ALGODON 90 ORO 11','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1013,'JERSEY LISTADO 30/1 ALGODON 80 ROJO 8','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1014,'JERSEY LISTADO 30/1 ALGODON 80 DUNA 12','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1015,'JERSEY LISTADO 30/1 ALGODON 80 DUNA 13','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1016,'JERSEY LISTADO 30/1 ALGODON 80 BOTELLA 43','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1017,'JERSEY LISTADO 30/1 ALGODON 80 SALESIANO 5','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1018,'JERSEY LISTADO 30/1 ALGODON 80 SOMBRA 12','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1019,'JERSEY LISTADO 30/1 ALGODON 80 SOMBRA 22','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1020,'CUELLOS 24/1 ALGODON 40 BOTELLA 43','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1021,'CUELLOS 24/1 ALGODON 40 SOMBRA 22','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1022,'CUELLOS 24/1 ALGODON 40 DUNA 12','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1023,'CUELLOS 24/1 ALGODON 40 DUNA 13','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1024,'CUELLOS 24/1 ALGODON 40 SALESIANO 5','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1025,'JERSEY LISTADO 30/1 ALGODON 80 TURQUEZA 2','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1026,'JERSEY LISTADO 30/1 ALGODON 80 MAIZ 14','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1027,'CUELLOS 24/1 ALGODON 40 MAIZ 14','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1028,'CUELLOS 24/1 ALGODON 40 TURQUEZA 2','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1029,'JERSEY 30/1 ALGODON 85 NEGRO 28','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1030,'JERSEY 20/1 ALGODON 90 ARENA 32','JCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1031,'JERSEY 20/1 ALGODON 90 SALESIANO 6','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1032,'JERSEY 20/1 ALGODON 80 ROJO 8','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1033,'JERSEY 20/1 ALGODON 80 SALESIANO 6','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1034,'JERSEY 20/1 ALGODON 80 ARENA 32','JCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1035,'RIB 20/1 ALGODON 80 ARENA 32','RCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1036,'RIB 20/1 ALGODON 80 SALESIANO 6','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1037,'JERSEY 30/1 ALGODON 85 BARNIE 13','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1038,'JERSEY 30/1 ALGODON 87 FRESA 1192','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1039,'FRANELA 20/10 ALGODON 90 UVA','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1040,'JERSEY LISTADO 30/1 ALGODON 80 MELANGE 25% 1A','JLISTMEL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1041,'JERSEY LISTADO 30/1 ALGODON 80 MAIZ 1','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1042,'CUELLOS 24/1 ALGODON 40 MAIZ 1','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1043,'JERSEY 30/1 POLYALGODON 90 MILITAR 55','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1044,'BLISTER 30/1 LYCRADO ACANALADO 60 CREMA 3','BLYCACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1045,'GAMUZA 30/1 ALGODON 90 MELANGE 12.5%','GM3012.5',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1046,'BLISTER 30/1 LYCRADO ACANALADO 60 LIMON 5','BLYCAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1047,'BLISTER 30/1 LYCRADO ACANALADO 60 MANDARINA 17','BLYCAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1048,'BLISTER 30/1 LYCRADO ACANALADO 60 LILA CLARO 21','BLYCACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1049,'BLISTER 30/1 LUCRADO ACANALADO 60 FUCSIA 1','BLYCAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1050,'BLISTER 30/1 LYCRADO ACANALADO 60 AQUA 63','BLYCACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1051,'GAMUZA 30/1 POLYALGODON 90 TURQUEZA MEDIO 2109','GPCMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1052,'JERSEY 24/1 POLYALGODON 86 BLANCO 1','JPCBL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1053,'JERSEY 24/1 POLYALGODON 90 BLANCO 1','JPCBL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1054,'JERSEY 30/1 POLYALGODON 90 MANDARINA 1116','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1055,'JERSEY 30/1 ALGODON 77 BLANCO 1','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1056,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA 1109','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1057,'JERSEY 30/1 POLYALGODON 90 MAIZ 8','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1058,'RIB 24/1 POLYALGODON 80 BLANCO 1','RPCBL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1059,'JERSEY 30/1 ALGODON 90 VERDE AGUA 78','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1060,'RIB 30/1 ALGODON 80 VERDE AGUA 78','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1061,'JERSEY 30/1 ALGODON 85 COLEGIAL 32','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1062,'JERSEY 30/1 ALGODON 80 COLEGIAL 32','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1063,'JERSEY 30/1 ALGODON 90 COLEGIAL 32','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1064,'RIB 30/1 ALGODON 80 COLEGIAL 32','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1065,'STRECH 24/1 ALGODON 83 COLEGIAL 20','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1066,'JERSEY 30/1 ALGODON 90 ACERO 55','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1067,'JERSEY 30/1 ALGODON 90 SOMBRA 22','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1068,'JERSEY 30/1 ALGODON 90 ANTIQUE 55','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1069,'JERSEY 30/1 ALGODON 85 CREMA 3','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1070,'JERSEY 30/1 ALGODON 85 MAIZ 14','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1071,'JERSEY 30/1 ALGODON 85 TURQUEZA MEDIO 9','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1072,'JERSEY 30/1 ALGODON 85 MELON 1','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1073,'JERSEY 30/1 ALGODON 85 MANDARINA 17','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1074,'JERSEY 30/1 ALGODON 80 MORADO 19','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1075,'JERSEY 30/1 ALGODON 90 MORADO 3119','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1076,'RIB 30/1 ALGODON 80 MORADO 3119','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1077,'JERSEY 30/1 ALGODON 85 MELANGE 12.5 %','JMEL3012',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1078,'STRECH 24/1 ALGODON 83 MORADO 19','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1079,'RIB 30/1 ALGODON 80 ANTIQUE 55','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1080,'JERSEY 30/1 ALGODON 90 TURQUEZA CLARO','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1081,'RIB 30/1 ALGODON 80 TURQUEZA CLARO','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1082,'JERSEY 20/1 ALGODON 90 FUCSIA 1','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1083,'JERSEY 20/1 ALGODON 90 JADE S/M','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1084,'RIB 20/1 ALGODON 80 JADE S/M','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1085,'GAMUZA 30/1 POLYALGODON 90 TURQUEZA BB 39','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1086,'GAMUZA 30/1 ALGODON 90 PISTACHO 12','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1087,'JERSEY LISTADO 30/1 ALGODON 80 GUINDA 20','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1088,'JERSEY LISTADO 30/1 ALGODON 80 JADE 7','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1089,'CUELLOS 24/1 ALGODON 40 GUINDA 20','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1090,'CUELLOS 24/1 ALGODON 40 JADE 7','COSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1091,'RIB 30/1 POLYALGODON 80 NEGRO','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1092,'JERSEY 30/1 POLYALGODON 90 NEGRO 28','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1093,'JERSEY 30/1 POLYALGODON 90 MARINO 2','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1094,'JERSEY 30/1 POLYALGODON 90 ANTIQUE 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1095,'JERSEY 30/1 POLYALGODON 90 MARRON 9','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1096,'JERSEY 30/1 POLYALGODON 90 NARANJA 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1097,'JERSEY 30/1 POLYALGODON 90 PISTACHO 12','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1098,'RIB 30/1 POLYALGODON 80 ANTIQUE 1','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1099,'RIB 30/1 POLYALGODON 80 MARRON','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1100,'RIB 30/1 POLYALGODON 80 NARANJA 1','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1101,'RIB 30/1 POLYALGODON 80 NEGRO 28','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1102,'RIB 30/1 POLYALGODON 80 PISTACHO 12','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1103,'JERSEY 30/1 POLYALGODON 80 ITALIANO 4','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1104,'RIB 30/1 POLYALGODON 80 ORO 21','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1105,'JERSEY 30/1 POLYALGODON 90 ORO 21','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1106,'RIB 30/1 POLYALGODON 80 MARRON 9','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1107,'RIB 30/1 POLYALGODON 80 ITALIANO 4','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1108,'RIB 30/1 POLYALGODON 80 AZULINO 19','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1109,'JERSEY 30/1 POLYALGODON 80 JADE 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1110,'JERSEY 30/1 POLYALGODON 80 MARRON 9','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1111,'JERSEY 30/1 POLYALGODON 80 MILITAR 54','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1112,'RIB 30/1 POLYALGODON 80 MARINO 2','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1113,'JERSEY 30/1 POLYALGODON 90 ITALIANO 4','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1114,'JERSEY 30/1 POLYALGODON 80 GUINDA 20','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1115,'JERSEY 30/1 POLYALGODON 80 MARINO 2','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1116,'JERSEY 30/1 POLYALGODON 80 NARANJA 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1117,'JERSEY 30/1 POLYALGODON 80 ORO 21','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1118,'JERSEY 30/1 POLYALGODON 80 NEGRO 3103','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1119,'JERSEY 30/1 POLYALGODON 80 PISTACHO 12','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1120,'JERSEY 30/1 POLYALGODON 90 PERICO 7','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1121,'JERSEY 30/1 POLYALGODON 80 ROJO 8','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1122,'JERSEY 30/1 POLYALGODON 80 TURQUEZA 2','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1123,'RIB 30/1 POLYALGODON 80 GUINDA 20','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1124,'JERSEY 30/1 POLYALGODON 90 CELESTE 43','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1125,'JERSEY 30/1 POLYALGODON 90 CREMA 47','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1126,'JERSEY 30/1 POLYALGODON 90 BANANA 9','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1127,'JERSEY 30/1 POLYALGODON 90 MILITAR 54','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1128,'JERSEY 20/1 ALGODON 90 JADE 3133','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1129,'RIB 20/1 ALGODON 80 JADE 3133','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1130,'RIB 30/1 POLYALGODON 80 ROJO 8','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1131,'RIB 30/1 POLYALGODON 80 MILITAR 54','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1132,'RIB 30/1 POLYALGODON 80 PERICO 7','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1133,'RIB 30/1 POLYALGODON 80 TURQUEZA 2','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1134,'JERSEY 30/1 POLYALGODON 90 TURQUEZA 2','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1135,'JERSEY 30/1 POLYALGODON 85 ORO 21','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1136,'JERSEY 30/1 ALGODON 90 PATO 61','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1137,'JERSEY 30/1 POLYALGODON 90 PATO 1111','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1138,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA 13','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1139,'JERSEY 30/1 POLYALGODON 90 ROSADO 9','JPCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1140,'JERSEY 30/1 POLYALGODON 90 CELESTE 8','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1141,'SALDOS COLORES VARIOS','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1142,'JERSEY 30/1 POLYALGODON 90 BOTELLA 14','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1143,'RIB 20/1 ALGODON 80 FUCSIA 3101','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1144,'JERSEY 30/1 ALGODON 90 VERDE AGUA 17','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1145,'STRECH 24/1 POLYALGODON 83 ROJO 8','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1146,'JERSEY 30/1 ALGODON 90 CELESTE 162','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1147,'STRECH 24/1 POLYALGODON 83 CREMA 49','STPCCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1148,'JERSEY 30/1 POLYALGODON 90 CRISTAL 1','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1149,'JERSEY 30/1 POLYALGODON 90 CEMENTO 10','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1150,'JERSEY 30/1 POLYALGODON 85 MILITAR 54','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1151,'JERSEY 30/1 POLYALGODON 85 NARANJA 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1152,'JERSEY 30/1 POLYALGODON 85 NEGRO 28','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1153,'JERSEY 30/1 POLYALGODON 85 ROJO 8','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1154,'JERSEY 30/1 ALGODON 90 ROSADO 31','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1155,'JERSEY 30/1 ALGODON 90 CELESTE 163','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1156,'JERSEY 30/1 POLYALGODON 85 TURQUEZA 2','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1157,'RIB 20/1 ALGODON 80 MORADO 3119','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1158,'JERSEY 30/1 POLYALGODON 85 MARINO 2','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1159,'JERSEY 20/1 ALGODON 90 MORADO 3119','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1160,'RIB 20/1 ALGODON 80 ROSADO 1','RCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1161,'STRECH 24/1 ALGODON 83 GUINDA 3120','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1162,'JERSEY 30/1 POLYALGODON 80 AZULINO 19','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1163,'JERSEY 30/1 POLYALGODON 80 PERICO 7','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1164,'RIB 20/1 POLYALGODON 80 ITALIANO 4','RPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1165,'JERSEY 20/1 POLYALGODON 90 ITALIANO 4','JPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1166,'GAMUZA 30/1 POLYALGODON 90 TURQUEZA 1126','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1167,'JERSEY 20/1 ALGODON 90 PIZARRA S/M','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1168,'RIB 20/1 ALGODON 80 PIZARRA S/M','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1169,'RIB 30/1 POLYALGODON 80 BARNIE 13','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1170,'JERSEY 20/1 ALGODON 90 COLEGIAL 20','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1171,'JERSEY 20/1 ALGODON 90 PISTACHO 12','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1172,'JERSEY 20/1 POLYALGODON 90 PISTACHO 12','JPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1173,'JERSEY 20/1 POLYALGODON 90 NEGRO 28','JPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1174,'RIB 20/1 ALGODON 80 COLEGIAL 20','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1175,'RIB 20/1 POLYALGODON 80 PISTACHO 12','RPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1176,'JERSEY 30/1 POLYALGODON 90 JADE 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1177,'JERSEY 30/1 POLYALGODON 90 HUESO 1','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1178,'JERSEY LISTADO 30/1 ALGODON 80 CONCHO DE VINO 6','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1179,'JERSEY 30/1 POLYALGODON LAB.BTE 90 CELESTE 8','JPCLBCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1180,'JERSEY 30/1 POLYALGODON LAB.BTE 90 CREMA 3','JPCLBCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1181,'JERSEY 30/1 POLYALGODON LAB.BTE 90 MELON 1110','JBPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1182,'JERSEY 30/1 POLYALGODON LAB.BTE 90 PATO 11','JPCLBCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1183,'JERSEY 30/1 POLYALGODON LAB.BTE TR 90 ROSADO 1109','JBPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1184,'JERSEY 30/1 POLYALGODON LAB.BTE 90 VERDE AGUA 3','JPCLBCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1185,'JERSEY 30/1 POLYALGODON LISTADO 90 CRISTAL 1','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1186,'JERSEY 30/1 POLYALGODON LISTADO 90 PLATA 1102','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1187,'JERSEY 30/1 POLYALGODON LISTADO 90 CEMENTO 4','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1188,'JERSEY LISTADO 30/1 ALGODON 90 BOTELLA 14','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1189,'JERSEY LISTADO 30/1 ALGODON 90 GUINDA 8','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1190,'JERSEY 30/1 POLYALGODON LISTADO 80 MAIZ 14','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1191,'JERSEY 30/1 POLYALGODON LISTADO 80 CREMA 1103','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1192,'JERSEY 30/1 POLYALGODON LISTADO 80 ARENA 32','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1193,'JERSEY 30/1 POLYALGODON LISTADO 80 BLANCO 1','JPCLISBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1194,'JERSEY 30/1 POLYALGODON LISTADO 80 BOTELLA 14','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1195,'JERSEY 30/1 POLYALGODON LISTADO 80 MARINO 2','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1196,'JERSEY 30/1 POLYALGODON LISTADO 80 SALESIANO 5','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1197,'JERSEY 30/1 POLYALGODON LISTADO 80 PISTACHO 12','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1198,'JERSEY 30/1 POLYALGODON LISTADO 80 MOSTAZA 7','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1199,'JERSEY 30/1 POLYALGODON LISTADO 80 ANTIQUE 1','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1200,'JERSEY 30/1 POLYALGODON LISTADO 80 SOMBRA 12','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1201,'JERSEY 30/1 POLYALGODON 90 GUINDA 8','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1202,'JERSEY 30/1 POLYALGODON LISTADO 90 AZULINO 19','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1203,'JERSEY 30/1 ALGODON 90 DUNA 13','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1204,'JERSEY 30/1 ALGODON 80 DUNA 13','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1205,'RIB 30/1 ALGODON 80 DUNA 13','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1206,'GAMUZA 30/1 POLYALGODON 90 CHICLE 1101','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1207,'STRECH 24/1 POLYALGODON 83 GUINDA 20','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1208,'STRECH 24/1 POLYALGODON 83 AZULINO 19','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1209,'JERSEY 30/1 ALGODON 90 ACERO 78','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1210,'RIB 30/1 ALGODON 80 ACERO 78','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1211,'STRECH 24/1 POLYALGODON 83 TURQUEZA 2','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1212,'JERSEY 30/1 POLYALGODON 90 MOSTAZA 7B','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1213,'RIB 30/1 POLYALGODON 80 MOSTAZA 7B','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1214,'STRECH 24/1 POLYALGODON 83 MARRON 9','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1215,'STRECH 24/1 POLYALGODON 83 NARANJA 1','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1216,'GAMUZA 30/1 POLYALGODON 90 TURQUEZA 32','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1217,'GAMUZA 30/1 POLYALGODON 90 MANDARINA 1116','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1218,'JERSEY 30/1 POLYALGODON 90 MOSTAZA 5','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1219,'JERSEY 30/1 POLYALGODON 80 MOSTAZA 5','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1220,'RIB 30/1 POLYALGODON 80 MOSTAZA 5','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1221,'JERSEY 30/1 ALGODON 80 CRISTAL 26','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1222,'JERSEY 30/1 POLYALGODON 85 AZULINO 19','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1223,'JERSEY 30/1 POLYALGODON 85 PISTACHO 12','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1224,'JERSEY 30/1 POLYALGODON 85 MARRON 9','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1225,'JERSEY 30/1 ALGODON 85 ACERO 78','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1226,'STRECH 24/1 POLYALGODON 83 PERICO 7','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1227,'FRANELA 20/10 POLYALGODON 90  ROJO 8','FPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1228,'JERSEY 30/1 POLYALGODON 80 MILITAR 81','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1229,'RIB 30/1 POLYALGODON 80 MILITAR 81','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1230,'JERSEY 30/1 ALGODON 85 PLATA 39','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1231,'JERSEY 30/1 ALGODON 85 PISTACHO 12','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1232,'JERSEY 30/1 POLYALGODON 78 NEGRO 28','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1233,'JERSEY 20/1 ALGODON 90 CHICLE 1','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1234,'RIB 20/1 ALGODON 80 CHICLE 1','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1235,'GAMUZA 30/1 POLYALGODON 90 TURQUEZA 4','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1236,'GAMUZA 30/1 POLYALGODON 90 LILA CLARO 1121','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1237,'STRECH 24/1 POLYALGODON 83 MILITAR 54','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1238,'STRECH 24/1 POLYALGODON 83 CONCHO DE VINO 6','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1239,'GAMUZA 30/1 ALGODON 90 ORO 21','GOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1240,'JERSEY 30/1 POLYALGODON 90 AQUA 63','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1241,'JERSEY 30/1 ALGODON 80 PISTACHO 20','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1242,'JERSEY 30/1 POLYALGODON 90 CONCHO DE VINO 6','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1243,'GAMUZA 30/1 POLYALGODON 90 CELESTE 49','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1244,'JERSEY 30/1 POLYALGODON LISTADO 90 CRISTAL 1','JPCLISOSCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1245,'JERSEY 30/1 POLYALGODON LISTADO 90 GUINDA 8','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1246,'JERSEY 30/1 POLYALGODON LISTADO 90 BOTELLA 14','JPCLISOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1247,'JERSEY 30/1 POLYALGODON 90 CHICLE 1101','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1248,'JERSEY 30/1 ALGODON 78 NEGRO 28','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1249,'GAMUZA 30/1 POLYALGODON 92 LIMON BB 30','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1250,'RIB 30/1 POLYALGODON 80 LILA CLARO 21','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1251,'JERSEY 30/1 POLYALGODON 90 CREMA 7','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1252,'JERSEY 30/1 POLYALGODON 80 MELON D1100','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1253,'JERSEY 30/1 ALGODON 90 CRISTAL 1101','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1254,'JERSEY 30/1 ALGODON 80 CRISTAL 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1255,'RIB 30/1 ALGODON 80 CRISTAL 1101','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1256,'GAMUZA 30/1 ALGODON 90 ORO 21','GOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1257,'JERSEY 30/1 POLYALGODON 90 KAKI','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1258,'STRECH 24/1 ALGODON 83 CENIZO','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1259,'JERSEY 30/1 ALGODON 90 ROSADO 12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1260,'JERSEY 30/1 ALGODON 90 COLEGIAL 2120','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1261,'JERSEY 30/1 POLYALGODON 90 CREMA 10','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1262,'FRANELA 20/10 ALGODON 90 MORADO 19','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1263,'JERSEY 30/1 POLYALGODON 90 TURQUEZA 4','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1264,'JERSEY 30/1 POLYALGODON 90 TURQUEZA BB 39','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1265,'JERSEY 30/1 POLYALGODON 90 SOMBRA 12','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1266,'JERSEY 30/1 POLYALGODON 90 ITALIANO 4','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1267,'JERSEY 30/1 POLYALGODON 90 BEIGE 1113','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1268,'JERSEY 30/1 POLYALGODON 90 PLATA 1107','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1269,'JERSEY 20/1 ALGODON 90 CRISTAL 26','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1270,'RIB 30/1 ALGODON 80 CELESTE 163','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1271,'JERSEY 30/1 POLYALGODON 90 SALESIANO 5','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1272,'JERSEY 30/1 POLYALGODON 90 BEIGE 44','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1273,'JERSEY 30/1 POLYALGODON LAB.BTE 90 VERDE AGUA 19','JPCLBCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1274,'JERSEY 20/1 ALGODON 85 BLANCO 1','JBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1275,'JERSEY 20/1 ALGODON 75 BLANCO 1','JBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1276,'JERSEY 20/1 POLYALGODON 90 ROJO 8','JPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1277,'RIB 20/1 POLYALGODON 80 ROJO 8','RPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1278,'RIB 30/1 ALGODON 80 ORO 11','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1279,'STRECH 24/1 POLYALGODON 83 COLEGIAL 20','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1280,'JERSEY 30/1 ALGODON 90 LIMON FOS244','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1281,'RIB 30/1 ALGODON 80 LIMON 73','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1282,'FRANELA 20/10 POLYALGODON 90 MILITAR 54','FPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1283,'FRANELA 20/10 POLYALGODON 90 ACERO 6','FPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1284,'STRECH 24/1 ALGODON 83 VERDE JADE 1','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1285,'RIB 30/1 POLYALGODON 80 ARENA 1','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1286,'RIB 30/1 POLYALGODON 80 JADE 1','RPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1287,'RIB 30/1 ALGODON 80 ROSADO 31','RC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1288,'JERSEY 20/1 POLYALGODON 90 AZULINO 19','JPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1289,'JERSEY 30/1 ALGODON 80 ROJO 32','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1290,'GAMUZA 30/1 POLYALGODON 90 PATO 26','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1291,'FRANELA 20/10 ALGODON 90 COLEGIAL 3120','FO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1292,'JERSEY 30/1 ALGODON 90 CREMA 47','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1293,'JERSEY 30/1 ALGODON 90 LILA CLARO 60','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1294,'JERSEY 30/1 ALGODON 80 ORO 11','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1295,'JERSEY 30/1 ALGODON 90 BOTELLA 14','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1296,'RIB 30/1 ALGODON 80 CONCHO DE VINO 3117','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1297,'JERSEY 30/1 ALGODON 80 CONCHO DE VINO 13','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1298,'RIB 30/1 POLYALGODON 80 CELESTE 1121','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1299,'RIB 30/1 POLYALGODON 80 MAIZ 1109','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1300,'FALSO INTERLOCK 30/1 ALGODON 80 MAIZ 9','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1301,'FALSO INTERLOCK 30/1 ALGOODN 80 BLANCO 70','FINTBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1302,'FALSO INTERLOCK 30/1 ALGODON 80 LIMON 30-B','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1303,'FALSO INTERLOCK 30/1 ALGODON 80 CELESTE 21','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1304,'FALSO INTERLOCK 30/1 ALGODON 80 ROSADO 12','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1305,'FALSO INTERLOCK 30/1 ALGODON 80 PATO BB 16','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1306,'FALSO INTERLOCK 30/1 ALGODON 80 VERDE AGUA 9','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1307,'RIB 30/1 POLYALGODON 80 VERDE AGUA 1109','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1308,'JERSEY 30/1 POLYALGODON 92 BLANCO 1','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1309,'JERSEY 30/1 POLYALGODON LAB.BTE 90 CREMA 7','JPCLBCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1310,'GAMUZA 30/1 POLYALGODON 92 ROSADO 37','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1311,'JERSEY 30/1 ALGODON 90 LILA CLARO 33','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1312,'RIB 30/1 ALGODON 80 LILA CLARO 33','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1313,'RIB 30/1 ALGODON 80 LILA CLARO 60','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1314,'STRECH 24/1 POLYALGODON 83 BLANCO 1192','STB24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1315,'JERSEY 30/1 ALGODON 90 MELON 15','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1316,'JERSEY 30/1 POLYALGODON 90 BLANCO 75','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1317,'JERSEY 30/1 POLYALGODON 80 BLANCO 75','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1318,'RIB 30/1 POLYALGODON 80 BLANCO 75','RPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1319,'JERSEY 30/1 ALGODON 94 NEGRO 28','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1320,'FRANELA 20/10 POLYALGODON 90 HUESO 1101','FPCC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1321,'JERSEY 30/1 ALGODON 90 NEGRO 36','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1322,'JERSEY 30/1 ALGODON 80 NEGRO 36','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1323,'RIB 30/1 ALGODON 80 NEGRO 36','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1324,'JERSEY 30/1 POLYALGODON TRUZA 90 CEMENTO 1104','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1325,'JERSEY 30/1 POLYALGODON TRUZA 90 CRISTAL 1101','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1326,'JERSEY 30/1 ALGODON 80 PLOMO 43','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1327,'JERSEY 30/1 ALGODON 90 PLOMO 43','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1328,'RIB 30/1 ALGODON 80 PLOMO 43','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1329,'FELPA 30/1 POLYALGODON 90 CELESTE 2','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1330,'FELPA 30/1 POLYALGODON 90 CHICLE 1','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1331,'FELPA 30/1 POLYALGODON 90 LIMON BB 30','FPPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1332,'FELPA 30/1 POLYALGODON 90 BLANCO 1','FPPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1333,'JERSEY 30/1 POLYALGODON 90 CREMA 79','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1334,'RIB 30/1 POLYALGODON 80 CREMA 79','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1335,'JERSEY 30/1 POLYALGODON 90 CELESTE 21','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1336,'RIB 30/1 POLYALGODON 80 CELESTE 21','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1337,'RIB 30/1 POLYALGODON 80 PATO 11','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1338,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA 17','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1339,'RIB 30/1 POLYALGODON 80 VERDE AGUA 17','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1340,'JERSEY 30/1 ALGODON 90 TURQUEZA BB 26','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1341,'RIB 30/1 ALGODON 80 TURQUEZA 1126','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1342,'JERSEY 30/1 ALGODON 80 TURQUEZA 1126','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1343,'JERSEY 30/1 POLYALGODON 90 BEIGE 5','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1344,'STRECH 24/1 ALGODON 83 AZULINO R','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1345,'JERSEY 30/1 ALGODON 85 NEGRO 36','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1346,'FELPA 30/1 POLYALGODON 90 PATO BB 16','PPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1347,'JERSEY 30/1 ALGODON 90 VERDE AGUA BB 24','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1348,'RIB 30/1 ALGODON 80 VERDE AGUA BB 24','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1349,'RIB 30/1 ALGODON 80 COLEGIAL 2120','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1350,'JERSEY 30/1 POLYALGODON 90 PLATA 39','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1351,'JERSEY 30/1 POLYALGODON 90 COLEGIAL 12','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1352,'JERSEY 30/1 ALGODON LISTADO 90 AZULINO 16','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1353,'JERSEY 30/1 ALGODON LISTADO 80 BOTELLA 14','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1354,'JERSEY 30/1 ALGODON LISTADO 80 GUINDA 8','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1355,'JERSEY 20/1 ALGODON 90 BEIGE 1113','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1356,'RIB 20/1 ALGODON 80 BEIGE 1113','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1357,'FELPA 30/1 POLYALGODON 90 VERDE AGUA 1103','FPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1358,'JERSEY 30/1 POLYALGODON LAB. BTE 90 BLANCO 1','JPCLBBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1359,'JERSEY 20/1 ALGODON 90 MANDARINA 5','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1360,'FELPA 30/1 POLYALGODON 90 ROSADO 12','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1361,'JERSEY 30/1 ALGODON 90 BLANCO 1179','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1362,'RIB 30/1 ALGODON 80 BLANCO 1179','RBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1363,'JERSEY 30/1 ALGODON 90 PLATA 65','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1364,'RIB 30/1 ALGODON 80 PLATA 65','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1365,'JERSEY 30/1 ALGODON 90 VERDE PALTA','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1366,'JERSEY 30/1 ALGODON 90 SALESIANO S/M','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1367,'RIB 30/1 ALGODON 80 SALESIANO S/M','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1368,'JERSEY 30/1 ALGODON 80 BLANCO 1179','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1369,'HILADO 30/1 ALGODON 100%','30ALG',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1370,'HILADO 30/1 MELANGE 3%','30MEL3',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1371,'HILADO 10/1 ALGODON 100%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1372,'HILADO 20/1 ALGODON 100%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1373,'HILADO 24/1 POLYESTER 100%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1374,'HILADO 12/1 ALGODON 100%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1375,'HILADO 24/1 ALGODON 100%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1376,'HILADO 24/1 POLYCOTTON','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1377,'HILADO 28/1 JASPE 3%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1378,'HILADO 24/1 JASPE 5%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1379,'HILADO 24/1 JASPE 10%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1380,'HILADO 24/1 JASPE 12%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1381,'HILADO 24/1 JASPE 3%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1382,'HILADO 28/1 JASPE 10%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1383,'HILADO 28/1 ALGODON 100%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1384,'HILADO 28/1 JASPE 5%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1385,'HILADO 28/1 JASPE 12%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1386,'HILADO 28/1 POLYCOTTON','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1387,'HILADO 28/1 POLYESTER 100%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1388,'HILADO 30/1 JASPE 10%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1389,'HILADO 30/1 JASPE 12%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1390,'HILADO 30/1 JASPE 5%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1391,'HILADO 30/1 POLYCOTTON','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1392,'HILADO 30/1 POLYESTER 100%','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1393,'HILADO 40/1 PEINADO','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1394,'HILADO 50/1 PIMA','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1395,'JERSEY 30/1 ALGODON 90 AZULINO S/M','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1396,'RIB 30/1 ALGODON 80 AZULINO S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1397,'JERSEY 30/1 POLYALGODON 90 BLANCO 1179','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1398,'JERSEY 30/1 POLYALGODON 90 CRISTAL 26','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1399,'JERSEY 30/1 POLYALGODON 90 BEIGE 5','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1400,'JERSEY 30/1 POLYALGODON 90 ACERO 23','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1401,'JERSEY 30/1 POLYALGODON 90 NEGRO 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1402,'RIB 30/1 ALGODON 80 BLANCO S/M','RBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1403,'JERSEY 30/1 ALGODON 90 LILA 69','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1404,'JERSEY 30/1 POLYALGODON 87 BLANCO 1','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1405,'JERSEY 30/1 ALGODON 90 NEMBO','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1406,'FRANELA 20/10 POLYALGODON 90 NEGRO 1','FPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1407,'JERSEY 30/1 ALGODON 80 GUINDA 13','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1408,'JERSEY 30/1 POLYALGODON 90 BLANCO 6','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1409,'RIB 30/1 POLYALGODON 80 BLANCO 6','RPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1410,'GAMUZA 30/1 POLYALGODON 90 MELANGE 12.5%','GMA30125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1411,'RIB 30/1 POLYALGODON 80 BLANCO 1179','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1412,'RIB 30/1 ALGODON 80 LILA BB 30','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1413,'JERSEY 30/1 ALGODON 80 LILA 33','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1414,'STRECH 24/1 ALGODON 83 LILA 55','STCL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1415,'JERSEY 30/1 POLYALGODON 90 MANDARINA 6','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1416,'JERSEY 30/1 ALGODON 90 ITALIANO S/M','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1417,'RIB 30/1 ALGODON 80 ITALIANO S/M','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1418,'RIB 20/1 ALGODON 80 PISTACHO 12','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1419,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA 11','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1420,'RIB 30/1 POLYALGODON 80 VERDE AGUA 11','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1421,'JERSEY 30/1 ALGODON 85 BLANCO 79','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1422,'JERSEY 30/1 POLYALGODON TRUZA 90 MELON 53','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1423,'JERSEY 30/1 POLYALGODON TRUZA 90 TURQUEZA BB 39','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1424,'JERSEY 30/1 POLYALGODON TRUZA 90 MANDARINA 48','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1425,'JERSEY 30/1 POLYALGODON TRUZA 90 LIMON BB 30','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1426,'JERSEY 30/1 POLYALGODON TRUZA 90 ROSADO 12','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1427,'JERSEY 30/1 POLYALGODON TRUZA 90 CHICLE 66','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1428,'RIB 30/1 POLYALGODON LYCRADO 78 NEGRO 12.5%','RPCLYCMEL3012.5',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1429,'JERSEY 30/1 POLYALGODON 90 LIMON 141','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1430,'JERSEY 30/1 ALGODON 90 NEGRO 20','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1431,'FALSO INTERLOCK 30/1 ALGODON 80 LIMON 187','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1432,'JERSEY 30/1 POLYALGODON 90 LILA CLARO 60','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1433,'JERSEY 30/1 POLYALGODON 90 LIMON 102','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1434,'JERSEY 30/1 ALGODON 90 COLEGIAL 23','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1435,'RIB 30/1 ALGODON 80 COLEGIAL 23','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1436,'STRECH 24/1 ALGODON 83 JEAN 11','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1437,'FELPA 30/1 POLYALGODON 90 CELESTE 247','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1438,'FALSO INTERLOCK 30/1 ALGODON 80 MAIZ 81','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1439,'JERSEY 30/1 POLYALGODON 90 LILA CLARO 33','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1440,'JERSEY 30/1 POLYALGODON 90 MANDARINA 66','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1441,'FALSO INTERLOCK 30/1 ALGODON 80 CELESTE 43','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1442,'JERSEY 30/1 ALGODON 80 COLEGIAL 2120','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1443,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA 60','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1444,'JERSEY 30/1 POLYALGODON 90 CELESTE S/M','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1445,'JERSEY 30/1 POLYALGODON 93 BLANCO 1','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1446,'JERSEY 30/1 POLYALGODON 92 CELESTE 238','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1447,'JERSEY 30/1 POLYALGODON 90 ROSADO 17','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1448,'JERSEY 30/1 POLYALGODON 56 BLANCO 6','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1449,'JERSEY 30/1 POLYALGODON 92 VERDE AGUA 3','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1450,'FELPA 30/1 POLYALGODON 90 ROSADO 182','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1451,'FELPA 30/1 POLYALGODON 90 VERDE AGUA 102','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1452,'JERSEY 30/1 ALGODON 80 LIMON 1112','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1453,'JERSEY 30/1 POLYALGODON 93 MAIZ 8','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1454,'RIB 30/1 ALGODON 80 NEGRO S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1455,'JERSEY 30/1 ALGODON 80 MARINO 78','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1456,'JERSEY 30/1 POLYALGODON 94 BLANCO 1','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1457,'FALSO INTERLOCK 30/1 ALGODON 80 ROSADO 36','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1458,'JERSEY 30/1 ALGODON 90 PATO 2','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1459,'JERSEY 30/1 POLYALGODON 93 MAIZ 34','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1460,'JERSEY 30/1 POLYALGODON 80 BLANCO 78','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1461,'RIB 30/1 POLYALGODON 80 BLANCO 78','RPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1462,'JERSEY 30/1 POLYALGODON 93 ROSADO 178','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1463,'JERSEY 30/1 POLYALGODON TRUZA 90 PATO 36','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1464,'STRECH 24/1 ALGODON 83 VERDE JADE S/M','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1465,'FALSO INTERLOCK 30/1 ALGODON 80 PATO 36','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1466,'FALSO INTERLOCK 30/1 ALGODON 80 VERDE AGUA 95','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1467,'JERSEY 30/1 POLYALGODON 93 CELESTE 130','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1468,'JERSEY 30/1 POLYALGODON 93 LIMON 149','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1469,'FELPA 30/1 POLYALGODON 90 CELESTE S/M','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1470,'GAMUZA 30/1 POLYALGODON 90 CELESTE 69','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1471,'JERSEY 30/1 ALGODON TRUZA 90 ROJO 8','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1472,'JERSEY 30/1 POLYALGODON 90 PATO 94','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1473,'JERSEY 30/1 POLYALGODON 90 LIMON 1113','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1474,'JERSEY 30/1 POLYALGODON 90 MAIZ 82','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1475,'JERSEY 30/1 POLYALGODON 56 BLANCO 83','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1476,'STRECH 24/1 ALGODON 83 UVA 19','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1477,'JERSEY 30/1 POLYALGODON 93 MAIZ 9','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1478,'JERSEY 30/1 ALGODON 90 TURQUEZA 39','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1479,'JERSEY 30/1 POLYALGODON 90 TURQUEZA 53','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1480,'STRECH 24/1 ALGODON 83 MORADO S/M','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1481,'FELPA 30/1 POLYALGODON 90 LILA CLARO 60','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1482,'JERSEY 30/1 POLYALGODON 92 TURQUEZA 4','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1483,'RIB 30/1 ALGODON 80 MARINO S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1484,'JERSEY 30/1 POLYALGODON 90 MELON 14','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1485,'FALSO INTERLOCK 30/1 ALGODON 80 LILA 50','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1486,'JERSEY 30/1 POLYALGODON 92 CHICLE 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1487,'FALSO INTERLOCK 30/1 ALGODON 80 TURQUEZA 32','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1488,'JERSEY 30/1 POLYALGODON 90 CELESTE 256','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1489,'JERSEY 30/1 POLYALGODON 90 ROSADO 1188','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1490,'JERSEY 30/1 POLYALGODON 92 CRISTAL 8','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1491,'JERSEY 30/1 POLYALGODON 93 CHICLE 1','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1492,'JERSEY 30/1 ALGODON 90 CELESTE 43','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1493,'RIB ACANALADO 2X1 30/1 ALGODON 59 BLANCO 85','RABL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1494,'JERSEY 30/1 POLYALGODON 92 LIMON BB 30','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1495,'JERSEY 30/1 POLYALGODON 92 CREMA 3','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1496,'JERSEY 30/1 POLYALGODON 86 BLANCO 6','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1497,'JERSEY 30/1 POLYALGODON 92 PATO 75','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1498,'JERSEY 30/1 POLYALGODON 92 PATO 12','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1499,'JERSEY 30/1 ALGODON 85 BEIGE 126','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1500,'JERSEY 30/1 POLYALGODON 90 PATO 101','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1501,'JERSEY 30/1 ALGODON 90 BLANCO 6','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1502,'JERSEY 30/1 POLYALGODON 95 BLANCO 6','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1503,'FALSO INTERLOCK 30/1 ALGODON 80 ROSADO 78','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1504,'JERSEY 30/1 POLYALGODON 90 PLATA 32','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1505,'FALSO INTERLOCK 30/1 ALGODON 80 MAIZ 8','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1506,'JERSEY 30/1 ALGODON 90 BEIGE 149','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1507,'PIQUE 30/1 POLYALGODON 90 MELANGE 10%','PM3010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1508,'JERSEY 30/1 POLYALGODON 90 MELON 73','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1509,'JERSEY 30/1 POLYALGODON TRUZA 90 BOTELLA 48','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1510,'JERSEY 30/1 ALGODON TRUZA 90 CONCHO DE VINO 6','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1511,'JERSEY 30/1 ALGODON TRUZA 90 AZULINO 19','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1512,'RIB 2X2 ALGODON 80 NEGRO 28','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1513,'JERSEY 30/1 ALGODON 91 MELON 1174','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1514,'RIB 30/1 ALGODON 80 ORO BRAZIL S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1515,'RIB 30/1 ALGODON 80 ORO S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1516,'RIB 30/1 POLYALGODON 80 CELESTE S/M','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1517,'JERSEY 30/1 ALGODON 80 ANTIQUE 3161','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1518,'STRECH 24/1 POLYALGODON 83 ANTIQUE 17','STPCOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1519,'JERSEY 30/1 ALGODON 90 PLATA 61','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1520,'JERSEY 30/1 POLYALGODON 90 TURQUEZA 32','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1521,'RIB 20/1 POLYALGODON 80 BLANCO 79','RPCBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1522,'JERSEY 24/1 POLYALGODON 90 BLANCO 85','JPCBL24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1523,'JERSEY 30/1 ALGODON 90 CIELO 8','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1524,'RIB 30/1 ALGODON 80 MARRON S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1525,'JERSEY 30/1 POLYALGODON 84 BLANCO 75','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1526,'JERSEY 30/1 POLYALGODON 80 CHICLE D2152','JPCME30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1527,'JERSEY 30/1 POLYALGODON 90 CREMA S/M','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1528,'JERSEY 30/1 ALGODON 90 CELESTE 90','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1529,'RIB 30/1 ALGODON 80 CELESTE 90','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1530,'JERSEY 30/1 POLYALGODON 93 VERDE AGUA 60','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1531,'JERSEY 30/1 POLYALGODON 90 MELON 33','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1532,'FALSO INTERLOCK 30/1 ALGODON 80 CHICLE 52','FINTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1533,'FALSO INTERLOCK 30/1 ALGODON 80 LILA 480','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1534,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA S/M','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1535,'JERSEY 30/1 ALGODON 90 LIMON 20','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1536,'RIB 30/1 ALGODON 80 LIMON 20','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1537,'FRANELA 20/10 POLYALGODON 90 LIMON 1130','FPCC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1538,'FRANELA 20/10 ALGODON 90 COLEGIAL 12','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1539,'FRANELA 20/10 POLYALGODON 90 BANANA 1','FPCCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1540,'STRECH 24/1 ALGODON 83 FUCSIA 48','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1541,'JERSEY 30/1 POLYALGODON 90 TURQUEZA 122','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1542,'FRANELA 20/10 POLYALGODON 90 MELON 1101','FPCC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1543,'JERSEY 30/1 ALGODON 90 FUCSIA S/M','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1544,'JERSEY 30/1 ALGODON 90 ORO BRAZIL S/M','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1545,'RIB 30/1 ALGODON 80 FUCSIA S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1546,'FRANELA 20/10 POLYALGODON 90 PATO 1','FPCCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1547,'JERSEY 30/1 ALGODON 90 AZULINO 62','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1548,'JERSEY 30/1 ALGODON TRUZA 90 AZULINO 62','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1549,'JERSEY 30/1 ALGODON 93 ROJO 8','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1550,'JERSEY 30/1 POLYALGODON 90 MELON 69','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1551,'RIB 30/1 POLYALGODON 80 MELON 69','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1552,'RIB 30/1 POLYALGODON 80 PATO 49','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1553,'JERSEY 30/1 POLYALGODON 90 CELESTE 235','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1554,'JERSEY 30/1 POLYALGODON 90 ROSADO 138','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1555,'RIB 30/1 POLYALGODON 80 ROSADO 138','RPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1556,'RIB 30/1 POLYALGODON 80 BLANCO 69','RPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1557,'JERSEY 30/1 POLYALGODON 90 BLANCO 69','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1558,'JERSEY 30/1 POLYALGODON 90 ROSADO 154','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1559,'JERSEY 30/1 POLYALGODON 90 CHICLE 75','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1560,'JERSEY 30/1 POLYALGODON 92 ROSADO 1','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1561,'JERSEY 30/1 POLYALGODON 92 BEIGE 113','JPCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1562,'JERSEY 30/1 ALGODON 92 MELANGE 12.5%','JMEL3012',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1563,'JERSEY 30/1 POLYALGODON 78 MELANGE 12.5%','JMEL3012',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1564,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA 108','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1565,'JERSEY 30/1 ALGODON 91 ROSADO 1143','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1566,'JERSEY 30/1 POLYALGODON 90 CELESTE 215','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1567,'JERSEY 30/1 POLYALGODON 80 BLANCO 79','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1568,'JERSEY 30/1 ALGODON 90 BLANCO 75','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1569,'JERSEY 30/1 ALGODON 90 TURQUEZA 136','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1570,'JERSEY 30/1 ALGODON 90 CHICLE 74','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1571,'FALSO INTERLOCK 30/1 ALGODON 80 LILA 60','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1572,'FALSO INTERLOCK 30/1 ALGODON 80 CHICLE 1','FINTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1573,'JERSEY 30/1 POLYALGODON 92 HUESO 1','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1574,'JERSEY 30/1 POLYALGODON 90 CELESTE 238','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1575,'JERSEY 30/1 POLYALGODON 92 MAIZ 14','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1576,'JERSEY 30/1 ALGODON 90 ARENA S/M','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1577,'GAMUZA 30/1 POLYALGODON 90 MAIZ 9','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1578,'FRANELA 20/10 POLYALGODON 92 HUESO 1','FPCCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1579,'JERSEY 30/1 ALGODON 93 NEGRO 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1580,'JERSEY 30/1 POLYALGODON 58 BLANCO 6','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1581,'FALSO INTERLOCK 30/1 ALGODON 80 MANDARINA 48','FINTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1582,'JERSEY 30/1 POLYALGODON 92 ROSADO 172','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1583,'JERSEY 30/1 ALGODON 90 TURQUEZA S/M','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1584,'RIB 30/1 ALGODON 80 TURQUEZA S/M','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1585,'JERSEY 30/1 ALGODON 90 PLATA 92','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1586,'JERSEY 30/1 POLYALGODON 94 BLANCO 79','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1587,'JERSEY 30/1 POLYALGODON 86 BLANCO 79','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1588,'JERSEY 30/1 POLYALGODON LAB.BTE 90 CREMA 70','JPCLBCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1589,'JERSEY 30/1 ALGODON 86 BLANCO 79','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1590,'JERSEY 30/1 ALGODON 94 BLANCO 79','JBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1591,'JERSEY 30/1 ALGODON 90 ACERO 68','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1592,'STRECH 24/1 ALGODON 83 JADE 33','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1593,'STRECH 24/1 ALGODON 83 NEGRO 28','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1594,'JERSEY 30/1 ALGODON 90 CRISTAL 4','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1595,'JERSEY 30/1 POLYALGODON 90 PLATA S/M','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1596,'JERSEY 30/1 ALGODON 90 ACERO S/M','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1597,'JERSEY 30/1 ALGODON 90 CREMA 10','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1598,'JERSEY 30/1 ALGODON 90 PLATA S/M','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1599,'FALSO INTERLOCK 30/1 ALGODON 80 MAIZ 14','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1600,'JERSEY 30/1 POLYALGODON 80 BLANCO 6','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1601,'GAMUZA 30/1 POLYALGODON 90 MANDARINA 66','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1602,'GAMUZA 30/1 ALGODON 90 BLANCO 1','GBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1603,'FRANELA 20/10 ALGODON 90 ANTIQUE 1','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1604,'FRANELA 20/10 ALGODON 90 NARANJA 1','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1605,'FRANELA 20/10 ALGODON 90 FUCSIA 3101','FO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1606,'FRANELA 20/10 ALGODON 90 CHICLE 1','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1607,'JERSEY 20/1 ALGODON 80 BLANCO 79','JBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1608,'RIB 20/1 ALGODON 80 BLANCO 79','RBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1609,'GAMUZA 30/1 POLYALGODON 90 LIMON 1113','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1610,'JERSEY 30/1 POLYALGODON 90 ROSADO 120','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1611,'JERSEY 30/1 POLYALGODN 90 MELON S/M','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1612,'JERSEY 30/1 ALGODON 90 MANDARINA S/M','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1613,'JERSEY 30/1 ALGODON 90 CHICLE S/M','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1614,'JERSEY 30/1 ALGODON 90 MANDARINA 4','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1615,'JERSEY 30/1 ALGODON 80 MANDARINA 4','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1616,'RIB 30/1 ALGODON 80 MANDARINA 4','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1617,'RIB 20/1 ALGODON 80 BEIGE 5','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1618,'RIB 30/1 ALGODON LYCRADO 78 BARNIE 13','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1619,'RIB 30/1 ALGODN LYCRADO 78 SALESIANO 5','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1620,'RIB 30/1 ALGODON LYCRADO 78 LIMON 5','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1621,'RIB 30/1 ALGODON LYCRADO 78 CHICLE 1','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1622,'RIB 30/1 ALGODON LYCRADO 78 MORADO 19','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1623,'RIB 30/1 POLYALGODON LYCRADO 80 MELANGE 12.5%','RLYCM3012.5',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1624,'JERSEY 30/1 ALGODON 90 ROJO 72','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1625,'RIB 30/1 ALGODON 80 ROJO 72','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1626,'GAMUZA 30/1 ALGODON 90 PATO 1','GCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1627,'FRANELA 20/10 POLYALGODON 90 CREMA 3','FPCCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1628,'FRANELA 20/10 POLYALGON 90 PATO BB 16','FPCCL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1629,'GAMUZA 30/1 POLYALGODON 90 LIMON S/M','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1630,'JERSEY 30/1 POLYALGODON 90 BLANCO 5','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1631,'JERSEY 30/1 POLYALGODON 80 VERDE AGUA 3','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1632,'GAMUZA 30/1 POLYALGODON 90 LIMON 5','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1633,'GAMUZA 50/1 ALGODON 90 PISTACHO 12','GOSC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1634,'GAMUZA 50/1 ALGODON 90 ITALIANO 4','GOSC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1635,'GAMUZA 50/1 ALGODON 90 JADE 1','GOSC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1636,'GAMUZA 50/1 ALGODON 90 CHICLE 1','GOSC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1637,'FRANELA 20/10 ALGODON 90 FRESA 1','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1638,'FRANELA 20/10 POLYALGODON 90 COLEGIAL 12','FPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1639,'JERSEY 30/1 ALGODON 90 CELESTE BB 12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1640,'GAMUZA 30/1 POLYALGODON 90 TURQUEZA 2','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1641,'GAMUZA 30/1 POLYALGODON 90 ROSADO 72','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1642,'GAMUZA 30/1 POLYALGODON 90 ROSADO 72','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1643,'GAMUZA 50/1 ALGODON LISTADO 80 PATO BB16','GLISTCL50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1644,'GAMUZA 50/1 ALGODON LISTADO 80 CELESTE 2','GLISTCL50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1645,'GAMUZA 50/1 ALGODON LISTADO 80 MAIZ 14','GLISTCL50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1646,'GAMUZA 50/1 ALGODON LISTADO 80 LIMON BB30','GLISTCL50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1647,'GAMUZA 50/1 ALGODON LISTADO 80 ROSADO 37','GLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1648,'GAMUZA 50/1 ALGODON LISTADO 80 VERDE AGUA 3','GLISTCL50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1649,'GAMUZA 50/1 ALGODON LISTADO 80 CHICLE 1','GLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1650,'GAMUZA 30/1 ALGODON 90 MELANGE MARINO','GMELOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1651,'GAMUZA 30/1 ALGODON 90 MELANGE NEGRO','GMELOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1652,'GAMUZA 30/1 ALGODON 90 PERCHADO MARRON','GPEROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1653,'GAMUZA 30/1 ALGODON 90 PERCHADO MARINO','GPEROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1654,'GAMUZA 30/1 ALGODON 90 PERCHADO NEGRO','GPEROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1655,'GAMUZA 30/1 ALGODON 90 PERCHADO ACERO','GPEROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1656,'GAMUZA 30/1 ALGODON 90 PERCHADO MELANGE 12.5%','GPERMEL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1657,'JERSEY 30/1 POLYALGODON LAB.BTE 90 ROSADO 16','JPCLBCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1658,'RIB 30/1 ALGODON 80 MILITAR 11','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1659,'JERSING 30/1 ALGODON 80 MAIZ','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1660,'JERSING 30/1 ALGODON 80 BLANCO 1','FIBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1661,'JERSING 30/1 ALGODON 80 PATO 12','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1662,'JERSING 30/1 ALGODON 80 CELESTE 2','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1663,'JERSING 30/1 POLYALGODON 80 LIMON BB 1130','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1664,'JERSING 30/1 ALGODON 80 VERDE AGUA 3','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1665,'JERSING 30/1 POLYALGODON 80 ROSADO 1112','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1666,'FALSO INTERLOCK LISTADO 30/1 ALGODON 80 CELESTE 21','FILICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1667,'FALSO INTERLOCK LISTADO 30/1 ALGODON 80 PATO 16','FINTLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1668,'FALSO INTERLOCK LISTADO 30/1 ALGODON 80 LIMON BB','FINTLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1669,'FALSO INTERLOCK LISTADO 30/1 ALGODON 80 CHICLE 52','FINTLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1670,'FALSO INTERLOCK LISTADO 30/1 ALGODON 80 VERDE AGUA','FINTLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1671,'FALSO INTERLOCK LISTADO 30/1 ALGODON 80 LILA','FINTLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1672,'JERSEY 20/1 ALGODON 80 MELANGE 12.5%','JMEL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1673,'JERSEY 20/1 ALGODON 80 MILITAR 3154','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1674,'GAMUZA 30/1 ALGODON 90 LIMON BB 30','GCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1675,'GAMUZA 30/1 ALGODON 90 VERDE AGUA 3','GCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1676,'GAMUZA 30/1 ALGODON 90 ROSADO 1','GCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1677,'JERSING LISTADO 30/1 ALGODON 80 PATO 12','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1678,'JERSING LISTADO 30/1 ALGODON 80 LIMON BB 30','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1679,'JERSING LISTADO 30/1 ALGODON 80 VERDE AGUA 3','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1680,'JERSING LISTADO 30/1 ALGODON 80 CELESTE 2','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1681,'JERSING LISTADO 30/1 ALGODON 80 LILA CLARO 21','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1682,'JERSING LISTADO 30/1 ALGODON 80 ROSADO 12','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1683,'JERSING LISTADO 30/1 ALGODON 80 MAIZ 14','JGLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1684,'JERSEY 20/1 ALGODON 90 BLANCO 79','JBL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1685,'JERSEY 30/1 POLYALGODON TRUZA 90 ITALIANO','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1686,'JERSEY 30/1 POLYALGODON TRUZA 90 PLATA 99','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1687,'JERSEY 30/1 ALGODON 90 ACERO 96','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1688,'JERSEY 30/1 ALGODON 90 ACERO 2','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1689,'JERSEY 30/1 ALGODON 80 MANDARINA 1116','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1690,'RIB 30/1 ALGODON 80 MANDARINA 1116','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1691,'JERSEY 30/1 POLYALGODON 80 MELON 1101','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1692,'GAMUZA 30/1 ALG ACA 85 CELESTE 163','GACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1693,'GAMUZA 30/1 ALG ACA 85 VERDE AGUA 17','GACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1694,'GAMUZA 30/1 ALG ACA 85 AMARILLO PATO BB 16','GCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1695,'GAMUZA 30/1 ALG ACA 85 BLANCO 1','GBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1696,'GAMUZA 30/1 ALG ACA 85 ROSADO 31','GACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1697,'GAMUZA 30/1 ALG ACA 85 LIMON 112','GACL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1698,'GAMUZA 30/1 POLYALGODON LISTADO 90 CELESTE 1102','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1699,'GAMUZA 30/1 POLYALGODON LISTADO 90 LIMON BB 1130','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1700,'GAMUZA 30/1 POLYALGODON LISTADO 90 PATO BB16','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1701,'GAMUZA 30/1 POLYALGODON LISTADO 90 ROSADO 1137','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1702,'GAMUZA 30/1 POLYALGODON LISTADO 90 VER AGUA 1103','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1703,'GAMUZA 30/1 POLYALGODON LISTADO 90 TURQUEZA 4','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1704,'JERSEY 30/1 POLYALGODON LISTADO 90 CELESTE 1102','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1705,'JERSEY 30/1 POLYALGODON LISTADO 90 LIMON BB 1130','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1706,'JERSEY 30/1 POLYALGODON LISTADO 90 PATO BB16','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1707,'JERSEY 30/1 POLYALGODON LISTADO 90 ROSADO 1137','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1708,'JERSEY 30/1 POLYALGODON LISTADO 90 VERDE AGUA 1103','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1709,'JERSEY 30/1 POLYALGODON LISTADO 90 TURQUEZA 4','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1710,'RIB 20/1 ALGODON 80 MANDARINA 5','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1711,'FRANELA 20/10 ALGODON 90 JADE 33','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1712,'JERSEY 30/1 ALGODON TRUZA 90 NEGRO 1','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1713,'JERSEY 30/1 POLYALGODON TRUZA 90 VERDE HOJA 12','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1714,'JERSEY 20/1 ALGODON 85 NEGRO 28','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1715,'FRANELA 20/10 ALGODON 90 KORAL','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1716,'FRANELA 20/10 ALGODON 90 ITALIANO 4','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1717,'FRANELA 20/10 ALGODON 90 COBALTO','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1718,'FRANELA 20/10 POLYALGODON 90 DIESEL 3104','FPCO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1719,'JERSEY LISTADO 30/1 ALGODON 90 ROSADO 37','JLISTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1720,'GAMUZA 30/1 POLYALGODON LISTADO 90 MAIZ 1114','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1721,'GAMUZA 30/1 POLYALGODON LISTADO 90 TURQUEZA 104','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1722,'JERSEY 30/1 POLYALGODON LISTADO 90 TURQUEZA 104','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1723,'JERSEY 30/1 POLYALGODON LISTADO 90 MAIZ 1114','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1724,'GAMUZA 30/1 POLYALGODON 90 MANDARINA 5','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1725,'JERSEY 30/1 ALGODON 90 LIMON 1112','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1726,'RIB 30/1 ALGODON 80 LIMON 1112','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1727,'RIB 30/1 POLYALGODON 80 TURQUEZA 104','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1728,'JERSEY 30/1 ALGODON 80 CELESTE BB 12','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1729,'RIB 30/1 ALGODON 80 CELESTE BB 12','RCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1730,'RETAZOS CRUDO','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1731,'SERVICO TEÑIDO BLANCO','SERV',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1732,'JERSEY 30/1 POLYALGODON LISTADO 90 MAIZ 8','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1733,'JERSEY 30/1 POLYALGODON LISTADO 90 ROSADO 71','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1734,'JERSEY 30/1 POLYALGODON LISTADO 90 VERDE AGUA 75','JPCLISCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1735,'SERVICIO TEÑIDO OSCURO','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1736,'JERSEY 20/1 ALGODON 90 BEIGE 195','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1737,'RIB 20/1 ALGODON 80 BEIGE 195','ROSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1738,'JERSEY 30/1 POLYALGODON LIST TRUZA 90 CEMENTO 1104','JPCLi29x5C30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1739,'JERSEY 30/1 POLYALGODON LIST TRUZA 90 PLATA 1102','JPCLi29x5C30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1740,'JERSEY 30/1 POLYALGODON LIST TRUZA 90 CRISTAL 1101','JPCLi29x5C30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1741,'RIB 30/1 POLYALGODON 80 CHICLE 1101','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1742,'FRANELA 20/10 ALGODON 90 CRISTAL 26','FOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1743,'FRANELA 20/10 POLYALGODON 90 MARRON 9','FPCOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1744,'RIB 30/1 ALGODON 80 TURQUEZA 39','ROSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1745,'JERSEY 30/1 POLYALGODON 90 TURQ MEDIO 2109','JPCME30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1746,'.','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1747,'FLETE CG&S','FLETE CG&S',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1748,'JERSEY 30/1 POLYALGODON TRUZA 90 MANDARINA 77','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1749,'JERSEY 30/1 POLYALGODON TRUZA 90 ROSADO 120','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1750,'JERSEY 30/1 POLYALGODON TRUZA 90 TURQUEZA 121','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1751,'JERSEY 30/1 POLYALGODON 92 BLANCO 79','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1752,'JERSEY 30/1 POLYALGODON 90 MAIZ 9','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1753,'JERSEY 30/1 POLYALGODON 85 BLANCO 79','JPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1754,'JERSEY 30/1 POLYALGODON 80 CELESTE 21','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1755,'JERSEY 30/1 POLYALGODON 80 CREMA 3','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1756,'JERSEY 30/1 POLYALGODON 80 ROSADO 1','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1757,'JERSEY 30/1 POLYALGODON TRUZA 90 CHOCOLATE 16','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1758,'JERSEY 30/1 POLYALGODON TRUZA 90 CELESTE 16','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1759,'JERSEY 30/1 POLYALGODON 90 CELESTE 239','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1760,'JERSEY 30/1 ALGODON LIST TRUZA 90 AZULINO 3115','JLi29x5o30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1761,'JERSEY 30/1 ALGODON LIST TRUZA 90 GUINDA 3138','JLi29x5O30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1762,'JERSEY 30/1 ALGODON LIST TRUZA 90 BOTELLA 3114','JLi29x5O30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1763,'JERSEY 20/1 ALGODON 80 MELANGE 25%','JMEL20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1764,'JERSEY 30/1 POLYALGODON LAB.BTE TR 90 CELESTE 1108','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1765,'JERSEY 30/1 POLYALGODON LAB.BTE TR 90 CREMA 1107','JBPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1766,'JERSEY 30/1 POLYALGODON LAB.BTE TRUZA 90 MELON 10','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1767,'JERSEY 30/1 POLYALGODON LAB.BTE TRUZA 90 PATO 1111','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1768,'JERSEY 30/1 POLYALGODON LAB.BTE TRUZA 90 ROSADO 16','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1769,'JERSEY 30/1 POLYALGODON LAB.BTE TRUZA 90 V.AGUA 13','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1770,'JERSEY 30/1 POLYALGODON LAB.BTE 90 VERDE AGUA 1113','JBPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1771,'JERSEY 30/1 ALGODON TRUZA 90 ACERO 2','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1772,'JERSEY 30/1 ALGODON TRUZA 90 ACERO 96','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1773,'GAMUZA 30/1 POLYALGODON LISTADO 90 CHICLE 1101','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1774,'GAMUZA 30/1 POLYALGODON LISTADO 90 ROSADO 1101','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1775,'JERSEY 30/1 ALGODON 90 TURQUEZA BB 26','JCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1776,'JERSEY 30/1 ALGODON 78 NEGRO 1','JOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1777,'JERSEY 30/1 POLYALGODON TRUZA 90 CELESTE 1108','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1778,'JERSEY 30/1 POLYALGODON TRUZA 90 CREMA 1107','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1779,'JERSEY 30/1 POLYALGODON TRUZA 90 MELON 1110','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1780,'JERSEY 30/1 POLYALGODON TRUZA 90 PATO 1111','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1781,'JERSEY 30/1 POLYALGODON TRUZA 90 ROSADO 16','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1782,'JERSEY 30/1 POLYALGODON TRUZA 90 V AGUA 3','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1783,'FALSO INTERLOCK 30/1 ALGODON 80 TURQUEZA BB 26','FINTCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1784,'GAMUZA 30/1 POLYALGODON 90 BEIGE 5','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1785,'GAMUZA 30/1 POLYALGODON 90 PLATA 7','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1786,'JERSEY 30/1 POLYALGODON LAB.BTE TRUZA V.AGUA 13','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1787,'JERSEY 30/1 POLYALGODON 90 ROSADO 16','JPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1788,'JERSEY 30/1 POLYALGODON 80 KORAL D3056','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1789,'JERSEY 30/1 POLYALGODON 91 BLANCO 79','JPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1790,'JERSEY 30/1 ALGODON 80 AZULINO 19','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1791,'JERSEY 20/1 ALGODON 80 MARINO 3110','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1792,'JERSEY 20/1 ALGODON 80 ROJO 8','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1793,'JERSEY 20/1 ALGODON 80 AZULINO 3115','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1794,'JERSEY 30/1 POLYALGODON LAB.BTE TRU V.AGUA 113','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1795,'JERSEY 30/1 POLYALGODON LAB.BTE TR 90 AGUA 113','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1796,'JERSEY 20/1 ALGODON 90 COBALTO','JOSC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1797,'LEGALIZACION DE FACTURA','',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1798,'JERSEY 30/1 POLYALGODON 90 BLANCO 1192','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1799,'RIB 30/1 ALGODON LYCRADO 80 BLANCO 1133','RLYCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1800,'FRANELA 20/10 POLYALGODON 90 LILA CLARO 1121','FPCC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1801,'JERSEY 30/1 ALGODON LISTADO 90 BOTELLA 14','JLISTOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1802,'JERSEY 24/1 ALGODON 90 BLANCO 1','JB24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1803,'RIB 24/1 ALGODON 80 BLANCO 1','RB24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1804,'JERSEY 30/1 POLYALGODON TRUZA 90 ROSADO 1109','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1805,'JERSEY 30/1 POLYALGODON TRUZA 90 V AGUA 1113','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1806,'JERSEY 30/1 POLYALGODON TRUZA 90 CHICLE 1101','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1807,'GAMUZA 30/1 POLYALGODON LISTADO 90 MANDARINA 1116','GPCLi6X6CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1808,'RIB 30/1 ALGODON LYCRADO 80 NARANJA 1','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1809,'RIB 30/1 ALGODON LYCRADO 80 ITALIANO 4','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1810,'RIB 30/1 ALGODON LYCRADO 80 LIMON 5','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1811,'RIB 30/1 ALGODON LYCRADO 80 MARINO 3178','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1812,'RIB 30/1 ALGODON LYCRADO 80 ACERO 6','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1813,'RIB 30/1 ALGODON LYCRADO 80 PISTACHO 12','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1814,'RIB 30/1 ALGODON LYCRADO 80 CIELO 1','RLYCOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1815,'RIB 30/1 ALGODON LYCRADO 80 MEL 12.5%','RLYCMEL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1816,'STRECH 24/1 ALGODON 83 TURQUEZA 173','STOSC24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1817,'GAMUZA 30/1 POLYALGODON LISTADO 90 LIMON 113','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1818,'POLOS PUBLICITARIOS','PPBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1819,'JERSEY 30/1 POLYALGODON 90 ROSADO 1172','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1820,'JERSEY 30/1 POLYALGODON 80 MAIZ 14','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1821,'JERSEY 30/1 POLYALGODON 80 LIMON BB30','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1822,'JERSEY 30/1 POLYALGODON 80 ROSADO 37','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1823,'GAMUZA 30/1 POLYALGODON LISTADO 90 PATO 1101','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1824,'RIB 30/1 POLYALGODON 80 BLANCO 92','RPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1825,'JERSEY 30/1 POLYALGODON 85 BLANCO 1192','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1826,'JERSEY 30/1 POLYALGODON 90 MELANGE 12.5%','JM30125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1827,'JERSEY 30/1 POLYALGODON TRUZA 90 MELON 1','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1828,'JERSEY 30/1 POLYALGODON TRUZA 90 CREMA 1103','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1829,'JERSEY 30/1 POLYALGODON TRUZA 90 CARTON 44','JPCTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1830,'JERSEY 30/1 POLYALGODON 80 BLANCO 1192','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1831,'JERSEY 20/1 ALGODON 90 BLANCO 1192','JB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1832,'GAMUZA 30/1 POLYALGODON 90 JADE S/M','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1833,'GAMUZA 30/1 POLYALGODON 90 KORAL S/M','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1834,'GAMUZA 30/1 POLYALGODON 90 FRESA S/M','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1835,'JERSEY 30/1 POLYALGODON 90 LIMON S/M','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1836,'JERSEY 30/1 POLYALGODON 90 KORAL S/M','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1837,'JERSEY 30/1 POLYALGODON 90 FRESA S/M','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1838,'JERSEY 30/1 POLYALGODON 90 JADE S/M','JPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1839,'JERSEY 30/1 POLYALGODON TRUZA 90  BLANCO 79','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1840,'RIB 20/1 ALGODON 80 BLANCO 1192','RB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1841,'JERSEY 30/1 POLYALGODON TRUZA 90 BLANCO 1192','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1842,'JERSEY 30/1 ALGODON 90 CARTON 44','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1843,'JERSING 30/1 ALGODON 80 LILA CLARO 21','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1844,'JERSING 30/1 ALGODON 80 LILA CLARO 21','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1845,'JERSING 30/1 ALGODON 80 CHICLE 1','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1846,'JERSING 30/1 ALGODON 80 LIMON 113','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1847,'RIB 30/1 ALGODON 80 LIMON 113','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1848,'JERSING 30/1 ALGODON 80 LIMON 113','FIOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1849,'RIB 30/1 ALGODON 80 LILA CLARO 1121','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1850,'JERSEY 30/1 POLYALGODON 80 CELESTE 2','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1851,'JERSEY 20/1 ALGODON 82 BEIGE S/M','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1852,'JERSEY 30/1 POLYALGODON 90 BLANCO 93','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1853,'RIB 30/1 POLYALGODON 80 BLANCO 93','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1854,'JERSEY 30/1 POLYALGODON 80 MELANGE 12.5%','JM30125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1855,'RIB 30/1 POLYALGODON 80 MELANGE 12.5%','RM30125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1856,'JERSEY 30/1 POLYALGODON TRUZA 90 ROSADO 37','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1857,'JERSEY 30/1 POLYALGODON TRUZA 90 MELON 33','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1858,'JERSEY 30/1 POLYALGODON TRUZA 90 PATO 30','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1859,'JERSEY 30/1 POLYALGODON TRUZA 90 TURQUEZA 76','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1860,'JERSEY 30/1 POLYALGODON TRUZA 90 MAIZ 1114','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1861,'JERSEY 30/1 POLYALGODON TRUZA 90 PATO 61','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1862,'JERSEY 30/1 POLYALGODON 90 CELESTE 247','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1863,'JERSEY 30/1 POLYALGODON 90 PATO 99','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1864,'JERSEY 30/1 POLYALGODON 90 LIMON 170','JPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1865,'GAMUZA 30/1 POLYALGODON LISTADO 90 MAIZ 8','GPCLi6X6CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1866,'JERSEY 30/1 ALGODON 90 BLANCO 109','JB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1867,'GAMUZA 50/1 ALGODON 80 LIMON 1160','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1868,'GAMUZA 50/1 ALGODON 80 MANDARINA 5 RX','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1869,'GAMUZA 50/1 ALGODON 80 FUCSIA 3148','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1870,'JERSEY 30/1 ALGODON 90 MANDARINA 16','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1871,'JERSEY 30/1 ALGODON TRUZA 90 BOTELLA 48','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1872,'GAMUZA 30/1 POLYALGODON 90 BLANCO 1133','GPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1873,'JERSEY 30/1 POLYALGODON LAB.BTE 90 TRUZA V.AGUA 3','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1874,'JERSEY 30/1 POLYALGODON LAB.BTE TRU 90 V.AGUA 3','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1875,'RIB 30/1 ALGODON 80 PATO 1161','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1876,'JERSEY 30/1 ALGODON 80 PATO 61','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1877,'GAMUZA 30/1 POLYALGODON LISTADO 90 LILA 1121','GPCLi6X6CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1878,'JERSEY 30/1 POLYALGODON 90 MELANGE 3%','JM303',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1879,'JERSEY 20/1 ALGODON 90 PERICO 38','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1880,'RIB 20/1 ALGODON 80 PERICO 38','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1881,'GAMUZA 30/1 POLYALGODON LISTADO 90 MANDARINA 66','GPCLi6X6CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1882,'GAMUZA 30/1 POLYALGODON LISTADO 90 TURQ MEDIO 2109','GPCLi6x6MEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1883,'JERSING 30/1 POLYALGODON 80 PATO BB1116','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1884,'GAMUZA 50/1 ALGODON 80 MANZANA 2','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1885,'GAMUZA 50/1 ALGODON 80 ARENA 1B','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1886,'GAMUZA 50/1 ALGODON 80 TURQUEZA 26','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1887,'JERSEY 30/1 POLYALGODON LAB.BTE.TRUZA 90 PATO 61','JPCLBTRCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1888,'GAMUZA 30/1 POLYALGODON 90 BLANCO 1192','GPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1889,'JERSEY 30/1 POLYALGODON 90 MELANGE 25%','JM3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1890,'JERSEY 30/1 POLYALGODON 80 MELANGE 25%','JM3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1891,'RIB 30/1 POLYALGODON 80 MELANGE 25%','RM3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1892,'JERSING 30/1 ALGODON 80 ROSADO 36','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1893,'JERSING 30/1 ALGODON 80 CELESTE 43','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1894,'JERSING 30/1 ALGODON 80 PATO 36','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1895,'JERSING 30/1 POLYALGODON 80 MAIZ 1109','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1896,'JERSEY 30/1 POLYALGODON 78 BLANCO 79','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1897,'JERSEY 30/1 POLYALGODON 90 CHICLE D2152','JPCME30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1898,'JERSEY 30/1 POLYALGODON 90 KORAL D3056','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1899,'JERSEY 30/1POLYALGODON 90 MANDARINA 95 DD','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1900,'JERSEY 30/1 POLYALGODON 90 MELON D1100','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1901,'JERSEY 30/1 POLYALGODON 90 PATO 120 DD','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1902,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA 137 DD','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1903,'JERSEY 30/1 POLYALGODON 90 LIMON 244 DD','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1904,'RIB 30/1 POLYALGODON 80 CHICLE 124 DD','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1905,'RIB 30/1 POLYALGODON 80 KORAL D3056','RPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1906,'RIB 30/1 POLYALGODON 80 MANDARINA D2095','RPCME30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1907,'RIB 30/1 POLYALGODON 80 MELON 100 DD','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1908,'RIB 30/1 POLYALGODON 80 PATO 120 DD','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1909,'RIB 30/1 POLYALGODON 80 VERDE AGUA 137 DD','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1910,'RIB 30/1 POLYALGODON 80 LIMON 244 DD','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1911,'JERSEY 30/1 POLYALGODON 90 MANDARINA 95 DD','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1912,'JERSEY 30/1 ALGODON 80 BLANCO 1192','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1913,'RIB 30/1 ALGODON 80 BLANCO 1192','RBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1914,'JERSEY 30/1 ALGODON 80 PERICO 38','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1915,'JERSEY 30/1 ALGODON 90 BLANCO 1192','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1916,'RIB 20/1 POLYALGODON 80 MELANGE 12.5%','RM20125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1917,'JERSEY 20/1 POLYALGODON 80 MELANGE 12.5%','JM20125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1918,'JERSEY 20/1 POLYALGODON 80 MELANGE 25% 1A','RM2025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1919,'JERSEY 30/1 ALGODON TRUZA 90 ACERO 97','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1920,'JERSEY 30/1 ALGODON 85 BLANCO 1192','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1921,'JERSEY 30/1 ALGODON 75 AZULINO 3115','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1922,'STRECH 24/1 ALGODON 83 PERICO 38','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1923,'JERSEY 30/1 POLYALGODON 78 BLANCO 92','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1924,'JERSEY 30/1 POLYALGODON 78 BLANCO 92','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1925,'JERSEY 20/1 ALGODON 90 BEIGE 191','JOA20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1926,'RIB 20/1 ALGODON 80 BEIGE 191','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1927,'JERSEY 30/1 ALGODON 78 PERICO 7','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1928,'JERSING 30/1 POLYALGODON 80 BLANCO 1170','FIBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1929,'JERSING 30/1 POLYALGODON 80 VERDE AGUA 1109','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1930,'JERSING 30/1 ALGODON 80 LILA CLARO 48','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1931,'FRANELA 20/10 POLYALGODON 90 MELANGE 25%','FM2025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1932,'JERSEY 30/1 POLYALGODON 56 AZULINO 19','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1933,'FALSO INTERLOCK 30/1 ALGODON 80 BLANCO 92','FIBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1934,'FELPA 30/1 POLYALGODON 95 CELESTE 21','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1935,'FELPA 30/1 POLYALGODON 95 BLANCO 70','FPCBL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1936,'FELPA 30/1 POLYALGODON 95 ROSADO 12','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1937,'FELPA 30/1 POLYALGODON 95 VERDE AGUA 60','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1938,'FELPA 30/1 POLYALGODON 95 LIMON BB 30','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1939,'FELPA 30/1 POLYALGODON 95 PATO BB 16','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1940,'FELPA 30/1 POLYALGODON 95 MAIZ 9','FPCCL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1941,'JERSEY 30/1 ALGODON 75 LIMON 2105','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1942,'RIB 20/1 POLYALGODON 80 MELANGE 25%','RM2025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1943,'JERSEY 20/1 ALGODON 80 BLANCO 92','JB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1944,'BLISTER 30/1 LYCRADO ACANALADO 60 MELANGE 12.5%','BLYCAM30125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1945,'BLISTER 30/1 LYCRADO ACANALADO 60 CHICLE 1','BLYCAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1946,'BLISTER 30/1 LYCRADO ACANALADO 60 BLANCO 92','BLYCABL30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1947,'RIB 30/1 POLYALGODON 80 MELANGE 3%','RM303',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1948,'BLISTER 30/1 LYCRADO ACANALADO 60 BARNIE 13','BLYAOSC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1949,'STRECH 24/1 ALGODON 83 NEGRO 46','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1950,'JERSEY 30/1 POLYALGODON 85 MELANGE 12.5%','JM30125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1951,'JERSEY 30/1 ALGODON 78 ORO 2121','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1952,'JERSEY 30/1 ALGODON 78 ROJO 3107','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1953,'JERSEY 30/1 ALGODON 78 MILITAR 3154','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1954,'RIB 30/1 ALGODON 80 ROJO 3107','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1955,'JERSEY 30/1 ALGODON 85 NEGRO 3146','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1956,'RIB 30/1 ALGODON 80 NEGRO 3146','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1957,'JERSEY 30/1 ALGODON 90 NEGRO 3146','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1958,'JERSEY 30/1 ALGODON 90 MARINO 3178','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1959,'RIB 30/1 ALGODON 80 MARINO 3178','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1960,'JERSEY 30/1 ALGODON 90 ROJO 3107','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1961,'JERSEY 30/1 ALGODON 90 AZULINO 3115','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1962,'RIB 30/1 ALGODON 80 AZULINO 3115','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1963,'JERSEY 30/1 ALGODON 90 MILITAR 3154','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1964,'RIB 30/1 POLYALGODON 80 BLANCO 1192','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1965,'JERSEY 30/1 ALGODON 78 TURQUEZA 2','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1966,'JERSEY 30/1 ALGODON 80 AZULINO 3115','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1967,'JERSEY 30/1 ALGODON 80 ROJO 3107','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1968,'JERSEY 30/1 ALGODON 80 MARINO 3178','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1969,'JERSEY 30/1 ALGODON 85 ROJO 3107','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1970,'JERSEY 20/1 ALGODON 90 NARANJA 72RX','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1971,'JERSEY 30/1 ALGODON 90 MARINO 105','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1972,'JERSEY 30/1 ALGODON 90 NEGRO 3115','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1973,'RIB 30/1 ALGODON 80 MARINO 105','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1974,'JERSEY 30/1 ALGODON 85 AZULINO 3115','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1975,'JERSEY 30/1  POLYALGODON 90 PLATA 61','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1976,'JERSEY 30/1 POLYALGODON 78 BLANCO 1192','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1977,'JERSEY 20/1 ALGODON 90 MARINO 3110','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1978,'RIB 20/1 ALGODON 80 MARINO 3110','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1979,'JERSEY 30/1 ALGODON 90 MARINO 3110','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1980,'RIB 30/1 ALGODON 80 MARINO 3110','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1981,'JERSEY 30/1 ALGODON 80 MARINO 3110','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1982,'JERSEY 30/1 ALGODON 80 NEGRO 3146','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1983,'JERSEY 30/1 ALGODON 80 VERDE HOJA 2112','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1984,'RIB 30/1 ALGODON 80 VERDE HOJA 12','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1985,'STRECH 24/1 ALGODON 83 NEGRO 3115','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1986,'JERSEY 30/1 POLYALGODON TRUZA 90 TURQUEZA 1126','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1987,'JERSEY 30/1 POLYALGODON TRUZA 90 LIMON 1141','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1988,'STRECH 24/1 ALGODON 83 MARINO 3110','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1989,'STRECH 24/1 ALGODON 83 COLEGIAL 148','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1990,'GAMUZA 30/1 ALGODON 90 ROJO 32','GOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1991,'JERSING 30/1 POLYALGODON 80 CELESTE 1121','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1992,'RIB 30/1 POLYALGODON 80 BLANCO 1170','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1993,'RIB 30/1 ALGODON 80 CHICLE 1156','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1994,'JERSING 30/1 ALGODON 80 CHICLE 1156','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1995,'JERSEY 30/1 ALGODON 90 LIMON 1125','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1996,'RIB 30/1 ALGODON 80 LIMON 1125','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1997,'GAMUZA 30/1 POLYALGODON 90TURQUEZA 1122','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1998,'GAMUZA 30/1 POLYALGODON 90 TURQUEZA 2122','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(1999,'JERSEY 30/1 ALGODON 90 MANDARINA 75','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2000,'RIB 30/1 ALGODON 80 MANDARINA 75','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2001,'GAMUZA 30/1 POLYALGODON 90 LIMON 1137','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2002,'JERSEY 20/1 ALGODON 80 BLANCO 1192','JB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2003,'JERSEY 30/1 ALGODON 90 ANTIQUE 3161','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2004,'RIB 30/1 ALGODON 80 ANTIQUE 3161','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2005,'GAMUZA 30/1 POYALGODON 90 NEGRO 3103','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2006,'GAMUZA 30/1 POLYALGODON 90 MARINO 3105','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2007,'GAMUZA 30/1 POLYALGODON 90 LIMON 1125','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2008,'GAMUZA 50/1 ALGODON 80 PATO 1101','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2009,'GAMUZA 50/1 ALGODON 80 VERDE AGUA 1103','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2010,'GAMUZA 50/1 ALGODON 80 BLANCO 1101','GBA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2011,'GAMUZA 50/1 ALGODON 80 CELESTE 1102','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2012,'JERSEY 30/1 ALGODON 90 CONCHO DE VINO 3117','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2013,'GAMUZA 30/1 ALGODON 90 BLANCO 1192','GB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2014,'GAMUZA 30/1 POLYALGODON 90 ROSADO 1166','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2015,'GAMUZA 30/1 POLYALGODON 90 LIMON 1162','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2016,'JERSEY 30/1 ALGODON 78 NEGRO 3146','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2017,'GAMUZA 50/1 ALGODON LISTADO 80 CELESTE 1169','GPLiC8x8A50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2018,'GAMUZA 30/1 POLYALGODON 90 LILA 1142','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2019,'GAMUZA 30/1 POLYALGODON LIDTADO 90ROSADO 1101','GPCLi9x9CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2020,'GAMUZA 30/1 POLYALGODON LISTADO 90 PATO 1101','GPCLi9X9CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2021,'GAMUZA 30/1 POLYALGODON LISTADO 90 AGUA 1103','GPCLi9X9CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2022,'GAMUZA 30/1 POLYALGODON LISTADO 90 CELESTE 1102','GPCLi9x9CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2023,'GAMUZA 30/1 POLYALGODON LISTADO 90 LIMON 1130','GPCLi9X9CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2024,'GAMUZA 30/1 POLYALGODON LISTADO 90 ROSADO 1101','GPCLi9X9CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2025,'GAMUZA 30/1 ALGODON 90 CELESTE 1102','GCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2026,'GAMUZA 30/1 ALGODON LISTADO 90 CELESTE 1102','GLi9X9CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2027,'GAMUZA 50/1 ALGODON LISTADO 80 PATO 1115','GPLi8x8CA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2028,'GAMUZA 50/1 ALGODON LISTADO 80 MAIZ 1108','GPLi8X8CA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2029,'GAMUZA 50/1 ALGODON LISTADO 80 VERDE AGUA 1175','GPLi8x8CA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2030,'GAMUZA 50/1 ALGODON LISTADO 80 LIMON 1149','GPLi8x8CA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2031,'JERSEY 30/1 ALGODON 90 TURQUEZA 2122','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2032,'RIB 30/1 ALGODON 80 TURQUEZA 2122','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2033,'GAMUZA 30/1 POLYALGODON LISTADO 90 CREMA 1103','GPCLiCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2034,'GAMUZA 50/1 ALGODON LISTADO 80 ROSADO 1171','GPLiC8X8A50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2035,'JERSEY 30/1 POLYALGODON TRUZA 90 TURQUEZA 1199','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2036,'JERSEY 30/1 POLYALGODON TRUZA 90 CHICLE 1122','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2037,'JERSEY 30/1 POLYALGODON TRUZA 90 LIMON 1112','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2038,'JERSEY 30/1 ALGODON 80 JADE 3144','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2039,'STRECH 24/1 ALGODON 83 NEGRO 3146','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2040,'JERSEY 30/1 ALGODON 80 LIMON BB 1130','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2041,'JERSEY 30/1 ALGODON 90 BOTELLA 3148','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2042,'RIB 30/1 ALGODON 80 BOTELLA 3148','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2043,'JERSEY 30/1 ALGODON TRUZA 90 AZULINO 3115','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2044,'JERSEY 30/1 POLYALGODON 90 CREMA 1116','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2045,'JERSEY 30/1 ALGODON 90 CREMA 1116','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2046,'JERSEY 20/1 ALGODON 90 ROJO 3107','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2047,'RIB 20/1 ALGODON 80 ROJO 3107','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2048,'RIB 20/1 ALGODON 80 AZULINO 3115','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2049,'RIB 20/1 ALGODON 80 NEGRO 3146','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2050,'JERSEY 20/1 ALGODON 90 NEGRO 3146','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2051,'JERSEY 20/1 ALGODON 80 NEGRO 3146','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2052,'JERSEY 30/1 ALGODON 90 ROJO 3108','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2053,'JERSEY 30/1 ALGODON 80 ROJO 3108','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2054,'JERSEY 20/1 ALGODON 80 ROJO 3107','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2055,'JERSEY 30/1 ALGODON 80 JADE 3133','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2056,'RIB 30/1 ALGODON 80 JADE 3133','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2057,'JERSEY 30/1 ALGODON 90 PERICO 3156','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2058,'RIB 30/1 ALGODON 80 PERICO 3156','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2059,'JERSEY 30/1 ALGODON 90 JADE 3133','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2060,'JERSEY 30/1 ALGODON 85 MARINO 3110','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2061,'JERSEY 30/1 ALGODON 80 PERICO 3156','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2062,'JERSEY 30/1 ALGODON 90 CREMA 1103','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2063,'JERSEY 30/1 ALGODON 85 PERICO 3156','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2064,'RIB 30/1 ALGODON 80 CREMA 1103','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2065,'GAMUZA 30/1 POLYALGODON 90 TURQUEZA 1122','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2066,'JERSEY 30/1 POLYALGODON 90 BLANCO 1147','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2067,'STRECH 24/1 ALGODON 83 AZULINO 3115','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2068,'JERSEY 30/1 ALGODON 90 BLANCO 1147','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2069,'RIB 30/1 ALGODON 80 BLANCO 1147','RBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2070,'GAMUZA 30/1 POLYALGODON LISTADO 90 TURQUEZA 1126','GPCLi6X6CA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2071,'JERSEY 30/1 ALGODON 78 BLANCO 1147','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2072,'JERSEY 30/1 POLYALGODON 90 BLANCO 1133','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2073,'STRECH 24/1 ALGODON 83 ROJO 1132','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2074,'STRECH 24/1 ALGODON 83 ROJO 3107','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2075,'JERSEY 30/1 ALGODON TRUZA 90 NEGRO 3146','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2076,'JERSEY 30/1 ALGODON TRUZA 90 SOMBRA 2112','JTRO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2077,'RIB 30/1 POLYALGODON 80 BLANCO 1147','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2078,'STRECH 24/1 ALGODON 83 PERICO 3156','STO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2079,'JERSEY 30/1 ALGODON 88 BLANCO 1147','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2080,'JERSEY 30/1 ALGODON 90 MANDARINA 1116','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2081,'JERSEY 30/1 ALGODON 80 CREMA 1103','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2082,'JERSEY 30/1 ALGODON 80 MAIZ 1114','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2083,'JERSEY 30/1 ALGODON 80 CELESTE 1102','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2084,'ACOLCHADO FLOR 30/1 ALG PEIN 80 CELESTE 1138','ACFCPeCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2085,'JERSEY 30/1 POLYALGODON 93 ROSADO 1101','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2086,'JERSEY 30/1 POLYALGODON 93 BLANCO 1147','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2087,'JERSEY 30/1 POLYALGODON 93 PATO 1101','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2088,'JERSEY 30/1 POLYALGODON 93 CELESTE 1102','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2089,'JERSEY 30/1 POLYALGODON 93 VERDE AGUA 1103','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2090,'JERSEY 30/1 ALGODON 90 VERDE AGUA 1178','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2091,'RIB 30/1 ALGODON 80 VERDE AGUA 1178','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2092,'JERSEY 30/1 ALGODON 90 CEMENTO 1104','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2093,'JERSEY 20/1 ALGODON 90 ACERO 3106','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2094,'JERSEY 20/1 POLYALGODON 90 NEGRO 3103','JPCO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2095,'JERSEY 20/1 POLYALGODON 90 MARINO 3105','JPCO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2096,'JERSEY 30/1 ALGODON 85 FUCSIA 3101','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2097,'JERSEY 30/1 ALGODON 80 MORADO 3119','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2098,'JERSEY 20/1 ALGODON 80 BLANCO 1147','JB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2099,'JERSEY 30/1 ALGODON 90 MANDARINA 1106','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2100,'JERSEY 30/1 ALGODON 85 JADE 3133','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2101,'JERSEY 30/1 POLYALGODON 85 BLANCO 1147','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2102,'JERSEY 20/1 ALGODON 90 BLANCO 1147','JB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2103,'RIB 20/1 ALGODON 80 BLANCO 1147','RB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2104,'JERSEY 20/1 ALGODON 90 NEGRO 3115','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2105,'JERSEY 30/1 ALGODON 80 PATO FOS120','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2106,'JERSEY 30/1 POLYALGODON TRUZA 90 BLANCO 1133','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2107,'JERSEY 30/1 POLYALGODON 90 ROSADO 1109','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2108,'JERSEY 30/1 POLYALGODON 90 LIMON 1112','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2109,'JERSEY 30/1 ALGODON 85 BLANCO 1147','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2110,'RIB 30/1 POLYALGODON 80 BLANCO 1133','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2111,'RIB 30/1 POLYALGODON 80 PATO 1161','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2112,'JERSEY 30/1 POLYALGODON 80 BLANCO 1147','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2113,'JERSEY 30/1 ALGODON 80 BLANCO 1147','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2114,'JERSEY 30/1 POLYALGODON 56 BLANCO 1106','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2115,'JERSEY 30/1 ALGODON 90 LIMON BB 1130','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2116,'JERSEY 30/1 ALGODON 90 MELON 1133','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2117,'JERSEY 30/1 ALGODON 90 PATO 1116','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2118,'JERSEY 30/1 POLYALGODON TRUZA 90 PATO 1161','JTRPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2119,'RIB 30/1 POLYALGODON 80 BLANCO 1106','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2120,'JERSEY 20/1 ALGODON 90 PERICO 3156','JO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2121,'RIB 20/1 ALGODON 80 PERICO 3156','RO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2122,'JERSEY 30/1 ALGODON 80 BLANCO 1133','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2123,'RIB 30/1 ALGODON 80 BLANCO 1133','RBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2124,'JERSEY 30/1 ALGODON 90 MAIZ 1114','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2125,'JERSEY 30/1 POLYALGODON LISTADO 90 PATO 1101','JPCLiC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2126,'GAMUZA 50/1 ALGODON 80 BLANCO 1133','GPB50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2127,'JERSEY 30/1 ALGODON 85 ARENA 1102','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2128,'JERSEY 30/1 POLYALGODON 90 ARENA 1179','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2129,'JERSEY 30/1 POLYALGODON 90 CEMENTO 1105','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2130,'JERSEY 30/1 ALGODON 90 VERDE HOJA 2112','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2131,'JERSEY 30/1 ALGODON 90 VERDE AGUA 1103','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2132,'GAMUZA 30/1 POLYALGODON LISTADO 90 MELANGE 12.5%','GPCLi6X6M30125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2133,'JERSEY 30/1 POLYALGODON 80 BLANCO 1179','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2134,'JERSEY 30/1 POLYALGODON 90 CELESTE 1108','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2135,'GAMUZA 50/1 ALGODON 80 KORAL 2170','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2136,'GAMUZA 50/1 ALGODON 80 AZULINO 15 RX','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2137,'GAMUZA 50/1 ALGODON 80 FUCSIA 1 RX','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2138,'GAMUZA 50/1 ALGODON 80 BARNIE 13 RX','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2139,'GAMUZA 50/1 ALGODON 80 ACERO 23 RX','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2140,'GAMUZA 50/1 ALGODON 80 ITALIANO 4','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2141,'GAMUZA 50/1 ALGODON 80 ROSADO 1162','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2142,'JERSEY 30/1 POLYALGODON 80 BLANCO 1181','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2143,'RIB 30/1 POLYALGODON 80 BLANCO 1181','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2144,'GAMUZA 30/1 POLYALGODON 90 CELESTE 1106','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2145,'GAMUZA 30/1 POLYALGODON 90 BLANCO 1147','GPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2146,'JERSEY 30/1 ALGODON 90 BLANCO 1106','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2147,'JERSEY 30/1 POLYALGODON 90 BLANCO 1181','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2148,'GAMUZA 30/1 ALGODON 90 ROJ 3143','GO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2149,'GAMUZA 30/1 ALGODON 90 ROJO 3143','GO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2150,'GAMUZA 30/1 ALGODON 90 FUCSIA 2104','GO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2151,'JERSEY 30/1 ALGODON 90 BLANCO 1181','JB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2152,'RIB 30/1 ALGODON 80 BLANCO 1181','RB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2153,'JERSEY 30/1 ALGODON 80 BLANCO 1181','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2154,'JERSEY 30/1 ALGODON 90 SOMBRA 1152','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2155,'RIB 30/1 ALGODON 80 SOMBRA 1152','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2156,'JERSEY 30/1 POLYALGODON TRUZA 90 BLANCO 1147','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2157,'FRANELA 20/10 POLYALGODON 90 NEGRO 3103','FPCO20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2158,'JERSEY 30/1 ALGODON 75 BLANCO 1147','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2159,'JERSEY 30/1 ALGODON 90 ACERO 3106','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2160,'JERSEY 30/1 ALGODON 80 ACERO 3106','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2161,'JERSEY 30/1 ALGODON 80 CRISTAL 1101','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2162,'GAMUZA 50/1 ALGODON 80 BARNIE 2151','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2163,'GAMUZA 50/1 ALGODON 80 LILA 1137','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2164,'GAMUZA 50/1 ALGODON 80 MANDARINA 1160','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2165,'GAMUZA 50/1 ALGODON 80 CREMA 1113','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2166,'GAMUZA 50/1 ALGODON 80 JADE 2153','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2167,'GAMUZA 50/1ALGODON 80 ROSADO 1162','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2168,'GAMUZA 50/1 ALGODON 80 MAIZ 1178','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2169,'JERSEY 30/1 ALGODON 75 PERICO 3156','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2170,'JERSEY 20/1 ALGODON 90 VERDE AGUA 1103','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2171,'RIB 20/1 ALGODON 80 VERDE AGUA 1103','RC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2172,'FRANELA 20/10 POLYALGODON 90 MAIZ 1109','FPCC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2173,'RIB 30/1 ALGODON LYCRADO 80 BEIGE 1109','RLYC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2174,'GAMUZA 50/1 ALGODON 80 KORAL 2131','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2175,'GAMUZA 50/1 ALGODON 80 FUCSIA 3174','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2176,'GAMUZA 50/1 ALGODON 80 LILA 1177','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2177,'GAMUZA 50/1 ALGODON 80 TURQUEZA 2138','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2178,'GAMUZA 50/1 ALGODON 80 ROSADO 1165','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2179,'JERSEY 30/1 POLYALGODON 90 CRISTAL 1108','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2180,'JERSEY 30/1 ALGODON 85 CRISTAL 1101','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2181,'JERSEY 30/1 ALGODON 90 CEMENTO 1105','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2182,'GAMUZA 50/1 ALGODON 80 MARINO RX85','GPORX50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2183,'GAMUZA 50/1 ALGODON 80 BRASIL RX','GPORX50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2184,'JERSEY 30/1 POLYALGODON 90 TURQUEZA 1122','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2185,'JERSEY 30/1 ALGODON 80 TURQUEZA MEDIO 2109','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2186,'JERSEY 30/1 ALGODON 85 MORADO 3119','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2187,'JERSEY 30/1 ALGODON 80 MELON 1101','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2188,'JERSEY 30/1 ALGODON 85 LILA CLARO 1121','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2189,'JERSEY 30/1 ALGODON 85 KORAL 2101','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2190,'JERSEY 30/1 ALGODON 85 GUINDA 3120','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2191,'JERSEY 30/1 ALGODON 85 BEIGE 1105','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2192,'JERSING 30/1 POLYALGODON 80 CREMA 1103','FICA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2193,'JERSEY 30/1 ALGODON 85 CHICLE 1101','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2194,'JERSEY 30/1 POLYALGODON 85 MELANGE 25%','JM3025',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2195,'JERSEY 30/1 ALGODON 80 BEIGE 1113','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2196,'RIB 30/1 ALGODON 80 BEIGE 1113','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2197,'JERSEY 30/1 ALGODON 85 ROSADO 1137','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2198,'JERSEY 30/1 ALGODON 90 PATO 1161','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2199,'JERSEY 30/1 POLYALGODON 80 MANDARINA D2095','JPCME30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2200,'GAMUZA 50/1 ALGODON 80 PATO 1161','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2201,'JERSEY 30/1 ALGODON 90 MANDARINA 2184','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2202,'RIB 30/1 ALGODON 80 MANDARINA 2184','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2203,'JERSEY 30/1 ALGODON 80 MANDARINA 2184','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2204,'JERSEY 20/1 ALGODON 82 ARENA 1102','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2205,'GAMUZA 50/1 ALGODON 80 BLANCO 1192','GBA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2206,'JERSEY 30/1 POLYALGODON 90 LIMON D1244','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2207,'RIB 30/1 POLYALGODON 80 LIMON D1244','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2208,'JERSEY 30/1 ALGODON 80 CONCHO DE VINO 3117','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2209,'GAMUZA 50/1 POLYALGODON 80 LIMON FOS334','GPCO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2210,'GAMUZA 30/1 POLYALGODON 90 PATO 1161','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2211,'JERSEY 30/1 POLYALGODON 78 BLANCO 1147','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2212,'JERSEY 30/1 ALGODON 85 ITALIANO 2104','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2213,'JERSEY 30/1 POLYALGODON 85 BLANCO 1181','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2214,'JERSEY 30/1 POLYALGODON 90 PATO D1120','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2215,'RIB 30/1 POLYALGODON 80 PATO D1120','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2216,'JERSEY 30/1 POLYALGODON 80 LIMON D1244','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2217,'JERSEY 30/1 POLYALGODON 80 PATO D1120','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2218,'JERSEY 30/1 ALGODON 90 ARENA 1186','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2219,'JERSEY 30/1 ALGODON 90 LIMON 1013','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2220,'RIB 30/1 ALGODON 80 LIMON 1013','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2221,'RIB 30/1 ALGODON 80 ARENA 1186','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2222,'GAMUZA 50/1 ALGODON 80 ROJO 3107','GPO50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2223,'JERSEY 30/1 POLYALGODON 90 MANDARINA D2095','JPCME30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2224,'JERSEY 30/1 POLYALGODON 90 VERDE AGUA FOS137','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2225,'RIB 30/1 POLYALGODON 80 VERDE AGUA FOS137','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2226,'ACOLCHADO PUNTOS ROSADO 30/1 PEIN 80 BLANCO 1101','ACPTPeBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2227,'ACOLCHADO PUNTOS CELESTE 30/1 PEIN 80 BLANCO 1101','ACPTPeBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2228,'ACOLCHADO PUNTOS MAIZ 30/1 PEIN 80 BLANCO 1101','ACPTPeBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2229,'ACOLCHADO PUNTOS ORO 30/1 PEIN 80 BLANCO 1101','ACPTPeBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2230,'JERSEY 30/1 ALGODON 90 ACERO 3113','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2231,'GAMUZA 30/1 ALGODON 90 FUCSIA 3101','GO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2232,'GAMUZA 30/1 ALGODON 90 ROJO 3107','GO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2233,'FRANELA 24/12 POLYALGODON 91 BLANCO 1133','FPCB2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2234,'FRANELA 24/12 POLYALGODON 91 CELESTE 1023','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2235,'FRANELA 24/12 POLYALGODON 91 ROSADO 1137','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2236,'FRANELA 24/12 POLYALGODON 91 LIMON 1014','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2237,'FRANELA 24/12 POLYALGODON 91 VERDE AGUA 1146','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2238,'FRANELA 24/12 POLYALGODON 91 PATO 1162','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2239,'GAMUZA 30/1 POLYALGODON 90 ARENA 1102','GPCCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2240,'JERSEY 30/1ALGODON 80 ARENA 1186','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2241,'JERSEY 30/1 ALGODON 80 LIMON 1013','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2242,'JERSEY 30/1 ALGODON 80 BARNIE 3190','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2243,'RIB 30/1 ALGOON 80 BARNIE 3190','ROA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2244,'JERSEY 30/1 ALGODON 92 NEGRO 3146','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2245,'JERSEY 30/1 POLYALGODON 90 CELESTE 1121','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2246,'JERSEY 30/1 POLYALGODON 90 ROSADO 1112','JPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2247,'JERSEY 30/1 ALGODON 90 BEIGE 1113','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2248,'JERSEY 30/1 ALGODON 85 CONCHO DE VINO 3117','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2249,'JERSEY 30/1 ALGODON 85 MANDARINA 2184','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2250,'RIB 30/1 ALGODON LYCRADO NEGRO 3165','RLYCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2251,'GAMUZA 50/1 ALGODON 80 CELESTE 1103','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2252,'GAMUZA 50/1 ALGODON 80 ROSADO 1112','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2253,'GAMUZA 50/1 ALGODON 80 VERDE AGUA 1109','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2254,'GAMUZA 50/1 ALGODON 80 PATO 1112','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2255,'GAMUZA 50/1 ALGODON 80 BLANCO 1170','GBA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2256,'GAMUZA 50/1 ALGODON 80 LIMON BB 1130','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2257,'JERSEY 30/1 ALGODON 85 CONCHO DE VINO 3106','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2258,'RIB 30/1 ALGODON 80 CEMENTO 1105','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2259,'JERSEY 30/1 ALGODON 83 BLANCO 1147','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2260,'JERSEY 24/1 ALGODON 78 NEGRO 3146','JAO24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2261,'JERSEY 30/1 ALGODON 83 MILITAR 3154','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2262,'RIB 24/1 ALGODON 80 NEGRO 3146','ROA24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2263,'GAMUZA 50/1 ALGODON 80 MENTA 1191','GPC50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2264,'PIQUE 30/1 POLYALGODON 80 MELANGE 10%','PM30125',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2265,'GAMUZA 30/1 ALGODON CUAD 80 BLANCO 1101','GCUBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2266,'GAMUZA 30/1 ALGODON CUAD 80 ROSADO DD2400','GCUCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2267,'GAMUZA 30/1 ALGODON CUAD 80 CELESTE DD1447','GCUCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2268,'GAMUZA 30/1 ALGODON CUAD 80 V.AGUA DD1216','GCUCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2269,'GAMUZA 30/1 ALGODON CUAD 80 MAIZ DD1164','GCUCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2270,'GAMUZA 30/1 ALGODON CUAD 80 LIMON DD1375','GCUCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2271,'GAMUZA 30/1 ALGODON CUAD 80 CHICLE DD2252','GCUCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2272,'GAMUZA 30/1 POLYALGODON 80 MELANGE 3% 1A','GM303',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2273,'RIB 30/1 POLYALGODON 80 TURQUEZA 1126','RPCC30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2274,'JERSEY 24/1 ALGODON 90 MILITAR 3058','JOA24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2275,'RIB 24/1 ALGODON 78 MILITAR 3158','ROA24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2276,'JERSEY 24/1 ALGODON 80 MILITAR 3058','JOA24',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2277,'JERSEY 30/1 ALGODON 85 CHOCOLATE 1116','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2278,'JERSEY 30/1 ALGODON 85 ORO BRAZIL 2133','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2279,'JERSEY 30/1 ALGODON 83 NEGRO 3146','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2280,'JERSEY 30/1 ALGODON 85 BEIGE 1113','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2281,'JERSEY 30/1 POLYALGODON 90 NEGRO 3103','JPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2282,'JERSEY 30/1 ALGODON 80 PLATA 2067','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2283,'RIB 30/1 ALGODON 80 PLATA 2067','RCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2284,'JERSEY 30/1 ALGODON 80 PERICO 3096','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2285,'JERSEY 30/1 ALGODON 90 PERICO 3096','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2286,'JERSEY 30/1 ALGODON 90 PLATA 2002','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2287,'JERSEY 30/1 ALGODON 85 BLANCO 1181','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2288,'JERSEY 30/1 ALGODON 75 BEIGE 1113','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2289,'JERSEY 30/1 ALGODON 75 CHOCOLATE 1116','JCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2290,'GAMUZA 30/1 POLYALGODON 90 BLANCO 1181','GPCBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2291,'JERSEY 30/1 ALGODON 75 MILITAR 3154','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2292,'JERSEY 30/1 ALGODON 75 BLANCO 1147','JBA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2293,'JERSEY 30/1 ALGODON 75 NEGRO 3146','JOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2294,'FRENCH TERRY 30/1 POLYALGODON 81 MELANGE 10%','FTM3010',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2295,'FRENCH TERRY 30/1 POLYALGODON 81 NEGRO 3103','FTPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2296,'JERSEY 20/1 POLYALGODON 80 BLANCO 1147','JPCB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2297,'RIB 20/1 POLYALGODON 80 BLANCO 1147','RPCB20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2298,'GAMUZA 50/1 ALGODON 80 VERDE MONINA 1191','GCA50',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2299,'GAMUZA 30/1 ALGODON CUAD 80 LIMON DD1375','GCUCA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2300,'GAMUZA 30/1 POLYALGODON CUAD 80 MELANGE 3%','GCUM303',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2301,'JERSEY 20/1 ALGODON 80 ARENA 1102','JC20',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2302,'JERSEY 30/1 ALGODON 85 BEIGE 2007','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2303,'JERSEY 30/1 ALGODON 80 BEIGE 2007','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2304,'JERSEY 30/1 ALGODON 75 BEIGE 2007','JMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2305,'RIB 30/1 ALGODON 80 BEIGE 2007','RMEA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2306,'GAMUZA 30/1 POLYALGODON 90 MARRON 3004','GPCOA30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2307,'FRANELA 24/12 POLYALGODON 90 MANDARINA 1116','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2308,'FRANELA 24/12 POLYALGODON 90 CHICLE 1101','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2309,'FRANELA 24/12 POLYALGODON 90 VERDE AGUA 1103','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2310,'FRANELA 24/12 POLYALGODON 90 CELESTE 1102','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2311,'FRANELA 24/12 POLYALGODON 90 LIMON BB 1130','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2312,'FRANELA 24/12 POLYALGODON 90 CREMA 1103','FPCC2412',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2313,'JERSEY 30/1 POLYALGODON 54 BLANCO 1168','JPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2314,'RIB 30/1 POLYALGODON 80 BLANCO 1168','RPCB30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL),
(2315,'RIB 30/1 POLYALGODON 80 NEGRO 3103','RPCO30',NULL,NULL,NULL,'Y',1,1,1,1,NULL,NULL);

/*Table structure for table `wh_reasons` */

DROP TABLE IF EXISTS `wh_reasons`;

CREATE TABLE `wh_reasons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reasonname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movetype` enum('IN','SA','TR','PR','ME') COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_reasons` */

insert  into `wh_reasons`(`id`,`reasonname`,`movetype`,`isactive`,`created_at`,`updated_at`) values 
(1,'COMPRA','IN','Y',NULL,NULL),
(2,'VENTA','SA','Y',NULL,NULL),
(3,'TRASLADO ENTRE ALMACENES','TR','Y',NULL,NULL),
(4,'PRODUCCION','PR','Y',NULL,NULL),
(5,'AJUSTE POR MERMA','ME','Y',NULL,NULL);

/*Table structure for table `wh_stock` */

DROP TABLE IF EXISTS `wh_stock`;

CREATE TABLE `wh_stock` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stock` double NOT NULL DEFAULT 0,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `warehouse_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `warehouse_id` (`product_id`,`warehouse_id`),
  KEY `wh_stock_warehouse_id_foreign` (`warehouse_id`),
  CONSTRAINT `wh_stock_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `wh_products` (`id`),
  CONSTRAINT `wh_stock_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `wh_warehouses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_stock` */

insert  into `wh_stock`(`id`,`stock`,`product_id`,`warehouse_id`,`created_at`,`updated_at`) values 
(1,420.3999938964844,309,1,'2020-11-12 10:15:12',NULL),
(2,420.1000061035156,257,1,'2020-11-12 10:16:12',NULL),
(3,420.1000061035156,2098,1,'2020-11-12 10:36:14',NULL);

/*Table structure for table `wh_sublines` */

DROP TABLE IF EXISTS `wh_sublines`;

CREATE TABLE `wh_sublines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sublinename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_sublines` */

insert  into `wh_sublines`(`id`,`sublinename`,`isactive`,`created_at`,`updated_at`) values 
(1,'LAPICEROS TINTA SECA','Y',NULL,NULL),
(2,'LAPICEROS TINTA GEL','Y',NULL,NULL);

/*Table structure for table `wh_teams` */

DROP TABLE IF EXISTS `wh_teams`;

CREATE TABLE `wh_teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wh_teams_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_teams` */

insert  into `wh_teams`(`id`,`user_id`,`name`,`personal_team`,`created_at`,`updated_at`) values 
(1,1,'Administradores',1,'2020-11-12 15:14:07','2020-11-12 15:14:07');

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
  `qty` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `pack` double(8,2) DEFAULT NULL,
  `grandline` double DEFAULT NULL,
  `um_id` bigint(20) DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_temp` */

insert  into `wh_temp`(`id`,`token`,`productname`,`productcode`,`umname`,`umshort`,`sku`,`datetrx`,`warehouse_id`,`reason_id`,`bpartner_id`,`product_id`,`qty`,`price`,`pack`,`grandline`,`um_id`,`isactive`,`created_at`,`updated_at`) values 
(1,'11720e99aa3afa409229e1708260a200','JERSEY 20/1 ALGODON 90 ARENA 1B','JCL2015','KILOS','KG',NULL,NULL,1,1,46,309,420.40,12.00,20.00,5044.8,NULL,'Y','2020-11-12 15:15:04','2020-11-12 15:15:04'),
(2,'4be68d080aea42f753e30cd624780904','JERSEY 20/1 ALGODON 90 MARINO 2','JOSC20','KILOS','KG',NULL,NULL,1,1,46,257,420.10,12.00,20.00,5041.2,NULL,'Y','2020-11-12 15:16:10','2020-11-12 15:16:10'),
(3,'33dec173ec7b3dbd5cdbcd2496ca547b','JERSEY 20/1 ALGODON 90 ACERO 6','JOSC2015','KILOS','KG',NULL,NULL,1,1,46,284,420.10,12.00,20.00,5041.2,NULL,'Y','2020-11-12 15:18:53','2020-11-12 15:18:53'),
(4,'e7a269e0d24d3616b7b16ab13210203a','JERSEY 20/1 ALGODON 80 AZULINO 3115','JO20','KILOS','KG',NULL,NULL,1,1,46,1793,420.30,12.00,20.00,5043.6,NULL,'Y','2020-11-12 15:22:38','2020-11-12 15:22:38'),
(5,'c42058b7b4f2350a488e4a630ed36951','JERSEY 20/1 ALGODON 80 BLANCO 1147','JB20','KILOS','KG',NULL,NULL,1,1,46,2098,420.10,12.00,20.00,5041.2,NULL,'Y','2020-11-12 15:36:13','2020-11-12 15:36:13'),
(6,'ae53513414f3a71a17587710e7c28903','JERSEY 20/1 ALGODON 80 ARENA 32','JCL20','KILOS','KG',NULL,NULL,1,1,40,1034,400.10,12.00,20.00,4801.2,NULL,'Y','2020-11-12 15:36:52','2020-11-12 15:36:52'),
(7,'a0305388e45107193de9ed0c28c38a02','JERSEY 20/1 ALGODON 80 ARENA 32','JCL20','KILOS','KG',NULL,NULL,1,1,46,1034,401.20,12.00,20.00,4814.4,NULL,'Y','2020-11-12 15:40:07','2020-11-12 15:40:07'),
(8,'ddef27695e1e6459a66fad6ec66093fa','JERSEY 20/1 ALGODON 90 MANDARINA 17','JOSC20','KILOS','KG',NULL,NULL,1,1,46,817,120.00,12.00,15.00,1440,NULL,'Y','2020-11-12 15:41:45','2020-11-12 15:41:45');

/*Table structure for table `wh_transfers` */

DROP TABLE IF EXISTS `wh_transfers`;

CREATE TABLE `wh_transfers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetrx` date NOT NULL,
  `warehouse_id` bigint(20) unsigned DEFAULT NULL,
  `reason_id` bigint(20) unsigned NOT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_ums` */

insert  into `wh_ums`(`id`,`umname`,`shortname`,`isoname`,`isactive`,`created_at`,`updated_at`) values 
(1,'KILOS','KG',NULL,'Y',NULL,NULL),
(2,'UNIDADES','UND',NULL,'Y',NULL,NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wh_users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_users` */

insert  into `wh_users`(`id`,`name`,`email`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`) values 
(1,'admin','soporte@miasoftware.net',NULL,'$2y$10$c.Vl3mf.fx7NX9nhkoW/tufD9fgQ52fwpSCvAo8wSb5Fpy5p/F0tG',NULL,NULL,NULL,1,NULL,'2020-11-12 15:14:07','2020-11-12 15:14:07');

/*Table structure for table `wh_warehouses` */

DROP TABLE IF EXISTS `wh_warehouses`;

CREATE TABLE `wh_warehouses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `warehousename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehousecode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubigeo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isactive` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `wh_warehouses` */

insert  into `wh_warehouses`(`id`,`warehousename`,`warehousecode`,`ubigeo`,`isactive`,`created_at`,`updated_at`) values 
(1,'ALMACEN PRINCIPAL','AP01',NULL,'Y',NULL,NULL),
(2,'AREQUIPA','AR01',NULL,'Y',NULL,NULL),
(3,'LIMA - LOS OLIVOS','LI01',NULL,'Y',NULL,NULL),
(4,'LIMA - LA VICTORIA','LI02',NULL,'Y',NULL,NULL),
(5,'LIMA - SAN BORJA','LI03',NULL,'Y',NULL,NULL),
(6,'LIMA - INDEPENDENCIA','LI04',NULL,'Y',NULL,NULL);

/* Trigger structure for table `wh_minput_lines` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_add_stock_in_live` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `tr_add_stock_in_live` AFTER INSERT ON `wh_minput_lines` FOR EACH ROW             BEGIN 
                CALL sp_stock_live_proccess('I',new.id);
            END */$$


DELIMITER ;

/* Trigger structure for table `wh_moutput_lines` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `tr_rest_stock_in_live` */$$

/*!50003 CREATE */ /*!50003 TRIGGER `tr_rest_stock_in_live` AFTER INSERT ON `wh_moutput_lines` FOR EACH ROW             BEGIN 
                CALL sp_stock_live_proccess('O',new.id);
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
		INSERT INTO wh_lines(linename)VALUES('LAPICEROS');
	TRUNCATE TABLE wh_sublines; 
		INSERT INTO wh_sublines(sublinename)VALUES('LAPICEROS TINTA SECA');
		INSERT INTO wh_sublines(sublinename)VALUES('LAPICEROS TINTA GEL');
	TRUNCATE TABLE wh_families; 
		INSERT INTO wh_families(familyname)VALUES('LIBRERIA');
		INSERT INTO wh_families(familyname)VALUES('TELA RIB');
		INSERT INTO wh_families(familyname)VALUES('TELA JERSEY');
		INSERT INTO wh_families(familyname)VALUES('TELA GAMUZA');
	TRUNCATE TABLE wh_bpartners; 
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20606384387','GRUPO SBF PERU SAC');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20101717098','TEJIDOS JORGITO SAC');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10296512643','LEYVA MAMANI GLADYS');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10013083946','VEGA SUCASACA NANCY');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C00010000000','CLIENTE VARIOS');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20550393132','YMATEX E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10086203818','MILLA GAVINO DOMINICA JUANA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10090743088','PIZARRO CORONADO DELIA NARCIZA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20304434032','CONFECCIONES NACHTS S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10078099491','ALVAREZ RAZZETO DE SILES ROSA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20388096871','SERVICHECK S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20347318702','CREACIONES TIBURON S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20101597921','CONFECCIONES QUIMI S A COQUISA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10093823155','ALVES DE OLIVEIRA JASAUI, PAULO CESAR');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10003686014','BUENDIA GILVONIO JORGE EDDY');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10091911839','VIVAR ZANABRIA GIORDANO WILBUR');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10105633829','SUCASACA MOLLEAPAZA FRANCISCA FILOMENA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10083286631','HURTADO CUBAS JOSE HIPOLITO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10091608532','JARUFE SABAT DE ESPEJO MARIA ANTONIETA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10017728887','ZEVALLOS HUANCA CARLOS MARTIN');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10310313845','VISCARRA BALLON JESUSA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20293875163','EXPRESO WARI S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20218859322','CAPURO VILLARAN S.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20418193591','BLADETEX S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20100667437','BLADE S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20215570305','BABY CENTER E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10093257532','CARAZAS QUIN AUREA ESTELA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10153569920','MILLAN MEZA GLORIA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10023716386','QUISPE DE ITICONA MARIA MAGDALENA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10024262419','MAMANI COARITE FREDY');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10024137231','CRUZ CONDORI LEONIDAS');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10024136014','KARI MAMANI GRIMALDO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10012284018','HUAMAN CARRIZALES PEDRO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C00001833278','FERNANDEZ GOMEZ EVARISTO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10024132108','ALAY  URA,  JORGE  LEON');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10035869099','JUAREZ DE QUEVEDO ROSA EUSEBIA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20260798881','CREACIONES J & E S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10083273343','CARPIO ABARCA MARTIN');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10023712925','YANARICO DE MACHACA TEODORA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20211695871','A SPORT E.I.R.LTDA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20415216514','3 L TEXTILES S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20136435397','ALGODONERA PERUANA S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20546000975','M G POZO S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10099127452','ENRIQUEZ CHAVEZ WENCES ALEJANDRO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10065489550','CHOQUEPUMA LAUCATA PASTOR LORENZO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20137429871','JET TEXTIL S.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C00002448125','CONDORI CANAZA ALFREDO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20510553226','CONFECCIONES CAMELL S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10085803251','LOBATO ORTIZ LEONCIO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20100675618','WESTERN COTTON S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20100267765','TINTESA S A');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10091637508','BAZAN NAVEDA CESAR HUMBERTO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20381596401','CONFECCIONES LOMA"S S.R.LTDA.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20411562361','TEJIDO Y COLOR S.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20100095450','LAIVE S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10023941690','HUANCA CASTILLO JUAN');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20136644557','PROTEL S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20193075658','ARTICULOS Y CONFECCIONES INDUSTRIALES SA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10179482091','PUMACHAICO QUEZADA, DELIA TERESA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20118021411','COMPAÑIA EL PROGRESO S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20298007151','DISTRIBUIDORA PERUANA SAN ROQUE');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20387634828','MARKETEX PROMOCIONES S.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20101776345','CONFECCIONES GILDA E I R LTDA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20101692834','MANUFACTURAS LEON HNOS S A');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10218121433','MENDOZA SUAREZ JUAN LUCIO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10060483201','NIEVA CAPARACHIN ISAAC TEODORO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10072545163','MITRE MISAD PAUL FERNANDO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10067494071','CORNEJO RUIZ RAIDA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20130529993','CREACIONES JULISSA EIRL');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20258008261','D PAULES EIRL');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10087711914','ROMERO GOMEZ SANCHEZ MARIA DEL CARMEN');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10106725484','QUISPE SUAREZ EDELMIRA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10255770433','LINO LOPEZ MERCEDES ISABEL');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10238049984','VALENCIA URQUIZO GREGORIO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20422831348','DISTRIBUIDORA NACIONAL FORTALEZA E.I.R.L');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20336018081','LANCIA S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10073178482','ESPINOZA CACERES HUGO MIGUEL');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10255062331','CELADITA RUIZ LUIS ALBERTO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10074043521','CARDENAS PALOMINO LAURO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10096611965','TAPIA VILLANUEVA MARIA CATALINA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10093119181','PIZARRO FIERRO GINA ALICIA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10211026770','SORIA CAPARACHIN ADOLFO FELIPE');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10074778530','PUMAINCA SANTA CRUZ ALFREDO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10085096058','YBANEZ ALEGRE VDA. DE VICENTE ALEJANDRINA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20263001002','ACROPOLIS CONFECCIONES SRLTDA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10074542331','ALANIA PALACIN VICTOR JAVIER');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20100251419','HILANDERIAS DE ALGODON EULOTEX S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20100297591','COMINSA S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20100127327','BANCOSUR');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20293623431','CLARIANT (PERU) S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10258438685','PALOMINO AGUILAR JOSE LUIS');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10091951270','RODRIGUEZ FLORES CONCEPCION GLORIA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20298049407','COMERCIAL NADER E.I.R.LTDA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20119773912','COMARGEN S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10198210272','JIMENEZ VALLADOLIC CECILIA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C15125729131','LAVADO VILCAHUAMAN CELESTINA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10254314671','JAIMES INGA CARLOS ALBERTO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10083148115','HILARIO GUTIERREZ WALTER JUAN');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20330081393','INDUSTRIA MCKENZY S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10073337416','TACO PARI GUADALUPE MORELIA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10086027211','SANDONAS ALEGRE GERARDO AMBROCIO');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20125763589','CARVED SRLTDA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20388094312','RAMA FIBRA DEL PERU S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20501843742','TEXTILES RENACER EIRL');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20604689806','INVERSIONES ESTIBEN E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20604686246','BRISOFY COMPANY E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20544643127','S SBELLITA FASHION S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10748905508','LAMONJA GUARDAMINO KIARA YARET');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10449367303','MENDOZA GONZALES JHONNY MOISES');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20519150388','TEXTILES HABIBI S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20556304026','INVERSIONES DUBARTEX E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10238529579','CERNADES MAXDEO MARIA JESUS');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C20500467968','INDUSTRIAS ALDO DANIRO S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10773358465','UGARTE JAUREGUI JOSELLYN DAYSSY');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10709024758','ROJAS ZAMORA SOLEDAD');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('C','C10410418130','RAMIREZ ESPINOZA JUAN CARLOS');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20557687816','TEXTILES TRENDS H Y M E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20258126034','MADERERA BUENOS AMIGOS S.R.LTDA.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20536378503','PONFECCIONES NIKEL S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20100776562','MALVEX DEL PERU S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603494181','INTERBRAND S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20548425621','ST. JUDE INDUSTRY S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604716447','PONFECCIONES CALEB S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600319745','TRANSPORTE YAULLI E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600134095','STATUS EMPRESARIAL S.A.C. - SARIAL S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604516634','TEXTILES TBM S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604826064','TEXTILES REYES S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603842058','DFD SOLUCIONES E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604687587','GRUAP E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20548145181','POTTON INDUSTRY S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20521400308','POTTON WORK PERUVIAN COMPANY S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20601862621','MALUPUBLI S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602475477','MONTALVO V & V S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20518537769','YAMAUE IMPEX S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20522727696','TEXTIL EMMY E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20513172461','TEJIDOS Y RENDAS LEON S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20555224215','IMPORTACION EXPORTACION APC SAC');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602041531','PAMILA SPORT E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600424824','JHMSECURITY S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20565587308','AUCKLAND S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20502143973','PORPORACION VALTAKS S.C.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20536092952','PREACIONES D VICTORIA S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20432420834','IMP. Y DISTRI. DE RETENES RODAMIENTOS Y AFINES S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20601387736','PEYTHON KIDS S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602965750','PONFECCIONES Y CORTES S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20503438713','BLACK FLYS S.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604350159','D BRYTEX S. A. C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600968981','PROYECTOS E INVERSIONES MONTANO E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600973577','PORPORACION LICHA E.I.R.L');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20601633028','A & R TEXTILES S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602068251','B & N CORPORACION LOGISTICA E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604196532','TEJIDOS LATI ANDINOS S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20554964045','LEXA TRANSPORT LOGISTICS E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20204621242','TALMA SERVICIOS AEROPORTUARIOS S.A');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604147787','IMPORT EXPORT EVOLUCION S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20555692235','ODIBA TEXTIL S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600461461','PORPORACION ZHARA S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20515983776','NEGOTEX S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20563295369','ALSOCOL E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20550949424','INVERSIONES PUMATEX S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602708455','TEXTILES ALGO DISTINTO S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600918096','PORPORACION ABB S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604187185','PONFECCIONES CHIKYTEXS S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20551681301','MODA YESNIF E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602039821','G & G MANUFACTURAS S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602398596','NL GROUP S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604254907','DISTRIBUCIONES TEXTILES FARIDE E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20565476492','TINTECOLOR S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20565487184','TEXTIL LA CASA DE LA GAMUZA ANTIPEELING E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20515252721','MSJ KIDS S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20492752771','FLAM RYP S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20604031835','PONSORCIO FAZZA S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20432350445','TEXTIL RODRIGUEZ S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20492049655','SOPORTE TEXTIL SOCIEDAD ANONIMA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20601999723','POORPORACION TEXTIL STEVEN & JHARET S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20518943244','HARRYTEX S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600833376','TEXTIL CHARIS E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20601584981','TEJIDOS ALPAFINA E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20485978233','PARGO 1 S.A.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20601195446','PORPORACION TEXTIL R & L S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600106890','INVERSIONES Y NEGOCIACIONES ALFAPERU E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603556047','TEXTILES SANCHEZ L & N E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20551935338','ODITEX E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20547504047','NEGOCIOS E INVERSIONES AIRIN SAC');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20551378897','PORPORACION K&H E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600855990','PORPORACION KOSEY S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603929986','VCL TEXTIL SERVICE E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20553017191','PREACIONES MARCHENITA E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20554152181','PONSORCIO INDUSTRIAL ALIMBER E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20108129841','RIOS & HNOS SAC');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602959415','MABETEX S.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603950616','TRADERTEX E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603471076','PORPORACION RENZO CAMILA S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20601406625','PORPORACION TEXTIL SAMIR E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20602750095','INVETEXTIL ROSCH E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20491910659','TEXTIL SAMHY S E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603687681','TEXTIL NIKO S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603916108','VANELYN E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20550317541','PORPORACION MISAMORES E.I.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20603713223','ADIS MULTISERVICIOS DE LOGISTICA S.A.C.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20424371581','SOQUITEX ING. S.R.LTDA');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20522550079','REMO PERU TEXTIL S.R.L.');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20505721374','LABORATORIOS LELY S.A.C');
		INSERT INTO wh_bpartners(bpartnertype,bpartnercode,bpartnername)VALUES('P','P20600216156','PREACIONES GREGORYTEX E.I.R.L');


	TRUNCATE TABLE wh_reasons; 
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('IN','COMPRA');
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('SA','VENTA');
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('TR','TRASLADO ENTRE ALMACENES');
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('PR','PRODUCCION');
		INSERT INTO wh_reasons(movetype,reasonname)VALUES('ME','AJUSTE POR MERMA');
	truncate table wh_banks;
		insert into wh_banks(currency_id,bankname)values(1,'191-01234567-0-00');
		INSERT INTO wh_banks(currency_id,bankname)VALUES(2,'191-07654321-1-00');
	TRUNCATE TABLE wh_bank_received;
		INSERT INTO wh_bank_received(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,NOW(),1,1,2500,'DEP');
		INSERT INTO wh_bank_received(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,NOW(),1,1,3200,'DEP');
		INSERT INTO wh_bank_received(bank_id,datetrx,bpartner_id,currency_id,amount,doctype)VALUES(1,NOW(),1,1,500,'EFE');
		
	SET FOREIGN_KEY_CHECKS = 1;
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

/*View structure for view whv_stock */

/*!50001 DROP TABLE IF EXISTS `whv_stock` */;
/*!50001 DROP VIEW IF EXISTS `whv_stock` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `whv_stock` AS (select `a`.`id` AS `id`,`a`.`datetrx` AS `datetrx`,`a`.`token` AS `token`,`a`.`reason_id` AS `reason_id`,`a`.`bpartner_id` AS `bpartner_id`,`a`.`warehouse_id` AS `warehouse_id`,`a`.`isactive` AS `isactive`,`a`.`created_at` AS `created_at`,`a`.`updated_at` AS `updated_at` from `wh_minputs` `a`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
