-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 08:51 PM
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
-- Database: `agrisrilanka`
--

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inquiry_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `description` varchar(255) NOT NULL,
  `provinces` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`inquiry_id`, `title`, `email`, `description`, `provinces`, `id`) VALUES
(8, 'watering issue ', 'sahanasaranga815@gmail.com', 'wathura danna ba deiyo', 'Southern Province', 6),
(9, 'chemicals issue', 'sahanasaranga815@gmail.com', 'pora na pora na pora na', 'Weston Province', 6);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `text` varchar(128) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `text`, `value`, `name`) VALUES
(3, 'laudantium enim quasi est quidem magnam voluptate ipsam eos\\ntempora quo necessitatibus\\ndolor quam autem quasi\\nreiciendis et n', 1, 'suducko'),
(4, 'non et atque\\noccaecati deserunt quas accusantium unde odit nobis qui voluptatem\\nquia voluptas consequuntur itaque dolor\\net qu', 1, 'alias odio sit'),
(5, 'harum non quasi et ratione\\ntempore iure ex voluptates in ratione\\nharum architecto fugit inventore cupiditate\\nvoluptates magni', 0, 'vero eaque aliquid doloribus et culpa'),
(6, 'harum non quasi et ratione\\ntempore iure ex voluptates in ratione\\nharum architecto fugit inventore cupiditate\\nvoluptates magni', 0, 'vero eaque aliquid doloribus et culpa'),
(7, 'ddfff', 0, 'dddd'),
(8, 'hellow', 0, 'sahan'),
(9, 'cscscs', 1, 'hell'),
(10, 'cscscs', 1, 'hell'),
(11, 'cscscs', 1, 'hell'),
(12, 'cscscs', 1, 'hell'),
(13, 'cscscs', 1, 'hell'),
(14, 'cscscs', 1, 'hell'),
(15, 'cscscs', 1, 'hell'),
(16, 'cscscs', 1, 'hell'),
(17, 'cscscs', 1, 'hell'),
(18, 'cscscs', 1, 'hell'),
(19, 'hello', 1, 'text'),
(20, 'hello', 1, 'text'),
(21, 'hello', 1, 'text'),
(22, 'hello', 1, 'text'),
(23, 'hello hellow', 1, 'prathibha');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `email`, `password`) VALUES
(1, 'sahanr', 'sahanasaranga815@gmail.com', '$2y$10$jPKdx5T3Gm4MqW7aeFyKWuCR3H5AlUJb36eD0GnTpjmLErnZyg8f2'),
(4, 'kevin', 'kevin@gmail.com', '$2y$10$CJBBohZ4ltbBwRuACrEFiOgkMtJ2m9JoP3m0mGrpxSPnrq.3DQ2zK'),
(6, 'rashmika', 'rash@gmail.com', '$2y$10$iZ/gMztwrd3oyllDIlNvaOb.1Cz7f47cBWBF18GuUlDDjWxmRXgjG'),
(8, 'punsara@gmail.com', 'pu@gmail.com', '$2y$10$C0sh11Q4lZBPrEKLuZTM6u/dwLdGq7BhKspN85IKnmShGCEdirgou');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inquiry_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `inquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `inquiry_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
