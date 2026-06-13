-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           9.7.0-er2 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.18.0.7304
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_maior_sj_mundo
DROP DATABASE IF EXISTS `db_maior_sj_mundo`;
CREATE DATABASE IF NOT EXISTS `db_maior_sj_mundo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_maior_sj_mundo`;

-- Copiando estrutura para tabela db_maior_sj_mundo.tb_artista
DROP TABLE IF EXISTS `tb_artista`;
CREATE TABLE IF NOT EXISTS `tb_artista` (
  `id_artista` int unsigned NOT NULL AUTO_INCREMENT,
  `id_genero` int unsigned NOT NULL,
  `nome` varchar(150) NOT NULL,
  `biografia` text,
  `site` varchar(150) DEFAULT NULL,
  `instagram` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_artista`),
  UNIQUE KEY `nome` (`nome`),
  KEY `FK_tb_artista_tb_genero_musical` (`id_genero`),
  CONSTRAINT `FK_tb_artista_tb_genero_musical` FOREIGN KEY (`id_genero`) REFERENCES `tb_genero_musical` (`id_genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de cadastro de Artistas';

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_maior_sj_mundo.tb_atracao
DROP TABLE IF EXISTS `tb_atracao`;
CREATE TABLE IF NOT EXISTS `tb_atracao` (
  `id_atracao` int unsigned NOT NULL AUTO_INCREMENT,
  `id_evento` int unsigned NOT NULL DEFAULT '0',
  `id_artista` int unsigned NOT NULL,
  `duracao` int unsigned NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id_atracao`),
  KEY `FK_tb_atracao_tb_evento` (`id_evento`),
  KEY `FK_tb_atracao_tb_artista` (`id_artista`),
  CONSTRAINT `FK_tb_atracao_tb_artista` FOREIGN KEY (`id_artista`) REFERENCES `tb_artista` (`id_artista`),
  CONSTRAINT `FK_tb_atracao_tb_evento` FOREIGN KEY (`id_evento`) REFERENCES `tb_evento` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_maior_sj_mundo.tb_evento
DROP TABLE IF EXISTS `tb_evento`;
CREATE TABLE IF NOT EXISTS `tb_evento` (
  `id_evento` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `local` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'PB',
  `capacidade_total` int NOT NULL,
  `id_organizador` int unsigned NOT NULL,
  PRIMARY KEY (`id_evento`),
  UNIQUE KEY `nome` (`nome`),
  KEY `FK_tb_eventos_tb_organizador` (`id_organizador`),
  CONSTRAINT `FK_tb_eventos_tb_organizador` FOREIGN KEY (`id_organizador`) REFERENCES `tb_organizador` (`id_organizador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de cadastro de eventos';

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_maior_sj_mundo.tb_genero_musical
DROP TABLE IF EXISTS `tb_genero_musical`;
CREATE TABLE IF NOT EXISTS `tb_genero_musical` (
  `id_genero` int unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`id_genero`),
  UNIQUE KEY `descricao` (`descricao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de cadastro de Generos';

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela db_maior_sj_mundo.tb_organizador
DROP TABLE IF EXISTS `tb_organizador`;
CREATE TABLE IF NOT EXISTS `tb_organizador` (
  `id_organizador` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_organizador`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `cnpj` (`cnpj`),
  UNIQUE KEY `telefone` (`telefone`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Tabela de Cadastro de Organizadores';

-- Exportação de dados foi desmarcado.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
