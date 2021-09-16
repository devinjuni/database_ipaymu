/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.18-MariaDB : Database - ipaymu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ipaymu` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ipaymu`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2019_12_14_000001_create_personal_access_tokens_table',1),
(2,'2021_09_15_022749_tb__user',1);

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

/*Table structure for table `tb_users` */

DROP TABLE IF EXISTS `tb_users`;

CREATE TABLE `tb_users` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `tb_users_id_user_unique` (`id_user`),
  UNIQUE KEY `tb_users_user_key_unique` (`user_key`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_users` */

insert  into `tb_users`(`id_user`,`user_key`,`nama`,`pekerjaan`,`tgl_lahir`,`updated_at`,`created_at`) values 
(1,'3117aef6-4f1f-3ac9-b88c-63faf371401d','Betania Farida S.E.','Konsultan','1991-10-15','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(2,'00051909-73da-3dab-812a-57c31053a6e0','Mujur Warta Maheswara','Nelayan / Perikanan','1988-04-03','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(3,'3baea91a-159e-348e-9cd2-c33e71e197e0','Belinda Lestari','Industri','1993-01-14','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(4,'b7704961-3e9d-31b3-9108-4374f5732d79','Daruna Mandala M.Kom.','Jaksa','2007-12-30','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(5,'c65814a2-b781-3074-a1d3-a42b977cc4da','Cayadi Baktiono Najmudin S.Sos','Buruh Peternakan','2012-02-22','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(6,'dbb0a1b5-0a36-364a-b9fc-04f6effc7d1d','Cahyadi Zulkarnain','Imam Masjid','1990-10-23','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(7,'958b8874-cd75-3d8b-9581-fc618f4e37cb','Jindra Nugroho','Karyawan BUMD','1987-07-11','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(8,'b00d9382-8f55-3602-957f-9c6a8211caa5','Warta Pradana','Pemandu Wisata','1974-06-14','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(9,'5f04aa3f-6d11-3f02-9c2b-a50d432ad293','Gaduh Rudi Maryadi M.Kom.','Presiden','2009-01-26','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(10,'f4ece206-8309-3382-b602-7d08d60bcf7a','Kayla Endah Winarsih S.Farm','Pastor','2005-05-03','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(11,'425621bf-aa02-391b-976c-e7c5a0e1baef','Soleh Anggriawan','Buruh Tani / Perkebunan','1972-06-17','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(12,'485678c7-8484-3c44-9468-c0bbd6924756','Cahyadi Latupono','Dosen','2016-07-29','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(13,'50afa3fd-5db4-37fc-b870-742a0bddae67','Karna Cakrawangsa Nainggolan','Nahkoda','1974-07-18','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(14,'c774193a-18ed-3d3c-8ea8-f866ddadee3e','Cici Suartini','Nelayan / Perikanan','2014-05-01','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(15,'b6c578e4-616b-3813-8f11-3d3622e8541c','Dinda Mala Hassanah S.Psi','Pelaut','1984-12-16','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(16,'81d6e13c-952d-30bf-9221-b215dc07d652','Salimah Ilsa Rahimah M.Farm','Pengacara','1998-12-11','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(17,'dc6fdd15-886b-325c-929f-0c6e566e771c','Julia Gina Utami','Dokter','1982-06-16','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(18,'a3e2ad47-74b7-3bc7-bffd-5e12c13ad834','Victoria Kamila Usada','Juru Masak','1976-09-08','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(19,'31d6b34e-a84d-3316-95f3-f832d609fd67','Hasta Kadir Pangestu','Nelayan / Perikanan','1991-06-03','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(20,'83404925-354e-30c1-aae8-a273fa279d6c','Aurora Melani','Tukang Batu','1997-06-16','2021-09-15 07:01:42','2021-09-15 07:01:42'),
(21,'53f487a1-280b-3ad4-8cb0-6af1e8f34f1e','Zahra Kamaria Usamah','Industri','1978-11-20','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(22,'afeb6c52-9594-3a66-89b0-de2b049de5b7','Rika Laila Zulaika','Kepala Desa','1999-12-29','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(23,'3e07f609-0800-3493-824d-0dcbef4a7b11','Hani Farida','Perangkat Desa','1998-02-22','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(24,'147e3972-a196-3430-b2da-7f045bf6ad47','Lasmono Mangunsong S.H.','Penata Rias','2005-08-01','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(25,'1678e709-300d-3777-9884-0206136a8c3c','Manah Firgantoro S.Kom','Arsitek','1979-03-30','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(26,'2a8dfa4e-04f6-37c7-9b7f-57eee31c0af2','Jamalia Gasti Wulandari M.Ak','Nelayan / Perikanan','1999-08-18','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(27,'f0c25de3-9e2f-3fd8-9f40-128591d47f92','Cakrabuana Firgantoro S.E.I','Paraji','1970-09-18','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(28,'0851610c-bbed-36b9-ab0f-b45f406f2502','Artanto Saptono','Buruh Nelayan / Perikanan','1997-01-23','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(29,'1a05207a-bebf-36ba-9c6a-b80b249b8a47','Estiawan Margana Simanjuntak S.Pt','Dosen','2015-12-15','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(30,'afe469ab-17d9-31be-834d-3bf66ed0b9e8','Samiah Usada S.E.','Konstruksi','1994-08-08','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(31,'c30a107f-7c94-36bd-9208-edc2455a4a3e','Septi Halimah','Paraji','2012-06-07','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(32,'cededc0f-bd22-3a07-a3e6-f25caf17a342','Bakidin Cahyono Habibi S.Kom','Montir','2002-12-27','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(33,'26e2d14a-f149-38a1-8d7c-f600d776869b','Carla Calista Wahyuni S.Pt','Tukang Sol Sepatu','1997-01-01','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(34,'e54e3112-cefd-3ce1-966e-51784d8e9819','Gatot Lazuardi','Psikiater / Psikolog','2008-08-15','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(35,'82968423-f53a-3037-b6e9-ff533d62abde','Jinawi Vero Lazuardi','Pelajar / Mahasiswa','2002-01-16','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(36,'56ecf0ac-f80f-3f43-a130-b8fc05980b6a','Shania Haryanti M.M.','Peternak','1971-03-16','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(37,'63d30b86-c3e6-3ad4-9ddf-ccfdf7341694','Wirda Agnes Rahimah','Penata Rambut','1993-07-03','2021-09-15 07:01:43','2021-09-15 07:01:43'),
(38,'dc7ca1a1-68b0-3e78-8185-ee05b13a3e4a','Anom Virman Rajasa','Pastor','1997-04-30','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(39,'d6b43747-2dd7-3847-b834-173d9c164eae','Olivia Haryanti S.E.','Buruh Tani / Perkebunan','1988-12-07','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(40,'036b22d8-e09f-3e8b-86e6-d0a0802f5e82','Karen Lailasari','Tukang Jahit','1989-11-28','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(41,'e456cc36-d1e8-3a2e-bf52-5226a4344453','Cindy Wijayanti','Tukang Cukur','1977-10-23','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(42,'d5fcd208-80d4-3330-a2b8-f7c2bfba9a08','Saadat Tamba','Tukang Batu','1986-05-12','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(43,'33779aca-0b66-359c-a3ea-5c8ed2953f0a','Maya Hartati S.E.I','Tentara Nasional Indonesia (TNI)','1977-12-22','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(44,'7d6e7057-8539-3c5e-9a5e-59d285202bb9','Shakila Wahyuni','Nelayan / Perikanan','2017-03-29','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(45,'def4e3e6-7c8f-321b-ad8c-6b113ef19a41','Tania Purnawati','Perancang Busana','2002-08-15','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(46,'6dd225c6-56b0-3356-9903-7d9662db437d','Zelda Mardhiyah S.H.','Pialang','1997-12-23','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(47,'66145d8c-c988-3629-97f3-b169d3adbc4c','Prabu Jatmiko Thamrin S.Ked','Wartawan','2011-07-21','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(48,'a195a375-2739-3b47-83a0-77d85418f954','Lukita Kurniawan','Desainer','1971-02-25','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(49,'68bd98fc-b251-3082-97e2-08de56ece5ce','Nadia Mandasari S.Pt','Nahkoda','1993-04-05','2021-09-15 07:01:44','2021-09-15 07:01:44'),
(50,'272fff75-f31c-3416-89da-d3ecacc08010','Cawisadi Mahmud Santoso','Biarawati','1999-07-26','2021-09-15 07:01:44','2021-09-15 07:01:44');

/*Table structure for table `vw_user` */

DROP TABLE IF EXISTS `vw_user`;

/*!50001 DROP VIEW IF EXISTS `vw_user` */;
/*!50001 DROP TABLE IF EXISTS `vw_user` */;

/*!50001 CREATE TABLE  `vw_user`(
 `id_user` int(10) unsigned ,
 `user_key` varchar(255) ,
 `nama` varchar(255) ,
 `pekerjaan` varchar(255) ,
 `tgl_lahir` date ,
 `tgl_lahir_full` varchar(40) 
)*/;

/*View structure for view vw_user */

/*!50001 DROP TABLE IF EXISTS `vw_user` */;
/*!50001 DROP VIEW IF EXISTS `vw_user` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_user` AS select `tb_users`.`id_user` AS `id_user`,`tb_users`.`user_key` AS `user_key`,`tb_users`.`nama` AS `nama`,`tb_users`.`pekerjaan` AS `pekerjaan`,`tb_users`.`tgl_lahir` AS `tgl_lahir`,date_format(`tb_users`.`tgl_lahir`,'%d %b %Y') AS `tgl_lahir_full` from `tb_users` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
