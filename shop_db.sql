-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2025 at 04:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(60, 22, 39, 'Majestic Rajwadi Traditional Gold Plated Brass Combo Set (Necklace, Earrings & Tikka)', 2499, 1, 'NE8.jpg'),
(61, 22, 40, 'Elegant Rajwadi Gold-Plated Brass Necklace & Earring Set – Timeless Traditional Jewellery', 999, 1, 'NE2.jpg'),
(62, 22, 37, 'Rajwadi Gold Plated Combo Set', 2499, 1, 'NE4.jpg'),
(63, 23, 37, 'Rajwadi Gold Plated Combo Set', 2499, 1, 'NE4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `feedback` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `category`) VALUES
(37, 'Rajwadi Gold Plated Combo Set', 'Rajwadi Gold Plated Brass Premium Combo Necklace Set with Maang Tikka and Earrings - Traditional Design Premium Brass Jewellery', 2499, 'NE4.jpg', 'necklace'),
(38, 'Heritage Rajwadi Bridal Jewellery Set ', 'Rajwadi Gold Plated Brass Premium Combo Necklace Set with Maang Tikka and Earrings - Traditional Floral Design Premium Brass Jewellery', 2499, 'NE10.jpg', 'necklace'),
(39, 'Majestic Rajwadi Traditional Combo Set ', 'Rajwadi Gold Plated Brass Premium Combo Necklace Set with Maang Tikka and Earrings - Traditional Floral Design Premium Brass Jewellery', 2499, 'NE8.jpg', 'necklace'),
(40, 'Elegant Rajwadi Traditional Jewellery Set', 'Rajwadi Gold Plated Brass Premium Necklace Set with Earrings - Traditional Design Premium Brass Jewellery', 999, 'NE2.jpg', 'necklace'),
(41, 'Rajwadi Gold Plated Premium Combo Set  ', 'Rajwadi Gold Plated Brass Premium Combo Necklace Set with Earrings - Traditional Floral Design Premium Brass Jewellery', 1450, 'NE5.jpg', 'necklace'),
(42, 'Royal Elegance Traditional  Jewellery Set', 'Rajwadi Gold Plated Brass Premium Necklace Set with Earrings - Traditional Design Premium Brass Jewellery', 645, 'NE16.jpg', 'necklace'),
(43, 'Graceful Heritage jewellery Set ', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 322, 'NE14.jpg', 'necklace'),
(44, 'Classic Gold-Toned  Jewellery Set', 'Rajwadi Gold Plated Brass Premium Combo Necklace Set with Earrings - Traditional Floral Design Premium Brass Jewellery', 1250, 'NE15.jpg', 'necklace'),
(45, 'Regal Charm Traditional Jewellery Set ', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 322, 'NE18.jpg', 'necklace'),
(46, 'Antique Style Premium Jewellery Set ', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 999, 'NE21.jpg', 'necklace'),
(47, 'Opulent Heritage Jewellery Set', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 1499, 'NE24.jpg', 'necklace'),
(48, 'Timeless Beauty Traditional Jewellery Set', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 120, 'NE1.jpg', 'necklace'),
(49, 'Luxury Ethnic Traditional  Jewellery Set ', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 645, 'NE19.jpg', 'necklace'),
(50, 'Eternal Grace Traditional Premium Jewellery Set ', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 349, 'NE9.jpg', 'necklace'),
(51, 'Heritage Royal Traditional Jewellery Set', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 120, 'NE12.jpg', 'necklace'),
(52, 'Vintage Charm Premium Jewellery Set', 'Premium Necklace Set with Earrings - Traditional Design Premium Jewellery', 120, 'NE11.jpg', 'necklace'),
(53, 'Sophisticated Traditions Jewellery Set', 'Jewellery Set for Women Gold Plated Pearl Necklace Set Traditional Temple Choker Necklace Set for Women/Jewellery Set with Earrings for Girls and Women', 400, 'NE13.jpg', 'necklace'),
(54, 'Elegant Pearl Beaded Jewellery Set', 'Traditional Ethnic Artificial Pearl Beaded Necklace Moti Mala With Earrings Set For Girls', 1499, 'NE7.jpg', 'necklace'),
(55, 'Classic Artificial Pearl Beaded Jewellery Set', 'Traditional Ethnic Artificial Pearl Beaded Necklace Moti Mala With Earrings Set For Girls', 1150, 'NE17.jpg', 'necklace'),
(56, 'Graceful Traditional Pearl Beaded Jewellery Set', 'Traditional Ethnic Artificial Pearl Beaded Necklace Moti Mala With Earrings Set For Girls', 1150, 'NE6.jpg', 'necklace'),
(57, 'Regal Glow Traditional Jewellery  Set', 'Regal Glow Premium Traditional Necklace & Earring Set', 349, 'NE3.jpg', 'necklace'),
(58, 'Chinchpeti Traditional Jewellery Set', 'Chinchpeti Traditional Jewellery Set', 100, 'N1.jpg', 'necklace'),
(59, 'Rajwadi Gold Plated Jewellery Set ', 'Jewellery Set for Women Gold Plated Pearl Necklace Set ', 645, 'NE23.jpg', 'necklace'),
(60, 'Rose Gold Plated Solitaire, Mangalsutra Set ', 'Rose Gold Plated Solitaire,  Ad Studded Mangalsutra Pendant Necklace Jewellery Set With Earrings ', 449, 'M1.jpg', 'mangalsutra'),
(62, 'Premium mat finishing mangalsutra Set ', 'Premium mat finishing mangalsutra Set for Women/Jewellery Set with Earrings for Girls and Women', 1300, 'NE20.jpg', 'mangalsutra'),
(63, 'Rajwadi mat finishing Mangalsutra Set (1) ', 'Rajwadi mat finishing Mangalsutra Set with Earrings for Women', 1399, 'M10.jpg', 'mangalsutra'),
(64, 'Rajwadi mat finishing Mangalsutra Set (2)', 'Rajwadi mat finishing Mangalsutra Set with Earrings for Women', 1399, 'M17.jpg', 'mangalsutra'),
(65, 'Rajwadi mat finishing Mangalsutra Set (3)', 'Rajwadi mat finishing Mangalsutra Set with Earrings for Women', 1399, 'M16.jpg', 'mangalsutra'),
(66, 'A D Stones Necklace Jewellery Set ', 'A D Stones Necklace Jewellery Set - Designer Collection for Weddings, Parties, and Festivals', 755, 'NE26.jpg', 'necklace'),
(67, 'Rajwadi mat finishing Mangalsutra Set (4)', 'Rajwadi mat finishing Mangalsutra Set with Earrings for Women', 1399, 'NE22.jpg', 'mangalsutra'),
(68, 'Traditional Temple Mangalsutra', 'Jewellery  for Women  Traditional Temple Mangalsutra Set for Women/Jewellery Women', 1399, 'M20.jpg', 'mangalsutra'),
(69, 'Traditional Temple Mangalsutra  (1) ', 'Jewellery  for Women  Traditional Temple Mangalsutra Set for Women/Jewellery Women', 999, 'M6.jpg', 'mangalsutra'),
(70, 'Traditional Temple Mangalsutra (2)', 'Jewellery  for Women  Traditional Temple Mangalsutra Set for Women/Jewellery Women', 1399, 'M13.jpg', 'mangalsutra'),
(71, 'Traditional Temple Mangalsutra (3)', 'Jewellery  for Women  Traditional Temple Mangalsutra Set for Women/Jewellery Women', 750, 'M3.jpg', 'mangalsutra'),
(72, 'Gold Plated Mangalsutra', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 899, 'M21.jpg', 'mangalsutra'),
(73, ' Gold Plated Mangalsutra(1)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 899, 'M8.jpg', 'mangalsutra'),
(74, ' Gold Plated Mangalsutra (2)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 899, 'M11.jpg', 'mangalsutra'),
(75, 'Gold Plated Mangalsutra (3)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 999, 'M2.jpg', 'mangalsutra'),
(76, ' Gold Plated Mangalsutra (4)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 2200, 'M19.jpg', 'mangalsutra'),
(77, 'Gold Plated Mangalsutra (5)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 1499, 'M5.jpg', 'mangalsutra'),
(78, ' Gold Plated Mangalsutra (6)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 1399, 'M7.jpg', 'mangalsutra'),
(79, 'Gold Plated Mangalsutra(7)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 1999, 'M9.jpg', 'mangalsutra'),
(80, ' Gold Plated Mangalsutra (8)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 1999, 'M12.jpg', 'mangalsutra'),
(81, 'Gold Plated Mangalsutra (9)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 249, 'M4.jpg', 'mangalsutra'),
(82, ' Gold Plated Mangalsutra (10)', 'Jewellery Set for Women Gold Plated Mangalsutra Women/Jewellery Women', 349, 'M14.jpg', 'mangalsutra'),
(83, ' Gold Plated Short Mangalsutra ', 'Jewellery for Women Gold Plated Short Mangalsutra Women/Jewellery Women', 249, 'M18.jpg', 'mangalsutra'),
(84, 'Gold Plated Solitaire,  Jewellery Set ', 'Gold Plated Solitaire,  Ad Studded Mangalsutra Pendant Necklace Jewellery Set With Earrings ', 599, 'M15.jpg', 'mangalsutra'),
(85, 'Gold Plated Solitaire,  Jewellery Set (1)', 'Gold Plated Solitaire,  Ad Studded Mangalsutra Pendant Necklace Jewellery Set With Earrings ', 449, 'NE25.jpg', 'mangalsutra'),
(86, 'Gold Plated Solitaire, Jewellery Set (2)', 'Gold Plated Solitaire,  Ad Studded Mangalsutra Pendant Necklace Jewellery Set With Earrings ', 399, 'NE36.jpg', 'mangalsutra'),
(87, 'Gold Plated Short Mangalsutra (1)', 'Jewellery for Women Gold Plated Short Mangalsutra Women/Jewellery Women', 249, 'M25.jpg', 'mangalsutra'),
(88, 'Mat finishing long mangalsutra ', 'Mat finishing long mangalsutra ', 249, 'M29.jpg', 'mangalsutra'),
(89, 'Gold Plated Solitaire, Jewellery Set (3)', 'Gold Plated Solitaire,  Ad Studded Mangalsutra Pendant Necklace Jewellery Set With Earrings ', 299, 'M28.jpg', 'mangalsutra'),
(90, 'Premium Fancy Moti Mangalsutra', 'Premium Fancy moti mangalsutra', 180, 'M26.jpg', 'mangalsutra'),
(91, 'Gold Plated Short Mangalsutra  (2)', 'Jewellery for Women Gold Plated Short Mangalsutra Women/Jewellery Women', 249, 'M22.jpg', 'mangalsutra'),
(92, 'A D Stones Jewellery Set ', 'A D Stones Necklace Jewellery Set - Designer Collection for Weddings, Parties, and Festivals', 1799, 'NE28.jpg', 'necklace'),
(93, 'A D Stones Gold and silver Plated  Jewellery Set ', 'A D Stones Gold and silver Plated Necklace Jewellery Set - Designer Collection for Weddings, Parties, and Festivals', 2500, 'NE29.jpg', 'necklace'),
(94, 'A D Stones Gold and silver Plated  Jewellery Set (1)', 'A D Stones Gold and silver Plated Necklace Jewellery Set - Designer Collection for Weddings, Parties, and Festivals', 3000, 'NE32.jpg', 'necklace'),
(95, ' Gold long  Plated Mangalsutra  ', 'Jewellery Set for Women Gold long  Plated Mangalsutra Women/Jewellery Women', 999, 'M23.jpg', 'mangalsutra'),
(96, ' Gold long  Plated Mangalsutra  (1)', 'Jewellery Set for Women Gold long  Plated Mangalsutra Women/Jewellery Women', 899, 'M24.jpg', 'mangalsutra'),
(97, ' Gold long  Plated Mangalsutra (2)', 'Jewellery Set for Women Gold long  Plated Mangalsutra Women/Jewellery Women', 250, 'M30.jpg', 'mangalsutra'),
(98, 'Latest Stylish Traditional Oxidised Silver Jewellery Set ', 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set With Earrings for Women ', 230, 'NE37.jpg', 'necklace'),
(99, 'Latest Stylish Traditional Oxidised Silver Jewellery Set (1) ', 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set With Earrings for Women ', 130, 'NE35.jpg', 'necklace'),
(100, 'Gold long Plated Mangalsutra ', 'Jewellery Set for Women Gold long  Plated Mangalsutra Women/Jewellery Women', 649, 'M31.jpg', 'mangalsutra'),
(101, 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set (2)', 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set With Earrings for Women ', 150, 'NE39.jpg', 'necklace'),
(102, 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set (3)', 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set With Earrings for Women ', 150, 'NE41.jpg', 'necklace'),
(103, 'Choker Jewellery Set', 'Choker Necklace Set With Earring | Jewellery Set For Women', 300, 'NE42.jpg', 'necklace'),
(104, 'Choker Jewellery Set (1) ', 'Choker Necklace Set With Earring | Jewellery Set For Women', 300, 'NE31.jpg', 'necklace'),
(105, 'Choker Jewellery Set  (2)', 'Choker Necklace Set With Earring | Jewellery Set For Women', 300, 'NE33.jpg', 'necklace'),
(106, 'Choker Jewellery Set (3)', 'Choker Necklace Set With Earring | Jewellery Set For Women', 300, 'NE38.jpg', 'necklace'),
(107, 'Choker Jewellery Set (4) ', 'Choker Necklace Set With Earring | Jewellery Set For Women', 300, 'NE30.jpg', 'necklace'),
(108, 'CRYSTAL CHOCKER', 'CRYSTAL CHOCKER', 150, 'N11.jpg', 'necklace'),
(109, 'CRYSTAL CHOCKER (1)', 'CRYSTAL CHOCKER', 150, 'N6.jpg', 'necklace'),
(110, 'CRYSTAL CHOCKER (2)', 'CRYSTAL CHOCKER', 150, 'N5.jpg', 'necklace'),
(111, 'CRYSTAL CHOCKER (3)', 'CRYSTAL CHOCKER', 150, 'N4.jpg', 'necklace'),
(112, 'CRYSTAL CHOCKER (4)', 'CRYSTAL CHOCKER', 150, 'N12.jpg', 'necklace'),
(113, 'CRYSTAL CHOCKER (5)', 'CRYSTAL CHOCKER', 150, 'N9.jpg', 'necklace'),
(114, 'CLASSIC GOLD TONED BANGLES ', 'CLASSIC GOLD TONED BANGLES SIZE 2.4,02.6,2.8', 300, 'B6.jpg', 'bangles'),
(115, 'CLASSIC GOLD TONED BANGLES (1)', 'CLASSIC GOLD TONED BANGLES SIZE 2.4,02.6,2.8', 300, 'B4.jpg', 'bangles'),
(116, 'Classic Gold Toned Bangle Kada ', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 249, 'B2.jpg', 'bangles'),
(117, 'Classic Gold Toned Bangle Kada (1)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 199, 'B25.jpg', 'bangles'),
(118, ' Classic Band Bracelet ', 'BRESLET Classic Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 199, 'B11.jpg', 'bangles'),
(119, 'Classic Band Bracelet (1)', 'BRESLET Classic Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 199, 'B3.jpg', 'bangles'),
(120, 'Classic Band Bracelet (2)', 'BRESLET Classic Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 199, 'B7.jpg', 'bangles'),
(121, 'Classic Band Bracelet (3)', 'BRESLET Classic Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 199, 'B8.jpg', 'bangles'),
(122, 'Classic Band Bracelet (4)', 'BRESLET Classic Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 249, 'B1.jpg', 'bangles'),
(123, 'Classic Gold Toned Bangle Kada (2)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 249, 'B9.jpg', 'bangles'),
(124, 'Classic Silver Toned Bangle Kada ', 'BRESLET Classic Silver Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 199, 'B5.jpg', 'bangles'),
(125, 'Classic Gold Toned Bangle Kada (3)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 249, 'B14.jpg', 'bangles'),
(126, 'Classic Gold Toned Bangle Kada (4)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 180, 'B10.jpg', 'bangles'),
(127, 'Classic Gold Toned Bangle Kada (5)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 249, 'B21.jpg', 'bangles'),
(128, 'Classic Gold Toned Bangle Kada (6)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 120, 'B15.jpg', 'bangles'),
(129, 'Classic Gold Toned Bangle Kada (7)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 249, 'B7.jpg', 'bangles'),
(130, 'Premium Kada BANGLES ', 'Premium Kada BANGLES SIZE 2.4,02.6,2.7', 160, 'B16.jpg', 'bangles'),
(131, 'Premium Kada BANGLES (1)', 'Premium Kada BANGLES SIZE 2.4,02.6,2.7', 160, 'B17.jpg', 'bangles'),
(132, 'NATH SET OF 6', 'NATH SET OF 6', 240, 'NATH1.jpg', 'bangles'),
(133, 'Chinchpeti necklace ', 'Chinchpeti necklace for women', 100, 'N8.jpg', 'necklace'),
(134, 'Latest Stylish Traditional Oxidised Silver  Jewellery Set (4) ', 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set With Earrings for Women ', 150, 'NE27.jpg', 'necklace'),
(135, 'Latest Stylish Traditional Oxidised Silver Jewellery Set (5)', 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set With Earrings for Women ', 110, 'NE34.jpg', 'necklace'),
(136, 'Latest Stylish Traditional Oxidised Silver Jewellery Set (6) ', 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set With Earrings for Women ', 100, 'NE45.jpg', 'necklace'),
(137, 'Chinchpeti necklace (1)', 'Chinchpeti necklace for women', 110, 'N2.jpg', 'necklace'),
(138, 'Chinchpeti necklace (2)', 'Chinchpeti necklace for women', 150, 'N10.jpg', 'necklace'),
(139, 'Premium Moti Necklace ', 'Premium  Moti Necklace ', 110, 'N3.jpg', 'necklace'),
(140, 'Premium  Moti Necklace ', 'Premium  Moti Necklace ', 110, 'NE40.jpg', 'necklace'),
(141, 'Long Pearl Moti Necklace ', 'Long Pearl Tanmani Type Moti Necklace Set With Trending Pearl Chinchpeti  For Womens', 110, 'N7.jpg', 'necklace'),
(142, 'Fancy Kolhapuri Necklace', 'Fancy Kolhapuri Necklace ', 110, 'NE44.jpg', 'necklace'),
(146, 'A D Long Mangalsutra', 'A D Long Black mani  Mangalsutra', 160, 'M32.jpg', 'mangalsutra'),
(149, 'Classic Band Bracelet (5)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 200, 'B19.jpg', 'bangles'),
(150, 'Classic Band Bracelet (6)', 'BANGLES SIZE 2.4,02.6,2.8', 300, 'B18.jpg', 'bangles'),
(151, 'Classic Gold Toned Bracelet (1)', 'BRESLET Classic Gold Toned Love Band Bracelet |  Bangle Kada | Latest Stylish Gifts for Women and Girls', 200, 'B13.jpg', 'bangles'),
(152, 'Premium Bangles', 'Premium BANGLES SIZE 2.4,02.6,2.8', 100, 'B23.jpg', 'bangles'),
(153, 'Premium Bangles (1)', 'Premium BANGLES SIZE 2.4,02.6,2.8', 300, 'B20.jpg', 'bangles'),
(154, 'One Gram Gold Plated Traditional Bangles (1)', 'Latest One Gram Gold Plated Set of 8 Traditional Bangles for Women and Girls', 250, 'B24.jpg', 'bangles'),
(155, 'Latest Stylish Traditional Oxidised Silver Jewellery Set (7)', 'Latest Stylish Traditional Oxidised Silver Necklace Jewellery Set With Earrings for Women ', 299, 'NE43.jpg', 'necklace'),
(156, 'Premium Long Moti Mangalsutra ', 'Premium Long Moti Mangalsutra ', 249, 'M36.jpg', 'mangalsutra'),
(157, 'Gold Plated Short Mangalsutra (3)', 'Jewellery for Women Gold Plated Short Mangalsutra Women/Jewellery Women', 250, 'M33.jpg', 'mangalsutra'),
(158, 'Gold Plated Short Mangalsutra (4)', 'Jewellery for Women Gold Plated Short Mangalsutra Women/Jewellery Women', 249, 'M35.jpg', 'mangalsutra'),
(159, 'Gold Plated Short Mangalsutra (5)', 'Jewellery for Women Gold Plated Short Mangalsutra Women/Jewellery Women', 699, 'M34.jpg', 'mangalsutra'),
(160, 'Premium Earrings', 'Premium Earrings', 100, 'E1.jpg', 'earring'),
(161, 'A D EARRINGS', 'A D EARRINGS', 100, 'E2.jpg', 'earring'),
(162, 'Traditional Temple Jewellery Antique Jhumkas ', 'Traditional Temple Jewellery Antique Jhumkas ', 40, 'E3.jpg', 'earring'),
(163, 'A D EARRINGS (1)', 'A D EARRINGS', 100, 'E4.jpg', 'earring'),
(164, 'Traditional Temple Jewellery Antique Jhumkas (1)', 'Traditional Temple Jewellery Antique Jhumkas ', 120, 'E5.jpg', 'earring'),
(165, 'Traditional Temple Jewellery Antique Jhumkas (2)', 'Traditional Temple Jewellery Antique Jhumkas ', 120, 'E6.jpg', 'earring'),
(166, 'Traditional Temple Jewellery Antique Jhumkas (3)', 'Traditional Temple Jewellery Antique Jhumkas ', 149, 'E7.jpg', 'earring'),
(167, 'Traditional Temple Jewellery Antique Jhumkas (4)', 'Traditional Temple Jewellery Antique Jhumkas ', 100, 'E8.jpg', 'earring'),
(168, 'Traditional Temple Jewellery Antique Jhumkas (5)', 'Traditional Temple Jewellery Antique Jhumkas ', 120, 'E9.jpg', 'earring'),
(169, 'Traditional Temple Jewellery Antique Jhumkas (6)', 'Traditional Temple Jewellery Antique Jhumkas ', 120, 'E10.jpg', 'earring'),
(170, 'Traditional Temple Jewellery Antique Jhumkas (7)', 'Traditional Temple Jewellery Antique Jhumkas ', 120, 'E11.jpg', 'earring'),
(171, 'Moti Earrings', 'Moti Earrings', 198, 'E12.jpg', 'earring'),
(172, 'Moti Earrings (1)', 'Moti Earrings', 120, 'E13.jpg', 'earring');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(23, 'sahil gaikwad', 'sid123@gmail.com', '0bce0650c05d4d6cb36c64f1aa300fedd43bb562');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(11, 23, 38, 'Heritage Rajwadi Bridal Jewellery Set ', 2499, 'NE10.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
