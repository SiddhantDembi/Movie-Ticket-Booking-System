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
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `movie_ID` int NOT NULL,
  `hall_ID` int NOT NULL,
  `theatre_ID` int NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `show_date` date NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_movie` (`movie_ID`),
  KEY `fk_halltheatre` (`hall_ID`,`theatre_ID`),
  CONSTRAINT `fk_halltheatre` FOREIGN KEY (`hall_ID`, `theatre_ID`) REFERENCES `hall` (`ID`, `theatre_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_movie` FOREIGN KEY (`movie_ID`) REFERENCES `movie` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES (1,1,1,101,'04:00:00','05:00:00','2023-04-13',200),(2,1,1,102,'04:00:00','05:00:00','2023-04-13',200),(3,2,3,102,'04:00:00','04:01:20','2023-12-12',100),(4,3,1,104,'04:00:00','04:01:20','2023-12-12',150),(5,2,3,108,'04:00:00','04:01:20','2023-12-14',200),(6,3,3,102,'04:00:00','04:01:20','2023-12-14',150),(7,4,3,101,'04:00:00','04:01:20','2023-12-14',200),(8,4,2,106,'04:00:00','04:01:20','2023-12-15',180),(9,5,2,105,'04:00:00','04:01:20','2023-12-15',250),(10,6,1,107,'04:00:00','04:01:20','2023-12-15',220);
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
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
