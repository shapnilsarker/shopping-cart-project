-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 06:22 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(10) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `contact` varchar(17) NOT NULL,
  `s_email` varchar(70) DEFAULT NULL,
  `c_address` text NOT NULL,
  `p_address` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `userid`, `name`, `contact`, `s_email`, `c_address`, `p_address`, `balance`, `image`) VALUES
(24, 34, 'James', '123456789', NULL, 'World', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `quantity` int(7) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(15) NOT NULL,
  `product_id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `order_date` date NOT NULL DEFAULT current_timestamp(),
  `shipement` varchar(25) DEFAULT NULL,
  `quantity` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `product_id`, `buyer_id`, `seller_id`, `name`, `price`, `order_date`, `shipement`, `quantity`) VALUES
(10, 39, 24, 6, 'Charger', 120, '2023-12-04', NULL, 1),
(11, 34, 24, 6, 'Iphone 12', 1200, '2023-12-04', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discription` text NOT NULL,
  `discount` float DEFAULT NULL,
  `catagory` varchar(50) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `quantity` int(7) NOT NULL,
  `entry_date` date NOT NULL DEFAULT current_timestamp(),
  `rating` int(1) DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `shipement_charges` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `discription`, `discount`, `catagory`, `seller_id`, `quantity`, `entry_date`, `rating`, `image`, `shipement_charges`) VALUES
(34, 'Iphone 12', 1200, 'Iphone 12 256gb.', NULL, 'phones', 6, 12, '2023-12-04', NULL, 'iphone12.jpeg', 30),
(35, 'Iphone 12', 1200, 'Iphone 12 256gb.', NULL, 'phones', 6, 12, '2023-12-04', NULL, 'iphone12_1.jpeg', 30),
(36, 'Iphone 12', 1200, 'Iphone 12 256gb.', NULL, 'phones', 6, 12, '2023-12-04', NULL, 'iphone12_1.jpeg', 30),
(37, 'Iphone 12', 1200, 'Iphone 12 256gb.', NULL, 'phones', 6, 12, '2023-12-04', NULL, 'iphone12_1.jpeg', 30),
(38, 'Iphone 12', 1200, 'Iphone 12 256gb.', NULL, 'phones', 6, 12, '2023-12-04', NULL, 'iphone12_1.jpeg', 30),
(39, 'Charger', 120, 'Iphone Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'charger.jpeg', 30),
(40, 'Charger', 120, 'Iphone Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'charger.jpeg', 30),
(41, 'Charger', 120, 'Iphone Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'charger.jpeg', 30),
(42, 'Charger', 120, 'Iphone Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'charger.jpeg', 30),
(43, 'Laptop Charger', 120, 'Laptop Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'laptopCharger.jpeg', 30),
(44, 'Laptop Charger', 120, 'Laptop Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'laptopCharger.jpeg', 30),
(45, 'Laptop Charger', 120, 'Laptop Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'laptopCharger.jpeg', 30),
(46, 'Laptop Charger', 120, 'Laptop Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'laptopCharger.jpeg', 30),
(47, 'Laptop Charger', 120, 'Laptop Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'laptopCharger.jpeg', 30),
(48, 'Laptop Charger', 120, 'Laptop Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'laptopCharger.jpeg', 30),
(49, 'Laptop Charger', 120, 'Laptop Charger', NULL, 'charger', 6, 15, '2023-12-04', NULL, 'laptopCharger.jpeg', 30);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(10) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contact` varchar(17) NOT NULL,
  `address` varchar(150) NOT NULL,
  `business type` varchar(15) DEFAULT NULL,
  `totalproducts` int(3) NOT NULL DEFAULT 0,
  `balance` int(10) NOT NULL DEFAULT 0,
  `image` varchar(50) DEFAULT NULL,
  `rank` varchar(15) DEFAULT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `userid`, `name`, `contact`, `address`, `business type`, `totalproducts`, `balance`, `image`, `rank`, `approved`) VALUES
(6, 33, 'James Peterson', '123456789', 'World', NULL, 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `profileStatus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `profileStatus`) VALUES
(1, 'Admin', 'admin@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'A', 0),
(33, 'James Peterson', 'james@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'S', NULL),
(34, 'James', 'jamesBuyer@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'C', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
