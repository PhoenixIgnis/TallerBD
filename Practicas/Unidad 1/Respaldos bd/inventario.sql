-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: inventario
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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `IdCiudad` int(11) NOT NULL,
  `Nombre_Ciudad` varchar(45) NOT NULL,
  PRIMARY KEY (`IdCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Delcias'),(2,'Chihuahua'),(3,'Parral'),(4,'Camargo'),(5,'Rosales'),(6,'Meoqui'),(7,'Saucillo'),(8,'Juarez'),(9,'Casas Grandes'),(10,'Nuevo Saucillo');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `no_cliente` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `a_paterno` varchar(45) NOT NULL,
  `a_materno` varchar(45) DEFAULT NULL,
  `Calle` varchar(45) NOT NULL,
  `No_Casa` varchar(20) NOT NULL,
  `Colonia` varchar(45) NOT NULL,
  `cp` int(11) NOT NULL,
  `Rfc` varchar(45) NOT NULL,
  `Ciudad_IdCiudad` int(11) NOT NULL,
  PRIMARY KEY (`no_cliente`,`Rfc`,`Ciudad_IdCiudad`),
  KEY `fk_clientes_Ciudad1_idx` (`Ciudad_IdCiudad`),
  CONSTRAINT `fk_clientes_Ciudad1` FOREIGN KEY (`Ciudad_IdCiudad`) REFERENCES `ciudad` (`IdCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Pancho','Rodriguez','Torres','13','1235','Caiman',33000,'AIEFHG3123',1),(2,'Pedro','Garcia','Sanchez','Sicomoro','654','Lagarto',32102,'FHI3566',2),(3,'Toño','Jimenez','Campos','Abedul','8765','Alacran',33000,'JGJD765',1),(4,'Mauricio','Mendez','Silva','Camotes','2345','Lagarto',32102,'KIEIR5234',2),(5,'Miguel','Ochoa','Jimenez','Cimarron','734','Ave',32102,'IGJHH52',2),(6,'Miguela','Carrasco','Iniesta','Cigarra','543','Paloma',33000,'IDMCI312',1),(7,'Jimena','Lopez','Ribery','Cigarrillo','23','Caiman',32102,'ZINON654',2),(8,'Rosa','Gomez','Klassen','Cesgo','54','Alameda',32102,'OCIRN76',2),(9,'Ruby','Galvan','Kuyt','Salto','65','Abuelo',33000,'QWOR52',1),(10,'Esmeralda','Trotsky','Robben','Salomon','12','Niño',32102,'OMOC647',2);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `no_emepleado` int(11) NOT NULL,
  `nombre_e` varchar(45) NOT NULL,
  `apellido_p` varchar(45) NOT NULL,
  `apellido_m` varchar(45) DEFAULT NULL,
  `Calle` varchar(45) NOT NULL,
  `No_Casa` varchar(45) NOT NULL,
  `Colonia` varchar(45) NOT NULL,
  `cp` int(11) NOT NULL,
  `Rfc` varchar(45) NOT NULL,
  `Ciudad_IdCiudad` int(11) NOT NULL,
  PRIMARY KEY (`no_emepleado`,`Rfc`,`Ciudad_IdCiudad`),
  KEY `fk_empleados_Ciudad1_idx` (`Ciudad_IdCiudad`),
  CONSTRAINT `fk_empleados_Ciudad1` FOREIGN KEY (`Ciudad_IdCiudad`) REFERENCES `ciudad` (`IdCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Pinocho','Ralomino','Rigalina','14','2','Perez',32203,'ASDIOJIO123',3),(2,'Gepeto','Palomino','Geralina','Ciego','3','Loma',54321,'GFDSAI234',8),(3,'Muñequin','Calomino','Rogalina','Sordo','7','Perez',32203,'SDFLKJ453',3),(4,'Muñeca','Pelomino','Garolina','Mudo','5','Loma',54321,'KJSDI324',8),(5,'Pitagoras','Tolomino','Ceralina','Tuerto','4','Colon',32203,'ASIFH654',3),(6,'Cepillin','Talomino','Barolina','Cojo','43','Aguila',98742,'IIWUOE345',7),(7,'Juan','Gelomino','Berolina','Atilano','1','Loma',54321,'OWIOE23',8),(8,'Juana','Galomino','Abulina','Punto','76','Perea',32203,'PJOY675',3),(9,'Jairo','Gilomino','Cegolina','Cuadrado','43','Hidalgo',98742,'NZHJXC12',7),(10,'Julio','Aolomino','Zulomina','Rectangulo','890','Camilon',54321,'ICIHN559',8);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `Clave_Inventario` varchar(45) NOT NULL,
  `existencia` int(11) NOT NULL,
  `inv_min` int(11) NOT NULL,
  `inv_max` int(11) NOT NULL,
  `productos_clave_producto` varchar(10) NOT NULL,
  `Razon_Social` varchar(45) NOT NULL,
  PRIMARY KEY (`Clave_Inventario`,`productos_clave_producto`,`Razon_Social`),
  KEY `fk_inventario_productos1_idx` (`productos_clave_producto`),
  CONSTRAINT `fk_inventario_productos1` FOREIGN KEY (`productos_clave_producto`) REFERENCES `productos` (`clave_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES ('1',20,5,30,'1','Venta'),('10',900,500,100,'10','Venta'),('2',30,10,30,'2','Venta'),('3',532,100,540,'3','Venta'),('4',10,5,20,'4','Venta'),('5',90,30,90,'5','Venta'),('6',100,20,100,'6','Venta'),('7',11,3,15,'7','Venta'),('8',1,1,2,'8','Venta'),('9',2,1,2,'9','Venta');
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `clave_producto` varchar(10) NOT NULL,
  `precio_unitario` float NOT NULL,
  `precio_mayoreo` float NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `Codigo_de_Barra` varchar(45) NOT NULL,
  PRIMARY KEY (`clave_producto`,`Codigo_de_Barra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('1',5,4,'Cepillo dental','10101101'),('10',1,1,'Moneda de a peso','11101010'),('2',10,9,'Chocolate Negro','10101010'),('3',150,120,'Lamina de Oro','10101110'),('4',20,15,'Lamina de plata','11101011'),('5',23,20,'Leche Gallito','10111101'),('6',1,1,'Chicle Goma','11010001'),('7',2,1,'Chicle Bomba','10010101'),('8',67,45,'Chicle Explosion Nuclear Nagasaki','10100101'),('9',9,5,'Paleta Rockaleta','10010010');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_has_proveedor`
--

DROP TABLE IF EXISTS `productos_has_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_has_proveedor` (
  `productos_clave_producto` varchar(10) NOT NULL,
  `proveedor_no_proveedor` int(11) NOT NULL,
  PRIMARY KEY (`productos_clave_producto`,`proveedor_no_proveedor`),
  KEY `fk_productos_has_proveedor_proveedor1_idx` (`proveedor_no_proveedor`),
  KEY `fk_productos_has_proveedor_productos1_idx` (`productos_clave_producto`),
  CONSTRAINT `fk_productos_has_proveedor_productos1` FOREIGN KEY (`productos_clave_producto`) REFERENCES `productos` (`clave_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_has_proveedor_proveedor1` FOREIGN KEY (`proveedor_no_proveedor`) REFERENCES `proveedor` (`no_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_has_proveedor`
--

LOCK TABLES `productos_has_proveedor` WRITE;
/*!40000 ALTER TABLE `productos_has_proveedor` DISABLE KEYS */;
INSERT INTO `productos_has_proveedor` VALUES ('7',1),('3',2),('4',2),('5',2),('5',3),('1',5),('2',5),('10',8),('9',8),('8',9);
/*!40000 ALTER TABLE `productos_has_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `no_proveedor` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Ape_Paterno` varchar(45) NOT NULL,
  `Ape_Materno` varchar(45) NOT NULL,
  `Calle` varchar(45) NOT NULL,
  `No_Local` varchar(45) NOT NULL,
  `Colonia` varchar(45) NOT NULL,
  `Cp` int(11) NOT NULL,
  `Rfc` varchar(45) NOT NULL,
  `Ciudad_IdCiudad` int(11) NOT NULL,
  PRIMARY KEY (`no_proveedor`,`Rfc`,`Ciudad_IdCiudad`),
  KEY `fk_proveedor_Ciudad1_idx` (`Ciudad_IdCiudad`),
  CONSTRAINT `fk_proveedor_Ciudad1` FOREIGN KEY (`Ciudad_IdCiudad`) REFERENCES `ciudad` (`IdCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Miguel','Rodriguez','Uvune','Camiza','84','Colonial',12,'HDUU45',1),(2,'Juancho','Perez','Nagasaki','Pantalon','29','Carabela',13,'RIH5345',5),(3,'Miguela','Ochoa','Jing','Encino','23','Colon',13,'IRIJG43',5),(4,'Jaime','Buendia','Jong','Maquila','109','Virgen',14,'OHKO554',5),(5,'Carmen','Cimarron','Jang','Multinacional','543','Niña',14,'OFJD4',7),(6,'Carlos','Ochoa','De Jong','España','76','Santa Maria',14,'OKJG765',7),(7,'Lourdes','De Bruyne','Roller','Colonia','5','Nueva España',14,'LOKOH76',7),(8,'Balcazar','Hazard','Boulder','Chile','36','Corona Española',14,'KFMV54',6),(9,'Eugenio','Onuyeyene','Ovuses','Suiza','87','Oro',14,'CKXI351',6),(10,'Isaac','Uvuvwewewe','Osas','Ecuador','39','Esclavitud',15,'OIOTRE2',6);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas` (
  `no_venta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `productos_clave_producto` varchar(10) NOT NULL,
  `empleados_no_emepleado` int(11) NOT NULL,
  `clientes_no_cliente` int(11) NOT NULL,
  `Id Serie` varchar(45) NOT NULL,
  PRIMARY KEY (`no_venta`,`Id Serie`),
  KEY `fk_ventas_productos1_idx` (`productos_clave_producto`),
  KEY `fk_ventas_empleados1_idx` (`empleados_no_emepleado`),
  KEY `fk_ventas_clientes1_idx` (`clientes_no_cliente`),
  CONSTRAINT `fk_ventas_clientes1` FOREIGN KEY (`clientes_no_cliente`) REFERENCES `clientes` (`no_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_empleados1` FOREIGN KEY (`empleados_no_emepleado`) REFERENCES `empleados` (`no_emepleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_productos1` FOREIGN KEY (`productos_clave_producto`) REFERENCES `productos` (`clave_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2011-10-11','1',1,1,'1'),(2,'2012-10-11','5',1,2,'2'),(3,'2013-10-11','4',2,3,'3'),(4,'2014-10-11','9',2,4,'4'),(5,'2015-10-11','9',2,5,'5'),(6,'2016-10-12','8',3,6,'6'),(7,'2017-10-12','4',3,7,'7'),(8,'2017-10-12','6',4,8,'8'),(9,'2017-10-12','2',4,9,'9'),(10,'2017-10-12','1',5,10,'10'),(11,'2017-10-12','3',2,1,'11');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_has_clientes`
--

DROP TABLE IF EXISTS `ventas_has_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_has_clientes` (
  `ventas_no_venta` int(11) NOT NULL,
  `clientes_no_cliente` int(11) NOT NULL,
  PRIMARY KEY (`ventas_no_venta`,`clientes_no_cliente`),
  KEY `fk_ventas_has_clientes_clientes1_idx` (`clientes_no_cliente`),
  KEY `fk_ventas_has_clientes_ventas_idx` (`ventas_no_venta`),
  CONSTRAINT `fk_ventas_has_clientes_clientes1` FOREIGN KEY (`clientes_no_cliente`) REFERENCES `clientes` (`no_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_has_clientes_ventas` FOREIGN KEY (`ventas_no_venta`) REFERENCES `ventas` (`no_venta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_has_clientes`
--

LOCK TABLES `ventas_has_clientes` WRITE;
/*!40000 ALTER TABLE `ventas_has_clientes` DISABLE KEYS */;
INSERT INTO `ventas_has_clientes` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `ventas_has_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_has_clientes_has_productos`
--

DROP TABLE IF EXISTS `ventas_has_clientes_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventas_has_clientes_has_productos` (
  `ventas_has_clientes_ventas_no_venta` int(11) NOT NULL,
  `ventas_has_clientes_clientes_no_cliente` int(11) NOT NULL,
  `productos_clave_producto` varchar(10) NOT NULL,
  PRIMARY KEY (`ventas_has_clientes_ventas_no_venta`,`ventas_has_clientes_clientes_no_cliente`,`productos_clave_producto`),
  KEY `fk_ventas_has_clientes_has_productos_productos1_idx` (`productos_clave_producto`),
  KEY `fk_ventas_has_clientes_has_productos_ventas_has_clientes1_idx` (`ventas_has_clientes_ventas_no_venta`,`ventas_has_clientes_clientes_no_cliente`),
  CONSTRAINT `fk_ventas_has_clientes_has_productos_productos1` FOREIGN KEY (`productos_clave_producto`) REFERENCES `productos` (`clave_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ventas_has_clientes_has_productos_ventas_has_clientes1` FOREIGN KEY (`ventas_has_clientes_ventas_no_venta`, `ventas_has_clientes_clientes_no_cliente`) REFERENCES `ventas_has_clientes` (`ventas_no_venta`, `clientes_no_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_has_clientes_has_productos`
--

LOCK TABLES `ventas_has_clientes_has_productos` WRITE;
/*!40000 ALTER TABLE `ventas_has_clientes_has_productos` DISABLE KEYS */;
INSERT INTO `ventas_has_clientes_has_productos` VALUES (1,1,'1'),(2,2,'4'),(3,3,'9'),(4,4,'9'),(5,5,'8'),(6,6,'4'),(7,7,'6'),(8,8,'5'),(9,9,'2'),(10,10,'1');
/*!40000 ALTER TABLE `ventas_has_clientes_has_productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06 17:31:24
