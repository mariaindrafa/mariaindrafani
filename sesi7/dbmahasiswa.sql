
/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - dbmahasiswa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbmahasiswa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dbmahasiswa`;

/*Table structure for table `tbuser` */

DROP TABLE IF EXISTS `tbuser`;

CREATE TABLE `tbuser` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `passkey` varchar(255) DEFAULT NULL,
  `iduser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tbuser` */

insert  into `tbuser`(`id`,`nama`,`email`,`username`,`passkey`,`iduser`) values 
(1,'Joni Senior','Joniiuwaw@gmail.com','Joniii','202cb962ac59075b964b07152d234b70','10d369bb1d072756544df6b70a8064ff'),
(2,'Udil','Udilsurbakti@gmail.com','Udil','827ccb0eea8a706c4c34a16891f84e7b','d27f34f5555e5b0e7c6d2f02cdafc125');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;