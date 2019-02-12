-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: Banco
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Current Database: `Banco`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Banco` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Banco`;

--
-- Table structure for table `AgendaComercial`
--

DROP TABLE IF EXISTS `AgendaComercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AgendaComercial` (
  `idAgendaComercial` int(11) NOT NULL AUTO_INCREMENT,
  `IdEmpleado` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `FechaUltimoContacto` datetime DEFAULT NULL,
  `FechaProximoContacto` datetime DEFAULT NULL,
  `Notas` text,
  PRIMARY KEY (`idAgendaComercial`),
  KEY `fk_AgendaComercial_1_idx` (`idCliente`),
  KEY `fk_AgendaComercial_2_idx` (`IdEmpleado`),
  CONSTRAINT `fk_AgendaComercial_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `Cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_AgendaComercial_Empleado` FOREIGN KEY (`IdEmpleado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AgendaComercial`
--

LOCK TABLES `AgendaComercial` WRITE;
/*!40000 ALTER TABLE `AgendaComercial` DISABLE KEYS */;
/*!40000 ALTER TABLE `AgendaComercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Banco`
--

DROP TABLE IF EXISTS `Banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Banco` (
  `IdBanco` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Codigo` char(8) DEFAULT NULL,
  `CIF` char(9) NOT NULL,
  `IdDIreccion` int(11) NOT NULL,
  `IdPresidente` int(11) NOT NULL,
  PRIMARY KEY (`IdBanco`),
  KEY `fk_Banco_1_idx` (`IdDIreccion`),
  KEY `fk_Banco_2_idx` (`IdPresidente`),
  CONSTRAINT `fk_Banco_1` FOREIGN KEY (`IdDIreccion`) REFERENCES `Direccion` (`idDireccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Banco_2` FOREIGN KEY (`IdPresidente`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Banco`
--

LOCK TABLES `Banco` WRITE;
/*!40000 ALTER TABLE `Banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `Banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `DNI` varchar(45) NOT NULL,
  `FechaAlta` date NOT NULL,
  `FechaBaja` date DEFAULT NULL,
  `IdDIreccion` int(11) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comision`
--

DROP TABLE IF EXISTS `Comision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comision` (
  `idComision` int(11) NOT NULL,
  `IdTipoCuenta` int(11) DEFAULT NULL,
  `Importe` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`idComision`),
  KEY `fk_Comision_1_idx` (`IdTipoCuenta`),
  CONSTRAINT `fk_Comision_1` FOREIGN KEY (`IdTipoCuenta`) REFERENCES `TipoCuenta` (`IdTipoCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comision`
--

LOCK TABLES `Comision` WRITE;
/*!40000 ALTER TABLE `Comision` DISABLE KEYS */;
/*!40000 ALTER TABLE `Comision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CuentaBancaria`
--

DROP TABLE IF EXISTS `CuentaBancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CuentaBancaria` (
  `IdCuenta` int(11) NOT NULL,
  `IBAN` char(24) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `Saldo` decimal(18,2) NOT NULL,
  `FechaSaldo` datetime NOT NULL,
  `IdTipoCuenta` int(11) DEFAULT NULL,
  `Activa` tinyint(1) DEFAULT NULL,
  `IdOficina` int(11) NOT NULL,
  PRIMARY KEY (`IdCuenta`),
  KEY `fk_CuentaBancaria_Cliente_idx` (`IdCliente`),
  KEY `fk_CuentaBancaria_1_idx` (`IdOficina`),
  CONSTRAINT `fk_CuentaBancaria_Cliente` FOREIGN KEY (`IdCliente`) REFERENCES `Cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CuentaBancaria_Oficina` FOREIGN KEY (`IdOficina`) REFERENCES `Oficina` (`idOficina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CuentaBancaria`
--

LOCK TABLES `CuentaBancaria` WRITE;
/*!40000 ALTER TABLE `CuentaBancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `CuentaBancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Direccion`
--

DROP TABLE IF EXISTS `Direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Direccion` (
  `idDireccion` int(11) NOT NULL,
  `Calle` varchar(45) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `Piso` varchar(45) DEFAULT NULL,
  `CodPos` varchar(45) DEFAULT NULL,
  `Municipio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Direccion`
--

LOCK TABLES `Direccion` WRITE;
/*!40000 ALTER TABLE `Direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empleado` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `DNI` char(9) NOT NULL,
  `FechaIncorporacion` date NOT NULL,
  `FechaBaja` date DEFAULT NULL,
  `IdDireccion` int(11) NOT NULL,
  `SalarioMensual` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_Empleado_1_idx` (`IdDireccion`),
  CONSTRAINT `fk_Empleado_1` FOREIGN KEY (`IdDireccion`) REFERENCES `Direccion` (`idDireccion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmpleadoOficina`
--

DROP TABLE IF EXISTS `EmpleadoOficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmpleadoOficina` (
  `IdEmpleado` int(11) NOT NULL,
  `IdOficina` int(11) NOT NULL,
  PRIMARY KEY (`IdEmpleado`,`IdOficina`),
  KEY `fk_EmpleadoOficina_2_idx` (`IdOficina`),
  CONSTRAINT `fk_EmpleadoOficina_IDEMPLEADO` FOREIGN KEY (`IdEmpleado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_EmpleadoOficina_IDOFICINA` FOREIGN KEY (`IdOficina`) REFERENCES `Oficina` (`idOficina`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmpleadoOficina`
--

LOCK TABLES `EmpleadoOficina` WRITE;
/*!40000 ALTER TABLE `EmpleadoOficina` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmpleadoOficina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Municipio`
--

DROP TABLE IF EXISTS `Municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Municipio` (
  `IDMunicipio` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `IDProvincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDMunicipio`),
  KEY `fk_Municipio_Provincia_idx` (`IDProvincia`),
  CONSTRAINT `fk_Municipio_Provincia` FOREIGN KEY (`IDProvincia`) REFERENCES `Pais` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Municipio`
--

LOCK TABLES `Municipio` WRITE;
/*!40000 ALTER TABLE `Municipio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Oficina`
--

DROP TABLE IF EXISTS `Oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Oficina` (
  `idOficina` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Codigo` char(4) NOT NULL,
  `IdDireccion` int(11) NOT NULL,
  `IdBanco` int(11) NOT NULL,
  PRIMARY KEY (`idOficina`),
  KEY `fk_Oficina_Direccion_idx` (`IdDireccion`),
  KEY `fk_Oficina_Banco_idx` (`IdBanco`),
  CONSTRAINT `fk_Oficina_Banco` FOREIGN KEY (`IdBanco`) REFERENCES `Banco` (`IdBanco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Oficina_Direccion` FOREIGN KEY (`IdDireccion`) REFERENCES `Direccion` (`idDireccion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Oficina`
--

LOCK TABLES `Oficina` WRITE;
/*!40000 ALTER TABLE `Oficina` DISABLE KEYS */;
/*!40000 ALTER TABLE `Oficina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pais`
--

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pais` (
  `Nombre` int(11) DEFAULT NULL,
  `Cod_ISO` decimal(10,0) DEFAULT NULL,
  `ID` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Cod_ISO_UNIQUE` (`Cod_ISO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pais`
--

LOCK TABLES `Pais` WRITE;
/*!40000 ALTER TABLE `Pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provincia`
--

DROP TABLE IF EXISTS `Provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Provincia` (
  `IDProvincia` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `IDPais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDProvincia`),
  KEY `fk_Provincia_Pais_idx` (`IDPais`),
  CONSTRAINT `fk_Provincia_Pais` FOREIGN KEY (`IDPais`) REFERENCES `Pais` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provincia`
--

LOCK TABLES `Provincia` WRITE;
/*!40000 ALTER TABLE `Provincia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipoCuenta`
--

DROP TABLE IF EXISTS `TipoCuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipoCuenta` (
  `IdTipoCuenta` int(11) NOT NULL,
  `CodigoCorto` varchar(45) DEFAULT NULL,
  `Nombreq` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdTipoCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipoCuenta`
--

LOCK TABLES `TipoCuenta` WRITE;
/*!40000 ALTER TABLE `TipoCuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipoCuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaccion`
--

DROP TABLE IF EXISTS `Transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaccion` (
  `idTransaccion` int(11) NOT NULL,
  `FechaTransaccion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FechaValor` datetime NOT NULL,
  `Cantidad` decimal(18,2) NOT NULL,
  `IdCuentaOrigen` int(11) DEFAULT NULL,
  `IdCuentaDestino` int(11) NOT NULL,
  `Notas` text,
  `Destinatario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTransaccion`),
  KEY `fk_Transaccion_1_idx` (`IdCuentaOrigen`),
  KEY `fk_Transaccion_2_idx` (`IdCuentaDestino`),
  CONSTRAINT `fk_Transaccion_1` FOREIGN KEY (`IdCuentaOrigen`) REFERENCES `CuentaBancaria` (`IdCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transaccion_2` FOREIGN KEY (`IdCuentaDestino`) REFERENCES `CuentaBancaria` (`IdCuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaccion`
--

LOCK TABLES `Transaccion` WRITE;
/*!40000 ALTER TABLE `Transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Transaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-12 20:51:54
