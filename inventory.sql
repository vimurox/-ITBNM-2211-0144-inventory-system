-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 10:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `appuser_pk` int(11) NOT NULL,
  `userRole` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`appuser_pk`, `userRole`, `name`, `mobileNumber`, `email`, `password`, `address`, `status`) VALUES
(1, 'SuperAdmin', 'SuperAdmin', '07745655', 'superadmin@testemail.com', 'admin', 'srilanka', 'Active'),
(4, 'Admin', 'Sadun', '071236589', 'Sadun123@gamil.com', '1234', '40 walana', 'Active'),
(5, 'Admin', 'kamal', '0771469956', 'kamal@gmail.com', '2244555', '72/1 wadduwa', 'Active'),
(6, 'Admin', 'Sahan', '07712542', 'Sahan123@gmail.com', 'sahan', '21/5 kaluthara', 'Active'),
(7, 'Admin', 'Amal', '07589862', 'Amal123@gmail.com', 'amal', '55/2 malabe', 'Active'),
(8, 'Admin', 'Banuka', '07658985', 'Banuka123@gmail.com', 'banuka', '22 Rathmalana', 'Active'),
(9, 'Admin', 'Nihal', '0771563256', 'Nihal@gmail.com', 'nihal', 'malabe', 'Active'),
(10, 'Admin', 'Upul', '011235652', 'Upul@gmail.com', 'upul', 'Colombo', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_pk` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_pk`, `name`) VALUES
(1, 'Electronics '),
(2, 'Home Appliances'),
(3, 'Sport Entertainment'),
(4, 'Juwelry & Watches'),
(5, 'Beauty & Health'),
(6, 'Clothing'),
(7, 'Toys');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(70) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_pk`, `name`, `mobileNumber`, `email`) VALUES
(1, 'Customer1', '071452695', 'Customer1@email.com'),
(2, 'Customer2', '01125858', 'Customer2@email.com'),
(3, 'Customer3', '07725856', 'Customer3@email.com'),
(4, 'Customer4', '07523562', 'Customer4@email.com'),
(5, 'Customer5', '07456526', 'Customer5@email.com'),
(6, 'Customer6', '077258652', 'Customer6@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `order_pk` int(11) NOT NULL,
  `orderId` varchar(200) DEFAULT NULL,
  `customer_fk` int(11) DEFAULT NULL,
  `orderDate` varchar(200) DEFAULT NULL,
  `totalPaid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_pk`, `orderId`, `customer_fk`, `orderDate`, `totalPaid`) VALUES
(1, 'Bill-5360555293900', 3, '07-06-2024', 300),
(2, 'Bill-5393690289200', 1, '07-06-2024', 250),
(3, 'Bill-108336711907700', 3, '09-06-2024', 400),
(4, 'Bill-174789520450000', 1, '09-06-2024', 155000),
(5, 'Bill-174629554910800', 2, '13-06-2024', 12500),
(6, 'Bill-19200628247900', 3, '15-06-2024', 10000),
(7, 'Bill-20854339166600', 5, '15-06-2024', 12500),
(8, 'Bill-21017787009400', 4, '15-06-2024', 14000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_pk` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `category_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_pk`, `name`, `quantity`, `price`, `description`, `category_fk`) VALUES
(1, 'Camera', 33, 50000, 'Camera', 1),
(2, 'Laptop', 66, 30000, 'All Laptops have', 1),
(3, 'Earphones', 100, 5000, 'All tyoe earphones', 1),
(4, 'Pressure Cooker', 15, 7500, 'All brand Pressure cooker', 2),
(5, 'Soccer', 73, 2500, 'Good material', 3),
(6, 'Ring', 75, 500, 'Gold color ring', 4),
(7, 'Lipstick', 130, 500, 'All Color lipstick', 5),
(8, 'Men Watch', 56, 3500, 'All type Watches', 4),
(9, 'Jeans', 35, 4500, 'Good Material', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`appuser_pk`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_pk`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_pk`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`order_pk`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `appuser_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `order_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
