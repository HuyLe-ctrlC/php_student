-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 10:17 AM
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
-- Database: `adminpanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(5) UNSIGNED NOT NULL,
  `category_title` varchar(100) NOT NULL,
  `category_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_title`, `category_description`) VALUES
(1, 'GIOI', NULL),
(2, 'TRUNG BINH', NULL),
(3, 'KHA', NULL),
(4, 'KEM', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-01-05-071225', 'App\\Database\\Migrations\\Category', 'default', 'App', 1672902813, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `updated_date` bigint(20) DEFAULT NULL,
  `creation_date` bigint(20) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fullname`, `email`, `phone`, `course`, `updated_date`, `creation_date`, `category`) VALUES
(12, 'huy1', 'Phamhuuky01@gmail.com', '0978625813', '11123', NULL, 1672907522, 1),
(13, 'Phạm Hữu Kỳ', 'Phamhuuky99@gmail.com', '0978625813', '11123', NULL, 1672907522, 2),
(15, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '11123', NULL, 1672907522, 3),
(16, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', 'zcz', NULL, 1672907522, 4),
(17, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', 'asd', NULL, 1672907522, 1),
(18, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', 'asdasd', NULL, 1672907522, 1),
(19, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '123', NULL, 1672907522, 3),
(20, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '123', NULL, 1672907522, 2),
(21, 'Huy Le Minh', 'Phamhuuky01@gmail.com', '0978625813', 'sadasd', NULL, 1672907522, 2),
(22, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '366', NULL, 1672907522, NULL),
(23, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '33', NULL, 1672907522, NULL),
(24, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '123', NULL, 1672907522, NULL),
(25, 'Huy Le Minh33', 'Phamhuuky01@gmail.com', '0978625813', '2134', NULL, 1672907522, NULL),
(26, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '123', NULL, 1672907522, NULL),
(27, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '232323', NULL, 1672907522, NULL),
(28, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', 'asdasd', NULL, 1672907522, NULL),
(29, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', 'asd', NULL, 1672907522, 1),
(30, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', 'asdasd', NULL, 1672907522, 1),
(31, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '2323', NULL, 1672907522, 2),
(32, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', '4234234', NULL, 1672907522, 2),
(33, 'qqweqwe', 'Phamhuuky01@gmail.com', '0978625813', 'xzczxczxc', NULL, 1672907522, 1),
(34, 'Phạm Hữu Kỳ1111', 'Phamhuuky01@gmail.com', '0978625813', '11123', NULL, 1672907522, 4),
(35, 'Phạm Hữu Kỳ', 'Phamhuuky01@gmail.com', '0978625813', 'sd', 1672908545, 1672907522, 3),
(36, 'Huy tester', 'Phamhuuky01@gmail.com', '0978625813', '11123', 1672908597, 1672907522, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
