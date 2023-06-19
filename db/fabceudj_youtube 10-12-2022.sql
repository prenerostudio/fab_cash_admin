-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2022 at 07:12 AM
-- Server version: 10.3.37-MariaDB-log-cll-lve
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `active_packages`
--

INSERT INTO `active_packages` (`active_id`, `u_id`, `package_id`, `package_name`, `package_days`, `active_date`) VALUES
(1, 100000033, 3, 'name', 7, '0000-00-00'),
(2, 100000024, 2, 'Mantle', 5, '2022-10-18'),
(3, 100000024, 6, 'Asthenosphere ', 45, '2022-10-18');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spin_wheel`
--

CREATE TABLE `spin_wheel` (
  `spin_id` int(11) NOT NULL,
  `u_id` int(20) NOT NULL,
  `reward` varchar(50) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spin_wheel`
--

INSERT INTO `spin_wheel` (`spin_id`, `u_id`, `reward`, `date_added`) VALUES
(4, 100000024, 'Bike1', '2012-12-12'),
(7, 100000024, 'Bike1', '2012-12-11'),
(8, 100000024, 'Motobike', '0000-00-00'),
(9, 100000024, '10 BDT', '2022-10-19'),
(10, 100000036, 'Motobike', '2022-10-19'),
(11, 100000036, 'Car', '2022-10-19'),
(12, 100000013, 'Mobile', '2022-10-20'),
(13, 100000024, '100 BDT', '2022-10-21'),
(14, 100000024, '100 BDT', '2022-10-21'),
(15, 100000024, '100 BDT', '2022-10-21'),
(16, 100000024, '100 BDT', '2022-10-21'),
(17, 100000024, '100 BDT', '2022-10-21'),
(18, 100000024, '10 BDT', '2022-10-21'),
(19, 100000024, '1000 BDT', '2022-10-21'),
(20, 100000024, '10 BDT', '2022-10-21'),
(21, 100000024, 'Car', '2022-10-21'),
(22, 100000037, '10 BDT', '2022-10-26'),
(23, 100000037, '10 BDT', '2022-10-26'),
(24, 100000037, '1000 BDT', '2022-11-03'),
(25, 100000037, '10 BDT', '2022-11-03'),
(26, 100000037, 'Car', '2022-11-03'),
(27, 100000037, '10 BDT', '2022-11-03'),
(28, 100000037, 'Car', '2022-11-06'),
(29, 100000037, 'Car', '2022-11-06'),
(30, 100000037, '100 BDT', '2022-11-06'),
(31, 100000037, '100 BDT', '2022-11-06'),
(32, 100000037, '100 BDT', '2022-11-06'),
(33, 100000037, 'Motobike', '2022-11-06'),
(34, 100000037, '100 BDT', '2022-11-06'),
(35, 100000037, 'Motobike', '2022-11-06'),
(36, 100000037, 'Mobile', '2022-11-06'),
(37, 100000037, '100 BDT', '2022-11-06'),
(38, 100000037, 'Motobike', '2022-11-06'),
(39, 100000037, '100 BDT', '2022-11-06'),
(40, 100000037, '100 BDT', '2022-11-06'),
(41, 100000037, 'Motobike', '2022-11-06'),
(42, 100000037, 'Mobile', '2022-11-06'),
(43, 100000037, 'Car', '2022-11-06'),
(44, 100000037, '1000 BDT', '2022-11-06'),
(45, 100000037, 'Mobile', '2022-11-10'),
(46, 100000037, 'Motobike', '2022-11-11'),
(47, 100000037, '1000 BDT', '2022-11-11'),
(48, 100000037, 'Mobile', '2022-11-15'),
(49, 100000037, '1000 BDT', '2022-11-15'),
(50, 100000037, '1000 BDT', '2022-11-15'),
(51, 100000037, '100 BDT', '2022-11-15'),
(52, 100000037, 'Mobile', '2022-11-15'),
(53, 100000037, 'Car', '2022-11-15'),
(54, 100000037, 'Motobike', '2022-11-15'),
(55, 100000037, '100 BDT', '2022-11-15'),
(56, 37, 'Mobile', '2022-11-15'),
(57, 37, '10 BDT', '2022-11-15'),
(58, 37, '100 BDT', '2022-11-15'),
(59, 37, 'Motobike', '2022-11-15'),
(60, 37, 'Mobile', '2022-11-15'),
(61, 37, '1000 BDT', '2022-11-15'),
(62, 37, 'Motobike', '2022-11-15'),
(63, 37, 'Mobile', '2022-11-15'),
(64, 37, 'Mobile', '2022-11-15'),
(65, 37, '10 BDT', '2022-11-15'),
(66, 37, '100 BDT', '2022-11-15'),
(67, 37, 'Car', '2022-11-15'),
(68, 37, 'Mobile', '2022-11-15'),
(69, 37, '100 BDT', '2022-11-15'),
(70, 37, '100 BDT', '2022-11-15'),
(71, 37, '100 BDT', '2022-11-15'),
(72, 37, '100 BDT', '2022-11-15'),
(73, 37, '100 BDT', '2022-11-15'),
(74, 37, '100 BDT', '2022-11-15'),
(75, 48, '10 BDT', '2022-11-16'),
(76, 48, 'Motobike', '2022-11-16'),
(77, 48, '10 BDT', '2022-11-16'),
(78, 48, 'Car', '2022-11-16'),
(79, 47, '100 BDT', '2022-11-22'),
(80, 47, 'Motobike', '2022-11-22'),
(81, 47, '1000 BDT', '2022-11-22'),
(82, 47, 'Motobike', '2022-11-22'),
(83, 47, '600 BDT', '2022-11-22'),
(84, 47, '650 BDT', '2022-11-22'),
(85, 47, '200 BDT', '2022-11-22'),
(86, 48, '1000 BDT', '2022-11-23'),
(87, 48, 'Motobike', '2022-11-23'),
(88, 48, '100 BDT', '2022-11-23'),
(89, 48, 'Motobike', '2022-11-23'),
(90, 48, 'Car', '2022-11-23'),
(91, 48, 'Motobike', '2022-11-23'),
(92, 48, '100 BDT', '2022-11-23'),
(93, 48, '1000 BDT', '2022-11-23'),
(94, 48, 'Motobike', '2022-11-23'),
(95, 48, '1000 BDT', '2022-11-23'),
(96, 48, '1000 BDT', '2022-11-23'),
(97, 48, 'Mobile', '2022-11-23'),
(98, 48, '10 BDT', '2022-11-23'),
(99, 48, '100 BDT', '2022-11-23'),
(100, 48, '10 BDT', '2022-11-23'),
(101, 48, 'Car', '2022-11-23'),
(102, 48, '1000 BDT', '2022-11-23'),
(103, 48, '100 BDT', '2022-11-23'),
(104, 48, '100 BDT', '2022-11-23'),
(105, 48, '1000 BDT', '2022-11-23'),
(106, 48, '1000 BDT', '2022-11-23'),
(107, 48, '100 BDT', '2022-11-23'),
(108, 48, '10 BDT', '2022-11-23'),
(109, 48, '1000 BDT', '2022-11-23'),
(110, 48, '1000 BDT', '2022-11-23'),
(111, 48, 'Car', '2022-11-23'),
(112, 48, 'Mobile', '2022-11-23'),
(113, 48, '100 BDT', '2022-11-23'),
(114, 48, '100 BDT', '2022-11-23'),
(115, 48, '1000 BDT', '2022-11-23'),
(116, 48, 'Motobike', '2022-11-23'),
(117, 48, '1000 BDT', '2022-11-23'),
(118, 48, '1000 BDT', '2022-11-23'),
(119, 48, 'Mobile', '2022-11-23'),
(120, 48, '100 BDT', '2022-11-23'),
(121, 48, '10 BDT', '2022-11-23'),
(122, 48, '100 BDT', '2022-11-23'),
(123, 48, 'Car', '2022-11-23'),
(124, 48, 'Mobile', '2022-11-23'),
(125, 48, '100 BDT', '2022-11-23'),
(126, 48, '1000 BDT', '2022-11-23'),
(127, 48, 'Motobike', '2022-11-23'),
(128, 48, 'Mobile', '2022-11-23'),
(129, 48, 'Mobile', '2022-11-23'),
(130, 48, 'Car', '2022-11-23'),
(131, 48, 'Car', '2022-11-23'),
(132, 48, 'Motobike', '2022-11-23'),
(133, 48, 'Mobile', '2022-11-23'),
(134, 48, '10 BDT', '2022-11-23'),
(135, 48, '10 BDT', '2022-11-23'),
(136, 48, '10 BDT', '2022-11-23'),
(137, 48, '1000 BDT', '2022-11-23'),
(138, 24, '100 BDT', '2022-11-25'),
(139, 24, 'Mobile', '2022-11-25'),
(140, 24, 'Mobile', '2022-11-25'),
(141, 24, '10 BDT', '2022-11-25'),
(142, 24, 'Motobike', '2022-11-25'),
(143, 24, 'Mobile', '2022-11-25'),
(144, 24, '350 BDT', '2022-11-25'),
(145, 24, '200 BDT', '2022-11-25'),
(146, 48, '650 BDT', '2022-11-25'),
(147, 24, 'Thank You', '2022-11-25'),
(148, 24, 'Thank You', '2022-11-25'),
(149, 24, 'Thank You', '2022-11-25'),
(150, 24, 'Thank You', '2022-11-25'),
(151, 24, 'Thank You', '2022-11-25'),
(152, 24, 'Thank You', '2022-11-25'),
(153, 24, 'Thank You', '2022-11-25'),
(154, 24, 'Thank You', '2022-11-25'),
(155, 24, 'Thank You', '2022-11-25'),
(156, 24, 'Thank You', '2022-11-25'),
(157, 24, 'Thank You', '2022-11-25'),
(158, 24, 'Thank You', '2022-11-25'),
(159, 24, 'Thank You', '2022-11-25'),
(160, 24, 'Thank You', '2022-11-25'),
(161, 24, 'Thank You', '2022-11-25'),
(162, 24, '2 BDT', '2022-11-25'),
(163, 24, '2 BDT', '2022-11-25'),
(164, 24, '2 BDT', '2022-11-25'),
(165, 24, 'Thank You', '2022-11-25'),
(166, 24, 'Thank You', '2022-11-25'),
(167, 24, 'Thank You', '2022-11-25'),
(168, 24, 'Thank You', '2022-11-25'),
(169, 24, 'Thank You', '2022-11-25'),
(170, 24, 'Thank You', '2022-11-25'),
(171, 24, 'Thank You', '2022-11-25'),
(172, 24, 'Thank You', '2022-11-25'),
(173, 24, 'Thank You', '2022-11-25'),
(174, 24, 'Thank You', '2022-11-25'),
(175, 24, 'Thank You', '2022-11-25'),
(176, 24, '2 BDT', '2022-11-25'),
(177, 48, '350 BDT', '2022-11-26'),
(178, 48, '450 BDT', '2022-11-27'),
(179, 100000048, 'Thank You', '2022-11-29'),
(180, 100000048, 'Thank You', '2022-11-29'),
(181, 100000048, 'Thank You', '2022-11-29'),
(182, 100000051, 'Thank You', '2022-11-30'),
(183, 100000052, '2 BDT', '2022-12-03'),
(184, 100000024, '10 BDT', '2022-12-03'),
(185, 100000053, '2 BDT', '2022-12-04'),
(186, 100000053, '2 BDT', '2022-12-04'),
(187, 100000053, '2 BDT', '2022-12-04'),
(188, 100000053, '2 BDT', '2022-12-04'),
(189, 100000053, '2 BDT', '2022-12-04'),
(190, 100000053, '2 BDT', '2022-12-04'),
(191, 100000053, '2 BDT', '2022-12-04'),
(192, 100000053, '2 BDT', '2022-12-04'),
(193, 100000053, 'Thank You', '2022-12-04'),
(194, 100000053, 'Thank You', '2022-12-04'),
(195, 100000053, 'Thank You', '2022-12-04'),
(196, 100000053, '2 BDT', '2022-12-04'),
(197, 100000053, '2 BDT', '2022-12-04'),
(198, 100000053, '2 BDT', '2022-12-04'),
(199, 100000053, '2 BDT', '2022-12-04'),
(200, 100000053, '2 BDT', '2022-12-04'),
(201, 100000053, '2 BDT', '2022-12-04'),
(202, 100000053, '2 BDT', '2022-12-04'),
(203, 100000053, 'Thank You', '2022-12-04'),
(204, 100000053, 'Thank You', '2022-12-04'),
(205, 100000053, 'Thank You', '2022-12-04'),
(206, 100000053, '2 BDT', '2022-12-04'),
(207, 100000053, 'Thank You', '2022-12-04'),
(208, 100000053, '2 BDT', '2022-12-04'),
(209, 100000053, '2 BDT', '2022-12-04'),
(210, 100000053, 'Thank You', '2022-12-04'),
(211, 100000053, 'Thank You', '2022-12-04'),
(212, 100000053, '2 BDT', '2022-12-04'),
(213, 100000053, '2 BDT', '2022-12-04'),
(214, 100000053, '2 BDT', '2022-12-04'),
(215, 100000053, 'Thank You', '2022-12-04'),
(216, 100000053, 'Thank You', '2022-12-04'),
(217, 100000053, 'Thank You', '2022-12-04'),
(218, 100000053, 'Thank You', '2022-12-04'),
(219, 100000053, 'Thank You', '2022-12-04'),
(220, 100000053, '2 BDT', '2022-12-04'),
(221, 100000053, 'Thank You', '2022-12-04'),
(222, 100000053, 'Thank You', '2022-12-04'),
(223, 100000053, '2 BDT', '2022-12-04'),
(224, 100000053, 'Thank You', '2022-12-04'),
(225, 100000053, '2 BDT', '2022-12-04'),
(226, 100000053, 'Thank You', '2022-12-04'),
(227, 100000053, '2 BDT', '2022-12-04'),
(228, 10000053, '2', '2022-12-04'),
(229, 100000053, '2 BDT', '2022-12-04'),
(230, 100000053, '2 BDT', '2022-12-04'),
(231, 100000053, 'Thank You', '2022-12-04'),
(232, 100000053, 'Thank You', '2022-12-04'),
(233, 100000053, '2 BDT', '2022-12-04'),
(234, 100000053, 'Thank You', '2022-12-04'),
(235, 100000053, '2 BDT', '2022-12-04'),
(236, 100000053, 'Thank You', '2022-12-04'),
(237, 100000053, '2 BDT', '2022-12-04'),
(238, 122, '2', '2022-12-05'),
(239, 122, '2', '2022-12-05'),
(240, 122, '2', '2022-12-05'),
(241, 122, '2', '2022-12-05'),
(242, 122, '2', '2022-12-05'),
(243, 100000053, 'Thank You', '2022-12-05'),
(244, 100000053, 'Thank You', '2022-12-05'),
(245, 100000053, 'Thank You', '2022-12-05'),
(246, 100000053, 'Thank You', '2022-12-05'),
(247, 100000053, 'Thank You', '2022-12-05'),
(248, 100000053, 'Thank You', '2022-12-05'),
(249, 100000053, 'Thank You', '2022-12-05'),
(250, 100000052, '2', '2022-12-05'),
(251, 100000052, '2', '2022-12-05'),
(252, 100000052, '2', '2022-12-05');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transition_img`
--

INSERT INTO `transition_img` (`transition_id`, `transition_pic`, `user_phone`, `package_id`, `transaction_name`, `transaction_price`, `transaction_date`) VALUES
(4, 'images (12).png', 'alinaali22@gmail.com', 0, '', '', '0000-00-00'),
(16, ' 1664803594lhc.jpg', '+923027750114', 0, '', '', '0000-00-00'),
(17, ' 1664804796scaled_7944a529-2fdc-4a3a-9ff8-3930190acd414817471655854735957.jpg', '+923027750114', 1, 'crust', '100', '2022-09-19'),
(18, ' 1664804862scaled_image_picker171182563610241433.jpg', '+923027750114', 0, '', '', '0000-00-00'),
(19, ' 1664805533scaled_21480f50-8b96-46e6-9ebe-6c1ce1e0a47d6728117014495391096.jpg', '+923027750114', 2, 'mental', '250', '2022-09-11'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`user_id`, `u_fname`, `u_phone`, `u_dob`, `u_pass`, `u_pic`, `package_id`, `package_start_date`, `u_referal`, `u_status`) VALUES
(10000002, 'admin', '03001234567', '23-12-1999', 'admin123', '', 0, '0000-00-00', 0, 'admin'),
(10000007, 'userr', '+88972807048', '3234-03-04', '123', '', 0, '0000-00-00', 0, 'basic'),
(100000011, 'user', '+99467876878', '6767-09-09', '1234', '', 0, '0000-00-00', 0, 'new'),
(100000012, 'user', '+9265875498', '2000-07-06', '123', '', 0, '0000-00-00', 0, 'basic'),
(100000013, 'text', '+9217172532', '1991-10-16', 'KLcrp920$', '', 0, '0000-00-00', 0, 'new'),
(100000014, 'testname', '+923010000000', '2002/02/22', '12345678', 'download.jpg', 0, '0000-00-00', 0, 'new'),
(100000019, 'testname', '+92301123456798', '2002/02/22', '12345678', '', 0, '0000-00-00', 0, 'new'),
(100000020, 'testname', '+92301123456798', '2002/02/22', '12345678', '', 0, '0000-00-00', 0, 'new'),
(100000023, 'testname', '+923016666666', '2002/02/22', '12345678', '', 0, '0000-00-00', 0, 'new'),
(100000024, 'Saqib', '+923027750114', '12-03-2002', '12345678', 'scaled_1fefe5af-7253-4278-b79e-d5eb26db68581347965070011099367.jpg', 1, '2022-10-03', 0, 'admin'),
(100000026, 'testname', '+923016666669', '2002/02/22', '123456', '', 1, '2022-10-02', 0, 'Mantle'),
(100000031, 'testname', '+923126600635', '2002/02/22', '12345678', '', 0, '0000-00-00', 12, 'new'),
(100000034, 'Naveed', '+923051656877', '1998-10-19 00:00:00.000', 'sonamundas1', 'scaled_image_picker7631210840903751377.jpg', 0, '2022-10-03', 0, 'Outer core (3a) '),
(100000036, 'Naveed Anjum', '+923157775055', '2000-10-25 00:00:00.000', '12345678', '', 0, '0000-00-00', 0, 'new'),
(100000037, 'mithi_19', '+8801743911500', '2001-02-14 00:00:00.000', '33445566', 'scaled_image_picker4950047404056271209.jpg', 0, '0000-00-00', 0, 'new'),
(100000047, 'testing ', '+923346452312', '2002-11-29 00:00:00.000', '12345678', '', 0, '0000-00-00', 0, 'new'),
(100000048, 'wlc_par', '+8801727582887', '1998-02-03 00:00:00.000', 'Par2887', 'scaled_image_picker8232937230303751591.jpg', 0, '0000-00-00', 0, 'new'),
(100000049, 'hasan', '+8801745838021', '2022-11-18 00:00:00.000', '123456789', '', 0, '0000-00-00', 0, 'new'),
(100000051, 'MH_R', '', '2000-08-15 00:00:00.000', 'MR@2411', '', 0, '0000-00-00', 0, 'Crust'),
(100000052, 'Atiq Ramzan', '+923157524000', '1991-10-05 00:00:00.000', 'Mano6266/*', 'scaled_image_picker3944324323819509583.jpg', 0, '0000-00-00', 0, 'new'),
(100000053, 'saqib', '+923215589122', '2010-12-06 00:00:00.000', '123456', '', 0, '0000-00-00', 0, 'new');

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_topup`
--

INSERT INTO `user_topup` (`topup_id`, `u_id`, `banktype`, `account_number`, `trans_id`, `date_added`) VALUES
(1, 100000024, 'USDT', 'usdt type', '19198172782', '2022-10-19'),
(2, 100000024, 'mobile', '01700582221', '19198172782', '2022-10-19'),
(3, 100000024, 'mobile', '01700582221', '19198172782', '2022-10-19'),
(4, 100000024, 'mobile', '01700582221', '19198172782', '2022-10-19'),
(5, 100000024, 'mobile', '01775304041', '188181818', '2022-10-19'),
(6, 100000037, 'mobile', '01700582221', 'xxxxxcccccc', '2022-11-03'),
(7, 100000049, 'USDT', 'usdt type', 'TRC20 ', '2022-11-17'),
(8, 100000048, 'mobile', 'BiKash-01400633622', 'rrrrrrrrrr', '2022-11-25'),
(9, 100000051, 'mobile', 'BiKash-01700582221', 'hf55gd65hhfv', '2022-11-29'),
(10, 100000051, 'mobile', 'BiKash-01400633622', 'jvhcych55756hfh', '2022-12-05'),
(11, 100000051, 'mobile', 'BiKash-01400633622', 'vuvujvuvhyc6', '2022-12-05'),
(12, 100000051, 'mobile', 'Nagat-01775304041', 'fdsghfds', '2022-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet`
--

CREATE TABLE `user_wallet` (
  `wallet_id` int(40) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `wallet_amount` varchar(500) NOT NULL,
  `v_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(55, '03027750114', '10', ''),
(56, '+8801743911500', '10', ''),
(57, '+8801743911500', '10', ''),
(58, '+8801743911500', '1000', ''),
(59, '+8801743911500', '10', ''),
(60, '+8801743911500', '10', ''),
(61, '+8801743911500', '1000', ''),
(62, '+8801743911500', '100', ''),
(63, '+8801743911500', '1000', ''),
(64, '+8801743911500', '100', ''),
(65, '+8801743911500', '100', ''),
(66, '+8801743911500', '100', ''),
(67, '+8801743911500', '100', ''),
(68, '+8801743911500', '100', ''),
(69, '+8801743911500', '10', ''),
(70, '+8801743911500', '100', ''),
(71, '+8801743911500', '100', ''),
(72, '+8801743911500', '100', ''),
(73, '+8801743911500', '100', ''),
(74, '+8801743911500', '1000', ''),
(75, '+8801743911500', '1000', ''),
(76, '+8801743911500', '1000', ''),
(77, '+8801743911500', '1000', ''),
(78, '+8801743911500', '100', ''),
(79, '+8801743911500', '100', ''),
(80, '+8801743911500', '10', ''),
(81, '+8801743911500', '100', ''),
(82, '+8801743911500', '1000', ''),
(83, '+8801743911500', '10', ''),
(84, '+8801743911500', '100', ''),
(85, '+8801743911500', '100', ''),
(86, '+8801743911500', '100', ''),
(87, '+8801743911500', '100', ''),
(88, '+8801743911500', '100', ''),
(89, '+8801743911500', '100', ''),
(90, '+8801743911500', '100', ''),
(91, '+923215589122', '25', ''),
(97, '+923346452312', '25', ''),
(98, '+8801727582887', '25', ''),
(99, '+8801727582887', '10', ''),
(100, '+8801727582887', '10', ''),
(101, '+8801745838021', '25', ''),
(102, '+923346452312', '100', ''),
(103, '+923346452312', '1000', ''),
(104, '+923346452312', '900', ''),
(105, '+923346452312', '650', ''),
(106, '+923346452312', '500', ''),
(107, '+923346452312', '200', ''),
(108, '+8801727582887', '1000', ''),
(109, '+8801727582887', '100', ''),
(110, '+8801727582887', '100', ''),
(111, '+8801727582887', '1000', ''),
(112, '+8801727582887', '1000', ''),
(113, '+8801727582887', '1000', ''),
(114, '+8801727582887', '10', ''),
(115, '+8801727582887', '100', ''),
(116, '+8801727582887', '10', ''),
(117, '+8801727582887', '1000', ''),
(118, '+8801727582887', '100', ''),
(119, '+8801727582887', '100', ''),
(120, '+8801727582887', '1000', ''),
(121, '+8801727582887', '1000', ''),
(122, '+8801727582887', '100', ''),
(123, '+8801727582887', '10', ''),
(124, '+8801727582887', '1000', ''),
(125, '+8801727582887', '1000', ''),
(126, '+8801727582887', '100', ''),
(127, '+8801727582887', '100', ''),
(128, '+8801727582887', '1000', ''),
(129, '+8801727582887', '1000', ''),
(130, '+8801727582887', '1000', ''),
(131, '+8801727582887', '100', ''),
(132, '+8801727582887', '10', ''),
(133, '+8801727582887', '100', ''),
(134, '+8801727582887', '100', ''),
(135, '+8801727582887', '1000', ''),
(136, '+8801727582887', '10', ''),
(137, '+8801727582887', '10', ''),
(138, '+8801727582887', '10', ''),
(139, '+8801727582887', '1000', ''),
(140, '03027750114', '100', ''),
(141, '03027750114', '10', ''),
(142, '03027750114', '350', ''),
(143, '03027750114', '200', ''),
(144, '+8801727582887', '650', ''),
(145, '03027750114', '2', ''),
(146, '03027750114', '2', ''),
(147, '03027750114', '2', ''),
(148, '03027750114', '2', ''),
(149, '03027750114', '2', ''),
(150, '03027750114', '2', ''),
(151, '03027750114', '2', ''),
(152, '03027750114', '2', ''),
(153, '03027750114', '2', ''),
(154, '03027750114', '2', ''),
(155, '03027750114', '2', ''),
(156, '03027750114', '2', ''),
(157, '03027750114', '2', ''),
(158, '03027750114', '2', ''),
(159, '03027750114', '2', ''),
(160, '03027750114', '2', ''),
(161, '03027750114', '2', ''),
(162, '03027750114', '2', ''),
(163, '03027750114', '2', ''),
(164, '03027750114', '2', ''),
(165, '03027750114', '2', ''),
(166, '03027750114', '2', ''),
(167, '03027750114', '2', ''),
(168, '03027750114', '2', ''),
(169, '03027750114', '2', ''),
(170, '03027750114', '2', ''),
(171, '03027750114', '2', ''),
(172, '03027750114', '2', ''),
(173, '03027750114', '2', ''),
(174, '03027750114', '2', ''),
(175, '03027750114', '2', ''),
(176, '03027750114', '2', ''),
(177, '03027750114', '2', ''),
(178, '03027750114', '2', ''),
(179, '03027750114', '2', ''),
(180, '03027750114', '2', ''),
(181, '+8801727582887', '350', ''),
(182, '+8801727582887', '450', ''),
(183, '+8801875802411', '25', ''),
(184, '+923157524000', '25', ''),
(185, '+923157524000', '2', ''),
(186, '+923027750114', '10', ''),
(187, '+923215589122', '25', ''),
(188, '+923215589122', '2', ''),
(189, '+923215589122', '2', ''),
(190, '+923215589122', '2', ''),
(191, '+923215589122', '2', ''),
(192, '+923215589122', '2', ''),
(193, '+923215589122', '2', ''),
(194, '+923215589122', '2', ''),
(195, '+923215589122', '2', ''),
(196, '+923215589122', '2', ''),
(197, '+923215589122', '2', ''),
(198, '+923215589122', '2', ''),
(199, '+923215589122', '2', ''),
(200, '+923215589122', '2', ''),
(201, '+923215589122', '2', ''),
(202, '+923215589122', '2', ''),
(203, '+923215589122', '2', ''),
(204, '+923215589122', '2', ''),
(205, '+923215589122', '2', ''),
(206, '+923215589122', '2', ''),
(207, '+923215589122', '2', ''),
(208, '+923215589122', '2', ''),
(209, '+923215589122', '2', ''),
(210, '03027750114', '2', '2'),
(211, '03027750114', '2', '2'),
(212, '03027750114', '2', '2'),
(213, '03027750114', '2', '2'),
(214, '03027750114', '2', '2'),
(215, '+923157524000', '2', '0'),
(216, '+923157524000', '2', '0'),
(217, '+923157524000', '2', '0');

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_withdraw`
--

INSERT INTO `user_withdraw` (`id`, `u_id`, `amount`, `banktype`, `account_number`, `status`) VALUES
(1, 100000016, 122, 'mobile', '2365998547', 'pending'),
(2, 100000024, 200, 'usdt', '61364161565', ''),
(3, 100000024, 200, 'usdt', '61364161565', 'pending'),
(5, 100000024, 100, 'mobile', '+923027750114', 'pending'),
(6, 100000013, 500, 'mobile', '0100100101', 'pending'),
(7, 100000024, 3000, 'mobile', '01775304041', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(40) NOT NULL,
  `videos_title` varchar(500) NOT NULL,
  `videos_url` varchar(1000) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'unseen'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `videos_title`, `videos_url`, `status`) VALUES
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
  `video_title` varchar(100) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `package_id` int(20) NOT NULL,
  `w_status` text NOT NULL,
  `watch_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `package_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `package_history`
--
ALTER TABLE `package_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_wheel`
--
ALTER TABLE `spin_wheel`
  MODIFY `spin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `transition_img`
--
ALTER TABLE `transition_img`
  MODIFY `transition_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `user_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000054;

--
-- AUTO_INCREMENT for table `user_topup`
--
ALTER TABLE `user_topup`
  MODIFY `topup_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_wallet`
--
ALTER TABLE `user_wallet`
  MODIFY `wallet_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `user_withdraw`
--
ALTER TABLE `user_withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `watch_videos`
--
ALTER TABLE `watch_videos`
  MODIFY `wv_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
