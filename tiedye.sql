-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 04:35 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiedye`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `custID` int(11) NOT NULL,
  `custPwd` varchar(20) NOT NULL,
  `custPhoneNum` varchar(12) NOT NULL,
  `custEmail` varchar(30) NOT NULL,
  `custUsername` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`custID`, `custPwd`, `custPhoneNum`, `custEmail`, `custUsername`) VALUES
(2, '', '', '', ''),
(3, '', '', '', ''),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, '', 'null', 'null', 'null'),
(7, 'tikitaka', '724198790', 'taka@gmail.com', 'taka'),
(8, 'tikitaka', '724198790', 'taka@gmail.com', 'taka'),
(9, '', '72419879', 'taka@gmail.com', ''),
(10, 'saya123', '43254326436', 'saya@gmail.com', 'saya'),
(11, 'null', 'null', 'null', 'null'),
(12, 'null', 'null', 'null', 'null'),
(13, 'null', 'null', 'null', 'null'),
(14, 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(25) NOT NULL,
  `productPrice` float NOT NULL,
  `productImages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productPrice`, `productImages`) VALUES
(1, 'Friends TieDye', 15, 'images/1p.png'),
(2, 'Rainbow TieDye', 15, 'images/2p.png'),
(3, 'Crop Top TieDye', 10, 'images/3p.png'),
(4, 'Bear TieDye', 15, 'images/4p.png'),
(5, 'Blue TieDye', 10, 'images/5p.png'),
(6, 'Light Blue TieDye', 5, 'images/6p.png'),
(7, 'Rainbow 2 TieDye', 10, 'images/7p.png'),
(8, 'Black Rainbow TieDye', 10, 'images/8p.png'),
(9, 'Black TieDye', 10, 'images/9p.png'),
(10, 'Orange TieDye', 10, 'images/10p.png'),
(11, 'Cloud TieDye', 10, 'images/11p.png'),
(12, 'Two Tone TieDye', 10, 'images/12p.png'),
(13, 'Rainbow 3 TieDye', 15, 'images/13p.png'),
(14, 'Rainbow 4 TieDye', 15, 'images/14p.png'),
(15, 'Rainbow 5', 15, 'images/15p.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `custID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
