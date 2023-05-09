CREATE DATABASE  IF NOT EXISTS `formula1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `formula1`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: formula1
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Dumping data for table `accidentes`
--

LOCK TABLES `accidentes` WRITE;
/*!40000 ALTER TABLE `accidentes` DISABLE KEYS */;
INSERT INTO `accidentes` VALUES (1,9,10,13,0,'Leclerc realizo un giro cerrado sobre Logan Sargeant y tocaron los ruedas, Leclerc quedo fuera de la carrera sin daños mayores',NULL),(2,9,20,9,500,'Albon intentando sobrepasar a su compañero de escuderia lo toca por la derecha causando que ambos autos williams choquen contra la pared, causando la descalificacion de los dos corredores',NULL),(3,3,3,3,3,'Lorem Ipsum',NULL),(4,8,4,15,500,'Hamilton choco intentando rebasar a Checo',NULL),(5,4,5,14,253,'Carlos se le fue el auto de cola y choco contra la pared rompiendo la suspencion delantera ',NULL),(6,4,6,6,128,'Stroll gira muy cerrada una curva y no llega a frenar, rompe una rueda',NULL);
/*!40000 ALTER TABLE `accidentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `accidentes_2`
--

LOCK TABLES `accidentes_2` WRITE;
/*!40000 ALTER TABLE `accidentes_2` DISABLE KEYS */;
INSERT INTO `accidentes_2` VALUES (3,3,3,3,3,'Lorem Ipsum','2023-04-28 11:23:22'),(4,8,4,15,500,'Hamilton choco intentando rebasar a Checo','2023-05-06 01:02:19'),(5,4,5,14,253,'Carlos se le fue el auto de cola y choco contra la pared rompiendo la suspencion delantera ','2023-05-06 01:26:36'),(6,4,6,6,128,'Stroll gira muy cerrada una curva y no llega a frenar, rompe una rueda','2023-05-06 01:26:36');
/*!40000 ALTER TABLE `accidentes_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `escuderias`
--

LOCK TABLES `escuderias` WRITE;
/*!40000 ALTER TABLE `escuderias` DISABLE KEYS */;
INSERT INTO `escuderias` VALUES (1,1,'Oracle Red Bull Racing','RB19','Honda_RBPT','Max'),(2,2,'Oracle Red Bull Racing','RB19','Honda_RBPT','Sergio'),(3,5,'Alfa Romeo F1 Team Stake','	C43','Ferrari','Valtteri'),(4,15,'Alfa Romeo F1 Team Stake','C43','Ferrari','Zhou'),(5,3,'Aston Martin Aramco Cognizant F1 Team','AMR23','Mercedes','Alonso'),(6,6,'Aston Martin Aramco Cognizant F1 Team','AMR23','Mercedes','Lance'),(7,16,'McLaren F1 Team','MCL60','Mercedes','Lando'),(8,7,'McLaren F1 Team','MCL60','Mercedes','Oscar'),(9,20,'Williams Racing','FW45','FW45',' Alexander'),(10,13,'Williams Racing','FW45','FW45','Logan'),(11,3,'Scuderia AlphaTauri','AT04','Honda RBPT','Yuki'),(12,18,'Scuderia AlphaTauri','AT04','Honda RBPT','Nyck'),(13,8,'Scuderia Ferrari','SF-23','Ferrari','Charles'),(14,5,'Scuderia Ferrari','SF-23','Ferrari','Carlos'),(15,4,'Mercedes-AMG PETRONAS F1 Team','W14','Mercedes','Hamilton'),(16,11,'Mercedes-AMG PETRONAS F1 Team','W14','Mercedes','George'),(17,19,'BWT Alpine F1 Team','A523','Renault','Pierre'),(18,9,'BWT Alpine F1 Team','A523','Renault','Esteban'),(19,10,'MoneyGram Haas F1 Team','VF-23','Ferrari','Kevin'),(20,12,'MoneyGram Haas F1 Team','VF-23','Ferrari','Nico');
/*!40000 ALTER TABLE `escuderias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pilotos`
--

LOCK TABLES `pilotos` WRITE;
/*!40000 ALTER TABLE `pilotos` DISABLE KEYS */;
INSERT INTO `pilotos` VALUES (1,1,'Max','Verstappen',24,'Red_Bull_Racing'),(2,2,'Sergio ','Perez',33,'Red_Bull_Racing'),(3,5,'Fernando','Alonso',41,'Aston_Martin'),(4,15,'Lewis','Hamilton',38,'Mercedes'),(5,14,'Carlos','sainz',28,'Ferrari'),(6,6,'Lance','Stroll',25,'Aston_Martin'),(7,16,'George','Russell',26,'Mercedes'),(8,7,'Lando','Norris',23,'McLaren'),(9,20,'Nico','Hulkenberg',28,'Haas_F1_Team'),(10,13,'Charles','Leclerc',25,'Ferrari'),(11,3,'Valtteri ','Bottas',31,'Alfa_Romeo'),(12,18,'Esteban','Ocon',25,'Alpine'),(13,8,'Oscar','Piastri',21,'McLaren'),(14,17,'Pierre','Gasly',25,'Alpine'),(15,4,'Zhou','Guanyu',23,'Alfa_Romeo'),(16,11,'Yuki','Tsunoda',22,'Alphatauri'),(17,19,'Kevin','Magnusen',27,'Haas_F1_Team'),(18,9,'Alexander','Albon',26,'Williams'),(19,10,'Logan','Sargeant',22,'Williams'),(20,12,'Nyck','De_Vries',26,'Alphatauri');
/*!40000 ALTER TABLE `pilotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pistas`
--

LOCK TABLES `pistas` WRITE;
/*!40000 ALTER TABLE `pistas` DISABLE KEYS */;
INSERT INTO `pistas` VALUES (1,'Bahrain International Circuit'),(2,'Emilia Romagna Grand Prix'),(3,'Autódromo Internacional do Algarve'),(4,'Circuit de Barcelona-Catalunya'),(5,'Monaco Grand Prix'),(6,'Azerbaijan Grand Prix'),(7,'Circuit Paul Ricard'),(8,'Red Bull Ring'),(9,'Silverstone Circuit'),(10,'Hungaroring'),(11,'Belgian Grand Prix'),(12,'Dutch Grand Prix'),(13,'Monza'),(14,'Russian Grand Prix'),(15,'Marina Bay Street Circuit'),(16,'Suzuka Circuit'),(17,'Circuit of the Americas'),(18,'Autódromo Hermanos Rodríguez'),(19,'São Paulo Grand Prix'),(20,'Yas Marina Circuit');
/*!40000 ALTER TABLE `pistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puntaje_carrera`
--

LOCK TABLES `puntaje_carrera` WRITE;
/*!40000 ALTER TABLE `puntaje_carrera` DISABLE KEYS */;
INSERT INTO `puntaje_carrera` VALUES (1,3,1,25),(2,3,2,20),(4,3,3,18),(6,3,4,13),(5,3,5,9),(3,3,6,7),(8,3,7,5),(11,3,8,3);
/*!40000 ALTER TABLE `puntaje_carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puntaje_pilotos`
--

LOCK TABLES `puntaje_pilotos` WRITE;
/*!40000 ALTER TABLE `puntaje_pilotos` DISABLE KEYS */;
INSERT INTO `puntaje_pilotos` VALUES (1,1,69,'2',22,37,80,'Max'),(2,2,54,'0',10,5,28,'Sergio'),(3,3,45,'2',23,32,101,'Fernando'),(4,4,38,'7',61,103,192,'Lewis'),(5,5,20,'0',3,1,15,'Carlos'),(6,6,20,'0',0,0,3,'Lance'),(7,7,18,'0',5,1,1,'George'),(8,8,8,'0',5,0,1,'Lando'),(9,9,6,'0',2,0,0,'Niko'),(10,10,6,'0',7,5,24,'Charles'),(11,11,4,'0',19,10,67,'Vallteri'),(12,12,4,'0',0,1,2,'Esteban'),(13,13,4,'0',0,0,0,'Oscar'),(14,14,4,'0',3,1,3,'Pierre'),(15,15,2,'0',2,0,0,'Zhou'),(16,16,1,'0',0,0,0,'Yuki'),(17,17,1,'0',2,0,1,'Kevin'),(18,18,1,'0',0,0,2,'Alexander'),(19,19,0,'0',0,0,0,'Logan'),(20,20,0,'0',0,0,0,'Nyck');
/*!40000 ALTER TABLE `puntaje_pilotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puntajes_escuderia`
--

LOCK TABLES `puntajes_escuderia` WRITE;
/*!40000 ALTER TABLE `puntajes_escuderia` DISABLE KEYS */;
INSERT INTO `puntajes_escuderia` VALUES (1,123,5,'Oracle Red Bull Racing'),(3,6,0,'Alfa Romeo F1 Team Stake'),(5,65,0,'Aston Martin Aramco Cognizant F1 Team'),(7,12,8,'McLaren F1 Team'),(9,1,9,'Williams Racing'),(11,1,0,'Scuderia AlphaTauri'),(13,26,16,'Scuderia Ferrari'),(15,56,8,'Mercedes-AMG PETRONAS F1 Team'),(17,8,2,'BWT Alpine F1 Team'),(19,70,0,'MoneyGram Haas F1 Team');
/*!40000 ALTER TABLE `puntajes_escuderia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `puntajes_pilotos2`
--

LOCK TABLES `puntajes_pilotos2` WRITE;
/*!40000 ALTER TABLE `puntajes_pilotos2` DISABLE KEYS */;
INSERT INTO `puntajes_pilotos2` VALUES (1,99,'2',22,37,80,'Max'),(1,70,'2',22,37,80,'Max'),(1,66,'2',22,37,80,'Max'),(1,69,'2',22,37,80,'Max');
/*!40000 ALTER TABLE `puntajes_pilotos2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registro_eliminaciones`
--

LOCK TABLES `registro_eliminaciones` WRITE;
/*!40000 ALTER TABLE `registro_eliminaciones` DISABLE KEYS */;
INSERT INTO `registro_eliminaciones` VALUES (1,'nombre_de_la_tabla','2023-04-28 14:21:59','root@localhost'),(2,'nombre_de_la_tabla','2023-04-28 14:22:17','root@localhost'),(3,'nombre_de_la_tabla','2023-04-28 14:22:17','root@localhost'),(4,'nombre_de_la_tabla','2023-04-28 14:22:17','root@localhost');
/*!40000 ALTER TABLE `registro_eliminaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registro_eliminaciones2`
--

LOCK TABLES `registro_eliminaciones2` WRITE;
/*!40000 ALTER TABLE `registro_eliminaciones2` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_eliminaciones2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06 10:27:35
