-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2024 at 11:45 AM
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
-- Database: `ecommerce_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_image` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_image`, `admin_password`) VALUES
(1, 'abdo', 'abdo@gmail.com', 'logo after 3d_2.png', '$2y$10$M/A/r5j/GSeJrAZxI8NtRu9eG5yNltfgTrfQVoClfSIF/pzNUXa2W'),
(2, 'karan', 'karan@gmail.com', 'Grocery Store Logo Template.jpeg', '$2y$10$qG.BzLniMZSE15G2PHHXoOtXvPlnVGaNXk0R4ubaJsBX744qpm7S6'),
(3, 'dalsaniya', 'dalsaniya@gmail.com', 'IMG_20211019_180555_639.jpg', '$2y$10$I5RJsnfcE0IrH2sXzY1gNO53tTu3JzEOAhs2tYGghYjaZzzQLt.66');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(4, 'Dell'),
(5, 'Polo'),
(7, 'Apple'),
(10, 'Samsung'),
(13, 'Nokia');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`product_id`, `ip_address`, `quantity`) VALUES
(9, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Dairy'),
(2, 'Snacks & Beverages'),
(3, 'Bakery & Bread'),
(4, 'Cleaning & Household'),
(5, 'Baby Products'),
(6, 'Pet Products'),
(7, 'Accessories'),
(8, 'kjhg'),
(9, 'cat food'),
(10, 'bakery');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 1, 312346784, 1, 3, 'pending'),
(2, 1, 312346784, 2, 1, 'pending'),
(3, 1, 312346784, 4, 1, 'pending'),
(4, 1, 1918753782, 3, 2, 'pending'),
(5, 1, 351837813, 1, 2, 'pending'),
(6, 1, 397181079, 5, 11, 'pending'),
(7, 1, 665767640, 3, 1, 'pending'),
(8, 2, 1998166180, 3, 1, 'pending'),
(9, 2, 1998166180, 4, 1, 'pending'),
(10, 2, 1508340995, 1, 1, 'pending'),
(11, 2, 1508340995, 4, 1, 'pending'),
(12, 2, 943161857, 1, 1, 'pending'),
(13, 2, 2022732573, 4, 1, 'pending'),
(14, 2, 904733289, 6, 3, 'pending'),
(15, 2, 1877901697, 7, 1, 'pending'),
(16, 2, 1616063090, 3, 1, 'pending'),
(17, 2, 1741135731, 3, 1, 'pending'),
(18, 2, 1222776199, 3, 1, 'pending'),
(19, 2, 487984529, 3, 1, 'pending'),
(20, 2, 236768398, 3, 1, 'pending'),
(21, 2, 555051189, 3, 1, 'pending'),
(22, 2, 778042724, 6, 1, 'pending'),
(23, 2, 2011517444, 8, 1, 'pending'),
(24, 2, 354028576, 6, 1, 'pending'),
(25, 2, 688289644, 6, 1, 'pending'),
(26, 3, 823278926, 6, 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(120) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image_one` varchar(255) NOT NULL,
  `product_image_two` varchar(255) NOT NULL,
  `product_image_three` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image_one`, `product_image_two`, `product_image_three`, `product_price`, `date`, `status`) VALUES
(3, 'hello world', 'Drools Tuna and Salmon 1.2 kg Dry Adult Cat Food is a specially formulated cat food designed to provide complete and balanced nutrition for adult cats. Packed with high-quality protein from real tuna and salmon, it supports muscle maintenance, healthy ski', 'cat, food', 6, 9, '1-2-cat-1-9950959-drools-original-imagy2nwyupzhxzz.webp', '1-2-cat-1-9950959-drools-original-imagy2nwfkxgf2ps.webp', '1-2-cat-1-9950958-drools-original-imagy2nwfww8xz9u.webp', 380, '2024-10-14 09:31:26', 'true'),
(4, 'Breed Dry Dog Food', 'Chicken, chicken by-product meal, corn, wheat, chicken fat, ground grain sorghum, natural flavors, dried plain beet pulp, egg product, potassium chloride, sodium hexametaphosphate, salt, cat food, dog food', 'food, dog food, cat food', 3, 9, 'food1.png', 'food2.png', 'food3.png', 100, '2023-10-25 01:41:31', 'true'),
(5, 'iugyftrfghjkjfdgfhvjb', 'iudrfgcbvnmklbkv jkviolkjhguik kiugyugukgyiug iuguguygugyh', 'demo', 8, 8, 'Grocery Store Logo Template.jpeg', 'image (3).png', 'image (4).png', 45, '2024-09-26 15:17:17', 'true'),
(6, 'demo', 'dsjfnsid fisd f', 'demo , demo2', 6, 0, '1-2-cat-1-9950958-drools-original-imagy2nwfww8xz9u.webp', '1-2-cat-1-9950959-drools-original-imagy2nwfkxgf2ps.webp', '1-2-cat-1-9950959-drools-original-imagy2nwfkxgf2ps.webp', 2354, '2024-09-28 04:40:36', 'true'),
(7, 'dem2 karan', 'demo karan', 'karan', 6, 0, '-original-imagdnamwzrtcybd.webp', '-original-imagdnamwzrtcybd.webp', '-original-imagdnamwzrtcybd.webp', 123, '2024-09-28 04:41:45', 'true'),
(8, 'cat food demo', 'demo ', 'demo', 9, 0, '1-2-cat-1-9950958-drools-original-imagy2nwfww8xz9u.webp', '1-2-cat-1-9950958-drools-original-imagy2nwfww8xz9u.webp', '1-2-cat-1-9950958-drools-original-imagy2nwfww8xz9u.webp', 345, '2024-09-28 05:03:50', 'true'),
(9, 'maan', 'maan is a good girl', 'best product', 1, 0, 'IMG_20211019_180555_639.jpg', 'IMG_20211001_155604_091.jpg', 'IMG_20211001_160411_666.jpg', 145, '2024-10-14 04:57:08', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(112) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(17, 3, 2354, 823278926, 1, '2024-10-14 09:29:04', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_method`, `payment_date`) VALUES
(3, 6, 1998166180, 480, 'upi', '2024-09-26 15:45:12'),
(4, 7, 1508340995, 220, 'masr_bank', '2024-09-26 15:53:26'),
(5, 8, 943161857, 123, 'upi', '2024-09-28 05:02:10'),
(6, 17, 823278926, 2354, 'masr_bank', '2024-10-14 09:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(3, 'maan patel', 'maan@gmail.com', '$2y$10$5qYbKoG0RpM10vCYv1N6Cuv3kzEWP4UBk95e53V.mjrmFKOApR/Ky', 'IMG_20220207_140504_436.jpg', '::1', 'rajkot,', '2345432134');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
