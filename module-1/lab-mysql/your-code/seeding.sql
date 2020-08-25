-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `VIN` varchar(45) NOT NULL,
  `Manufacturer` varchar(45) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Year` int(4) NOT NULL,
  `Color` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),(1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),(3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),(4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),(5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Customer` (
  `id` int(11) NOT NULL,
  `Customer_id` int(5) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State/Province` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Postal` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (0,10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045'),(1,20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130'),(2,30001,'Napoleon Bonaparte','+33 179 75 40 00','-','40 Rue du Colisée','Paris','Ile-de-France','France','75008');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Invoice` (
  `id` int(11) NOT NULL,
  `Invoicenumber` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `car_id` int(11) NOT NULL,
  `Customer_id` int(11) NOT NULL,
  `Salesperson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`car_id`,`Customer_id`,`Salesperson_id`),
  KEY `fk_Invoice_car_idx` (`car_id`),
  KEY `fk_Invoice_Customer1_idx` (`Customer_id`),
  KEY `fk_Invoice_Salesperson1_idx` (`Salesperson_id`),
  CONSTRAINT `fk_Invoice_Customer1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_Invoice_Salesperson1` FOREIGN KEY (`Salesperson_id`) REFERENCES `salesperson` (`id`),
  CONSTRAINT `fk_Invoice_car` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
INSERT INTO `Invoice` VALUES (0,'852399038','2018-08-22',0,1,3),(1,'731166526','2018-12-31',3,0,5),(2,'271135104','2019-01-22',2,2,7);
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salesperson`
--

DROP TABLE IF EXISTS `Salesperson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Salesperson` (
  `id` int(11) NOT NULL,
  `STAFF_id` varchar(5) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Store` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salesperson`
--

LOCK TABLES `Salesperson` WRITE;
/*!40000 ALTER TABLE `Salesperson` DISABLE KEYS */;
INSERT INTO `Salesperson` VALUES (0,'00001','Petey Cruiser','Madrid'),(1,'00002','Anna Sthesia','Barcelona'),(2,'00003','Paul Molive','Berlin'),(3,'00004','Gail Forcewind','Paris'),(4,'00005','Paige Turner','Mimia'),(5,'00006','Bob Frapples','Mexico City'),(6,'00007','Walter Melon','Amsterdam'),(7,'00008','Shonda Leer','Sao Paulo');
/*!40000 ALTER TABLE `Salesperson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-25 18:05:13
