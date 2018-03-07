-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mundo
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `ciudadano`
--

DROP TABLE IF EXISTS `ciudadano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudadano` (
  `ciudadano_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `lugar_nacimiento` varchar(50) DEFAULT 'Chihuahua',
  `pais_nacimiento` varchar(50) DEFAULT 'Mexico',
  `genero` varchar(15) NOT NULL,
  PRIMARY KEY (`ciudadano_id`),
  UNIQUE KEY `RFC` (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudadano`
--

LOCK TABLES `ciudadano` WRITE;
/*!40000 ALTER TABLE `ciudadano` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudadano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `ciudades_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `poblacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`ciudades_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'CHIHUAHUA',809000),(2,'DELICIAS',809000),(3,'CAMARGO',40000);
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comida_mundo`
--

DROP TABLE IF EXISTS `comida_mundo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comida_mundo` (
  `comida_id` int(11) DEFAULT NULL,
  `nombre_comida` enum('TACOS','BURRITOS','CARNE ASADA','TLACOYOS') DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comida_mundo`
--

LOCK TABLES `comida_mundo` WRITE;
/*!40000 ALTER TABLE `comida_mundo` DISABLE KEYS */;
INSERT INTO `comida_mundo` VALUES (1,'TACOS',8.00);
/*!40000 ALTER TABLE `comida_mundo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copia_paises`
--

DROP TABLE IF EXISTS `copia_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copia_paises` (
  `IdCiudad` int(11) NOT NULL,
  `Nombre_Ciudad` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copia_paises`
--

LOCK TABLES `copia_paises` WRITE;
/*!40000 ALTER TABLE `copia_paises` DISABLE KEYS */;
INSERT INTO `copia_paises` VALUES (1,'Delcias'),(2,'Chihuahua'),(3,'Parral'),(4,'Camargo'),(5,'Rosales'),(6,'Meoqui'),(7,'Saucillo'),(8,'Juarez'),(9,'Casas Grandes'),(10,'Nuevo Saucillo');
/*!40000 ALTER TABLE `copia_paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oceanos`
--

DROP TABLE IF EXISTS `oceanos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanos` (
  `oceanos_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `profundidad_media` int(11) DEFAULT '3000',
  PRIMARY KEY (`oceanos_id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oceanos`
--

LOCK TABLES `oceanos` WRITE;
/*!40000 ALTER TABLE `oceanos` DISABLE KEYS */;
INSERT INTO `oceanos` VALUES (1,'pacifico',4188),(2,'indico',3000);
/*!40000 ALTER TABLE `oceanos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `paises_id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `poblacion` int(11) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises_copia`
--

DROP TABLE IF EXISTS `paises_copia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises_copia` (
  `paises_id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `poblacion` int(11) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises_copia`
--

LOCK TABLES `paises_copia` WRITE;
/*!40000 ALTER TABLE `paises_copia` DISABLE KEYS */;
/*!40000 ALTER TABLE `paises_copia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajero`
--

DROP TABLE IF EXISTS `viajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viajero` (
  `viajero_id` int(11) NOT NULL,
  `articulo` varchar(40) DEFAULT NULL,
  `viaticos` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajero`
--

LOCK TABLES `viajero` WRITE;
/*!40000 ALTER TABLE `viajero` DISABLE KEYS */;
INSERT INTO `viajero` VALUES (1,'algo',1000.00);
/*!40000 ALTER TABLE `viajero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06 17:31:43
