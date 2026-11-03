-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: esports-organization
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget` (
  `idbudget` int NOT NULL AUTO_INCREMENT,
  `idemployee` int NOT NULL,
  `date` date DEFAULT NULL,
  `budget_allocated` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idbudget`),
  KEY `fk_budget_employee` (`idemployee`),
  CONSTRAINT `fk_budget_employee` FOREIGN KEY (`idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget`
--

LOCK TABLES `budget` WRITE;
/*!40000 ALTER TABLE `budget` DISABLE KEYS */;
INSERT INTO `budget` VALUES (1,1,'2025-01-01',6000.00),(2,2,'2025-01-01',6000.00),(3,3,'2025-01-01',6000.00),(4,4,'2025-01-01',6500.00),(5,5,'2025-01-01',6000.00),(6,6,'2025-01-01',6500.00),(7,7,'2025-01-01',5500.00),(8,8,'2025-01-01',5000.00),(9,9,'2025-01-01',5000.00),(10,10,'2025-01-01',4500.00),(11,11,'2025-01-01',5500.00),(12,12,'2025-01-01',5000.00),(13,13,'2025-01-01',4700.00),(14,14,'2025-01-01',5000.00),(15,15,'2025-01-01',5000.00),(16,16,'2025-01-01',4000.00),(17,17,'2025-01-01',4500.00),(18,18,'2025-01-01',4000.00),(19,19,'2025-01-01',4500.00),(20,20,'2025-01-01',4000.00),(21,21,'2025-01-01',5000.00),(22,22,'2025-01-01',4500.00),(23,23,'2025-01-01',4000.00),(24,24,'2025-01-01',4000.00),(25,25,'2025-01-01',4500.00),(26,26,'2025-01-01',5000.00),(27,27,'2025-01-01',4000.00),(28,28,'2025-01-01',4500.00),(29,29,'2025-01-01',4500.00),(30,30,'2025-01-01',4500.00);
/*!40000 ALTER TABLE `budget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `idemployee` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `IGN` varchar(255) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idemployee`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Jake','Howlett','Boaster','1995-05-25','110 Walnut Street Cheshire, CT 06410','Player'),(2,'Kajetan','Haremski','kaajak','2004-08-08','866 Cypress Court Venice, FL 34293','Player'),(3,'Emir','Beder','Alfajer','2005-06-10','25 Franklin Court Grand Blanc, MI 48439','Player'),(4,'Austin','Roberts','crashies','1997-12-20','49 Division Street Charleston, SC 29406','Player'),(5,'Тимофей','Хромов','Chronicle','2002-08-16','8867 Manor Drive Dacula, GA 30019','Player'),(6,'Milan','Meij','Milan','1998-03-07','34 Berkshire Drive Kingsport, TN 37660','Coach'),(7,'Casper','Rasmussen','Desmo','2000-04-19','777 Arlington Avenue Enterprise, AL 36330','Coach'),(8,'Óscar','Jiménez','Oscarinin','2003-06-11','45 Bayberry Drive Havertown, PA 19083','Player'),(9,'Iván','Díaz','Razork','2000-10-07','246 Summer Street Tacoma, WA 98444','Player'),(10,'Yun','Sung-won','Poby','2006-02-07','17 West Street Camas, WA 98607','Player'),(11,'Elias','Lipp','Upset','1999-12-16','3 Cambridge Court Brentwood, NY 11717','Player'),(12,'Mihael','Mehle','Mikyx','1998-11-02','1 Beech Street Valdosta, GA 31601','Player'),(13,'Fabian','Lohmann','GrabbZ','1995-01-14','385 Glenwood Drive Bethel Park, PA 15102','Coach'),(14,'Lars','Johansson','KRIMZ','1994-04-25','24 Heritage Drive Fayetteville, NC 28303','Player'),(15,'Benjamin','Bremer','blameF','1997-06-10','8750 Orchard Lane Fort Worth, TX 76110','Player'),(16,'Родіон','Смик','fear','2000-11-20','9106 Riverside Drive Reading, MA 01867','Player'),(17,'Дмитро','Семера','jambo','2004-10-14','932 5th Street North Salem, MA 01970','Player'),(18,'Микита','Скиба','jackasmo','2007-05-28','429 Church Road Hernando, MS 38632','Player'),(19,'Miks','Siliņš','Independent','1998-07-03','8 Valley Road Valrico, FL 33594','Coach'),(20,'Yuga','Horie','YukaF','2003-08-18','91 Fairview Road Blackwood, NJ 08012','Player'),(21,'Haruto','Seki','Kernel garcia','2005-04-18','78 Route 2 Chesapeake, VA 23320','Player'),(22,'Manato','Asada','Lible_Ace','2005-08-19','86 Chestnut Avenue Allen Park, MI 48101','Player'),(23,'Shuhei','Yamato','Shuhei Yamato','1998-08-31','739 Street Road Mountain View, CA 94043','Coach'),(24,'Haruto','Suzuki','takuron','2001-05-17','44 Cambridge Road Bayside, NY 11361','Analyst'),(25,'Tom','Pieksma','Deapek','2000-03-03','7179 Schoolhouse Lane Fresno, CA 93706','Player'),(26,'Jesse','Ojanen','Jeggz','2003-10-07','887 Briarwood Court Mchenry, IL 60050','Player'),(27,'Leonardo','Sarchi','Sarks','2002-11-26','7658 Eagle Street Irmo, SC 29063','Player'),(28,'Samuel','Morgan','Wizard','2001-08-16','375 Hawthorne Lane Stroudsburg, PA 18360','Player'),(29,'Antonio','Vázquez','CroqSon','2003-12-15','139 Holly Drive Caldwell, NJ 07006','Player'),(30,'Tristan','Savage','Saethus','1998-01-20','18 Front Street Muncie, IN 47302','Coach');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `idevent` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `idroster` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`idevent`),
  KEY `idroster_idx` (`idroster`),
  KEY `fk_roster_idx` (`idroster`),
  CONSTRAINT `fk_event_roster` FOREIGN KEY (`idroster`) REFERENCES `roster` (`idroster`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Valorant Champions Paris 2025',1,'2025-08-12','2025-10-05'),(2,'Valorant Masters Toronto 2025',1,'2025-06-07','2025-06-22'),(3,'Worlds 2025',2,'2025-10-14','2025-11-09'),(4,'LEC 2025 Summer',2,'2025-08-02','2025-09-28'),(5,'ALGS: 2025 Championship',4,'2025-01-29','2025-02-02');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `idpayment` int NOT NULL AUTO_INCREMENT,
  `idemployee` int NOT NULL,
  `account_number` varchar(20) DEFAULT NULL,
  `routing_number` varchar(9) DEFAULT NULL,
  `payday` tinyint DEFAULT NULL,
  PRIMARY KEY (`idpayment`),
  KEY `idemployee_idx` (`idemployee`),
  KEY `fk_employee_idx` (`idemployee`),
  CONSTRAINT `fk_payment_employee` FOREIGN KEY (`idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,'1234567890','021000021',15),(2,2,'9876543210','726473609',29),(3,3,'205604809','183606725',17),(4,4,'662643522','582768962',2),(5,5,'155201828','778148008',5),(6,6,'370262653','706606343',19),(7,7,'562217469','804157621',28),(8,8,'464344482','643104679',17),(9,9,'976064352','626725645',1),(10,10,'207941806','830652961',20),(11,11,'163332357','473027846',16),(12,12,'134783791','873345331',18),(13,13,'304009115','158379989',30),(14,14,'818660543','731917037',31),(15,15,'575574028','757378757',15),(16,16,'310659364','779306007',2),(17,17,'161678840','239116687',20),(18,18,'317432386','580030130',31),(19,19,'768187177','448932783',15),(20,20,'950050104','368137217',13),(21,21,'227577630','865544645',1),(22,22,'726761326','379230774',20),(23,23,'527008498','660557371',27),(24,24,'401713024','267717807',19),(25,25,'127298328','220208861',15),(26,26,'504611570','166058958',1),(27,27,'907546821','693509750',22),(28,28,'253318050','769516941',20),(29,29,'158843843','949376235',25),(30,30,'996494731','447215053',31);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roster`
--

DROP TABLE IF EXISTS `roster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roster` (
  `idroster` int NOT NULL AUTO_INCREMENT,
  `game` varchar(255) DEFAULT NULL,
  `roster_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idroster`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roster`
--

LOCK TABLES `roster` WRITE;
/*!40000 ALTER TABLE `roster` DISABLE KEYS */;
INSERT INTO `roster` VALUES (1,'Valorant','FNATIC VAL'),(2,'League of Legends','FNATIC League'),(3,'Counter Strike 2','FNATIC CS'),(4,'Apex Legends','FNATIC Apex'),(5,'Tom Clancy\'s Rainbow Six Siege','FNATIC R6');
/*!40000 ALTER TABLE `roster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roster_member`
--

DROP TABLE IF EXISTS `roster_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roster_member` (
  `idroster_member` int NOT NULL AUTO_INCREMENT,
  `idroster` int NOT NULL,
  `idemployee` int NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idroster_member`),
  KEY `idroster_idx` (`idroster`),
  KEY `idemployee_idx` (`idemployee`),
  CONSTRAINT `fk_roster_members_employee` FOREIGN KEY (`idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_roster_members_roster` FOREIGN KEY (`idroster`) REFERENCES `roster` (`idroster`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roster_member`
--

LOCK TABLES `roster_member` WRITE;
/*!40000 ALTER TABLE `roster_member` DISABLE KEYS */;
INSERT INTO `roster_member` VALUES (1,1,1,'Controller/IGL'),(2,1,2,'Duelist'),(3,1,3,'Sentinel'),(4,1,4,'Info Initiator'),(5,1,5,'Flex'),(6,1,6,'Head Coach'),(7,1,7,'Assistant Coach'),(8,2,8,'Top'),(9,2,9,'Jungle'),(10,2,10,'Mid'),(11,2,11,'ADC'),(12,2,12,'Support'),(13,2,13,'Head Coach'),(14,3,14,'Support'),(15,3,15,'Lurker/IGL'),(16,3,16,'Rifler'),(17,3,17,'AWPer'),(18,3,18,'Rifler'),(19,3,19,'Head Coach'),(20,4,20,'IGL'),(21,4,21,'N/A'),(22,4,22,'N/A'),(23,4,23,'Head Coach'),(24,4,24,'Main Analyst'),(25,5,25,'Support'),(26,5,26,'Flex'),(27,5,27,'Flex'),(28,5,28,'IGL'),(29,5,29,'Entry'),(30,5,30,'Head Coach');
/*!40000 ALTER TABLE `roster_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-03 16:00:22
