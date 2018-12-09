-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2018 at 08:44 PM
-- Server version: 5.7.20
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_video`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'action'),
(2, 'fantasy'),
(3, 'thriller');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vid_gen`
--

CREATE TABLE `tbl_vid_gen` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `vid_id` tinyint(4) NOT NULL,
  `genre_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_vid_gen`
--

INSERT INTO `tbl_vid_gen` (`id`, `vid_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `vid_id` int(11) NOT NULL,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`vid_id`, `vid_name`, `vid_path`, `vid_desc`, `vid_thumb`) VALUES
(1, 'Marvel\'s Avengers', 'avengers.mp4', 'Marvel\'s The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name.', 'avengers.jpg'),
(2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'Star Wars: The Force Awakens (also known as Star Wars: Episode VII – The Force Awakens) is a 2015 American epic space opera film produced, co-written and directed by J. J. Abrams.', 'forceawakens.jpg'),
(3, 'Stranger Things', 'strangerthings.mp4', 'It\'s the fall of 1984, about a year after Will Byers was found, and he has been plagued by seeing visions of the Upside Down featuring a more dangerous monster.', 'strangerthings.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_vid_gen`
--
ALTER TABLE `tbl_vid_gen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`vid_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vid_gen`
--
ALTER TABLE `tbl_vid_gen`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `vid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
