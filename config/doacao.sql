-- MySQL dump 10.16  Distrib 10.1.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: u995817217_doaca
-- ------------------------------------------------------
-- Server version	10.1.24-MariaDB

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
-- Table structure for table `acessorio`
--

DROP TABLE IF EXISTS `acessorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acessorio` (
  `ID_Acessorio` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Item` int(11) NOT NULL,
  PRIMARY KEY (`ID_Acessorio`),
  KEY `ID_Item` (`ID_Item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acessorio`
--

/*!40000 ALTER TABLE `acessorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `acessorio` ENABLE KEYS */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `ID_Administrador` int(11) NOT NULL AUTO_INCREMENT,
  `Data_Cadastro` date NOT NULL,
  `CPF` int(11) NOT NULL,
  `Matricula_Funcionario` int(11) NOT NULL,
  PRIMARY KEY (`ID_Administrador`),
  KEY `CPF` (`CPF`),
  KEY `Matricula_Funcionario` (`Matricula_Funcionario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;

--
-- Table structure for table `calcado`
--

DROP TABLE IF EXISTS `calcado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calcado` (
  `ID_Calcado` int(11) NOT NULL AUTO_INCREMENT,
  `FaixaEtaria` varchar(30) NOT NULL,
  `Genero` varchar(40) NOT NULL,
  `IdItem` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Calcado`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calcado`
--

/*!40000 ALTER TABLE `calcado` DISABLE KEYS */;
INSERT INTO `calcado` VALUES (17,'25 - 35','Masculino',NULL);
/*!40000 ALTER TABLE `calcado` ENABLE KEYS */;

--
-- Table structure for table `doacoes`
--

DROP TABLE IF EXISTS `doacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doacoes` (
  `ID_Doacoes` int(11) NOT NULL AUTO_INCREMENT,
  `Identificador_Receptor` varchar(40) DEFAULT NULL,
  `Data_Doacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Matricula_Funcionario` int(11) NOT NULL,
  PRIMARY KEY (`ID_Doacoes`),
  KEY `Matricula_Funcionario` (`Matricula_Funcionario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doacoes`
--

/*!40000 ALTER TABLE `doacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `doacoes` ENABLE KEYS */;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `ID_Endereco` int(11) NOT NULL AUTO_INCREMENT,
  `Logradouro` varchar(30) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Bairro` varchar(20) NOT NULL,
  `Pais` varchar(20) NOT NULL DEFAULT 'Brasil',
  `Cidade` varchar(20) NOT NULL,
  `UF` varchar(20) NOT NULL,
  `CEP` char(8) NOT NULL,
  PRIMARY KEY (`ID_Endereco`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `Matricula_Funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `Data_Admissao` date NOT NULL,
  `CPF` int(11) NOT NULL,
  PRIMARY KEY (`Matricula_Funcionario`),
  KEY `CPF` (`CPF`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'2017-01-02',1111111111);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

--
-- Table structure for table `historico_doacao`
--

DROP TABLE IF EXISTS `historico_doacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_doacao` (
  `ID_Historico` int(11) NOT NULL AUTO_INCREMENT,
  `Data_Doacao` date NOT NULL,
  `Nome_Item` varchar(40) NOT NULL,
  `Tipo_Item` varchar(40) NOT NULL,
  `CPF_Cadastrante_Docao` int(11) NOT NULL,
  `Nome_Receptor` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_Historico`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_doacao`
--

/*!40000 ALTER TABLE `historico_doacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico_doacao` ENABLE KEYS */;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `IdItem` int(11) NOT NULL AUTO_INCREMENT,
  `NomeItem` varchar(40) NOT NULL,
  `DataCadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Observacao` varchar(120) DEFAULT NULL,
  `TipoItem` varchar(40) NOT NULL,
  `Tamanho` varchar(3) DEFAULT NULL,
  `Situacao` enum('S','N') CHARACTER SET utf8mb4 DEFAULT NULL,
  `IdReceptor` int(11) DEFAULT NULL,
  `IdDoacoes` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdItem`),
  KEY `ID_Doacoes` (`IdDoacoes`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Blusa de Frio','2017-04-28 15:02:03','Blusa de frio da cor preta','Blusa','MM','N',333,NULL),(2,'Mochila Infantil','2017-04-28 19:03:43','Mochila infantil do homem aranha','Mochila','M','N',1,NULL),(20,'Vestido Longo Vermelho','2017-06-09 22:04:58','','Vestido','M','N',NULL,NULL),(21,'Vestido Verde','2017-06-09 22:05:23','','Vestido','G','N',NULL,NULL),(22,'Tênis Nike','2017-06-09 22:08:50','','Tênis','42','N',NULL,NULL),(23,'erscfsdfsdf','2017-06-10 12:48:18','sdfsdfsdf','Outro Tipo de Roupa','34','N',NULL,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `CPF` bigint(11) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `DataNascimento` date NOT NULL,
  `Senha` varchar(12) NOT NULL,
  `ID_Endereco` int(11) DEFAULT NULL,
  PRIMARY KEY (`CPF`),
  KEY `ID_Endereco` (`ID_Endereco`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (10604379617,'Masculino','(31)4696589','jose@gmail.com','Jose Calado teste','2010-01-01','111',NULL),(32424252352,'Feminino','','vanessa@gamail.com','Vanessa','2017-06-02','123',NULL),(19378196551,'Feminino','(31)997533367','fernanda@gmail.com','Fernanda Teste','1990-05-01','123',NULL),(30241282470,'Masculino','(23) 545684257','mateus@yahoo.com','Mateus','2000-05-01','123',NULL),(66557729667,'Feminino','(33) 345678797','ana@gmail.com','Ana','1999-04-01','123',NULL),(74632019291,'Masculino','(43) 224579679','pedro@gmail.com','Pedro','1980-05-03','123',NULL),(37175341490,'Feminino','(34) 32423-4342','marta@gmail.com','Marta','1997-05-10','123',NULL),(7819239646,'Masculino','(21) 43434-6546','pablo@gmail.com','Pablo','1989-11-27','123',NULL),(55544433380,'Masculino','','robson@robson','robson','2017-02-02','123',NULL);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;

--
-- Table structure for table `receptor`
--

DROP TABLE IF EXISTS `receptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receptor` (
  `Identificador` bigint(11) NOT NULL,
  `CPF` char(20) DEFAULT NULL,
  `CNPJ` varchar(20) DEFAULT NULL,
  `CEP` char(20) DEFAULT NULL,
  `DataNascimento` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Sexo` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Telefone` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `Endereco` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `Numero` bigint(10) DEFAULT NULL,
  `TipoCadastro` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Nome` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Identificador`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptor`
--

/*!40000 ALTER TABLE `receptor` DISABLE KEYS */;
INSERT INTO `receptor` VALUES (12121,'544.134.241-78',NULL,'45678-190','2017-06-01','Masculino','(11) 1234-4575','Rua professor marques',1231,'fisica','Fernando Preste'),(123,NULL,'43.453.114/1231-13','23456-090',NULL,NULL,'(31) 11111-1111','Rua inhauma',110,'juridica','Albergue Acolher'),(12542,'034.247.179-16',NULL,'23423-423','1995-02-04','Masculino','(32) 13344-2535','Rua primeira de abril',223,'fisica','Alencar'),(52323,NULL,'68.788.428/0001-84','45435-436',NULL,NULL,'(23) 54345-6456','Rua dois de março',321,'juridica','Casa de ajuda Maria aleluia'),(42423,NULL,'60.877.607/0001-86','12432-143',NULL,NULL,'(32) 12312-4124','Rua dez de fevereiro',32,'juridica','ONG Ajudar ao proximo'),(12341,'454.252.524-24',NULL,'25346-346','1991-03-22','Masculino','(31) 54354-3636','Rua novo horizonte',32,'fisica','Mateus Mercury'),(12345,'106.043.796-17',NULL,'31150-080','1990-02-07','Masculino','(31) 64944-4794','Rua dez de março',211,'fisica','Fernando Alves');
/*!40000 ALTER TABLE `receptor` ENABLE KEYS */;

--
-- Table structure for table `roupa`
--

DROP TABLE IF EXISTS `roupa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roupa` (
  `IdRoupa` int(11) NOT NULL AUTO_INCREMENT,
  `Genero` varchar(15) NOT NULL,
  `FaixaEtaria` varchar(30) NOT NULL,
  `IdItem` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdRoupa`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roupa`
--

/*!40000 ALTER TABLE `roupa` DISABLE KEYS */;
INSERT INTO `roupa` VALUES (6,'Feminino','25 - 35',NULL),(7,'Feminino','25 - 35',NULL),(8,'Masculino','6 - 12',NULL);
/*!40000 ALTER TABLE `roupa` ENABLE KEYS */;

--
-- Dumping events for database 'u995817217_doaca'
--

--
-- Dumping routines for database 'u995817217_doaca'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-24 11:30:16
