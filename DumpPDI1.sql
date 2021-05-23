-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: pdi
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `texto` varchar(45) DEFAULT NULL,
  `userVisto` varchar(45) DEFAULT NULL,
  `trainerVisto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId_idx` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` int NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dataInscricao` date DEFAULT NULL,
  `nomeCompleto` varchar(200) DEFAULT NULL,
  `nomePerfil` varchar(45) DEFAULT NULL,
  `contacto` int DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `NIF` int DEFAULT NULL,
  `rua` varchar(200) DEFAULT NULL,
  `localidade` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `codigoPostal` varchar(45) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `respondido` varchar(45) DEFAULT 'nao',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela usada para Login/Registo e Página de Perfil.\nAo efetuar registo atribuir - email, password e dataInscricao';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'silvanoworks@gmail.com','nuno123',NULL,NULL,'Nuno Silvano',916932765,NULL,NULL,NULL,'Coimbra','Coimbra',NULL,NULL,'sim'),(2,'ritabatista@gmail.com','rita123','2021-05-15','','Rita Batista',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nao'),(3,'diogosol@gmail.com','sol321','2021-05-23',NULL,'Diogo Sol',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nao');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treinos`
--

DROP TABLE IF EXISTS `treinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treinos` (
  `id` int NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treinos`
--

LOCK TABLES `treinos` WRITE;
/*!40000 ALTER TABLE `treinos` DISABLE KEYS */;
/*!40000 ALTER TABLE `treinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_alimentacao`
--

DROP TABLE IF EXISTS `user_alimentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_alimentacao` (
  `id` int NOT NULL,
  `refeicoesDiarias` int DEFAULT NULL,
  `acordar` varchar(500) DEFAULT NULL,
  `localAcordar` varchar(45) DEFAULT NULL,
  `pequeno` varchar(500) DEFAULT NULL,
  `localPequeno` varchar(45) DEFAULT NULL,
  `manha` varchar(500) DEFAULT NULL,
  `localManha` varchar(45) DEFAULT NULL,
  `almoco` varchar(500) DEFAULT NULL,
  `localAlmoco` varchar(45) DEFAULT NULL,
  `tarde` varchar(500) DEFAULT NULL,
  `localTarde` varchar(45) DEFAULT NULL,
  `jantar` varchar(500) DEFAULT NULL,
  `localJantar` varchar(45) DEFAULT NULL,
  `ceia` varchar(500) DEFAULT NULL,
  `localCeia` varchar(45) DEFAULT NULL,
  `alergias` varchar(500) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL,
  `respondido` varchar(45) DEFAULT 'nao',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Informação sobre alimentação do cliente quando se inscreve';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_alimentacao`
--

LOCK TABLES `user_alimentacao` WRITE;
/*!40000 ALTER TABLE `user_alimentacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_alimentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_clinica`
--

DROP TABLE IF EXISTS `user_clinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_clinica` (
  `id` int NOT NULL,
  `altura` int DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `diabetes` varchar(45) DEFAULT NULL,
  `colesterol` varchar(45) DEFAULT NULL,
  `renais` varchar(45) DEFAULT NULL,
  `transplantes` varchar(45) DEFAULT NULL,
  `textoTransplantes` varchar(500) DEFAULT NULL,
  `cardiacos` varchar(45) DEFAULT NULL,
  `textoCardiacos` varchar(500) DEFAULT NULL,
  `articulares` varchar(45) DEFAULT NULL,
  `textoArticulares` varchar(500) DEFAULT NULL,
  `outros` varchar(500) DEFAULT NULL,
  `medicacao` varchar(45) DEFAULT NULL,
  `textoMedicacao` varchar(500) DEFAULT NULL,
  `respondido` varchar(45) DEFAULT 'nao',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='guardar as informações clinicas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_clinica`
--

LOCK TABLES `user_clinica` WRITE;
/*!40000 ALTER TABLE `user_clinica` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_clinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_fotos`
--

DROP TABLE IF EXISTS `user_fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_fotos` (
  `id` int NOT NULL,
  `data` date DEFAULT NULL,
  `frontal` varchar(200) DEFAULT NULL,
  `lateral` varchar(200) DEFAULT NULL,
  `traseira` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_fotos`
--

LOCK TABLES `user_fotos` WRITE;
/*!40000 ALTER TABLE `user_fotos` DISABLE KEYS */;
INSERT INTO `user_fotos` VALUES (1,'2021-05-22','~/Content/images/coxa.png',NULL,NULL);
/*!40000 ALTER TABLE `user_fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_medicoes`
--

DROP TABLE IF EXISTS `user_medicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_medicoes` (
  `id` int NOT NULL,
  `braco` decimal(10,0) DEFAULT NULL,
  `abdominal` decimal(10,0) DEFAULT NULL,
  `peitoral` decimal(10,0) DEFAULT NULL,
  `coxa` decimal(10,0) DEFAULT NULL,
  `gemeo` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registo das medições efetuadas pelo cliente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_medicoes`
--

LOCK TABLES `user_medicoes` WRITE;
/*!40000 ALTER TABLE `user_medicoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_medicoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_peso`
--

DROP TABLE IF EXISTS `user_peso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_peso` (
  `id` int NOT NULL,
  `data` date DEFAULT NULL,
  `peso` decimal(10,0) DEFAULT NULL,
  `mGorda` decimal(10,0) DEFAULT NULL,
  `mMagra` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Registo das pesagens do utilizador';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_peso`
--

LOCK TABLES `user_peso` WRITE;
/*!40000 ALTER TABLE `user_peso` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_peso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_plano`
--

DROP TABLE IF EXISTS `user_plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_plano` (
  `id` int NOT NULL,
  `planoNutricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_plano`
--

LOCK TABLES `user_plano` WRITE;
/*!40000 ALTER TABLE `user_plano` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_plano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_treino`
--

DROP TABLE IF EXISTS `user_treino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_treino` (
  `id` int NOT NULL,
  `treinosSemanais` int DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  `objetivos` varchar(45) DEFAULT NULL,
  `respondido` varchar(45) DEFAULT 'nao',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='informação sobre condições e objetivos de treino';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_treino`
--

LOCK TABLES `user_treino` WRITE;
/*!40000 ALTER TABLE `user_treino` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_treino` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-23 22:02:06
