-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2023 at 06:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseCode` varchar(10) NOT NULL,
  `Section` int(11) NOT NULL,
  `Instructor` varchar(100) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `Day` varchar(2) DEFAULT NULL,
  `Room` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseCode`, `Section`, `Instructor`, `StartTime`, `EndTime`, `Day`, `Room`) VALUES
('CS407', 3, 'TBA', '11:50:00', '01:20:00', 'ST', NULL),
('CS407', 4, 'TBA', '11:50:00', '01:20:00', 'SR', NULL),
('CSE101', 1, 'AT', '08:30:00', '10:00:00', 'ST', 'ICS LAB'),
('CSE101', 2, 'ABST', '01:30:00', '03:00:00', 'MW', 'ICS LAB'),
('CSE101', 3, 'TBA', '10:10:00', '11:40:00', 'ST', 'ICS LAB'),
('CSE101', 4, 'TBA', '08:30:00', '10:00:00', 'MW', 'ICS LAB'),
('CSE101', 5, 'ABST', '03:10:00', '04:40:00', 'MW', 'ICS LAB'),
('CSE101', 6, 'MAHI', '08:30:00', '10:00:00', 'MW', 'ICS LAB'),
('CSE101', 7, 'MAHI', '10:10:00', '11:40:00', 'MW', 'ICS LAB'),
('CSE101', 8, 'TBA', '11:50:00', '01:20:00', 'TR', 'ICS LAB'),
('CSE101', 9, 'TBA', '11:50:00', '01:20:00', 'MW', 'ICS LAB'),
('CSE101', 10, 'TBA', '01:30:00', '03:00:00', 'ST', 'ICS LAB'),
('CSE101', 11, 'TBA', '03:10:00', '04:40:00', 'ST', 'ICS LAB'),
('CSE101', 12, 'TBA', '11:50:00', '01:20:00', 'SR', 'ICS LAB'),
('CSE101', 13, 'TBA', '08:30:00', '10:00:00', 'SR', 'ICS LAB'),
('CSE101', 14, 'TBA', '10:10:00', '11:40:00', 'TR', 'ICS LAB'),
('CSE103', 1, 'DMAY', '11:50:00', '01:20:00', 'ST', NULL),
('CSE103', 2, 'TBA-2', '08:30:00', '10:00:00', 'MW', NULL),
('CSE103', 3, 'TJ', '11:50:00', '01:20:00', 'ST', NULL),
('CSE103', 4, 'TJ', '11:50:00', '01:20:00', 'MW', NULL),
('CSE103', 5, 'DMAY', '01:30:00', '03:00:00', 'ST', NULL),
('CSE103', 6, 'TBA-2', '11:50:00', '01:20:00', 'ST', NULL),
('CSE103', 7, 'DAKC', '08:30:00', '10:00:00', 'SR', NULL),
('CSE103', 8, 'DMIM', '11:50:00', '01:20:00', 'MW', NULL),
('CSE103', 9, 'DAHF', '11:50:00', '01:20:00', 'TR', NULL),
('CSE103', 10, 'TBA', '08:30:00', '10:00:00', 'TR', NULL),
('CSE103', 11, 'TBA', '08:30:00', '10:00:00', 'MW', NULL),
('CSE103', 12, 'TBA', '11:50:00', '01:20:00', 'SR', NULL),
('CSE103', 13, 'TBA', '03:10:00', '04:40:00', 'SR', NULL),
('CSE103', 14, 'TBA', '08:30:00', '10:00:00', 'ST', NULL),
('CSE103LAB', 1, 'TJ', '10:10:00', '01:10:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 2, 'TBA-2', '10:10:00', '01:10:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 3, 'TJ', '01:30:00', '04:30:00', 'S', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 4, 'TJ', '01:30:00', '04:30:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 5, 'DMAY', '03:10:00', '06:10:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 6, 'TBA-2', '08:00:00', '10:00:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 7, 'TBA', '10:10:00', '12:10:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 8, 'TBA', '10:10:00', '01:10:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 9, 'DAHF', '08:00:00', '11:00:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 10, 'TBA', '08:00:00', '11:00:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 11, 'TBA', '01:30:00', '04:30:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 12, 'TBA', '08:00:00', '11:00:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 13, 'TBA', '04:50:00', '07:50:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE103LAB', 14, 'TBA', '01:30:00', '04:30:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE106', 1, 'MHAK', '10:10:00', '11:40:00', 'ST', NULL),
('CSE106', 2, 'MHAK', '01:30:00', '03:00:00', 'ST', NULL),
('CSE106', 3, 'MHAK', '10:10:00', '11:40:00', 'MW', NULL),
('CSE106', 4, 'DMAZH', '01:30:00', '03:00:00', 'ST', NULL),
('CSE106', 5, 'DMAZH', '03:10:00', '04:40:00', 'ST', NULL),
('CSE106', 6, 'DSU', '08:30:00', '10:00:00', 'TR', NULL),
('CSE106', 7, 'DSU', '11:50:00', '01:20:00', 'MW', NULL),
('CSE106', 8, 'TBA', '01:30:00', '03:00:00', 'MW', NULL),
('CSE106', 9, 'TBA', '08:30:00', '10:00:00', 'TR', NULL),
('CSE108', 1, 'AT', '10:10:00', '11:40:00', 'ST', NULL),
('CSE108LAB', 1, 'TBA', '01:30:00', '03:30:00', 'R', 'ICS LAB'),
('CSE110', 1, 'IMRAN', '11:50:00', '01:20:00', 'SR', NULL),
('CSE110', 2, 'MDH', '08:30:00', '10:00:00', 'ST', NULL),
('CSE110', 3, 'TM', '11:50:00', '01:20:00', 'ST', NULL),
('CSE110', 4, 'TM', '10:10:00', '11:40:00', 'ST', NULL),
('CSE110', 5, 'IMRAN', '10:10:00', '11:40:00', 'ST', NULL),
('CSE110', 6, 'AUD', '03:10:00', '04:40:00', 'SR', NULL),
('CSE110', 7, 'SDIS', '01:30:00', '03:30:00', 'SR', NULL),
('CSE110', 8, 'SDIS', '10:10:00', '11:40:00', 'MW', NULL),
('CSE110', 9, 'TBA', NULL, NULL, 'SR', NULL),
('CSE110', 10, 'TBA', '10:10:00', '11:40:00', 'MW', NULL),
('CSE110LAB', 1, 'IMRAN', '04:50:00', '07:50:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 2, 'MDH', '10:10:00', NULL, 'M', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 3, 'TM', '10:10:00', '01:10:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 4, 'TM', '10:10:00', '01:10:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 5, 'IMRAN', '10:10:00', '01:10:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 6, 'MDH', '04:50:00', '07:50:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 7, 'SDIS', '01:30:00', '04:30:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 8, 'SDIS', '08:00:00', '11:00:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 9, 'TBA', '01:30:00', '04:30:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE110LAB', 10, 'TBA', '04:50:00', '07:50:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE200', 1, 'SDIS', '01:30:00', '03:30:00', 'T', 'Software Engineering/Database/AI'),
('CSE200', 2, 'MTRA', '10:10:00', '12:10:00', 'M', 'Software Engineering/Database/AI'),
('CSE200', 3, 'SDIS', '10:10:00', '12:10:00', 'S', 'Software Engineering/Database/AI'),
('CSE200', 4, 'MTRA', '10:10:00', '12:10:00', 'T', 'Software Engineering/Database/AI'),
('CSE200', 5, 'TBA', '04:50:00', '06:50:00', 'W', 'Software Engineering/Database/AI'),
('CSE200', 6, 'TBA', '04:50:00', '06:50:00', 'R', 'Software Engineering/Database/AI'),
('CSE207', 1, 'MI', '08:30:00', '10:00:00', 'ST', NULL),
('CSE207', 2, 'MI', '08:30:00', '10:00:00', 'MW', NULL),
('CSE207', 3, 'DRK', '10:10:00', '11:40:00', 'SR', NULL),
('CSE207', 4, 'DRK', '11:50:00', '01:20:00', 'SR', NULL),
('CSE207', 5, 'MMLI', '10:10:00', '11:40:00', 'SR', NULL),
('CSE207', 6, 'TBA', '10:10:00', '11:40:00', 'SR', NULL),
('CSE207LAB', 1, 'MI', '08:00:00', '10:00:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE207LAB', 2, 'TBA', '04:50:00', '06:50:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE207LAB', 3, 'DRK', '08:00:00', '10:00:00', 'S', 'ICS/Software Engineering/Database/AI'),
('CSE207LAB', 4, 'DRK', '08:00:00', '10:00:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE207LAB', 5, 'MMLI', '04:50:00', '06:50:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE207LAB', 6, 'TBA', '01:30:00', '03:30:00', 'S', 'ICS/Software Engineering/Database/AI'),
('CSE209', 1, 'SHK', '10:10:00', '11:40:00', 'MW', NULL),
('CSE209', 2, 'RDA', '11:50:00', '01:20:00', 'MW', NULL),
('CSE209', 3, 'MKN', '10:10:00', '11:40:00', 'MW', NULL),
('CSE209', 4, 'RDA', '10:10:00', '11:40:00', 'ST', NULL),
('CSE209', 5, 'DSMMI', '01:30:00', '03:00:00', 'TR', NULL),
('CSE209', 6, 'TBA', '01:30:00', '03:00:00', 'MW', NULL),
('CSE209LAB', 1, 'TBA', '10:10:00', '12:10:00', 'R', 'Electrical/Electronics Lab'),
('CSE209LAB', 2, 'RDA', '01:30:00', '03:30:00', 'W', 'Electrical/Electronics Lab'),
('CSE209LAB', 3, 'TBA', '01:30:00', '03:30:00', 'W', 'Electrical/Electronics Lab'),
('CSE209LAB', 4, 'RDA', '01:30:00', '03:30:00', 'M', 'Electrical/Electronics Lab'),
('CSE209LAB', 5, 'DSMMI', '04:50:00', '06:50:00', 'T', 'Electrical/Electronics Lab'),
('CSE209LAB', 6, 'TBA', '04:50:00', '06:50:00', 'S', NULL),
('CSE246', 1, 'TBA', '11:50:00', '01:20:00', 'MW', NULL),
('CSE246', 2, 'RARZ', '03:10:00', '04:40:00', 'MW', NULL),
('CSE246', 3, 'JAO', '11:50:00', '01:20:00', 'MW', NULL),
('CSE246', 4, 'AUD', '01:30:00', '03:00:00', 'SR', NULL),
('CSE246', 5, 'RARZ', '01:30:00', '03:00:00', 'SR', NULL),
('CSE246', 6, 'TBA', '08:30:00', '10:00:00', 'ST', NULL),
('CSE246LAB', 1, 'TBA', '10:10:00', '01:10:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE246LAB', 2, 'RARZ', '04:50:00', '07:50:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE246LAB', 3, 'JAO', '10:10:00', '01:10:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE246LAB', 4, 'AUD', '04:50:00', '07:50:00', 'S', 'ICS/Software Engineering/Database/AI'),
('CSE246LAB', 5, 'RARZ', '01:30:00', '04:30:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE246LAB', 6, 'TBA', '10:10:00', '12:10:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE251', 1, 'MHR', '10:10:00', '11:50:00', 'MW', NULL),
('CSE251', 2, 'MHR', '11:50:00', '01:20:00', 'MW', NULL),
('CSE251', 3, 'SHK', '01:30:00', '03:00:00', 'MW', NULL),
('CSE251', 4, 'SHK', '01:30:00', '03:00:00', 'ST', NULL),
('CSE251', 5, 'DSMMI', '04:50:00', '06:50:00', 'R', 'Electronics Lab'),
('CSE251', 6, 'TBA', '08:00:00', '10:00:00', 'M', 'Electronics Lab'),
('CSE251LAB', 1, 'MHR', '08:00:00', '10:00:00', 'M', 'Electronics Lab'),
('CSE251LAB', 2, 'MHR', '08:00:00', '10:00:00', 'W', 'Electronics Lab'),
('CSE251LAB', 3, 'SHK', '04:50:00', '06:50:00', 'T', 'Electronics Lab'),
('CSE251LAB', 4, 'SHK', '01:30:00', '03:30:00', 'R', 'Electronics Lab'),
('CSE302', 1, 'DMRH', '10:10:00', '11:40:00', 'ST', NULL),
('CSE302', 2, 'DMRH', '01:30:00', '03:00:00', 'MW', NULL),
('CSE302', 3, 'DMSHN', '01:30:00', '03:00:00', 'TR', NULL),
('CSE302', 4, 'DMSHN', '03:10:00', '04:40:00', 'TR', NULL),
('CSE302', 5, 'MMLI', '01:30:00', '03:00:00', 'MW', NULL),
('CSE302', 6, 'TBA', '08:30:00', '10:00:00', 'SR', NULL),
('CSE302LAB', 1, 'DMRH', '01:30:00', '04:30:00', 'S', 'Database Lab'),
('CSE302LAB', 2, 'DMRH', '01:30:00', '04:30:00', 'T', 'Database Lab'),
('CSE302LAB', 3, 'NTN', '01:30:00', '04:30:00', 'M', 'Database Lab'),
('CSE302LAB', 4, 'NTN', '04:50:00', '07:50:00', 'W', 'Database Lab'),
('CSE302LAB', 5, 'MMLI', '04:50:00', '07:50:00', 'M', 'Database Lab'),
('CSE302LAB', 6, 'TBA', '08:00:00', '11:00:00', 'S', 'Database Lab'),
('CSE303', 1, 'TBA', '10:10:00', '11:40:00', 'ST', NULL),
('CSE303', 2, 'DMIM', '03:10:00', '04:40:00', 'MW', NULL),
('CSE303', 3, 'DMIM', '11:50:00', '01:20:00', 'ST', NULL),
('CSE303', 4, 'TBA', '08:30:00', '10:00:00', 'ST', NULL),
('CSE303LAB', 1, 'TBA', '08:00:00', '10:00:00', 'R', 'Software Engineering/Database/AI'),
('CSE303LAB', 2, 'DMIM', '01:30:00', '03:30:00', 'S', 'Software Engineering/Database/AI'),
('CSE303LAB', 3, 'DMIM', '01:30:00', '03:30:00', 'R', 'Software Engineering/Database/AI'),
('CSE303LAB', 4, 'TBA', '01:30:00', '03:30:00', 'S', NULL),
('CSE325', 1, 'NYA', '10:10:00', '11:40:00', 'ST', NULL),
('CSE325', 2, 'NYA', '10:10:00', '11:40:00', 'MW', NULL),
('CSE325', 3, 'PMTI', '01:30:00', '03:00:00', 'SR', NULL),
('CSE325', 4, 'PMTI', '03:10:00', '04:40:00', 'SR', NULL),
('CSE325', 5, 'TBA', '10:10:00', '11:40:00', 'ST', NULL),
('CSE325LAB', 1, 'NYA', '10:10:00', '12:10:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE325LAB', 2, 'NYA', '01:30:00', '03:30:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE325LAB', 3, 'PMTI', '04:50:00', '06:50:00', 'S', 'ICS/Software Engineering/Database/AI'),
('CSE325LAB', 5, 'TBA', '01:30:00', '03:30:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE345', 1, 'ALI', '08:30:00', '10:00:00', 'MW', NULL),
('CSE345', 2, 'MKN', '10:10:00', '11:40:00', 'ST', NULL),
('CSE345', 3, 'MKN', '01:30:00', '03:00:00', 'ST', NULL),
('CSE345', 4, 'ALI', '10:10:00', '11:40:00', 'TR', NULL),
('CSE345', 5, 'TBA', '11:50:00', '01:20:00', 'MW', NULL),
('CSE345LAB', 1, 'ALI', '01:30:00', '03:30:00', 'S', 'Digital System Lab'),
('CSE345LAB', 2, 'MKN', '10:10:00', '12:10:00', 'R', 'Digital System Lab'),
('CSE345LAB', 3, 'MKN', '01:30:00', '03:30:00', 'R', 'Digital System Lab'),
('CSE345LAB', 4, 'ALI', '10:10:00', '12:10:00', 'S', 'Digital System Lab'),
('CSE345LAB', 5, 'TBA', '04:50:00', '06:50:00', 'W', 'Digital System Lab'),
('CSE347', 1, 'MMSU', '01:30:00', '03:00:00', 'MW', NULL),
('CSE347', 2, 'TBA', '10:10:00', '11:40:00', 'SR', NULL),
('CSE347', 3, 'NTN', '01:30:00', '03:00:00', 'SR', NULL),
('CSE347', 4, 'NTN', '10:10:00', '11:40:00', 'MW', NULL),
('CSE347', 5, 'DSU', '11:50:00', '01:20:00', 'ST', NULL),
('CSE347LAB', 1, 'TBA', '04:50:00', '06:50:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE347LAB', 2, 'TBA', '10:10:00', '12:10:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE347LAB', 3, 'NTN', '10:10:00', '12:10:00', 'S', 'ICS/Software Engineering/Database/AI'),
('CSE347LAB', 4, 'NTN', '10:10:00', '12:10:00', 'T', NULL),
('CSE347LAB', 5, 'DSU', '04:50:00', '06:50:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE350', 1, 'TBA-1', '01:30:00', '03:00:00', 'MW', NULL),
('CSE350', 2, 'TBA-1', '10:10:00', '11:40:00', 'MW', NULL),
('CSE350LAB', 1, 'TBA-1', '04:50:00', '06:50:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE350LAB', 2, 'TBA-1', '01:30:00', '03:30:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE360', 1, 'DMEI', '08:30:00', '10:00:00', 'MW', NULL),
('CSE360', 2, 'ALI', '11:50:00', '01:20:00', 'TR', NULL),
('CSE360', 3, 'NYA', '01:30:00', '03:00:00', 'ST', NULL),
('CSE360', 4, 'DMEI', '10:10:00', '11:40:00', 'MW', NULL),
('CSE360', 5, 'TBA', '03:10:00', '04:40:00', 'MW', NULL),
('CSE366', 1, 'TBA', '03:10:00', '04:40:00', 'MW', NULL),
('CSE366', 2, 'TBA', '11:50:00', '01:20:00', 'SR', NULL),
('CSE366', 3, 'DAKC', '11:50:00', '01:20:00', 'MW', NULL),
('CSE366', 4, 'DAKC', '11:50:00', '01:20:00', 'SR', NULL),
('CSE366LAB', 1, 'TBA', '01:30:00', '03:30:00', 'R', 'AI Lab'),
('CSE366LAB', 2, 'TBA', '08:00:00', '10:00:00', 'W', 'AI Lab'),
('CSE366LAB', 3, 'DAKC', '01:30:00', '03:30:00', 'T', 'AI Lab'),
('CSE366LAB', 4, 'DAKC', '04:50:00', '06:50:00', 'M', NULL),
('CSE405', 1, 'MAR', '08:30:00', '10:00:00', 'MW', NULL),
('CSE405', 2, 'MAR', '08:30:00', '10:00:00', 'TR', NULL),
('CSE405', 3, 'MAR', '11:50:00', '01:20:00', 'MW', NULL),
('CSE405', 4, 'MI', '10:10:00', '11:40:00', 'ST', NULL),
('CSE405', 5, 'MMRA', '08:30:00', '10:00:00', 'MW', NULL),
('CSE405', 6, 'TBA', '08:30:00', '10:00:00', 'MW', NULL),
('CSE405LAB', 1, 'TBA', '01:30:00', '03:30:00', 'T', 'Software Engineering Lab'),
('CSE405LAB', 2, 'MAR', '08:00:00', '10:00:00', 'S', 'Software Engineering Lab'),
('CSE405LAB', 3, 'MAR', '01:30:00', '03:30:00', 'W', 'Software Engineering Lab'),
('CSE405LAB', 4, 'MI', '10:10:00', '12:10:00', 'R', 'Software Engineering Lab'),
('CSE405LAB', 5, 'MMRA', '04:50:00', '06:50:00', 'R', NULL),
('CSE405LAB', 6, 'TBA', '04:50:00', '06:50:00', 'M', NULL),
('CSE407', 1, 'DAWR', '10:10:00', '11:40:00', 'MW', NULL),
('CSE407', 2, 'TBA', '08:30:00', '10:00:00', 'MW', NULL),
('CSE412', 1, 'DSHR', '10:10:00', '11:40:00', 'ST', NULL),
('CSE412', 2, 'DSHR', '01:30:00', '03:00:00', 'SR', NULL),
('CSE412LAB', 1, 'DSHR', '01:30:00', '03:30:00', 'M', 'Software Engineering/Database/AI'),
('CSE412LAB', 2, 'DSHR', '01:30:00', '03:30:00', 'W', 'Software Engineering/Database/AI'),
('CSE420', 1, 'MRAR', '01:30:00', '03:00:00', 'MW', NULL),
('CSE420', 2, 'MRAR', '10:10:00', '11:40:00', 'TR', NULL),
('CSE420LAB', 1, 'MRAR', '04:50:00', '06:50:00', 'M', 'ICS/Software Engineering/Database/AI'),
('CSE420LAB', 2, 'MRAR', '10:10:00', '12:10:00', 'S', 'ICS/Software Engineering/Database/AI'),
('CSE430', 1, 'DSHR', '10:10:00', '11:40:00', 'MW', NULL),
('CSE430', 2, 'TKAD', '01:30:00', '03:00:00', 'ST', NULL),
('CSE430LAB', 1, 'TBA', '10:10:00', '12:10:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE430LAB', 2, 'TKAD', '01:30:00', '03:30:00', 'R', NULL),
('CSE438', 1, 'DAWR', '01:30:00', '03:00:00', 'MW', NULL),
('CSE438', 2, 'DAWR', '10:10:00', '11:40:00', 'ST', NULL),
('CSE438LAB', 1, 'DAWR', '08:00:00', '10:00:00', 'R', 'Sofware Enginnering LAB'),
('CSE438LAB', 2, 'DAWR', '10:10:00', '12:10:00', 'R', 'Sofware Enginnering LAB'),
('CSE453', 1, 'MMRA', '11:50:00', '01:20:00', 'ST', NULL),
('CSE453LAB', 1, 'MMRA', '01:30:00', '03:30:00', 'R', NULL),
('CSE464', 1, 'MTRA', '08:30:00', '10:00:00', 'ST', NULL),
('CSE464', 2, 'MTRA', '11:50:00', '01:20:00', 'SR', NULL),
('CSE464LAB', 1, 'MTRA', '01:30:00', '03:30:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE464LAB', 2, 'MTRA', '08:00:00', '10:00:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE475', 1, 'MMSU', '10:10:00', '11:40:00', 'SR', NULL),
('CSE475', 2, 'DMGR', '10:10:00', '11:40:00', 'ST', NULL),
('CSE475', 3, 'DMGR', '11:40:00', '01:20:00', 'ST', NULL),
('CSE475', 4, 'MMSU', '11:50:00', '01:20:00', 'MW', NULL),
('CSE475', 5, 'TBA', '11:50:00', '01:20:00', 'ST', NULL),
('CSE475LAB', 1, 'MMSU', '10:10:00', '12:10:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE475LAB', 2, 'DMGR', '08:00:00', '10:00:00', 'S', 'ICS/Software Engineering/Database/AI'),
('CSE475LAB', 3, 'DMGR', '08:00:00', '10:00:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE475LAB', 4, 'MMSU', '04:50:00', '06:50:00', 'S', 'Software Engineering/Database/AI'),
('CSE475LAB', 5, 'TBA', '04:50:00', '06:50:00', 'T', 'Software Engineering/Database/AI'),
('CSE477', 1, 'JAO', '11:50:00', '01:20:00', 'SR', NULL),
('CSE477', 2, 'JAO', '11:50:00', '01:20:00', 'ST', NULL),
('CSE477LAB', 1, 'JAO', '08:00:00', '10:00:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE477LAB', 2, 'JAO', '10:10:00', '12:10:00', 'T', 'ICS/Software Engineering/Database/AI'),
('CSE479', 1, 'MDH', '10:10:00', '11:40:00', 'ST', NULL),
('CSE479', 2, 'TBA', '01:30:00', '03:00:00', 'MW', NULL),
('CSE479', 3, 'TBA', '11:50:00', '01:20:00', 'MW', 'I'),
('CSE479LAB', 1, 'MDH', '10:10:00', '12:10:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE479LAB', 2, 'TBA', '10:10:00', '12:10:00', 'R', 'ICS/Software Engineering/Database/AI'),
('CSE479LAB', 3, 'TBA', '08:00:00', '10:00:00', 'W', 'ICS/Software Engineering/Database/AI'),
('CSE487', 1, 'RDA', '11:50:00', '01:20:00', 'SR', NULL),
('CSE487', 2, 'DAHF', '11:50:00', '01:20:00', 'MW', NULL),
('CSE487', 3, 'DAHF', '01:30:00', '03:00:00', 'ST', NULL),
('CSE488', 1, 'TBA', '08:30:00', '10:00:00', 'ST', NULL),
('CSE488LAB', 1, 'TBA', '08:00:00', '10:00:00', 'R', 'Software Engineering/Database/AI'),
('CSE489', 1, 'MKR', '10:10:00', '11:40:00', 'TR', NULL),
('CSE489', 2, 'MKR', '01:30:00', '03:30:00', 'MW', NULL),
('CSE489LAB', 1, 'MKR', '01:30:00', '03:30:00', 'R', 'Software Engineering/Database/AI'),
('CSE489LAB', 2, 'MKR', '04:50:00', '06:50:00', 'M', 'Software Engineering/Database/AI'),
('CSE495', 1, 'FKZ', '08:30:00', '10:00:00', 'MW', NULL),
('CSE495', 2, 'FKZ', '10:10:00', '11:40:00', 'MW', NULL),
('CSE495', 3, 'TKAD', '10:10:00', '11:40:00', 'SR', NULL),
('CSE495', 4, 'TKAD', '03:10:00', '04:40:00', 'MW', NULL),
('CSE497', 1, 'TBA', '10:00:00', '10:02:00', 'F', 'Project'),
('CSE499', 1, 'TBA', '09:00:00', '12:00:00', 'F', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_allocation`
--

CREATE TABLE `course_allocation` (
  `ID` int(11) NOT NULL,
  `CourseCode` varchar(10) NOT NULL,
  `Section` int(11) NOT NULL,
  `FacultyID` int(11) NOT NULL,
  `CourseTitle` varchar(100) DEFAULT NULL,
  `Room` varchar(100) DEFAULT NULL,
  `Day` varchar(4) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `CourseCode` varchar(10) NOT NULL,
  `CourseTitle` varchar(100) DEFAULT NULL,
  `Credits` decimal(3,1) DEFAULT NULL,
  `CourseType` varchar(100) DEFAULT NULL,
  `ParallelCourse` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_list`
--

INSERT INTO `course_list` (`CourseCode`, `CourseTitle`, `Credits`, `CourseType`, `ParallelCourse`) VALUES
('CSE101', 'Introduction to Computers I', 3.0, 'OD', NULL),
('CSE102', 'Introduction to Computers II', 3.0, 'OD', NULL),
('CSE103', 'Structured Programming', 4.5, 'Core', 'ICE103 (4)'),
('CSE106', 'Discrete Mathematics', 3.0, 'Core', 'ICE204 (3)'),
('CSE110', 'Object Oriented Programming', 4.5, 'Core', 'ICE107 (4)'),
('CSE200', 'Computer-Aided Engineering Drawing', 1.0, 'Core', NULL),
('CSE207', 'Data Structures', 4.0, 'Core', 'ICE207 (4)'),
('CSE209', 'Electrical Circuits', 4.0, 'Core', 'ICE109 (4)'),
('CSE227', 'Numerical Methods and Computer Programming', 4.5, 'OD', NULL),
('CSE246', 'Algorithms', 4.5, 'Core', 'ICE245 (4)'),
('CSE251', 'Electronic Circuits', 4.0, 'Core', 'ICE213 (4)'),
('CSE302', 'Database Systems', 4.5, 'Core', 'ICE305 (4)'),
('CSE303', 'Statistics for Data Science', 4.0, 'MC', NULL),
('CSE325', 'Operating Systems', 4.0, 'Core', 'ICE275 (3)'),
('CSE345', 'Digital Logic Design', 4.0, 'Core', 'ICE217 (4)'),
('CSE347', 'Information System Analysis and Design', 4.0, 'Core', NULL),
('CSE350', 'Data Communications', 4.0, 'MC', NULL),
('CSE360', 'Computer Architecture', 3.0, 'Core', 'ICE469 (3)'),
('CSE366', 'Artificial Intelligence', 4.0, 'MC', 'ICE476 (3), ICE475 (3), ETE475 (3)'),
('CSE405', 'Computer Networks', 4.0, 'Core', 'ICE302 (4)'),
('CSE407', 'Green Computing', 3.0, 'Core', NULL),
('CSE412', 'Software Engineering', 4.0, 'MC', NULL),
('CSE420', 'Computer Graphics', 4.0, 'ME', 'ICE474 (3)'),
('CSE430', 'Software Testing and Quality Assurance', 4.0, 'MC', NULL),
('CSE432', 'Digital Signal Processing', 4.0, 'MC', 'ICE322 (4)'),
('CSE438', 'Digital Image Processing', 4.0, 'ME', NULL),
('CSE442', 'Microprocessor and Microcontroller', 4.0, 'MC', NULL),
('CSE453', 'Wireless Networks', 3.0, 'ME', 'ICE456 (4), ETE456 (4)'),
('CSE464', 'Advanced Database Systems', 4.0, 'ME', NULL),
('CSE475', 'Machine Learning', 4.0, 'ME', 'ICE478 (3)'),
('CSE477', 'Data Mining', 4.0, 'ME', NULL),
('CSE479', 'Web Programming', 4.0, 'ME', NULL),
('CSE487', 'Cyber Security, Ethics and Law', 3.0, 'Core', 'ICE453 (3), ETE450 (3)'),
('CSE488', 'Big Data Analytics', 4.0, 'ME', NULL),
('CSE489', 'Mobile Programming', 4.0, 'ME', NULL),
('CSE495', 'IT Project Management and Entrepreneurship', 3.0, 'Core', 'ICE473 (3)'),
('ETE225', 'Introduction to Control Systems', 4.0, NULL, 'ETE420'),
('ETE319', 'Electronic Properties of Materials', 3.0, NULL, 'ETE219'),
('ICE216', 'Signals and Systems', 3.0, NULL, 'ICE209'),
('ICE310', 'Electromagnetic Theory', 3.0, NULL, 'ETE310'),
('ICE313', 'Microprocessors and Interfacing', 4.0, NULL, 'ICE316, ETE313, ETE316'),
('ICE314', 'Digital Communications', 4.0, NULL, NULL),
('ICE370', 'Applied Numerical Methods', 3.0, NULL, 'ETE370, ICE470 (4), ETE470 (4)'),
('ICE401', 'VLSI Circuit Design', 4.0, NULL, 'ETE401'),
('ICE439', 'Engineering Ethics', 3.0, NULL, 'ETE439'),
('ICE441', 'Wireless and Mobile Communications', 3.0, NULL, 'ETE441'),
('ICE444', 'Telecommunication Networks and Switching', 3.0, NULL, 'ETE444'),
('ICE448', 'Information Theory and Coding', 3.0, NULL, 'ICE350, ETE448, ETE350');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_members`
--

CREATE TABLE `faculty_members` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Designation` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Extension` int(11) DEFAULT NULL,
  `Room` varchar(100) DEFAULT NULL,
  `Mobile` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_members`
--

INSERT INTO `faculty_members` (`ID`, `Name`, `Designation`, `Email`, `Extension`, `Room`, `Mobile`) VALUES
(1, 'Prof. Dr. Md. Mozammel Huq Azad Khan (MHAK)', 'Professor', 'mhakhan@ewubd.edu', 216, '641', NULL),
(2, 'Prof. Dr. Shamim H. Ripon (DSHR)', 'Professor', 'dshr@ewubd.edu', 262, '647', '1928891978'),
(3, 'Prof. Dr. Md. Nawab Yousuf Ali (NYA)', 'Professor', 'nawab@ewubd.edu', 104, '644', '1917119022'),
(4, 'Dr. Ahmed Wasif Reza (DAWR)', 'Professor', 'wasif@ewubd.edu', 394, '646', '1780099173'),
(5, 'Dr. Taskeed Jabid (TJ)', 'Associate Professor & Chairperson', 'taskeed@ewubd.edu', 221, '642', '1763704545'),
(6, 'Dr. Maheen Islam (MI)', 'Associate Professor', 'maheen@ewubd.edu', 258, '628', '1715009676'),
(7, 'Dr. Mohammad Rezwanul Huq (DMRH)', 'Associate Professor', 'mrhuq@ewubd.edu', 372, '626', '1729648344'),
(8, 'Dr. Anisur Rahman (MAR)', 'Associate Professor', 'anis@ewubd.edu', 256, '629', '1715040900'),
(9, 'Dr. Mohammad Arifuzzaman (DMAZ)', 'Associate Professor', 'mazaman@ewubd.edu', 225, '442', '1752673677'),
(10, 'Dr. Anup Kumar Paul (DAKP)', 'Associate Professor', 'anuppaul@ewubd.edu', 117, '445', '1632224169'),
(11, 'Dr. Sarwar Jahan (SJ)', 'Associate Professor', 'sjahan@ewubd.edu', 165, '444', '1911748011'),
(12, 'Dr. Mohammad Salah Uddin (DSU)', 'Associate Professor', 'uddin@ewubd.edu', 395, '648', '1772704392'),
(13, 'Dr. Md. Sawkat Ali (ALI)', 'Associate Professor', 'alim@ewubd.edu', 154, '627', '1789492705'),
(14, 'Md. Mostofa Kamal Rasel (MKR)', 'Assistant Professor', 'mostofa.kamal@ewubd.edu', 351, '635', '1717256973'),
(15, 'Dr. Mohammad Rifat Ahmmad Rashid (MRAR)', 'Assistant Professor', 'rifat.rashid@ewubd.edu', 446, '635', '01314447616'),
(16, 'Dr. Mohammad Manzurul Islam (DMIM)', 'Assistant Professor', 'md.manzurul.islam@gmail.com', 469, '367', '1713494664'),
(17, 'Dr. Md. Hasanul Ferdaus (DAHF)', 'Assistant Professor', 'hasanul.ferdaus@ewubd.edu', 469, '367', '1799687213'),
(18, 'Dr. Abdullahil Al Kafee Chowdhury (DAKC)', 'Assistant Professor', 'abdullahi.kafee@ewubd.edu', NULL, 'AB3-303', '1813751338'),
(19, 'Dr. Hasan Mahmood Aminul Islam (DHMAI)', 'Assistant Professor', 'mahmood.aminul@ewubd.edu', NULL, 'AB3-1003', '1820999779'),
(20, 'Rashedul Amin Tuhin (RDA)', 'Senior Lecturer', 'mcctuhin@ewubd.edu', 447, '640', '1719356588'),
(21, 'Tanni Mittra (TM)', 'Senior Lecturer', 'tanni@ewubd.edu', 448, '636', '1750805282'),
(22, 'M Saddam Hossain Khan (SHK)', 'Senior Lecturer', 'saddam.cse@ewubd.edu', 315, '640', '1911536727'),
(23, 'Musharrat Khan (MKN)', 'Senior Lecturer', 'musharrat.khan@ewubd.edu', 329, '636', '1711487621'),
(24, 'Mahamudul Hasan (MDH)', 'Senior Lecturer', 'mahamudul@ewubd.edu', 156, '725', '1734325208'),
(25, 'Md. Mohsin Uddin (MMSU)', 'Senior Lecturer', 'mmuddin@ewubd.edu', 411, '640', '01535431270 01323149120'),
(26, 'Md. Jesan Ahammed Ovi (JAO)', 'Senior Lecturer', 'jesan@ewubd.edu', 511, '648', '01686900456'),
(27, 'Md Al-Imran (IMRAN)', 'Lecturer', 'al.imran@ewubd.edu', 514, '725', '1762272287'),
(28, 'Redwan Ahmed Rizvee (RARZ)', 'Lecturer', 'redwan.rizvee@ewubd.edu', 515, 'AB1-205', '01758-545903'),
(29, 'Nishat Tasnim Niloy (NTN)', 'Lecturer', 'nishat.niloy@ewubd.edu', 513, '368', '1714642163'),
(30, 'Md. Mahir Ashhab (MMRA)', 'Lecturer', 'mahir.ashhab@ewubd.edu', NULL, 'AB1-203', '1521442912'),
(31, 'Md. Tanvir Alam (MTRA)', 'Lecturer', 'tanvir.alam@ewubd.edu', NULL, 'AB1-305', '1551225972'),
(32, 'Sadika Islam Sneha (SDIS)', 'Lecturer', 'sadika.sneha@ewubd.edu', NULL, '368', '1751303844'),
(33, 'Md. Khalid Mahbub Khan (KHALID)', 'Lecturer', 'khalid.khan@ewubd.edu', NULL, '367', '1788862327'),
(34, 'Amit Mandal (AMITM)', 'Lecturer', 'amit.mandal@ewubd.edu', NULL, '367', '1674923050');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseCode`,`Section`);

--
-- Indexes for table `course_allocation`
--
ALTER TABLE `course_allocation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CourseCode` (`CourseCode`,`Section`),
  ADD KEY `FacultyID` (`FacultyID`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`CourseCode`);

--
-- Indexes for table `faculty_members`
--
ALTER TABLE `faculty_members`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_allocation`
--
ALTER TABLE `course_allocation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faculty_members`
--
ALTER TABLE `faculty_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_allocation`
--
ALTER TABLE `course_allocation`
  ADD CONSTRAINT `course_allocation_ibfk_1` FOREIGN KEY (`CourseCode`,`Section`) REFERENCES `courses` (`CourseCode`, `Section`),
  ADD CONSTRAINT `course_allocation_ibfk_2` FOREIGN KEY (`FacultyID`) REFERENCES `faculty_members` (`ID`),
  ADD CONSTRAINT `course_allocation_ibfk_3` FOREIGN KEY (`CourseCode`,`Section`) REFERENCES `courses` (`CourseCode`, `Section`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
