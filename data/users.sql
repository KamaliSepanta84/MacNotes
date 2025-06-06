-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2025 at 12:49 AM
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
-- Database: `kosoricm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `macID` varchar(100) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` enum('STUDENT','INSTRUCTOR','TA') NOT NULL DEFAULT 'STUDENT',
  `number_uploads` int(11) NOT NULL DEFAULT 0,
  `num_downloads` int(11) NOT NULL DEFAULT 0,
  `average_rating` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`macID`, `username`, `email`, `password`, `role`, `number_uploads`, `num_downloads`, `average_rating`) VALUES
('kamals19', 'Sepanta Kamali', 'kamals19@mcmaster.ca', '$2y$10$p8/NfnSUAiezeQmtpItDQO8JhRDAKvqM3V4tVrdIDooZQHOJQEEvy', 'STUDENT', 7, 7, 0),
('kosoricm', 'Marko Kosoric', 'kosoricm@mcmaster.ca', '$2y$10$rpw7eQuO9toDf/ff.9.0peA78oYcobsb9m.BGDYwir9shvi7y7BxS', 'STUDENT', 23, 23, 0),
('maden', 'Maden Chopra', 'maden@mcmaster.ca', '$2y$10$UY0.loBtM079WddV4o6X/OkLmg814OUcm7kWsbjtVdpmmtk9aX8ZK', 'STUDENT', 4, 4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`macID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
