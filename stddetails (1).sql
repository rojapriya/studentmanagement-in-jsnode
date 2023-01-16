-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 04:15 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stu`
--

-- --------------------------------------------------------

--
-- Table structure for table `stddetails`
--

CREATE TABLE `stddetails` (
  `id` int(10) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dob` varchar(11) NOT NULL,
  `education` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stddetails`
--

INSERT INTO `stddetails` (`id`, `firstname`, `lastname`, `location`, `email`, `dob`, `education`) VALUES
(1, 'Roja', 'sasikumar', '   Madurai   ', '   roja2365@gmail   ', '2000-04-27', '   B.E   '),
(2, 'Siva', 'Balan', 'Madurai', 'sivabalan65@gmail', '1998-05-10', 'B.Tech'),
(3, 'Priya', 'Lakshmi', 'Madurai', 'priya525@gmail', '2001-08-02', 'M.sc'),
(25, 'monika', 'preethy', 'madurai', 'moni@gmail', '13-05-2000', 'M.sc'),
(26, 'monika', 'preethy', 'madurai', 'moni@gmail', '13-05-2000', 'M.sc'),
(27, 'monika', 'preethy', 'madurai', 'moni@gmail', '13-05-2000', 'M.sc'),
(28, 'monika', 'preethy', 'madurai', 'moni@gmail', '13-05-2000', 'M.sc'),
(29, 'gayu', 'preethy', 'madurai', 'moni@gmail', '13-05-2000', 'M.sc'),
(30, 'gayu', 'preethy', 'madurai', 'moni@gmail', '13-05-2000', 'M.sc'),
(31, 'keerthi', 'preethy', 'madurai', 'moni@gmail', '13-05-2000', 'M.sc'),
(32, 'keerthi', 'preethy', 'madurai', 'moni@gmail', '13-05-2000', 'M.sc'),
(33, 'Priya', 'Sasi', 'Madurai', 'priya525@gmail', '2001-10-28', 'M.sc'),
(34, 'Priya', 'Sasi', 'Madurai', 'priya525@gmail', '2001-10-28', 'M.sc'),
(35, 'Priya', 'Sasi', 'Madurai', 'priya525@gmail', '2001-10-28', 'M.sc'),
(36, 'Priya', 'Sasi', 'Madurai', 'priya525@gmail', '2001-10-28', 'M.sc'),
(37, 'Priya', 'Sasi', 'Madurai', 'priya525@gmail', '2001-10-28', 'M.sc'),
(38, 'Priya', 'Sasi', 'Madurai', 'priya525@gmail', '2001-10-28', 'M.sc'),
(39, 'Priya', 'Sasi', 'Madurai', 'priya525@gmail', '2001-10-28', 'M.sc'),
(40, 'rahul', 'Bala', 'Madurai', 'ragul3@gmail', '2000-10-05', '  B.E  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stddetails`
--
ALTER TABLE `stddetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stddetails`
--
ALTER TABLE `stddetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
