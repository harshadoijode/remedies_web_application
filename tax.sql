-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.36-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gfgc_tax
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ gfgc_tax;
USE gfgc_tax;

--
-- Table structure for table `gfgc_tax`.`adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE `adminlogin` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_tax`.`adminlogin`
--

/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;


--
-- Table structure for table `gfgc_tax`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`customerid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_tax`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`name`,`address`,`phone`,`password`,`email`,`customerid`) VALUES 
 ('shivi','shimoga','9962256523','Shivu@123','shivu@gmail.com',8),
 ('ullas','smg','9964121890','Ullas@123','ullas@gmail.com',9),
 ('raghu','smg','9964121899','Raghu@123','raghu@gmail.com',10),
 ('harsha','hhr','7483379791','Harsha@123','harsha@gmail.com',13),
 ('Lakshmi','Shimoga','9876543210','Abcd@1234','lakshmi@gmail.com',12);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_tax`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) DEFAULT NULL,
  `feedback` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_tax`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`feedback`) VALUES 
 ('ravish','nice web site'),
 ('ravi','nice information');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `gfgc_tax`.`paybill`
--

DROP TABLE IF EXISTS `paybill`;
CREATE TABLE `paybill` (
  `rrno` varchar(50) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `cardno` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL,
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_tax`.`paybill`
--

/*!40000 ALTER TABLE `paybill` DISABLE KEYS */;
INSERT INTO `paybill` (`rrno`,`amount`,`cardno`,`cvv`,`tid`) VALUES 
 ('12412','100','123456789990','989',1);
/*!40000 ALTER TABLE `paybill` ENABLE KEYS */;


--
-- Table structure for table `gfgc_tax`.`posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`message`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_tax`.`posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`message`) VALUES 
 ('hi how are you'),
 ('hi where is milana'),
 ('how can i pay road tax'),
 ('How can I reach jog'),
 ('how is lion safari '),
 ('how malpe'),
 ('i am lost in goa'),
 ('where is hospital'),
 ('where is hotel paradise'),
 ('where is metro'),
 ('where is railway station '),
 ('where is sahydri'),
 ('where is stadum');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Table structure for table `gfgc_tax`.`reply`
--

DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_tax`.`reply`
--

/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` (`question`,`answer`) VALUES 
 ('where is hotel paradise','new gopi circle'),
 ('hi how are you','i am fine'),
 ('where is hospital','metro is not good'),
 ('where is metro','near stadum'),
 ('how malpe','its is good  childresn'),
 ('how is lion safari','it is good to watch'),
 ('how is lion safari','it is good to watch'),
 ('i am lost in goa','hi can i help u'),
 ('How can I reach jog','Through Sagar road'),
 ('where is railway station','railwaystaion is near sr circle'),
 ('where is sahydri','near tv station'),
 ('hi where is milana','near stadium'),
 ('how can i pay road tax','you can pay online');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;


--
-- Table structure for table `gfgc_tax`.`taxinfo`
--

DROP TABLE IF EXISTS `taxinfo`;
CREATE TABLE `taxinfo` (
  `taxname` varchar(50) NOT NULL,
  `description` text,
  `applicablefor` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_tax`.`taxinfo`
--

/*!40000 ALTER TABLE `taxinfo` DISABLE KEYS */;
INSERT INTO `taxinfo` (`taxname`,`description`,`applicablefor`) VALUES 
 ('Migraine','Ginger, Basil leaves, 1 cup water','Take 1 cup of water, add 8 basil leaves with grated ginger and boil it.\r\nPour the liquid into the cup along with the leaves and ginger, wait for 5 minutes to cool it.\r\nDrink this tea regularly 2 to 3 times a day.'),
 ('cold','Honey, Lemon, Water','Squeeze a lemon in a glass of warm water, sweeten it with a tsp of honey and drink it twice daily for at least 3 days.'),
 ('Cough','ginger','add'),
 ('fced','rcdwr3cdews','r3dceswx');
/*!40000 ALTER TABLE `taxinfo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
