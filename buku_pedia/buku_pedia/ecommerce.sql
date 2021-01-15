-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 04:46 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(5) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `category_description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`) VALUES
('1', 'RAM', '(Random Access Memory)penyimpanan data sementara (memori) dan berbagai instruksi program.'),
('2', 'Processor', 'sebuah IC yang mengontrol keseluruhan jalannya sebuah sistem komputer dan digunakan sebagai pusat at'),
('3', 'CD ROM', 'compact disc read-only memory adalah sebuah perangkat keras pada komputer yang berbentuk balok yang '),
('4', 'PSU', 'supplier arus listrik');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(5) NOT NULL,
  `sku` varchar(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `brand` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` varchar(5) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `sku`, `name`, `brand`, `description`, `price`, `category_id`, `image`) VALUES
('1', 'A100', 'RAM KINGSTON HYPERX FURY GAMING DDR3 64GB 1600MHz 12800 RAM ', 'KINGSTON', 'ORIGINAL CHIP KINGSTON | kapasitas 64GB | Speed PC 12800U / 1600MHz | Cocok dengan semua Motherboard', 394000, '1', 'https://tweakers.net/ext/i/1395905339.jpeg'),
('2', 'SIUD2389', 'Processor Intel Core i9 10900K - 3.7 GHz 10 Core 20 Thread L', 'Intel', 'Number of Cores: 10 | Number of Threads: 20 | Processor Base Frequency: 3.70 GHz | Max Turbo Frequen', 7850000, '2', 'https://cdn1.dotesports.com/wp-content/uploads/2020/06/16231732/Intel-Core-I9-9900K-2.jpg'),
('3', 'EID749', 'DVD RW INTERNAL LG 24X CD ROOM ROM SATA PC DESKTOP', 'LG', 'Drive Type : Internal | Interface : SATA | DVD Write Speed : 22x | CD Write Speed : 48x | Supported ', 195000, '3', 'https://c1.neweggimages.com/ProductImage/27-136-268-01.jpg'),
('4', 'QYID0034', 'Corsair CV Series CV650 PSU ATX Power Supply True Gaming 650', 'Corsair ', ' | ATX Connector 1 | Adjustable Single/Multi 12V Rail No | ATX12V Version v2.31 | Continuous output ', 969000, '4', 'https://digitalpromo.co.uk/media/catalog/product/cache/1/image/1024x780/9df78eab33525d08d6e5fb8d27136e95/c/p/cp-9020211-uk_0_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promotion_id` varchar(5) NOT NULL,
  `product_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promotion_id`, `product_id`) VALUES
('3', '1'),
('4', '2'),
('1', '3'),
('2', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promotion_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
