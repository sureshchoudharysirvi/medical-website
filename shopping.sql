-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2024 at 07:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '01-05-2024 01:18:52 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'AYURVEDA', 'Ayurveda focuses on promoting holistic health and well being by balancing the mind, body, and spirit. It views health as a state of harmony between an individual physical, mental, emotional, and spiritual aspects, and disease as an imbalance in these areas.', '2024-04-01 11:23:40', NULL),
(2, 'HEALTH DEVICES', 'Health devices encompass a wide range of tools and technologies designed to monitor, manage, and improve various aspects of health and wellness. These devices utilize advancements in technology to provide valuable insights into individual health status and help them make informed decisions about their well being. ', '2024-04-01 11:29:46', NULL),
(3, 'BABY CARE', 'Baby care involves the nurturing, protection, and meeting of the needs of infants and young children to ensure their health, safety, and well being. It encompasses a wide range of practices and activities aimed at supporting the physical, emotional, and developmental needs of babies. ', '2024-04-01 11:31:51', NULL),
(4, 'HEALTH ', 'A health drink is a beverage formulated with ingredients that provide various health benefits, such as vitamins, minerals, antioxidants, and other nutrients. These drinks are designed to support overall health, boost energy levels, and promote hydration.', '2024-04-01 11:34:50', '01-04-2024 07:18:36 PM'),
(5, 'SKIN CARE', 'Skin care is a routine or regimen designed to maintain the health, appearance, and overall condition of the skin. It involves a variety of practices, products, and habits aimed at addressing different skin concerns, such as dryness, oiliness, acne, aging, and sensitivity. A well-rounded skin care routine typically includes cleansing, moisturizing, protecting from sun damage, and treating specific skin issues.', '2024-04-01 15:51:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '4', 1, '2024-04-01 18:22:52', 'Internet Banking', NULL),
(2, 1, '8', 1, '2024-04-02 13:51:07', 'Internet Banking', NULL),
(3, 1, '2', 1, '2024-04-02 14:03:32', 'COD', NULL),
(4, 1, '2', 1, '2024-04-02 14:04:12', 'COD', NULL),
(5, 1, '2', 1, '2024-04-02 14:04:43', 'COD', NULL),
(6, 1, '6', 1, '2024-04-03 04:36:39', 'Internet Banking', NULL),
(7, 1, '1', 1, '2024-04-03 04:46:35', 'Internet Banking', NULL),
(8, 1, '1', 2, '2024-04-03 04:58:02', 'Internet Banking', NULL),
(9, 1, '8', 1, '2024-04-03 04:58:03', 'Internet Banking', NULL),
(10, 1, '2', 1, '2024-04-03 04:59:28', 'Debit / Credit card', 'in Process'),
(11, 1, '8', 1, '2024-04-03 05:05:35', 'COD', NULL),
(12, 1, '4', 1, '2024-04-04 02:25:51', 'COD', NULL),
(13, 1, '4', 1, '2024-04-04 02:52:30', 'COD', NULL),
(14, 1, '4', 2, '2024-04-04 03:06:53', 'COD', NULL),
(15, 1, '10', 1, '2024-04-04 03:08:01', 'COD', NULL),
(16, 1, '10', 1, '2024-04-04 03:11:45', 'COD', NULL),
(17, 1, '5', 1, '2024-04-04 03:43:34', 'COD', NULL),
(18, 1, '7', 1, '2024-04-04 11:15:32', 'COD', NULL),
(19, 1, '7', 1, '2024-04-04 11:23:36', 'COD', NULL),
(20, 1, '7', 1, '2024-04-04 11:32:50', 'COD', NULL),
(21, 1, '1', 1, '2024-04-04 11:33:56', 'COD', NULL),
(22, 1, '2', 1, '2024-04-04 14:36:18', 'COD', NULL),
(23, 1, '1', 1, '2024-04-04 14:37:40', 'internet banking', NULL),
(24, 1, '1', 1, '2024-04-04 14:42:59', 'internet banking', NULL),
(25, 1, '1', 1, '2024-04-04 14:45:43', 'internet banking', NULL),
(26, 1, '1', 1, '2024-04-04 14:49:42', 'internet banking', NULL),
(27, 1, '1', 1, '2024-04-04 15:01:29', 'internet banking', NULL),
(28, 1, '9', 1, '2024-04-04 15:04:59', 'internet banking', NULL),
(29, 1, '3', 1, '2024-04-05 02:54:29', 'internet banking', NULL),
(30, 1, '10', 1, '2024-04-08 02:22:53', 'internet banking', NULL),
(31, 1, '7', 1, '2024-04-08 02:27:01', 'internet banking', NULL),
(32, 1, '1', 1, '2024-04-08 04:24:17', 'internet banking', NULL),
(33, 1, '3', 1, '2024-04-08 05:45:06', 'COD', NULL),
(34, 1, '4', 1, '2024-04-08 13:58:30', 'COD', NULL),
(35, 1, '8', 1, '2024-04-08 13:58:30', 'COD', NULL),
(36, 1, '4', 1, '2024-04-21 14:29:32', 'COD', NULL),
(37, 1, '8', 2, '2024-04-30 19:57:58', 'COD', NULL),
(38, 1, '3', 1, '2024-05-01 02:46:40', 'internet banking', NULL),
(39, 1, '3', 1, '2024-05-02 03:57:06', 'internet banking', NULL),
(40, 1, '5', 1, '2024-05-02 04:05:40', 'internet banking', NULL),
(41, 1, '7', 1, '2024-05-02 05:33:38', 'internet banking', NULL),
(42, 1, '7', 1, '2024-05-02 05:37:18', 'internet banking', NULL),
(43, 1, '2', 1, '2024-05-02 07:03:11', 'internet banking', NULL),
(44, 1, '3', 1, '2024-05-02 07:03:12', 'internet banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 10, 'in Process', 'dxcfghj', '2024-04-03 05:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 9, 'Dabur Chyawanprash', 'Dabur', 335, 395, '<span style=\"color: rgb(113, 113, 110); font-family: Inter, sans-serif; font-size: 14px;\">Dabur Chyawanprash Awaleha is a time-tested formula using 45 ayurvedic ingredients to give your immunity a boost. Its herbal composition naturally strengthens the immune system in the body so your body can fight against common infections like cold, cough, etc. Give your body a herbal nutrition supplement and enjoy a better immunity in your day-to-day life.</span><br>', 'p41.jpg', 'p41.jpg', 'p41.jpg', 5, 'In Stock', '2024-04-01 13:55:46', NULL),
(2, 3, 3, 'Johnson 300 ML', 'Johnson Hair Oil ', 410, 443, '<span style=\"color: rgb(113, 113, 110); font-family: Inter, sans-serif; font-size: 14px;\">Give your baby a stimulating and comfortable head massage with Avocado and Pro-Vitamin B5 enriched Johnsons Baby Hair Oil that is specially formulated for the little ones. The carefully selected ingredients help make the hair soft and healthy looking and also makes the oil safe to use. Let your baby have a happy and healthy development with this baby hair oil which stimulates their senses, while you enjoy a happy bonding as you give them a loving massage</span><br>', 'p24.jpg', 'p24.jpg', 'p24.jpg', 2, 'In Stock', '2024-04-01 15:30:18', NULL),
(3, 5, 13, 'Ponds Men Facewash ', 'PONDS', 100, 120, 'this is good for skin and give glow skin in seven days', 'p17.jpg', 'p17.jpg', 'p17.jpg', 0, 'In Stock', '2024-04-01 17:28:48', NULL),
(4, 5, 13, 'Lakme  Facewash Strawberry Blast', 'LAKME', 535, 549, 'This will Glow your face within 5 days', 'p18.jpg', 'p18.jpg', 'p18.jpg', 0, 'In Stock', '2024-04-01 17:43:58', NULL),
(5, 2, 6, 'Cipla Nebulizer', 'Cipla', 585, 649, 'this is use for breadthing', 'p44.jpg', 'p44.jpg', 'p44.jpg', 0, 'In Stock', '2024-04-01 17:46:01', NULL),
(6, 1, 15, 'Ashvagandha General Wellness Tab 60', 'HIMALAYA', 1050, 1200, 'Good for vitamin an made up of pure natural herb', 'p40.jpg', 'p40.jpg', 'p40.jpg', 0, 'In Stock', '2024-04-01 17:55:42', NULL),
(7, 1, 15, 'Ibuprofen 500 coated tablet', 'MAJOR', 125, 128, 'Pain reliver and Fever Reducer', 'p37.png', 'p37.png', 'p37.png', 0, 'In Stock', '2024-04-01 18:01:15', NULL),
(8, 2, 5, 'Sugar Monitoring Machine', 'MEDTECH', 2450, 2650, 'chek the blood pressure ', 'p38.jpg', 'p38.jpg', 'p38.jpg', 0, 'In Stock', '2024-04-01 18:11:30', NULL),
(9, 2, 5, 'Digital Thermometer', 'CIPLA', 300, 340, 'Manufacture by Cipla  this is a waterproof thermometer which measure accurate fever level', 'p42.webp', 'p42.webp', 'p42.webp', 0, 'In Stock', '2024-04-01 18:18:10', NULL),
(10, 2, 17, 'Wheel Chair', 'Visco', 45000, 50000, '<span style=\"color: rgb(51, 51, 51); font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">A wheelchair is a mobility device used by individuals who have difficulty walking or moving around independently due to various disabilities, injuries, or medical conditions. It typically consists of a seat mounted on a wheeled base, which allows the user to move around manually or with assistance.</span><br>', 'p47.jpg', 'p47.jpg', 'p47.jpg', 0, 'In Stock', '2024-04-03 04:08:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 3, 'Baby Skin Care', '2024-04-01 13:33:57', NULL),
(2, 3, 'Baby Food', '2024-04-01 13:34:18', NULL),
(3, 3, 'Baby Hair Care', '2024-04-01 13:34:53', NULL),
(4, 3, 'Diaper', '2024-04-01 13:35:14', NULL),
(5, 2, 'Health Checkup ', '2024-04-01 13:36:52', '01-04-2024 11:44:35 PM'),
(6, 2, 'Nebulizers', '2024-04-01 13:37:11', NULL),
(7, 1, 'Herbal Juices', '2024-04-01 13:44:42', NULL),
(8, 1, 'Honey', '2024-04-01 13:44:54', NULL),
(9, 1, 'Chayawanprash', '2024-04-01 13:45:47', NULL),
(10, 4, 'Minerals', '2024-04-01 13:46:45', NULL),
(11, 4, 'Sport Nutrition', '2024-04-01 13:47:14', NULL),
(12, 4, 'Vitamin and Supplements', '2024-04-01 13:48:08', NULL),
(13, 5, 'Face Care', '2024-04-01 15:53:09', NULL),
(14, 5, 'Body Lotions', '2024-04-01 15:53:31', NULL),
(15, 1, 'Vitamin Tablets', '2024-04-01 17:50:40', NULL),
(17, 2, 'Health Care Machine', '2024-04-03 04:04:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-01 18:20:38', NULL, 1),
(2, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-02 13:49:53', NULL, 1),
(3, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-03 04:36:25', NULL, 1),
(4, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-04 02:25:27', NULL, 1),
(5, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-04 03:43:16', NULL, 1),
(6, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-04 11:15:08', NULL, 1),
(7, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-04 14:36:07', NULL, 1),
(8, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-04 18:27:13', NULL, 1),
(9, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-05 02:50:17', NULL, 0),
(10, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-05 02:50:33', '05-04-2024 08:33:13 AM', 1),
(11, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-08 02:22:31', NULL, 1),
(12, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-08 04:24:11', NULL, 1),
(13, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-08 05:44:32', NULL, 1),
(14, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-08 13:58:24', NULL, 1),
(15, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-21 14:29:25', NULL, 1),
(16, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-30 14:12:32', NULL, 0),
(17, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-04-30 19:54:01', NULL, 1),
(18, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-01 02:46:26', NULL, 1),
(19, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-02 03:45:48', '02-05-2024 09:33:19 AM', 1),
(20, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-02 04:04:26', NULL, 1),
(21, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-02 05:33:33', NULL, 1),
(22, 'suresh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-05-02 07:02:53', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'suresh Hemaram Choudhary', 'suresh@gmail.com', 9699794081, 'f925916e2754e5e03f75dd58a5733251', 'asas', 'sas', 'asas', 0, 'aS', 'as', 'aS', 235, '2024-04-01 18:20:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
