-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: caliari
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5.1

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
-- Table structure for table `blocos`
--

DROP TABLE IF EXISTS `blocos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identificador` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conteudo` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocos`
--

LOCK TABLES `blocos` WRITE;
/*!40000 ALTER TABLE `blocos` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `proposed_parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (3,NULL,NULL,1,4,'Alta / Baixa  Rotacao NSK','alta-baixa-rotacao-nsk',1,NULL,'2010-04-13 01:57:26'),(4,NULL,NULL,1,4,'Alta / Baixa Rotacao Kavo','alta-baixa-rotacao-kavo',1,NULL,'2010-04-13 01:57:26'),(5,NULL,NULL,1,4,'Alta Rotacao D700','alta-rotacao-d700',1,NULL,'2010-04-13 01:57:26'),(6,NULL,NULL,1,4,'Alta Rotacao Dentflex','alta-rotacao-dentflex',1,NULL,'2010-04-13 01:57:26'),(7,NULL,NULL,1,4,'Alta Rotacao Dentscler','alta-rotacao-dentscler',1,NULL,'2010-04-13 01:57:26'),(8,NULL,NULL,1,4,'Alta Rotacao Microdent','alta-rotacao-microdent',1,NULL,'2010-04-13 01:57:26'),(9,NULL,NULL,1,4,'Baixa Rotacao D700','baixa-rotacao-d700',1,NULL,'2010-04-13 01:57:26'),(10,NULL,NULL,1,4,'Baixa Rotacao Dentflex','baixa-rotacao-dentflex',1,NULL,'2010-04-13 01:57:26'),(11,NULL,NULL,1,4,'Baixa Rotacao Dentscler','baixa-rotacao-dentscler',1,NULL,'2010-04-13 01:57:26'),(12,NULL,NULL,1,4,'Baixa Rotacao Microdent','baixa-rotacao-microdent',1,NULL,'2010-04-13 01:57:26'),(13,NULL,NULL,1,4,'Amalgamador','amalgamador',1,NULL,'2010-04-13 01:57:26'),(14,NULL,NULL,1,4,'Aparelho de RX','aparelho-de-rx',1,NULL,'2010-04-13 01:57:26'),(15,NULL,NULL,1,4,'Aparelho de RX Panoramico','aparelho-de-rx-panoramico',1,NULL,'2010-04-13 01:57:26'),(16,NULL,NULL,1,4,'Armario Odontologico  Haydee','armario-odontologico-haydee',1,NULL,'2010-04-13 01:57:26'),(17,NULL,NULL,1,4,'Articulador','articulador',1,NULL,'2010-04-13 01:57:26'),(18,NULL,NULL,1,4,'Autoclave Alt','autoclave-alt',1,NULL,'2010-04-13 01:57:26'),(19,NULL,NULL,1,4,'Autoclave Bioflex','autoclave-bioflex',1,NULL,'2010-04-13 01:57:26'),(20,NULL,NULL,1,4,'Autoclave Cristofoli','autoclave-cristofoli',1,NULL,'2010-04-13 01:57:26'),(21,NULL,NULL,1,4,'Autoclave D700','autoclave-d700',1,NULL,'2010-04-13 01:57:26'),(22,NULL,NULL,1,4,'Autoclave Sercon','autoclave-sercon',1,NULL,'2010-04-13 01:57:26'),(23,NULL,NULL,1,4,'Avental de Borracha Pumblifero','avental-de-borracha-pumblifero',1,NULL,'2010-04-13 01:57:26'),(24,NULL,NULL,1,4,'Bandeja','bandeja',1,NULL,'2010-04-13 01:57:26'),(25,NULL,NULL,1,4,'Bomba de Vacuo','bomba-de-vacuo',1,NULL,'2010-04-13 01:57:26'),(26,NULL,NULL,1,4,'Broca cirurgica / diversas','broca-cirurgica-diversas',1,NULL,'2010-04-13 01:57:26'),(27,NULL,NULL,1,4,'Cadeira Odontologica Cristofoli','cadeira-odontologica-cristofoli',1,NULL,'2010-04-13 01:57:26'),(28,NULL,NULL,1,4,'Cadeira Odontologica D700','cadeira-odontologica-d700',1,NULL,'2010-04-13 01:57:26'),(29,NULL,NULL,1,4,'Cadeira Odontologica Olsen','cadeira-odontologica-olsen',1,NULL,'2010-04-13 01:57:26'),(30,NULL,NULL,1,4,'Camara para Revelacao','camara-para-revelacao',1,NULL,'2010-04-13 01:57:26'),(31,NULL,NULL,1,4,'Camera Intra Oral','camera-intra-oral',1,NULL,'2010-04-13 01:57:26'),(32,NULL,NULL,1,4,'Centrifugador p/ protese','centrifugador-p-protese',1,NULL,'2010-04-13 01:57:26');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_produtos`
--

DROP TABLE IF EXISTS `categorias_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias_produtos` (
  `categoria_id` int(11) DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_produtos`
--

LOCK TABLES `categorias_produtos` WRITE;
/*!40000 ALTER TABLE `categorias_produtos` DISABLE KEYS */;
INSERT INTO `categorias_produtos` VALUES (3,2),(4,2),(5,2),(30,2),(31,2),(32,2);
/*!40000 ALTER TABLE `categorias_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `produto_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto_file_size` int(11) DEFAULT NULL,
  `foto_updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paginas`
--

DROP TABLE IF EXISTS `paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conteudo` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paginas`
--

LOCK TABLES `paginas` WRITE;
/*!40000 ALTER TABLE `paginas` DISABLE KEYS */;
/*!40000 ALTER TABLE `paginas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `preco` decimal(8,2) NOT NULL DEFAULT '0.00',
  `preco_promocional` decimal(8,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) DEFAULT '0',
  `permalink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (2,'PrÃ³tese Equipamentos - Monojato sem exaustor - VH EQUIPAMENTOS','Monojato Gold Line sem exaustor\r\nUsado na limpeza e jateamento de peÃ§as fundidas para melhorar e faciliar a aderÃªncia.\r\n\r\nDescriÃ§Ã£o\r\n\r\nCaracterÃ­sticas\r\n1. Fabricado em polietileno com a mais alta tecnologia resistente Ã  Ã¡gua, produtos quÃ­micos e abrasÃ£o do Ã³xido. O que nÃ£o ocorre com os gabinetes confeccionados em chapas de aÃ§o e o desgaste em caixas de poliestireno de alto impacto.\r\n2. Design revolucionÃ¡rio com entrada frontal para as mÃ£os com Ã¢ngulos de 45Â°C (em ambos).\r\n3. Bocal para lÃ¢mpada tipo geladeira.\r\n4. Painel frontal amplo com angulagem de 45Â°C, facilitando a visualizaÃ§Ã£o da peÃ§a proporcionando o operador exercer postura correta evitando assim a fadiga muscular.\r\n5. Aro de fixaÃ§Ã£o das luvas, com facilidade de substituiÃ§Ã£o das mesmas.\r\n6. Possuem vidro com pelÃ­cula protetora para evitar o ofuscamento.\r\nO monojato Essence Dental possui em sua parte traseira um orifÃ­cio de saÃ­da com filtro para reter as partÃ­culas desprendidas. O Ã³xido deve ser introduzido pela tampa visor, pois o mesmo nÃ£o possui reservatÃ³rio o qual o Ã³xido fica no fundo do equipamento.\r\nÃ“tima vedaÃ§Ã£o do painel.\r\nChave liga/desliga com proteÃ§Ã£o para evitar que as partÃ­culas jateadas danifiquem a mesma.\r\nPossui pedal acionador com regulagem de pressÃ£o com vÃ¡lvula de escape.\r\nO monojato vh possui uma caneta para jateamento de Ã³xido de 90 atÃ© 150 microns.\r\n\r\nVantagens\r\n1. Canetas tipo italiana com alto poder de jateamento, pontas de aÃ§o especial ou de videa.\r\n2. Carenagem em fibra de vidro totalmente resistente a abrasividade e livre de oxidaÃ§Ã£o.\r\n3. Possui painel frontal amplo para melhor visualizaÃ§Ã£o dÃ¡ peÃ§a e lupa de vidro com aumento de atÃ© 3,5x.\r\nA linha VH tem 18 meses de garantia contra defeitos de fabricaÃ§Ã£o e baixo custos para peÃ§as de reposiÃ§Ã£o.\r\nObs: cores, modelos e especificaÃ§Ãµes tÃ©cnicas sujeitas a alteraÃ§Ãµes sem prÃ©vio aviso.\r\n\r\nEspecificaÃ§Ãµes TÃ©cnicas\r\nPeso Bruto: 5 Kg\r\nPressÃ£o: de 70 a 100 libras\r\nChave seletora liga/desliga: 3 A 250v, AC\r\nDimensÃµes: largura 30, comprimento 24.5, altura 28cm\r\n\r\nIsento de registro conforme resoluÃ§Ã£o RDC N. 260/02','399.00','0.00',0,'prtese-equipamentos-monojato-sem-exaustor-vh-equipamentos','','','','2010-04-13 03:17:32','2010-04-13 03:19:55');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20100413002408'),('20100413004733'),('20100413010400'),('20100413021822'),('20100413022402'),('20100413022436');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-04-13  1:29:11
