-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 07:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_api_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `fishes`
--

CREATE TABLE `fishes` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `fish_type_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fishes`
--

INSERT INTO `fishes` (`id`, `user_id`, `fish_type_id`, `name`, `description`, `price`, `image_path`) VALUES
(1, 1, 1, 'Clown Fish on Sale', '2 couple fish, Age 3 month', 400000, 'https://biologydictionary.net/wp-content/uploads/2020/09/Clownfish.jpg'),
(2, 11, 4, 'Angel Fish 1 Set', 'Loram ipsum blablabla', 70000, 'https://media-be.chewy.com/wp-content/uploads/2019/07/18135520/Pterophyllum-scalare-angelfish.jpg'),
(3, 8, 2, 'Cupang Fish Beautiful', 'Age 2 month, ', 50000, 'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/memelihara-ikan-cupang.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fish_types`
--

CREATE TABLE `fish_types` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fish_types`
--

INSERT INTO `fish_types` (`id`, `name`) VALUES
(1, 'Clown Fish'),
(2, 'Ikan Cupang'),
(3, 'Goldfish'),
(4, 'Angefish'),
(5, 'Ikan Cupang');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `token`) VALUES
(1, 'admin1@gmail.com', 'Axel G', 'admin123', 'FishA00001'),
(2, 'admin2@gmail.com', 'AxeLabs', 'admin321', 'FishA00002'),
(4, 'admin12@gmail.com', 'Fuzee', 'admin123', 'FishA00003'),
(5, 'admin4@gmail.com', 'Gigamax', 'admin123', '4znfSSUOIS'),
(6, 'admin5@gmail.com', 'gigs', 'Admin123', 'Fgvhf60EAj'),
(7, 'admin5@gmail.com', 'gigss', 'Admin123', 'GtRUic8e2l'),
(8, 'admin5@gmail.com', 'gigss', 'Admin123', 'iTZ0f2KKsY'),
(9, 'admin6@gmail.com', 'gmax', 'Admin123', 'N0i51y0Rv8'),
(10, 'admin6@gmail.com', 'gmaxxxxxxx', 'Admin123', 'tE9PdyNfxo'),
(11, 'willam.gunawan006@gmal.com', 'william gunawan', 'Andreas0202', '9m48H6Enkm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fishes`
--
ALTER TABLE `fishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `fishes_ibfk_2` (`fish_type_id`);

--
-- Indexes for table `fish_types`
--
ALTER TABLE `fish_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fishes`
--
ALTER TABLE `fishes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fish_types`
--
ALTER TABLE `fish_types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fishes`
--
ALTER TABLE `fishes`
  ADD CONSTRAINT `fishes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fishes_ibfk_2` FOREIGN KEY (`fish_type_id`) REFERENCES `fish_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
