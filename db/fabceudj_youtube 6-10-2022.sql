-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 10:10 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

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
(1, 'Crust', 'Task: Every day need to watch 5 videos, and after 2 days will get 130 BDT', '2 days ', '100 BDT'),
(2, 'Mantle', 'Task: Every day need to watch 5 videos, and after 5 days will get 300 BDT', '5 days ', '250 BDT'),
(3, 'Outer core (3a) ', 'Task: Every day need to watch 5 videos, and after 7 days will get 650 BDT', '7 days ', '500 BDT'),
(4, 'Inner core (3b) ', 'Task: Every day need to watch 5 videos, and after 7 days will get 1,300 BDT', '10 days ', '1000 BDT'),
(5, 'Lithosphere', 'Task: Every day need to watch 5 videos, and after 30 days will get 4,000 BDT', '30 days ', '3000 BDT'),
(6, 'Asthenosphere ', 'Task: Every day need to watch 5 videos, and after 45 days will get 7,000 BDT', '45 days ', '5000 BDT'),
(7, 'Mesosphere', 'Task: Every day need to watch 5 videos, and after 60 days will get 13,000 BDT', '60 days ', '10000 BDT');

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
(11, ' download.jpg', '03016666669', 0, '', '', '0000-00-00'),
(12, ' download.jpg', '03016666669', 0, '', '', '0000-00-00'),
(13, ' 1664716322download.jpg', '03016666669', 0, '', '', '0000-00-00'),
(14, ' 1664720128download.jpg', '03016666669', 1, 'crust', '100', '2022-09-28'),
(15, ' 1664720514download.jpg', '03016666669', 1, 'crust', '100', '2022-09-18'),
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
(24, 'Saqib', '03027750114', '12-03-2002', '12345678', 'scaled_1fefe5af-7253-4278-b79e-d5eb26db68581347965070011099367.jpg', 1, '2022-10-03', 0, 'new'),
(26, 'testname', '03016666669', '2002/02/22', '123456', '', 1, '2022-10-02', 0, 'new'),
(28, 'Atiq Ramzan', '03346452312', '1991-10-05 00:00:00.000', 'asdf1234', '', 0, '0000-00-00', 0, 'new'),
(31, 'testname', '03126600635', '2002/02/22', '12345678', '', 0, '0000-00-00', 12, 'new'),
(32, 'Saqib Jutt', '+923215589122', '2022-10-03 00:00:00.000', '12345678', 'scaled_ae9c8d62-dd45-4d51-9929-f6e6398a59175713869648216113241.jpg', 0, '0000-00-00', 0, 'new'),
(33, 'Atiq Ramzan', '+923157524000', '1991-10-05 00:00:00.000', 'Mano6266/*', 'scaled_image_picker8919101047980523471.jpg', 0, '2022-10-03', 0, 'new'),
(34, 'Naveed', '+923157775055', '1998-10-19 00:00:00.000', 'sonamundas1', 'scaled_image_picker7631210840903751377.jpg', 0, '2022-10-03', 0, 'new');

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
(34, '+923157775055', '20', '');

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
(5, 24, 100, 'mobile', '+923027750114', 'pending');

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
(1, 'Tom und Jerry auf Deutschhh', 'https://www.youtube.com/watch?v=64DUWAFw6uM', 'unseen'),
(3, 'MySQL Introduction Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=KlWOr2RwqM4', 'unseen'),
(4, 'MySQL Create Table Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=tN3B0F24fJs', 'unseen'),
(5, 'JavaScript Events Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=R7mu7nKFc7w', 'unseen'),
(6, 'PHP Data Types Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=oXX2SJKijig', 'unseen'),
(7, 'CSS Media Queries Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=vBOMyYP9BDU', 'unseen'),
(8, 'CSS Html Basic Layout Design Tutorial in Hindi / Urdu', 'https://www.youtube.com/watch?v=2a5fSQxG5b4', 'unseen');

-- --------------------------------------------------------

--
-- Table structure for table `watch_videos`
--

CREATE TABLE `watch_videos` (
  `wv_id` int(40) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `video_id` varchar(100) NOT NULL,
  `watch_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `watch_videos`
--

INSERT INTO `watch_videos` (`wv_id`, `user_phone`, `video_id`, `watch_date`) VALUES
(7, 'user@gmail.com', '1', '0000-00-00'),
(8, 'alinaali22@gmail.com', '2', '0000-00-00'),
(9, 'alinaali22@gmail.com', '3', '0000-00-00'),
(10, 'user@gmail.com', '2', '0000-00-00'),
(11, 'user@gmail.com', '3', '0000-00-00'),
(13, 'user123@gmail.com', '1', '0000-00-00'),
(14, 'user123@gmail.com', '3', '0000-00-00'),
(15, '03865875498', '1', '0000-00-00'),
(16, '03865875498', '3', '0000-00-00');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `transition_img`
--
ALTER TABLE `transition_img`
  MODIFY `transition_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `user_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `wallet_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user_withdraw`
--
ALTER TABLE `user_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `watch_videos`
--
ALTER TABLE `watch_videos`
  MODIFY `wv_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
