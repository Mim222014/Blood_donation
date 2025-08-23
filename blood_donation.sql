-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2025 at 10:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `user_id`, `age`, `gender`, `blood_group`, `contact`, `location`) VALUES
(2, 5, 23, 'Female', 'A-', '01823198833', 'Dhaka'),
(3, 7, 23, 'Female', 'O-', '01823198456', 'Tangail'),
(4, 8, 26, 'Male', 'O+', '01823198822', 'Savar'),
(5, 9, 30, 'Female', 'A+', '01823198831', 'Tangail'),
(6, 11, 26, 'Female', 'A+', '01823198832', 'Dhaka'),
(11, 26, 22, 'Female', 'A+', '017182653426', 'Dhaka'),
(13, 28, 30, 'Female', 'A-', '01827635421', 'Dhaka'),
(14, 29, 30, 'Female', 'A-', '01987265375', 'Chittagong'),
(15, 30, 33, 'Male', 'A+', '01782787365', 'Sylhet'),
(16, 31, 23, 'Female', 'O+', '01987265371', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `seeker_id` int(11) DEFAULT NULL,
  `blood_group_needed` varchar(5) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `date_needed` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `seeker_id`, `blood_group_needed`, `location`, `contact`, `date_needed`) VALUES
(5, 10, 'A+', 'Dhaka', '01823198450', '2025-10-11'),
(6, 10, 'O-', 'Tangail', '01823198454', '2025-08-29'),
(7, 12, 'O+', 'Dhaka', '01823198830', '2025-12-07'),
(8, 13, 'O+', 'Dhaka', '01823198837', '2025-11-03'),
(9, 14, 'A-', 'Tangail', '01823198450', '2025-12-05'),
(10, 15, 'O+', 'Savar', '01823198457', '2025-08-04'),
(11, 16, 'O-', 'Dhaka', '01823198839', '2025-12-03'),
(12, 17, 'O+', 'Tangail', '01823198832', '2025-02-03'),
(13, 17, 'O+', 'Tangail', '01823198835', '2025-03-09'),
(14, 20, 'A+', 'Dhaka', '01781718276', '2025-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('donor','seeker') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Ali Hasan', 'ali@gmail.com', 'd54d1702ad0f8326224b817c796763c9', 'donor', '2025-08-16 18:02:04'),
(2, 'Faria Islam', 'faria@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'seeker', '2025-08-16 18:03:49'),
(5, 'Eva', 'eva@gmail.co', '907fb0c0cae75076167b9b3d1dcb23cc', 'donor', '2025-08-16 18:35:22'),
(6, 'Mim', 'mim@gmail.com', '77fab95de2c362ba0ad0b1b27a9f058a', 'seeker', '2025-08-16 18:36:07'),
(7, 'Lamyea', 'lam@gmail.com', '74ec346a75f132279c6ade55df6f9b4e', 'donor', '2025-08-16 18:37:02'),
(8, 'Sadman', 'sad@gmail.com', '3c8a49145944fed2bbcaade178a426c4', 'donor', '2025-08-16 18:58:45'),
(9, 'Anila', 'anila@gmail.com', '202cb962ac59075b964b07152d234b70', 'donor', '2025-08-17 17:08:10'),
(10, 'Towa', 'towa@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'seeker', '2025-08-17 17:10:21'),
(11, 'Lamyea', 'lamyea@gmail.com', '3b712de48137572f3849aabd5666a4e3', 'donor', '2025-08-18 17:50:11'),
(12, 'Tanha', 'tanha@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'seeker', '2025-08-21 16:13:00'),
(13, 'Ali', 'ali@gmail.com', '698d51a19d8a121ce581499d7b701668', 'seeker', '2025-08-22 08:42:00'),
(14, 'Ema', 'ema@gmail.com', 'bcbe3365e6ac95ea2c0343a2395834dd', 'seeker', '2025-08-22 08:44:17'),
(15, 'Ritu', 'ritu@gmail.com', '310dcbbf4cce62f762a2aaa148d556bd', 'seeker', '2025-08-22 08:45:34'),
(16, 'Hasan', 'hasan@gmail.com', '550a141f12de6341fba65b0ad0433500', 'seeker', '2025-08-22 08:47:00'),
(17, 'Minu', 'minu@gmail.com', 'fae0b27c451c728867a567e8c1bb4e53', 'seeker', '2025-08-22 16:29:44'),
(18, 'Faria', 'faria@gmail.com', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'donor', '2025-08-22 17:08:23'),
(19, 'Faria22', 'faria@gmail.com', '182be0c5cdcd5072bb1864cdee4d3d6e', 'seeker', '2025-08-22 17:09:12'),
(20, 'Inaaya', 'in@mail.com', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'seeker', '2025-08-22 17:09:48'),
(21, 'Faria', 'TRIII@gmail.com', '38b464161bf5019798797584babd0433', 'donor', '2025-08-22 20:32:17'),
(22, 'Zhinia', '22@gmail.com', '182be0c5cdcd5072bb1864cdee4d3d6e', 'seeker', '2025-08-22 20:41:31'),
(23, 'riri', 'riri@hotmail.com', 'c740d6848b6a342dcc26c177ea2c49fe', 'seeker', '2025-08-22 20:44:19'),
(24, 'tasmiah', 'tas99@gmail.com', 'c8516d3a2d3249dc612f821a923d14bb', 'donor', '2025-08-23 06:21:37'),
(25, 'mini', 'mini@gmail.com', '44c6c370fd1859325f7119e96a81584e', 'donor', '2025-08-23 06:30:23'),
(26, 'nur', 'nur00@mail.com', 'a263c8011d857d6b8485892de8430b27', 'donor', '2025-08-23 06:43:05'),
(28, 'Mahiya', 'ma@gmai.com', 'b74df323e3939b563635a2cba7a7afba', 'donor', '2025-08-23 07:34:47'),
(29, 'Tasnim', 'tasnim22@gmail.com', '1db92fd13cda360335c733ae7aa1ec5d', 'donor', '2025-08-23 07:41:00'),
(30, 'Rowshan', 'row123@gmail.com', 'f1965a857bc285d26fe22023aa5ab50d', 'donor', '2025-08-23 07:43:51'),
(31, 'Naznin', 'naz66@gmail.com', '004e05b2919c367782281eebfcbcf519', 'donor', '2025-08-23 07:58:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_donor` (`user_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seeker_request` (`seeker_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donors`
--
ALTER TABLE `donors`
  ADD CONSTRAINT `donors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_donor` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `fk_seeker_request` FOREIGN KEY (`seeker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `requests_ibfk_1` FOREIGN KEY (`seeker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
