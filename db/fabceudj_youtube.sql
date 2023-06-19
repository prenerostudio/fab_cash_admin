-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 26, 2022 at 03:07 AM
-- Server version: 10.3.36-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fabceudj_youtube`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_packages`
--

CREATE TABLE `active_packages` (
  `active_id` int(11) NOT NULL,
  `u_id` int(20) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `package_days` int(20) NOT NULL,
  `active_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `active_packages`
--

INSERT INTO `active_packages` (`active_id`, `u_id`, `package_id`, `package_name`, `package_days`, `active_date`) VALUES
(1, 33, 3, 'name', 7, '0000-00-00'),
(2, 24, 2, 'Mantle', 5, '2022-10-18'),
(3, 24, 6, 'Asthenosphere ', 45, '2022-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(40) NOT NULL,
  `package_name` varchar(300) NOT NULL,
  `package_details` varchar(255) NOT NULL,
  `package_duration` varchar(55) NOT NULL,
  `package_price` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_name`, `package_details`, `package_duration`, `package_price`) VALUES
(1, 'Crust', 'Task: Every day need to watch 5 videos, and after 2 days will get 130 BDT', '2', '100 BDT'),
(2, 'Mantle', 'Task: Every day need to watch 5 videos, and after 5 days will get 300 BDT', '5', '250 BDT'),
(3, 'Outer core (3a) ', 'Task: Every day need to watch 5 videos, and after 7 days will get 650 BDT', '7', '500 BDT'),
(4, 'Inner core (3b) ', 'Task: Every day need to watch 5 videos, and after 7 days will get 1,300 BDT', '10', '1000 BDT'),
(5, 'Lithosphere', 'Task: Every day need to watch 5 videos, and after 30 days will get 4,000 BDT', '30', '3000 BDT'),
(6, 'Asthenosphere ', 'Task: Every day need to watch 5 videos, and after 45 days will get 7,000 BDT', '45', '5000 BDT'),
(7, 'Mesosphere', 'Task: Every day need to watch 5 videos, and after 60 days will get 13,000 BDT', '60', '10000 BDT');

-- --------------------------------------------------------

--
-- Table structure for table `package_history`
--

CREATE TABLE `package_history` (
  `history_id` int(11) NOT NULL,
  `u_phone` varchar(20) NOT NULL,
  `package_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `spin_wheel`
--

CREATE TABLE `spin_wheel` (
  `spin_id` int(11) NOT NULL,
  `u_id` int(20) NOT NULL,
  `reward` varchar(50) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spin_wheel`
--

INSERT INTO `spin_wheel` (`spin_id`, `u_id`, `reward`, `date_added`) VALUES
(1, 1222, 'Bike', '0000-00-00'),
(2, 1222, 'Bike', '0000-00-00'),
(3, 1222, 'Bike', '2012-12-12'),
(4, 24, 'Bike1', '2012-12-12'),
(5, 0, '03027750114', '0000-00-00'),
(6, 0, '03027750114', '0000-00-00'),
(7, 24, 'Bike1', '2012-12-11'),
(8, 24, 'Motobike', '0000-00-00'),
(9, 24, '10 BDT', '2022-10-19'),
(10, 36, 'Motobike', '2022-10-19'),
(11, 36, 'Car', '2022-10-19'),
(12, 13, 'Mobile', '2022-10-20'),
(13, 24, '100 BDT', '2022-10-21'),
(14, 24, '100 BDT', '2022-10-21'),
(15, 24, '100 BDT', '2022-10-21'),
(16, 24, '100 BDT', '2022-10-21'),
(17, 24, '100 BDT', '2022-10-21'),
(18, 24, '10 BDT', '2022-10-21'),
(19, 24, '1000 BDT', '2022-10-21'),
(20, 24, '10 BDT', '2022-10-21'),
(21, 24, 'Car', '2022-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `transition_img`
--

CREATE TABLE `transition_img` (
  `transition_id` int(40) NOT NULL,
  `transition_pic` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `package_id` int(11) NOT NULL,
  `transaction_name` varchar(255) NOT NULL,
  `transaction_price` varchar(55) NOT NULL,
  `transaction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transition_img`
--

INSERT INTO `transition_img` (`transition_id`, `transition_pic`, `user_phone`, `package_id`, `transaction_name`, `transaction_price`, `transaction_date`) VALUES
(4, 'images (12).png', 'alinaali22@gmail.com', 0, '', '', '0000-00-00'),
(16, ' 1664803594lhc.jpg', '03027750114', 0, '', '', '0000-00-00'),
(17, ' 1664804796scaled_7944a529-2fdc-4a3a-9ff8-3930190acd414817471655854735957.jpg', '03027750114', 1, 'crust', '100', '2022-09-19'),
(18, ' 1664804862scaled_image_picker171182563610241433.jpg', '03027750114', 0, '', '', '0000-00-00'),
(19, ' 1664805533scaled_21480f50-8b96-46e6-9ebe-6c1ce1e0a47d6728117014495391096.jpg', '03027750114', 2, 'mental', '250', '2022-09-11'),
(20, ' 1664812577scaled_image_picker7971376556216418503.jpg', '+923157524000', 0, '', '', '0000-00-00'),
(21, ' 1664814285scaled_043b786a-e6ac-4831-8bec-9a4eec0e71a31789823586082625414.jpg', '+923157775055', 0, '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `user_id` int(40) NOT NULL,
  `u_fname` varchar(255) NOT NULL,
  `u_phone` varchar(255) NOT NULL,
  `u_dob` varchar(255) NOT NULL,
  `u_pass` varchar(255) NOT NULL,
  `u_pic` varchar(255) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_start_date` date NOT NULL,
  `u_referal` int(11) NOT NULL,
  `u_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`user_id`, `u_fname`, `u_phone`, `u_dob`, `u_pass`, `u_pic`, `package_id`, `package_start_date`, `u_referal`, `u_status`) VALUES
(2, 'admin', '03001234567', '23-12-1999', 'admin123', '', 0, '0000-00-00', 0, 'admin'),
(7, 'userr', '78972807048', '3234-03-04', '123', '', 0, '0000-00-00', 0, 'basic'),
(11, 'user', '09467876878', '6767-09-09', '1234', '', 0, '0000-00-00', 0, 'new'),
(12, 'user', '03865875498', '2000-07-06', '123', '', 0, '0000-00-00', 0, 'basic'),
(13, 'text', '01717253234', '1991-10-16', 'KLcrp920$', '', 0, '0000-00-00', 0, 'new'),
(14, 'testname', '03010000000', '2002/02/22', '12345678', 'download.jpg', 0, '0000-00-00', 0, 'new'),
(19, 'testname', '0301123456798', '2002/02/22', '12345678', '', 0, '0000-00-00', 0, 'new'),
(20, 'testname', '0301123456798', '2002/02/22', '12345678', '', 0, '0000-00-00', 0, 'new'),
(23, 'testname', '03016666666', '2002/02/22', '12345678', '', 0, '0000-00-00', 0, 'new'),
(24, 'Saqib', '03027750114', '12-03-2002', '12345678', 'scaled_1fefe5af-7253-4278-b79e-d5eb26db68581347965070011099367.jpg', 1, '2022-10-03', 0, 'admin'),
(26, 'testname', '03016666669', '2002/02/22', '123456', '', 1, '2022-10-02', 0, 'Mantle'),
(28, 'Atiq Ramzan', '03346452312', '1991-10-05 00:00:00.000', 'asdf1234', '', 0, '0000-00-00', 0, 'new'),
(31, 'testname', '03126600635', '2002/02/22', '12345678', '', 0, '0000-00-00', 12, 'new'),
(32, 'Saqib Jutt', '+923215589122', '2022-10-03 00:00:00.000', '12345678', 'scaled_ae9c8d62-dd45-4d51-9929-f6e6398a59175713869648216113241.jpg', 0, '0000-00-00', 0, 'new'),
(33, 'Atiq Ramzan', '+923157524000', '1991-10-05 00:00:00.000', 'Mano6266/*', 'scaled_image_picker8919101047980523471.jpg', 0, '2022-10-03', 0, 'new'),
(34, 'Naveed', '', '1998-10-19 00:00:00.000', 'sonamundas1', 'scaled_image_picker7631210840903751377.jpg', 0, '2022-10-03', 0, 'Outer core (3a) '),
(36, 'Naveed Anjum', '+923157775055', '2000-10-25 00:00:00.000', '12345678', '', 0, '0000-00-00', 0, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `user_topup`
--

CREATE TABLE `user_topup` (
  `topup_id` int(55) NOT NULL,
  `u_id` int(55) NOT NULL,
  `banktype` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_topup`
--

INSERT INTO `user_topup` (`topup_id`, `u_id`, `banktype`, `account_number`, `trans_id`, `date_added`) VALUES
(1, 24, 'USDT', 'usdt type', '19198172782', '2022-10-19'),
(2, 24, 'mobile', '01700582221', '19198172782', '2022-10-19'),
(3, 24, 'mobile', '01700582221', '19198172782', '2022-10-19'),
(4, 24, 'mobile', '01700582221', '19198172782', '2022-10-19'),
(5, 24, 'mobile', '01775304041', '188181818', '2022-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `wallet_id` int(40) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `wallet_amount` varchar(500) NOT NULL,
  `v_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_wallet`
--

INSERT INTO `user_wallet` (`wallet_id`, `phone`, `wallet_amount`, `v_id`) VALUES
(8, 'user@gmail.com', '40', '1'),
(9, 'alinaali22@gmail.com', '50', '2'),
(10, 'alinaali22@gmail.com', '50', '3'),
(11, 'user@gmail.com', '40', '2'),
(12, 'user@gmail.com', '40', '3'),
(16, 'user123@gmail.com', '20', '1'),
(17, 'user123@gmail.com', '20', '3'),
(18, '03865875498', '20', '1'),
(19, '03865875498', '20', '3'),
(20, '03016666669', '26', ''),
(21, '03016666669', '26', ''),
(22, '03027750114', '20', ''),
(23, '03016666669', '26', ''),
(24, '03016666669', '26', ''),
(25, '03016666669', '26', ''),
(26, '03027750114', '26', ''),
(27, '03027750114', '26', ''),
(28, '03027750114', '26', ''),
(29, '03027750114', '20', ''),
(30, '03027750114', '20', ''),
(31, '03027750114', '26', ''),
(32, '+923157524000', '20', ''),
(33, '+923157775055', '20', ''),
(34, '+923157775055', '20', ''),
(35, '03027750114', '0.5', ''),
(36, '03027750114', '0.5', ''),
(37, '03027750114', '0.5', ''),
(38, '03027750114', '0.5', ''),
(39, '03027750114', '0.5', ''),
(40, '03027750114', '0.5', ''),
(41, '03027750114', '0.5', ''),
(42, '03027750114', '5', ''),
(43, '03027750114', '5', ''),
(44, '03027750114', '5', ''),
(45, '03027750114', '5', ''),
(46, '03027750114', '10', ''),
(47, '03027750114', '0.5', ''),
(48, '03027750114', '100', ''),
(49, '03027750114', '100', ''),
(50, '03027750114', '100', ''),
(51, '03027750114', '100', ''),
(52, '03027750114', '100', ''),
(53, '03027750114', '10', ''),
(54, '03027750114', '1000', ''),
(55, '03027750114', '10', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_withdraw`
--

CREATE TABLE `user_withdraw` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `banktype` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_withdraw`
--

INSERT INTO `user_withdraw` (`id`, `u_id`, `amount`, `banktype`, `account_number`, `status`) VALUES
(1, 16, 122, 'jazzcash', '2365998547', 'pending'),
(2, 24, 200, 'usdt', '61364161565', ''),
(3, 24, 200, 'usdt', '61364161565', 'pending'),
(4, 0, 0, '', '', ''),
(5, 24, 100, 'mobile', '+923027750114', 'pending'),
(6, 13, 500, 'mobile', '0100100101', 'pending'),
(7, 24, 3000, 'mobile', '01775304041', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(40) NOT NULL,
  `videos_title` varchar(500) NOT NULL,
  `videos_url` varchar(1000) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'unseen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `videos_title`, `videos_url`, `status`) VALUES
(3, 'MySQL Introduction Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=KlWOr2RwqM4', 'unseen'),
(4, 'MySQL Create Table Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=tN3B0F24fJs', 'unseen'),
(5, 'JavaScript Events Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=R7mu7nKFc7w', 'unseen'),
(6, 'PHP Data Types Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=oXX2SJKijig', 'unseen'),
(7, 'CSS Media Queries Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=vBOMyYP9BDU', 'unseen'),
(8, 'CSS Html Basic Layout Design Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=2a5fSQxG5b4', 'unseen'),
(11, 'testing', 'https://www.prenero.com/', 'unseen');

-- --------------------------------------------------------

--
-- Table structure for table `watch_videos`
--

CREATE TABLE `watch_videos` (
  `wv_id` int(40) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `video_id` varchar(100) NOT NULL,
  `video_title` varchar(100) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `package_id` int(20) NOT NULL,
  `w_status` text NOT NULL,
  `watch_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watch_videos`
--

INSERT INTO `watch_videos` (`wv_id`, `user_phone`, `video_id`, `video_title`, `video_url`, `package_id`, `w_status`, `watch_date`) VALUES
(145, '03027750114', '1', 'Tom und Jerry auf Deutschhh', 'https://www.youtube.com/watch?v=64DUWAFw6uM', 2, 'seen', '2022-10-19'),
(146, '03027750114', '3', 'MySQL Introduction Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=KlWOr2RwqM4', 2, 'seen', '2022-10-19'),
(147, '03027750114', '4', 'MySQL Create Table Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=tN3B0F24fJs', 2, 'seen', '2022-10-19'),
(148, '03027750114', '5', 'JavaScript Events Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=R7mu7nKFc7w', 2, 'unseen', '2022-10-19'),
(149, '03027750114', '6', 'PHP Data Types Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=oXX2SJKijig', 2, 'unseen', '2022-10-19'),
(150, '03027750114', '7', 'CSS Media Queries Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=vBOMyYP9BDU', 2, 'seen', '2022-10-19'),
(151, '03027750114', '8', 'CSS Html Basic Layout Design Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=2a5fSQxG5b4', 2, 'unseen', '2022-10-19'),
(152, '03027750114', '1', 'Tom und Jerry auf Deutschhh', 'https://www.youtube.com/watch?v=64DUWAFw6uM', 0, 'unseen', '2022-10-19'),
(153, '03027750114', '3', 'MySQL Introduction Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=KlWOr2RwqM4', 0, 'unseen', '2022-10-19'),
(154, '03027750114', '4', 'MySQL Create Table Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=tN3B0F24fJs', 0, 'unseen', '2022-10-19'),
(155, '03027750114', '5', 'JavaScript Events Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=R7mu7nKFc7w', 0, 'unseen', '2022-10-19'),
(156, '03027750114', '6', 'PHP Data Types Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=oXX2SJKijig', 0, 'unseen', '2022-10-19'),
(157, '03027750114', '7', 'CSS Media Queries Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=vBOMyYP9BDU', 0, 'unseen', '2022-10-19'),
(158, '03027750114', '8', 'CSS Html Basic Layout Design Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=2a5fSQxG5b4', 0, 'unseen', '2022-10-19'),
(159, '03027750114', '1', 'Tom und Jerry auf Deutschhh', 'https://www.youtube.com/watch?v=64DUWAFw6uM', 6, 'unseen', '2022-10-19'),
(160, '03027750114', '3', 'MySQL Introduction Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=KlWOr2RwqM4', 6, 'unseen', '2022-10-19'),
(161, '03027750114', '4', 'MySQL Create Table Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=tN3B0F24fJs', 6, 'unseen', '2022-10-19'),
(162, '03027750114', '5', 'JavaScript Events Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=R7mu7nKFc7w', 6, 'unseen', '2022-10-19'),
(163, '03027750114', '6', 'PHP Data Types Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=oXX2SJKijig', 6, 'unseen', '2022-10-19'),
(164, '03027750114', '7', 'CSS Media Queries Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=vBOMyYP9BDU', 6, 'unseen', '2022-10-19'),
(165, '03027750114', '8', 'CSS Html Basic Layout Design Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=2a5fSQxG5b4', 6, 'unseen', '2022-10-19'),
(166, '03027750114', '1', 'Tom und Jerry auf Deutschhh', 'https://www.youtube.com/watch?v=64DUWAFw6uM', 2, 'unseen', '2022-10-21'),
(167, '03027750114', '3', 'MySQL Introduction Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=KlWOr2RwqM4', 2, 'unseen', '2022-10-21'),
(168, '03027750114', '4', 'MySQL Create Table Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=tN3B0F24fJs', 2, 'unseen', '2022-10-21'),
(169, '03027750114', '5', 'JavaScript Events Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=R7mu7nKFc7w', 2, 'unseen', '2022-10-21'),
(170, '03027750114', '6', 'PHP Data Types Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=oXX2SJKijig', 2, 'unseen', '2022-10-21'),
(171, '03027750114', '7', 'CSS Media Queries Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=vBOMyYP9BDU', 2, 'unseen', '2022-10-21'),
(172, '03027750114', '8', 'CSS Html Basic Layout Design Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=2a5fSQxG5b4', 2, 'unseen', '2022-10-21'),
(173, '03027750114', '1', 'Tom und Jerry auf Deutschhh', 'https://www.youtube.com/watch?v=64DUWAFw6uM', 6, 'unseen', '2022-10-21'),
(174, '03027750114', '3', 'MySQL Introduction Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=KlWOr2RwqM4', 6, 'seen', '2022-10-21'),
(175, '03027750114', '4', 'MySQL Create Table Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=tN3B0F24fJs', 6, 'unseen', '2022-10-21'),
(176, '03027750114', '5', 'JavaScript Events Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=R7mu7nKFc7w', 6, 'unseen', '2022-10-21'),
(177, '03027750114', '6', 'PHP Data Types Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=oXX2SJKijig', 6, 'unseen', '2022-10-21'),
(178, '03027750114', '7', 'CSS Media Queries Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=vBOMyYP9BDU', 6, 'unseen', '2022-10-21'),
(179, '03027750114', '8', 'CSS Html Basic Layout Design Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=2a5fSQxG5b4', 6, 'unseen', '2022-10-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_packages`
--
ALTER TABLE `active_packages`
  ADD PRIMARY KEY (`active_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `package_history`
--
ALTER TABLE `package_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `spin_wheel`
--
ALTER TABLE `spin_wheel`
  ADD PRIMARY KEY (`spin_id`);

--
-- Indexes for table `transition_img`
--
ALTER TABLE `transition_img`
  ADD PRIMARY KEY (`transition_id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_topup`
--
ALTER TABLE `user_topup`
  ADD PRIMARY KEY (`topup_id`);

--
-- Indexes for table `user_wallet`
--
ALTER TABLE `user_wallet`
  ADD PRIMARY KEY (`wallet_id`);

--
-- Indexes for table `user_withdraw`
--
ALTER TABLE `user_withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `watch_videos`
--
ALTER TABLE `watch_videos`
  ADD PRIMARY KEY (`wv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_packages`
--
ALTER TABLE `active_packages`
  MODIFY `active_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `package_history`
--
ALTER TABLE `package_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_wheel`
--
ALTER TABLE `spin_wheel`
  MODIFY `spin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transition_img`
--
ALTER TABLE `transition_img`
  MODIFY `transition_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `user_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_topup`
--
ALTER TABLE `user_topup`
  MODIFY `topup_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `wallet_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_withdraw`
--
ALTER TABLE `user_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `watch_videos`
--
ALTER TABLE `watch_videos`
  MODIFY `wv_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
