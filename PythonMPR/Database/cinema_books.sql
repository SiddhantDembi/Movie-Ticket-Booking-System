-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `customer_ID` int NOT NULL,
  `seat_ID` int NOT NULL,
  `show_ID` int NOT NULL,
  `payment_ID` int NOT NULL,
  KEY `fk_customer` (`customer_ID`),
  KEY `fk_show` (`show_ID`),
  KEY `fk_payment` (`payment_ID`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`customer_ID`) REFERENCES `customer` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_payment` FOREIGN KEY (`payment_ID`) REFERENCES `payment` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_show` FOREIGN KEY (`show_ID`) REFERENCES `shows` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (3,1,1,20),(3,2,1,21),(3,3,1,22),(15,96,1,23),(3,4,1,24),(3,5,1,25),(3,6,1,25),(3,7,1,25),(3,8,1,26),(3,9,1,27),(3,1,2,28),(3,10,1,29),(3,12,1,30),(3,33,2,31),(3,66,1,32),(3,34,3,33),(3,35,3,33),(3,36,3,33),(2,23,3,34),(3,100,1,35),(3,54,1,36),(3,63,1,37),(3,68,1,38),(3,34,1,39),(1,17,1,40),(3,33,1,41),(3,81,1,42),(3,50,1,43),(3,25,1,44),(3,24,3,45),(3,7,10,46),(16,8,2,47),(2,88,5,48),(17,19,1,49),(17,20,1,49),(3,100,5,50),(18,91,1,51),(18,92,1,51),(3,99,1,52),(3,10,9,53),(18,9,9,54),(19,11,1,55),(20,97,1,56),(20,98,1,56);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-01  1:42:12
