-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 02:34 PM
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
-- Database: `shopmax_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`user_id`, `name`, `username`, `password`, `email`, `phone`, `address`) VALUES
('', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'tope', 'topman14', '', 'temijoel06jdj@gmail.com', '703307140400', '3, yaba, lagos'),
('', 'Dammy', 'Faffy09064q', '', 'daffylaffy@gmail.com', '9033476145', '3, yaba, lagos'),
('', 'Dammy', 'Faffy09064q', '', 'daffylaffy@gmail.com', 'DJDKDKJS', '3, yaba, lagos'),
('', 'Dammy', 'Faffy09064q', '', 'daffylaffy@gmail.com', 'DJDKDKJS', '3, yaba, lagos'),
('', 'Dammy', 'Faffy09064q', '', 'daffylaffy@gmail.com', 'DJDKDKJS', '3, yaba, lagos'),
('', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('USR_94.72533943272177', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '8023355512', '3, yeba, lagos'),
('USR_21.4100404310547', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, Yaba, Lagos'),
('USR_15.82654961549994', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, Yaba, Lagos'),
('', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yeba, lagos'),
('', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '7033071404', '3, yaba, lagos'),
('', 'Akinkuade Temitope', 'topman', '', 'temijoel06@gmail.com', '+2347033071404', '3, Yaba, Lagos'),
('USR_62.55139196227111', 'Akinkuade Temitope', 'dammy', '', 'temijoel06@gmail.com', '7033071404', '3, yaba, lagos'),
('USR_27.632371063967565', 'Akinkuade Temitope', 'topman', 'jjkjkjgffg', 'temijoel06@gmail.com', '7033071404', '3, Yaba, Lagos'),
('USR_57.77000824348335', 'Akinkuade Temitope', 'dammy', 'bjajkhshs', 'temijoel06@gmail.com', '7033071404', '3, Yaba, Lagos'),
('USR_10.393844152611997', 'Akinkuade Temitope', 'dammy', 'kxjkzjnkj', 'jjj@gmail.com', '07033071404', 'jajskjksj'),
('USR_0.8936289594626112', 'timmi', 'topboy', 'jskhkjhkjsd', 'jkajskj@gmail.com', '8987987987987', 'hkjhkjhkjh'),
('USR_56.47579966114689', 'Akinkuade Temitope', 'topboy', 'ukhkjhkjh', 'temijoel06@gmail.com', '8023355512', 'Lagos, Nigeria'),
('USR_55.11061353366043', 'Akinkuade Temitope', 'Faffy09064q', 'jnkjkjnkj', 'temijoel06@gmail.com', '+2348137689050', 'Lagos, Nigeria'),
('USR_71.46252726981177', 'Akinkuade Temitope', 'goodtope', 'jnnknjnkjnkj', 'jjj@gmail.com', '+2348137689050', 'Lagos, Nigeria'),
('USR_50.53586565265644', 'Akinkuade Temitope', 'topman', 'klklklkl', 'temijoel06@gmail.com', '+2348137689050', 'Lagos, Nigeria'),
('', 'Dammy', 'Faffy09064q', '9u09080989', 'techsight.info@gmail.com', '07033071404', 'Lagos, Nigeria'),
('USR_63.1840367757311', 'Akinkuade Temitope', 'topman14', 'joitomatE', 'talktotimothy101@gmail.com', '07033071404', 'Yaba, Lagos, Nigeria'),
('USR_33.01998232122274', 'Akinkuade Temitope', 'topman', 'jhkjefkej', 'temijoel06@gmail.com', '8023355512', 'Lagos, Nigeria'),
('', 'Akinkuade Temitope', 'topman', 'hjhjhjhjhj', 'temijoel06@gmail.com', '+2347033071404', 'hkjhkjhkjh'),
('USR_12.114272657058468', 'timothy', 'goodtope', 'iipiopoi9809', 'jjj@gmail.com', '+2348137689050', '3, Yaba, Lagos');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` varchar(255) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_img` varchar(255) NOT NULL,
  `prod_desc` varchar(255) NOT NULL,
  `prod_price` varchar(255) NOT NULL,
  `prod_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`, `prod_category`) VALUES
('pro_001', 'iPhone 13 Pro', 'https://i.pinimg.com/564x/a3/c7/6f/a3c76f7a3b1146d8d09bd120339bae37.jpg', 'A flagship iPhone with advanced camera capabilities and powerful performance.', '₦550,000', 'smartphones'),
('pro_002', 'Samsung Galaxy S21', 'https://i.pinimg.com/564x/7e/2f/55/7e2f55abc4c99835ca8c05bd8cef300a.jpg', 'A premium Android phone with a stunning display and excellent camera system.', '₦380,000', 'smartphones'),
('pro_003', 'Google Pixel 6', 'https://i.pinimg.com/564x/d2/aa/52/d2aa52678a808c22191c7cf1a2c1f122.jpg', 'A high-end Google phone with exceptional camera features and stock Android experience.', '₦320,000', 'smartphones'),
('pro_004', 'OnePlus 9 Pro', 'https://i.pinimg.com/564x/d8/55/e0/d855e0345c52ab74608f1249080e00b1.jpg', 'A powerful and fast Android device with a smooth display and impressive camera setup.', '₦350,000', 'smartphones'),
('pro_005', 'Xiaomi Mi 11', 'https://i.pinimg.com/564x/3a/09/01/3a090160e0becb776488a0c8f0d46ab0.jpg', 'A flagship Xiaomi phone with top-of-the-line specifications and a brilliant display.', '₦280,000', 'smartphones'),
('pro_006', 'Huawei P50 Pro', 'https://i.pinimg.com/564x/0f/e6/f1/0fe6f1e4e1d414407ef8d699842deedc.jpg', 'A premium Huawei smartphone known for its outstanding camera performance and sleek design.', '₦400,000', 'smartphones'),
('pro_007', 'Sony Xperia 1 III', 'https://i.pinimg.com/564x/94/23/32/9423323a34c64aff62d2847e684c4732.jpg', 'A Sony flagship phone with a stunning 4K OLED display and pro-level camera features.', '₦450,000', 'smartphones'),
('pro_008', 'Oppo Find X3 Pro', 'https://i.pinimg.com/564x/69/5d/35/695d35b70bbe53ad9b14ed753593d9fd.jpg', 'An innovative Oppo phone with a unique curved display and impressive camera capabilities.', '₦390,000', 'smartphones'),
('pro_009', 'LG Velvet 2 Pro', 'https://i.pinimg.com/564x/6c/4a/7b/6c4a7bd005b28fb0456d10dc98ad5cd7.jpg', 'A stylish LG smartphone with a sleek design, powerful performance, and excellent camera.', '₦320,000', 'smartphones'),
('pro_010', 'Motorola Edge Plus', 'https://i.pinimg.com/564x/58/6a/68/586a687ec75bdb19279f5135f91a5df5.jpg', 'A Motorola flagship phone with a curved display, impressive battery life, and 5G support.', '₦300,000', 'smartphones'),
('pro_011', 'Wireless Charger', 'https://i.pinimg.com/564x/57/15/96/571596927aeaf44b73a5ae42ef3ac840.jpg', 'A convenient and fast way to wirelessly charge your compatible devices', '₦15,000', 'accessories'),
('pro_012', 'Bluetooth Earphones', 'https://i.pinimg.com/564x/41/6f/ec/416fec37bef68667e759a8d1e286761b.jpg', 'Wireless earphones offering a tangle-free audio experience with great sound quality.', '₦20,000', 'accessories'),
('pro_013', 'Phone Tripod Stand', 'https://i.pinimg.com/564x/47/53/01/475301ebcf05b88415f9ebedc830d23a.jpg', 'A portable stand to stabilize your phone for photography and video recording.', '₦8,000', 'accessories'),
('pro_014', 'Power Bank', 'https://i.pinimg.com/564x/2b/9a/4d/2b9a4d34413288212ad4ed8401e99c6e.jpg', 'A portable charger with fast charging capabilities to keep your devices powered on the go. ', '₦18,000', 'accessories'),
('pro_015', 'Car Phone Mount', 'https://i.pinimg.com/564x/0b/64/79/0b64790c7115f7c320522cfa8508bb2d.jpg', 'A secure and adjustable mount to hold your phone while driving for easy navigation and hands-free calling.', '₦10,000', 'accessories'),
('pro_016', 'Phone Case', 'https://i.pinimg.com/564x/83/ae/6b/83ae6bbf8c26b86f2c88d42b72dac911.jpg', 'A durable case to safeguard your phone from scratches, bumps, and drops.', '₦5,000', 'accessories'),
('pro_017', 'Bluetooth Speaker', 'https://i.pinimg.com/564x/bd/ab/c4/bdabc47e32d0770253c1899894e30648.jpg', 'A compact speaker that wirelessly connects to your devices for enjoying music on the go.', '₦12,000', 'accessories');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `purchase_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `amount_paid` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `billing_address` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`purchase_id`, `product_name`, `product_price`, `product_quantity`, `amount_paid`, `customer_name`, `billing_address`, `email_address`, `time`) VALUES
('', 'Google Pixel 6', '₦320,000', '2', '', 'Dammy', 'Lagos, Nigeria', 'techsight.info@gmail.com', ''),
('', 'OnePlus 9 Pro', '₦350,000', '', '', 'Dammy', 'Lagos, Nigeria', 'techsight.info@gmail.com', 'Wed May 17 2023 23:30:47 '),
('', 'Huawei P50 Pro', '₦400,000', '2', '', 'Dammy', 'Lagos, Nigeria', 'techsight.info@gmail.com', 'Wed May 17 2023 23:57:40 '),
('pur_523896511744390', 'Samsung Galaxy S21', '₦380,000', '2', '760000', 'Dammy', 'Lagos, Nigeria', 'techsight.info@gmail.com', 'Thu May 18 2023 00:01:04 '),
('pur_519086960788278', 'Xiaomi Mi 11', '₦280,000', '2', '560000', 'Dammy', 'Lagos, Nigeria', 'techsight.info@gmail.com', 'Thu May 18 2023 00:05:48 '),
('pur_396693719552202', 'OnePlus 9 Pro', '₦350,000', '2', '700000', 'Dammy', 'Lagos, Nigeria', 'techsight.info@gmail.com', 'Thu May 18 2023 00:06:35 '),
('pur_494677716203358', 'Google Pixel 6', '₦320,000', '1', '320000', 'Akinkuade Temitope', 'Yaba, Lagos, Nigeria', 'talktotimothy101@gmail.com', 'Thu May 18 2023 00:10:53 '),
('pur_023946491564056', 'Google Pixel 6', '₦320,000', '1', '', 'Akinkuade Temitope', 'hkjhkjhkjh', 'temijoel06@gmail.com', 'Sun May 21 2023 11:46:27 '),
('pur_452015259554468', 'OnePlus 9 Pro', '₦350,000', '2', '700000', 'Akinkuade Temitope', 'hkjhkjhkjh', 'temijoel06@gmail.com', 'Sun May 21 2023 11:49:09 '),
('pur_758739129281426', 'LG Velvet 2 Pro', '₦320,000', '1', '', 'Akinkuade Temitope', 'hkjhkjhkjh', 'temijoel06@gmail.com', 'Sun May 21 2023 11:50:34 '),
('pur_687576434252019', 'iPhone 13 Pro', '₦550,000', '1', '', 'Akinkuade Temitope', 'hkjhkjhkjh', 'temijoel06@gmail.com', 'Sun May 21 2023 11:56:09 '),
('pur_378821773079861', 'Power Bank', '₦18,000', '1', '18000', 'Akinkuade Temitope', 'hkjhkjhkjh', 'temijoel06@gmail.com', 'Sun May 21 2023 12:01:22 '),
('pur_158336630161634', 'Xiaomi Mi 11', '₦280,000', '1', '280000', 'timothy', '3, Yaba, Lagos', 'jjj@gmail.com', 'Sun May 21 2023 12:03:04 '),
('pur_430425951667580', 'Google Pixel 6', '₦320,000', '1', '320000', 'timothy', '3, Yaba, Lagos', 'jjj@gmail.com', 'Sun May 21 2023 12:13:16 '),
('pur_820926886953398', 'Samsung Galaxy S21', '₦380,000', '1', '380000', 'timothy', '3, Yaba, Lagos', 'jjj@gmail.com', 'Sun May 21 2023 12:14:12 '),
('pur_163612001913474', 'Google Pixel 6', '₦320,000', '1', '320000', 'timothy', '3, Yaba, Lagos', 'jjj@gmail.com', 'Sun May 21 2023 12:28:38 '),
('pur_047693631518140', 'Phone Tripod Stand', '₦8,000', '1', '8000', 'timothy', '3, Yaba, Lagos', 'jjj@gmail.com', 'Sun May 21 2023 12:31:28 ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `prod_id` (`prod_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
