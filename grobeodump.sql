-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: grobeoDB
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buried`
--

DROP TABLE IF EXISTS `buried`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buried` (
  `buried_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `birth_date` date NOT NULL,
  `death_date` date NOT NULL,
  `funeral_date` date NOT NULL,
  `cause_of_death` varchar(60) NOT NULL,
  `satisfaction_rate` int(10) DEFAULT NULL,
  `quarter_id` int(10) NOT NULL,
  `outfit_id` int(10) NOT NULL,
  `funeral_home_id` int(10) NOT NULL,
  `container_id` int(10) DEFAULT NULL,
  `priest_id` int(10) NOT NULL,
  `temple_id` int(10) NOT NULL,
  PRIMARY KEY (`buried_id`),
  KEY `FKburied339861` (`quarter_id`),
  KEY `FKburied422751` (`outfit_id`),
  KEY `FKburied279872` (`funeral_home_id`),
  KEY `FKburied996959` (`container_id`),
  KEY `FKburied911363` (`priest_id`,`temple_id`),
  CONSTRAINT `FKburied279872` FOREIGN KEY (`funeral_home_id`) REFERENCES `funeral_homes` (`funeral_home_id`),
  CONSTRAINT `FKburied339861` FOREIGN KEY (`quarter_id`) REFERENCES `quarters` (`quarter_id`),
  CONSTRAINT `FKburied422751` FOREIGN KEY (`outfit_id`) REFERENCES `outfits` (`outfit_id`),
  CONSTRAINT `FKburied911363` FOREIGN KEY (`priest_id`, `temple_id`) REFERENCES `priests_temples` (`priest_id`, `temple_id`),
  CONSTRAINT `FKburied996959` FOREIGN KEY (`container_id`) REFERENCES `containers` (`container_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buried`
--

LOCK TABLES `buried` WRITE;
/*!40000 ALTER TABLE `buried` DISABLE KEYS */;
INSERT INTO `buried` VALUES (1,'Florentyna','Maćkowiak','1900-01-22','1999-05-03','1999-05-09','marskość wątroby',3,550,48,5,10,4,6),(2,'Artur','Rachoń','1940-02-22','1993-05-03','1993-05-03','rany postrzałowe',4,538,5,3,11,1,2),(3,'Marian','Nowack','1950-05-03','2011-07-04','2011-07-10','samobójstwo',4,530,45,5,13,9,6),(4,'Anita','Nowack','1950-05-03','2011-07-04','2011-07-10','samobójstwo',4,530,15,5,13,9,6),(5,'Lech','Piotrowicz','1977-12-12','2017-12-12','2017-12-15','rak prostaty',5,527,24,6,1,5,1),(6,'Antoni','Banasiak','1927-12-14','2017-09-12','2017-09-15','AIDS',5,522,1,7,9,5,1),(7,'Janusz','Mehoffer','1933-01-30','1989-04-02','1989-04-09','udar mózgu',1,521,6,7,8,6,1),(8,'Vito','Gribocci','1966-04-30','2000-01-01','2000-01-04','uduszenie',1,511,11,6,11,6,1),(9,'Marek','Ardanowski','1946-09-30','2001-09-01','2001-09-04','zawał',1,507,11,6,12,7,1),(10,'Michał','Masson','1948-09-30','2008-09-01','2008-09-04','zawał',1,502,19,7,12,7,1),(11,'Szymon','Wiśniewski','1988-03-12','2008-03-22','2008-03-26','przedawkowanie',2,489,25,6,13,5,1),(12,'Marcin','Śliwkowski','1998-07-12','2018-07-22','2018-07-26','przedawkowanie',4,486,25,6,3,5,1),(13,'Jakub','Gołębiewski','1918-01-12','2018-03-12','2018-03-26','wylew',4,455,25,6,3,5,1),(14,'Krzysztof','Szczupak','1924-03-13','2013-04-03','2013-04-10','wylew',3,443,19,7,4,2,2),(15,'Filip','Płotka','1933-03-13','2011-04-03','2011-04-10','zapalenie płuc',5,439,21,7,6,3,2),(16,'Mikołaj','Meller','1944-04-13','2005-04-03','2005-04-10','zapalenie płuc',5,429,21,7,6,6,1),(17,'Józef','Metalin','1899-02-13','2000-02-03','2005-02-10','zapalenie płuc',5,428,19,6,11,5,1),(18,'Alojzy','Millter','1969-11-11','2000-11-11','2000-11-14','malaria',5,421,19,6,11,5,1),(19,'Marek','Zedoniuk','1963-11-11','2005-11-11','2005-12-12','dżuma',2,413,14,6,13,5,1),(20,'Witold','Zedoniuk','1963-11-11','2005-11-11','2005-12-12','dżuma',2,407,14,6,13,7,1),(21,'Marzena','Ocena','1955-10-13','2006-04-04','2005-04-05','dżuma',1,393,29,1,13,13,4),(22,'Joanna','Gulbinowicz','1943-11-01','2005-10-11','2005-10-14','dżuma',2,394,11,1,13,13,4),(23,'Mosze','Moszbacher','1940-06-01','2005-06-11','2005-06-14','dżuma',3,384,10,2,12,14,4),(24,'Mosze','Goldenberg','1940-06-04','2003-06-14','2003-06-16','dżuma',3,383,10,2,12,14,4),(25,'Aaron','Wardenstein','1950-06-04','2002-06-14','2002-06-16','rak płuc',3,380,22,3,3,15,4),(26,'Yossif','Trocki','1948-03-03','2001-03-13','2001-03-16','rak żołądka',3,376,10,4,6,13,4),(27,'Lew','Bronsztajn','1958-06-04','2000-06-14','2002-06-16','rak płuc',3,378,22,3,3,15,4),(28,'Lew','Bayerline','1948-03-03','2001-03-13','2001-03-16','rak płuc',3,376,10,4,6,13,4),(29,'Zbigniew','Wójcik','1959-04-07','2012-07-13','2012-07-17','alkoholizm',4,195,23,4,12,4,3),(30,'Jan','Wójcik','1929-06-17','1993-02-23','1993-02-25','alkoholizm',5,197,22,4,13,4,3),(31,'Walerija','Żurawlewa','1970-12-24','2015-11-13','2015-11-13','przemęczenie',3,203,27,5,11,8,3),(32,'Walerija','Żurawlewa','1970-12-24','2015-11-13','2015-11-13','przemęczenie',3,203,27,5,11,8,3),(33,'Janja','Lesar','1973-07-22','2011-01-19','2011-01-23','przemęczenie',2,207,28,5,5,9,3),(34,'Natalia','Głębocka','1992-05-30','2005-01-29','2005-02-01','zawał',5,209,31,6,8,9,3),(35,'Anna','Jagodzińska','1994-10-03','2002-10-28','2002-10-30','krwotok',1,215,34,6,10,1,2),(36,'Dominika','Tajner','1984-03-13','2012-07-23','2012-07-27','wypadek',2,221,37,5,2,2,2),(37,'Katarzyna','Wuman','1994-06-21','2017-06-12','2017-06-14','postrzał',5,223,40,2,1,3,2),(38,'Mariusz','Węgłowski','1974-02-19','2000-05-03','2000-05-08','postrzał',3,230,5,7,3,10,2),(39,'Jakub','Kucner','1988-05-11','2013-09-17','2013-09-19','zabójstwo',4,231,6,2,4,10,2),(40,'Tomasz','Barański','1972-08-19','2003-01-27','2003-02-01','wypadek',4,239,8,3,6,11,2),(41,'Paweł','Gawrychowski','1985-04-26','2018-02-16','2018-02-18','porażenie',5,252,11,1,6,12,2),(42,'Krzysztof','Loryś','1954-05-03','2019-03-16','2019-03-20','wstrząs anafilaktyczny',5,255,15,2,11,12,2),(43,'Łukasz','Jeż','1989-12-04','2018-12-02','2018-12-03','wstrząs mózgu',3,262,16,3,13,5,1),(44,'Artur','Jeż','1999-04-12','2013-05-02','2013-05-02','wypadek',4,267,18,1,1,6,1),(45,'Krzysztof','Sikora','1920-01-01','2010-01-02','2010-01-06','wypadek',3,271,20,1,4,7,1),(46,'Mariusz','Kowcz','1996-01-11','2007-11-12','2007-11-14','zawał',5,279,23,4,10,4,3),(47,'Paweł','Kowcz','1998-01-12','2014-05-13','2014-05-15','wypadek',5,296,24,4,4,8,3),(48,'Jerzy','Zbożniak','1962-06-06','2001-06-06','2001-06-09','promieniowanie',3,297,25,2,11,12,2),(49,'Mosze','Bosze','1920-04-16','2000-03-10','2000-03-12','samospalenie',1,307,3,3,1,13,4),(50,'Onja','Hava','1920-04-16','1999-05-14','1999-05-16','zawał',5,316,33,2,2,14,4),(51,'Wano','Nagila','1947-10-24','1991-02-15','1991-02-17','wylew',4,317,21,1,4,15,4),(52,'Moko','Wenis','1952-09-22','1989-03-12','1989-03-13','wypadek',3,327,6,2,5,13,4),(53,'Meli','Melum','1963-02-12','2001-03-02','2001-03-05','wypadek',2,329,16,3,8,14,4),(54,'Grodi','Mokalo','1923-10-01','2010-06-12','2010-06-15','samospalenie',2,347,16,3,8,14,4),(55,'Hali','Hava','1934-09-01','2017-09-17','2017-09-18','zabójstwo',5,362,18,2,12,13,4),(56,'Maro','Fikaro','1950-09-30','2002-02-12','2002-02-14','rak płuc',4,338,12,1,12,14,4),(57,'Halina','Stój','1955-06-12','2019-05-21','2019-05-23','rak płuc',5,1,27,3,9,1,2),(58,'Marek','Talarek','1900-04-21','2000-10-10','2000-10-10','wylew',4,2,3,2,1,6,1),(59,'Maria','Wiśniewska','1940-12-13','1990-06-01','1990-06-05','wypadek',1,14,29,1,3,4,3),(60,'Bogdan','Mrówczak','1937-04-01','2005-09-09','2005-09-15','wypadek samochodowy',1,32,15,4,4,2,2),(61,'Paweł','Gaweł','1990-07-07','1990-07-08','1990-07-09','uduszenie',5,34,1,2,2,10,2),(62,'Stefan','Wiesiek','1950-01-01','2010-07-05','2010-07-07','samobójstwo',5,14,39,1,2,12,2),(63,'Stanley','Kowalski','1938-05-31','2005-06-30','2005-07-14','zawał',4,43,20,1,10,11,2),(64,'Danuta','Pętla','1960-02-25','1990-04-09','1990-04-10','wypadek samochodowy',5,51,35,4,11,1,2),(65,'Stanisław','Zdzisław','1900-08-13','2019-05-01','2019-05-04','zapalenie płuc',4,52,24,4,7,2,2),(66,'Jarosław','Ryży','1970-12-13','2010-11-01','2010-11-03','przedawkowanie',3,55,14,2,6,10,2),(67,'Bronisława','Maj','1954-03-03','2015-12-03','2015-12-05','zadławienie',2,60,34,1,12,12,2),(68,'Beata','Dyszyło','1928-07-29','1999-01-04','1999-01-10','rak żołądka',3,62,40,3,5,2,2),(69,'Lech','Gęsiowski','1949-06-18','2010-04-10','2010-04-18','samospalenie',5,67,16,4,11,1,2),(70,'Tadeusz','Wajcheprzeusz','1930-08-22','2014-03-03','2014-03-08','zawał',4,69,23,3,13,3,2),(71,'Karolina','Szynka','1944-10-04','2005-04-16','2005-04-20','wylew',1,74,46,1,2,8,3),(72,'Muhammad','Babali','1956-04-09','2011-02-06','2011-02-11','morderstwo',1,76,13,4,12,16,5),(73,'Roch','Pawlach','1920-09-08','2001-05-30','2001-06-01','utonięcie',5,87,12,3,5,10,2),(74,'Edsger','Dijkstra','1940-07-02','2002-09-23','2002-09-27','zawał',3,99,3,4,6,4,6),(75,'Janusz','Lublin','1945-12-24','2019-04-19','2019-04-22','parkinson',3,101,4,4,4,1,2),(76,'Barbara','Dodowska','1970-03-08','1995-07-02','1995-07-06','samobójstwo',1,125,27,2,3,12,2),(77,'Jan','Kalwin','1940-01-27','2012-03-15','2012-03-19','wypadek samochodowy',4,128,19,2,10,3,2),(78,'Zdzisław','Dynia','1970-11-19','2018-10-10','2018-10-13','wylew',5,136,16,4,11,1,2),(79,'Muhammad','Abn','1920-04-12','2000-02-27','2000-03-04','morderstwo',1,140,14,1,2,10,2),(80,'Katarzyna','Wielka','1890-10-10','2010-05-30','2010-06-04','udar',5,156,28,4,8,2,2),(81,'Stefania','Klarnet','1920-11-07','2003-04-11','2003-04-15','katastrofa lotnicza',5,161,40,2,9,10,2),(82,'Dawid','Buonarotti','1933-10-06','1999-04-04','1999-04-05','AIDS',4,168,4,4,1,3,2),(83,'Jarosław','Polskęzbaw','1944-08-01','1999-09-01','1999-09-10','morderstwo',2,172,11,4,5,1,2),(84,'Jerzy','Pietruszko','1939-09-01','2014-02-21','2014-02-26','nerwica',5,185,9,2,13,12,2);
/*!40000 ALTER TABLE `buried` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER before_buried_insert_check_new_rate BEFORE INSERT ON buried FOR EACH ROW BEGIN IF NEW.satisfaction_rate NOT IN (1, 2, 3, 4, 5) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot add or update row: only VALUES IN (1, 2, 3, 4, 5) allowed in satisfaction_rate column'; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER before_buried_insert_check_quarter_vacancy BEFORE INSERT ON buried FOR EACH ROW BEGIN IF NEW.quarter_id IN (SELECT quarter_id FROM quarters WHERE tombstone_id IS NOT NULL) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Only quarters with tombstone_id NULL are vacant, adding to an already occupied quarter requires administrator interference'; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER before_buried_insert_check_date_order BEFORE INSERT ON buried FOR EACH ROW BEGIN IF (NEW.death_date < NEW.birth_date OR NEW.funeral_date < NEW.death_date)  THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot add or update row: it should be NEW.death_date >= NEW.birth_date AND NEW.funeral_date >= NEW.death_date'; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER after_buried_insert_calculate_avg_rate AFTER INSERT ON buried FOR EACH ROW BEGIN UPDATE funeral_homes SET average_rate = (SELECT ROUND(SUM(satisfaction_rate)/COUNT(satisfaction_rate), 1) FROM buried WHERE funeral_home_id = NEW.funeral_home_id) WHERE funeral_home_id = NEW.funeral_home_id; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER before_buried_update_check_new_rate BEFORE UPDATE ON buried FOR EACH ROW BEGIN IF NEW.satisfaction_rate NOT IN (1, 2, 3, 4, 5) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot add or update row: only VALUES IN (1, 2, 3, 4, 5) allowed in satisfaction_rate column'; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER before_buried_update_check_date_order BEFORE UPDATE ON buried FOR EACH ROW BEGIN IF (NEW.death_date < NEW.birth_date OR OLD.death_date < NEW.birth_date OR NEW.death_date < OLD.birth_date OR NEW.funeral_date < NEW.death_date OR OLD.funeral_date < NEW.death_date OR NEW.funeral_date < OLD.death_date)  THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot add or update row: it should be death_date >= birth_date AND funeral_date >= death_date'; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER before_buried_update_check_quarter_vacancy BEFORE UPDATE ON buried FOR EACH ROW BEGIN IF NEW.quarter_id IN (SELECT quarter_id FROM quarters WHERE tombstone_id IS NOT NULL) THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Only quarters with tombstone_id NULL are vacant, adding to an already occupied quarter requires administrator interference'; END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER after_buried_update_calculate_avg_rate AFTER UPDATE ON buried FOR EACH ROW BEGIN UPDATE funeral_homes SET average_rate = (SELECT ROUND(SUM(satisfaction_rate)/COUNT(satisfaction_rate), 1) FROM buried WHERE funeral_home_id = NEW.funeral_home_id) WHERE funeral_home_id = NEW.funeral_home_id; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER after_buried_delete_calculate_avg_rate AFTER DELETE ON buried FOR EACH ROW BEGIN UPDATE funeral_homes SET average_rate = (SELECT ROUND(SUM(satisfaction_rate)/COUNT(satisfaction_rate), 1) FROM buried WHERE funeral_home_id = OLD.funeral_home_id) WHERE funeral_home_id = OLD.funeral_home_id; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cemeteries`
--

DROP TABLE IF EXISTS `cemeteries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cemeteries` (
  `cemetery_id` int(10) NOT NULL AUTO_INCREMENT,
  `voivodeship` varchar(30) NOT NULL,
  `county` varchar(30) NOT NULL,
  `locality` varchar(30) NOT NULL,
  `street` varchar(30) NOT NULL,
  `faith` varchar(30) NOT NULL,
  PRIMARY KEY (`cemetery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cemeteries`
--

LOCK TABLES `cemeteries` WRITE;
/*!40000 ALTER TABLE `cemeteries` DISABLE KEYS */;
INSERT INTO `cemeteries` VALUES (1,'dolnośląskie','Wrocław','Wrocław','Osobowicka','komunalny'),(2,'dolnośląskie','Wrocław','Wrocław','Grabiszyńska','komunalny'),(3,'dolnośląskie','Wrocław','Wrocław','Bujwida','rzymskokatolicki'),(4,'dolnośląskie','Wrocław','Wrocław','Lotnicza','żydowski'),(5,'opolskie','Opole','Opole','Cmentarna','komunalny'),(6,'opolskie','prudnicki','Biała','Majowa','komunalny'),(7,'wielkopolskie','poznański','Pobiedziska','Polna','komunalny');
/*!40000 ALTER TABLE `cemeteries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cemeteries_cleaning_companies`
--

DROP TABLE IF EXISTS `cemeteries_cleaning_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cemeteries_cleaning_companies` (
  `cemetery_id` int(10) NOT NULL,
  `cleaning_company_id` int(10) NOT NULL,
  PRIMARY KEY (`cemetery_id`,`cleaning_company_id`),
  KEY `FKcemeteries180361` (`cleaning_company_id`),
  CONSTRAINT `FKcemeteries180361` FOREIGN KEY (`cleaning_company_id`) REFERENCES `cleaning_companies` (`cleaning_company_id`),
  CONSTRAINT `FKcemeteries284482` FOREIGN KEY (`cemetery_id`) REFERENCES `cemeteries` (`cemetery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cemeteries_cleaning_companies`
--

LOCK TABLES `cemeteries_cleaning_companies` WRITE;
/*!40000 ALTER TABLE `cemeteries_cleaning_companies` DISABLE KEYS */;
INSERT INTO `cemeteries_cleaning_companies` VALUES (1,1),(2,1),(3,1),(4,1),(6,1),(1,2),(2,2),(3,2),(4,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3);
/*!40000 ALTER TABLE `cemeteries_cleaning_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cleaning_companies`
--

DROP TABLE IF EXISTS `cleaning_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cleaning_companies` (
  `cleaning_company_id` int(10) NOT NULL AUTO_INCREMENT,
  `price` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`cleaning_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cleaning_companies`
--

LOCK TABLES `cleaning_companies` WRITE;
/*!40000 ALTER TABLE `cleaning_companies` DISABLE KEYS */;
INSERT INTO `cleaning_companies` VALUES (1,30,'SZMATEX'),(2,25,'MOPO-POL'),(3,21,'Polish Groby');
/*!40000 ALTER TABLE `cleaning_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `containers`
--

DROP TABLE IF EXISTS `containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `containers` (
  `container_id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `manufacturer` varchar(30) NOT NULL,
  `material` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`container_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `containers`
--

LOCK TABLES `containers` WRITE;
/*!40000 ALTER TABLE `containers` DISABLE KEYS */;
INSERT INTO `containers` VALUES (1,'urna','Arcum','granit',500),(2,'urna','Funer','mosiądz',250),(3,'urna','Drek','aluminium',200),(4,'urna','Arcum','granit',500),(5,'urna','Funer','mosiądz',250),(6,'urna','Drek','aluminium',200),(7,'urna','Arcum','mosiądz',300),(8,'urna','Funer','granit',450),(9,'trumna','Anubis','dąb',1200),(10,'trumna','Anubis','sosna',900),(11,'trumna','Anubis','blacha ocynkowa',2200),(12,'trumna','Trumax','sosna',850),(13,'trumna','Trumax','brzoza',800);
/*!40000 ALTER TABLE `containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `florists`
--

DROP TABLE IF EXISTS `florists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `florists` (
  `florist_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `locality` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  `funeral_home_id` int(10) NOT NULL,
  PRIMARY KEY (`florist_id`),
  UNIQUE KEY `funeral_home_id` (`funeral_home_id`),
  CONSTRAINT `FKflorists574125` FOREIGN KEY (`funeral_home_id`) REFERENCES `funeral_homes` (`funeral_home_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `florists`
--

LOCK TABLES `florists` WRITE;
/*!40000 ALTER TABLE `florists` DISABLE KEYS */;
INSERT INTO `florists` VALUES (1,'DONICPOL','Prusa',50,1),(2,'Chryzantema','Grabiszyńska',60,2),(3,'Tulipex','Nowowiejska',120,3),(4,'Różochom','Jedności Narodowej',30,4),(5,'KwiatSan','Pomorska',40,5),(6,'Jan Bławat i Syn','Obrońców wiary',59,6),(7,'Kwiatmania','Sosnowa',40,7);
/*!40000 ALTER TABLE `florists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funeral_homes`
--

DROP TABLE IF EXISTS `funeral_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funeral_homes` (
  `funeral_home_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `voivodeship` varchar(30) NOT NULL,
  `county` varchar(30) NOT NULL,
  `locality` varchar(30) NOT NULL,
  `beginning_of_activity` date NOT NULL,
  `phone` varchar(30) NOT NULL,
  `mail` varchar(60) NOT NULL,
  `price` int(10) NOT NULL,
  `average_rate` double DEFAULT NULL,
  PRIMARY KEY (`funeral_home_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funeral_homes`
--

LOCK TABLES `funeral_homes` WRITE;
/*!40000 ALTER TABLE `funeral_homes` DISABLE KEYS */;
INSERT INTO `funeral_homes` VALUES (1,'SKRABEX','dolnośląskie','Wrocław','Wrocław','1990-01-20','659350210','skrabex@skrabex.pl',2500,2.8),(2,'Archon','dolnośląskie','Wrocław','Wrocław','1989-02-13','777123210','archon@onet.pl',1500,3.9),(3,'Gloria','dolnośląskie','Wrocław','Wrocław','1989-06-05','666666321','gloriagold@gloria.pl',10000,3.3),(4,'Anubis','dolnośląskie','Wrocław','Wrocław','1989-06-05','888466367','anubisfunerals@gmail.com',4000,3.7),(5,'Przykucki','wielkopolskie','poznański','Pobiedziska','1992-12-20','600500400','przykucki@hotmail.com',2700,3),(6,'Rest in Filip','opolskie','Opole','Opole','1996-07-08','589065123','restinfilip@gmail.com',2000,3.1),(7,'Requiescat In Pace','opolskie','Opole','Opole','1986-04-03','987123876','rippogrzeby@wp.pl',2500,3.3);
/*!40000 ALTER TABLE `funeral_homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `funeral_services_on_cemeteries`
--

DROP TABLE IF EXISTS `funeral_services_on_cemeteries`;
/*!50001 DROP VIEW IF EXISTS `funeral_services_on_cemeteries`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `funeral_services_on_cemeteries` AS SELECT 
 1 AS `name`,
 1 AS `price`,
 1 AS `voivodeship`,
 1 AS `county`,
 1 AS `locality`,
 1 AS `street`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `funerals`
--

DROP TABLE IF EXISTS `funerals`;
/*!50001 DROP VIEW IF EXISTS `funerals`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `funerals` AS SELECT 
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `tombstone_material`,
 1 AS `price`,
 1 AS `type`,
 1 AS `container_material`,
 1 AS `priest_name`,
 1 AS `priest_last_name`,
 1 AS `rank`,
 1 AS `locality`,
 1 AS `funeral_home`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `gravediggers`
--

DROP TABLE IF EXISTS `gravediggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gravediggers` (
  `gravedigger_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `practice` smallint(5) NOT NULL,
  `salary` int(10) NOT NULL,
  `cemetery_id` int(10) NOT NULL,
  PRIMARY KEY (`gravedigger_id`),
  UNIQUE KEY `cemetery_id` (`cemetery_id`),
  CONSTRAINT `FKgravedigge543590` FOREIGN KEY (`cemetery_id`) REFERENCES `cemeteries` (`cemetery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gravediggers`
--

LOCK TABLES `gravediggers` WRITE;
/*!40000 ALTER TABLE `gravediggers` DISABLE KEYS */;
INSERT INTO `gravediggers` VALUES (1,'Dariusz','Łopata',2,2500,1),(2,'Mariusz','Szpadel',10,3000,2),(3,'Kamil','Kmieć',1,2200,3),(4,'Mateusz','Deska',20,3400,4),(5,'Łukasz','Gwóźdź',12,3200,5),(6,'Sebastian','Maciejewski',1,4000,6),(7,'Maciej','Henrykowski',0,3200,7);
/*!40000 ALTER TABLE `gravediggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `most_popular_outfits`
--

DROP TABLE IF EXISTS `most_popular_outfits`;
/*!50001 DROP VIEW IF EXISTS `most_popular_outfits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `most_popular_outfits` AS SELECT 
 1 AS `count(outfit_id)`,
 1 AS `type`,
 1 AS `brand`,
 1 AS `size`,
 1 AS `color`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `outfits`
--

DROP TABLE IF EXISTS `outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outfits` (
  `outfit_id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `size` varchar(5) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`outfit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outfits`
--

LOCK TABLES `outfits` WRITE;
/*!40000 ALTER TABLE `outfits` DISABLE KEYS */;
INSERT INTO `outfits` VALUES (1,'garnitur','XXS','Lumpex','czarny',100),(2,'garnitur','XS','Lumpex','czarny',100),(3,'garnitur','S','Lumpex','czarny',100),(4,'garnitur','M','Lumpex','czarny',100),(5,'garnitur','L','Lumpex','czarny',100),(6,'garnitur','XL','Lumpex','czarny',100),(7,'garnitur','XXL','Lumpex','czarny',100),(8,'garnitur','XXXL','Lumpex','czarny',100),(9,'garnitur','S','Hugo Boss','czarny',3000),(10,'garnitur','M','Hugo Boss','czarny',3000),(11,'garnitur','L','Hugo Boss','czarny',3000),(12,'garnitur','XL','Hugo Boss','czarny',3000),(13,'garnitur','S','Tommy Hilfiger','czarny',2400),(14,'garnitur','M','Tommy Hilfiger','czarny',2400),(15,'garnitur','L','Tommy Hilfiger','czarny',2400),(16,'garnitur','XL','Tommy Hilfiger','czarny',2400),(17,'frak','S','Lacoste','biały',2400),(18,'frak','M','Lacoste','biały',2400),(19,'frak','L','Lacoste','biały',2400),(20,'frak','XL','Lacoste','biały',2400),(21,'frak','S','Bytom','szary',600),(22,'frak','M','Bytom','szary',600),(23,'frak','L','Bytom','szary',600),(24,'frak','XL','Bytom','szary',600),(25,'frak','XXL','Bytom','szary',600),(26,'garsonka','XS','Reserved','czarny',700),(27,'garsonka','S','Reserved','czarny',700),(28,'garsonka','M','Reserved','czarny',700),(29,'garsonka','L','Reserved','czarny',700),(30,'garsonka','S','ZARA','szary',400),(31,'garsonka','M','ZARA','szary',400),(32,'garsonka','L','ZARA','szary',400),(33,'garsonka','XL','ZARA','szary',400),(34,'suknia','S','SIMPLE','czarny',500),(35,'suknia','M','SIMPLE','czarny',500),(36,'suknia','L','SIMPLE','czarny',500),(37,'suknia','XL','SIMPLE','czarny',500),(38,'suknia','S','Channel','biały',2000),(39,'suknia','M','Channel','biały',2000),(40,'suknia','L','Channel','biały',2000),(41,'suknia','XL','Channel','biały',2000),(42,'suknia','XXL','Channel','biały',2000),(43,'suknia','XXS','Lumpex','biały',150),(44,'suknia','XS','Lumpex','biały',150),(45,'suknia','S','Lumpex','biały',150),(46,'suknia','M','Lumpex','biały',150),(47,'suknia','L','Lumpex','biały',150),(48,'suknia','XL','Lumpex','biały',150),(49,'suknia','XXL','Lumpex','biały',150),(50,'suknia','XXL','Lumpex','biały',150);
/*!40000 ALTER TABLE `outfits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priests`
--

DROP TABLE IF EXISTS `priests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priests` (
  `priest_id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`priest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priests`
--

LOCK TABLES `priests` WRITE;
/*!40000 ALTER TABLE `priests` DISABLE KEYS */;
INSERT INTO `priests` VALUES (1,'kardynał','Sędziwój Leszek','Słój','rzymskokatolicyzm',10000),(2,'arcybiskup','Janusz','Procesor','rzymskokatolicyzm',4000),(3,'arcybiskup','Paweł','Potężny','rzymskokatolicyzm',3000),(4,'archiprezbiter wiejski','Jan','Wawruszczak','rzymskokatolicyzm',600),(5,'doktor proboszcz','Piotr','Biernacki','rzymskokatolicyzm',700),(6,'proboszcz','Franciszek','Czosnek','rzymskokatolicyzm',400),(7,'proboszcz','Andrzej','Złociński','rzymskokatolicyzm',400),(8,'proboszcz','Eugeniusz','Machulski','rzymskokatolicyzm',950),(9,'prałat','Stanisław','Kanonik','rzymskokatolicyzm',450),(10,'wikariusz','Marian','Korwin','rzymskokatolicyzm',300),(11,'wikariusz','Damian','Jurek','rzymskokatolicyzm',500),(12,'wikariusz','Marek','Cukierberg','rzymskokatolicyzm',400),(13,'rabin','Mosze','Goldberg','judaizm',700),(14,'rabin','Mordechaj','Goldszmidt','judaizm',1000),(15,'rabin','Ozjasz','Szechter','judaizm',300),(16,'imam','Muhammad','Ali','islam',1000),(17,'imam','Saddam','Chomeini','islam',500);
/*!40000 ALTER TABLE `priests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `priests_and_temples`
--

DROP TABLE IF EXISTS `priests_and_temples`;
/*!50001 DROP VIEW IF EXISTS `priests_and_temples`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `priests_and_temples` AS SELECT 
 1 AS `title`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `rank`,
 1 AS `locality`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `priests_temples`
--

DROP TABLE IF EXISTS `priests_temples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priests_temples` (
  `priest_id` int(10) NOT NULL,
  `temple_id` int(10) NOT NULL,
  PRIMARY KEY (`priest_id`,`temple_id`),
  KEY `FKpriests_te992200` (`temple_id`),
  CONSTRAINT `FKpriests_te175487` FOREIGN KEY (`priest_id`) REFERENCES `priests` (`priest_id`),
  CONSTRAINT `FKpriests_te992200` FOREIGN KEY (`temple_id`) REFERENCES `temples` (`temple_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priests_temples`
--

LOCK TABLES `priests_temples` WRITE;
/*!40000 ALTER TABLE `priests_temples` DISABLE KEYS */;
INSERT INTO `priests_temples` VALUES (5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(10,2),(11,2),(12,2),(4,3),(8,3),(9,3),(13,4),(14,4),(15,4),(16,5),(17,5),(4,6),(8,6),(9,6);
/*!40000 ALTER TABLE `priests_temples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarters`
--

DROP TABLE IF EXISTS `quarters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quarters` (
  `quarter_id` int(10) NOT NULL AUTO_INCREMENT,
  `x_coord` int(10) NOT NULL,
  `y_coord` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `cemetery_id` int(10) NOT NULL,
  `tombstone_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`quarter_id`),
  KEY `FKquarters213929` (`cemetery_id`),
  KEY `FKquarters761866` (`tombstone_id`),
  CONSTRAINT `FKquarters213929` FOREIGN KEY (`cemetery_id`) REFERENCES `cemeteries` (`cemetery_id`),
  CONSTRAINT `FKquarters761866` FOREIGN KEY (`tombstone_id`) REFERENCES `tombstones` (`tombstone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarters`
--

LOCK TABLES `quarters` WRITE;
/*!40000 ALTER TABLE `quarters` DISABLE KEYS */;
INSERT INTO `quarters` VALUES (1,1,1,500,1,10),(2,1,2,200,1,1),(3,1,3,150,1,NULL),(4,1,4,100,1,NULL),(5,1,5,300,1,NULL),(6,1,6,450,1,NULL),(7,1,7,650,1,NULL),(8,1,8,250,1,NULL),(9,1,9,350,1,NULL),(10,1,10,150,1,NULL),(11,2,1,550,1,NULL),(12,2,2,400,1,NULL),(13,2,3,350,1,NULL),(14,2,4,250,1,4),(15,2,5,400,1,NULL),(16,2,6,850,1,NULL),(17,2,7,200,1,NULL),(18,2,8,600,1,NULL),(19,2,9,450,1,NULL),(20,2,10,350,1,NULL),(21,3,1,850,1,NULL),(22,3,2,500,1,NULL),(23,3,3,200,1,NULL),(24,3,4,50,1,NULL),(25,3,5,350,1,NULL),(26,3,6,50,1,NULL),(27,3,7,750,1,NULL),(28,3,8,350,1,NULL),(29,3,9,200,1,NULL),(30,3,10,150,1,NULL),(31,4,1,800,1,NULL),(32,4,2,850,1,5),(33,4,3,200,1,NULL),(34,4,4,450,1,2),(35,4,5,300,1,NULL),(36,4,6,400,1,NULL),(37,4,7,250,1,NULL),(38,4,8,500,1,NULL),(39,4,9,150,1,3),(40,4,10,750,1,NULL),(41,5,1,800,1,NULL),(42,5,2,600,1,NULL),(43,5,3,700,1,7),(44,5,4,800,1,NULL),(45,5,5,400,1,NULL),(46,5,6,800,1,NULL),(47,5,7,400,1,NULL),(48,5,8,600,1,NULL),(49,5,9,450,1,NULL),(50,5,10,300,1,NULL),(51,6,1,800,1,6),(52,6,2,950,1,4),(53,6,3,100,1,NULL),(54,6,4,150,1,NULL),(55,6,5,200,1,9),(56,6,6,800,1,NULL),(57,6,7,700,1,NULL),(58,6,8,250,1,NULL),(59,6,9,500,1,NULL),(60,6,10,700,1,5),(61,7,1,900,1,NULL),(62,7,2,300,1,9),(63,7,3,900,1,NULL),(64,7,4,150,1,NULL),(65,7,5,350,1,NULL),(66,7,6,1000,1,NULL),(67,7,7,150,1,10),(68,7,8,50,1,NULL),(69,7,9,550,1,9),(70,7,10,500,1,NULL),(71,8,1,700,1,NULL),(72,8,2,800,1,NULL),(73,8,3,900,1,NULL),(74,8,4,50,1,3),(75,8,5,400,1,NULL),(76,8,6,350,1,9),(77,8,7,300,1,NULL),(78,8,8,100,1,NULL),(79,8,9,450,1,NULL),(80,8,10,100,1,NULL),(81,9,1,400,1,NULL),(82,9,2,350,1,NULL),(83,9,3,700,1,NULL),(84,9,4,400,1,NULL),(85,9,5,50,1,NULL),(86,9,6,350,1,NULL),(87,9,7,700,1,6),(88,9,8,600,1,NULL),(89,9,9,350,1,NULL),(90,9,10,250,1,NULL),(91,10,1,700,1,NULL),(92,10,2,350,1,NULL),(93,10,3,950,1,NULL),(94,10,4,450,1,NULL),(95,10,5,400,1,NULL),(96,10,6,850,1,NULL),(97,10,7,400,1,NULL),(98,10,8,450,1,NULL),(99,10,9,50,1,6),(100,10,10,150,1,NULL),(101,1,1,550,2,7),(102,1,2,100,2,NULL),(103,1,3,500,2,NULL),(104,1,4,450,2,NULL),(105,1,5,1000,2,NULL),(106,1,6,200,2,NULL),(107,1,7,500,2,NULL),(108,1,8,850,2,NULL),(109,1,9,100,2,NULL),(110,1,10,350,2,NULL),(111,2,1,700,2,NULL),(112,2,2,100,2,NULL),(113,2,3,1000,2,NULL),(114,2,4,700,2,NULL),(115,2,5,300,2,NULL),(116,2,6,950,2,NULL),(117,2,7,550,2,NULL),(118,2,8,500,2,NULL),(119,2,9,300,2,NULL),(120,2,10,400,2,NULL),(121,3,1,400,2,NULL),(122,3,2,650,2,NULL),(123,3,3,750,2,NULL),(124,3,4,250,2,NULL),(125,3,5,300,2,8),(126,3,6,850,2,NULL),(127,3,7,150,2,NULL),(128,3,8,50,2,7),(129,3,9,850,2,NULL),(130,3,10,50,2,NULL),(131,4,1,100,2,NULL),(132,4,2,350,2,NULL),(133,4,3,550,2,NULL),(134,4,4,100,2,NULL),(135,4,5,100,2,NULL),(136,4,6,900,2,3),(137,4,7,600,2,NULL),(138,4,8,900,2,NULL),(139,4,9,450,2,NULL),(140,4,10,150,2,8),(141,5,1,100,2,NULL),(142,5,2,900,2,NULL),(143,5,3,700,2,NULL),(144,5,4,550,2,NULL),(145,5,5,950,2,NULL),(146,5,6,300,2,NULL),(147,5,7,550,2,NULL),(148,5,8,700,2,NULL),(149,5,9,600,2,NULL),(150,5,10,750,2,NULL),(151,6,1,650,2,NULL),(152,6,2,800,2,NULL),(153,6,3,1000,2,NULL),(154,6,4,200,2,NULL),(155,6,5,700,2,NULL),(156,6,6,400,2,5),(157,6,7,350,2,NULL),(158,6,8,550,2,NULL),(159,6,9,550,2,NULL),(160,6,10,650,2,NULL),(161,7,1,950,2,2),(162,7,2,500,2,NULL),(163,7,3,850,2,NULL),(164,7,4,700,2,NULL),(165,7,5,500,2,NULL),(166,7,6,950,2,NULL),(167,7,7,750,2,NULL),(168,7,8,450,2,1),(169,7,9,500,2,NULL),(170,7,10,100,2,NULL),(171,8,1,700,2,NULL),(172,8,2,1000,2,5),(173,8,3,850,2,NULL),(174,8,4,500,2,NULL),(175,8,5,200,2,NULL),(176,8,6,350,2,NULL),(177,8,7,500,2,NULL),(178,8,8,300,2,NULL),(179,8,9,600,2,NULL),(180,8,10,850,2,NULL),(181,9,1,700,2,NULL),(182,9,2,800,2,NULL),(183,9,3,600,2,NULL),(184,9,4,200,2,NULL),(185,9,5,150,2,7),(186,9,6,350,2,NULL),(187,9,7,600,2,NULL),(188,9,8,250,2,NULL),(189,9,9,850,2,NULL),(190,9,10,650,2,NULL),(191,10,1,50,2,NULL),(192,10,2,300,2,NULL),(193,10,3,550,2,NULL),(194,10,4,750,2,NULL),(195,10,5,950,2,3),(196,10,6,200,2,NULL),(197,10,7,150,2,10),(198,10,8,850,2,NULL),(199,10,9,250,2,NULL),(200,10,10,750,2,NULL),(201,1,1,850,3,NULL),(202,1,2,750,3,NULL),(203,1,3,50,3,6),(204,1,4,700,3,NULL),(205,1,5,150,3,NULL),(206,1,6,300,3,NULL),(207,1,7,700,3,5),(208,1,8,850,3,NULL),(209,1,9,800,3,6),(210,1,10,600,3,NULL),(211,2,1,250,3,NULL),(212,2,2,650,3,NULL),(213,2,3,450,3,NULL),(214,2,4,500,3,NULL),(215,2,5,50,3,1),(216,2,6,850,3,NULL),(217,2,7,300,3,NULL),(218,2,8,950,3,NULL),(219,2,9,700,3,NULL),(220,2,10,600,3,NULL),(221,3,1,400,3,9),(222,3,2,250,3,NULL),(223,3,3,550,3,6),(224,3,4,300,3,NULL),(225,3,5,50,3,NULL),(226,3,6,600,3,NULL),(227,3,7,300,3,NULL),(228,3,8,200,3,NULL),(229,3,9,850,3,NULL),(230,3,10,100,3,4),(231,4,1,950,3,2),(232,4,2,450,3,NULL),(233,4,3,150,3,NULL),(234,4,4,450,3,NULL),(235,4,5,200,3,NULL),(236,4,6,250,3,NULL),(237,4,7,450,3,NULL),(238,4,8,250,3,NULL),(239,4,9,400,3,2),(240,4,10,100,3,NULL),(241,5,1,550,3,NULL),(242,5,2,900,3,NULL),(243,5,3,750,3,NULL),(244,5,4,200,3,NULL),(245,5,5,600,3,NULL),(246,5,6,200,3,NULL),(247,5,7,300,3,NULL),(248,5,8,550,3,NULL),(249,5,9,950,3,NULL),(250,5,10,200,3,NULL),(251,6,1,700,3,NULL),(252,6,2,100,3,6),(253,6,3,300,3,NULL),(254,6,4,150,3,NULL),(255,6,5,150,3,2),(256,6,6,800,3,NULL),(257,6,7,1000,3,NULL),(258,6,8,450,3,NULL),(259,6,9,450,3,3),(260,6,10,300,3,NULL),(261,7,1,800,3,NULL),(262,7,2,300,3,7),(263,7,3,850,3,NULL),(264,7,4,800,3,NULL),(265,7,5,200,3,NULL),(266,7,6,200,3,NULL),(267,7,7,850,3,3),(268,7,8,550,3,NULL),(269,7,9,600,3,NULL),(270,7,10,1000,3,NULL),(271,8,1,800,3,1),(272,8,2,350,3,NULL),(273,8,3,850,3,NULL),(274,8,4,150,3,NULL),(275,8,5,400,3,NULL),(276,8,6,900,3,NULL),(277,8,7,100,3,NULL),(278,8,8,1000,3,NULL),(279,8,9,400,3,3),(280,8,10,150,3,NULL),(281,9,1,950,3,NULL),(282,9,2,1000,3,NULL),(283,9,3,950,3,NULL),(284,9,4,600,3,NULL),(285,9,5,200,3,NULL),(286,9,6,400,3,NULL),(287,9,7,100,3,NULL),(288,9,8,300,3,NULL),(289,9,9,700,3,NULL),(290,9,10,400,3,NULL),(291,10,1,600,3,NULL),(292,10,2,700,3,NULL),(293,10,3,600,3,NULL),(294,10,4,300,3,NULL),(295,10,5,100,3,NULL),(296,10,6,900,3,10),(297,10,7,450,3,4),(298,10,8,100,3,NULL),(299,10,9,500,3,NULL),(300,10,10,700,3,NULL),(301,1,1,300,4,NULL),(302,1,2,900,4,NULL),(303,1,3,450,4,NULL),(304,1,4,300,4,NULL),(305,1,5,550,4,NULL),(306,1,6,200,4,NULL),(307,1,7,250,4,9),(308,1,8,250,4,NULL),(309,1,9,500,4,NULL),(310,1,10,550,4,NULL),(311,2,1,950,4,NULL),(312,2,2,700,4,NULL),(313,2,3,500,4,NULL),(314,2,4,150,4,NULL),(315,2,5,100,4,NULL),(316,2,6,600,4,10),(317,2,7,400,4,7),(318,2,8,800,4,NULL),(319,2,9,1000,4,NULL),(320,2,10,600,4,NULL),(321,3,1,450,4,NULL),(322,3,2,600,4,NULL),(323,3,3,250,4,NULL),(324,3,4,450,4,NULL),(325,3,5,900,4,NULL),(326,3,6,900,4,NULL),(327,3,7,550,4,3),(328,3,8,350,4,NULL),(329,3,9,900,4,8),(330,3,10,150,4,NULL),(331,4,1,300,4,NULL),(332,4,2,800,4,NULL),(333,4,3,1000,4,NULL),(334,4,4,500,4,NULL),(335,4,5,100,4,NULL),(336,4,6,650,4,NULL),(337,4,7,50,4,NULL),(338,4,8,600,4,8),(339,4,9,850,4,NULL),(340,4,10,350,4,NULL),(341,5,1,950,4,NULL),(342,5,2,150,4,NULL),(343,5,3,400,4,NULL),(344,5,4,450,4,NULL),(345,5,5,350,4,NULL),(346,5,6,100,4,NULL),(347,5,7,500,4,9),(348,5,8,850,4,NULL),(349,5,9,1000,4,NULL),(350,5,10,650,4,NULL),(351,6,1,1000,4,NULL),(352,6,2,750,4,NULL),(353,6,3,100,4,NULL),(354,6,4,600,4,NULL),(355,6,5,400,4,NULL),(356,6,6,700,4,NULL),(357,6,7,650,4,NULL),(358,6,8,50,4,NULL),(359,6,9,450,4,NULL),(360,6,10,200,4,NULL),(361,7,1,150,4,NULL),(362,7,2,200,4,3),(363,7,3,350,4,NULL),(364,7,4,150,4,NULL),(365,7,5,450,4,NULL),(366,7,6,150,4,NULL),(367,7,7,350,4,NULL),(368,7,8,800,4,NULL),(369,7,9,550,4,NULL),(370,7,10,350,4,NULL),(371,8,1,600,4,NULL),(372,8,2,50,4,NULL),(373,8,3,500,4,NULL),(374,8,4,700,4,NULL),(375,8,5,600,4,NULL),(376,8,6,900,4,5),(377,8,7,250,4,NULL),(378,8,8,150,4,7),(379,8,9,950,4,NULL),(380,8,10,650,4,4),(381,9,1,150,4,NULL),(382,9,2,800,4,NULL),(383,9,3,200,4,8),(384,9,4,800,4,1),(385,9,5,150,4,NULL),(386,9,6,800,4,NULL),(387,9,7,250,4,NULL),(388,9,8,650,4,NULL),(389,9,9,50,4,NULL),(390,9,10,550,4,NULL),(391,10,1,100,4,NULL),(392,10,2,200,4,NULL),(393,10,3,750,4,1),(394,10,4,600,4,6),(395,10,5,850,4,NULL),(396,10,6,300,4,NULL),(397,10,7,1000,4,NULL),(398,10,8,200,4,NULL),(399,10,9,700,4,NULL),(400,10,10,200,4,NULL),(401,1,1,400,5,NULL),(402,1,2,200,5,NULL),(403,1,3,550,5,NULL),(404,1,4,150,5,NULL),(405,1,5,350,5,NULL),(406,1,6,450,5,NULL),(407,1,7,750,5,6),(408,1,8,250,5,NULL),(409,1,9,550,5,NULL),(410,1,10,550,5,NULL),(411,2,1,200,5,NULL),(412,2,2,900,5,NULL),(413,2,3,200,5,7),(414,2,4,350,5,NULL),(415,2,5,200,5,NULL),(416,2,6,450,5,NULL),(417,2,7,300,5,NULL),(418,2,8,750,5,NULL),(419,2,9,150,5,NULL),(420,2,10,450,5,NULL),(421,3,1,200,5,9),(422,3,2,1000,5,NULL),(423,3,3,400,5,NULL),(424,3,4,450,5,NULL),(425,3,5,950,5,NULL),(426,3,6,200,5,NULL),(427,3,7,100,5,NULL),(428,3,8,700,5,9),(429,3,9,600,5,1),(430,3,10,500,5,NULL),(431,4,1,900,5,NULL),(432,4,2,900,5,NULL),(433,4,3,650,5,NULL),(434,4,4,1000,5,NULL),(435,4,5,250,5,NULL),(436,4,6,700,5,NULL),(437,4,7,150,5,NULL),(438,4,8,950,5,NULL),(439,4,9,300,5,3),(440,4,10,400,5,9),(441,5,1,350,5,NULL),(442,5,2,650,5,NULL),(443,5,3,800,5,4),(444,5,4,750,5,NULL),(445,5,5,350,5,NULL),(446,5,6,500,5,NULL),(447,5,7,750,5,NULL),(448,5,8,400,5,NULL),(449,5,9,950,5,NULL),(450,5,10,50,5,NULL),(451,6,1,500,5,NULL),(452,6,2,650,5,NULL),(453,6,3,900,5,NULL),(454,6,4,1000,5,NULL),(455,6,5,700,5,5),(456,6,6,150,5,NULL),(457,6,7,800,5,NULL),(458,6,8,50,5,NULL),(459,6,9,550,5,NULL),(460,6,10,400,5,NULL),(461,7,1,650,5,NULL),(462,7,2,500,5,NULL),(463,7,3,750,5,NULL),(464,7,4,100,5,NULL),(465,7,5,500,5,NULL),(466,7,6,250,5,NULL),(467,7,7,100,5,NULL),(468,7,8,250,5,NULL),(469,7,9,800,5,NULL),(470,7,10,650,5,NULL),(471,8,1,700,5,NULL),(472,8,2,450,5,NULL),(473,8,3,650,5,NULL),(474,8,4,950,5,NULL),(475,8,5,300,5,NULL),(476,8,6,650,5,NULL),(477,8,7,900,5,NULL),(478,8,8,250,5,NULL),(479,8,9,650,5,NULL),(480,8,10,500,5,NULL),(481,9,1,550,5,NULL),(482,9,2,400,5,NULL),(483,9,3,950,5,NULL),(484,9,4,1000,5,NULL),(485,9,5,300,5,NULL),(486,9,6,450,5,5),(487,9,7,250,5,NULL),(488,9,8,800,5,NULL),(489,9,9,250,5,5),(490,9,10,650,5,NULL),(491,10,1,350,5,NULL),(492,10,2,700,5,NULL),(493,10,3,600,5,NULL),(494,10,4,100,5,NULL),(495,10,5,100,5,NULL),(496,10,6,350,5,NULL),(497,10,7,300,5,NULL),(498,10,8,450,5,NULL),(499,10,9,450,5,NULL),(500,10,10,50,5,NULL),(501,1,1,500,6,NULL),(502,1,2,700,6,5),(503,1,3,350,6,NULL),(504,1,4,1000,6,NULL),(505,1,5,900,6,NULL),(506,2,1,200,6,NULL),(507,2,2,550,6,8),(508,2,3,300,6,NULL),(509,2,4,600,6,NULL),(510,2,5,300,6,NULL),(511,3,1,450,6,4),(512,3,2,700,6,NULL),(513,3,3,550,6,NULL),(514,3,4,500,6,NULL),(515,3,5,400,6,NULL),(516,4,1,350,6,NULL),(517,4,2,250,6,NULL),(518,4,3,350,6,NULL),(519,4,4,150,6,NULL),(520,4,5,750,6,NULL),(521,5,1,750,6,4),(522,5,2,800,6,10),(523,5,3,750,6,NULL),(524,5,4,500,6,NULL),(525,5,5,950,6,NULL),(526,1,1,200,7,NULL),(527,1,2,1000,7,3),(528,1,3,600,7,NULL),(529,1,4,350,7,NULL),(530,1,5,950,7,1),(531,2,1,300,7,NULL),(532,2,2,950,7,NULL),(533,2,3,450,7,NULL),(534,2,4,300,7,NULL),(535,2,5,650,7,NULL),(536,3,1,50,7,NULL),(537,3,2,50,7,NULL),(538,3,3,950,7,10),(539,3,4,400,7,NULL),(540,3,5,450,7,NULL),(541,4,1,400,7,NULL),(542,4,2,600,7,NULL),(543,4,3,450,7,NULL),(544,4,4,300,7,NULL),(545,4,5,550,7,NULL),(546,5,1,950,7,NULL),(547,5,2,100,7,NULL),(548,5,3,950,7,NULL),(549,5,4,750,7,NULL),(550,5,5,200,7,1);
/*!40000 ALTER TABLE `quarters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temples`
--

DROP TABLE IF EXISTS `temples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temples` (
  `temple_id` int(10) NOT NULL AUTO_INCREMENT,
  `voivodeship` varchar(30) DEFAULT NULL,
  `county` varchar(30) NOT NULL,
  `locality` varchar(30) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `capacity` int(10) NOT NULL,
  `rank` varchar(30) NOT NULL,
  PRIMARY KEY (`temple_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temples`
--

LOCK TABLES `temples` WRITE;
/*!40000 ALTER TABLE `temples` DISABLE KEYS */;
INSERT INTO `temples` VALUES (1,'opolskie','Opole','Opole','rzymskokatolicyzm',5000,'bazylika'),(2,'dolnośląskie','Wrocław','Wrocław','rzymskokatolicyzm',10000,'katedra'),(3,'dolnośląskie','średzki','Środa Śląska','rzymskokatolicyzm',450,'kościół'),(4,'dolnośląskie','Wrocław','Wrocław','judaizm',7000,'synagoga'),(5,'dolnośląskie','Wrocław','Wrocław','islam',2000,'meczet'),(6,'wielkopolskie','poznański','Pobiedziska','rzymskokatolicyzm',500,'kościół');
/*!40000 ALTER TABLE `temples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tombstones`
--

DROP TABLE IF EXISTS `tombstones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tombstones` (
  `tombstone_id` int(10) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(30) NOT NULL,
  `material` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`tombstone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tombstones`
--

LOCK TABLES `tombstones` WRITE;
/*!40000 ALTER TABLE `tombstones` DISABLE KEYS */;
INSERT INTO `tombstones` VALUES (1,'SteinPol','granit',1200),(2,'Tempus','granit',1400),(3,'Sacrum','marmur',3500),(4,'Sacrum','stiuk',2200),(5,'SteinPol','plastik',300),(6,'Tempus','beton',700),(7,'SteinPol','bazalt',2700),(8,'Sacrum','piaskowiec',2900),(9,'SteinPol','ziemny nasyp',50),(10,'Sacrum','spiż',4000);
/*!40000 ALTER TABLE `tombstones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `top_tombstones`
--

DROP TABLE IF EXISTS `top_tombstones`;
/*!50001 DROP VIEW IF EXISTS `top_tombstones`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `top_tombstones` AS SELECT 
 1 AS `count(tombstone_id)`,
 1 AS `material`,
 1 AS `price`,
 1 AS `manufacturer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `vehicle_id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `funeral_home_id` int(10) NOT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `FKvehicles275543` (`funeral_home_id`),
  CONSTRAINT `FKvehicles275543` FOREIGN KEY (`funeral_home_id`) REFERENCES `funeral_homes` (`funeral_home_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'samochód','Mercedes','w212','czarny',1),(2,'samochód','Mercedes','vito','czarny',1),(3,'samochód','Mercedes','e250','czarny',2),(4,'samochód','Mercedes','w212','czarny',3),(5,'samochód','Opel','Vectra','niebieski',4),(6,'samochód','Volkswagen','Golf 3','butelkowy',5),(7,'lektyka','Sedia','bambus','bambusowy',3),(8,'dorożka','Glinkowsky','sattel','dębowy',3);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `funeral_services_on_cemeteries`
--

/*!50001 DROP VIEW IF EXISTS `funeral_services_on_cemeteries`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `funeral_services_on_cemeteries` AS select distinct `f`.`name` AS `name`,`f`.`price` AS `price`,`c`.`voivodeship` AS `voivodeship`,`c`.`county` AS `county`,`c`.`locality` AS `locality`,`c`.`street` AS `street` from (((`cemeteries` `c` join `quarters` on((`c`.`cemetery_id` = `quarters`.`cemetery_id`))) join `buried` on((`quarters`.`quarter_id` = `buried`.`quarter_id`))) join `funeral_homes` `f` on((`buried`.`funeral_home_id` = `f`.`funeral_home_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `funerals`
--

/*!50001 DROP VIEW IF EXISTS `funerals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `funerals` AS select `b`.`first_name` AS `first_name`,`b`.`last_name` AS `last_name`,`tb`.`material` AS `tombstone_material`,`tb`.`price` AS `price`,`c`.`type` AS `type`,`c`.`material` AS `container_material`,`p`.`first_name` AS `priest_name`,`p`.`last_name` AS `priest_last_name`,`t`.`rank` AS `rank`,`t`.`locality` AS `locality`,`f`.`name` AS `funeral_home` from ((((((`buried` `b` join `quarters` `q` on((`b`.`quarter_id` = `q`.`quarter_id`))) join `tombstones` `tb` on((`q`.`tombstone_id` = `tb`.`tombstone_id`))) join `temples` `t` on((`b`.`temple_id` = `t`.`temple_id`))) join `priests` `p` on((`b`.`priest_id` = `p`.`priest_id`))) join `funeral_homes` `f` on((`b`.`funeral_home_id` = `f`.`funeral_home_id`))) join `containers` `c` on((`b`.`container_id` = `c`.`container_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_popular_outfits`
--

/*!50001 DROP VIEW IF EXISTS `most_popular_outfits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `most_popular_outfits` AS select count(`buried`.`outfit_id`) AS `count(outfit_id)`,`outfits`.`type` AS `type`,`outfits`.`brand` AS `brand`,`outfits`.`size` AS `size`,`outfits`.`color` AS `color` from (((`cemeteries` join `quarters` on((`cemeteries`.`cemetery_id` = `quarters`.`cemetery_id`))) join `buried` on((`quarters`.`quarter_id` = `buried`.`quarter_id`))) join `outfits` on((`buried`.`outfit_id` = `outfits`.`outfit_id`))) group by `outfits`.`type`,`outfits`.`brand`,`outfits`.`size`,`outfits`.`color` order by count(`buried`.`outfit_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `priests_and_temples`
--

/*!50001 DROP VIEW IF EXISTS `priests_and_temples`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `priests_and_temples` AS select `priests`.`title` AS `title`,`priests`.`first_name` AS `first_name`,`priests`.`last_name` AS `last_name`,`temples`.`rank` AS `rank`,`temples`.`locality` AS `locality` from ((`priests_temples` join `priests` on((`priests_temples`.`priest_id` = `priests`.`priest_id`))) join `temples` on((`priests_temples`.`temple_id` = `temples`.`temple_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_tombstones`
--

/*!50001 DROP VIEW IF EXISTS `top_tombstones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `top_tombstones` AS select count(`quarters`.`tombstone_id`) AS `count(tombstone_id)`,`t`.`material` AS `material`,`t`.`price` AS `price`,`t`.`manufacturer` AS `manufacturer` from ((`cemeteries` join `quarters` on((`cemeteries`.`cemetery_id` = `quarters`.`cemetery_id`))) join `tombstones` `t` on((`quarters`.`tombstone_id` = `t`.`tombstone_id`))) group by `t`.`manufacturer`,`t`.`material`,`t`.`price` order by count(`quarters`.`tombstone_id`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-26 23:14:40
