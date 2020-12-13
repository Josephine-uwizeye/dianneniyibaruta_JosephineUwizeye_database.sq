-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 09:47 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `water and sanitation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `premiseID` int(11) DEFAULT NULL,
  `billID` int(11) DEFAULT NULL,
  `supervisor_name` varchar(255) DEFAULT NULL,
  `reading` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`premiseID`, `billID`, `supervisor_name`, `reading`) VALUES
(1, 7, 'julius', 'previous reading'),
(2, 9, 'Joyce', 'current reading'),
(3, 8, 'karangwa', 'current reading');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customersID` int(11) DEFAULT NULL,
  `customersName` varchar(255) DEFAULT NULL,
  `customersaddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customersID`, `customersName`, `customersaddress`) VALUES
(1, 'Nyamiram', 'Claire'),
(2, 'Bumbogo', 'Alias'),
(3, 'Nyamirambo', 'Mulisa');

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `plantid` int(11) DEFAULT NULL,
  `plantname` varchar(255) DEFAULT NULL,
  `routeid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`plantid`, `plantname`, `routeid`) VALUES
(1, 'Aubergins', '003'),
(2, 'CABBAGES', '005'),
(6, 'GREENVEGATABLES', '008');

-- --------------------------------------------------------

--
-- Table structure for table `premises`
--

CREATE TABLE `premises` (
  `premisesID` int(11) DEFAULT NULL,
  `premisesName` varchar(255) DEFAULT NULL,
  `premisesaddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premises`
--

INSERT INTO `premises` (`premisesID`, `premisesName`, `premisesaddress`) VALUES
(1, 'Ruyenzi', 'Claire'),
(2, 'Bumbogo', 'Alias'),
(3, 'Nyamirambo', 'Mulisa');

-- --------------------------------------------------------

--
-- Table structure for table `readings`
--

CREATE TABLE `readings` (
  `premiseID` int(11) DEFAULT NULL,
  `staffID` varchar(255) DEFAULT NULL,
  `reading` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `readings`
--

INSERT INTO `readings` (`premiseID`, `staffID`, `reading`, `month`) VALUES
(1, '7', 'previous reading', 'JANUARY'),
(2, '9', 'current reading', 'FEBRUARY'),
(3, '8', 'current reading', 'MARCH');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `routesID` int(11) DEFAULT NULL,
  `sectorid` varchar(255) DEFAULT NULL,
  `sectorname` varchar(255) DEFAULT NULL,
  `routename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`routesID`, `sectorid`, `sectorname`, `routename`) VALUES
(1, '002', 'KAYINZI', '23ST'),
(1, '03', 'MASORO', '20ST'),
(7, '03', 'NYANZA', '12ST');

-- --------------------------------------------------------

--
-- Table structure for table `sectoroffices`
--

CREATE TABLE `sectoroffices` (
  `sectorofficesID` int(11) DEFAULT NULL,
  `sectorofficesName` varchar(255) DEFAULT NULL,
  `sectorofficesAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sectoroffices`
--

INSERT INTO `sectoroffices` (`sectorofficesID`, `sectorofficesName`, `sectorofficesAddress`) VALUES
(2, 'RUTSIRO', '0001'),
(3, 'MURAGE', '008'),
(4, 'MAYANGE', '008');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `sectorID` int(11) DEFAULT NULL,
  `sectorName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`sectorID`, `sectorName`, `Address`) VALUES
(1, 'RAMIRO', '2020'),
(2, 'GAKENKE', '03'),
(20, 'RUNYINYA', '2012');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) DEFAULT NULL,
  `staffname` varchar(255) DEFAULT NULL,
  `staffAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffname`, `staffAddress`) VALUES
(0, 'Kalis', '72st'),
(0, 'Joica', '12st'),
(0, 'Anserme', '90st');

-- --------------------------------------------------------

--
-- Table structure for table `tariff`
--

CREATE TABLE `tariff` (
  `premiseID` int(11) DEFAULT NULL,
  `supervisor_name` varchar(255) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tariff`
--

INSERT INTO `tariff` (`premiseID`, `supervisor_name`, `Amount`) VALUES
(1, 'julia', '40000'),
(2, 'Joyce', '30000'),
(3, 'karangwa', '56000');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zoneID` int(11) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `routeAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zones`
--


INSERT INTO `zones` (`zoneID`, `supervisor`, `routeAddress`) VALUES
(9, 'MUSHI', '23ST'),
(7, 'DIANE', '24ST'),
(4, 'JOSY', '56ST');
--
-- Table structure for table `charge_struture`
--
CREATE TABLE `charge_structure` (
  `tarrifID` int(11) DEFAULT NULL,
  `lower_limit` int(255) DEFAULT NULL,
  `upper_limit`int(255) DEFAULT NULL
  `charge` int(255) DEFAULT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charge_structure`
--

INSERT INTO `charge_structure` (`tarrifID`,`lower_limit`,`upper_limit`,`charge` ) VALUES
(009, 99, 890,800),
(007, 80, 890,90),
(4, 900, 89000,5700);

--
-- Table structure for table `payement`
--
CREATE TABLE `payement` (
  `bill_ID` int(11) DEFAULT NULL,
  `transaction_ID` int(255) DEFAULT NULL,
  `charge` int(255) DEFAULT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payement`
--

INSERT INTO `payement` (`tarrifID`,`lower_limit`,`upper_limit`,`charge` ) VALUES
(009, 099,800),
(007, 080,90),
(04, 0900,5700);



COMMIT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
