-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.3.36-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- samp 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `samp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `samp`;

-- 테이블 samp.room 구조 내보내기
CREATE TABLE IF NOT EXISTS `room` (
  `ROOM_NAME` varchar(100) DEFAULT NULL,
  `ROOM_ADDR` varchar(500) DEFAULT NULL,
  `ROOM_ID` varchar(50) DEFAULT NULL,
  `HOST_ID` varchar(50) DEFAULT NULL,
  `ROOM_PRICE` varchar(30) DEFAULT NULL,
  `ROOM_IMG` varchar(300) DEFAULT NULL,
  `ROOM_POINTS` varchar(100) DEFAULT NULL,
  `ROOM_MAX` varchar(20) DEFAULT NULL,
  `ROOM_THEME` varchar(20) DEFAULT NULL,
  `ROOM_CAT` varchar(30) DEFAULT NULL,
  `ROOM_WIFI` varchar(10) DEFAULT NULL,
  `ROOM_PET` varchar(10) DEFAULT NULL,
  `ROOM_MEAL` varchar(10) DEFAULT NULL,
  `ROOM_PARKING` varchar(10) DEFAULT NULL,
  `ROOM_SWPOOL` varchar(10) DEFAULT NULL,
  `ROOM_LIKES` varchar(100) DEFAULT NULL,
  `ROOM_STARS` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
