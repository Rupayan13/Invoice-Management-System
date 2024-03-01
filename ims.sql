-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 06:12 PM
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
-- Database: `ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `country`) VALUES
(4, 'Aditya', 'Routh', 'adityarouth2011@gmail.com', '9748391962', '71, B.C Street', 'India'),
(5, 'Subhomoy', 'Das', 'subhomoydas533108@gmail.com', '6290663104', '1/A First Floor, Loknath Villa, Naskar Hat', 'India'),
(13, 'Rupayan', 'Dirghangi', 'send2rupayan2002@gmail.com', '7044174041', '71, R.N Tagore Road, Kolkata 700077', 'India'),
(55, 'Rony', 'Karmakar', 'ronykarmakar437@gmail.com', '8420114808', '1A, G.Pal Street', 'India'),
(56, 'Arghya Nag', 'Chowdhury', 'arghya.nagchowdhury@gmail.com', '8583821037', '136,Raja Dienedra street', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoiceDate` varchar(200) DEFAULT NULL,
  `dueDate` varchar(200) DEFAULT NULL,
  `invoiceNo` int(200) DEFAULT NULL,
  `invoiceStatus` varchar(200) DEFAULT NULL,
  `product` varchar(200) DEFAULT NULL,
  `customer` varchar(200) DEFAULT NULL,
  `quantity` varchar(200) DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  `discount` varchar(200) DEFAULT NULL,
  `shippingCost` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoiceDate`, `dueDate`, `invoiceNo`, `invoiceStatus`, `product`, `customer`, `quantity`, `price`, `discount`, `shippingCost`) VALUES
(4, '2023-05-20', '2023-05-20', 1, 'paid', 'Hand Bag', 'Subhomoy Das', '1', 2000, '12', '40'),
(5, '2023-05-20', '2023-05-25', 2, 'open', 'Redmi 10', 'Rupayan Dirghangi', '2', 8500, '12', '40'),
(6, '2023-05-20', '2023-05-20', 3, 'paid', 'Samsung J2', 'Rupayan Dirghangi', '3', 6500, '7', '100'),
(7, '2023-05-21', '2023-05-21', 4, 'paid', 'Shoes', 'Reshmi Dirghangi', '2', 280, '10', '40'),
(11, '2023-10-09', '2023-10-09', 5, 'paid', 'Laptop', 'Rony Karmakar', '2', 30000, '40', '70'),
(12, '2023-11-03', '2023-11-03', 6, 'paid', 'Samsung J7', 'Arghya Nag Chowdhury', '2', 12500, '10', '40');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `pdescription` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `price`, `pdescription`) VALUES
(5, 'Redmi 10', '8500', 'It has 4gb ram and 64gb memory.'),
(6, 'Hand Bag', '2000', 'Aditya uses a handbag just like Vanity'),
(10, 'Samsung J2', '6500', 'It has 1gb ram and 16gb internal'),
(11, 'Shoes', '280', 'It is a type of slippers.'),
(14, 'Laptop', '30000', 'It is a good laptop to carry your journey in future.'),
(15, 'Samsung J7', '12500', 'It\'s a well quality mobile phone.');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `password`) VALUES
(3, 'Aditya ', 'Aditya'),
(4, 'Subhomoy', 'Subhomoy'),
(5, 'Rupayan', 'Rupayan'),
(6, 'Rony', 'Rony');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
