-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2020 at 06:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistance`
--

CREATE TABLE `assistance` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assistance`
--

INSERT INTO `assistance` (`id`, `name`, `password`, `email`, `address`, `city`, `contact`) VALUES
(7, 'Dilujan', '1997', 'dilu@gmail.com', 'Nelukkulam', 'Vauniya', '93823932823'),
(10, 'Pirasha', '1234', 'pirasha@gmail.com', 'Chavacheri', 'Jaffna', '93823932823'),
(11, 'Luxshanth', '8080', 'laddu@gmail.com', 'varani', 'Jaffna', '9972567691');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) NOT NULL,
  `callno` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `issued` int(10) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `callno`, `name`, `category`, `description`, `quantity`, `issued`, `added_date`) VALUES
(1, 'G@1', 'Beaker', 'Glassware', 'Liquid volume containment and measurement', 2, 2, '2020-02-24 05:12:56'),
(2, 'G@2', 'Volumetric Flask', 'Glassware', ' Measure volumes much more precisely', 3, 0, '2020-02-16 22:30:17'),
(3, 'C@1', 'Sodium Chloride', 'Chemical', 'General laboratory solution.', 1000, 0, '2020-02-16 21:52:29'),
(4, 'E@1', 'Tongs', 'Equipments', 'Pick up laboratory items', 8, 2, '2020-02-18 04:53:25'),
(5, 'T@1', 'Test', 'Glassware', 'Just test', 10, 0, '2020-02-16 22:50:11'),
(7, 'T@2', 'test2', 'Glassware', 'xxxxxx', 10, NULL, '2020-02-16 22:51:19');

-- --------------------------------------------------------

--
-- Table structure for table `issueinventories`
--

CREATE TABLE `issueinventories` (
  `id` int(11) NOT NULL,
  `callno` varchar(50) NOT NULL,
  `studentid` int(4) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `studentcontact` varchar(20) NOT NULL,
  `issueddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issueinventories`
--

INSERT INTO `issueinventories` (`id`, `callno`, `studentid`, `studentname`, `studentcontact`, `issueddate`) VALUES
(14, 'E@1', 2, 'Ram', '78945686', '2020-02-18 04:53:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `callno` (`callno`),
  ADD UNIQUE KEY `callno_2` (`callno`);

--
-- Indexes for table `issueinventories`
--
ALTER TABLE `issueinventories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assistance`
--
ALTER TABLE `assistance`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `issueinventories`
--
ALTER TABLE `issueinventories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
