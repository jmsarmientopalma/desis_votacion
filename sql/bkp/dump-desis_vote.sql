-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: desis_vote
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `canal`
--

DROP TABLE IF EXISTS `canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal`
--

LOCK TABLES `canal` WRITE;
/*!40000 ALTER TABLE `canal` DISABLE KEYS */;
INSERT INTO `canal` VALUES (1,'Web',1),(2,'TV',1),(3,'Redes Sociales',1),(4,'Amigo',1);
/*!40000 ALTER TABLE `canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidato`
--

DROP TABLE IF EXISTS `candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidato`
--

LOCK TABLES `candidato` WRITE;
/*!40000 ALTER TABLE `candidato` DISABLE KEYS */;
INSERT INTO `candidato` VALUES (1,'Albert Einstein',1),(2,'Isaac Newton',1),(3,'Nicolás Copérnico',1),(4,'Nathan Rosen',1),(5,'Marie Curie',1),(6,'Ada Lovelace',1),(7,'Lise Meitner',1),(8,'Charles Babbage',1),(9,'Alan Turing',1);
/*!40000 ALTER TABLE `candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comuna`
--

DROP TABLE IF EXISTS `comuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comuna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idregion` smallint(6) NOT NULL DEFAULT 1,
  `nombre` varchar(45) NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `idcarga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comuna`
--

LOCK TABLES `comuna` WRITE;
/*!40000 ALTER TABLE `comuna` DISABLE KEYS */;
INSERT INTO `comuna` VALUES (1,1,'Iquique',1,1101),(2,1,'Alto Hospicio',1,1107),(3,1,'Pozo Almonte',1,1401),(4,1,'Camiña',1,1402),(5,1,'Colchane',1,1403),(6,1,'Huara',1,1404),(7,1,'Pica',1,1405),(8,2,'Antofagasta',1,2101),(9,2,'Mejillones',1,2102),(10,2,'Sierra Gorda',1,2103),(11,2,'Taltal',1,2104),(12,2,'Calama',1,2201),(13,2,'Ollagüe',1,2202),(14,2,'San Pedro de Atacama',1,2203),(15,2,'Tocopilla',1,2301),(16,2,'María Elena',1,2302),(17,3,'Copiapó',1,3101),(18,3,'Caldera',1,3102),(19,3,'Tierra Amarilla',1,3103),(20,3,'Chañaral',1,3201),(21,3,'Diego de Almagro',1,3202),(22,3,'Vallenar',1,3301),(23,3,'Alto del Carmen',1,3302),(24,3,'Freirina',1,3303),(25,3,'Huasco',1,3304),(26,4,'La Serena',1,4101),(27,4,'Coquimbo',1,4102),(28,4,'Andacollo',1,4103),(29,4,'La Higuera',1,4104),(30,4,'Paihuano',1,4105),(31,4,'Vicuña',1,4106),(32,4,'Illapel',1,4201),(33,4,'Canela',1,4202),(34,4,'Los Vilos',1,4203),(35,4,'Salamanca',1,4204),(36,4,'Ovalle',1,4301),(37,4,'Combarbalá',1,4302),(38,4,'Monte Patria',1,4303),(39,4,'Punitaqui',1,4304),(40,4,'Río Hurtado',1,4305),(41,5,'Valparaíso',1,5101),(42,5,'Casablanca',1,5102),(43,5,'Concón',1,5103),(44,5,'Juan Fernández',1,5104),(45,5,'Puchuncaví',1,5105),(46,5,'Quintero',1,5107),(47,5,'Viña del Mar',1,5109),(48,5,'Isla de Pascua',1,5201),(49,5,'Los Andes',1,5301),(50,5,'Calle Larga',1,5302),(51,5,'Rinconada',1,5303),(52,5,'San Esteban',1,5304),(53,5,'La Ligua',1,5401),(54,5,'Cabildo',1,5402),(55,5,'Papudo',1,5403),(56,5,'Petorca',1,5404),(57,5,'Zapallar',1,5405),(58,5,'Quillota',1,5501),(59,5,'La Calera',1,5502),(60,5,'Hijuelas',1,5503),(61,5,'La Cruz',1,5504),(62,5,'Nogales',1,5506),(63,5,'San Antonio',1,5601),(64,5,'Algarrobo',1,5602),(65,5,'Cartagena',1,5603),(66,5,'El Quisco',1,5604),(67,5,'El Tabo',1,5605),(68,5,'Santo Domingo',1,5606),(69,5,'San Felipe',1,5701),(70,5,'Catemu',1,5702),(71,5,'Llay Llay',1,5703),(72,5,'Panquehue',1,5704),(73,5,'Putaendo',1,5705),(74,5,'Santa María',1,5706),(75,5,'Quilpué',1,5801),(76,5,'Limache',1,5802),(77,5,'Olmué',1,5803),(78,5,'Villa Alemana',1,5804),(79,6,'Rancagua',1,6101),(80,6,'Codegua',1,6102),(81,6,'Coinco',1,6103),(82,6,'Coltauco',1,6104),(83,6,'Doñihue',1,6105),(84,6,'Graneros',1,6106),(85,6,'Las Cabras',1,6107),(86,6,'Machalí',1,6108),(87,6,'Malloa',1,6109),(88,6,'Mostazal',1,6110),(89,6,'Olivar',1,6111),(90,6,'Peumo',1,6112),(91,6,'Pichidegua',1,6113),(92,6,'Quinta de Tilcoco',1,6114),(93,6,'Rengo',1,6115),(94,6,'Requínoa',1,6116),(95,6,'San Vicente',1,6117),(96,6,'Pichilemu',1,6201),(97,6,'La Estrella',1,6202),(98,6,'Litueche',1,6203),(99,6,'Marchihue',1,6204),(100,6,'Navidad',1,6205),(101,6,'Paredones',1,6206),(102,6,'San Fernando',1,6301),(103,6,'Chépica',1,6302),(104,6,'Chimbarongo',1,6303),(105,6,'Lolol',1,6304),(106,6,'Nancagua',1,6305),(107,6,'Palmilla',1,6306),(108,6,'Peralillo',1,6307),(109,6,'Placilla',1,6308),(110,6,'Pumanque',1,6309),(111,6,'Santa Cruz',1,6310),(112,7,'Talca',1,7101),(113,7,'Constitución',1,7102),(114,7,'Curepto',1,7103),(115,7,'Empedrado',1,7104),(116,7,'Maule',1,7105),(117,7,'Pelarco',1,7106),(118,7,'Pencahue',1,7107),(119,7,'Río Claro',1,7108),(120,7,'San Clemente',1,7109),(121,7,'San Rafael',1,7110),(122,7,'Cauquenes',1,7201),(123,7,'Chanco',1,7202),(124,7,'Pelluhue',1,7203),(125,7,'Curicó',1,7301),(126,7,'Hualañé',1,7302),(127,7,'Licantén',1,7303),(128,7,'Molina',1,7304),(129,7,'Rauco',1,7305),(130,7,'Romeral',1,7306),(131,7,'Sagrada Familia',1,7307),(132,7,'Teno',1,7308),(133,7,'Vichuquén',1,7309),(134,7,'Linares',1,7401),(135,7,'Colbún',1,7402),(136,7,'Longaví',1,7403),(137,7,'Parral',1,7404),(138,7,'Retiro',1,7405),(139,7,'San Javier',1,7406),(140,7,'Villa Alegre',1,7407),(141,7,'Yerbas Buenas',1,7408),(142,8,'Concepción',1,8101),(143,8,'Coronel',1,8102),(144,8,'Chiguayante',1,8103),(145,8,'Florida',1,8104),(146,8,'Hualqui',1,8105),(147,8,'Lota',1,8106),(148,8,'Penco',1,8107),(149,8,'San Pedro de la Paz',1,8108),(150,8,'Santa Juana',1,8109),(151,8,'Talcahuano',1,8110),(152,8,'Tomé',1,8111),(153,8,'Hualpén',1,8112),(154,8,'Lebu',1,8201),(155,8,'Arauco',1,8202),(156,8,'Cañete',1,8203),(157,8,'Contulmo',1,8204),(158,8,'Curanilahue',1,8205),(159,8,'Los Álamos',1,8206),(160,8,'Tirúa',1,8207),(161,8,'Los Ángeles',1,8301),(162,8,'Antuco',1,8302),(163,8,'Cabrero',1,8303),(164,8,'Laja',1,8304),(165,8,'Mulchén',1,8305),(166,8,'Nacimiento',1,8306),(167,8,'Negrete',1,8307),(168,8,'Quilaco',1,8308),(169,8,'Quilleco',1,8309),(170,8,'San Rosendo',1,8310),(171,8,'Santa Bárbara',1,8311),(172,8,'Tucapel',1,8312),(173,8,'Yumbel',1,8313),(174,8,'Alto Biobío',1,8314),(175,8,'Chillán',1,8401),(176,8,'Bulnes',1,8402),(177,8,'Cobquecura',1,8403),(178,8,'Coelemu',1,8404),(179,8,'Coihueco',1,8405),(180,8,'Chillán Viejo',1,8406),(181,8,'El Carmen',1,8407),(182,8,'Ninhue',1,8408),(183,8,'Ñiquén',1,8409),(184,8,'Pemuco',1,8410),(185,8,'Pinto',1,8411),(186,8,'Portezuelo',1,8412),(187,8,'Quillón',1,8413),(188,8,'Quirihue',1,8414),(189,8,'Ránquil',1,8415),(190,8,'San Carlos',1,8416),(191,8,'San Fabián',1,8417),(192,8,'San Ignacio',1,8418),(193,8,'San Nicolás',1,8419),(194,8,'Treguaco',1,8420),(195,8,'Yungay',1,8421),(196,9,'Temuco',1,9101),(197,9,'Carahue',1,9102),(198,9,'Cunco',1,9103),(199,9,'Curarrehue',1,9104),(200,9,'Freire',1,9105),(201,9,'Galvarino',1,9106),(202,9,'Gorbea',1,9107),(203,9,'Lautaro',1,9108),(204,9,'Loncoche',1,9109),(205,9,'Melipeuco',1,9110),(206,9,'Nueva Imperial',1,9111),(207,9,'Padre las Casas',1,9112),(208,9,'Perquenco',1,9113),(209,9,'Pitrufquén',1,9114),(210,9,'Pucón',1,9115),(211,9,'Saavedra',1,9116),(212,9,'Teodoro Schmidt',1,9117),(213,9,'Toltén',1,9118),(214,9,'Vilcún',1,9119),(215,9,'Villarrica',1,9120),(216,9,'Cholchol',1,9121),(217,9,'Angol',1,9201),(218,9,'Collipulli',1,9202),(219,9,'Curacautín',1,9203),(220,9,'Ercilla',1,9204),(221,9,'Lonquimay',1,9205),(222,9,'Los Sauces',1,9206),(223,9,'Lumaco',1,9207),(224,9,'Purén',1,9208),(225,9,'Renaico',1,9209),(226,9,'Traiguén',1,9210),(227,9,'Victoria',1,9211),(228,10,'Puerto Montt',1,10101),(229,10,'Calbuco',1,10102),(230,10,'Cochamó',1,10103),(231,10,'Fresia',1,10104),(232,10,'Frutillar',1,10105),(233,10,'Los Muermos',1,10106),(234,10,'Llanquihue',1,10107),(235,10,'Maullín',1,10108),(236,10,'Puerto Varas',1,10109),(237,10,'Castro',1,10201),(238,10,'Ancud',1,10202),(239,10,'Chonchi',1,10203),(240,10,'Curaco de Vélez',1,10204),(241,10,'Dalcahue',1,10205),(242,10,'Puqueldón',1,10206),(243,10,'Queilén',1,10207),(244,10,'Quellón',1,10208),(245,10,'Quemchi',1,10209),(246,10,'Quinchao',1,10210),(247,10,'Osorno',1,10301),(248,10,'Puerto Octay',1,10302),(249,10,'Purranque',1,10303),(250,10,'Puyehue',1,10304),(251,10,'Río Negro',1,10305),(252,10,'San Juan de la Costa',1,10306),(253,10,'San Pablo',1,10307),(254,10,'Chaitén',1,10401),(255,10,'Futaleufú',1,10402),(256,10,'Hualaihué',1,10403),(257,10,'Palena',1,10404),(258,11,'Coyhaique',1,11101),(259,11,'Lago Verde',1,11102),(260,11,'Aysén',1,11201),(261,11,'Cisnes',1,11202),(262,11,'Guaitecas',1,11203),(263,11,'Cochrane',1,11301),(264,11,'O\'Higgins',1,11302),(265,11,'Tortel',1,11303),(266,11,'Chile Chico',1,11401),(267,11,'Río Ibáñez',1,11402),(268,12,'Punta Arenas',1,12101),(269,12,'Laguna Blanca',1,12102),(270,12,'Río Verde',1,12103),(271,12,'San Gregorio',1,12104),(272,12,'Cabo de Hornos',1,12201),(273,12,'Antártica',1,12202),(274,12,'Porvenir',1,12301),(275,12,'Primavera',1,12302),(276,12,'Timaukel',1,12303),(277,12,'Natales',1,12401),(278,12,'Torres del Paine',1,12402),(279,13,'Santiago',1,13101),(280,13,'Cerrillos',1,13102),(281,13,'Cerro Navia',1,13103),(282,13,'Conchalí',1,13104),(283,13,'El Bosque',1,13105),(284,13,'Estación Central',1,13106),(285,13,'Huechuraba',1,13107),(286,13,'Independencia',1,13108),(287,13,'La Cisterna',1,13109),(288,13,'La Florida',1,13110),(289,13,'La Granja',1,13111),(290,13,'La Pintana',1,13112),(291,13,'La Reina',1,13113),(292,13,'Las Condes',1,13114),(293,13,'Lo Barnechea',1,13115),(294,13,'Lo Espejo',1,13116),(295,13,'Lo Prado',1,13117),(296,13,'Macul',1,13118),(297,13,'Maipú',1,13119),(298,13,'Ñuñoa',1,13120),(299,13,'Pedro Aguirre Cerda',1,13121),(300,13,'Peñalolén',1,13122),(301,13,'Providencia',1,13123),(302,13,'Pudahuel',1,13124),(303,13,'Quilicura',1,13125),(304,13,'Quinta Normal',1,13126),(305,13,'Recoleta',1,13127),(306,13,'Renca',1,13128),(307,13,'San Joaquín',1,13129),(308,13,'San Miguel',1,13130),(309,13,'San Ramón',1,13131),(310,13,'Vitacura',1,13132),(311,13,'Puente Alto',1,13201),(312,13,'Pirque',1,13202),(313,13,'San José de Maipo',1,13203),(314,13,'Colina',1,13301),(315,13,'Lampa',1,13302),(316,13,'Tiltil',1,13303),(317,13,'San Bernardo',1,13401),(318,13,'Buin',1,13402),(319,13,'Calera de Tango',1,13403),(320,13,'Paine',1,13404),(321,13,'Melipilla',1,13501),(322,13,'Alhué',1,13502),(323,13,'Curacaví',1,13503),(324,13,'María Pinto',1,13504),(325,13,'San Pedro',1,13505),(326,13,'Talagante',1,13601),(327,13,'El Monte',1,13602),(328,13,'Isla de Maipo',1,13603),(329,13,'Padre Hurtado',1,13604),(330,13,'Peñaflor',1,13605),(331,14,'Valdivia',1,14101),(332,14,'Corral',1,14102),(333,14,'Lanco',1,14103),(334,14,'Los Lagos',1,14104),(335,14,'Máfil',1,14105),(336,14,'Mariquina',1,14106),(337,14,'Paillaco',1,14107),(338,14,'Panguipulli',1,14108),(339,14,'La Unión',1,14201),(340,14,'Futrono',1,14202),(341,14,'Lago Ranco',1,14203),(342,14,'Río Bueno',1,14204),(343,15,'Arica',1,15101),(344,15,'Camarones',1,15102),(345,15,'Putre',1,15201),(346,15,'General Lagos',1,15202);
/*!40000 ALTER TABLE `comuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `nombre_corto` varchar(30) NOT NULL,
  `codigo` varchar(4) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Tarapacá','Tarapacá','I',1),(2,'Antofagasta','Antofagasta','II',1),(3,'Atacama','Atacama','III',1),(4,'Coquimbo','Coquimbo','IV',1),(5,'Valparaíso','Valparaíso','V',1),(6,'Libertador General Bernardo O\'Higgins','O\'Higgins','VI',1),(7,'Maule','Maule','VII',1),(8,'Bío-Bío','Bío-Bío','VIII',1),(9,'La Araucanía','La Araucanía','IX',1),(10,'Los Lagos','Los Lagos','X',1),(11,'Aysén del General Carlos Ibáñez del Campo','Aysén','XI',1),(12,'Magallanes y la Antártica Chilena','Magallanes','XII',1),(13,'Metropolitana','Metropolitana','XIII',1),(14,'Los Ríos','Los Ríos','XIV',1),(15,'Arica y Parinacota','Arica y Parinacota','XV',1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votacion`
--

DROP TABLE IF EXISTS `votacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `rut` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `idcomuna` int(11) NOT NULL DEFAULT 0,
  `idcandidato` int(11) NOT NULL DEFAULT 0,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `votacion_FK` (`idcomuna`),
  KEY `votacion_email_IDX` (`email`,`estado`) USING BTREE,
  KEY `votacion_idcandidato_IDX` (`idcandidato`,`estado`) USING BTREE,
  KEY `votacion_rut_IDX` (`rut`,`estado`) USING BTREE,
  CONSTRAINT `votacion_FK` FOREIGN KEY (`idcomuna`) REFERENCES `comuna` (`id`),
  CONSTRAINT `votacion_FK_1` FOREIGN KEY (`idcandidato`) REFERENCES `candidato` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votacion`
--

LOCK TABLES `votacion` WRITE;
/*!40000 ALTER TABLE `votacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `votacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votacion_canal`
--

DROP TABLE IF EXISTS `votacion_canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votacion_canal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idvotacion` int(11) NOT NULL DEFAULT 0,
  `idcanal` int(11) NOT NULL DEFAULT 0,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `votacion_canal_FK_1` (`idcanal`),
  KEY `votacion_canal_idvotacion_IDX` (`idvotacion`,`estado`) USING BTREE,
  CONSTRAINT `votacion_canal_FK` FOREIGN KEY (`idvotacion`) REFERENCES `votacion` (`id`),
  CONSTRAINT `votacion_canal_FK_1` FOREIGN KEY (`idcanal`) REFERENCES `canal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votacion_canal`
--

LOCK TABLES `votacion_canal` WRITE;
/*!40000 ALTER TABLE `votacion_canal` DISABLE KEYS */;
/*!40000 ALTER TABLE `votacion_canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'desis_vote'
--

--
-- Dumping routines for database 'desis_vote'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_checkVotoRut` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_checkVotoRut`(
	in prmRut varchar(10)
)
BEGIN
	select 
		count(*) as emitido
	from votacion v
	where trim(v.rut) = prmRut
	and v.estado = 1
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getCanales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_getCanales`()
BEGIN
	select
		c.id,
		trim(c.nombre) as canal
	from canal c
	where c.estado = 1
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getCandidatos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_getCandidatos`()
BEGIN
	select 
		c.id,
		trim(c.nombre) as nombre
	from candidato c
	where c.estado = 1
	order by c.nombre
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getComunas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_getComunas`(
	in id_region int
)
BEGIN
	select 
		c.id,
		trim(c.nombre) as nombre
	from comuna c
	where c.estado = 1
	and c.idregion = id_region
	order by c.idregion asc, c.nombre asc
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getRegion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_getRegion`()
BEGIN
	select 
		r.id,
		trim(r.nombre) as nombre,
		trim(r.nombre_corto) as nombre_corto,
		trim(r.codigo) as codigo
	from region r
	where r.estado = 1
	order by r.id asc
	;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_saveVotoCanal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_saveVotoCanal`(
	in idvotacion int,
	in idcanal int
)
BEGIN
	INSERT INTO votacion_canal
	(idvotacion, idcanal)
	VALUES(idvotacion, idcanal);

	select LAST_INSERT_ID() as resp; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_vote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE  PROCEDURE `sp_vote`(
	in prmNombre varchar(40),
	in prmAlias varchar(20),
	in prmRut varchar(10),
	in prmEmail varchar(60),
	in prmIdComuna int,
	in prmIdCandidato int
)
BEGIN
	set @cont = (select count(*) from votacion where trim(rut) = trim(prmRut) and estado = 1);

	if @cont <> 0 then
		select 0 as resp;
	else
		INSERT INTO votacion
		(nombre, alias, rut, email, idcomuna, idcandidato)
		VALUES(trim(prmNombre), trim(prmAlias), trim(prmRut), trim(prmEmail), prmIdComuna, prmIdCandidato)
		;
	
		select LAST_INSERT_ID() as resp; 
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 12:39:07
