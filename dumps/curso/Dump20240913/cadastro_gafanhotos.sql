CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cadastro
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafanhotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `cursopreferido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cursopreferido` (`cursopreferido`),
  CONSTRAINT `gafanhotos_ibfk_1` FOREIGN KEY (`cursopreferido`) REFERENCES `cursos` (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafanhotos`
--

LOCK TABLES `gafanhotos` WRITE;
/*!40000 ALTER TABLE `gafanhotos` DISABLE KEYS */;
INSERT INTO `gafanhotos` VALUES (1,'godofredo','Auxiliar Adminstrati','2000-10-01','M',78.00,1.00,'Brasil',6),(2,'casemiro','Professor','1997-09-09','M',88.00,1.80,'Brasil',1),(3,'pedro','Programador','1984-01-02','M',68.00,1.50,'Brasil',3),(4,'arthur','Dentista','1984-01-02','M',48.00,1.10,'Brasil',4),(5,'joao','Auxiliar Adminstrati','1984-01-02','M',70.00,1.70,'Brasil',3),(6,'ana','Atriz','1990-03-03','F',78.50,1.89,'Brasil',4),(7,'beatriz','Dentista','1984-01-02','F',68.00,1.70,'Brasil',7),(8,'jose','programador','1984-01-02','M',70.00,1.89,'Brasil',NULL),(9,'monica','Dentista','1984-01-02','F',85.00,1.87,'Brasil',NULL),(10,'fabiana','Professor','1984-01-02','F',68.00,1.70,'Brasil',NULL),(11,'flavia','Medico','1984-01-02','F',67.00,1.45,'Brasil',NULL),(12,'Tiago','Ator','1984-01-02','M',60.00,1.50,'Brasil',NULL),(13,'Lucas','Empreendedor','1984-01-02','M',88.00,1.70,'Brasil',NULL),(14,'Julia','Professora','1984-01-02','F',59.00,1.69,'Brasil',NULL),(15,'Camila','Engenheira','1984-01-02','F',75.00,1.78,'Brasil',NULL),(16,'Bruno','Medico','1984-01-02','M',70.00,1.70,'Brasil',NULL),(17,'Rafael','Eletricista','1984-01-02','M',85.00,1.87,'Brasil',NULL),(18,'Felipe','Professor','1984-01-02','M',68.00,1.78,'Brasil',NULL),(19,'Laura','Dentista','1984-01-02','F',70.00,1.50,'Brasil',NULL),(20,'Tiago','Professor','1984-01-02','M',88.00,1.80,'Brasil',NULL),(21,'Carlos','programador','1984-01-02','M',68.00,1.70,'Brasil',NULL),(22,'Mariana','programador','1997-09-09','F',88.00,1.80,'Brasil',NULL),(23,'Natalia','programador','1990-03-03','F',75.00,1.70,'Brasil',NULL),(24,'Alexandre','Auxiliar Adminstrati','1984-01-02','M',70.00,1.78,'Brasil',NULL),(25,'Henrique','Auxiliar Adminstrati','2000-10-01','M',48.00,1.10,'Brasil',NULL),(26,'Andre','Dentista','2000-10-01','M',60.00,1.78,'Brasil',NULL),(27,'Matheus','Medico','2000-10-01','M',88.00,1.80,'Brasil',NULL),(28,'Rodrigo','programador','1984-01-02','M',70.00,1.78,'Brasil',NULL),(29,'Diego','Dentista','2000-10-01','M',60.00,1.50,'Brasil',NULL),(30,'Gustavo','Eletricista','1990-03-03','M',88.00,1.80,'Brasil',NULL),(31,'Isabela','Empreendedor','2000-10-01','F',68.00,1.78,'Brasil',NULL),(32,'Fernanda','Engenheira','2000-10-01','F',60.00,1.78,'Brasil',NULL),(33,'Eventon','Empreendedor','1984-01-02','M',75.00,1.80,'Brasil',NULL),(34,'Fabricio','Medico','0000-00-00','M',77.00,1.69,'brasil',NULL),(35,'Wesley','Ator','1990-05-30','M',70.00,1.90,'Brasil',NULL),(36,'Aline','Atriz','1990-05-30','F',75.00,1.60,'Brasil',NULL),(37,'Bruna','Engenheira','1990-07-30','F',63.00,1.50,'Brasil',NULL),(38,'Jefeson','Ator','1990-05-30','M',70.00,1.90,'Brasil',NULL),(39,'Mauricio','Medico','1991-05-30','M',71.00,1.70,'Brasil',NULL),(40,'Frederico','Eletricista','1992-06-17','M',70.00,1.78,'Brasil',NULL),(41,'Jaime','Construtor','1990-05-30','M',80.00,1.90,'Brasil',NULL),(42,'Marcilo','Medico','1994-05-30','M',70.00,1.70,'Brasil',NULL),(43,'Victor','Ator','1990-05-30','M',70.00,1.90,'Brasil',NULL),(44,'Rose','Atriz','1999-09-10','F',70.00,1.70,'Brasil',NULL),(45,'Noemi','Medica','1995-10-20','F',70.00,1.70,'Brasil',NULL),(46,'Sergio','Medico','1991-06-10','M',73.00,1.70,'Brasil',NULL),(47,'Washiton','Eletricista','1990-07-30','M',60.00,1.50,'Brasil',NULL),(48,'Tais','Atriz','1998-07-30','F',65.00,1.59,'Brasil',NULL),(49,'Gregorio','Programador','1996-02-02','M',55.00,1.69,'Brasil',NULL),(50,'Joao Pedro','Medico','1992-06-17','M',70.00,1.78,'Brasil',NULL),(51,'Creuza','Atriz','1990-10-10','F',60.00,1.60,'Brasil',NULL);
/*!40000 ALTER TABLE `gafanhotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-13 20:41:57
