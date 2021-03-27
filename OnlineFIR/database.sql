/*
SQLyog Ultimate v11.33 (32 bit)
MySQL - 5.0.24-community-nt : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `test`;

/*Table structure for table `adminlogintab` */

DROP TABLE IF EXISTS `adminlogintab`;

CREATE TABLE `adminlogintab` (
  `userid` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogintab` */

insert  into `adminlogintab`(`userid`,`pass`) values ('yugul','1234');

/*Table structure for table `complaintab` */

DROP TABLE IF EXISTS `complaintab`;

CREATE TABLE `complaintab` (
  `cid` int(11) NOT NULL auto_increment,
  `fname` varchar(30) default NULL,
  `contact` varchar(20) default NULL,
  `address` varchar(50) default NULL,
  `email` varchar(20) default NULL,
  `subject` varchar(20) default NULL,
  `complain` varchar(500) default NULL,
  `suspect` varchar(100) default NULL,
  `additional` varchar(200) default NULL,
  `status` varchar(20) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaintab` */

insert  into `complaintab`(`cid`,`fname`,`contact`,`address`,`email`,`subject`,`complain`,`suspect`,`additional`,`status`) values (1,'abc','3435','abc','fortest@gmail.com','threads','wertyu','dfg','ertyu','Pending');

/*Table structure for table `firtab` */

DROP TABLE IF EXISTS `firtab`;

CREATE TABLE `firtab` (
  `fid` int(11) NOT NULL auto_increment,
  `fname` varchar(30) default NULL,
  `contact` varchar(20) default NULL,
  `address` varchar(100) default NULL,
  `email` varchar(30) default NULL,
  `subject` varchar(50) default NULL,
  `complain` varchar(500) default NULL,
  `suspect` varchar(50) default NULL,
  `additional` varchar(200) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `firtab` */

/*Table structure for table `policelogintab` */

DROP TABLE IF EXISTS `policelogintab`;

CREATE TABLE `policelogintab` (
  `userid` varchar(30) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `policelogintab` */

insert  into `policelogintab`(`userid`,`password`) values ('yugul','123');

/*Table structure for table `signuptab` */

DROP TABLE IF EXISTS `signuptab`;

CREATE TABLE `signuptab` (
  `name` varchar(20) default NULL,
  `id` varchar(20) NOT NULL,
  `password` varchar(20) default NULL,
  `address` varchar(50) default NULL,
  `city` varchar(20) default NULL,
  `contact` varchar(20) default NULL,
  `dob` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `signuptab` */

insert  into `signuptab`(`name`,`id`,`password`,`address`,`city`,`contact`,`dob`) values ('yugul solanki','101','123','abc','Indore','123','2021-11-11');

/*Table structure for table `userlogintab` */

DROP TABLE IF EXISTS `userlogintab`;

CREATE TABLE `userlogintab` (
  `userid` varchar(20) default NULL,
  `password` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userlogintab` */

insert  into `userlogintab`(`userid`,`password`) values ('yugul','123'),('yash','123'),('deepraj','123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
