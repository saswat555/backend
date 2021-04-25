-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 28, 2021 at 01:22 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u936827588_goserviceslic`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(255) NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `about_store`
--

CREATE TABLE `about_store` (
  `about_id` int(11) NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlights` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_store`
--

INSERT INTO `about_store` (`about_id`, `store_id`, `short_desc`, `full_desc`, `highlights`, `manager_contact`) VALUES
(2, '15', '598 for two', 'hey this is demo only', 'Fully AC', '+918476978944');

-- --------------------------------------------------------

--
-- Table structure for table `addons_booking`
--

CREATE TABLE `addons_booking` (
  `booking_add_on_id` int(100) NOT NULL,
  `booking_id` int(100) NOT NULL,
  `des_id` int(100) NOT NULL,
  `booking_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_on_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `add_on_id` int(100) NOT NULL,
  `child_category_id` int(100) NOT NULL DEFAULT 0,
  `add_on_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_ons`
--

INSERT INTO `add_ons` (`add_on_id`, `child_category_id`, `add_on_title`) VALUES
(5, 54, 'null'),
(6, 464, 'null'),
(7, 465, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `add_ons_des`
--

CREATE TABLE `add_ons_des` (
  `des_id` int(100) NOT NULL,
  `add_on_id` int(100) DEFAULT NULL,
  `add_on_des` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_on_price` int(100) NOT NULL,
  `child_category_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `add_ons_des`
--

INSERT INTO `add_ons_des` (`des_id`, `add_on_id`, `add_on_des`, `add_on_price`, `child_category_id`) VALUES
(5, 5, 'Testing', 100, '54'),
(6, 6, 'Point 1', 100, '464'),
(7, 7, 'Point 2', 300, '465');

-- --------------------------------------------------------

--
-- Table structure for table `advertisment_plan`
--

CREATE TABLE `advertisment_plan` (
  `plan_id` int(100) NOT NULL,
  `plan_days` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_month` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_points`
--

CREATE TABLE `blog_points` (
  `blog_point_id` int(100) NOT NULL,
  `blog_id` int(100) NOT NULL,
  `blog_point` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_points`
--

INSERT INTO `blog_points` (`blog_point_id`, `blog_id`, `blog_point`) VALUES
(64, 31, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(65, 32, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(66, 33, 'Masks & Gloves worn throughout the service'),
(67, 33, 'Complete sanitisation of all tools & surfaces'),
(68, 34, 'Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(69, 35, 'Eyebrow Threading'),
(70, 35, 'Upper Lip Threading'),
(71, 36, 'sdfasdfsadfa'),
(72, 36, 'fsadfsdafdsaf'),
(73, 37, 'ROLL ON WAXING - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(74, 37, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(75, 38, 'Masks & Gloves worn throughout the service'),
(76, 38, 'Complete sanitisation of all tools & surfaces'),
(77, 39, 'Masks & Gloves worn throughout the service'),
(78, 40, 'Masks & Gloves worn throughout the service'),
(79, 41, 'Masks & Gloves worn throughout the service'),
(80, 41, 'Complete sanitisation of all tools & surfaces'),
(81, 41, 'Single-use sachets & products'),
(82, 42, 'Low-Contact waxing: 100% hygienic, single-use cartridge | Full arms & Full legs'),
(83, 42, 'Low-Contact threading : Beautician places the thread on a thick cotton padding around her neck (not mouth)'),
(84, 43, 'For Sensitive Skin'),
(85, 43, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(86, 44, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(87, 44, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(88, 45, 'Low-Contact waxing: 100% hygienic, single-use cartridge | Full arms & Full legs'),
(89, 45, 'Low-Contact threading : Beautician places the thread on a thick cotton padding around her neck (not mouth)'),
(90, 46, 'For Sensitive Skin'),
(91, 46, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(92, 47, 'For Sensitive Skin'),
(93, 47, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(94, 48, 'FACIAL - Sara Fruit Cleanup'),
(95, 48, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(96, 48, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(97, 48, '*Limited slots'),
(100, 50, 'Cleanup  This 5-step cleanup inclusive of scrubbing & massage'),
(101, 50, 'Pre-Wax  The skin is cleansed using astringent'),
(102, 51, 'Cleanup  This 5-step cleanup inclusive of scrubbing & massage.'),
(103, 51, 'Pre-Wax  The skin is cleansed using astringent'),
(104, 52, 'Waxing  A single-use spatula is used to apply a layer of wax'),
(105, 52, 'Post Waxing care  Aloe vera is applied on the area to soothe & moisture the skin'),
(106, 53, 'Threading  A special low-contact threading technique is used to remove the finest of hairs'),
(107, 53, 'Ingredients: 1 Natural Orange Extracts 2 Vitamin E'),
(108, 54, 'FACIAL - Sara Fruit Cleanup'),
(109, 54, 'ROLL-ON WAX - Full Arms (Including Underarms) (Chocolate Roll-on)'),
(110, 54, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(111, 54, 'Suitable For: Sensitive Skin'),
(112, 55, 'ROLL ON WAXING - RICA White Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(113, 55, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(114, 56, 'WAXING - Full Arms Waxing (Including Underarms) (RICA), Full Legs (No bikini line/Brazilian) (RICA)'),
(115, 56, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(116, 57, 'FACIAL - Glovite Facial by Cheryl\'s'),
(117, 57, 'BLEACH - Face & Neck Bleach'),
(118, 57, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(119, 57, 'Ingredients: 1 Natural orange extracts 2. Vitamin E & B3 3. Canadian willow herb'),
(120, 58, 'PEDICURE - Classic Pedicure'),
(121, 58, 'MANICURE - Classic Manicure'),
(122, 58, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(123, 58, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(124, 59, 'FACIAL - Glovite Facial by Cheryl\'s'),
(125, 59, 'WAXING - Full Arms (Including Underarms) (Honey)'),
(126, 59, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(127, 59, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(128, 60, 'FACIAL - Sara Fruit Cleanup '),
(129, 60, 'PEDICURE - Cut, File & Polish - Feet'),
(130, 60, 'ROLL-ON PACKAGE - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(131, 60, 'HAIR CARE - Head Massage (20 min)'),
(132, 61, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(133, 61, 'BLEACH - Face & Neck Bleach'),
(134, 62, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(135, 62, 'BLEACH - Face & Neck Bleach'),
(136, 63, 'FACIAL - Sara Fruit Cleanup'),
(137, 63, 'PEDICURE - Cut, File & Polish - Feet'),
(138, 63, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(139, 63, 'HAIR CARE - Head Massage (20 min)'),
(140, 64, 'BLEACH - Face & Neck Bleach'),
(141, 64, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(142, 65, 'ROLL ON WAXING - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(143, 65, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(144, 66, 'ROLL ON WAXING - RICA White Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(145, 66, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(146, 67, 'ROLL ON WAXING - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(147, 67, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(148, 68, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(149, 68, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(150, 69, 'FACIAL - Sara Fruit Cleanup'),
(151, 69, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(152, 70, 'FACIAL - Sara Fruit Cleanup'),
(153, 70, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(154, 70, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(155, 71, 'FACIAL - Sara Fruit Cleanup'),
(156, 71, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(157, 71, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(158, 71, '*Limited slots'),
(159, 72, 'FACIAL - Sara Fruit Cleanup'),
(160, 72, 'ROLL-ON WAX - Full Arms (Including Underarms) (Chocolate Roll-on)'),
(161, 72, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(162, 73, 'ROLL ON WAXING - RICA White Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(163, 73, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(164, 74, 'WAXING - Full Arms Waxing (Including Underarms) (RICA), Full Legs (No bikini line/Brazilian) (RICA)'),
(165, 74, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(166, 75, 'FACIAL - Glovite Facial by Cheryl\'s'),
(167, 75, 'BLEACH - Face & Neck Bleach'),
(168, 75, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(169, 76, 'PEDICURE - Classic Pedicure'),
(170, 76, 'MANICURE - Classic Manicure'),
(171, 76, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(172, 76, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(173, 77, 'FACIAL - Glovite Facial by Cheryl\'s'),
(174, 77, 'WAXING - Full Arms (Including Underarms) (Honey)'),
(175, 77, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(176, 77, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(177, 78, 'FACIAL - Sara Fruit Cleanup'),
(178, 78, 'PEDICURE - Cut, File & Polish - Feet'),
(179, 78, 'ROLL-ON PACKAGE - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(180, 78, 'HAIR CARE - Head Massage (20 min)'),
(181, 79, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(182, 79, 'BLEACH - Face & Neck Bleach'),
(183, 80, 'FACIAL - Sara Fruit Cleanup'),
(184, 80, 'PEDICURE - Cut, File & Polish - Feet'),
(185, 80, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(186, 80, 'HAIR CARE - Head Massage (20 min)'),
(187, 81, 'BLEACH - Face & Neck Bleach'),
(188, 81, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(189, 82, 'FACIAL - Sara Fruit Cleanup2'),
(190, 82, 'FACIAL - Sara Fruit Cleanup2'),
(191, 83, 'ROLL ON WAXING - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(192, 83, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(193, 84, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(194, 84, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(195, 85, 'FACIAL - Sara Fruit Cleanup'),
(196, 85, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(197, 85, 'WAXING - Full Arms (Including Underarms) (Honey)'),
(198, 85, '*Limited slots'),
(199, 86, 'FACIAL - Sara Fruit Cleanup'),
(200, 86, 'ROLL-ON WAX - Full Arms (Including Underarms) (Chocolate Roll-on)'),
(201, 86, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(202, 86, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(203, 87, 'ROLL ON WAXING - RICA White Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(204, 87, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(205, 88, 'WAXING - Full Arms Waxing (Including Underarms) (RICA), Full Legs (No bikini line/Brazilian) (RICA)'),
(206, 88, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(207, 89, 'FACIAL - Glovite Facial by Cheryl\'s'),
(208, 89, 'BLEACH - Face & Neck Bleach'),
(209, 89, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(210, 89, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(211, 90, 'PEDICURE - Classic Pedicure'),
(212, 90, 'MANICURE - Classic Manicure'),
(213, 90, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(214, 90, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(215, 91, 'FACIAL - Glovite Facial by Cheryl\'s'),
(216, 91, 'WAXING - Full Arms (Including Underarms) (Honey)'),
(217, 91, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(218, 91, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(219, 92, 'FACIAL - Sara Fruit Cleanup'),
(220, 92, 'PEDICURE - Cut, File & Polish - Feet'),
(221, 92, 'ROLL-ON PACKAGE - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(222, 92, 'HAIR CARE - Head Massage (20 min)'),
(223, 93, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(224, 93, 'BLEACH - Face & Neck Bleach'),
(225, 94, 'FACIAL - Sara Fruit Cleanup'),
(226, 94, 'PEDICURE - Cut, File & Polish - Feet'),
(227, 94, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(228, 94, 'HAIR CARE - Head Massage (20 min)'),
(229, 95, 'BLEACH - Face & Neck Bleach'),
(230, 95, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(231, 96, 'ROLL ON WAXING - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(232, 96, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(233, 97, 'ROLL ON WAXING - RICA White Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(234, 97, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(235, 98, 'FACIAL - Sara Fruit Cleanup'),
(236, 98, 'PEDICURE - Cut, File & Polish - Feet'),
(237, 98, 'ROLL-ON PACKAGE - Chocolate Roll-on (Full legs+ Full arms) & Underarms (RICA Peel-off Wax)'),
(238, 98, 'HAIR CARE - Head Massage (20 min)'),
(239, 99, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(240, 99, 'BLEACH - Face & Neck Bleach'),
(241, 100, 'ROLL-ON WAX - Full Arms(Including Underarms) (RICA White Chocolate)'),
(242, 100, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(243, 101, 'ROLL-ON WAX - Full Legs (No Bikini/Brazilian) (Chocolate Roll-on)'),
(244, 101, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(245, 102, 'ROLL-ON WAX - Half Legs (Chocolate Roll-on)'),
(246, 102, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(247, 103, 'ROLL-ON WAX - Stomach (Chocolate Roll-on)'),
(248, 103, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(249, 104, 'ROLL-ON WAX - Back Waxing (Chocolate Roll-On)'),
(250, 104, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(251, 105, 'ROLL-ON WAX - Full Body (Chocolate Roll-on)'),
(252, 105, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(253, 106, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(254, 106, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(255, 107, 'SELECT YOUR WAX TYPE - Half Legs (Honey)'),
(256, 107, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(257, 108, 'SELECT YOUR WAX TYPE - Underarms (Honey)'),
(258, 108, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(259, 109, 'SELECT YOUR WAX TYPE - Full Legs (No bikini line/Brazilian) (Honey)'),
(260, 109, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(261, 110, 'SELECT YOUR WAX TYPE - Half Arms (Honey)'),
(262, 110, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(263, 111, 'SELECT YOUR WAX TYPE - Full Arms (Including Underarms) (Honey)'),
(264, 111, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(265, 112, 'SELECT YOUR WAX TYPE - Bikini Wax (Honey)'),
(266, 112, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(267, 113, 'SELECT YOUR WAX TYPE - Full Body (No Bikini Wax) (Honey)'),
(268, 113, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(269, 114, 'SELECT YOUR WAX TYPE - Bikini Line (Honey)'),
(270, 114, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(271, 115, 'SELECT YOUR WAX TYPE - Stomach (Honey)'),
(272, 115, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(273, 116, 'WAXING - Back (Honey)'),
(274, 116, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(275, 117, 'Enriched with natural orange extracts'),
(276, 117, 'For a younger looking and glowing skin'),
(277, 118, '5-Step facial, enriched with vitamin C'),
(278, 118, 'Brighter & smoother skin'),
(279, 119, 'Removes and prevents sun pigmentation and tanning'),
(280, 119, 'Makes the face look younger, even toned and brighter'),
(281, 120, 'Reduces signs of ageing and tightens the skin'),
(282, 120, 'Makes the skin more even toned and bright.'),
(283, 121, 'Enriched with the goodness of Milk'),
(284, 121, '5 step facial for a radiant and softer skin'),
(285, 122, 'Enriched with Eucalyptus and Vitamin C'),
(286, 122, 'Reduces uneven skin tone and improves skin radiance'),
(287, 123, 'FACIAL - Glovite Facial by Cheryl\'s'),
(288, 123, 'BLEACH - Face & Neck Bleach'),
(289, 123, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(290, 123, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(291, 124, 'Color provided by customer'),
(292, 124, 'Shampoo before & after service is not included.'),
(293, 125, 'Henna provided by customer'),
(294, 125, 'Shampoo before & after service is not included.'),
(295, 126, 'Only Head Massage'),
(296, 126, 'Shampoo before & after service is not included.'),
(297, 127, 'Color provided by beautician'),
(298, 127, 'Application of crème. Shampoo before & after service is not included.'),
(299, 128, 'Crème application, 15 mins massage & steam'),
(300, 128, 'Shampoo before & after service is not included.'),
(301, 129, 'Color your hair for an even tone'),
(302, 129, 'Color shades available are : 1 (black), 3 (dark brown), 4 (brown)'),
(303, 130, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(304, 130, 'HAIR CARE - Hair Color Application Only'),
(305, 130, 'FACIAL HAIR REMOVAL  - Eyebrow Threading , Upper Lip Threading'),
(306, 131, 'HAIR CARE - Hair Color Application Only'),
(307, 131, 'WAXING - Full Arms (Including Underarms) (Honey), Full Legs (No bikini line/Brazilian) (Honey)'),
(308, 132, 'FACIAL HAIR REMOVAL  - Eyebrow Threading , Upper Lip Threading'),
(309, 132, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(310, 133, 'PEDICURE - Classic Pedicure'),
(311, 133, 'MANICURE - Classic Manicure'),
(312, 133, 'FACIAL HAIR REMOVAL - Eyebrow Threading , Upper Lip Threading'),
(313, 134, 'Lyn/Colorbar Nail Paints'),
(314, 135, 'Feet soaked in essential oils & rose petals'),
(315, 135, 'Tea tree oil & walnut based scrub'),
(316, 135, 'Cooling mask'),
(317, 135, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(318, 136, 'Feet soaked in crystal salts'),
(319, 136, 'Macadamia extract scrub'),
(320, 136, 'Mask with olive oil extracts'),
(321, 136, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(322, 137, 'Detan pack is applied till knees'),
(323, 137, 'Feet soaked in rose petals & essential oils'),
(324, 137, 'Tea tree oil & walnut based scrub'),
(325, 137, 'Cooling mask'),
(326, 138, 'Lyn/Colorbar Nail Paints'),
(327, 138, 'All beauticians trained in Covid-19 health, safety & hygiene norms'),
(328, 139, 'Sara 30 min'),
(329, 139, 'Rose petals ,Tea Tree Oil, Eucalyptus Oil'),
(330, 140, 'Pedillogix by O3+'),
(331, 140, 'Aloe Vera Extracts &  Macademia Nuts'),
(332, 141, 'Sara & Raaga 50 min'),
(333, 141, 'Shea Butter ,Rose petals ,Tea Tree Oil, Eucalyptus Oil'),
(334, 142, 'CHOOSE TECHNIQUE - Upper Lip Face Wax'),
(335, 142, 'RICA Aloe Vera After Wax Oil will be applied to soothe the skin.'),
(336, 143, 'CHOOSE TECHNIQUE - Chin Face Wax'),
(337, 143, 'RICA Aloe Vera After Wax Oil will be applied to soothe the skin.'),
(338, 144, 'CHOOSE TECHNIQUE - Sidelocks Face Wax'),
(339, 144, 'RICA Aloe Vera After Wax Oil will be applied to soothe the skin.'),
(340, 145, 'CHOOSE TECHNIQUE - Forehead Face Wax'),
(341, 145, 'RICA Aloe Vera After Wax Oil will be applied to soothe the skin.'),
(342, 146, 'Wax application is done using a single-use spatula and Brazilian wax.'),
(343, 146, 'RICA Aloe Vera After Wax Oil will be applied to soothe the skin.'),
(344, 147, 'Wax application is done using a single-use spatula and Brazilian wax.'),
(345, 147, 'RICA Aloe Vera After Wax Oil will be applied to soothe the skin.'),
(346, 148, 'LOW-CONTACT THREADING - Full Face Wax'),
(347, 148, 'RICA Aloe Vera After Wax Oil will be applied to soothe the skin.'),
(348, 149, 'Haircut in the Safety of your Home  Disposable towels, cape, and single-use products'),
(349, 149, '100% Mess Free experience  Post service cleanup guaranteed with no hair left behind on the floor'),
(350, 150, 'Haircut in the Safety of your Home  Disposable towels, cape, and single-use products'),
(351, 150, '100% Mess Free experience  Post service cleanup guaranteed with no hair left behind on the floor'),
(352, 151, 'HAIR CUT - Men\'s Haircut, Kids Haircut (Boys)'),
(353, 151, 'Haircut in the Safety of your Home  Disposable towels, cape, and single-use products'),
(354, 152, 'HAIR CUT - Men\'s Haircut'),
(355, 152, 'SHAVE/BEARD TRIM - Clean Shave/ Moustache Grooming'),
(356, 153, 'HAIR CUT - Men\'s Haircut'),
(357, 153, 'SHAVE/BEARD TRIM - Beard Trim/Styling'),
(358, 154, 'HAIR CUT - Men\'s Haircut'),
(359, 154, 'MASSAGE - 10 min Head Massage'),
(360, 155, 'MASSAGE - 10 min Head Massage'),
(361, 155, 'HAIR CUT - Men\'s Haircut'),
(362, 155, 'SHAVE/BEARD TRIM - Clean Shave/ Moustache Grooming'),
(363, 155, 'Disposable towels, cape, and single-use products'),
(364, 156, 'HAIR CUT - Men\'s Haircut'),
(365, 156, 'HAIR COLOR-APPLICATION ONLY  - Hair Color Application'),
(366, 156, 'Hair Color Provided by the customer'),
(367, 156, 'An all inclusive setup including the equipment and a zero mess cape'),
(368, 157, 'HAIR CUT - Men\'s Haircut'),
(369, 157, 'L\'OREAL MATRIX HAIR COLOR + APPLICATION - L\'Oreal Matrix (Black)'),
(370, 158, 'Haircut in the Safety of your Home  Disposable towels, cape, and single-use products'),
(371, 158, '100% Mess Free experience  Post service cleanup guaranteed with no hair left behind on the floor'),
(372, 159, 'Haircut in the Safety of your Home  Disposable towels, cape, and single-use products'),
(373, 159, '100% Mess Free experience  Post service cleanup guaranteed with no hair left behind on the floor'),
(374, 160, 'Haircut in the Safety of your Home  Disposable towels, cape, and single-use products'),
(375, 160, '4.5+ Rated Expert Stylists  Our stylists are trained to deliver a haircut that best suits your face shape'),
(376, 161, 'HAIR CUT - Men\'s Haircut, Kids Haircut (Boys)'),
(377, 161, '4.5+ Rated Expert Stylists  Our stylists are trained to deliver a haircut that best suits your face shape'),
(378, 162, 'HAIR CUT - Kids Haircut (Boys)'),
(379, 162, 'PARENTAL SUPERVISION ADVISED'),
(380, 163, 'HAIR CUT - Kids Haircut (Girls)'),
(381, 163, 'PARENTAL SUPERVISION ADVISED'),
(382, 164, 'Stylists trained to cut hair for boys and girls between 2-12 years'),
(383, 164, 'Parental supervision advised'),
(384, 165, 'Stylists trained to cut hair for boys and girls between 2-12 years'),
(385, 165, 'Parental supervision advised'),
(386, 166, 'HAIR CUT - Men\'s Haircut, Kids Haircut (Boys)'),
(387, 166, 'FOR BOYS AND GIRLS (2-12 YRS)'),
(388, 167, 'MASSAGE - 20 min Head Massage, 20 min Kid\'s Head Massage'),
(389, 167, 'HAIR CUT - Men\'s Haircut, Kids Haircut (Boys)'),
(390, 168, 'SHAVE/BEARD TRIM - Clean Shave/ Moustache Grooming'),
(391, 168, '4.5+ Rated Expert Stylists  Our stylists are trained to deliver the closest shave possible using a single blade ustraa shave'),
(392, 169, 'SHAVE/BEARD TRIM - Beard Trim/Styling'),
(393, 169, 'Our stylists are trained to style your beard to flatter your face shape'),
(394, 170, 'Haircut in the Safety of your Home  Disposable towels, cape, and single-use products'),
(395, 170, '4.5+ Rated Expert Stylists  Our stylists are trained to deliver a haircut that best suits your face shape'),
(396, 171, 'MASSAGE - 10 min Head Massage'),
(397, 171, 'Our stylists are trained to deliver professional and relaxing massage'),
(398, 172, 'De-stress with UC Exclusive Oil'),
(399, 172, 'Our stylists are trained to deliver professional and relaxing massage'),
(400, 173, 'Rejuvenate and Unwind  Quick relaxation with UC Exclusive Oils'),
(401, 173, '4.5+ Rated Expert Stylists  Our stylists are trained to deliver professional and relaxing massage'),
(402, 174, 'L\'OREAL MATRIX HAIR COLOR + APPLICATION - L\'Oreal Matrix (Black)'),
(403, 174, 'Shades Available: Black, Medium Brown, Light Brown with Mocha'),
(404, 175, 'Professional, even application that lasts longer'),
(405, 175, 'COLOR TO BE PROVIDED BY THE CUSTOMER'),
(406, 176, 'Includes all areas in the house'),
(407, 176, 'Hospital Grade chemicals used'),
(408, 176, 'kills disease-causing viruses & germs'),
(409, 176, 'Total sanitisation of high-touch surfaces'),
(410, 177, 'Includes all areas in the house'),
(411, 177, 'Hospital Grade chemicals used'),
(412, 177, 'kills disease-causing viruses & germs'),
(413, 177, 'Total sanitisation of high-touch surfaces'),
(414, 178, 'Includes all areas in the house'),
(415, 178, 'Hospital Grade chemicals used'),
(416, 178, 'kills disease-causing viruses & germs'),
(417, 178, 'Total sanitisation of high-touch surfaces'),
(418, 179, 'Includes all areas in the house'),
(419, 179, 'Hospital Grade chemicals used'),
(420, 179, 'kills disease-causing viruses & germs'),
(421, 179, 'Total sanitisation of high-touch surfaces'),
(422, 180, 'Includes all areas in the house'),
(423, 180, 'Hospital Grade chemicals used'),
(424, 180, 'kills disease-causing viruses & germs'),
(425, 180, 'Total sanitisation of high-touch surfaces'),
(426, 181, 'Includes all areas of the house'),
(427, 181, 'Hospital Grade chemicals used'),
(428, 181, 'kills disease-causing viruses & germs'),
(429, 181, 'Total sanitisation of high-touch surfaces'),
(430, 182, 'Includes all areas of the house'),
(431, 182, 'Hospital Grade chemicals used'),
(432, 182, 'kills disease-causing viruses & germs'),
(433, 182, 'Total sanitisation of high-touch surfaces'),
(434, 183, 'Includes all areas of the house'),
(435, 183, 'Hospital Grade chemicals used'),
(436, 183, 'kills disease-causing viruses & germs'),
(437, 183, 'Total sanitisation of high-touch surfaces'),
(438, 184, 'Includes all areas of the car*'),
(439, 184, 'Hospital Grade chemicals used'),
(440, 184, 'kills disease-causing viruses & germs'),
(441, 184, 'Total sanitisation of high-touch surfaces'),
(442, 185, 'Includes all areas of the car*'),
(443, 185, 'Hospital Grade chemicals used'),
(444, 185, 'kills disease-causing viruses & germs'),
(445, 185, 'Total sanitisation of high-touch surfaces'),
(446, 186, 'Includes all areas of the car*'),
(447, 186, 'Hospital Grade chemicals used'),
(448, 186, 'kills disease-causing viruses & germs'),
(449, 186, 'Total sanitisation of high-touch surfaces'),
(450, 187, 'Includes all areas of the car*'),
(451, 187, 'Hospital Grade chemicals used'),
(452, 187, 'kills disease-causing viruses & germs'),
(453, 187, 'Total sanitisation of high-touch surfaces'),
(454, 188, 'Includes all areas of the car*'),
(455, 188, 'Hospital Grade chemicals used'),
(456, 188, 'kills disease-causing viruses & germs'),
(457, 188, 'Total sanitisation of high-touch surfaces'),
(458, 189, 'Includes all areas of the car*'),
(459, 189, 'Hospital Grade chemicals used'),
(460, 189, 'kills disease-causing viruses & germs'),
(461, 189, 'Total sanitisation of high-touch surfaces'),
(462, 190, 'Includes total sanitisation of desks, chairs, restrooms & pantry area'),
(463, 190, 'Hospital Grade chemicals used'),
(464, 190, 'Kills disease-causing viruses including coronavirus*'),
(465, 190, 'WHO recommended and EPA approved chemical [Virex II 256] solution is used for disinfection'),
(466, 191, 'Includes total sanitisation of billing area, counters, restrooms & shelves'),
(467, 191, 'Hospital Grade chemicals used'),
(468, 191, 'Kills disease-causing viruses and germs'),
(469, 191, 'WHO recommended and EPA approved chemical [Virex II 256] solution is used for disinfection'),
(470, 192, 'Includes total sanitisation of billing area, counters, restrooms & shelves'),
(471, 192, 'Hospital Grade chemicals used'),
(472, 192, 'Kills disease-causing viruses and germs'),
(473, 192, 'WHO recommended and EPA approved chemical [Virex II 256] solution is used for disinfection'),
(474, 193, 'Includes total sanitisation of billing area, counters, restrooms & shelves'),
(475, 193, 'Hospital Grade chemicals used'),
(476, 193, 'Kills disease-causing viruses and germs'),
(477, 193, 'WHO recommended and EPA approved chemical [Virex II 256] solution is used for disinfection'),
(478, 194, 'People: 2-3 | Duration: 3-4 hours'),
(479, 194, 'Floor cleaning using industry grade machines'),
(480, 194, 'Cleaning of all doors and windows'),
(481, 194, 'Dry dusting & cobweb removal from all home area\'s'),
(482, 195, 'Includes bathroom & kitchen deep cleaning'),
(483, 195, 'Includes hard to reach area\'s such as balcony, fans, etc'),
(484, 196, 'People: 2-3 | Duration: 4-5 hours'),
(485, 196, 'Book Now to avoid surge due to heavy demand'),
(486, 196, 'Floor cleaning using industry grade machines'),
(487, 196, 'Bathroom Deep Cleaning'),
(488, 197, 'Kitchen Deep cleaning'),
(489, 197, 'Dry vacuuming of sofa, carpet and curtains'),
(490, 197, 'All room cleaning including cob-web removal and dusting of all items'),
(491, 197, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(492, 198, 'People: 2-3 | Duration: 5-6 hours'),
(493, 198, 'Floor cleaning using industry grade machines'),
(494, 198, 'Bathroom Deep Cleaning'),
(495, 198, 'Kitchen Deep cleaning'),
(496, 199, 'Wet-vacuuming and shampooing of sofa, carpet and dry vacuuming of curtains'),
(497, 199, 'All room cleaning including cob-web removal and dusting of all items'),
(498, 199, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(499, 200, 'People: 2-3 | Duration: 4-5 hours'),
(500, 200, 'Floor cleaning using industry grade machines'),
(501, 200, 'Cleaning of all doors and windows'),
(502, 200, 'Dry dusting & cobweb removal from all home area\'s'),
(503, 201, 'Includes bathroom & kitchen deep cleaning'),
(504, 201, 'Includes hard to reach area\'s such as balcony, fans, etc'),
(505, 202, 'People: 2-3 | Duration: 4-5 hours'),
(506, 202, 'Floor cleaning using industry grade machines'),
(507, 202, 'Bathroom Deep Cleaning'),
(508, 202, 'Kitchen Deep cleaning'),
(509, 202, 'Dry vacuuming of sofa, carpet and curtains'),
(510, 202, 'All room cleaning including cob-web removal and dusting of all items'),
(511, 203, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(512, 204, 'People: 2-3 | Duration: 5-6 hours'),
(513, 204, 'Floor cleaning using industry grade machines'),
(514, 204, 'Bathroom Deep Cleaning'),
(515, 204, 'Kitchen Deep cleaning'),
(516, 205, 'Wet-vacuuming and shampooing of sofa, carpet and dry vacuuming of curtains'),
(517, 205, 'All room cleaning including cob-web removal and dusting of all items'),
(518, 206, 'People: 3-4 | Duration: 4-5 hours'),
(519, 206, 'Floor cleaning using industry grade machines'),
(520, 206, 'Cleaning of all doors and windows'),
(521, 206, 'Dry dusting & cobweb removal from all home area\'s'),
(522, 207, 'Includes bathroom & kitchen deep cleaning'),
(523, 207, 'Includes hard to reach area\'s such as balcony, fans, etc'),
(524, 208, 'People: 3-4 | Duration: 5-6 hours'),
(525, 208, 'Floor cleaning using industry grade machines'),
(526, 208, 'Bathroom Deep Cleaning'),
(527, 208, 'Kitchen Deep cleaning'),
(528, 209, 'Dry vacuuming of sofa, carpet and curtains'),
(529, 209, 'All room cleaning including cob-web removal and dusting of all items'),
(530, 209, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(531, 209, 'Thorough cleaning of all area\'s of the house'),
(532, 210, 'People: 3-4 | Duration: 6-7 hours'),
(533, 210, 'Floor cleaning using industry grade machines'),
(534, 210, 'Bathroom Deep Cleaning'),
(535, 210, 'Kitchen Deep cleaning'),
(536, 211, 'Wet-vacuuming and shampooing of sofa, carpet and dry vacuuming of curtains'),
(537, 211, 'All room cleaning including cob-web removal and dusting of all items'),
(538, 211, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(539, 212, 'People: 3-4 | Duration: 5-6 hours'),
(540, 212, 'Floor cleaning using industry grade machines'),
(541, 212, 'Cleaning of all doors and windows'),
(542, 212, 'Dry dusting & cobweb removal from all home area\'s'),
(543, 213, 'Includes bathroom & kitchen deep cleaning'),
(544, 213, 'Includes hard to reach area\'s such as balcony, fans, etc'),
(545, 214, 'People: 3-4 | Duration: 6-7 hours'),
(546, 214, 'Floor cleaning using industry grade machines'),
(547, 214, 'Bathroom Deep Cleaning'),
(548, 214, 'Kitchen Deep cleaning'),
(549, 215, 'Dry vacuuming of sofa, carpet and curtains'),
(550, 215, 'All room cleaning including cob-web removal and dusting of all items'),
(551, 215, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(552, 216, 'People: 3-4 | Duration: 5-6 hours'),
(553, 216, 'Floor cleaning using industry grade machines'),
(554, 216, 'Bathroom Deep Cleaning'),
(555, 216, 'Kitchen Deep cleaning'),
(556, 217, 'Wet-vacuuming and shampooing of sofa, carpet and dry vacuuming of curtains'),
(557, 217, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(558, 218, 'People: 3-4 | Duration: 5-6 hours'),
(559, 218, 'Floor cleaning using industry grade machines'),
(560, 218, 'Cleaning of all doors and windows'),
(561, 218, 'Dry dusting & cobweb removal from all home area\'s'),
(562, 219, 'Includes bathroom & kitchen deep cleaning'),
(563, 219, 'Includes hard to reach area\'s such as balcony, fans, etc'),
(564, 220, 'People: 3-4 | Duration: 6-7 hours'),
(565, 220, 'Floor cleaning using industry grade machines'),
(566, 220, 'Bathroom Deep Cleaning'),
(567, 220, 'Kitchen Deep cleaning'),
(568, 221, 'Dry vacuuming of sofa, carpet and curtains'),
(569, 221, 'All room cleaning including cob-web removal and dusting of all items'),
(570, 221, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(571, 221, 'Thorough cleaning of all area\'s of the house'),
(572, 222, 'People: 3-4 | Duration: 7-8 hours'),
(573, 222, 'Floor cleaning using industry grade machines'),
(574, 222, 'Bathroom Deep Cleaning'),
(575, 222, 'Kitchen Deep cleaning'),
(576, 223, 'Wet-vacuuming and shampooing of sofa, carpet and dry vacuuming of curtains'),
(577, 223, 'All room cleaning including cob-web removal and dusting of all items'),
(578, 223, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(579, 224, 'Wet-vacuuming and shampooing of sofa, carpet and dry vacuuming of curtains'),
(580, 224, 'All room cleaning including cob-web removal and dusting of all items'),
(581, 224, 'Includes hard to reach area\'s such as balcony, fan and windows'),
(582, 225, 'Disc. machine is used for cleaning of the tiles'),
(583, 225, 'Dry vacuuming of all fabrics including sofa, carpet & mattress'),
(584, 226, 'Thorough cleaning of all hard to reach areas and fixtures, including balcony, exhaust fan, ceiling fan, etc.'),
(585, 226, 'Duration: 6-7 hrs, Team of 3-5 professionals'),
(586, 227, 'Thorough cleaning of all hard to reach areas and fixtures, including balcony, exhaust fan, ceiling fan, etc.'),
(587, 227, 'Duration: 6-7 hrs, Team of 3-5 professionals'),
(588, 228, 'Disc. machine is used for cleaning of the tiles'),
(589, 228, 'Dry vacuuming of all fabrics including sofa, carpet & mattress'),
(590, 229, 'Thorough cleaning of all hard to reach areas and fixtures, including balcony, exhaust fan, ceiling fan, etc.'),
(591, 229, 'Duration: 6-7 hrs, Team of 3-5 professionals'),
(592, 230, 'Duration: 6-7 hrs, Team of 3-5 professionals'),
(593, 230, 'Disc. machine is used for cleaning of the tiles'),
(594, 231, 'Dry vacuuming of all fabrics including sofa, carpet & mattress'),
(595, 231, 'Thorough cleaning of all hard to reach areas and fixtures, including balcony, exhaust fan, ceiling fan, etc.'),
(596, 232, 'Disc. machine is used for cleaning of the tiles'),
(597, 232, 'Dry vacuuming of all fabrics including sofa, carpet & mattress'),
(598, 233, 'Thorough cleaning of all hard to reach areas and fixtures, including balcony, exhaust fan, ceiling fan, etc.'),
(599, 233, 'Duration: 6-7 hrs, Team of 3-5 professionals'),
(600, 234, 'Disc. machine is used for cleaning of the tiles'),
(601, 234, 'Dry vacuuming of all fabrics including sofa, carpet & mattress'),
(602, 235, 'Thorough cleaning of all hard to reach areas and fixtures, including balcony, exhaust fan, ceiling fan, etc.'),
(603, 235, 'Duration: 6-7 hrs, Team of 3-5 professionals'),
(604, 236, 'Interior vacuuming & dashboard polishing'),
(605, 236, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(606, 236, 'Dry dusting of AC vents'),
(607, 236, 'Customers to provide plug point within 20m & water'),
(608, 237, 'Exterior body shampoo & polish using machine'),
(609, 237, 'Glass and tyres polish'),
(610, 237, 'Interior vacuum & dashboard polish'),
(611, 237, 'Water & Electricity to be provided by the customer'),
(612, 238, 'Exterior body shampoo & polish with machine'),
(613, 238, 'Interior vacuuming & dashboard polishing'),
(614, 238, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(615, 238, 'Customers to provide plug point within 20m & water'),
(616, 239, 'Interior vacuuming & dashboard polishing'),
(617, 239, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(618, 239, 'Dry dusting of AC vents'),
(619, 239, 'Customers to provide plug point within 20m & water'),
(620, 240, 'Exterior body shampoo & polish using machine'),
(621, 240, 'Glass and tyres polish'),
(622, 240, 'Interior vacuum & dashboard polish'),
(623, 240, 'Eg: Swift Dzire, Vento, Xcent'),
(624, 241, 'Exterior body shampoo & polish with machine'),
(625, 241, 'Interior vacuuming & dashboard polishing'),
(626, 241, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(627, 241, 'Customers to provide plug point within 20m & water'),
(628, 242, 'Interior vacuuming & dashboard polishing'),
(629, 242, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(630, 242, 'Dry dusting of AC vents'),
(631, 242, 'Customers to provide plug point within 20m & water'),
(632, 243, 'Exterior body shampoo & polish using machine'),
(633, 243, 'Glass and tyres polish'),
(634, 243, 'Interior vacuum & dashboard polish'),
(635, 243, 'Water & Electricity to be provided by the customer'),
(636, 244, 'Exterior body shampoo & polish with machine'),
(637, 244, 'Interior vacuuming & dashboard polishing'),
(638, 244, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(639, 244, 'Customers to provide plug point within 20m & water'),
(640, 245, 'Interior vacuuming & dashboard polishing'),
(641, 245, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(642, 245, 'Dry dusting of AC vents'),
(643, 245, 'Customers to provide plug point within 20m & water'),
(644, 246, 'Exterior body shampoo & polish using machine'),
(645, 246, 'Glass and tyres polish'),
(646, 246, 'Interior vacuum & dashboard polish'),
(647, 246, 'Water & Electricity to be provided by the customer'),
(648, 247, 'Exterior body shampoo & polish using machine'),
(649, 247, 'Glass and tyres polish'),
(650, 247, 'Interior vacuum & dashboard polish'),
(651, 247, 'Water & Electricity to be provided by the customer'),
(652, 248, 'Exterior body shampoo & polish with machine'),
(653, 248, 'Interior vacuuming & dashboard polishing'),
(654, 248, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(655, 248, 'Customers to provide plug point within 20m & water'),
(656, 249, 'Interior vacuuming & dashboard polishing'),
(657, 249, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(658, 249, 'Dry dusting of AC vents'),
(659, 249, 'Customers to provide plug point within 20m & water'),
(660, 250, 'Exterior body shampoo & polish using machine'),
(661, 250, 'Glass and tyres polish'),
(662, 250, 'Interior vacuum & dashboard polish'),
(663, 250, 'Water & Electricity to be provided by the customer'),
(664, 251, 'Exterior body shampoo & polish with machine'),
(665, 251, 'Interior vacuuming & dashboard polishing'),
(666, 251, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(667, 251, 'Customers to provide plug point within 20m & water'),
(668, 252, 'Interior vacuuming & dashboard polishing'),
(669, 252, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(670, 252, 'Dry dusting of AC vents'),
(671, 252, 'Customers to provide plug point within 20m & water'),
(672, 253, 'Exterior body shampoo & polish using machine'),
(673, 253, 'Glass and tyres polish'),
(674, 253, 'Interior vacuum & dashboard polish'),
(675, 253, 'Water & Electricity to be provided by the customer'),
(676, 254, 'Exterior body shampoo & polish with machine'),
(677, 254, 'Interior vacuuming & dashboard polishing'),
(678, 254, 'Inside seats, doors, roof, mats, trunk shampoo & cleaning'),
(679, 254, 'Customers to provide plug point within 20m & water'),
(680, 255, 'Includes all areas of the car*'),
(681, 255, 'Hospital Grade chemicals used'),
(682, 255, 'kills disease-causing viruses & germs'),
(683, 255, 'Total sanitisation of high-touch surfaces'),
(684, 256, 'Includes all areas of the car*'),
(685, 256, 'Hospital Grade chemicals used'),
(686, 256, 'kills disease-causing viruses & germs'),
(687, 256, 'Total sanitisation of high-touch surfaces'),
(688, 257, 'Includes all areas of the car*'),
(689, 257, 'Hospital Grade chemicals used'),
(690, 257, 'kills disease-causing viruses & germs'),
(691, 257, 'Total sanitisation of high-touch surfaces'),
(692, 258, 'Includes all areas of the car*'),
(693, 258, 'Hospital Grade chemicals used'),
(694, 258, 'kills disease-causing viruses & germs'),
(695, 258, 'Total sanitisation of high-touch surfaces'),
(696, 259, 'Includes all areas of the car*'),
(697, 259, 'Hospital Grade chemicals used'),
(698, 259, 'kills disease-causing viruses & germs'),
(699, 259, 'Total sanitisation of high-touch surfaces'),
(700, 260, 'Includes all areas of the car*'),
(701, 260, 'Hospital Grade chemicals used'),
(702, 260, 'kills disease-causing viruses & germs'),
(703, 260, 'Total sanitisation of high-touch surfaces'),
(704, 261, 'Maintains essential hygiene & cleanliness'),
(705, 261, 'Clears tiles & fittings of frequent scaling & water marks'),
(706, 261, 'Extensive cleaning of WC, wash basin, mirror, geyser & exhaust fan'),
(707, 261, 'Hygienic service. Everytime.'),
(708, 262, 'Enhances shine of floors & tiles'),
(709, 262, 'Spotless tiles & fittings'),
(710, 262, 'Deep cleaning of WC, wash basin, mirror, geyser & exhaust fan'),
(711, 262, 'Hygienic service. Everytime.'),
(712, 263, 'Enhances shine of floors & tiles'),
(713, 263, 'Spotless tiles & fittings'),
(714, 263, 'Deep cleaning of WC, wash basin, mirror, geyser & exhaust fan'),
(715, 263, 'Hygienic service. Everytime.'),
(716, 264, 'Spic & span cleaning of dirt & grime'),
(717, 264, 'Boosts shine of tiles, fittings and more'),
(718, 264, '360* intensive cleaning of WC, wash basin, mirror, geyser & exhaust fan'),
(719, 264, 'Hygienic service. Everytime.'),
(720, 265, 'Spic & span cleaning of dirt & grime'),
(721, 265, 'Boosts shine of tiles, fittings and more'),
(722, 265, '360* intensive cleaning of WC, wash basin, mirror, geyser & exhaust fan'),
(723, 265, 'Hygienic service. Everytime.'),
(724, 266, 'Exterior degreasing & other stains removal'),
(725, 266, 'Mesh & basic filter cleaning'),
(726, 266, 'Exhaust fan cleaning'),
(727, 266, 'Chimney dismantling & interior duct/carbon filters cleaning not included'),
(728, 267, 'Deep cleaning of fridge interiors & exteriors'),
(729, 267, 'Dry cleaning of the back side'),
(730, 268, 'Cleaning of stove, sink, tiles, slabs, shelves & drawers'),
(731, 268, 'Includes exhaust fan, windows, ceiling fan & floor cleaning'),
(732, 269, 'Cleaning of stove, sink, tiles, slabs, shelves & drawers'),
(733, 269, 'Includes exhaust fan, windows, ceiling fan & floor cleaning'),
(734, 270, 'Removal of all dust deposits & other stains that accumulate everyday at the bottom & in corners'),
(735, 270, 'Hygienic service. Everytime.'),
(736, 271, 'Deep cleaning of all modular trolleys, shelves, racks & drawers'),
(737, 271, 'Hygienic service. Everytime.'),
(738, 272, 'Cleaning of stove, sink, tiles, slabs, shelves & drawers'),
(739, 272, 'Includes exhaust fan, windows, ceiling fan & floor cleaning'),
(740, 273, 'Cleaning of gas stove, sink, tiles, slabs & shelves'),
(741, 273, 'Includes exhaust fan, windows, ceiling fan & floor cleaning'),
(742, 273, 'Deep cleaning of all appliances'),
(743, 273, 'Hygienic service. Everytime.'),
(744, 274, 'Cleaning of gas stove, sink, tiles, slabs & shelves'),
(745, 274, 'Includes exhaust fan, windows, ceiling fan & floor cleaning'),
(746, 274, 'Deep cleaning of all appliances'),
(747, 274, 'Hygienic service. Everytime.'),
(748, 275, 'Cleaning of stove, sink, tiles, slabs, shelves & drawers'),
(749, 275, 'Includes exhaust fan, windows, ceiling fan & floor cleaning'),
(750, 275, 'Includes removal & placing back of utensils in kitchen'),
(751, 275, 'Hygienic service. Everytime.'),
(752, 276, 'Cleaning of gas stove, tiles, slabs & shelves'),
(753, 276, 'Exterior degreasing of exhaust fan'),
(754, 276, 'Disinfection of kitchen floor'),
(755, 276, 'Chimney degreasing and filter cleaning'),
(756, 277, 'Cleaning of stove, sink, tiles, slabs, shelves & drawers'),
(757, 277, 'Includes exhaust fan, windows, ceiling fan & floor cleaning'),
(758, 278, 'Cleaning of stove, sink, tiles, slabs, shelves & drawers'),
(759, 278, 'Includes exhaust fan, windows, ceiling fan & floor cleaning'),
(760, 279, 'Exterior degreasing & other stains removal'),
(761, 279, 'Mesh & basic filter cleaning'),
(762, 280, 'Deep cleaning of fridge interiors & exteriors'),
(763, 280, 'Dry cleaning of the back side'),
(764, 281, 'Step 1 : Dry vacuuming of dust particles'),
(765, 281, 'Step 2 : Wash with specialized fabric shampoo'),
(766, 281, 'Step 3 : Wet vacuuming to remove all dirt and grime'),
(767, 281, 'Takes 3-4 hours to dry'),
(768, 282, 'STRESS RELIEF SWEDISH THERAPY - Stress Relief Swedish Therapy (60 mins)'),
(769, 282, 'It reduces fatigue, improves sleep cycle and balances the natural body energy.'),
(770, 283, 'PAIN RELIEF DEEP TISSUE THERAPY - Pain Relief Deep Tissue Therapy (60 mins)'),
(771, 283, 'Popular among athletes as it helps in healing sports injuries & post-surgery rehabilitation'),
(772, 284, 'Medium Pressure Full Body Therapy of 60 Mins'),
(773, 284, 'Focused 20 mins of Head & Shoulder Therapy'),
(774, 284, 'Recommended For : Stress, Exhaustion, Headaches'),
(775, 284, 'Benefits: Stress Relief, Muscle relaxation, Pain relief'),
(776, 285, 'Medium Pressure Full Body Therapy for 60 mins'),
(777, 285, 'Focused 40 mins of head, shoulder & foot Therapy'),
(778, 285, 'Recommended For : Stress, Fatigue, Exhaustion, Body Pain'),
(779, 285, 'Benefits: Overall Wellness, improves mobility , Pain relief'),
(780, 286, 'Medium Pressure Full Body Therapy for 60 mins'),
(781, 286, 'Focused 20 mins of Foot Reflexology'),
(782, 286, 'Recommended For : Stress, Anxiety, Fatigue & Joint Pain'),
(783, 286, 'Benefits: Stress Relief, Increased Concentration, Focus, Better Sleep'),
(784, 287, 'Intensive Massage, Covers : Neck, shoulder & complete back'),
(785, 287, 'Recommended for: Stiff Muscles, Back Aches'),
(786, 287, 'Benefits: Reduces Muscle Stiffness, Eases Tension, Improves Blood Circulation,'),
(787, 287, 'Intensive therapy that will stimulate your mind & body'),
(788, 288, 'Recommended For : Exhaustion, Busy schedule, Bad posture'),
(789, 288, 'Benefits: Stress relief, improves energy'),
(790, 288, 'Massage bed is not included for this service'),
(791, 288, 'Do not consume a heavy meal for atleast 2 hours before the therapy'),
(792, 289, 'Recommended For : Exhaustion, Busy schedule, bad posture'),
(793, 289, 'Benefits: Stress relief, improves energy'),
(794, 289, 'Massage bed is not included for this service'),
(795, 289, 'Relieves muscle tension by concentrating on upper body areas.'),
(796, 290, 'A wholesome massage to release upper body exhaustion and provides eye care'),
(797, 290, 'Recommended for: Bad Posture, Puffy Eyes, Busy Schedule'),
(798, 290, 'Benefits: Improves Efficiency, Pain Relief, Reduces Eye Strain, Improves Blood Circulation'),
(799, 291, 'Intensive Foot Massage'),
(800, 291, 'Recommended for: Sore Feet, Internal Muscular Blockages'),
(801, 291, 'Benefits: Focusses on Energy Points of Foot, Improves Blood Circulation,'),
(802, 291, 'Works on the energy points to tone, stimulate and balance the internal organs & body systems'),
(803, 292, 'Relieves stress'),
(804, 292, 'Cooling Oil'),
(805, 293, 'Treats muscle knots'),
(806, 293, 'Reduces shoulder pain'),
(807, 294, 'Intensive Foot Massage'),
(808, 294, 'Recommended for: Sore Feet, Internal Muscular Blockages'),
(809, 294, 'Benefits: Focusses on Energy Points of Foot, Improves Blood Circulation,'),
(810, 294, 'Works on the energy points to tone, stimulate and balance the internal organs & body systems'),
(811, 295, 'Care treatment to relieve strained and puffy eyes'),
(812, 295, 'Recommended for: Puffy/Strained eyes, High screen time, Dark circles, Dry Eyes'),
(813, 295, 'Benefits: Improves Efficiency, Pain Relief, Reduces Eye Strain, Improves Blood Circulation'),
(814, 296, 'STRESS RELIEF SWEDISH MASSAGE - Stress Relief Swedish Massage (60 mins)'),
(815, 296, 'Focuses on pressure points that relieves muscle tension & reinforcing your oxygen level in the blood'),
(816, 297, 'Light Pressure Full Body Therapy'),
(817, 297, 'Recommended For : Stress , Headaches, Sore muscles'),
(818, 297, 'Benefits: Complete mental relaxation , Enhanced mood'),
(819, 297, 'The aroma from essential aromatic oils will stimulate your mind and ease stress'),
(820, 298, 'PAIN RELIEF DEEP TISSUE THERAPY - Pain Relief Deep Tissue Therapy (60 mins)'),
(821, 298, 'Focuses on pressure points that relieves muscle tension & reinforcing your oxygen level in the blood'),
(822, 299, 'Light Pressure therapy with body scrub'),
(823, 299, '20 Mins Body Scrub, 20 Mins Face Massage and 20 Mins Head Massage'),
(824, 299, 'Massage bed included'),
(825, 299, 'Recommended for : Skin exfoliation & cleansing, Stress & Headaches, Dehydration & dullness skin'),
(826, 300, 'Benefits- Exfoliates the Skin, gives a natural glow, improves circulation & boosts energy'),
(827, 300, 'Scrub Variants: Cocoa butter, Aloe Vera & Coffee'),
(828, 301, 'Medium Pressure Full Body Therapy of 60 Mins'),
(829, 301, 'Focused 20 mins of Head & Shoulder Therapy'),
(830, 301, 'Recommended For : Stress, Exhaustion, Headaches'),
(831, 301, 'Benefits: Stress Relief, Muscle relaxation, Pain relief'),
(832, 302, 'Medium Pressure Full Body Therapy for 60 mins'),
(833, 302, 'Focused 40 mins of head, shoulder & foot Therapy'),
(834, 302, 'Use Case: Stress, Fatigue, Exhaustion, Body Pain'),
(835, 302, 'Benefits: Overall Wellness, improves mobility , Pain relief'),
(836, 303, 'Medium Pressure Full Body Therapy for 60 mins'),
(837, 303, 'Focused 20 mins of Foot Reflexology'),
(838, 303, 'Recommended For : Stress, Anxiety, Fatigue & Joint Pain'),
(839, 303, 'Benefits: Stress Relief, Increased Concentration, Focus, Better Sleep'),
(840, 304, 'Medium Pressure Therapy with body Scrub'),
(841, 304, 'Recommended For : Skin Cleansing, Muscle Pain & Relaxation'),
(842, 304, 'Benefits: Skin Glow, remove toxins, Better circulation'),
(843, 304, 'Scrub Variants: Cocoa butter, Aloe Vera & Coffee'),
(844, 305, 'Intensive Massage Therapy'),
(845, 305, 'Recommended for: Stiff Muscles, Upper Body Aches, Sore Feet'),
(846, 305, 'Benefits: Reduces Muscle Stiffness, Eases Tension, Improves Blood Circulation,'),
(847, 305, 'Covers, Head, Neck, shoulder, complete back & Foot.'),
(848, 306, 'Intensive Massage, Covers : Neck, shoulder & complete back'),
(849, 306, 'Recommended for: Stiff Muscles, Back Aches'),
(850, 306, 'Benefits: Reduces Muscle Stiffness, Eases Tension, Improves Blood Circulation,'),
(851, 307, 'Revitalizes scalp'),
(852, 307, 'Helps reduce tension headaches by relaxing muscle spasms.'),
(853, 308, 'De-stressing massage'),
(854, 308, 'Eases upper body tensions'),
(855, 309, 'Intensive Foot Massage'),
(856, 309, 'Recommended for: Sore Feet, Internal Muscular Blockages'),
(857, 309, 'Benefits: Releases Blockages, Restores balance, Focusses on Energy Points of Foot, Improves Blood Circulation,'),
(858, 310, 'Focus on blood circulation'),
(859, 310, 'Relaxes & Tones facial muscle'),
(860, 311, 'Medium Pressure Full Body Scrub'),
(861, 311, 'Exfoliates dead skin cells & gives the skin a glowing look'),
(862, 312, 'Care treatment to relieve strained and puffy eyes'),
(863, 312, 'Recommended for: Puffy/Strained eyes, High screen time, Dark circles, Dry Eyes');
INSERT INTO `blog_points` (`blog_point_id`, `blog_id`, `blog_point`) VALUES
(864, 312, 'Benefits: Improves Efficiency, Pain Relief, Reduces Eye Strain, Improves Blood Circulation'),
(865, 313, '1 free revisit up to 90 days if the same issue re-occurs'),
(866, 313, '90-day warranty on replaced spare part(s)'),
(867, 313, 'Rs. 10,000 protection against damages done if any during service delivery'),
(868, 314, 'You and your family should maintain a safe distance during your AC service'),
(869, 314, 'Please ensure you are preferably in a different room & follow social distancing norms to make this a low-contact service'),
(870, 315, 'Gas charging should ideally be done outdoors'),
(871, 315, 'Cooling gas used in your AC is highly flammable'),
(872, 316, 'Inform the technicians of any recent repairs that might have taken place on the AC unit'),
(873, 316, 'Our technicians will ensure that the equipment & surfaces are sanitized post the service'),
(874, 317, '1 free revisit up to 90 days if the same issue re-occurs'),
(875, 317, '90-day warranty on replaced spare part(s)'),
(876, 317, 'Rs. 10,000 protection against damages done if any during service delivery'),
(877, 318, 'You and your family should maintain a safe distance during your AC service'),
(878, 318, 'Please ensure you are preferably in a different room & follow social distancing norms to make this a low-contact service'),
(879, 319, 'Gas charging should ideally be done outdoors'),
(880, 319, 'Cooling gas used in your AC is highly flammable'),
(881, 320, 'Inform the technicians of any recent repairs that might have taken place on the AC unit'),
(882, 320, 'Our technicians will ensure that the equipment & surfaces are sanitized post the service'),
(883, 321, 'Our Powerjet AC Servicing ensures better cooling'),
(884, 321, 'Also improves machine life and saves electricity'),
(885, 322, 'Our Powerjet AC Servicing ensures better cooling'),
(886, 322, 'Also improves machine life and saves electricity'),
(887, 323, 'Our professionals will visit your home and diagnose the issue. Final repair cost will be provided after the Check Up.'),
(888, 323, 'Inspection Fee of Rs 299 will be further adjusted in your final bill value'),
(889, 324, 'Our professionals will visit your home and diagnose the issue. Final repair cost will be provided after the Check Up.'),
(890, 324, 'Inspection Fee of Rs 299 will be further adjusted in your final bill value'),
(891, 325, 'Our professionals will visit your home and diagnose the issue. Final repair cost will be provided after the Check Up.'),
(892, 325, 'Inspection Fee of Rs 299 will be further adjusted in your final bill'),
(893, 326, 'Final price for repairs post diagnosis'),
(894, 326, 'pare Part (s) cost extra. Price as per rate card'),
(895, 327, 'Final price for repairs post diagnosis'),
(896, 327, 'Spare Part (s) cost extra. Price as per rate card'),
(897, 328, 'Final price for repairs post diagnosis'),
(898, 328, 'Spare Part (s) cost extra. Price as per rate card'),
(899, 329, 'Final price for repairs post diagnosis'),
(900, 329, 'Spare Part(s) cost extra. Price as per rate card'),
(901, 330, 'Final price for repairs post diagnosis'),
(902, 330, 'Spare Part(s) cost extra. Price as per rate card'),
(903, 331, 'Final price for repairs post diagnosis'),
(904, 331, 'Spare Part(s) cost extra. Price as per rate card'),
(905, 332, 'Combo pack of most commonly replaced Filters + Membrane'),
(906, 332, 'Recommended once a year; includes installation of filters'),
(907, 333, 'All Spare Parts are UC Branded and of the best quality'),
(908, 333, 'Pack includes Pre & Post Carbon Filters, Sediment Filter, Spun Filter & Membrane'),
(909, 334, 'Purchase a combo pack of most commonly replaced Filters'),
(910, 334, 'Recommended once in 6 months; includes installation of filters'),
(911, 335, 'All Spare Parts are Branded and of the best quality'),
(912, 335, 'Pack includes Pre Carbon Filter, Post Carbon Filter, Sediment Filter, Spun Filter'),
(913, 336, 'Our professionals will visit your home and diagnose the issue. Final repair cost will be provided after the Check Up.'),
(914, 336, 'Inspection Fee of Rs 299 will be further adjusted in your final bill'),
(915, 337, 'PLEASE SELECT YOUR ISSUE - Fan Not Working'),
(916, 338, 'Cleaning of outer surface, mesh, and inside surface of the mesh with cleaning solutions to wipe the oil'),
(917, 338, '1.Mesh and Basic Filter Cleaning 2. Exterior and Interior surface degreasing and other stains removal'),
(918, 339, 'Chimney will be dismantled and every part will be cleaned by cleaning solutions and will be installed back by the professional'),
(919, 340, 'Installation and assembling of a chimney , pay per chimney'),
(920, 340, 'Includes fitting the product and Excludes core cutting or any civil work.'),
(921, 341, 'Any alterations at the site for installation may be chargeable. If any additional kit or part is required, extra charges will apply.'),
(922, 341, 'Hygienic service. Everytime.'),
(923, 342, 'PLEASE SELECT YOUR ISSUE - Fan Not Working'),
(924, 343, 'Chimney will be dismantled and every part will be cleaned by cleaning solutions and will be installed back by the professional'),
(925, 344, 'Installation and assembling of a chimney , pay per chimney'),
(926, 344, 'Includes fitting the product and Excludes core cutting or any civil work.'),
(927, 345, 'Any alterations at the site for installation may be chargeable. If any additional kit or part is required, extra charges will apply.'),
(928, 345, 'Hygienic service. Everytime.'),
(929, 346, 'Uninstalling and deassembling of a chimney , pay per chimney'),
(930, 347, 'Cleaning of outer surface, mesh, and inside surface of the mesh with cleaning solutions to wipe the oil'),
(931, 347, 'Inspection of all parts of Chimney'),
(932, 348, 'Chimney will be dismantled and every part will be cleaned by cleaning solutions and will be installed back by the professional'),
(933, 348, 'Inspection of all parts of Chimney'),
(934, 349, 'Cleaning of outer surface, mesh, and inside surface of the mesh with cleaning solutions to wipe the oil'),
(935, 349, 'Inspection of all parts of Chimney'),
(936, 350, 'Ensures faster heating and longer machine life'),
(937, 350, 'Helps save electricity and protects against skin allergies'),
(938, 350, 'Includes thorough cleaning of geyser and descaling'),
(939, 350, 'It is advised to get your Geyser serviced at least once a year to ensure its long life'),
(940, 351, 'PLEASE SELECT YOUR ISSUE - No/Low Heating'),
(941, 351, 'Our professionals will visit your home and diagnose the issue. Final repair cost will be provided after the Check Up'),
(942, 352, 'Spare part changes cost extra'),
(943, 352, 'Rates applicable as per rate card'),
(944, 353, 'Spare part changes cost extra'),
(945, 353, 'Rates applicable as per rate card'),
(946, 354, 'Can hear the sound but no display'),
(947, 354, 'Average charges (upto 46 inches) :₹1,000-₹4,500'),
(948, 355, 'Can only see one half of the screen'),
(949, 355, 'Average Charges (upto 46 inches) :₹550-₹3000'),
(950, 356, 'Seeing vertical/horizontal lines on my TV display'),
(951, 356, 'Average charges (upto 46 inches) :₹550-₹4500'),
(952, 357, 'Can see distorted colors'),
(953, 357, 'Average charges (upto 46 inches) :₹600-₹3500'),
(954, 358, 'Screen is flickering or moving in slow motion'),
(955, 358, 'Average charges (upto 46 inches) :₹1000-₹3500'),
(956, 359, 'Can see black spots on the screen'),
(957, 359, 'Average charges (upto 46 inches) :₹1000-₹3000'),
(958, 360, 'Can see blurred images'),
(959, 360, 'Average charges (upto 46 inches) :₹550-₹3500'),
(960, 361, 'Average charges (upto 46 inches) :₹600-₹4500'),
(961, 361, 'Pricing will be according to inspection'),
(962, 362, 'Low sound inspite of increasing TV volume'),
(963, 362, 'Average charges (upto 46 inches) :₹1500-₹4500'),
(964, 363, 'Can hear a buzzing/vibrating/crackling sound'),
(965, 363, 'Average charges (upto 46 inches) :₹1500-₹4500'),
(966, 364, 'TV is dead'),
(967, 364, 'Average charges (upto 46 inches) :₹900-₹3000'),
(968, 365, 'Includes complete cleaning of air cooler'),
(969, 365, 'Servicing does not include repair of broken parts'),
(970, 366, 'Diagnosis and repair of Fan Motor'),
(971, 366, 'The Visiting charges will be adjusted against the final bill'),
(972, 367, 'Visiting charges for complete diagnosis'),
(973, 367, 'Parts will be replaced only if necessary and spare parts will be charged extra'),
(974, 367, 'The Visiting charges will be adjusted against the final bill'),
(975, 368, 'Only includes labour charge'),
(976, 368, 'Cost of grass pads extra'),
(977, 369, 'Only includes labour charge'),
(978, 369, 'Cost of water pump is extra'),
(979, 370, 'Only includes labour charge'),
(980, 370, 'Cost of cooler fan is extra'),
(981, 371, 'Includes only 1 switchboard'),
(982, 372, 'Includes only 1 switchboard'),
(983, 372, 'Suitable for Upto 6 switches'),
(984, 373, 'Includes only 1 switchboard'),
(985, 373, 'Low-Contact Service : Technicians wear masks, and follow social distancing norms'),
(986, 374, 'Fans with inbuilt light and music'),
(987, 374, 'Technicians wear masks, and follow social distancing norms'),
(988, 375, 'Ceiling, Exhaust or Wall Fan'),
(989, 375, 'Decorative fan installation charged separately'),
(990, 376, 'Coil repair and Ball Bearings replaced in shop if required'),
(991, 376, 'Additional charges for coil repair ₹369 if done.'),
(992, 376, 'Additional charges for ball bearings replacement ₹269 if done.'),
(993, 376, 'Technicians wear masks, and follow social distancing norms'),
(994, 377, 'Ceiling,Exhaust or Wall Fan'),
(995, 377, 'Technicians wear masks and follow social distancing norms'),
(996, 378, 'Ceiling,Exhaust or Wall Fan'),
(997, 378, 'Technicians wear masks and follow social distancing norms'),
(998, 379, 'Replacement upto 5 bulbs'),
(999, 379, 'Excludes bulb holder'),
(1000, 380, 'Includes creating cavity & installing lock'),
(1001, 380, 'Technicians wear masks and follow social distancing norms'),
(1002, 381, 'Installation or Repair'),
(1003, 382, 'Includes Installation/replacement/repair'),
(1004, 382, 'Technicians wear masks and follow social distancing norms'),
(1005, 383, 'Single phase to 3 phase switch'),
(1006, 384, '2 Pole - ₹219'),
(1007, 384, '3 Pole - ₹269'),
(1008, 384, '4 Pole - ₹319'),
(1009, 384, 'Technicians wear masks and follow social distancing norms'),
(1010, 385, 'Wiring charges extra as per rate card'),
(1011, 385, 'Excludes main meter installation'),
(1012, 386, 'Wiring charges as per rate card'),
(1013, 386, 'Technicians wear masks and follow social distancing norms'),
(1014, 387, 'Wiring charges as per rate card'),
(1015, 387, 'Technicians wear masks and follow social distancing norms'),
(1016, 388, 'Cleaning & greasing'),
(1017, 388, 'Battery voltage check (repair done at shop)'),
(1018, 388, 'Distilled water top up (charges as applicable per bottle)'),
(1019, 388, 'Technicians wear masks and follow social distancing norms'),
(1020, 389, 'For geyser repair related issues visit Appliance Repair Section'),
(1021, 389, 'Technicians wear masks and follow social distancing norms'),
(1022, 390, 'For geyser repair related issues visit Appliance Repair Section'),
(1023, 390, 'Technicians wear masks and follow social distancing norms'),
(1024, 391, 'Open wiring from TV to speakers'),
(1025, 391, 'TV Installation as per rate card'),
(1026, 392, 'Includes concealed wiring for single connection'),
(1027, 392, 'Excludes masonry work for new wiring layout'),
(1028, 392, 'Includes wiring for a single connection'),
(1029, 392, 'Technicians wear masks and follow social distancing norms'),
(1030, 393, 'Includes wiring for a single connection'),
(1031, 393, 'Includes casing enclosures and capping'),
(1032, 393, 'Excludes internal wiring'),
(1033, 393, 'Includes wiring for a single connection'),
(1034, 394, 'Includes wiring for a single connection'),
(1035, 394, 'Excludes concealed/casing wiring'),
(1036, 394, 'Includes wiring for a single connection'),
(1037, 394, 'Technicians wear masks and follow social distancing norms'),
(1038, 395, 'Excludes wiring and box set up'),
(1039, 395, 'Excludes installation of video door bell'),
(1040, 396, 'Excludes wiring and box set up'),
(1041, 396, 'Excludes repair of video door bell'),
(1042, 397, 'Drilling two nails'),
(1043, 397, 'Anyone of painting, clock, photoframe'),
(1044, 397, 'Note: Not applicable for heavy objects'),
(1045, 397, 'Technicians wear masks and follow social distancing norms'),
(1046, 398, 'Best suited for Installation or Leakage'),
(1047, 398, 'For Installation or Leakage Issue'),
(1048, 399, 'Suitable for leakage under basin'),
(1049, 399, 'Any one of coupling or bottle trap repair'),
(1050, 399, 'Any one of coupling or bottle trap repair'),
(1051, 399, 'Technicians wear masks and follow social distancing norms'),
(1052, 400, 'Excludes granite sink installation'),
(1053, 400, 'Excludes masonry work'),
(1054, 401, 'Any one of tap or holder'),
(1055, 401, 'Technicians wear masks and follow social distancing norms'),
(1056, 402, 'Mainline blockage as per quotation'),
(1057, 402, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1058, 403, 'Includes sink, basin or external pipes'),
(1059, 403, 'Mainline blockage as per quotation'),
(1060, 404, 'Includes concealed wash basin pipe'),
(1061, 404, 'Mainline blockage as per quotation'),
(1062, 405, 'Mainline blockage as per quotation'),
(1063, 405, 'Technicians wear masks and follow social distancing norms'),
(1064, 406, 'For a faulty Diverter'),
(1065, 406, 'When tap is releasing luke warm water'),
(1066, 406, 'Leakage repair'),
(1067, 406, 'Technicians wear masks and follow social distancing norms'),
(1068, 407, 'Installation of tap to dummy pipe'),
(1069, 407, 'Technicians wear masks and follow social distancing norms'),
(1070, 408, 'Suggested when there is leakage in tap'),
(1071, 408, 'Suitable for fixing water leakage, dripping water, and other repairs'),
(1072, 409, 'Replacing old tap with a new tap'),
(1073, 409, 'Technicians wear masks and follow social distancing norms'),
(1074, 410, 'We specialize in installing nozzles of \"Altered\" brand'),
(1075, 410, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1076, 411, 'Flush not working'),
(1077, 411, 'Water not filling in flush tank'),
(1078, 411, 'Leakage Repair'),
(1079, 411, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1080, 412, 'Flush not working'),
(1081, 412, 'Water not filling in flush tank'),
(1082, 412, 'Leakage Repair'),
(1083, 412, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1084, 413, 'Installation or Repair'),
(1085, 413, 'Replacement to be done in case repair is not possible'),
(1086, 414, 'All common repairs related to ceramic flush tank'),
(1087, 414, 'Technicians wear masks and follow social distancing norms'),
(1088, 415, 'Includes Water Level Controller (Ball Valve) Replacement'),
(1089, 415, 'Technicians wear masks and follow social distancing norms'),
(1090, 416, 'For residential tanks only'),
(1091, 416, 'Technicians wear masks and follow social distancing norms'),
(1092, 417, 'For residential tanks only'),
(1093, 417, 'Technicians wear masks and follow social distancing norms'),
(1094, 418, 'For residential tanks only'),
(1095, 418, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1096, 419, 'For residential tanks only'),
(1097, 419, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1098, 420, 'Includes air cavity removal which is not subject to 30 day warranty'),
(1099, 420, 'Repair prices as per rate card'),
(1100, 420, 'Advised to book during Water Supply Timings'),
(1101, 420, 'Repair of motor excluded'),
(1102, 421, 'Excludes masonry work'),
(1103, 421, 'Technicians wear masks and follow social distancing norms'),
(1104, 422, 'Installation or Replacement'),
(1105, 422, 'Technicians wear masks and follow social distancing norms'),
(1106, 423, 'Installation or Replacement'),
(1107, 423, 'Excludes new pipe inlet outlet installation set up. Excludes Masonry work'),
(1108, 424, 'Consultation involves in-depth on-site assessment'),
(1109, 424, 'Followed by understanding your color and paint preferences'),
(1110, 424, 'Basis your inputs, the consultant will share customized quotation(s)'),
(1111, 424, 'Affordable and value for money quotations'),
(1112, 425, 'Protection against seepage that results into fungus, mould, and peeling paint'),
(1113, 425, 'Improves the life of the wall, and the paint'),
(1114, 425, 'Basis your inputs, the consultant will share customized quotation(s)'),
(1115, 425, 'Affordable and value for money quotations'),
(1116, 426, 'Add depth & dimension to any wall in your house'),
(1117, 426, 'Lighten up your walls with textures that bring out the best in your house'),
(1118, 426, 'Basis your inputs, the consultant will share customized quotation(s)'),
(1119, 426, 'Affordable and value for money quotations'),
(1120, 427, 'Protection of metal and wooden surfaces against abrasion and damage from moisture'),
(1121, 427, 'Lends a glossy and sophisticated finish to all metal and wooden surfaces'),
(1122, 428, 'Basis your inputs, the consultant will share customized quotation(s)'),
(1123, 428, 'Affordable and value for money quotations'),
(1124, 429, 'Adds a touch of freshness and lends glossiness to dull pieces of furniture'),
(1125, 429, 'Consultation involves expert guidance on the type of wood polish required for your furniture'),
(1126, 430, 'Basis your inputs, the consultant will share customized quotation(s)'),
(1127, 430, 'Affordable and value for money quotations'),
(1128, 431, 'Add an aesthic touch to your home with a wide range of wallpaper and stencils'),
(1129, 431, 'Create an accent on your wall, experiment with designs, and patterns'),
(1130, 432, 'Basis your inputs, the consultant will share customized quotation(s)'),
(1131, 432, 'Affordable and value for money quotations'),
(1132, 433, 'Includes roof drilling'),
(1133, 433, 'Technicians wear masks, and follow social distancing norms'),
(1134, 434, 'Does not include roof drilling'),
(1135, 434, 'Technicians wear masks, and follow social distancing norms'),
(1136, 435, 'Includes repair of either single leg or headboard'),
(1137, 435, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1138, 436, 'Installation/Repair'),
(1139, 436, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1140, 437, 'Glass shelf installation using clamps'),
(1141, 437, 'Technicians wear masks and follow social distancing norms'),
(1142, 438, 'Any one of Latch,Chain,Stopper, Magnet'),
(1143, 438, 'Charge for single accessory'),
(1144, 438, 'Additional charges for multiple accessory installations'),
(1145, 438, 'Technicians wear masks and follow social distancing norms'),
(1146, 439, 'For wooden doors only'),
(1147, 439, 'Includes hinge installation, aldrop installation and wood chiseling'),
(1148, 439, 'Main Door Installation ₹1099'),
(1149, 439, 'Technicians wear masks and follow social distancing norms'),
(1150, 440, 'Wood Scraping'),
(1151, 440, 'Door Alignment and Minor Fixing'),
(1152, 440, 'Excludes main door'),
(1153, 440, 'excludes hinge replacement, door dismantling or any other lock repairs.'),
(1154, 441, 'Extra Rs.100 if door is dismantled'),
(1155, 441, 'Applicable only for one door set'),
(1156, 442, 'Includes creating cavity & installing lock'),
(1157, 442, 'Technicians wear masks and follow social distancing norms'),
(1158, 443, 'Replacing existing lock with a new lock'),
(1159, 443, 'Technicians wear masks and follow social distancing norms'),
(1160, 444, 'Excludes replacement of mesh/jaali'),
(1161, 444, 'Excludes metallic/aluminium door installation'),
(1162, 445, 'Excludes metallic/aluminium door'),
(1163, 445, 'Technicians wear masks and follow social distancing norms'),
(1164, 446, 'Excludes metallic/aluminium door'),
(1165, 446, 'Technicians wear masks and follow social distancing norms'),
(1166, 447, 'Drilling 2 nails'),
(1167, 447, 'Includes hanging any one of painting, clock or photoframe'),
(1168, 447, 'Not applicable for objects exceeding 5 kgs and 6 ft area (2x3 ft)'),
(1169, 447, 'We don\'t repair CRT, Plasma TV, PC Monitors & DTH'),
(1170, 448, 'Drilling 4 nails'),
(1171, 448, 'Includes hanging any one of painting, clock or photoframe'),
(1172, 448, 'Not applicable for objects exceeding 5 kgs and 6 ft area (2x3 ft)'),
(1173, 448, 'Technicians wear masks and follow social distancing norms'),
(1174, 449, 'Drilling 6 nails'),
(1175, 449, 'Includes hanging any one of painting, clock or photoframe'),
(1176, 449, 'Not applicable for objects exceeding 5 kgs and 6 ft area (2x3 ft)'),
(1177, 449, 'Technicians wear masks and follow social distancing norms'),
(1178, 450, 'Drilling 8 nails'),
(1179, 450, 'Includes hanging any one of painting, clock or photoframe'),
(1180, 450, 'Not applicable for objects exceeding 5 kgs and 6 ft area (2x3 ft)'),
(1181, 450, 'Technicians wear masks and follow social distancing norms'),
(1182, 451, 'Includes installation of any one - Towel hanger, Soap holder, Toilet paper holder'),
(1183, 451, 'Technicians wear masks and follow social distancing norms'),
(1184, 452, 'Wooden/Glass Shelf Installation using clamps'),
(1185, 452, 'Technicians wear masks and follow social distancing norms'),
(1186, 453, 'Wooden shelf installation using clamps'),
(1187, 453, 'Technicians wear masks and follow social distancing norms'),
(1188, 454, 'Bunk Bed Assembly at ₹ 449'),
(1189, 454, 'Hydraulic Storage Bed Assembly at ₹549'),
(1190, 454, 'Storage Bed assembly at ₹419'),
(1191, 454, 'Technicians wear masks and follow social distancing norms'),
(1192, 455, 'Modular furniture only'),
(1193, 455, 'Technicians wear masks and follow social distancing norms'),
(1194, 456, 'Modular furniture only'),
(1195, 456, 'Technicians wear masks and follow social distancing norms'),
(1196, 457, 'Exclude Chair assembly, if needed charges extra'),
(1197, 457, 'Technicians wear masks and follow social distancing norms'),
(1198, 458, 'Modular furniture only'),
(1199, 458, 'Technicians wear masks and follow social distancing norms'),
(1200, 459, '2 door, Upto 4 shelves or drawers'),
(1201, 459, 'Technicians wear masks and follow social distancing norms'),
(1202, 460, '3 door, Upto 4 shelves or drawers'),
(1203, 460, 'Technicians wear masks and follow social distancing norms'),
(1204, 461, 'Bunk Bed Dismantle at ₹419'),
(1205, 461, 'Hydraulic Bed Dismantle at ₹369'),
(1206, 462, 'Study Table, Shoe Rack,Dining Table'),
(1207, 462, 'Technicians wear masks and follow social distancing norms'),
(1208, 463, 'Includes installation of leg cap in upto 4 legs of the furniture'),
(1209, 463, 'Technicians wear masks and follow social distancing norms'),
(1210, 464, 'Includes fitting of up to 4 wheels'),
(1211, 464, 'Technicians wear masks and follow social distancing norms'),
(1212, 465, 'Includes wall mounting and alignment'),
(1213, 465, 'Provides best viewing experience'),
(1214, 466, 'Includes wall mounting and alignment'),
(1215, 466, 'Provides best viewing experience'),
(1216, 467, 'Measurement upto 10 curtain blinds'),
(1217, 467, 'Technicians wear masks and follow social distancing norms'),
(1218, 468, 'Extra charges for additional brackets at Rs. 70 per additional bracket'),
(1219, 468, 'Technicians wear masks and follow social distancing norms'),
(1220, 469, 'Extra charges for additional brackets at Rs. 70 per additional bracket'),
(1221, 469, 'Technicians wear masks and follow social distancing norms'),
(1222, 470, 'Wooden Panel Installation on window'),
(1223, 470, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1224, 471, 'Hinge assembly in 1 window set'),
(1225, 471, 'Technicians carry sanitizers and follow WHO hygiene guidelines'),
(1226, 472, 'Ensures faster heating and longer machine life'),
(1227, 472, 'Helps save electricity and protects against skin allergies'),
(1228, 472, 'Includes thorough cleaning of geyser and descaling'),
(1229, 472, 'We do not repair/service Gas Geysers'),
(1230, 473, 'PLEASE SELECT YOUR ISSUE - No/Low Heating'),
(1231, 473, 'We do not repair/service Gas Geysers'),
(1232, 474, 'Spare part changes cost extra'),
(1233, 474, 'Rates applicable as per rate card'),
(1234, 475, 'Spare part changes cost extra'),
(1235, 475, 'Rates applicable as per rate card'),
(1236, 476, 'Pro-Makeup: MAC, LA girl'),
(1237, 476, 'Basic Hairstyle: Straightening, Blow-dry, Curls'),
(1238, 476, 'Add-on options: Lashes, Saree Draping'),
(1239, 476, 'Hygienic service. Everytime.'),
(1240, 477, 'Pro Makeup with lashes: MAC, LA girl'),
(1241, 477, 'Advanced Hairstyle: Updo/Braids/Buns'),
(1242, 477, 'Add-on options: Saree Draping'),
(1243, 477, 'Hygienic service. Everytime.'),
(1244, 478, 'Add-on for False Eye Lashes'),
(1245, 478, 'Hygienic service. Everytime.'),
(1246, 479, 'HD Makeup + Hair + Complimentary Draping & Lashes'),
(1247, 479, 'HD Products Also Used: Huda Beauty, Bobbi Brown, MAC'),
(1248, 479, 'Customized Hair as per your choice'),
(1249, 479, 'Book for occasions like engagement, roka, sagan, cocktail party'),
(1250, 480, 'Complete Professional Makeup'),
(1251, 480, 'Products from: MAC, LA Girl'),
(1252, 480, 'Complementary False Lashes'),
(1253, 480, 'Add on: Draping (chargeable)'),
(1254, 481, 'Complete Professional Makeup'),
(1255, 481, 'Products from: MAC, LA Girl'),
(1256, 481, 'Complementary False Lashes'),
(1257, 481, 'Add on: Draping (chargeable)'),
(1258, 482, 'Complete Professional Makeup'),
(1259, 482, 'Products from: MAC, LA Girl'),
(1260, 482, 'Complementary False Lashes'),
(1261, 482, 'Add on: Draping (chargeable)'),
(1262, 483, 'Pro-Makeup & Advanced Hairstyle for 4'),
(1263, 483, 'Pro Makeup with lashes: MAC, LA girl'),
(1264, 483, 'Advanced Hairstyle: Updo/Braids/Buns'),
(1265, 483, 'Add-on options: Saree Draping'),
(1266, 484, 'Choose any hairstyle'),
(1267, 484, 'Straightening, blowout, and braids'),
(1268, 484, 'Limited time offer | Free draping with \'Only Hairstyle for 1\''),
(1269, 484, 'Hygienic service. Everytime.'),
(1270, 485, 'HD Makeup + Hair + Complimentary Draping & Lashes'),
(1271, 485, 'HD Products Also Used: Huda Beauty, Bobbi Brown, MAC'),
(1272, 485, 'Customized Hair as per your choice'),
(1273, 485, 'Book for occasions like engagement, roka, sagan, cocktail party'),
(1274, 486, 'HD Makeup + Hair + Complimentary Draping & Lashes'),
(1275, 486, 'HD Products Also Used: Huda Beauty, Bobbi Brown, MAC'),
(1276, 486, 'Customized Hair as per your choice'),
(1277, 486, 'Book for occasions like engagement, roka, sagan, cocktail party'),
(1278, 487, 'Complete Professional Makeup'),
(1279, 487, 'Products from: MAC, LA Girl'),
(1280, 487, 'Complementary False Lashes'),
(1281, 487, 'Add on: Draping (chargeable)'),
(1282, 488, 'Exclusive 2 step process to remove pests in 99% cases'),
(1283, 488, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1284, 488, 'Kills adults & new eggs over 15 days for relief'),
(1285, 488, 'Not useful for rats & lizards'),
(1286, 489, 'Exclusive 2 step process to remove pests in 99% cases'),
(1287, 489, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1288, 489, 'Kills adults & new eggs over 15 days for relief'),
(1289, 489, 'Not useful for rats & lizards'),
(1290, 490, 'Exclusive 2 step process to remove pests in 99% cases'),
(1291, 490, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1292, 490, 'Kills adults & new eggs over 15 days for relief'),
(1293, 490, 'Not useful for rats & lizards'),
(1294, 491, 'Exclusive 2 step process to remove pests in 99% cases'),
(1295, 491, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1296, 491, 'Kills adults & new eggs over 15 days for relief'),
(1297, 491, 'Not useful for rats & lizards'),
(1298, 492, 'Exclusive 2 step process to remove pests in 99% cases'),
(1299, 492, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1300, 492, 'Kills adults & new eggs over 15 days for relief'),
(1301, 492, 'Not useful for rats & lizards'),
(1302, 493, 'Exclusive 2 step process to remove pests in 99% cases'),
(1303, 493, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1304, 493, 'Kills adults & new eggs over 15 days for relief'),
(1305, 493, 'Not useful for rats & lizards'),
(1306, 494, 'Highly effective- kills adults in 1st visit, eggs & small ones in 2nd visit'),
(1307, 494, 'Spraying in 1st visit, gel in 2nd visit'),
(1308, 494, 'Not useful for rats & lizards'),
(1309, 494, 'Intensive process that reaches all the corners and nooks'),
(1310, 495, 'Exclusive 2 step process to remove pests in 99% cases'),
(1311, 495, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1312, 495, 'Kills adults & new eggs over 15 days for relief'),
(1313, 495, 'Not useful for rats & lizards'),
(1314, 496, 'Kills adults & new eggs over 15 days for relief'),
(1315, 496, 'Customer to remove clothing & bedsheets for washing'),
(1316, 497, 'Kills adults & new eggs over 15 days for relief'),
(1317, 497, 'Customer to remove clothing & bedsheets for washing'),
(1318, 498, 'Kills adults & new eggs over 15 days for relief'),
(1319, 498, 'Customer to remove clothing & bedsheets for washing'),
(1320, 499, 'Kills adults & new eggs over 15 days for relief'),
(1321, 499, 'Customer to remove clothing & bedsheets for washing'),
(1322, 500, 'Kills adults & new eggs over 15 days for relief'),
(1323, 500, 'Customer to remove clothing & bedsheets for washing'),
(1324, 501, 'Drilling of holes to be done basis inspection'),
(1325, 501, 'Infected walls/furniture to be treated'),
(1326, 502, 'Drilling of holes to be done basis inspection'),
(1327, 502, 'Infected walls/furniture to be treated'),
(1328, 503, 'Drilling of holes to be done basis inspection'),
(1329, 503, 'Infected walls/furniture to be treated'),
(1330, 504, 'Drilling of holes to be done basis inspection'),
(1331, 504, 'Infected walls/furniture to be treated'),
(1332, 505, 'Drilling of holes to be done basis inspection'),
(1333, 505, 'Infected walls/furniture to be treated'),
(1334, 506, 'Drilling of holes to be done basis inspection'),
(1335, 506, 'Infected walls/furniture to be treated'),
(1336, 507, 'Infected walls/furniture to be treated'),
(1337, 507, 'Drilling of holes to be done basis inspection'),
(1338, 508, 'Drilling of holes to be done basis inspection'),
(1339, 508, 'Infected walls/furniture to be treated'),
(1340, 509, 'Controls mosquitoes against dengue, Zika'),
(1341, 509, 'Kills mosquitoes on contact via spraying'),
(1342, 510, 'Controls mosquitoes against dengue, Zika'),
(1343, 510, 'Kills mosquitoes on contact via spraying'),
(1344, 511, 'Controls mosquitoes against dengue, Zika'),
(1345, 511, 'Kills mosquitoes on contact via spraying'),
(1346, 512, 'Controls mosquitoes against dengue, Zika'),
(1347, 512, 'Kills mosquitoes on contact via spraying'),
(1348, 513, 'Controls mosquitoes against dengue, Zika'),
(1349, 513, 'Kills mosquitoes on contact via spraying'),
(1350, 514, 'Controls mosquitoes against dengue, Zika'),
(1351, 514, 'Kills mosquitoes on contact via spraying'),
(1352, 515, 'Controls mosquitoes against dengue, Zika'),
(1353, 515, 'Kills mosquitoes on contact via spraying'),
(1354, 516, 'Controls mosquitoes against dengue, Zika'),
(1355, 516, 'Kills mosquitoes on contact via spraying'),
(1356, 517, 'Controls mosquitoes against dengue, Zika'),
(1357, 517, 'Kills mosquitoes on contact via spraying'),
(1358, 518, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1359, 518, '2 visits in 1st month, subsequently after 4 months for prevention'),
(1360, 518, 'Safe & odourless chemicals used'),
(1361, 518, 'Not useful for rats & lizards'),
(1362, 519, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1363, 519, '2 visits in 1st month, subsequently after 4 months for prevention'),
(1364, 519, 'Safe & odourless chemicals used'),
(1365, 519, 'Not useful for rats & lizards'),
(1366, 520, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1367, 520, '2 visits in 1st month, subsequently after 4 months for prevention'),
(1368, 520, 'Safe & odourless chemicals used'),
(1369, 520, 'Not useful for rats & lizards'),
(1370, 521, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1371, 521, '2 visits in 1st month, subsequently after 4 months for prevention'),
(1372, 521, 'Safe & odourless chemicals used'),
(1373, 521, 'Not useful for rats & lizards'),
(1374, 522, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1375, 522, '2 visits in 1st month, subsequently after 4 months for prevention'),
(1376, 522, 'Safe & odorless chemicals used'),
(1377, 522, 'Not useful for rats & lizards'),
(1378, 523, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1379, 523, '2 visits in 1st month, subsequently after 4 months for prevention'),
(1380, 523, 'Safe & odorless chemicals used'),
(1381, 523, 'Not useful for rats & lizards'),
(1382, 524, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1383, 524, '2 visits in 1st month, subsequently after 4 months for prevention'),
(1384, 524, 'Safe & odourless chemicals used'),
(1385, 524, 'Not useful for rats & lizards'),
(1386, 525, 'Protection from cockroaches, ants, spiders, beetles, silverfish & centipedes'),
(1387, 525, '2 visits in 1st month, subsequently after 4 months for prevention'),
(1388, 525, 'Safe & odourless chemicals used'),
(1389, 525, 'Not useful for rats & lizards'),
(1390, 526, 'One'),
(1391, 526, 'Two'),
(1392, 527, 'Three'),
(1393, 527, 'four');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(100) NOT NULL,
  `id` int(100) NOT NULL,
  `booking_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_slot` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_on` date NOT NULL,
  `payment_mode` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_status` int(100) NOT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_id` int(100) DEFAULT NULL,
  `unique_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coins` int(200) DEFAULT NULL,
  `partner_accept_booking` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_cancel_list`
--

CREATE TABLE `booking_cancel_list` (
  `booking_cancel_id` int(100) NOT NULL,
  `cancel_reason` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_cancel_list`
--

INSERT INTO `booking_cancel_list` (`booking_cancel_id`, `cancel_reason`, `booking_id`) VALUES
(46, 'Price Too High', 228),
(47, 'Price Too High', 228),
(48, 'no service', 228),
(49, 'Price Too High', 233),
(50, 'Price Too High', 234),
(51, 'Price Too High', 235),
(52, 'Price Too High', 236),
(53, 'Price Too High', 237),
(54, 'Price Too High', 238),
(55, 'Price Too High', 239),
(56, 'Price Too High', 241),
(57, 'Partner not receive call', 244),
(58, 'Price Too High', 246),
(59, 'Price Too High', 247),
(60, 'Price Too High', 249),
(61, 'Price Too High', 248),
(62, 'Price Too High', 254),
(63, 'Price Too High', 250),
(64, 'Price Too High', 250),
(65, 'Price Too High', 251),
(66, 'Price Too High', 252),
(67, 'Partner not receive call', 253),
(68, 'Price Too High', 256),
(69, 'Partner not receive call', 255),
(70, 'Price Too High', 259),
(71, 'Partner not receive call', 260),
(72, 'Price Too High', 257),
(73, 'Partner not receive call', 258),
(74, 'Price Too High', 261),
(75, 'Price Too High', 264),
(76, 'Partner not receive call', 262),
(77, 'Price Too High', 263),
(78, 'Partner not receive call', 265),
(79, 'Price Too High', 268),
(80, 'Partner not receive call', 266),
(81, 'Price Too High', 267),
(82, 'Price Too High', 269),
(83, 'Price Too High', 270),
(84, 'Price Too High', 271),
(85, 'Price Too High', 272),
(86, 'Price Too High', 273),
(87, 'Partner not receive call', 274),
(88, 'Partner not receive call', 275),
(89, 'Price Too High', 279),
(90, 'Price Too High', 282),
(91, 'Partner not receive call', 281),
(92, 'Price Too High', 280),
(93, 'Partner not receive call', 289),
(94, 'Price Too High', 283),
(95, 'Price Too High', 301),
(96, 'Price Too High', 302),
(97, 'Partner not receive call', 303),
(98, 'Price Too High', 304),
(99, 'Partner not receive call', 318),
(100, 'Price Too High', 317),
(101, 'Price Too High', 305),
(102, 'Price Too High', 306),
(103, 'Partner not receive call', 307),
(104, 'Partner not receive call', 316),
(105, 'Partner not receive call', 308),
(106, 'Price Too High', 309),
(107, 'Price Too High', 310),
(108, 'Partner not receive call', 311),
(109, 'Partner not receive call', 315),
(110, 'Price Too High', 312),
(111, 'Partner not receive call', 313),
(112, 'Partner not receive call', 314),
(113, 'Partner not receive call', 319),
(114, 'Price Too High', 320),
(115, 'Price Too High', 321),
(116, 'Price Too High', 322),
(117, 'Price Too High', 324),
(118, 'Price Too High', 325),
(119, 'Partner not receive call', 323),
(120, 'Partner not receive call', 326),
(121, 'Price Too High', 330),
(122, 'Partner not receive call', 327),
(123, 'Price Too High', 328),
(124, 'Price Too High', 329),
(125, 'Partner not receive call', 331),
(126, 'Partner not receive call', 332),
(127, 'Partner not receive call', 333),
(128, 'Price Too High', 334),
(129, 'Price Too High', 349),
(130, 'Partner not receive call', 350),
(131, 'Partner not receive call', 356),
(132, 'Partner not receive call', 364),
(133, 'Partner not receive call', 364),
(134, 'Partner not receive call', 381),
(135, 'Price Too High', 382),
(136, 'Partner not receive call', 383);

-- --------------------------------------------------------

--
-- Table structure for table `booking_cart`
--

CREATE TABLE `booking_cart` (
  `b_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_qty` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_coins`
--

CREATE TABLE `booking_coins` (
  `coins_id` int(100) NOT NULL,
  `coin_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_coins`
--

INSERT INTO `booking_coins` (`coins_id`, `coin_value`) VALUES
(1, '20');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `detail_id` int(100) NOT NULL,
  `service_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'service'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_list`
--

CREATE TABLE `cancellation_list` (
  `cancel_id` int(100) NOT NULL,
  `cancel_points` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancellation_list`
--

INSERT INTO `cancellation_list` (`cancel_id`, `cancel_points`) VALUES
(1, 'Price Too High'),
(2, 'Partner not receive call');

-- --------------------------------------------------------

--
-- Table structure for table `cart_addons`
--

CREATE TABLE `cart_addons` (
  `c_aid` int(11) NOT NULL,
  `addon_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(100) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_raise`
--

CREATE TABLE `complaint_raise` (
  `complaint_id` int(100) NOT NULL,
  `complaint_point` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint_raise`
--

INSERT INTO `complaint_raise` (`complaint_id`, `complaint_point`, `complaint_head`) VALUES
(1, 'product not delivered', 'Product'),
(2, 'Complaints', 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `country_code`
--

CREATE TABLE `country_code` (
  `id` int(11) NOT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country_code`
--

INSERT INTO `country_code` (`id`, `country_code`) VALUES
(1, '+91');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_value` int(100) NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `category_id`, `coupon_name`, `coupon_discount`, `coupon_code`, `coupon_image`, `begin_date`, `end_date`, `description`, `cart_value`, `created_at`, `updated_at`, `type`) VALUES
(18, '27', 'OFFER', '20', 'SALXSFXC', 'coupon/images/22-01-2020/220120121411pm-anonymous-512.png', '2020-01-22', '2021-02-27', 'New Year Offer', 50, '22-01-2020 12:14 pm', '15-12-20 11:51 pm', 'percentage'),
(23, '27', 'NEWYEAR', '100', 'SALU41IS', 'coupon/images/15-12-2020/151220115240pm-WhatsApp-Image-2020-12-15-at-11.09.10-PM.jpeg', '2020-12-15', '2021-01-31', 'New Year Offer', 500, '15-12-2020 11:52 pm', '19-12-20 03:01 pm', 'price'),
(24, '34', 'testing', '100', 'PAI9HIQT', 'images/store/eventbanner/02-01-2021/020121021403pm-image.PNG', '2021-01-02', '2021-02-06', 'vgfygvcgfhjbvhjk', 500, '02-01-2021 02:14 pm', 'N/A', 'price');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(100) NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `currency_symbol`) VALUES
(1, '₹');

-- --------------------------------------------------------

--
-- Table structure for table `faq_ans`
--

CREATE TABLE `faq_ans` (
  `faq_ans_id` int(100) NOT NULL,
  `faq_cat_id` int(100) NOT NULL,
  `faq_ans` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_desc_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_ans`
--

INSERT INTO `faq_ans` (`faq_ans_id`, `faq_cat_id`, `faq_ans`, `faq_desc_id`) VALUES
(77, 10, '1. Search the category you need', 28),
(78, 10, '2. Open the category& follow the instruction as you go forward', 28),
(79, 11, 'Use debit Card', 29),
(80, 11, 'Use Net Banling', 29);

-- --------------------------------------------------------

--
-- Table structure for table `faq_category`
--

CREATE TABLE `faq_category` (
  `faq_cat_id` int(100) NOT NULL,
  `faq_category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_desc`
--

CREATE TABLE `faq_desc` (
  `faq_desc_id` int(100) NOT NULL,
  `faq_cat_id` int(100) DEFAULT NULL,
  `faq_qus` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_desc`
--

INSERT INTO `faq_desc` (`faq_desc_id`, `faq_cat_id`, `faq_qus`) VALUES
(28, 10, 'How to Book a Service ?'),
(29, 11, 'A guide to service');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `img_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmap_key`
--

CREATE TABLE `gmap_key` (
  `map_id` int(100) NOT NULL,
  `map_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gmap_key`
--

INSERT INTO `gmap_key` (`map_id`, `map_key`) VALUES
(1, 'AIzagvhbhhbbhbhbhbhhbv');

-- --------------------------------------------------------

--
-- Table structure for table `hygine_price`
--

CREATE TABLE `hygine_price` (
  `price_id` int(11) NOT NULL,
  `child_category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hygine_price`
--

INSERT INTO `hygine_price` (`price_id`, `child_category_id`, `price`) VALUES
(1, 41, 101),
(2, 459, 99);

-- --------------------------------------------------------

--
-- Table structure for table `lower_banner`
--

CREATE TABLE `lower_banner` (
  `banner_id` int(100) NOT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_plan`
--

CREATE TABLE `membership_plan` (
  `plan_id` int(100) NOT NULL,
  `coins` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership_plan`
--

INSERT INTO `membership_plan` (`plan_id`, `coins`, `coin_price`) VALUES
(13, '5000', '5000'),
(14, '500', '500'),
(15, '1000', '1000'),
(17, '2000', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `membership_user`
--

CREATE TABLE `membership_user` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `plan_id` int(100) NOT NULL,
  `created_at` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `membership_user`
--

INSERT INTO `membership_user` (`id`, `user_id`, `plan_id`, `created_at`, `start_date`, `end_date`) VALUES
(6, 1, 1, '2019-11-19 10:41:40', '20-11-2019', '20-11-2019'),
(7, 4, 3, '2019-11-19 11:10:12', '19-11-2019', '17-11-2019');

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `partner_id` int(100) NOT NULL,
  `partner_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `partner_profesion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(100) DEFAULT NULL,
  `partner_image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(100) NOT NULL DEFAULT 0,
  `device_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coins` int(100) NOT NULL DEFAULT 0,
  `city__id` int(100) DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `range` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_city_stat` int(100) DEFAULT NULL,
  `otp_value` int(100) DEFAULT NULL,
  `otp_status` int(100) DEFAULT NULL,
  `upi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_cat_id` int(100) DEFAULT NULL,
  `child_cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner_bank`
--

CREATE TABLE `partner_bank` (
  `bank_id` int(100) NOT NULL,
  `partner_id` int(100) NOT NULL,
  `holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_bank`
--

INSERT INTO `partner_bank` (`bank_id`, `partner_id`, `holder_name`, `acc_no`, `ifsc_code`, `image`) VALUES
(30, 105, 'csvshsbs', '123456', 'svsjjah28', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `partner_city`
--

CREATE TABLE `partner_city` (
  `city_id` int(200) NOT NULL,
  `city_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_slug` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner_documentation`
--

CREATE TABLE `partner_documentation` (
  `partner_doc_id` int(100) NOT NULL,
  `identify_proof` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voter_card_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_o_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_o` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_add` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_documentation`
--

INSERT INTO `partner_documentation` (`partner_doc_id`, `identify_proof`, `front_image`, `back_image`, `voter_card_number`, `gender`, `d_o_b`, `c_o`, `permanent_add`, `partner_id`) VALUES
(60, 'GST Details', '/public/images/user/profile/280121174136user_profile.png', '/public/images/user/profile/280121174136user_profile.png', '8787979797', 'svshhs', '11-01-2011', 'dvbssjsk', 'svvsbsns', 105);

-- --------------------------------------------------------

--
-- Table structure for table `partner_earning`
--

CREATE TABLE `partner_earning` (
  `earn_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `total_paid` int(255) NOT NULL,
  `last_paid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner_gst`
--

CREATE TABLE `partner_gst` (
  `gst_id` int(100) NOT NULL,
  `gst_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_gst`
--

INSERT INTO `partner_gst` (`gst_id`, `gst_name`, `gst_no`, `partner_id`) VALUES
(29, 'evghdusjs', '8787979797', 105);

-- --------------------------------------------------------

--
-- Table structure for table `payout_request`
--

CREATE TABLE `payout_request` (
  `payout_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `payout_amount` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payout_requests`
--

CREATE TABLE `payout_requests` (
  `req_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `booking_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` date NOT NULL,
  `upi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complete` int(11) NOT NULL DEFAULT 0,
  `booking_date` date NOT NULL,
  `booking_coins` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payout_requests`
--

INSERT INTO `payout_requests` (`req_id`, `booking_id`, `partner_id`, `booking_price`, `request_date`, `upi`, `complete`, `booking_date`, `booking_coins`) VALUES
(2, 278, 70, '699', '2020-12-23', 'padmanabham@okpnb', 1, '2020-12-21', '70'),
(3, 277, 70, '699', '2020-12-23', 'padmanabham@okpnb', 1, '2020-12-21', '70'),
(4, 284, 70, '99', '2020-12-24', 'padmanabham@okpnb', 1, '2020-12-22', '20'),
(5, 287, 70, '100', '2020-12-24', 'padmanabham@okpnb', 1, '2020-12-23', '20'),
(6, 288, 70, '100', '2020-12-24', 'padmanabham@okpnb', 1, '2020-12-23', '20');

-- --------------------------------------------------------

--
-- Table structure for table `previous_user_membership_table`
--

CREATE TABLE `previous_user_membership_table` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `plan_id` int(100) NOT NULL,
  `start_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `previous_user_membership_table`
--

INSERT INTO `previous_user_membership_table` (`id`, `user_id`, `plan_id`, `start_date`, `end_date`, `created_at`) VALUES
(9, 1, 1, '19-11-2019', '15-11-2019', '2019-11-20 05:40:39'),
(10, 1, 1, '19-11-2019', '15-11-2019', '2019-11-20 05:43:40'),
(11, 1, 1, '19-11-2019', '15-11-2019', '2019-11-20 05:52:45'),
(12, 1, 1, '19-11-2019', '15-11-2019', '2019-11-20 06:03:15'),
(13, 1, 1, '19-11-2019', '15-11-2019', '2019-11-20 06:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `raffle_card`
--

CREATE TABLE `raffle_card` (
  `id` int(100) NOT NULL,
  `card_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raffle_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_coin` int(200) NOT NULL,
  `trade_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_coins` int(100) NOT NULL,
  `max_coins` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raffle_card`
--

INSERT INTO `raffle_card` (`id`, `card_name`, `start_time`, `end_time`, `raffle_img`, `entry_coin`, `trade_url`, `min_coins`, `max_coins`) VALUES
(8, 'Amazon Gift Card', '09:00', '00:00', 'images/store/eventbanner/271119114806am-c76e70688cf1157f43dfd49fc143510d.jpg', 1200, NULL, 0, 0),
(9, 'ak47 elite', '13:30', '13:30', 'images/store/eventbanner/271119012015pm-Screenshot.png', 1000, NULL, 0, 0),
(10, 'zsxdcfgvhbjn', '04:30', '10:30', 'images/store/eventbanner/021219053313am-c76e70688cf1157f43dfd49fc143510d.jpg', 1200, NULL, 10, 56);

-- --------------------------------------------------------

--
-- Table structure for table `recharge_history`
--

CREATE TABLE `recharge_history` (
  `recharge_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recharge_partner`
--

CREATE TABLE `recharge_partner` (
  `recharge_id` int(200) NOT NULL,
  `plan_id` int(200) NOT NULL,
  `partner_id` int(100) NOT NULL,
  `coins` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recharge_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recharge_partner`
--

INSERT INTO `recharge_partner` (`recharge_id`, `plan_id`, `partner_id`, `coins`, `price`, `status`, `recharge_date`) VALUES
(47, 14, 62, 50, 500, 'success', '2020-12-17 10:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `reward_image`
--

CREATE TABLE `reward_image` (
  `id` int(200) NOT NULL,
  `reward_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_sub_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_coins` int(200) NOT NULL,
  `min_coins` int(200) NOT NULL,
  `bonus_min_coin` int(100) NOT NULL,
  `bonus_max_coin` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_image`
--

INSERT INTO `reward_image` (`id`, `reward_text`, `reward_sub_text`, `reward_img`, `max_coins`, `min_coins`, `bonus_min_coin`, `bonus_max_coin`) VALUES
(4, 'BUMPER SCRATCH', '10 Lucky user', 'images/store/eventbanner/061119083835am-scratch1.jpg', 0, 0, 0, 0),
(5, 'WIN! WIN! WIN!', '1 lucky user', 'images/store/eventbanner/061119084001am-scratch12.jpg', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(100) NOT NULL,
  `category_id` int(100) DEFAULT NULL,
  `child_category_id` int(100) NOT NULL,
  `service_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_price` int(100) NOT NULL,
  `service_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partner_id` int(100) NOT NULL,
  `mrp` int(100) DEFAULT NULL,
  `time` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_blog`
--

CREATE TABLE `service_blog` (
  `blog_id` int(100) NOT NULL,
  `blog_heading` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` int(100) NOT NULL,
  `points` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_blog`
--

INSERT INTO `service_blog` (`blog_id`, `blog_heading`, `service_id`, `points`) VALUES
(526, 'This is Service Blog', 693, '[\"One\",\"Two\"]'),
(527, 'Service blog for Second', 694, '[\"Three\",\"four\"]');

-- --------------------------------------------------------

--
-- Table structure for table `storecoupon`
--

CREATE TABLE `storecoupon` (
  `coupon_id` int(11) NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_counts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `non_working_counts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storecoupon`
--

INSERT INTO `storecoupon` (`coupon_id`, `store_id`, `coupon_name`, `coupon_code`, `coupon_discount`, `coupon_image`, `begin_date`, `end_date`, `description`, `cart_value`, `working_counts`, `non_working_counts`, `created_at`, `updated_at`) VALUES
(17, '15', 'TASTY', 'MC DA6T3', '10 % %', 'coupon/images/17-10-2019/171019112556am-GoNearby590.jpg', '12-10-2019', '12-12-2019', '10% OFF', '600', '0', '0', '17-10-2019 11:25 am', '30-10-19 06:16 am');

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `st_cat_id` int(11) NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`st_cat_id`, `store_id`, `category_id`) VALUES
(1, '15', '1'),
(2, '15', '2'),
(3, '30', '1'),
(4, '33', '2'),
(5, '39', '1'),
(6, '39', '4'),
(7, '39', '5'),
(8, '40', '4'),
(9, '40', '5'),
(10, '41', '6'),
(11, '42', '1'),
(12, '42', '2'),
(13, '43', '3'),
(14, '44', '1'),
(15, '44', '2'),
(16, '44', '5');

-- --------------------------------------------------------

--
-- Table structure for table `store_dashboard`
--

CREATE TABLE `store_dashboard` (
  `dash_id` int(11) NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visitors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_dashboard`
--

INSERT INTO `store_dashboard` (`dash_id`, `store_id`, `visitors`) VALUES
(1, '42', '654'),
(2, '43', '778'),
(3, '41', '86'),
(4, '40', '100');

-- --------------------------------------------------------

--
-- Table structure for table `store_followers`
--

CREATE TABLE `store_followers` (
  `follow_id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_followers`
--

INSERT INTO `store_followers` (`follow_id`, `user_id`, `store_id`) VALUES
(2, '10', '43');

-- --------------------------------------------------------

--
-- Table structure for table `store_tags`
--

CREATE TABLE `store_tags` (
  `store_tag_id` int(11) NOT NULL,
  `tag_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_tags`
--

INSERT INTO `store_tags` (`store_tag_id`, `tag_id`, `store_id`) VALUES
(13, '1', '11'),
(14, '2', '11');

-- --------------------------------------------------------

--
-- Table structure for table `store_timings`
--

CREATE TABLE `store_timings` (
  `timing_id` int(11) NOT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_timings`
--

INSERT INTO `store_timings` (`timing_id`, `store_id`, `opening_time`, `closing_time`, `store_status`) VALUES
(1, '15', '07:00', '22:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `sub_category_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_about`
--

CREATE TABLE `sub_category_about` (
  `id` int(11) NOT NULL,
  `sub_category_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_about_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_about_desc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category_about`
--

INSERT INTO `sub_category_about` (`id`, `sub_category_id`, `sub_category_about_title`, `sub_category_about_desc`) VALUES
(1, '29', 'Diseases that can be Cured by Yoga.', 'Regular practice of yoga can keep you healthy and fit for life. However, even if you are suffering from an ailment, yoga can provide relief from the symptoms and may also help eradicate the disease from its root. Here are a few major diseases that can be cured by yoga:\r\n\r\nHatha Yoga: The physical yoga practice that is popular in gyms and yoga studios around the world is known as Hatha Yoga. It is one of the six branches of yoga, others being Jnana Yoga, Bhakti Yoga, Karma Yoga and Laya Yoga according to ancient texts found in India.\r\n\r\nAshtanga Yoga: The yoga asanas that synchronise the breath with movement of one or more limbs of the body in a synchronised pattern is known as Ashtanga Yoga. Similar to Surya Namaskar (Sun Salutation), the series of postures in Ashtanga Yoga are practiced in a certain order with a specific breathing pattern.'),
(2, '29', 'Diseases that can be Cured by Yoga 2.', 'Regular practice of yoga can keep you healthy and fit for life. However, even if you are suffering from an ailment, yoga can provide relief from the symptoms and may also help eradicate the disease from its root. Here are a few major diseases that can be cured by yoga:\r\n\r\nHatha Yoga: The physical yoga practice that is popular in gyms and yoga studios around the world is known as Hatha Yoga. It is one of the six branches of yoga, others being Jnana Yoga, Bhakti Yoga, Karma Yoga and Laya Yoga according to ancient texts found in India.\r\n\r\nAshtanga Yoga: The yoga asanas that synchronise the breath with movement of one or more limbs of the body in a synchronised pattern is known as Ashtanga Yoga. Similar to Surya Namaskar (Sun Salutation), the series of postures in Ashtanga Yoga are practiced in a certain order with a specific breathing pattern.'),
(3, '7', 'wdf', 'tyftdhb'),
(4, '7', 'wdf', 'hgfjcgtryytr'),
(5, '7', 'wdf', 'tyfrbhd'),
(6, '7', 'gyfvh', 'vgjvghvc');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_header_content`
--

CREATE TABLE `sub_category_header_content` (
  `id` int(255) NOT NULL,
  `sub_category_id` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_header_main_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_header_sub_content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_child_header_question` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category_header_content`
--

INSERT INTO `sub_category_header_content` (`id`, `sub_category_id`, `sub_category_header_main_content`, `sub_category_header_sub_content`, `sub_category_child_header_question`) VALUES
(2, '30', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '[\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\"]', 'Form Question'),
(3, '29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '[\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\"]', 'Form Question');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_points`
--

CREATE TABLE `sub_category_points` (
  `points` int(100) NOT NULL,
  `category_id` int(100) NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category_points`
--

INSERT INTO `sub_category_points` (`points`, `category_id`, `heading`, `point`) VALUES
(15, 1, 'Why Goservices ?', '[\"100% satisfaction\",\"On time Arrival\",\"Verified Professional\"]'),
(16, 2, 'Why Goservices ?', '[\"100% Satisfication\",\"Neat & clean Equipment\"]'),
(17, 3, 'Why Goservices?', '[\"Verified Professional\",\"100% satisfaction\"]'),
(18, 4, 'Why Goservices ?', '[\"100% satisfaction\",\"Verified Professional\",\"On time Arrival\"]'),
(19, 5, 'Why Goservices ?', '[\"Neat & Clean\",\"Easy to Book\",\"On time Arrival\"]'),
(20, 6, 'Why GOservices ?', '[\"100% satisfaction\",\"On time Arrival\"]'),
(21, 7, 'Why Goservices?', '[\"Expertise\",\"Verified Professionals\",\"On time Arrival\"]'),
(22, 8, 'Why Goservices ?', '[\"100% satisfaction\",\"On time Arrival\"]'),
(23, 21, 'Why Goservices ?', '[\"100% satisfaction\",\"On time Arrival\"]');

-- --------------------------------------------------------

--
-- Table structure for table `sub_child_category`
--

CREATE TABLE `sub_child_category` (
  `child_category_id` int(100) NOT NULL,
  `sub_category_id` int(100) DEFAULT NULL,
  `category_id` int(100) DEFAULT NULL,
  `child_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `email`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'tecmanic@gmail.com', '$2y$10$nx8q0FFJH8KxAUBDm2KyuOVYUM4zSBPBLIjdAwLeAYrQ65YSYjKqG', 'images/admin/profile/30-01-2020/300120111137am-avatar-512.png', '26-03-2019 04:22 pm', '2020-12-15 16:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admob`
--

CREATE TABLE `tbl_admob` (
  `id` int(11) NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `banner_unit_id` varchar(255) DEFAULT NULL,
  `interstitial_unit_id` varchar(255) DEFAULT NULL,
  `reward_unit_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admob`
--

INSERT INTO `tbl_admob` (`id`, `app_id`, `banner_unit_id`, `interstitial_unit_id`, `reward_unit_id`, `created_at`, `updated_at`) VALUES
(1, 'ca-app-pub-7478533737477780~1644037128', 'ca-app-pub-7478533737477780/6321648735', 'ca-app-pub-7478533737477780/3915427926', NULL, '2019-04-04 04:45:15', '2019-06-14 18:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisment`
--

CREATE TABLE `tbl_advertisment` (
  `id` int(100) NOT NULL,
  `add_count` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_advertisment`
--

INSERT INTO `tbl_advertisment` (`id`, `add_count`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app`
--

CREATE TABLE `tbl_app` (
  `id` int(11) NOT NULL,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_hex_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_search_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_app`
--

INSERT INTO `tbl_app` (`id`, `app_name`, `app_link`, `app_logo`, `app_hex_code`, `app_search_link`, `created_at`, `updated_at`) VALUES
(1, 'Amazon', 'https://www.amazon.in/?&_encoding=UTF8&tag=tecmanic-21&linkCode=ur2&linkId=d56e8e4482413fde225befead6c1cca0&camp=3638&creative=24630', 'images/app/290319060133am-Amazon-Logo.png', '#232f3e', 'https://www.amazon.in/s?k=', '27-03-2019 03:57 pm', '2019-04-02 06:21:48'),
(2, 'Flipkart', 'https://www.flipkart.com/?affid=neerajcle', 'images/app/290319060656am-flipkart_logo.png', '#2874f0', 'https://www.flipkart.com/search?q=', '27-03-2019 03:57 pm', '2019-03-31 10:08:04'),
(3, 'Snapdeal', 'https://linksredirect.com/?pub_id=32653CL29471&source=linkkit&url=https%3A%2F%2Fwww.snapdeal.com%2F', 'images/app/290319060830am-snapdeal_logo.png', NULL, 'https://m.snapdeal.com/search?keyword=', '27-03-2019 03:57 pm', '2019-03-31 10:08:58'),
(4, 'Facebook', 'https://m.facebook.com/', 'images/app/290319060946am-facebook_logo.png', '3b5998', NULL, '27-03-2019 03:57 pm', '2019-03-31 10:33:13'),
(5, 'Twitter', 'https://mobile.twitter.com/', 'images/app/290319061403am-twitter_logo.png', NULL, NULL, '27-03-2019 03:57 pm', '2019-03-29 06:14:03'),
(6, 'Shopclues', 'https://linksredirect.com/?pub_id=32653CL29471&source=linkkit&url=https%3A%2F%2Fwww.shopclues.com%2F', 'images/app/290319060434am-shopclues_logo.png', NULL, 'https://m.shopclues.com/search?q=', '2019-03-29 05:24:03', '2019-03-31 10:09:49'),
(7, 'NDTV', 'https://www.ndtv.com/', 'images/app/300319105725am-ndtv_logonew.png', NULL, NULL, '2019-03-29 09:51:35', '2019-03-30 10:57:25'),
(8, 'Zee News', 'https://zeenews.india.com/', 'images/app/300319105756am-zeenews.png', NULL, NULL, '2019-03-29 09:54:22', '2019-03-30 10:57:56'),
(9, 'ABP News', 'https://abpnews.abplive.in/', 'images/app/300319105834am-abpnew.png', NULL, NULL, '2019-03-29 09:56:03', '2019-03-30 10:58:34'),
(10, 'AajTak', 'https://m.aajtak.in/', 'images/app/300319105639am-aajtaknew.png', NULL, NULL, '2019-03-29 09:58:07', '2019-03-31 12:19:47'),
(11, 'India TV', 'https://www.indiatvnews.com/', 'images/app/300319105856am-indiatvnew.png', NULL, NULL, '2019-03-29 10:02:04', '2019-03-30 10:58:56'),
(12, 'Khan Academy', 'https://www.khanacademy.org/', 'images/app/290319101603am-khan-academy.png', NULL, NULL, '2019-03-29 10:16:03', '2019-03-29 10:16:03'),
(13, 'Udemy', 'https://www.udemy.com/', 'images/app/300319110002am-udemynew.png', NULL, NULL, '2019-03-29 10:18:26', '2019-03-30 11:00:02'),
(14, 'Unacademy', 'https://unacademy.com/', 'images/app/300319110025am-unacademynew.png', NULL, NULL, '2019-03-29 10:27:55', '2019-03-30 11:00:25'),
(15, 'gradeup', 'https://gradeup.co/', 'images/app/290319104319am-gradeup.png', NULL, NULL, '2019-03-29 10:43:19', '2019-03-29 10:43:19'),
(16, 'trivago', 'https://www.trivago.in/', 'images/app/290319115648am-trivago.png', NULL, NULL, '2019-03-29 11:56:48', '2019-03-29 11:56:48'),
(17, 'booking.com', 'https://www.booking.com/', 'images/app/300319011050pm-Booking.png', NULL, NULL, '2019-03-29 11:59:35', '2019-03-30 13:10:50'),
(18, 'make my trip', 'https://www.makemytrip.com/', 'images/app/300319010801pm-makemytrip.png', NULL, NULL, '2019-03-29 12:04:43', '2019-03-30 13:08:01'),
(19, 'cleartrip', 'https://www.cleartrip.com/', 'images/app/300319010601pm-cleartrip.png', NULL, NULL, '2019-03-29 12:06:12', '2019-03-30 13:06:01'),
(20, 'Swiggy', 'https://clnk.in/h8qd', 'images/app/300319120434pm-swiggynew.png', NULL, NULL, '2019-03-30 12:04:34', '2019-03-31 13:16:46'),
(21, 'Zomato', 'https://www.zomato.com', 'images/app/300319120525pm-zomatonew.png', NULL, NULL, '2019-03-30 12:05:25', '2019-03-30 12:05:25'),
(22, 'Dominos', 'https://www.dominos.co.in', 'images/app/300319120603pm-dominosnew.png', NULL, NULL, '2019-03-30 12:06:03', '2019-03-30 12:06:03'),
(23, 'Uber Eats', 'https://www.ubereats.com/en-IN', 'images/app/300319120651pm-ubernew.png', NULL, NULL, '2019-03-30 12:06:51', '2019-03-30 12:06:51'),
(24, 'NearBuy', 'https://www.nearbuy.com', 'images/app/300319123815pm-nearbuy.png', NULL, NULL, '2019-03-30 12:38:15', '2019-03-30 12:38:15'),
(25, 'LittleApp', 'https://littleapp.in', 'images/app/300319123854pm-little-app.png', NULL, NULL, '2019-03-30 12:38:54', '2019-03-30 12:38:54'),
(26, 'jabong', 'https://www.jabong.com', 'images/app/300319124744pm-jabong.png', NULL, NULL, '2019-03-30 12:47:44', '2019-03-30 12:47:44'),
(27, 'Myntra', 'https://www.myntra.com', 'images/app/300319124816pm-myntra.png', NULL, NULL, '2019-03-30 12:48:16', '2019-03-30 12:48:16'),
(28, 'PaytmMall', 'https://paytmmall.com/', 'images/app/300319125301pm-paytm-mall.png', NULL, NULL, '2019-03-30 12:53:01', '2019-03-30 12:53:01'),
(29, 'Skype', 'https://www.skype.com/en', 'images/app/300319011102pm-skype.png', NULL, NULL, '2019-03-30 13:11:02', '2019-03-30 13:11:02'),
(30, 'Linkedin', 'https://in.linkedin.com/', 'images/app/300319011149pm-LinkedIn_logo.png', '4875B4', NULL, '2019-03-30 13:11:49', '2019-03-31 10:38:14'),
(31, 'Instagram', 'https://www.instagram.com/?hl=en', 'images/app/300319012219pm-instagram.png', NULL, NULL, '2019-03-30 13:22:19', '2019-03-30 13:22:19'),
(32, 'Yatra', 'https://www.yatra.com/pwa/', 'images/app/300319012259pm-yatra.png', NULL, NULL, '2019-03-30 13:22:59', '2019-03-30 13:22:59'),
(33, 'Goibibo', 'https://www.goibibo.com/', 'images/app/300319012341pm-goibibo.png', NULL, NULL, '2019-03-30 13:23:41', '2019-03-30 13:23:41'),
(36, 'Ixigo', 'https://www.ixigo.com/', 'images/app/300319012432pm-ixigo.png', NULL, NULL, '2019-03-30 13:24:32', '2019-03-30 13:24:32'),
(37, 'Uber', 'https://www.uber.com/in/en/', 'images/app/300319012710pm-uber.png', NULL, NULL, '2019-03-30 13:27:10', '2019-03-30 13:27:10'),
(38, 'FreshMenu', 'https://www.freshmenu.com/', 'images/app/300319013606pm-freshmenu.png', NULL, NULL, '2019-03-30 13:36:06', '2019-03-30 13:36:06'),
(39, 'Pizza Hut', 'https://m.pizzahut.co.in/home', 'images/app/300319013636pm-Pizza_Hut_logo.png', NULL, NULL, '2019-03-30 13:36:36', '2019-03-30 13:36:36'),
(40, 'Fassos', 'https://order.faasos.io/', 'images/app/300319013702pm-faasos.png', NULL, NULL, '2019-03-30 13:37:02', '2019-03-30 13:37:02'),
(41, 'AajTak TV', 'https://www.yupptv.in/#!/play/Aajtak', 'images/app/310319122312pm-aajtak-tv.png', 'c72a26', NULL, '2019-03-31 12:23:12', '2019-03-31 12:23:12'),
(42, 'Paytm Recharge', 'https://paytm.com/recharge', 'images/app/010419125734pm-paytm-512.png', NULL, NULL, '2019-04-01 12:57:34', '2019-04-01 12:57:34'),
(43, 'Ola', 'https://book.olacabs.com/?pickup_name=Current%20Location&lat=28.625242399999998&lng=77.3780374', 'images/app/010419010824pm-1280px-Ola_Cabs_logo.svg.png', NULL, 'https://book.olacabs.com/', '2019-04-01 13:08:24', '2019-04-01 13:32:01'),
(44, 'OYO', 'https://www.oyorooms.com/', 'images/app/020419122014pm-oyo-logo-png-3.png', NULL, NULL, '2019-04-02 12:17:31', '2019-04-02 12:20:14'),
(45, 'Expedia', 'https://www.expedia.co.in', 'images/app/020419122544pm-Expedia-logo-880x645.png', NULL, NULL, '2019-04-02 12:25:44', '2019-04-02 12:25:44'),
(46, 'Cricbuzz', 'https://m.cricbuzz.com/', 'images/app/020419123607pm-cricbuzz.png', NULL, NULL, '2019-04-02 12:36:07', '2019-04-02 12:36:07'),
(47, 'Bookmyshow', 'https://in.bookmyshow.com', 'images/app/020419124000pm-bms.png', NULL, NULL, '2019-04-02 12:40:00', '2019-04-02 12:40:00'),
(48, 'TicketNew', 'https://m.ticketnew.com/', 'images/app/020419124451pm-ticket.png', NULL, NULL, '2019-04-02 12:44:51', '2019-04-02 12:44:51'),
(49, 'Hotstar', 'https://www.hotstar.com/', 'images/app/020419124936pm-hotstar-logo.png', NULL, NULL, '2019-04-02 12:49:36', '2019-04-02 12:49:36'),
(50, 'T-series', 'https://m.youtube.com/user/tseries/featured', 'images/app/020419125655pm-T-series-logo.png', NULL, NULL, '2019-04-02 12:56:55', '2019-04-02 12:56:55'),
(51, 'Gmail', 'https://mail.google.com', 'images/app/020419010120pm-gmail_logo.png', NULL, NULL, '2019-04-02 13:01:20', '2019-04-02 13:01:20'),
(52, 'Just Dial', 'https://t.justdial.com/', 'images/app/020419010544pm-1024px-JD_Sports_logo.png', NULL, NULL, '2019-04-02 13:05:44', '2019-04-02 13:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankoffers`
--

CREATE TABLE `tbl_bankoffers` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `cardtype` varchar(255) NOT NULL,
  `bankoffer_image` varchar(255) NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bankoffers`
--

INSERT INTO `tbl_bankoffers` (`id`, `bank_name`, `cardtype`, `bankoffer_image`, `store_id`, `start_date`, `end_date`, `description`) VALUES
(1, 'HDFC Bank', 'Visa', 'offer/images/18-10-2019/181019075608am-hdfc-gift-card.png', '40', '2019-10-19', '2019-10-29', '10 % off on orders on the order value of 1100 rs.'),
(2, 'HDFC Bank', 'mastercard', 'offer/images/24-10-2019/241019072324am-Business-Regalia-First-500x318-MC-min.png', '41', '2019-10-26', '2019-10-31', 'HURRY!!!!!!Diwali Offer !!!!!!!!! 20 % off on orders on the order value of 1000 rs.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `banner_name` varchar(255) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL DEFAULT 'N/A',
  `child_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `banner_name`, `banner_image`, `created_at`, `updated_at`, `child_category_id`) VALUES
(22, 'Test', 'images/banner/280121112919am-3d4d74c0-f53c-11e9-9514-3f31cfb386e6_12ddd30c-5a94-4145-9034-5c6b0a462df2_thumb.jpg', '2021-01-28 11:29:19', '2021-01-28 11:29:19', NULL),
(23, 'hghjikl', 'images/banner/280121112931am-3d4d74c0-f53c-11e9-9514-3f31cfb386e6_12ddd30c-5a94-4145-9034-5c6b0a462df2_thumb.jpg', '2021-01-28 11:29:31', '2021-01-28 11:29:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_icon`, `category_app`, `created_at`, `updated_at`) VALUES
(1, 'News', 'images/category/29-03-2019/290319112143am-news.png', '[\"7\",\"8\",\"9\",\"10\",\"11\"]', '2019-03-29 10:13:36', '2019-03-29 11:21:43'),
(2, 'Education', 'images/category/29-03-2019/290319112154am-education.png', '[\"12\",\"13\",\"14\",\"15\"]', '2019-03-29 10:43:55', '2019-03-29 11:21:54'),
(3, 'Entertain', 'images/category/02-04-2019/020419123921pm-entertainment.png', '[\"46\",\"47\",\"48\"]', '2019-04-02 12:39:21', '2019-04-02 12:46:29'),
(4, 'Videos', 'images/category/02-04-2019/020419125045pm-videos.png', '[\"8\",\"49\",\"50\"]', '2019-04-02 12:50:45', '2019-04-02 12:57:17'),
(5, 'Productivity', 'images/category/02-04-2019/020419010202pm-productivity.png', '[\"51\",\"52\"]', '2019-04-02 13:02:02', '2019-04-02 13:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email`
--

CREATE TABLE `tbl_email` (
  `email_id` int(100) NOT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_cancel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_cancel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_email`
--

INSERT INTO `tbl_email` (`email_id`, `email_subject`, `email_body`, `head`, `subject_cancel`, `body_cancel`) VALUES
(1, 'Booking Successfully', 'Hello, $user your booking succesfully Placed', 'UrbanCorner', 'Cancel Successfully', 'Hello, $user your booking successfully canceled');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_Enquiry`
--

CREATE TABLE `tbl_Enquiry` (
  `enq_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `id` int(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `service_id` int(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `event_id` int(100) NOT NULL,
  `event_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_contact_number` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_start_time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_end_time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_start_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_end_date` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_custom_url` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_tag` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_price` int(100) NOT NULL,
  `event_price_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_color` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`event_id`, `event_name`, `event_contact_number`, `event_start_time`, `event_end_time`, `event_start_date`, `event_end_date`, `event_store_id`, `event_custom_url`, `event_description`, `event_tag`, `event_price`, `event_price_type`, `event_color`, `event_image`) VALUES
(5, 'SUMMER NIGHT', '789804578687', '13:30', '13:30', '2019-10-24', '2019-11-01', '40', NULL, 'efe hefg', 'tag1', 100, 'percentage', '#ff0000', ''),
(6, 'PARTY NIGHT', '789804578687', '13:30', '13:30', '2019-10-24', '2019-11-01', '40', NULL, 'efe hefg', 'tag1', 100, 'percentage', '#0000FF', ''),
(7, 'COUPLE NIGHT', '789804578687', '13:30', '13:30', '2019-10-24', '2019-11-01', '40', NULL, 'efe hefg', 'tag1', 100, 'percentage', '#9B870C', ''),
(8, 'LADIES NIGHT', '789804578687', '13:30', '13:30', '2019-10-24', '2019-11-01', '40', NULL, 'efe hefg', 'tag1', 100, 'percentage', '#ff0000', 'images/store/eventbanner/221019014838pm-Screenshot...'),
(9, 'SINGING CONCERT', '789804578687', '13:30', '13:30', '2019-10-24', '2019-11-01', '40', NULL, 'efe hefg', 'tag1', 100, 'percentage', '#0000FF', ''),
(12, 'DRAMA EVENT', '789804578687', '13:30', '13:30', '2019-10-24', '2019-11-01', '40', NULL, 'efe hefg', 'tag1', 100, 'percentage', '#9B870C', 'images/store/eventbanner/221019014838pm-Screenshot-(6).png'),
(13, 'LIVE SHOW', '789804578687', '13:30', '13:30', '2019-10-24', '2019-11-01', '41', NULL, 'efe hefg', 'tag1', 100, 'percentage', '#0000FF', 'images/store/eventbanner/23-10-19/231019054354am-shiva_trishul_images.jpg'),
(15, 'sedrftvgbhnjmk,l.12345678', '02352645585156', '13:30', '13:30', '2019-11-28', '2019-12-27', '40', NULL, 'sedrftgbhjnkmlsxxdc', 'rgnnrewngb', 100, 'percentage', '#ff0000', 'images/store/eventbanner/051219010627pm-Screenshot-(1).png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_banner`
--

CREATE TABLE `tbl_event_banner` (
  `event_banner_id` int(100) NOT NULL,
  `event_banner_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_banner_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_banner_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_event_banner`
--

INSERT INTO `tbl_event_banner` (`event_banner_id`, `event_banner_name`, `event_banner_image`, `event_banner_url`, `event_id`) VALUES
(1, 'fgdd', 'images/store/eventbanner/30-10-19/301019070438am-Crispy-Honey-Chilli-Potatoes-1.jpg', 'www.mmt.comr', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fcm`
--

CREATE TABLE `tbl_fcm` (
  `id` int(11) NOT NULL,
  `server_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_fcm`
--

INSERT INTO `tbl_fcm` (`id`, `server_key`, `sender_id`, `created_at`, `updated_at`) VALUES
(1, 'AAAACAsAvA0:APA91bGAQPS5GtBD3zFSSWMdr46xVUyhwZxAO4__51HnxIOp8_wQn4PX1dQwP02iCMa6QjxQcWcDYtS1Hl03J5ICvAriyVymA4EUeY7oRKNWRwu_reCJnM83y9jLWe6UoYG2BrZMoJ55', 'AAAAgWb7FGQ:APA91bGJi207OPwllTpr6IADwbzknDq5xa6uwPUGAyAZ6CVcfa3yQt_2tS5yhSlkktzfBVUjhRf9NvLiVQ6AIsRWWbO6IwNkrTkBr1IyhamOrdmKsvQx4A0Si-zz98sQfuyacIx9zHsM', '2019-03-29 10:13:36', '2020-10-28 14:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_image` varchar(255) NOT NULL,
  `group_app` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `group_name`, `group_image`, `group_app`, `created_at`, `updated_at`) VALUES
(1, 'Shopping', 'images/group/29-03-2019/290319115117am-shoppingicons.png', '[\"1\",\"2\",\"3\",\"6\",\"26\",\"27\",\"28\"]', '2019-03-29 11:51:17', '2019-03-30 12:53:50'),
(2, 'Social', 'images/group/29-03-2019/290319115208am-socialmediaicons.png', '[\"4\",\"5\",\"29\",\"30\",\"31\"]', '2019-03-29 11:52:08', '2019-04-02 12:03:34'),
(3, 'Hotels', 'images/group/29-03-2019/290319120257pm-hotels.png', '[\"16\",\"17\",\"18\",\"44\",\"45\"]', '2019-03-29 12:02:57', '2019-04-02 12:25:56'),
(4, 'Travel', 'images/group/29-03-2019/290319120858pm-travel.png', '[\"18\",\"19\",\"32\",\"33\",\"36\",\"37\"]', '2019-03-29 12:08:58', '2019-03-30 13:27:41'),
(5, 'Food', 'images/group/30-03-2019/300319120827pm-fooddelivery.png', '[\"20\",\"21\",\"22\",\"23\",\"38\",\"39\",\"40\"]', '2019-03-30 12:08:27', '2019-03-30 13:37:13'),
(6, 'Deals', 'images/group/30-03-2019/300319123950pm-dealsicon.png', '[\"24\",\"25\"]', '2019-03-30 12:39:50', '2019-03-30 12:39:50'),
(7, 'LIVE TV', 'images/group/31-03-2019/310319122441pm-logo-tv.png', '[\"41\"]', '2019-03-31 12:24:41', '2019-03-31 12:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_msg_key`
--

CREATE TABLE `tbl_msg_key` (
  `id` int(11) NOT NULL,
  `mag_auth_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mag_sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rescheduled_msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_msg_key`
--

INSERT INTO `tbl_msg_key` (`id`, `mag_auth_key`, `mag_sender_id`, `created_at`, `updated_at`, `rescheduled_msg`, `booking_msg`, `cancel_msg`) VALUES
(1, '6ZlHdXMHcdFF17Av', 'UBCORN', '2019-05-06 10:12:41', '2020-12-10 14:50:36', 'Hi, &name your booking rescheduled on &date', 'Hi, &name we recived your booking which is worth of rupees &price will be delivery on &date', 'Hi, &name your booking Cancelled successfully');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`id`, `user_id`, `title`, `description`, `image`, `is_seen`, `created_at`) VALUES
(418, 699, 'AC Service 30% off', 'Get 30% Off on AC Service till Dec 31', 'https://www.urbancorner.in/goservices/images/notification/04-12-2020/041220103619pm-1585391457_planning_a_wedding.png', 0, '2020-12-04 22:36:19'),
(419, 701, 'AC Service 30% off', 'Get 30% Off on AC Service till Dec 31', 'https://www.urbancorner.in/goservices/images/notification/04-12-2020/041220103619pm-1585391457_planning_a_wedding.png', 0, '2020-12-04 22:36:19'),
(420, 702, 'AC Service 30% off', 'Get 30% Off on AC Service till Dec 31', 'https://www.urbancorner.in/goservices/images/notification/04-12-2020/041220103619pm-1585391457_planning_a_wedding.png', 0, '2020-12-04 22:36:19'),
(421, 703, 'AC Service 30% off', 'Get 30% Off on AC Service till Dec 31', 'https://www.urbancorner.in/goservices/images/notification/04-12-2020/041220103619pm-1585391457_planning_a_wedding.png', 0, '2020-12-04 22:36:19'),
(422, 699, '40% Off on Plumbing Services', 'Get 40% Off on Plumbing Services till 31 Dec 2020', 'https://www.urbancorner.in/goservices/images/notification/04-12-2020/041220104105pm-1585391304_renovating_home_banner.png', 0, '2020-12-04 22:41:05'),
(423, 701, '40% Off on Plumbing Services', 'Get 40% Off on Plumbing Services till 31 Dec 2020', 'https://www.urbancorner.in/goservices/images/notification/04-12-2020/041220104105pm-1585391304_renovating_home_banner.png', 0, '2020-12-04 22:41:05'),
(424, 702, '40% Off on Plumbing Services', 'Get 40% Off on Plumbing Services till 31 Dec 2020', 'https://www.urbancorner.in/goservices/images/notification/04-12-2020/041220104105pm-1585391304_renovating_home_banner.png', 0, '2020-12-04 22:41:05'),
(425, 703, '40% Off on Plumbing Services', 'Get 40% Off on Plumbing Services till 31 Dec 2020', 'https://www.urbancorner.in/goservices/images/notification/04-12-2020/041220104105pm-1585391304_renovating_home_banner.png', 0, '2020-12-04 22:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rating_id` int(11) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `review_head` varchar(255) NOT NULL,
  `review_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_redeem_request`
--

CREATE TABLE `tbl_redeem_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `redeem_points` int(11) NOT NULL,
  `paytm_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_redeem_request`
--

INSERT INTO `tbl_redeem_request` (`id`, `user_id`, `redeem_points`, `paytm_number`, `status`, `created_at`) VALUES
(8, 5, 1, 'kumarrishabh050@gmail.com', 1, '2019-04-19 12:36:00'),
(16, 80, 10, 'mk383885@gmail.com', 0, '2019-04-19 17:21:37'),
(17, 82, 10, 'basantkumar405@gmail.com', 0, '2019-04-19 19:27:25'),
(18, 83, 13, 'pranay.developer@gmail.com', 0, '2019-04-19 20:19:19'),
(19, 93, 10, '9603111671', 0, '2019-04-21 05:46:38'),
(20, 98, 10, 'manlypavan@gmail.com', 0, '2019-04-21 18:53:40'),
(21, 111, 6, 'thedeepsinghal@gmail.com', 0, '2019-04-23 16:43:28'),
(22, 113, 5, 'arshkapoor2015@gmail.com', 0, '2019-04-23 17:53:05'),
(23, 115, 10, 'sumit@gmail.com', 0, '2019-04-24 01:10:21'),
(24, 116, 14, 'touhid.1436@gmail.com', 0, '2019-04-24 04:33:55'),
(25, 119, 15, 'vishal.b855@gmail.com', 0, '2019-04-24 07:08:05'),
(26, 125, 4, 'trapmix9@gmail.com', 0, '2019-04-24 16:10:44'),
(27, 126, 22, 'shuwaib14@gmail.com', 0, '2019-04-24 22:08:02'),
(28, 135, 6, 'raj@gmail.com', 0, '2019-04-25 12:13:09'),
(29, 136, 1, 'gan@gmail.com', 0, '2019-04-25 12:25:43'),
(30, 1, 20, '8vivbu7g7gubbi@gmail.com', 0, '2019-04-26 02:03:26'),
(31, 140, 15, 'vkk002@gmail.com', 0, '2019-04-26 03:20:13'),
(32, 145, 10, 'editor@thestartupjournal.com', 0, '2019-04-26 09:39:40'),
(33, 149, 5, 'sc2251995@gmail.com', 0, '2019-04-26 20:46:24'),
(34, 149, 4, 'sc2251995@gmail.com', 0, '2019-04-26 20:46:53'),
(35, 120, 19, 'sripratapdas@gmail.com', 0, '2019-04-27 08:33:39'),
(36, 36, 28, 'hossainfaridit@gmail.com', 0, '2019-05-04 05:18:13'),
(37, 190, 13, 'roneyroy60@gmail.com', 0, '2019-05-06 09:23:42'),
(38, 195, 10, 'sss@gmail.com', 0, '2019-05-07 10:26:30'),
(39, 182, 30, '01723-002152', 0, '2019-05-09 06:01:54'),
(40, 200, 8, 'jrtech7418@gmail.com', 0, '2019-05-09 07:31:20'),
(41, 192, 6, 'hj', 0, '2019-05-09 20:25:55'),
(42, 204, 16, 'hshdhdg@gmail.com', 0, '2019-05-10 05:33:43'),
(43, 183, 40, '01723-002152', 0, '2019-05-12 02:50:12'),
(44, 215, 5, 'honey123@outlook.com', 0, '2019-05-13 04:32:46'),
(45, 215, 3, 'honey123@outlook.com', 0, '2019-05-13 04:34:37'),
(46, 217, 10, 'gjfhducu@gmail.com', 0, '2019-05-13 15:17:05'),
(47, 208, 13, 'imransiddqi0786@gmail.com', 0, '2019-05-14 02:00:19'),
(48, 182, 30, '01723-002152', 0, '2019-05-15 13:48:09'),
(49, 228, 2, 'bipingupta987@gmail।com', 0, '2019-05-15 16:20:41'),
(50, 36, 30, 'shantoshaheen@gmail.com', 0, '2019-05-20 08:00:51'),
(51, 260, 11, 'sd733043@gmail.com', 0, '2019-05-21 11:45:27'),
(52, 239, 10, 'yogendersgr@gmail.com', 0, '2019-05-23 05:54:57'),
(53, 251, 27, 'tanvirreza583@gmail.com', 0, '2019-05-26 08:05:12'),
(54, 292, 2, 'subodh.mscit@gmail.com', 0, '2019-05-27 17:31:52'),
(55, 305, 25, 'emmaliddle22@gmail.com', 0, '2019-06-03 10:53:30'),
(56, 324, 9, 'tipus547@gmail.com', 0, '2019-06-07 13:37:49'),
(57, 326, 11, 'sayeed.mahammed@gmail.com', 0, '2019-06-07 18:25:19'),
(58, 286, 23, 'rachelrizal5@gmail.com', 0, '2019-06-08 16:39:45'),
(59, 208, 15, 'imransiddqi0786@gmail.com', 0, '2019-06-10 00:59:39'),
(60, 290, 27, 'adhirsin1@gmail.com', 0, '2019-06-10 13:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referral`
--

CREATE TABLE `tbl_referral` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `referral_by` int(11) NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_referral`
--

INSERT INTO `tbl_referral` (`id`, `user_id`, `referral_by`, `created_at`) VALUES
(1, 139, 130, '2019-04-24 10:29:19'),
(2, 142, 130, '2019-04-24 10:41:40'),
(3, 150, 130, '2019-04-27 12:10:04'),
(4, 165, 130, '2019-04-29 13:05:37'),
(5, 166, 130, '2019-04-29 13:09:38'),
(6, 167, 130, '2019-04-29 13:13:05'),
(7, 168, 130, '2019-04-29 13:16:27'),
(8, 169, 130, '2019-04-29 13:24:26'),
(9, 170, 130, '2019-04-29 13:25:47'),
(10, 174, 130, '2019-04-30 08:28:22'),
(11, 180, 130, '2019-05-04 12:52:13'),
(12, 197, 130, '2019-05-06 05:32:53'),
(13, 198, 130, '2019-05-06 05:33:13'),
(14, 237, 215, '2019-05-09 13:31:39'),
(15, 626, 1, '2020-01-13 05:32:29'),
(16, 627, 1, '2020-01-21 05:33:23'),
(17, 629, 1, '2020-02-04 07:10:54'),
(18, 630, 1, '2020-02-04 07:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scratch_card`
--

CREATE TABLE `tbl_scratch_card` (
  `id` int(11) NOT NULL,
  `scratch_card_name` varchar(255) NOT NULL,
  `scratch_card_image` varchar(255) NOT NULL,
  `scratch_card_type` varchar(255) NOT NULL,
  `scratch_card_offers` varchar(255) NOT NULL,
  `scratch_card_society_id` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `society_id` int(11) NOT NULL DEFAULT 1,
  `device_id` text DEFAULT NULL,
  `otp_value` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL DEFAULT 'n/a',
  `referral_code` varchar(255) DEFAULT NULL,
  `is_app_updated` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_scratch_card`
--

CREATE TABLE `tbl_user_scratch_card` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `scratch_id` int(11) NOT NULL,
  `app_group_id` int(11) DEFAULT NULL,
  `scratch_type` varchar(255) NOT NULL,
  `scratch_for` varchar(255) DEFAULT NULL,
  `earning` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_scratch` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_scratch_card`
--

INSERT INTO `tbl_user_scratch_card` (`id`, `user_id`, `scratch_id`, `app_group_id`, `scratch_type`, `scratch_for`, `earning`, `is_scratch`, `created_at`) VALUES
(107, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-19 11:05:16'),
(110, 1, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(111, 4, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(112, 5, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(113, 6, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(114, 7, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(115, 8, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(116, 9, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(117, 10, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(118, 11, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(119, 12, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(120, 13, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(121, 14, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(122, 15, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(123, 16, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(124, 17, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(125, 18, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(126, 19, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(127, 20, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(128, 21, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(129, 22, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(130, 23, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(131, 24, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(132, 25, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(133, 26, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(134, 27, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(135, 28, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(136, 29, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(137, 30, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(138, 31, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(139, 32, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(140, 33, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(141, 34, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(142, 35, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(143, 36, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(144, 37, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(145, 38, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(146, 39, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(147, 40, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(148, 41, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(149, 42, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(150, 43, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(151, 44, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(152, 45, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(153, 46, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(154, 47, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(155, 48, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(156, 49, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(157, 50, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(158, 51, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(159, 52, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(160, 53, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(161, 54, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(162, 55, 7, NULL, 'coupan', NULL, 'ASDFGH', 1, '2019-04-19 11:54:18'),
(163, 56, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(164, 57, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(165, 58, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(166, 59, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(167, 60, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(168, 61, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(169, 62, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(170, 63, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(171, 64, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(172, 65, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(173, 66, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(174, 67, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(175, 68, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(176, 69, 7, NULL, 'coupan', NULL, 'ASDFGH', 0, '2019-04-19 11:54:18'),
(177, 1, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-19 11:59:43'),
(178, 4, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-19 11:59:43'),
(179, 5, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-19 11:59:43'),
(180, 6, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(181, 7, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(182, 8, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(183, 9, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(184, 10, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(185, 11, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(186, 12, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(187, 13, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(188, 14, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(189, 15, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(190, 16, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(191, 17, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(192, 18, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-19 11:59:43'),
(193, 19, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(194, 20, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(195, 21, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(196, 22, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(197, 23, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(198, 24, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(199, 25, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(200, 26, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(201, 27, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(202, 28, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(203, 29, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(204, 30, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(205, 31, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(206, 32, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(207, 33, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(208, 34, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(209, 35, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-19 11:59:43'),
(210, 36, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-19 11:59:43'),
(211, 37, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-19 11:59:43'),
(212, 38, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(213, 39, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(214, 40, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(215, 41, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(216, 42, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(217, 43, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(218, 44, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-19 11:59:43'),
(219, 45, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(220, 46, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-19 11:59:43'),
(221, 47, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(222, 48, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(223, 49, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(224, 50, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(225, 51, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(226, 52, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(227, 53, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(228, 54, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(229, 55, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-19 11:59:43'),
(230, 56, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(231, 57, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(232, 58, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(233, 59, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(234, 60, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-19 11:59:43'),
(235, 61, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(236, 62, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(237, 63, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(238, 64, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 11:59:43'),
(239, 65, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(240, 66, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-19 11:59:43'),
(241, 67, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 11:59:43'),
(242, 68, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(243, 69, 8, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 11:59:43'),
(244, 5, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-19 12:09:50'),
(245, 70, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 12:43:23'),
(246, 75, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 12:47:50'),
(247, 76, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 12:47:58'),
(248, 76, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-19 12:48:00'),
(249, 77, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-19 13:25:06'),
(250, 78, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-19 15:28:18'),
(251, 79, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-19 16:53:57'),
(252, 80, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-04-19 17:16:45'),
(253, 80, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-19 17:16:48'),
(254, 4, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-19 17:32:47'),
(255, 81, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-19 17:44:34'),
(256, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-19 17:53:22'),
(257, 82, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-19 19:25:09'),
(258, 82, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-19 19:25:12'),
(259, 83, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-19 20:17:19'),
(260, 83, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-19 20:17:21'),
(261, 84, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-19 22:55:07'),
(262, 84, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-19 22:55:09'),
(263, 85, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-20 02:26:45'),
(264, 85, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-04-20 02:26:46'),
(265, 5, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-20 02:33:30'),
(266, 86, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-20 02:35:09'),
(267, 86, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-20 02:35:10'),
(268, 87, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-20 02:35:52'),
(269, 87, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-20 02:35:53'),
(270, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-20 03:05:12'),
(271, 88, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-20 03:08:02'),
(272, 88, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-04-20 03:08:04'),
(273, 4, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-04-20 06:05:08'),
(274, 44, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-20 06:31:44'),
(275, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-20 07:02:42'),
(276, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-20 10:05:58'),
(277, 89, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-20 12:54:55'),
(278, 89, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-04-20 12:54:58'),
(279, 82, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-20 13:24:04'),
(280, 90, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-04-20 15:17:14'),
(281, 91, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-04-20 15:22:10'),
(282, 45, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-20 19:18:37'),
(283, 92, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-04-20 19:35:08'),
(284, 92, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-20 19:35:09'),
(285, 37, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-20 21:40:10'),
(286, 93, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-21 05:39:54'),
(287, 93, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-21 05:39:57'),
(288, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-21 06:39:44'),
(289, 94, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-21 06:46:27'),
(290, 24, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-21 07:00:04'),
(291, 83, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-21 09:48:45'),
(292, 87, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-21 10:18:54'),
(293, 95, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-21 10:23:50'),
(294, 95, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-21 10:23:52'),
(295, 80, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-21 10:47:59'),
(296, 51, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-21 11:42:12'),
(297, 96, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-21 13:09:33'),
(298, 97, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-21 14:19:35'),
(299, 97, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-21 14:19:37'),
(300, 98, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-21 18:52:24'),
(301, 98, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-04-21 18:52:25'),
(302, 37, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-21 19:01:32'),
(303, 92, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-21 19:17:05'),
(304, 99, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-21 22:06:02'),
(305, 99, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-21 22:06:04'),
(306, 87, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-22 04:40:17'),
(307, 39, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-04-22 04:58:29'),
(308, 44, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-22 05:19:01'),
(309, 5, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-22 06:11:30'),
(310, 100, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-22 06:14:12'),
(311, 100, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-22 06:14:14'),
(312, 98, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-22 09:43:19'),
(313, 93, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-22 10:06:13'),
(314, 80, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-22 10:30:36'),
(315, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-22 10:30:43'),
(316, 83, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-22 10:38:11'),
(317, 101, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-22 10:53:17'),
(318, 101, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-04-22 10:53:18'),
(319, 46, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-22 13:58:42'),
(320, 102, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-22 14:05:36'),
(321, 102, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-22 14:05:39'),
(322, 103, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-22 14:08:46'),
(323, 104, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-22 17:23:01'),
(324, 99, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-22 18:00:39'),
(325, 105, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-23 00:19:31'),
(326, 5, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-23 04:29:25'),
(327, 106, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-23 04:44:40'),
(328, 106, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-23 04:44:42'),
(329, 107, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-23 05:41:04'),
(330, 107, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-23 05:41:07'),
(331, 55, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-23 07:54:34'),
(332, 54, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-04-23 08:19:26'),
(333, 44, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-23 09:45:55'),
(334, 108, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-23 10:55:50'),
(335, 126, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-23 12:52:35'),
(336, 109, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-04-23 14:24:17'),
(337, 109, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-04-23 14:24:18'),
(338, 110, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-23 14:43:03'),
(339, 110, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-23 14:43:06'),
(340, 111, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-23 16:41:29'),
(341, 111, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-23 16:41:32'),
(342, 99, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-23 16:52:07'),
(343, 46, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-23 17:45:29'),
(344, 112, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-23 17:46:17'),
(345, 112, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-23 17:46:19'),
(346, 113, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-23 17:48:48'),
(347, 113, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-23 17:48:51'),
(348, 114, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-23 21:02:07'),
(349, 114, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-23 21:02:09'),
(350, 115, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-24 01:09:03'),
(351, 115, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-24 01:09:05'),
(352, 116, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-24 04:30:05'),
(353, 116, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-24 04:30:07'),
(354, 5, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-24 04:44:07'),
(355, 117, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-24 04:46:38'),
(356, 117, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-24 04:46:41'),
(357, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-24 05:11:46'),
(358, 118, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-24 06:53:04'),
(359, 118, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-04-24 06:53:05'),
(360, 119, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-24 07:05:17'),
(361, 119, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-24 07:05:20'),
(362, 120, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-24 07:40:18'),
(363, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-24 07:40:22'),
(364, 102, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-24 09:03:19'),
(365, 121, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-24 09:37:03'),
(366, 122, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-04-24 09:37:43'),
(367, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-24 10:56:08'),
(368, 123, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-04-24 11:32:52'),
(369, 123, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-04-24 11:32:53'),
(370, 124, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-24 12:32:37'),
(371, 124, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-04-24 12:32:38'),
(372, 125, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-24 16:09:18'),
(373, 125, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-24 16:09:37'),
(374, 114, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-24 21:14:44'),
(375, 99, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-24 21:17:23'),
(376, 126, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-24 22:02:47'),
(377, 126, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-24 22:02:50'),
(378, 45, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-24 22:03:09'),
(379, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-25 03:25:04'),
(380, 127, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-25 07:07:05'),
(381, 128, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-25 07:07:38'),
(382, 99, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-25 07:59:43'),
(383, 46, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-04-25 08:16:24'),
(384, 129, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-25 11:12:10'),
(385, 130, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-25 11:12:44'),
(386, 131, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-25 11:20:25'),
(387, 132, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-25 11:50:59'),
(388, 133, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-25 11:51:49'),
(389, 134, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-25 12:10:25'),
(390, 135, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-25 12:10:39'),
(391, 135, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-25 12:10:43'),
(392, 136, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-25 12:20:23'),
(393, 136, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-25 12:20:26'),
(394, 137, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-25 12:28:16'),
(395, 137, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-25 12:28:17'),
(396, 138, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-04-25 12:47:37'),
(397, 139, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-04-25 12:48:03'),
(398, 140, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-25 13:24:56'),
(399, 140, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-25 13:24:59'),
(400, 57, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-04-25 16:44:04'),
(401, 141, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-25 18:29:58'),
(402, 141, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-25 18:30:00'),
(403, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-26 02:00:59'),
(404, 141, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-04-26 02:13:55'),
(405, 140, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-26 03:19:14'),
(406, 142, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-26 06:08:12'),
(407, 142, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-26 06:08:14'),
(408, 143, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-04-26 07:23:26'),
(409, 143, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-26 07:23:28'),
(410, 144, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-26 08:14:12'),
(411, 144, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-04-26 08:14:14'),
(412, 111, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-26 09:30:12'),
(413, 145, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-04-26 09:37:45'),
(414, 145, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-04-26 09:37:47'),
(415, 146, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-04-26 11:57:59'),
(416, 146, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-04-26 11:58:00'),
(417, 147, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-26 14:11:03'),
(418, 148, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-26 19:33:03'),
(419, 149, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-26 20:44:58'),
(420, 149, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-26 20:45:00'),
(421, 126, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-04-26 21:43:17'),
(422, 150, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-27 03:12:56'),
(423, 150, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-27 03:12:58'),
(424, 151, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-04-27 05:12:44'),
(425, 151, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-27 05:12:47'),
(426, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-27 08:32:23'),
(427, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-27 10:01:02'),
(428, 152, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-27 10:49:02'),
(429, 152, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-27 10:49:04'),
(430, 143, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-04-27 11:29:37'),
(431, 100, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-04-27 13:46:55'),
(432, 153, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-27 15:27:46'),
(433, 153, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-27 15:27:50'),
(434, 37, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-27 20:11:52'),
(435, 46, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-04-27 22:08:00'),
(436, 151, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-04-28 03:50:56'),
(437, 154, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-28 05:52:12'),
(438, 154, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-28 05:52:14'),
(439, 155, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-04-28 06:00:06'),
(440, 155, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-04-28 06:00:08'),
(441, 156, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-28 07:41:58'),
(442, 156, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-04-28 07:42:00'),
(443, 157, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-28 07:50:16'),
(444, 157, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-04-28 07:50:17'),
(445, 153, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-04-28 11:32:29'),
(446, 143, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-28 12:43:53'),
(447, 158, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-04-28 13:13:52'),
(448, 159, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-28 13:16:01'),
(449, 126, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-28 16:13:32'),
(450, 160, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-29 03:07:32'),
(451, 160, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-04-29 03:07:35'),
(452, 161, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-04-29 13:16:39'),
(453, 161, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-04-29 13:16:41'),
(454, 98, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-29 14:16:29'),
(455, 162, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-04-30 07:54:13'),
(456, 162, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-04-30 07:54:14'),
(457, 143, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-04-30 13:35:48'),
(458, 163, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-30 14:07:49'),
(459, 163, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-04-30 14:07:51'),
(460, 164, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-04-30 15:43:39'),
(461, 164, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-04-30 15:43:40'),
(462, 96, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-04-30 16:33:30'),
(463, 44, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-01 06:54:16'),
(464, 143, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-01 07:36:05'),
(465, 153, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-01 08:15:32'),
(466, 165, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-01 14:09:54'),
(467, 165, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-01 14:09:56'),
(468, 166, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-01 17:24:32'),
(469, 35, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-01 22:16:40'),
(470, 167, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-01 23:35:18'),
(471, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-01 23:35:18'),
(472, 161, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-02 01:34:12'),
(473, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-02 02:34:49'),
(474, 168, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-02 06:49:02'),
(475, 168, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-02 06:49:05'),
(476, 169, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-02 08:20:13'),
(477, 169, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-02 08:20:16'),
(478, 170, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-02 10:21:24'),
(479, 170, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-02 10:21:26'),
(480, 171, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-02 11:49:35'),
(481, 172, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-02 12:27:42'),
(482, 172, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-02 12:27:44'),
(483, 173, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-02 12:31:07'),
(484, 173, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-02 12:31:08'),
(485, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-02 14:25:12'),
(486, 174, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-02 14:55:55'),
(487, 174, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-02 14:55:57'),
(488, 175, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-02 18:48:29'),
(489, 175, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-02 18:48:32'),
(490, 176, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-02 19:09:05'),
(491, 176, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-02 19:09:10'),
(492, 99, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-02 22:26:46'),
(493, 177, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-02 23:17:29'),
(494, 175, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-03 04:45:27'),
(495, 176, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-03 05:20:50'),
(496, 178, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-03 05:37:25'),
(497, 179, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-03 06:42:03'),
(498, 173, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-03 07:17:18'),
(499, 111, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-03 15:32:28'),
(500, 180, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-03 17:29:47'),
(501, 180, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-03 17:29:50'),
(502, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-04 04:10:57'),
(503, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-04 05:16:16'),
(504, 175, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-04 05:56:27'),
(505, 106, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-04 12:04:05'),
(506, 153, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-04 12:48:17'),
(507, 181, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-04 15:05:52'),
(508, 181, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-04 16:01:48'),
(509, 78, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-04 16:29:11'),
(510, 111, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-04 20:25:25'),
(511, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-05 00:11:19'),
(512, 182, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-05 00:26:05'),
(513, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-05 00:26:06'),
(514, 183, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-05 00:47:29'),
(515, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-05 00:47:30'),
(516, 78, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-05 06:15:19'),
(517, 115, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-05 06:25:10'),
(518, 184, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-05 07:38:20'),
(519, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-05 08:20:26'),
(520, 111, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-05 13:50:27'),
(521, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-05 14:10:48'),
(522, 48, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-05 15:11:48'),
(523, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-06 00:44:13'),
(524, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-06 00:46:29'),
(525, 111, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-06 05:06:38'),
(526, 185, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-06 06:08:13'),
(527, 185, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-06 06:08:15'),
(528, 100, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-06 07:04:56'),
(529, 186, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-06 07:46:32'),
(530, 186, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-06 07:46:33'),
(531, 187, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-06 08:18:22'),
(532, 187, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-06 08:18:25'),
(533, 188, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-06 08:54:48'),
(534, 189, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-06 08:55:40'),
(535, 190, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-06 09:22:28'),
(536, 190, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-06 09:22:30'),
(537, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-06 11:38:31'),
(538, 191, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-06 15:07:20'),
(539, 102, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-06 17:45:51'),
(540, 192, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-06 18:03:38'),
(541, 192, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-06 18:03:40'),
(542, 117, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-07 00:52:59'),
(543, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-07 00:57:52'),
(544, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-07 00:59:19'),
(545, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-07 02:21:52'),
(546, 44, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-07 02:23:28'),
(547, 193, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-07 04:17:07'),
(548, 193, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-07 04:17:12'),
(549, 111, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-07 06:30:48'),
(550, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-07 08:09:03'),
(551, 194, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-07 08:13:04'),
(552, 194, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-07 08:13:08'),
(553, 181, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-07 08:42:18'),
(554, 195, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-07 10:08:43'),
(555, 195, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-07 10:08:45'),
(556, 196, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-07 16:11:45'),
(557, 196, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-07 16:11:47'),
(558, 99, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-07 20:19:15'),
(559, 196, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-08 00:36:07'),
(560, 185, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-08 00:36:48'),
(561, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-08 01:30:26'),
(562, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-08 01:31:51'),
(563, 197, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-08 05:32:34'),
(564, 197, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-08 05:32:37'),
(565, 198, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-08 06:39:57'),
(566, 198, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-08 06:39:59'),
(567, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-08 07:15:17'),
(568, 111, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-08 09:26:02'),
(569, 96, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-08 11:14:02'),
(570, 199, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-08 12:52:27'),
(571, 199, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-08 12:52:29'),
(572, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-09 05:27:52'),
(573, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-09 05:28:39'),
(574, 200, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-09 07:29:14'),
(575, 200, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-09 07:29:16'),
(576, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-09 08:59:11'),
(577, 58, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-09 10:41:43'),
(578, 201, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-09 11:26:23'),
(579, 201, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-09 11:26:25'),
(580, 196, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-09 13:09:49'),
(581, 202, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-09 14:34:29'),
(582, 202, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-09 14:34:31'),
(583, 192, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-09 20:23:12'),
(584, 185, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-09 22:53:32'),
(585, 44, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-10 01:11:17'),
(586, 203, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-10 02:03:18'),
(587, 203, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-10 02:03:21'),
(588, 102, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-10 05:29:51'),
(589, 204, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-10 05:30:54'),
(590, 204, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-10 05:30:55'),
(591, 196, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-10 05:52:47'),
(592, 181, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-10 05:53:08'),
(593, 197, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-10 06:18:21'),
(594, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-10 08:35:17'),
(595, 205, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-10 09:47:49'),
(596, 205, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-10 09:48:08'),
(597, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-10 11:51:09'),
(598, 206, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-10 17:35:55'),
(599, 206, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-10 17:35:57'),
(600, 207, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-10 22:06:51'),
(601, 207, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-10 22:06:54'),
(602, 208, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-11 05:21:57'),
(603, 208, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-11 05:22:00'),
(604, 44, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-11 05:39:41'),
(605, 209, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-11 06:00:53'),
(606, 209, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-11 06:00:57'),
(607, 100, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-11 07:16:24'),
(608, 210, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-11 08:50:46'),
(609, 185, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-11 11:56:36'),
(610, 153, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-11 12:06:25'),
(611, 55, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-11 17:36:47'),
(612, 55, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-11 17:36:47'),
(613, 211, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-11 18:30:09'),
(614, 205, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-11 19:49:16'),
(615, 212, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-12 00:13:10'),
(616, 212, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-12 00:13:12'),
(617, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-12 02:47:50'),
(618, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-12 02:49:07'),
(619, 213, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-12 03:23:14'),
(620, 213, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-12 03:23:16'),
(621, 214, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-12 13:13:22'),
(622, 214, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-12 13:13:25'),
(623, 181, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-12 14:33:10'),
(624, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-13 01:22:08'),
(625, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-13 01:22:44'),
(626, 44, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-13 01:42:47'),
(627, 215, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-13 04:29:28'),
(628, 215, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-13 04:29:30'),
(629, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-13 08:04:52'),
(630, 175, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-13 08:06:32'),
(631, 216, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-13 10:35:01'),
(632, 216, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-13 10:35:06'),
(633, 206, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-13 13:03:18'),
(634, 217, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-13 15:15:34'),
(635, 217, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-13 15:15:37'),
(636, 218, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-13 23:13:24'),
(637, 218, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-13 23:13:28'),
(638, 219, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-14 00:35:17'),
(639, 219, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-14 00:35:21'),
(640, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-14 01:41:40'),
(641, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-14 01:42:23'),
(642, 208, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-14 01:58:21'),
(643, 218, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-14 04:24:53'),
(644, 206, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-14 05:32:51'),
(645, 164, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-14 07:04:36'),
(646, 220, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-14 10:25:40'),
(647, 220, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-14 10:25:43'),
(648, 221, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-14 12:06:52'),
(649, 221, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-14 12:06:53'),
(650, 222, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-14 16:22:57'),
(651, 222, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-14 16:23:02'),
(652, 223, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-14 16:34:04'),
(653, 223, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-14 16:34:06'),
(654, 224, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-14 17:43:29'),
(655, 225, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-15 04:40:48'),
(656, 225, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-15 04:40:50'),
(657, 206, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-15 04:51:45'),
(658, 226, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-15 07:06:29'),
(659, 226, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-15 07:06:31'),
(660, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-15 09:40:32'),
(661, 222, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-15 10:06:29'),
(662, 227, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-15 10:56:40'),
(663, 227, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-15 10:57:10'),
(664, 115, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-15 12:40:55'),
(665, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-15 13:47:04'),
(666, 217, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-15 14:14:38'),
(667, 228, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-15 16:13:40'),
(668, 228, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-15 16:13:42'),
(669, 228, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-16 01:29:04'),
(670, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-16 01:32:56'),
(671, 229, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-16 05:47:40'),
(672, 230, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-16 06:57:55'),
(673, 227, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-16 11:00:51'),
(674, 99, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-16 11:41:18'),
(675, 231, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-16 13:31:18'),
(676, 231, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-16 13:31:20'),
(677, 232, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-16 17:32:49'),
(678, 232, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-16 17:32:55'),
(679, 233, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-16 22:02:38'),
(680, 234, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-16 22:59:51'),
(681, 234, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-16 22:59:52'),
(682, 181, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-17 03:12:10'),
(683, 117, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-17 03:22:17'),
(684, 176, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-17 03:23:05'),
(685, 141, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-17 03:47:13'),
(686, 235, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-17 05:36:21'),
(687, 235, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-17 05:36:23'),
(688, 234, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-17 07:44:10'),
(689, 232, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-17 08:32:45'),
(690, 213, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-17 13:09:23'),
(691, 205, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-17 15:19:05'),
(692, 236, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-17 16:33:54'),
(693, 236, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-17 16:33:57'),
(694, 231, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-17 17:29:13'),
(695, 182, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-18 05:46:11'),
(696, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-18 05:46:47'),
(697, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-18 05:47:48'),
(698, 237, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-18 08:07:18'),
(699, 238, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-18 08:07:37'),
(700, 231, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-18 08:57:45'),
(701, 239, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-18 13:25:08'),
(702, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-18 13:25:11'),
(703, 240, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-18 16:36:51'),
(704, 240, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-18 16:36:54'),
(705, 241, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-18 17:28:05'),
(706, 241, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-18 17:28:07'),
(707, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-19 01:46:02'),
(708, 236, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-19 02:05:27'),
(709, 242, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-19 02:08:08'),
(710, 242, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-19 02:08:11'),
(711, 232, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-19 02:49:21'),
(712, 243, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-19 04:16:10'),
(713, 243, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-19 04:16:11'),
(714, 244, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-19 07:06:53'),
(715, 244, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-19 07:06:56'),
(716, 245, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-19 08:35:20'),
(717, 245, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-19 08:35:22'),
(718, 246, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-19 10:38:45'),
(719, 246, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-19 10:38:48'),
(720, 247, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-19 11:35:48'),
(721, 247, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-19 11:35:49'),
(722, 227, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-19 11:48:50'),
(723, 248, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-19 15:06:46'),
(724, 248, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-19 15:06:48'),
(725, 142, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-19 15:10:56'),
(726, 78, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-19 15:11:58'),
(727, 205, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-19 15:15:21'),
(728, 185, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-19 15:16:30'),
(729, 214, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-19 17:54:45'),
(730, 249, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-20 02:50:55'),
(731, 249, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-20 02:50:57'),
(732, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-20 03:28:17'),
(733, 250, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-20 04:31:06'),
(734, 251, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-20 07:02:40'),
(735, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-20 07:02:44'),
(736, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-20 07:59:53'),
(737, 183, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-20 08:01:53'),
(738, 252, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-20 16:27:24'),
(739, 253, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-20 17:56:48'),
(740, 253, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-20 17:56:50'),
(741, 254, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-21 03:37:44');
INSERT INTO `tbl_user_scratch_card` (`id`, `user_id`, `scratch_id`, `app_group_id`, `scratch_type`, `scratch_for`, `earning`, `is_scratch`, `created_at`) VALUES
(742, 254, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-21 03:37:46'),
(743, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-21 04:37:00'),
(744, 255, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-21 05:22:24'),
(745, 256, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-21 05:23:36'),
(746, 257, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-21 05:24:33'),
(747, 161, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-21 05:26:10'),
(748, 249, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-21 06:31:58'),
(749, 185, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-21 08:12:02'),
(750, 258, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-21 08:23:42'),
(751, 258, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-21 08:23:46'),
(752, 259, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-21 09:27:26'),
(753, 259, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-21 09:27:28'),
(754, 260, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-21 11:38:45'),
(755, 260, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-21 11:38:48'),
(756, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-21 13:02:47'),
(757, 261, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-21 13:06:44'),
(758, 261, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-21 13:06:45'),
(759, 262, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-21 13:07:41'),
(760, 262, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-21 13:07:44'),
(761, 263, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-21 14:17:53'),
(762, 263, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-21 14:17:55'),
(763, 264, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-21 16:35:06'),
(764, 264, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-21 16:35:09'),
(765, 217, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-21 18:47:50'),
(766, 265, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-21 19:33:23'),
(767, 265, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-21 19:33:25'),
(768, 266, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-21 19:47:34'),
(769, 266, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-21 19:47:36'),
(770, 253, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-22 01:25:02'),
(771, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-22 03:51:55'),
(772, 267, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-22 04:15:47'),
(773, 181, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-22 04:47:37'),
(774, 268, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-22 04:48:04'),
(775, 259, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-22 09:25:23'),
(776, 269, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-22 10:37:04'),
(777, 269, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-22 10:37:06'),
(778, 270, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-22 11:43:58'),
(779, 271, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-22 12:31:40'),
(780, 271, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-22 12:31:43'),
(781, 272, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-22 13:08:27'),
(782, 272, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-22 13:08:30'),
(783, 261, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-22 14:17:15'),
(784, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-22 14:18:38'),
(785, 260, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-22 15:35:58'),
(786, 273, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-22 15:57:55'),
(787, 273, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-22 15:57:57'),
(788, 274, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-22 18:48:41'),
(789, 275, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-23 00:35:56'),
(790, 275, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-23 00:35:58'),
(791, 273, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-23 01:06:39'),
(792, 215, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-23 04:49:16'),
(793, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-23 05:49:30'),
(794, 185, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-23 05:59:09'),
(795, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-23 06:51:19'),
(796, 276, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-23 07:04:03'),
(797, 276, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-23 07:04:04'),
(798, 208, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-23 07:31:41'),
(799, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-23 10:45:02'),
(800, 263, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-23 14:54:04'),
(801, 266, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-23 17:33:38'),
(802, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-23 18:30:06'),
(803, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-24 04:28:28'),
(804, 277, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-24 05:35:27'),
(805, 278, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-24 05:44:12'),
(806, 278, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-24 05:44:14'),
(807, 232, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-24 06:53:48'),
(808, 279, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-24 07:03:15'),
(809, 280, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-24 07:04:50'),
(810, 259, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-24 07:24:50'),
(811, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-05-24 07:58:58'),
(812, 276, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-24 08:00:10'),
(813, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-24 11:02:41'),
(814, 281, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-24 11:42:00'),
(815, 282, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-24 11:42:24'),
(816, 283, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-24 11:42:40'),
(817, 284, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-05-24 12:10:14'),
(818, 284, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-24 12:10:16'),
(819, 266, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-24 13:26:19'),
(820, 186, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-24 23:22:13'),
(821, 216, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-25 04:47:19'),
(822, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-25 07:50:35'),
(823, 285, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-25 08:20:53'),
(824, 285, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-25 08:20:55'),
(825, 232, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-25 13:10:48'),
(826, 265, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-25 13:10:50'),
(827, 241, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-25 13:48:14'),
(828, 181, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-25 14:11:50'),
(829, 286, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-25 14:31:44'),
(830, 286, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-25 14:31:45'),
(831, 157, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-25 18:21:30'),
(832, 243, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-25 19:08:32'),
(833, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-26 02:15:15'),
(834, 276, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-26 08:02:12'),
(835, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-26 08:03:22'),
(836, 157, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-26 08:35:52'),
(837, 218, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-26 09:44:30'),
(838, 287, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-26 13:16:40'),
(839, 288, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-26 13:40:18'),
(840, 288, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-26 13:40:20'),
(841, 289, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-26 14:21:39'),
(842, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-26 15:56:29'),
(843, 290, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-26 16:45:28'),
(844, 290, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-26 16:45:31'),
(845, 83, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-26 19:14:07'),
(846, 291, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-26 20:01:51'),
(847, 291, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-26 20:01:53'),
(848, 290, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-27 02:41:51'),
(849, 185, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-27 07:00:50'),
(850, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-27 09:15:31'),
(851, 291, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-27 11:48:55'),
(852, 263, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-27 13:35:22'),
(853, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-27 16:26:26'),
(854, 292, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-27 17:18:36'),
(855, 292, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-27 17:18:39'),
(856, 293, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-27 17:56:07'),
(857, 293, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-27 17:56:09'),
(858, 262, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-28 07:11:15'),
(859, 294, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-28 08:42:48'),
(860, 294, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-05-28 08:42:49'),
(861, 295, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-28 08:58:28'),
(862, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-28 11:56:55'),
(863, 259, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-28 12:58:38'),
(864, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-28 13:37:56'),
(865, 296, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-28 15:36:59'),
(866, 296, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-28 15:37:02'),
(867, 232, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-05-28 19:19:33'),
(868, 297, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-29 00:53:25'),
(869, 297, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-29 00:53:26'),
(870, 263, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-29 02:36:30'),
(871, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-29 04:20:11'),
(872, 173, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-05-29 06:10:09'),
(873, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-29 08:30:38'),
(874, 206, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-29 10:44:09'),
(875, 298, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-29 10:46:33'),
(876, 298, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-29 10:46:35'),
(877, 253, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-29 17:18:38'),
(878, 294, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-05-29 17:39:32'),
(879, 299, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-05-29 23:47:13'),
(880, 299, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-05-29 23:47:15'),
(881, 286, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-05-30 00:15:17'),
(882, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-30 07:21:39'),
(883, 36, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-30 09:21:31'),
(884, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-05-30 09:59:18'),
(885, 276, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-05-30 10:00:20'),
(886, 142, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-05-30 14:34:38'),
(887, 217, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-05-30 17:06:11'),
(888, 48, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-05-30 23:08:48'),
(889, 206, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-05-31 06:50:13'),
(890, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-05-31 07:48:18'),
(891, 300, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-05-31 13:55:31'),
(892, 300, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-05-31 13:55:34'),
(893, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-05-31 13:58:07'),
(894, 217, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-05-31 15:41:30'),
(895, 301, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-01 01:03:55'),
(896, 301, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-01 01:03:56'),
(897, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-01 01:22:22'),
(898, 302, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-01 07:53:06'),
(899, 302, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-01 07:53:08'),
(900, 206, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-01 13:06:16'),
(901, 234, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-01 22:35:34'),
(902, 303, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-02 03:31:15'),
(903, 303, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-02 03:31:18'),
(904, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-02 10:47:27'),
(905, 304, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-02 11:55:16'),
(906, 304, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-02 11:55:18'),
(907, 263, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-02 12:54:34'),
(908, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-02 14:53:45'),
(909, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-02 15:00:04'),
(910, 305, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-03 10:51:44'),
(911, 305, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-03 10:51:44'),
(912, 305, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-03 10:51:46'),
(913, 307, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-03 16:07:59'),
(914, 308, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-03 16:08:28'),
(915, 309, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-03 17:07:29'),
(916, 309, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-03 17:07:36'),
(917, 160, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-03 17:36:49'),
(918, 310, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-03 22:40:59'),
(919, 310, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-03 22:41:01'),
(920, 311, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-04 00:27:02'),
(921, 311, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-04 00:27:05'),
(922, 310, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-04 02:21:00'),
(923, 309, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-04 07:02:32'),
(924, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-04 08:29:42'),
(925, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-04 08:29:42'),
(926, 100, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-04 08:58:02'),
(927, 259, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-04 09:28:05'),
(928, 120, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-04 10:40:50'),
(929, 305, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-04 20:32:57'),
(930, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-05 09:32:27'),
(931, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-05 09:32:27'),
(932, 312, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-05 10:40:22'),
(933, 312, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-05 10:40:25'),
(934, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-05 15:52:57'),
(935, 313, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-05 16:00:52'),
(936, 313, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-05 16:00:54'),
(937, 276, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-06 07:26:34'),
(938, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-06 07:29:32'),
(939, 275, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-06 08:15:34'),
(940, 208, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-06 08:29:01'),
(941, 115, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-06 09:04:40'),
(942, 312, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-06 11:12:07'),
(943, 314, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-06 13:07:51'),
(944, 314, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-06 13:07:54'),
(945, 315, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-06 13:11:40'),
(946, 315, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-06 13:11:42'),
(947, 316, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-07 00:56:14'),
(948, 316, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-07 00:56:15'),
(949, 317, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-07 03:22:04'),
(950, 317, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-07 03:22:05'),
(951, 318, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-07 05:10:29'),
(952, 318, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-07 05:10:31'),
(953, 319, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-07 05:52:21'),
(954, 320, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-07 06:39:18'),
(955, 320, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-07 06:39:21'),
(956, 321, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-07 06:42:21'),
(957, 173, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-07 09:15:11'),
(958, 322, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-07 09:30:23'),
(959, 322, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-07 09:30:26'),
(960, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-07 10:06:25'),
(961, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-07 10:06:25'),
(962, 323, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-07 10:25:38'),
(963, 324, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-07 13:25:55'),
(964, 324, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-07 13:26:02'),
(965, 325, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-07 13:35:37'),
(966, 325, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-07 13:35:40'),
(967, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-07 16:25:13'),
(968, 326, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-07 18:22:31'),
(969, 326, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-07 18:22:34'),
(970, 294, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-07 18:38:42'),
(971, 290, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-08 00:04:16'),
(972, 327, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-08 02:20:17'),
(973, 327, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-08 02:20:19'),
(974, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-08 05:04:22'),
(975, 328, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-08 08:16:52'),
(976, 325, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-08 09:28:31'),
(977, 329, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-08 13:17:18'),
(978, 329, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-08 13:17:19'),
(979, 286, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-08 16:37:37'),
(980, 330, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-08 20:44:28'),
(981, 330, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-08 20:44:29'),
(982, 331, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-09 00:41:56'),
(983, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-09 08:47:15'),
(984, 332, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-09 13:24:10'),
(985, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-09 15:21:19'),
(986, 333, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-09 20:41:55'),
(987, 333, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-09 20:41:57'),
(988, 286, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-09 22:27:36'),
(989, 208, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-10 00:58:34'),
(990, 173, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-10 01:41:59'),
(991, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-10 06:18:30'),
(992, 334, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-10 10:00:12'),
(993, 334, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-10 10:00:13'),
(994, 335, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-10 10:27:12'),
(995, 335, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-10 10:27:12'),
(996, 336, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-10 10:28:23'),
(997, 336, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-10 10:28:23'),
(998, 337, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-10 12:02:24'),
(999, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-10 12:03:48'),
(1000, 338, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-10 12:26:51'),
(1001, 338, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-10 12:26:52'),
(1002, 5, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-10 12:29:39'),
(1003, 330, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-10 12:36:08'),
(1004, 299, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-10 12:36:27'),
(1005, 286, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-10 12:45:14'),
(1006, 294, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-10 12:50:10'),
(1007, 290, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-10 13:05:25'),
(1008, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-10 16:23:52'),
(1009, 167, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-10 18:52:41'),
(1010, 339, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-10 21:41:45'),
(1011, 339, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-10 21:41:48'),
(1012, 325, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-11 00:36:21'),
(1013, 276, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-11 06:45:03'),
(1014, 251, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-11 06:46:20'),
(1015, 290, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-11 09:44:03'),
(1016, 340, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-11 10:19:13'),
(1017, 340, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-11 10:19:19'),
(1018, 181, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-11 11:25:40'),
(1019, 205, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-11 12:20:35'),
(1020, 47, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-11 12:36:47'),
(1021, 239, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-11 15:28:39'),
(1022, 336, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-11 16:58:06'),
(1023, 341, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-11 16:58:52'),
(1024, 341, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-11 16:58:53'),
(1025, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-11 17:38:58'),
(1026, 342, 1, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-12 00:40:14'),
(1027, 342, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-12 00:40:17'),
(1028, 1, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-12 05:37:03'),
(1029, 217, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-12 05:37:09'),
(1030, 173, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-12 05:38:09'),
(1031, 290, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-12 06:11:47'),
(1032, 226, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-12 07:06:27'),
(1033, 18, 2, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-12 10:28:19'),
(1034, 357, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 130', 0, '2019-06-12 13:25:23'),
(1035, 357, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-12 13:25:23'),
(1036, 357, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-06-12 13:25:23'),
(1037, 357, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-12 13:25:23'),
(1038, 357, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-12 13:25:23'),
(1039, 353, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 242', 0, '2019-06-12 13:26:15'),
(1040, 353, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-12 13:26:15'),
(1041, 353, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-12 13:26:15'),
(1042, 353, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-12 13:26:15'),
(1043, 353, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-12 13:26:15'),
(1044, 358, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 126', 0, '2019-06-12 13:26:44'),
(1045, 358, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-12 13:26:44'),
(1046, 358, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-06-12 13:26:44'),
(1047, 358, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-12 13:26:44'),
(1048, 358, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-12 13:26:44'),
(1049, 358, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-12 13:26:50'),
(1050, 359, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 157', 0, '2019-06-12 13:30:24'),
(1051, 359, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-12 13:30:24'),
(1052, 359, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-06-12 13:30:24'),
(1053, 359, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-12 13:30:24'),
(1054, 359, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-12 13:30:24'),
(1055, 360, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 132', 0, '2019-06-12 13:31:02'),
(1056, 360, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-12 13:31:02'),
(1057, 360, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-06-12 13:31:02'),
(1058, 360, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-12 13:31:02'),
(1059, 360, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-12 13:31:02'),
(1060, 5, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-12 13:31:20'),
(1061, 342, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-12 14:18:05'),
(1062, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-12 14:47:07'),
(1063, 361, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-13 00:30:06'),
(1064, 362, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-13 01:30:28'),
(1065, 338, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-13 02:50:57'),
(1066, 363, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-13 03:58:29'),
(1067, 5, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-13 04:51:55'),
(1068, 364, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 244', 0, '2019-06-13 04:52:29'),
(1069, 364, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-13 04:52:29'),
(1070, 364, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-06-13 04:52:29'),
(1071, 364, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-13 04:52:29'),
(1072, 364, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-13 04:52:29'),
(1073, 365, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 171', 0, '2019-06-13 04:54:58'),
(1074, 365, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-13 04:54:58'),
(1075, 365, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-13 04:54:58'),
(1076, 365, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-13 04:54:58'),
(1077, 365, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-13 04:54:58'),
(1078, 365, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-13 04:55:04'),
(1079, 366, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 65', 0, '2019-06-13 04:57:16'),
(1080, 366, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-13 04:57:16'),
(1081, 366, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-06-13 04:57:16'),
(1082, 366, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-13 04:57:16'),
(1083, 366, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-13 04:57:16'),
(1084, 366, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-13 04:57:20'),
(1085, 368, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 138', 0, '2019-06-13 04:59:39'),
(1086, 368, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-13 04:59:39'),
(1087, 368, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-06-13 04:59:39'),
(1088, 368, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-13 04:59:39'),
(1089, 368, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-13 04:59:39'),
(1090, 368, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-13 04:59:43'),
(1091, 369, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 66', 0, '2019-06-13 06:44:15'),
(1092, 369, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-13 06:44:15'),
(1093, 369, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-06-13 06:44:15'),
(1094, 369, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-13 06:44:15'),
(1095, 369, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-13 06:44:15'),
(1096, 369, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-13 06:44:17'),
(1097, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-13 07:13:09'),
(1098, 370, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 115', 0, '2019-06-13 07:19:10'),
(1099, 370, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-13 07:19:10'),
(1100, 370, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-13 07:19:10'),
(1101, 370, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-13 07:19:10'),
(1102, 370, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-13 07:19:10'),
(1103, 370, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-13 07:19:22'),
(1104, 181, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-13 07:26:57'),
(1105, 342, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-13 07:50:40'),
(1106, 371, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-13 08:03:33'),
(1107, 1, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1108, 4, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1109, 5, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1110, 6, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1111, 7, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1112, 8, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1113, 9, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1114, 10, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1115, 11, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1116, 12, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1117, 13, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1118, 14, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1119, 15, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1120, 16, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1121, 17, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1122, 18, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1123, 19, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1124, 20, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1125, 21, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1126, 22, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1127, 23, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1128, 24, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1129, 25, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1130, 26, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1131, 27, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1132, 28, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1133, 29, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1134, 30, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1135, 31, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1136, 32, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1137, 33, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1138, 34, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1139, 35, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1140, 36, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1141, 37, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1142, 38, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1143, 39, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1144, 40, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1145, 41, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1146, 42, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1147, 43, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1148, 44, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1149, 45, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1150, 46, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1151, 47, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1152, 48, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1153, 49, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1154, 50, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1155, 51, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1156, 52, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1157, 53, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1158, 54, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1159, 55, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1160, 56, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1161, 57, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1162, 58, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1163, 59, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1164, 60, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1165, 61, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1166, 62, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1167, 63, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1168, 64, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1169, 65, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1170, 66, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1171, 67, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1172, 68, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1173, 69, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1174, 70, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1175, 71, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1176, 72, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1177, 73, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1178, 74, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1179, 75, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1180, 76, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1181, 77, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1182, 78, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1183, 79, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1184, 80, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1185, 81, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1186, 82, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1187, 83, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1188, 84, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1189, 85, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1190, 86, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1191, 87, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1192, 88, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1193, 89, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1194, 90, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1195, 91, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1196, 92, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1197, 93, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1198, 94, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1199, 95, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1200, 96, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1201, 97, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1202, 98, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1203, 99, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1204, 100, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1205, 101, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1206, 102, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1207, 103, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1208, 104, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1209, 105, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1210, 106, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1211, 107, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1212, 108, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1213, 109, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1214, 110, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1215, 111, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1216, 112, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1217, 113, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1218, 114, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1219, 115, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1220, 116, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1221, 117, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1222, 118, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1223, 119, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1224, 120, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1225, 121, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1226, 122, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1227, 123, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1228, 124, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1229, 125, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1230, 126, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1231, 127, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1232, 128, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1233, 129, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1234, 130, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1235, 131, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1236, 132, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1237, 133, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1238, 134, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1239, 135, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1240, 136, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1241, 137, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1242, 138, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1243, 139, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1244, 140, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1245, 141, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1246, 142, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1247, 143, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1248, 144, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1249, 145, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1250, 146, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1251, 147, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1252, 148, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1253, 149, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1254, 150, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1255, 151, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1256, 152, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1257, 153, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1258, 154, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1259, 155, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1260, 156, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1261, 157, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1262, 158, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1263, 159, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1264, 160, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1265, 161, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1266, 162, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1267, 163, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1268, 164, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1269, 165, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1270, 166, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1271, 167, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1272, 168, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1273, 169, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1274, 170, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1275, 171, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1276, 172, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1277, 173, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1278, 174, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1279, 175, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1280, 176, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1281, 177, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1282, 178, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1283, 179, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1284, 180, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1285, 181, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1286, 182, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1287, 183, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1288, 184, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1289, 185, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1290, 186, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1291, 187, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1292, 188, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1293, 189, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1294, 190, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1295, 191, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1296, 192, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1297, 193, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1298, 194, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1299, 195, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1300, 196, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1301, 197, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1302, 198, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1303, 199, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1304, 200, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1305, 201, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1306, 202, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1307, 203, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1308, 204, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1309, 205, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1310, 206, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1311, 207, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1312, 208, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1313, 209, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1314, 210, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1315, 211, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1316, 212, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1317, 213, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1318, 214, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1319, 215, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1320, 216, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1321, 217, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1322, 218, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1323, 219, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1324, 220, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1325, 221, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1326, 222, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1327, 223, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1328, 224, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1329, 225, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1330, 226, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1331, 227, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1332, 228, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1333, 229, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1334, 230, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1335, 231, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1336, 232, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1337, 233, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1338, 234, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1339, 235, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1340, 236, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1341, 237, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1342, 238, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1343, 239, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1344, 240, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1345, 241, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1346, 242, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1347, 243, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1348, 244, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1349, 245, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1350, 246, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1351, 247, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1352, 248, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1353, 249, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1354, 250, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1355, 251, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1356, 252, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1357, 253, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1358, 254, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1359, 255, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1360, 256, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1361, 257, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1362, 258, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1363, 259, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1364, 260, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1365, 261, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1366, 262, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1367, 263, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1368, 264, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1369, 265, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1370, 266, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1371, 267, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1372, 268, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1373, 269, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1374, 270, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1375, 271, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1376, 272, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1377, 273, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1378, 274, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1379, 275, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1380, 276, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1381, 277, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1382, 278, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1383, 279, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49');
INSERT INTO `tbl_user_scratch_card` (`id`, `user_id`, `scratch_id`, `app_group_id`, `scratch_type`, `scratch_for`, `earning`, `is_scratch`, `created_at`) VALUES
(1384, 280, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1385, 281, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1386, 282, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1387, 283, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1388, 284, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1389, 285, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1390, 286, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1391, 287, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1392, 288, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1393, 289, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1394, 290, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1395, 291, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1396, 292, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1397, 293, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1398, 294, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1399, 295, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1400, 296, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1401, 297, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1402, 298, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1403, 299, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1404, 300, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1405, 301, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1406, 302, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1407, 303, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1408, 304, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1409, 305, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1410, 306, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1411, 307, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1412, 308, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1413, 309, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1414, 310, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1415, 311, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1416, 312, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1417, 313, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1418, 314, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1419, 315, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1420, 316, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1421, 317, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1422, 318, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1423, 319, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1424, 320, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1425, 321, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1426, 322, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1427, 323, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1428, 324, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1429, 325, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1430, 326, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1431, 327, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1432, 328, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1433, 329, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1434, 330, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1435, 331, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1436, 332, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1437, 333, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1438, 334, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1439, 335, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1440, 336, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1441, 337, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1442, 338, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1443, 339, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1444, 340, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1445, 341, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1446, 342, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1447, 343, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1448, 344, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1449, 345, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1450, 346, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1451, 347, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1452, 348, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1453, 349, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1454, 350, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1455, 351, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1456, 352, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1457, 353, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1458, 354, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1459, 355, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1460, 356, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1461, 357, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1462, 358, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1463, 359, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1464, 360, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1465, 361, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1466, 362, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1467, 363, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1468, 364, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1469, 365, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1470, 366, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1471, 367, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1472, 368, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1473, 369, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1474, 370, 15, NULL, 'coupan', NULL, 'QWERTY', 0, '2019-06-13 08:45:49'),
(1475, 371, 15, NULL, 'coupan', NULL, 'QWERTY', 1, '2019-06-13 08:45:49'),
(1476, 372, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-13 15:53:57'),
(1477, 373, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-13 18:03:27'),
(1478, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-13 18:41:01'),
(1479, 375, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-13 21:55:05'),
(1480, 376, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-13 22:05:46'),
(1481, 371, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-14 01:20:28'),
(1482, 290, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-14 04:00:53'),
(1483, 5, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-14 08:38:06'),
(1484, 378, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-14 13:20:26'),
(1485, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-14 16:07:38'),
(1486, 379, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-15 04:34:08'),
(1487, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-15 06:29:04'),
(1488, 380, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-15 06:51:25'),
(1489, 239, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-15 09:52:56'),
(1490, 325, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-16 01:53:03'),
(1491, 369, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-16 06:47:22'),
(1492, 383, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-16 14:54:42'),
(1493, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-17 05:43:58'),
(1494, 384, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-17 07:32:58'),
(1495, 157, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-17 11:40:52'),
(1496, 111, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-17 12:04:10'),
(1497, 216, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-17 12:18:47'),
(1498, 78, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-17 15:30:52'),
(1499, 374, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-17 16:40:26'),
(1500, 386, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-17 19:30:54'),
(1501, 387, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-17 21:10:51'),
(1502, 388, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-18 01:39:39'),
(1503, 120, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-18 02:20:26'),
(1504, 369, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-18 02:22:39'),
(1505, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-18 04:13:31'),
(1506, 387, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-18 05:52:44'),
(1507, 68, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-18 06:57:43'),
(1508, 390, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-18 07:33:25'),
(1509, 391, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-18 07:34:17'),
(1510, 389, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 64', 0, '2019-06-18 07:35:33'),
(1511, 389, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-18 07:35:33'),
(1512, 389, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-06-18 07:35:33'),
(1513, 389, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-18 07:35:33'),
(1514, 389, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-18 07:35:33'),
(1515, 389, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-18 07:35:33'),
(1516, 389, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-18 07:35:37'),
(1517, 386, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-18 07:47:28'),
(1518, 239, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-18 09:28:53'),
(1519, 35, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-18 10:30:56'),
(1520, 392, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 81', 0, '2019-06-18 10:33:40'),
(1521, 392, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-18 10:33:40'),
(1522, 392, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-06-18 10:33:40'),
(1523, 392, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-18 10:33:40'),
(1524, 392, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-18 10:33:40'),
(1525, 392, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-18 10:33:40'),
(1526, 392, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-18 10:33:44'),
(1527, 24, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-18 10:51:24'),
(1528, 221, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-18 10:52:57'),
(1529, 394, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 241', 0, '2019-06-18 10:54:53'),
(1530, 394, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-18 10:54:53'),
(1531, 394, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-18 10:54:53'),
(1532, 394, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-18 10:54:53'),
(1533, 394, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-18 10:54:53'),
(1534, 394, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-18 10:54:53'),
(1535, 394, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-18 10:54:55'),
(1536, 395, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 176', 0, '2019-06-18 10:58:15'),
(1537, 395, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-18 10:58:15'),
(1538, 395, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-18 10:58:15'),
(1539, 395, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-18 10:58:15'),
(1540, 395, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-18 10:58:15'),
(1541, 395, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-18 10:58:15'),
(1542, 395, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-18 10:58:17'),
(1543, 5, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-18 11:00:30'),
(1544, 18, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-18 11:23:55'),
(1545, 396, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 210', 0, '2019-06-18 17:07:28'),
(1546, 396, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-18 17:07:28'),
(1547, 396, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-06-18 17:07:28'),
(1548, 396, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-18 17:07:28'),
(1549, 396, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-18 17:07:28'),
(1550, 396, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-18 17:07:28'),
(1551, 396, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-18 17:07:30'),
(1552, 5, 10, 3, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-18 18:57:01'),
(1553, 167, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-18 19:39:56'),
(1554, 397, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 170', 0, '2019-06-18 20:26:55'),
(1555, 397, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-18 20:26:55'),
(1556, 397, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-18 20:26:55'),
(1557, 397, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-18 20:26:55'),
(1558, 397, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-18 20:26:55'),
(1559, 397, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-18 20:26:55'),
(1560, 397, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-18 20:26:59'),
(1561, 398, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 98', 1, '2019-06-19 01:34:53'),
(1562, 398, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-19 01:34:53'),
(1563, 398, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 1, '2019-06-19 01:34:53'),
(1564, 398, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-19 01:34:53'),
(1565, 398, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-19 01:34:53'),
(1566, 398, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-19 01:34:53'),
(1567, 398, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-19 01:34:57'),
(1568, 398, 10, 1, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-19 01:36:17'),
(1569, 398, 10, 2, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-19 02:20:10'),
(1570, 398, 10, 4, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-19 02:20:34'),
(1571, 398, 10, 3, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-19 02:39:19'),
(1572, 399, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 62', 1, '2019-06-19 03:00:05'),
(1573, 399, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-19 03:00:05'),
(1574, 399, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 1, '2019-06-19 03:00:05'),
(1575, 399, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-06-19 03:00:05'),
(1576, 399, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-06-19 03:00:05'),
(1577, 399, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-19 03:00:05'),
(1578, 399, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-19 03:00:07'),
(1579, 68, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-19 03:59:28'),
(1580, 315, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-19 04:50:05'),
(1581, 400, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 141', 1, '2019-06-19 07:55:41'),
(1582, 400, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-19 07:55:41'),
(1583, 400, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-06-19 07:55:41'),
(1584, 400, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-19 07:55:41'),
(1585, 400, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-19 07:55:41'),
(1586, 400, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-19 07:55:41'),
(1587, 400, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-19 07:55:44'),
(1588, 302, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-19 09:15:32'),
(1589, 111, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-19 09:31:56'),
(1590, 402, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 75', 0, '2019-06-19 12:50:17'),
(1591, 402, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-19 12:50:17'),
(1592, 402, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-06-19 12:50:17'),
(1593, 402, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-19 12:50:17'),
(1594, 402, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-19 12:50:17'),
(1595, 402, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-19 12:50:17'),
(1596, 402, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-19 12:50:19'),
(1597, 120, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-19 13:09:26'),
(1598, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-19 14:45:15'),
(1599, 5, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-19 14:48:01'),
(1600, 294, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-19 14:50:53'),
(1601, 361, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-19 15:34:09'),
(1602, 304, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-19 16:13:27'),
(1603, 55, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-19 17:38:00'),
(1604, 99, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-19 17:41:32'),
(1605, 406, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-19 20:10:22'),
(1606, 407, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 200', 0, '2019-06-19 20:20:22'),
(1607, 407, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-19 20:20:22'),
(1608, 407, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-06-19 20:20:22'),
(1609, 407, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-19 20:20:22'),
(1610, 407, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-19 20:20:22'),
(1611, 407, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-19 20:20:22'),
(1612, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-19 20:20:24'),
(1613, 55, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-20 02:23:52'),
(1614, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-06-20 02:31:04'),
(1615, 406, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-20 04:03:08'),
(1616, 383, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-20 06:38:09'),
(1617, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-20 07:16:17'),
(1618, 407, 10, 1, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-20 07:18:06'),
(1619, 408, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 202', 0, '2019-06-20 08:20:28'),
(1620, 408, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-20 08:20:28'),
(1621, 408, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-06-20 08:20:28'),
(1622, 408, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-20 08:20:28'),
(1623, 408, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-20 08:20:28'),
(1624, 408, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-20 08:20:28'),
(1625, 408, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-20 08:20:31'),
(1626, 409, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 92', 1, '2019-06-20 09:37:23'),
(1627, 409, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-20 09:37:23'),
(1628, 409, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 1, '2019-06-20 09:37:23'),
(1629, 409, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-06-20 09:37:23'),
(1630, 409, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-06-20 09:37:23'),
(1631, 409, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-20 09:37:23'),
(1632, 409, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-20 09:37:28'),
(1633, 68, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-20 11:17:58'),
(1634, 313, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-20 14:08:34'),
(1635, 157, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-20 14:18:45'),
(1636, 212, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-20 14:42:18'),
(1637, 318, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-20 17:37:41'),
(1638, 410, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 202', 0, '2019-06-20 20:18:57'),
(1639, 410, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-20 20:18:57'),
(1640, 410, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-06-20 20:18:57'),
(1641, 410, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-20 20:18:57'),
(1642, 410, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-20 20:18:57'),
(1643, 410, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-20 20:18:57'),
(1644, 410, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-20 20:19:00'),
(1645, 399, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-21 02:42:08'),
(1646, 398, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-21 03:10:31'),
(1647, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-21 03:22:05'),
(1648, 206, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-21 03:22:45'),
(1649, 160, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-21 04:22:16'),
(1650, 412, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 192', 0, '2019-06-21 05:43:04'),
(1651, 412, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-21 05:43:04'),
(1652, 412, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-06-21 05:43:04'),
(1653, 412, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-06-21 05:43:04'),
(1654, 412, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-21 05:43:04'),
(1655, 412, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-21 05:43:04'),
(1656, 412, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-21 05:43:08'),
(1657, 264, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-21 12:19:48'),
(1658, 413, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 97', 0, '2019-06-21 12:32:30'),
(1659, 413, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-21 12:32:30'),
(1660, 413, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-06-21 12:32:30'),
(1661, 413, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-21 12:32:30'),
(1662, 413, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-21 12:32:30'),
(1663, 413, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-21 12:32:30'),
(1664, 413, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-21 12:32:33'),
(1665, 414, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 175', 0, '2019-06-21 13:44:26'),
(1666, 414, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-21 13:44:26'),
(1667, 414, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-06-21 13:44:26'),
(1668, 414, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-21 13:44:26'),
(1669, 414, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-21 13:44:26'),
(1670, 414, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-21 13:44:26'),
(1671, 414, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-21 13:44:29'),
(1672, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-21 17:19:20'),
(1673, 317, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-21 19:58:55'),
(1674, 414, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-22 06:35:19'),
(1675, 5, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-22 07:39:27'),
(1676, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-22 10:07:19'),
(1677, 265, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-22 12:14:25'),
(1678, 251, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-22 12:49:00'),
(1679, 208, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-22 15:23:46'),
(1680, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-22 20:38:11'),
(1681, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-23 06:12:10'),
(1682, 396, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-23 07:06:51'),
(1683, 416, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 241', 1, '2019-06-23 08:32:38'),
(1684, 416, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-23 08:32:38'),
(1685, 416, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 1, '2019-06-23 08:32:38'),
(1686, 416, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-23 08:32:38'),
(1687, 416, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-23 08:32:38'),
(1688, 416, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-23 08:32:38'),
(1689, 416, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-23 08:32:41'),
(1690, 417, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 63', 0, '2019-06-23 09:14:47'),
(1691, 417, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-23 09:14:47'),
(1692, 417, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-06-23 09:14:47'),
(1693, 417, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-23 09:14:47'),
(1694, 417, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-23 09:14:47'),
(1695, 417, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-23 09:14:47'),
(1696, 417, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-23 09:14:51'),
(1697, 417, 10, 1, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-23 09:15:31'),
(1698, 415, 10, 4, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-23 09:28:01'),
(1699, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-23 13:20:37'),
(1700, 386, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-23 14:19:37'),
(1701, 206, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-23 17:03:45'),
(1702, 418, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 201', 0, '2019-06-23 17:30:21'),
(1703, 418, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-23 17:30:21'),
(1704, 418, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-06-23 17:30:21'),
(1705, 418, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-23 17:30:21'),
(1706, 418, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-23 17:30:21'),
(1707, 418, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-23 17:30:21'),
(1708, 418, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-23 17:30:25'),
(1709, 418, 10, 2, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-23 18:54:07'),
(1710, 418, 10, 4, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-23 18:54:18'),
(1711, 286, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-23 20:38:34'),
(1712, 419, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 60', 0, '2019-06-23 21:29:02'),
(1713, 419, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-23 21:29:02'),
(1714, 419, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-23 21:29:02'),
(1715, 419, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-23 21:29:02'),
(1716, 419, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-23 21:29:02'),
(1717, 419, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-23 21:29:02'),
(1718, 419, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-23 21:29:06'),
(1719, 420, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 175', 0, '2019-06-23 23:50:51'),
(1720, 420, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-23 23:50:51'),
(1721, 420, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-06-23 23:50:51'),
(1722, 420, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-23 23:50:51'),
(1723, 420, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-23 23:50:51'),
(1724, 420, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-23 23:50:51'),
(1725, 420, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-23 23:50:55'),
(1726, 420, 10, 5, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-23 23:54:08'),
(1727, 417, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-24 01:14:13'),
(1728, 421, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 143', 1, '2019-06-24 01:51:32'),
(1729, 421, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-24 01:51:32'),
(1730, 421, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 1, '2019-06-24 01:51:32'),
(1731, 421, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-06-24 01:51:32'),
(1732, 421, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-24 01:51:32'),
(1733, 421, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-24 01:51:32'),
(1734, 421, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-24 01:51:36'),
(1735, 421, 10, 1, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-24 01:53:10'),
(1736, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-24 09:03:46'),
(1737, 411, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-24 11:32:35'),
(1738, 425, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 188', 1, '2019-06-24 13:22:06'),
(1739, 425, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-24 13:22:06'),
(1740, 425, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 1, '2019-06-24 13:22:06'),
(1741, 425, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-24 13:22:06'),
(1742, 425, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-24 13:22:06'),
(1743, 425, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-24 13:22:06'),
(1744, 425, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-24 13:22:11'),
(1745, 425, 10, 1, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-24 13:25:03'),
(1746, 425, 10, 6, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-24 13:38:37'),
(1747, 421, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-25 03:49:13'),
(1748, 427, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 193', 0, '2019-06-25 04:20:09'),
(1749, 427, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-25 04:20:09'),
(1750, 427, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-06-25 04:20:09'),
(1751, 427, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-25 04:20:09'),
(1752, 427, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-25 04:20:09'),
(1753, 427, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-25 04:20:09'),
(1754, 427, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-25 04:20:16'),
(1755, 428, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 227', 1, '2019-06-25 05:10:42'),
(1756, 428, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-25 05:10:42'),
(1757, 428, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-06-25 05:10:42'),
(1758, 428, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-25 05:10:42'),
(1759, 428, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-25 05:10:42'),
(1760, 428, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-25 05:10:42'),
(1761, 428, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-25 05:10:44'),
(1762, 336, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-25 05:16:45'),
(1763, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-25 05:20:06'),
(1764, 409, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-25 06:16:03'),
(1765, 430, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 217', 0, '2019-06-25 07:05:54'),
(1766, 430, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-25 07:05:54'),
(1767, 430, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-06-25 07:05:54'),
(1768, 430, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-25 07:05:54'),
(1769, 430, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-25 07:05:54'),
(1770, 430, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-25 07:05:54'),
(1771, 430, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-25 07:05:56'),
(1772, 157, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-25 10:03:27'),
(1773, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-25 11:20:43'),
(1774, 431, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 246', 1, '2019-06-25 11:26:53'),
(1775, 431, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-25 11:26:53'),
(1776, 431, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 1, '2019-06-25 11:26:53'),
(1777, 431, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-06-25 11:26:53'),
(1778, 431, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-06-25 11:26:53'),
(1779, 431, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-25 11:26:53'),
(1780, 431, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-25 11:27:00'),
(1781, 433, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 113', 1, '2019-06-25 12:18:10'),
(1782, 433, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-25 12:18:10'),
(1783, 433, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 1, '2019-06-25 12:18:10'),
(1784, 433, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-06-25 12:18:10'),
(1785, 433, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-06-25 12:18:10'),
(1786, 433, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-25 12:18:10'),
(1787, 433, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-25 12:18:16'),
(1788, 434, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 70', 0, '2019-06-25 13:40:00'),
(1789, 434, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-25 13:40:00'),
(1790, 434, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-06-25 13:40:00'),
(1791, 434, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-25 13:40:00'),
(1792, 434, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-06-25 13:40:00'),
(1793, 434, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-25 13:40:00'),
(1794, 434, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-25 13:40:04'),
(1795, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-25 14:31:41'),
(1796, 232, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-25 22:20:54'),
(1797, 431, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-26 01:00:53'),
(1798, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-26 02:44:29'),
(1799, 412, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-26 03:54:42'),
(1800, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-26 07:05:09'),
(1801, 409, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-26 07:19:05'),
(1802, 208, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-26 09:59:25'),
(1803, 265, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-26 12:17:47'),
(1804, 437, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 155', 1, '2019-06-26 13:36:22'),
(1805, 437, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-26 13:36:22'),
(1806, 437, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-26 13:36:22'),
(1807, 437, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-26 13:36:22'),
(1808, 437, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-26 13:36:22'),
(1809, 437, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-26 13:36:22'),
(1810, 437, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-26 13:36:27'),
(1811, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-26 16:24:56'),
(1812, 416, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-26 17:20:57'),
(1813, 438, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-26 19:18:41'),
(1814, 68, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-26 20:26:38'),
(1815, 232, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-26 20:27:27'),
(1816, 421, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-27 00:38:09'),
(1817, 411, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-27 01:18:51'),
(1818, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-27 04:25:09'),
(1819, 440, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 225', 0, '2019-06-27 07:23:20'),
(1820, 440, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-27 07:23:20'),
(1821, 440, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-06-27 07:23:20'),
(1822, 440, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-27 07:23:20'),
(1823, 440, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-27 07:23:20'),
(1824, 440, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-27 07:23:20'),
(1825, 440, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-27 07:23:23'),
(1826, 438, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-27 08:33:42'),
(1827, 425, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-27 09:55:42'),
(1828, 442, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-27 11:21:51'),
(1829, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-27 11:30:07'),
(1830, 416, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-27 16:26:38'),
(1831, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-27 16:49:59'),
(1832, 413, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-27 17:01:02'),
(1833, 416, 10, 2, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-27 18:20:11'),
(1834, 443, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 152', 0, '2019-06-27 23:38:03'),
(1835, 443, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-27 23:38:03'),
(1836, 443, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-06-27 23:38:03'),
(1837, 443, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-27 23:38:03'),
(1838, 443, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-27 23:38:03'),
(1839, 443, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-27 23:38:03'),
(1840, 443, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-27 23:38:06'),
(1841, 416, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-28 02:57:44'),
(1842, 416, 10, 3, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-28 03:01:11'),
(1843, 411, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-28 03:09:15'),
(1844, 413, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-28 06:49:52'),
(1845, 442, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-28 11:21:24'),
(1846, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-06-28 11:22:42'),
(1847, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-06-28 11:57:55'),
(1848, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-06-28 17:13:20'),
(1849, 445, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 187', 1, '2019-06-28 18:59:48'),
(1850, 445, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-28 18:59:48'),
(1851, 445, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-06-28 18:59:48'),
(1852, 445, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-28 18:59:48'),
(1853, 445, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-06-28 18:59:48'),
(1854, 445, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-06-28 18:59:48'),
(1855, 445, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-28 18:59:53'),
(1856, 446, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 228', 0, '2019-06-28 19:05:38'),
(1857, 446, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-28 19:05:38'),
(1858, 446, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-06-28 19:05:38'),
(1859, 446, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-28 19:05:38'),
(1860, 446, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-28 19:05:38'),
(1861, 446, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-28 19:05:38'),
(1862, 446, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-06-28 19:05:43'),
(1863, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-29 03:18:36'),
(1864, 221, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-06-29 05:59:44'),
(1865, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-29 07:19:41'),
(1866, 448, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 78', 0, '2019-06-29 09:24:20'),
(1867, 448, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-29 09:24:20'),
(1868, 448, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-06-29 09:24:20'),
(1869, 448, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-29 09:24:20'),
(1870, 448, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-29 09:24:20'),
(1871, 448, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-29 09:24:20'),
(1872, 448, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-29 09:24:24'),
(1873, 449, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 244', 0, '2019-06-29 09:32:44'),
(1874, 449, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-29 09:32:44'),
(1875, 449, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-06-29 09:32:44'),
(1876, 449, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-29 09:32:44'),
(1877, 449, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-29 09:32:44'),
(1878, 449, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-29 09:32:44'),
(1879, 449, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-06-29 09:32:47'),
(1880, 416, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-29 09:58:31'),
(1881, 451, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 188', 0, '2019-06-29 11:01:48'),
(1882, 451, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-29 11:01:48'),
(1883, 451, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-06-29 11:01:48'),
(1884, 451, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-29 11:01:48'),
(1885, 451, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-29 11:01:48'),
(1886, 451, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-29 11:01:48'),
(1887, 451, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-29 11:01:51'),
(1888, 452, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-29 12:20:47'),
(1889, 425, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-29 14:59:58'),
(1890, 453, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 143', 0, '2019-06-29 15:01:39'),
(1891, 453, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-29 15:01:39'),
(1892, 453, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-06-29 15:01:39'),
(1893, 453, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-29 15:01:39'),
(1894, 453, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-29 15:01:39'),
(1895, 453, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-29 15:01:39'),
(1896, 453, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-29 15:01:43'),
(1897, 375, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-06-29 17:23:34'),
(1898, 455, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 245', 0, '2019-06-29 21:17:59'),
(1899, 455, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-29 21:17:59'),
(1900, 455, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-06-29 21:17:59'),
(1901, 455, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-29 21:17:59'),
(1902, 455, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-29 21:17:59'),
(1903, 455, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-29 21:17:59'),
(1904, 455, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-29 21:18:02'),
(1905, 208, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-06-30 02:49:02'),
(1906, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-06-30 03:21:44'),
(1907, 456, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 113', 0, '2019-06-30 04:25:43'),
(1908, 456, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-30 04:25:43'),
(1909, 456, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-06-30 04:25:43'),
(1910, 456, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-30 04:25:43'),
(1911, 456, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-30 04:25:43'),
(1912, 456, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-30 04:25:43'),
(1913, 456, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-30 04:25:48'),
(1914, 413, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-06-30 06:53:32'),
(1915, 318, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-06-30 07:51:39'),
(1916, 457, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 207', 0, '2019-06-30 10:02:16'),
(1917, 457, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-06-30 10:02:16'),
(1918, 457, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-06-30 10:02:16'),
(1919, 457, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-30 10:02:16'),
(1920, 457, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-30 10:02:16'),
(1921, 457, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-30 10:02:16'),
(1922, 457, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-06-30 10:02:19'),
(1923, 458, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 83', 0, '2019-06-30 13:20:24'),
(1924, 458, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-30 13:20:24'),
(1925, 458, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-06-30 13:20:24'),
(1926, 458, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-30 13:20:24'),
(1927, 458, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-30 13:20:24'),
(1928, 458, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-30 13:20:24'),
(1929, 458, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-06-30 13:20:30'),
(1930, 206, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-06-30 14:47:39'),
(1931, 217, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-06-30 16:07:59'),
(1932, 447, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-06-30 16:17:12'),
(1933, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-06-30 16:23:17'),
(1934, 96, 10, 1, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-06-30 16:23:35'),
(1935, 459, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 61', 1, '2019-06-30 17:01:41'),
(1936, 459, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-06-30 17:01:41'),
(1937, 459, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 1, '2019-06-30 17:01:41'),
(1938, 459, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-06-30 17:01:41'),
(1939, 459, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-06-30 17:01:41'),
(1940, 459, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-06-30 17:01:41'),
(1941, 459, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-06-30 17:01:48'),
(1942, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-07-01 03:11:05'),
(1943, 457, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-01 06:05:23'),
(1944, 409, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-01 09:04:10'),
(1945, 68, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-07-01 09:47:23'),
(1946, 315, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-07-01 11:21:33'),
(1947, 383, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-01 11:32:35'),
(1948, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-01 12:06:25'),
(1949, 460, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 89', 1, '2019-07-01 15:33:58'),
(1950, 460, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-01 15:33:58'),
(1951, 460, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 1, '2019-07-01 15:33:58'),
(1952, 460, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-01 15:33:58'),
(1953, 460, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-01 15:33:58'),
(1954, 460, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-01 15:33:58'),
(1955, 460, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-01 15:34:03'),
(1956, 461, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 149', 0, '2019-07-01 16:40:18'),
(1957, 461, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-01 16:40:18'),
(1958, 461, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-07-01 16:40:18'),
(1959, 461, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-01 16:40:18'),
(1960, 461, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-01 16:40:18'),
(1961, 461, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-01 16:40:18'),
(1962, 461, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-01 16:40:21'),
(1963, 421, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-07-02 01:30:40'),
(1964, 462, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 99', 0, '2019-07-02 07:51:33'),
(1965, 462, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-02 07:51:33'),
(1966, 462, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-07-02 07:51:33'),
(1967, 462, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-02 07:51:33'),
(1968, 462, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-02 07:51:33'),
(1969, 462, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-02 07:51:33'),
(1970, 462, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-02 07:51:36'),
(1971, 37, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-02 09:31:59'),
(1972, 463, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 175', 0, '2019-07-02 10:49:11'),
(1973, 463, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-02 10:49:11'),
(1974, 463, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-07-02 10:49:11'),
(1975, 463, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-02 10:49:11'),
(1976, 463, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-02 10:49:11'),
(1977, 463, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-02 10:49:11'),
(1978, 463, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-02 10:49:15'),
(1979, 464, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-07-02 14:55:41'),
(1980, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-02 15:13:17'),
(1981, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-07-02 16:04:29'),
(1982, 465, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 244', 0, '2019-07-02 17:51:25'),
(1983, 465, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-02 17:51:25'),
(1984, 465, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-07-02 17:51:25'),
(1985, 465, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-02 17:51:25'),
(1986, 465, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-02 17:51:25');
INSERT INTO `tbl_user_scratch_card` (`id`, `user_id`, `scratch_id`, `app_group_id`, `scratch_type`, `scratch_for`, `earning`, `is_scratch`, `created_at`) VALUES
(1987, 465, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-02 17:51:25'),
(1988, 465, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-02 17:51:27'),
(1989, 466, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 181', 0, '2019-07-02 18:15:44'),
(1990, 466, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-02 18:15:44'),
(1991, 466, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-07-02 18:15:44'),
(1992, 466, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-02 18:15:44'),
(1993, 466, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-02 18:15:44'),
(1994, 466, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-02 18:15:44'),
(1995, 466, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-02 18:15:47'),
(1996, 366, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-07-02 18:20:04'),
(1997, 467, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 154', 1, '2019-07-02 18:32:01'),
(1998, 467, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-02 18:32:01'),
(1999, 467, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-07-02 18:32:01'),
(2000, 467, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-02 18:32:01'),
(2001, 467, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-02 18:32:01'),
(2002, 467, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-02 18:32:01'),
(2003, 467, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-02 18:32:08'),
(2004, 468, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 219', 1, '2019-07-02 20:38:09'),
(2005, 468, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-02 20:38:09'),
(2006, 468, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 1, '2019-07-02 20:38:09'),
(2007, 468, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-07-02 20:38:09'),
(2008, 468, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-02 20:38:09'),
(2009, 468, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-02 20:38:09'),
(2010, 468, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-02 20:38:13'),
(2011, 469, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 197', 0, '2019-07-02 21:31:02'),
(2012, 469, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-02 21:31:02'),
(2013, 469, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-07-02 21:31:02'),
(2014, 469, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-02 21:31:02'),
(2015, 469, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-02 21:31:02'),
(2016, 469, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-02 21:31:02'),
(2017, 469, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-02 21:31:05'),
(2018, 470, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 177', 0, '2019-07-03 01:18:15'),
(2019, 470, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-03 01:18:15'),
(2020, 470, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-07-03 01:18:15'),
(2021, 470, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-03 01:18:15'),
(2022, 470, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-03 01:18:15'),
(2023, 470, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-03 01:18:15'),
(2024, 470, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 174', 0, '2019-07-03 01:18:18'),
(2025, 470, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-03 01:18:18'),
(2026, 470, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-07-03 01:18:18'),
(2027, 470, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-03 01:18:18'),
(2028, 470, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-03 01:18:18'),
(2029, 470, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-03 01:18:18'),
(2030, 399, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-07-03 04:11:04'),
(2031, 472, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 192', 0, '2019-07-03 05:26:27'),
(2032, 472, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-03 05:26:27'),
(2033, 472, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-07-03 05:26:27'),
(2034, 472, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-03 05:26:27'),
(2035, 472, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-03 05:26:27'),
(2036, 472, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-03 05:26:27'),
(2037, 472, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-03 05:26:30'),
(2038, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-07-03 10:22:12'),
(2039, 474, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 226', 1, '2019-07-03 11:39:06'),
(2040, 474, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-03 11:39:06'),
(2041, 474, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-07-03 11:39:06'),
(2042, 474, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-03 11:39:06'),
(2043, 474, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-03 11:39:06'),
(2044, 474, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-03 11:39:06'),
(2045, 474, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-07-03 11:39:09'),
(2046, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-07-03 12:14:07'),
(2047, 409, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-03 12:33:53'),
(2048, 476, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 120', 1, '2019-07-03 14:37:25'),
(2049, 476, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-03 14:37:25'),
(2050, 476, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 1, '2019-07-03 14:37:25'),
(2051, 476, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-03 14:37:25'),
(2052, 476, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-03 14:37:25'),
(2053, 476, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-03 14:37:25'),
(2054, 476, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-03 14:37:26'),
(2055, 476, 10, 2, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-03 14:38:13'),
(2056, 479, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 82', 1, '2019-07-03 15:28:33'),
(2057, 479, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-03 15:28:33'),
(2058, 479, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-07-03 15:28:33'),
(2059, 479, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-03 15:28:33'),
(2060, 479, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-03 15:28:33'),
(2061, 479, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-03 15:28:33'),
(2062, 479, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-03 15:28:45'),
(2063, 467, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-03 17:04:20'),
(2064, 399, 10, 1, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-03 23:56:16'),
(2065, 467, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-07-04 01:57:39'),
(2066, 399, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-07-04 03:15:59'),
(2067, 480, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 125', 0, '2019-07-04 05:34:32'),
(2068, 480, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-04 05:34:32'),
(2069, 480, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-07-04 05:34:32'),
(2070, 480, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-04 05:34:32'),
(2071, 480, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-04 05:34:32'),
(2072, 480, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-04 05:34:32'),
(2073, 480, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-04 05:34:41'),
(2074, 173, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-07-04 06:58:27'),
(2075, 416, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-04 07:43:49'),
(2076, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-07-04 07:54:43'),
(2077, 120, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-07-04 09:13:55'),
(2078, 482, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-07-04 10:15:15'),
(2079, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-07-04 14:21:20'),
(2080, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-04 16:41:08'),
(2081, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-05 03:18:45'),
(2082, 461, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-05 07:09:02'),
(2083, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-07-05 09:10:06'),
(2084, 480, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-05 10:06:46'),
(2085, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-07-05 17:13:22'),
(2086, 290, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-06 04:54:06'),
(2087, 68, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-06 07:40:38'),
(2088, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-07-06 07:47:27'),
(2089, 414, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-07-06 16:26:44'),
(2090, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-07-06 18:52:19'),
(2091, 487, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 130', 1, '2019-07-06 19:07:21'),
(2092, 487, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-06 19:07:21'),
(2093, 487, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 1, '2019-07-06 19:07:21'),
(2094, 487, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-07-06 19:07:21'),
(2095, 487, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-06 19:07:21'),
(2096, 487, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-06 19:07:21'),
(2097, 487, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-07-06 19:07:25'),
(2098, 429, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-07-07 02:37:34'),
(2099, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-07 05:40:30'),
(2100, 480, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-07 06:44:13'),
(2101, 485, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-07 07:33:31'),
(2102, 491, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 146', 0, '2019-07-07 08:17:17'),
(2103, 491, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-07 08:17:17'),
(2104, 491, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-07-07 08:17:17'),
(2105, 491, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-07 08:17:17'),
(2106, 491, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-07 08:17:17'),
(2107, 491, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-07 08:17:17'),
(2108, 491, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-07-07 08:17:18'),
(2109, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-07-07 14:17:08'),
(2110, 302, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-07-07 15:02:47'),
(2111, 493, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 193', 1, '2019-07-08 01:36:22'),
(2112, 493, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-08 01:36:22'),
(2113, 493, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 1, '2019-07-08 01:36:22'),
(2114, 493, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-08 01:36:22'),
(2115, 493, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-08 01:36:22'),
(2116, 493, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-08 01:36:22'),
(2117, 493, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-07-08 01:36:25'),
(2118, 413, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-07-08 12:56:29'),
(2119, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-07-08 18:01:08'),
(2120, 495, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 202', 0, '2019-07-08 18:02:32'),
(2121, 495, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-08 18:02:32'),
(2122, 495, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-07-08 18:02:32'),
(2123, 495, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-08 18:02:32'),
(2124, 495, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-08 18:02:32'),
(2125, 495, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-08 18:02:32'),
(2126, 495, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-07-08 18:02:35'),
(2127, 208, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-07-08 18:31:35'),
(2128, 315, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-09 11:21:07'),
(2129, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-09 12:49:49'),
(2130, 460, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-09 13:43:16'),
(2131, 265, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-07-10 01:48:31'),
(2132, 167, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-10 09:21:00'),
(2133, 498, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 248', 1, '2019-07-10 10:01:47'),
(2134, 498, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-10 10:01:47'),
(2135, 498, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 1, '2019-07-10 10:01:47'),
(2136, 498, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-07-10 10:01:47'),
(2137, 498, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-10 10:01:47'),
(2138, 498, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-10 10:01:47'),
(2139, 498, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-07-10 10:02:10'),
(2140, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-10 10:51:12'),
(2141, 442, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-10 12:53:35'),
(2142, 501, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-07-10 18:56:11'),
(2143, 501, 10, 1, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-07-10 18:56:50'),
(2144, 503, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 114', 1, '2019-07-11 02:41:11'),
(2145, 503, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-11 02:41:11'),
(2146, 503, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-07-11 02:41:11'),
(2147, 503, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-11 02:41:11'),
(2148, 503, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-11 02:41:11'),
(2149, 503, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-11 02:41:11'),
(2150, 503, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-11 02:41:14'),
(2151, 504, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 167', 0, '2019-07-11 04:02:04'),
(2152, 504, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-11 04:02:04'),
(2153, 504, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-07-11 04:02:04'),
(2154, 504, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-11 04:02:04'),
(2155, 504, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-11 04:02:04'),
(2156, 504, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-11 04:02:04'),
(2157, 504, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-07-11 04:02:10'),
(2158, 506, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 132', 1, '2019-07-11 11:19:04'),
(2159, 506, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-11 11:19:04'),
(2160, 506, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-07-11 11:19:04'),
(2161, 506, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-11 11:19:04'),
(2162, 506, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-11 11:19:04'),
(2163, 506, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-11 11:19:04'),
(2164, 506, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-07-11 11:19:08'),
(2165, 505, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-07-11 11:48:20'),
(2166, 421, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-11 13:11:22'),
(2167, 399, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-07-12 08:42:48'),
(2168, 505, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-12 10:59:41'),
(2169, 508, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 131', 1, '2019-07-12 12:05:41'),
(2170, 508, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-12 12:05:41'),
(2171, 508, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-07-12 12:05:41'),
(2172, 508, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-12 12:05:41'),
(2173, 508, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-12 12:05:41'),
(2174, 508, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-12 12:05:41'),
(2175, 508, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-12 12:05:44'),
(2176, 508, 10, 1, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-12 12:11:55'),
(2177, 506, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-07-12 15:34:42'),
(2178, 509, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 96', 0, '2019-07-13 06:04:10'),
(2179, 509, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-13 06:04:10'),
(2180, 509, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-07-13 06:04:10'),
(2181, 509, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-13 06:04:10'),
(2182, 509, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-13 06:04:10'),
(2183, 509, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-13 06:04:10'),
(2184, 509, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-07-13 06:04:13'),
(2185, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-07-13 14:51:54'),
(2186, 442, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-07-13 16:03:45'),
(2187, 510, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 92', 1, '2019-07-13 16:10:47'),
(2188, 510, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-13 16:10:47'),
(2189, 510, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-07-13 16:10:47'),
(2190, 510, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-13 16:10:47'),
(2191, 510, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-13 16:10:47'),
(2192, 510, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-13 16:10:47'),
(2193, 510, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-07-13 16:10:50'),
(2194, 508, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-13 16:55:27'),
(2195, 37, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-13 21:56:15'),
(2196, 512, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 238', 0, '2019-07-14 03:12:10'),
(2197, 512, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-14 03:12:10'),
(2198, 512, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-07-14 03:12:10'),
(2199, 512, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-14 03:12:10'),
(2200, 512, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-14 03:12:10'),
(2201, 512, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-14 03:12:10'),
(2202, 512, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-07-14 03:12:13'),
(2203, 512, 10, 2, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-14 03:12:47'),
(2204, 513, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 160', 1, '2019-07-14 04:49:11'),
(2205, 513, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-14 04:49:11'),
(2206, 513, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 1, '2019-07-14 04:49:11'),
(2207, 513, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-07-14 04:49:11'),
(2208, 513, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-14 04:49:11'),
(2209, 513, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-14 04:49:11'),
(2210, 513, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-07-14 04:49:15'),
(2211, 509, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-14 05:05:03'),
(2212, 416, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-14 06:06:48'),
(2213, 24, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-14 06:07:10'),
(2214, 383, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-14 07:56:00'),
(2215, 514, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 217', 0, '2019-07-14 09:33:58'),
(2216, 514, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-14 09:33:58'),
(2217, 514, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-07-14 09:33:58'),
(2218, 514, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-14 09:33:58'),
(2219, 514, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-14 09:33:58'),
(2220, 514, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-14 09:33:58'),
(2221, 514, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-14 09:34:01'),
(2222, 516, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 191', 1, '2019-07-14 09:48:08'),
(2223, 516, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-14 09:48:08'),
(2224, 516, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 1, '2019-07-14 09:48:08'),
(2225, 516, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-14 09:48:08'),
(2226, 516, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-07-14 09:48:08'),
(2227, 516, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-07-14 09:48:08'),
(2228, 516, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-07-14 09:48:14'),
(2229, 517, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 243', 1, '2019-07-14 10:24:05'),
(2230, 517, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-07-14 10:24:05'),
(2231, 517, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-07-14 10:24:05'),
(2232, 517, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-14 10:24:05'),
(2233, 517, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-14 10:24:05'),
(2234, 517, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-14 10:24:05'),
(2235, 517, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-14 10:24:09'),
(2236, 517, 10, 1, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-07-14 10:25:04'),
(2237, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-07-14 10:49:11'),
(2238, 518, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 177', 0, '2019-07-14 16:37:32'),
(2239, 518, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-14 16:37:32'),
(2240, 518, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-07-14 16:37:32'),
(2241, 518, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-14 16:37:32'),
(2242, 518, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-14 16:37:32'),
(2243, 518, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-14 16:37:32'),
(2244, 518, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-07-14 16:37:35'),
(2245, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-07-14 18:31:14'),
(2246, 472, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-07-15 02:44:15'),
(2247, 517, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-07-15 04:31:06'),
(2248, 520, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-07-15 13:20:55'),
(2249, 512, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-15 13:44:35'),
(2250, 520, 10, 2, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-15 13:45:52'),
(2251, 520, 10, 1, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-07-15 13:46:51'),
(2252, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-07-16 03:17:57'),
(2253, 36, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-16 07:23:04'),
(2254, 487, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-16 08:26:59'),
(2255, 522, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-07-16 12:51:09'),
(2256, 520, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-07-16 14:04:23'),
(2257, 520, 10, 3, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-07-16 14:05:18'),
(2258, 523, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-16 15:17:44'),
(2259, 510, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-16 16:41:10'),
(2260, 510, 10, 1, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-07-16 16:42:38'),
(2261, 526, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 230', 0, '2019-07-16 23:19:08'),
(2262, 526, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-16 23:19:08'),
(2263, 526, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-07-16 23:19:08'),
(2264, 526, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-16 23:19:08'),
(2265, 526, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-16 23:19:08'),
(2266, 526, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-16 23:19:08'),
(2267, 526, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-07-16 23:19:11'),
(2268, 523, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-07-17 02:17:35'),
(2269, 523, 10, 3, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-07-17 02:37:44'),
(2270, 399, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-07-17 03:20:07'),
(2271, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-07-17 08:07:56'),
(2272, 527, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 240', 0, '2019-07-17 08:18:07'),
(2273, 527, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-07-17 08:18:07'),
(2274, 527, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-07-17 08:18:07'),
(2275, 527, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-07-17 08:18:07'),
(2276, 527, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-07-17 08:18:07'),
(2277, 527, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-07-17 08:18:07'),
(2278, 527, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-07-17 08:18:11'),
(2279, 583, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-15 14:17:37'),
(2280, 528, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 60', 0, '2019-10-15 15:37:37'),
(2281, 528, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-15 15:37:37'),
(2282, 528, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-10-15 15:37:37'),
(2283, 528, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-15 15:37:37'),
(2284, 528, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-15 15:37:37'),
(2285, 528, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-15 15:37:37'),
(2286, 528, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-15 15:37:44'),
(2287, 415, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-15 16:32:20'),
(2288, 523, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-10-15 18:04:36'),
(2289, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-16 02:41:08'),
(2290, 893, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-16 05:13:12'),
(2291, 532, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 55', 1, '2019-10-16 09:53:43'),
(2292, 532, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-16 09:53:43'),
(2293, 532, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 1, '2019-10-16 09:53:43'),
(2294, 532, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-16 09:53:43'),
(2295, 532, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-16 09:53:43'),
(2296, 532, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-16 09:53:43'),
(2297, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-16 09:53:45'),
(2298, 161, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-16 10:32:43'),
(2299, 533, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 82', 1, '2019-10-16 10:54:45'),
(2300, 533, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-16 10:54:45'),
(2301, 533, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-10-16 10:54:45'),
(2302, 533, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-16 10:54:45'),
(2303, 533, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-16 10:54:45'),
(2304, 533, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-16 10:54:45'),
(2305, 533, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-10-16 10:54:48'),
(2306, 165, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-16 11:08:08'),
(2307, 457, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-16 12:48:40'),
(2308, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-10-16 12:49:21'),
(2309, 167, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-16 13:03:10'),
(2310, 583, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-16 13:12:34'),
(2311, 534, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 104', 0, '2019-10-16 13:30:39'),
(2312, 534, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-16 13:30:39'),
(2313, 534, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 1, '2019-10-16 13:30:39'),
(2314, 534, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-16 13:30:39'),
(2315, 534, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-16 13:30:39'),
(2316, 534, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-16 13:30:39'),
(2317, 534, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-16 13:30:44'),
(2318, 535, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 167', 0, '2019-10-16 13:35:20'),
(2319, 535, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-16 13:35:20'),
(2320, 535, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-10-16 13:35:20'),
(2321, 535, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-16 13:35:20'),
(2322, 535, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-16 13:35:20'),
(2323, 535, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-16 13:35:20'),
(2324, 535, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-16 13:35:23'),
(2325, 205, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-16 14:32:37'),
(2326, 579, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-10-16 15:31:13'),
(2327, 536, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 204', 0, '2019-10-16 21:41:03'),
(2328, 536, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-16 21:41:03'),
(2329, 536, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-10-16 21:41:03'),
(2330, 536, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-16 21:41:03'),
(2331, 536, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-16 21:41:03'),
(2332, 536, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-16 21:41:03'),
(2333, 536, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-16 21:41:05'),
(2334, 112, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-17 02:13:45'),
(2335, 838, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-17 03:09:29'),
(2336, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-10-17 05:17:29'),
(2337, 887, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-17 06:02:24'),
(2338, 537, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 238', 1, '2019-10-17 06:56:36'),
(2339, 537, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-17 06:56:36'),
(2340, 537, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-10-17 06:56:36'),
(2341, 537, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-17 06:56:36'),
(2342, 537, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-17 06:56:36'),
(2343, 537, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-17 06:56:36'),
(2344, 537, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-10-17 06:56:40'),
(2345, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-10-17 07:30:35'),
(2346, 538, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 84', 0, '2019-10-17 08:17:36'),
(2347, 538, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-17 08:17:36'),
(2348, 538, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-10-17 08:17:36'),
(2349, 538, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-17 08:17:36'),
(2350, 538, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-17 08:17:36'),
(2351, 538, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-17 08:17:36'),
(2352, 538, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-17 08:17:38'),
(2353, 539, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 241', 1, '2019-10-17 11:26:59'),
(2354, 539, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-17 11:26:59'),
(2355, 539, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 1, '2019-10-17 11:26:59'),
(2356, 539, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-17 11:26:59'),
(2357, 539, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-17 11:26:59'),
(2358, 539, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-17 11:26:59'),
(2359, 539, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-17 11:27:06'),
(2360, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-17 13:51:40'),
(2361, 532, 10, 2, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-10-17 13:51:58'),
(2362, 643, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-17 15:10:50'),
(2363, 540, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 198', 0, '2019-10-17 17:52:08'),
(2364, 540, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-17 17:52:08'),
(2365, 540, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-10-17 17:52:08'),
(2366, 540, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-17 17:52:08'),
(2367, 540, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-17 17:52:08'),
(2368, 540, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-17 17:52:08'),
(2369, 540, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-17 17:52:11'),
(2370, 541, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 236', 1, '2019-10-17 18:22:51'),
(2371, 541, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-17 18:22:51'),
(2372, 541, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 1, '2019-10-17 18:22:51'),
(2373, 541, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-17 18:22:51'),
(2374, 541, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-17 18:22:51'),
(2375, 541, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-17 18:22:51'),
(2376, 541, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-10-17 18:22:55'),
(2377, 647, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-18 04:00:47'),
(2378, 537, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-10-18 07:26:34'),
(2379, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-10-18 08:50:54'),
(2380, 345, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-18 11:42:48'),
(2381, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-18 14:42:31'),
(2382, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-18 15:03:16'),
(2383, 540, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-19 02:19:12'),
(2384, 540, 10, 1, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-19 02:28:14'),
(2385, 540, 10, 2, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-19 02:33:34'),
(2386, 316, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-19 04:40:40'),
(2387, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-19 05:44:24'),
(2388, 535, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-19 07:12:13'),
(2389, 870, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-19 11:12:17'),
(2390, 543, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 89', 0, '2019-10-19 12:27:50'),
(2391, 543, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-19 12:27:50'),
(2392, 543, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-10-19 12:27:50'),
(2393, 543, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-19 12:27:50'),
(2394, 543, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-19 12:27:50'),
(2395, 543, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-19 12:27:50'),
(2396, 543, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-19 12:27:54'),
(2397, 544, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-10-19 13:58:55'),
(2398, 545, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 219', 0, '2019-10-19 17:21:14'),
(2399, 545, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-19 17:21:14'),
(2400, 545, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-10-19 17:21:14'),
(2401, 545, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-19 17:21:14'),
(2402, 545, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-19 17:21:14'),
(2403, 545, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-19 17:21:14'),
(2404, 545, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-19 17:21:25'),
(2405, 546, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 106', 0, '2019-10-19 19:08:47'),
(2406, 546, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-19 19:08:47'),
(2407, 546, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-10-19 19:08:47'),
(2408, 546, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-19 19:08:47'),
(2409, 546, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-19 19:08:47'),
(2410, 546, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-19 19:08:47'),
(2411, 546, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-19 19:08:49'),
(2412, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-19 21:05:21'),
(2413, 544, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-20 04:27:51'),
(2414, 165, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-20 05:01:16'),
(2415, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-20 05:13:55'),
(2416, 545, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-20 05:15:55'),
(2417, 548, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 63', 0, '2019-10-20 06:35:42'),
(2418, 548, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-20 06:35:42'),
(2419, 548, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-10-20 06:35:42'),
(2420, 548, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-20 06:35:42'),
(2421, 548, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-20 06:35:42'),
(2422, 548, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-20 06:35:42'),
(2423, 548, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-10-20 06:35:45'),
(2424, 550, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 53', 0, '2019-10-20 06:52:30'),
(2425, 550, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-20 06:52:30'),
(2426, 550, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-10-20 06:52:30'),
(2427, 550, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-20 06:52:30'),
(2428, 550, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-20 06:52:30'),
(2429, 550, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-20 06:52:30'),
(2430, 550, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-20 06:52:33'),
(2431, 549, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-20 06:52:48'),
(2432, 850, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-20 07:01:07'),
(2433, 535, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-20 09:10:59'),
(2434, 658, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-20 14:51:32'),
(2435, 551, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 247', 1, '2019-10-20 14:54:08'),
(2436, 551, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-20 14:54:08'),
(2437, 551, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 1, '2019-10-20 14:54:08'),
(2438, 551, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-20 14:54:08'),
(2439, 551, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-20 14:54:08'),
(2440, 551, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-20 14:54:08'),
(2441, 551, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 1, '2019-10-20 14:54:10'),
(2442, 543, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-10-20 16:35:56'),
(2443, 554, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 126', 1, '2019-10-20 19:22:08'),
(2444, 554, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-20 19:22:08'),
(2445, 554, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-10-20 19:22:08'),
(2446, 554, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-20 19:22:08'),
(2447, 554, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-20 19:22:08'),
(2448, 554, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-20 19:22:08'),
(2449, 554, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-10-20 19:22:12'),
(2450, 823, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-20 19:25:17'),
(2451, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-20 20:17:04'),
(2452, 559, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 90', 1, '2019-10-20 21:18:56'),
(2453, 559, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-20 21:18:56'),
(2454, 559, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 1, '2019-10-20 21:18:56'),
(2455, 559, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-20 21:18:56'),
(2456, 559, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-20 21:18:56'),
(2457, 559, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-20 21:18:56'),
(2458, 559, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-10-20 21:19:00'),
(2459, 554, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-21 03:05:34'),
(2460, 537, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-10-21 04:53:59'),
(2461, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-21 05:16:46'),
(2462, 559, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-10-21 06:39:59'),
(2463, 560, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 243', 0, '2019-10-21 08:38:46'),
(2464, 560, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-21 08:38:46'),
(2465, 560, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-10-21 08:38:46'),
(2466, 560, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-21 08:38:46'),
(2467, 560, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-21 08:38:46'),
(2468, 560, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-21 08:38:46'),
(2469, 560, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-21 08:38:48'),
(2470, 863, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-21 09:38:40'),
(2471, 345, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-21 11:08:37'),
(2472, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-10-21 11:37:35'),
(2473, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-21 11:55:33'),
(2474, 562, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 124', 1, '2019-10-21 17:28:52'),
(2475, 562, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-21 17:28:52'),
(2476, 562, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 1, '2019-10-21 17:28:52'),
(2477, 562, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-21 17:28:52'),
(2478, 562, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-21 17:28:52'),
(2479, 562, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-21 17:28:52'),
(2480, 562, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-10-21 17:28:55'),
(2481, 537, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-22 04:14:46'),
(2482, 562, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-22 04:57:27'),
(2483, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-10-22 05:32:10'),
(2484, 563, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 246', 0, '2019-10-22 05:58:35'),
(2485, 563, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-22 05:58:35'),
(2486, 563, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-10-22 05:58:35'),
(2487, 563, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-22 05:58:35'),
(2488, 563, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-22 05:58:35'),
(2489, 563, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-22 05:58:35'),
(2490, 563, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-22 05:58:37'),
(2491, 835, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-10-22 09:39:02'),
(2492, 551, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-22 10:37:59'),
(2493, 548, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-22 15:27:31'),
(2494, 564, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 112', 0, '2019-10-22 19:17:38'),
(2495, 564, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-22 19:17:38'),
(2496, 564, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-10-22 19:17:38'),
(2497, 564, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-22 19:17:38'),
(2498, 564, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-22 19:17:38'),
(2499, 564, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-22 19:17:38'),
(2500, 564, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-22 19:17:42'),
(2501, 565, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 241', 0, '2019-10-22 19:38:33'),
(2502, 565, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-22 19:38:33'),
(2503, 565, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-10-22 19:38:33'),
(2504, 565, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-22 19:38:33'),
(2505, 565, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-22 19:38:33'),
(2506, 565, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-22 19:38:33'),
(2507, 565, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-22 19:38:35'),
(2508, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-23 05:20:51'),
(2509, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-10-23 05:50:41'),
(2510, 566, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 131', 1, '2019-10-23 06:55:54'),
(2511, 566, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-23 06:55:54'),
(2512, 566, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 1, '2019-10-23 06:55:54'),
(2513, 566, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-23 06:55:54'),
(2514, 566, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-23 06:55:54'),
(2515, 566, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-23 06:55:54'),
(2516, 566, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-23 06:55:57'),
(2517, 568, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 111', 1, '2019-10-23 09:00:37'),
(2518, 568, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-23 09:00:37'),
(2519, 568, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 1, '2019-10-23 09:00:37'),
(2520, 568, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-23 09:00:37'),
(2521, 568, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-23 09:00:37'),
(2522, 568, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-23 09:00:37'),
(2523, 568, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-10-23 09:00:41'),
(2524, 568, 10, 1, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-23 09:03:16'),
(2525, 569, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 181', 0, '2019-10-23 09:44:34'),
(2526, 569, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-23 09:44:34'),
(2527, 569, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-10-23 09:44:34'),
(2528, 569, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-23 09:44:34'),
(2529, 569, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-23 09:44:34'),
(2530, 569, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-23 09:44:34'),
(2531, 569, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-23 09:44:38'),
(2532, 835, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-10-23 10:49:31'),
(2533, 571, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 246', 1, '2019-10-23 13:15:25'),
(2534, 571, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-23 13:15:25'),
(2535, 571, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 0, '2019-10-23 13:15:25'),
(2536, 571, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-23 13:15:25'),
(2537, 571, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-23 13:15:25'),
(2538, 571, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-23 13:15:25'),
(2539, 571, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-23 13:15:29'),
(2540, 573, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 88', 0, '2019-10-23 14:58:01'),
(2541, 573, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-23 14:58:01'),
(2542, 573, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-10-23 14:58:01'),
(2543, 573, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-23 14:58:01'),
(2544, 573, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-23 14:58:01'),
(2545, 573, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-23 14:58:01'),
(2546, 573, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-23 14:58:03'),
(2547, 573, 10, 3, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-23 15:00:08'),
(2548, 559, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-23 19:52:47'),
(2549, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-10-23 20:26:45'),
(2550, 574, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 230', 1, '2019-10-24 02:46:40'),
(2551, 574, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-24 02:46:40'),
(2552, 574, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 1, '2019-10-24 02:46:40'),
(2553, 574, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-24 02:46:40'),
(2554, 574, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-24 02:46:40'),
(2555, 574, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-24 02:46:40'),
(2556, 574, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-10-24 02:46:45'),
(2557, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-10-24 08:56:01'),
(2558, 575, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 54', 0, '2019-10-24 09:03:24'),
(2559, 575, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-24 09:03:24'),
(2560, 575, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-10-24 09:03:24'),
(2561, 575, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-24 09:03:24'),
(2562, 575, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-24 09:03:24'),
(2563, 575, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-24 09:03:24'),
(2564, 575, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-24 09:03:29'),
(2565, 576, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 207', 0, '2019-10-24 09:24:25'),
(2566, 576, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-24 09:24:25'),
(2567, 576, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-10-24 09:24:25'),
(2568, 576, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-24 09:24:25'),
(2569, 576, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-24 09:24:25'),
(2570, 576, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-24 09:24:25'),
(2571, 576, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-24 09:24:28'),
(2572, 560, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-24 14:42:51'),
(2573, 693, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-10-24 14:48:32'),
(2574, 578, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-24 16:47:25');
INSERT INTO `tbl_user_scratch_card` (`id`, `user_id`, `scratch_id`, `app_group_id`, `scratch_type`, `scratch_for`, `earning`, `is_scratch`, `created_at`) VALUES
(2575, 580, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 201', 0, '2019-10-24 18:07:35'),
(2576, 580, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-24 18:07:35'),
(2577, 580, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 3', 0, '2019-10-24 18:07:35'),
(2578, 580, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-24 18:07:35'),
(2579, 580, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-24 18:07:35'),
(2580, 580, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-24 18:07:35'),
(2581, 580, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-24 18:07:39'),
(2582, 581, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 157', 1, '2019-10-24 18:38:01'),
(2583, 581, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-24 18:38:01'),
(2584, 581, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-10-24 18:38:01'),
(2585, 581, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-24 18:38:01'),
(2586, 581, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-24 18:38:01'),
(2587, 581, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-24 18:38:01'),
(2588, 581, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-10-24 18:38:06'),
(2589, 582, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 143', 0, '2019-10-24 19:27:38'),
(2590, 582, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-24 19:27:38'),
(2591, 582, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-10-24 19:27:38'),
(2592, 582, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-24 19:27:38'),
(2593, 582, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-24 19:27:38'),
(2594, 582, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-24 19:27:38'),
(2595, 582, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-24 19:27:44'),
(2596, 565, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-24 21:17:31'),
(2597, 583, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 237', 0, '2019-10-24 21:20:29'),
(2598, 583, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-24 21:20:29'),
(2599, 583, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-10-24 21:20:29'),
(2600, 583, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-24 21:20:29'),
(2601, 583, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-24 21:20:29'),
(2602, 583, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-24 21:20:29'),
(2603, 583, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-24 21:20:31'),
(2604, 290, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-25 05:57:08'),
(2605, 584, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 123', 1, '2019-10-25 08:49:24'),
(2606, 584, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-25 08:49:24'),
(2607, 584, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 1, '2019-10-25 08:49:24'),
(2608, 584, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-25 08:49:24'),
(2609, 584, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-25 08:49:24'),
(2610, 584, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-25 08:49:24'),
(2611, 584, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 1, '2019-10-25 08:49:27'),
(2612, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-25 08:56:07'),
(2613, 835, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-10-25 10:39:50'),
(2614, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-10-25 13:45:34'),
(2615, 124, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-25 20:53:30'),
(2616, 124, 10, 1, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-25 20:56:04'),
(2617, 585, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 143', 0, '2019-10-25 23:53:29'),
(2618, 585, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-25 23:53:29'),
(2619, 585, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-10-25 23:53:29'),
(2620, 585, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-25 23:53:29'),
(2621, 585, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-25 23:53:29'),
(2622, 585, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-25 23:53:29'),
(2623, 585, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-25 23:53:32'),
(2624, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-10-26 05:48:50'),
(2625, 835, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-10-26 08:41:12'),
(2626, 544, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-26 08:54:58'),
(2627, 124, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-26 10:43:37'),
(2628, 38, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-10-26 13:34:27'),
(2629, 238, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-10-26 13:41:22'),
(2630, 850, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-26 17:31:22'),
(2631, 586, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 110', 0, '2019-10-26 18:43:31'),
(2632, 586, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-26 18:43:31'),
(2633, 586, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-10-26 18:43:31'),
(2634, 586, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-26 18:43:31'),
(2635, 586, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-26 18:43:31'),
(2636, 586, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-26 18:43:31'),
(2637, 586, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-26 18:43:34'),
(2638, 587, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 237', 0, '2019-10-27 04:28:42'),
(2639, 587, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-27 04:28:42'),
(2640, 587, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-10-27 04:28:42'),
(2641, 587, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-27 04:28:42'),
(2642, 587, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-27 04:28:42'),
(2643, 587, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-27 04:28:42'),
(2644, 587, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-27 04:28:45'),
(2645, 271, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-27 06:34:11'),
(2646, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-10-27 13:57:17'),
(2647, 1, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-28 07:18:42'),
(2648, 588, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 242', 0, '2019-10-28 14:43:48'),
(2649, 588, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-28 14:43:48'),
(2650, 588, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-10-28 14:43:48'),
(2651, 588, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-28 14:43:48'),
(2652, 588, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-28 14:43:48'),
(2653, 588, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-28 14:43:48'),
(2654, 588, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-28 14:43:51'),
(2655, 589, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-10-28 16:36:29'),
(2656, 589, 10, 2, 'reward', NULL, 'You\'ve won ₹ 6', 1, '2019-10-28 16:40:18'),
(2657, 124, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-28 19:37:56'),
(2658, 591, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 62', 0, '2019-10-29 01:37:04'),
(2659, 591, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-29 01:37:04'),
(2660, 591, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-10-29 01:37:04'),
(2661, 591, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-29 01:37:04'),
(2662, 591, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-29 01:37:04'),
(2663, 591, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-29 01:37:04'),
(2664, 591, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-29 01:37:06'),
(2665, 591, 10, 3, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-10-29 01:38:37'),
(2666, 838, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-10-29 06:19:13'),
(2667, 255, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-29 06:34:06'),
(2668, 647, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-10-29 09:09:41'),
(2669, 592, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 217', 0, '2019-10-29 19:42:52'),
(2670, 592, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-29 19:42:52'),
(2671, 592, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 8', 0, '2019-10-29 19:42:52'),
(2672, 592, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-29 19:42:52'),
(2673, 592, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-29 19:42:52'),
(2674, 592, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-29 19:42:52'),
(2675, 592, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-29 19:42:54'),
(2676, 585, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-10-29 23:48:45'),
(2677, 593, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 77', 0, '2019-10-30 02:30:13'),
(2678, 593, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-30 02:30:13'),
(2679, 593, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-10-30 02:30:13'),
(2680, 593, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-30 02:30:13'),
(2681, 593, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-30 02:30:13'),
(2682, 593, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-30 02:30:13'),
(2683, 593, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-30 02:30:16'),
(2684, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-30 09:06:17'),
(2685, 571, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-30 10:25:28'),
(2686, 595, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 215', 0, '2019-10-30 12:18:29'),
(2687, 595, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-30 12:18:29'),
(2688, 595, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-10-30 12:18:29'),
(2689, 595, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-30 12:18:29'),
(2690, 595, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-30 12:18:29'),
(2691, 595, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-30 12:18:29'),
(2692, 595, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-10-30 12:18:33'),
(2693, 596, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 151', 1, '2019-10-30 12:58:41'),
(2694, 596, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-10-30 12:58:41'),
(2695, 596, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 1, '2019-10-30 12:58:41'),
(2696, 596, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-10-30 12:58:41'),
(2697, 596, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-10-30 12:58:41'),
(2698, 596, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-30 12:58:41'),
(2699, 596, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-10-30 12:58:46'),
(2700, 596, 10, 1, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-30 13:00:45'),
(2701, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-30 13:16:09'),
(2702, 598, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 116', 0, '2019-10-31 09:53:41'),
(2703, 598, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-31 09:53:41'),
(2704, 598, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-10-31 09:53:41'),
(2705, 598, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-31 09:53:41'),
(2706, 598, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-31 09:53:41'),
(2707, 598, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-31 09:53:41'),
(2708, 598, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-10-31 09:53:44'),
(2709, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-10-31 10:17:45'),
(2710, 569, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-10-31 10:36:07'),
(2711, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-10-31 11:33:13'),
(2712, 599, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 56', 0, '2019-10-31 13:38:45'),
(2713, 599, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-31 13:38:45'),
(2714, 599, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 10', 0, '2019-10-31 13:38:45'),
(2715, 599, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-31 13:38:45'),
(2716, 599, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-31 13:38:45'),
(2717, 599, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-10-31 13:38:45'),
(2718, 599, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 1, '2019-10-31 13:38:49'),
(2719, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-10-31 14:16:42'),
(2720, 601, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 58', 0, '2019-10-31 18:32:40'),
(2721, 601, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-10-31 18:32:40'),
(2722, 601, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 2', 0, '2019-10-31 18:32:40'),
(2723, 601, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-10-31 18:32:40'),
(2724, 601, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-10-31 18:32:40'),
(2725, 601, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-10-31 18:32:40'),
(2726, 601, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-10-31 18:32:42'),
(2727, 601, 10, 2, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-10-31 18:40:16'),
(2728, 580, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-11-01 04:50:30'),
(2729, 603, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 68', 0, '2019-11-01 05:07:30'),
(2730, 603, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-11-01 05:07:30'),
(2731, 603, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 1, '2019-11-01 05:07:30'),
(2732, 603, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-11-01 05:07:30'),
(2733, 603, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-11-01 05:07:30'),
(2734, 603, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-11-01 05:07:30'),
(2735, 603, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-11-01 05:07:33'),
(2736, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-11-01 05:27:24'),
(2737, 604, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 92', 0, '2019-11-01 09:59:11'),
(2738, 604, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-11-01 09:59:11'),
(2739, 604, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-11-01 09:59:11'),
(2740, 604, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-11-01 09:59:11'),
(2741, 604, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-11-01 09:59:11'),
(2742, 604, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-11-01 09:59:11'),
(2743, 604, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-11-01 09:59:14'),
(2744, 605, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 71', 0, '2019-11-01 10:36:35'),
(2745, 605, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-11-01 10:36:35'),
(2746, 605, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 9', 0, '2019-11-01 10:36:35'),
(2747, 605, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-11-01 10:36:35'),
(2748, 605, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-11-01 10:36:35'),
(2749, 605, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-11-01 10:36:35'),
(2750, 605, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-11-01 10:36:39'),
(2751, 606, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 51', 0, '2019-11-01 11:07:14'),
(2752, 606, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-11-01 11:07:14'),
(2753, 606, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 4', 0, '2019-11-01 11:07:14'),
(2754, 606, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-11-01 11:07:14'),
(2755, 606, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-11-01 11:07:14'),
(2756, 606, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-11-01 11:07:14'),
(2757, 606, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 72', 0, '2019-11-01 11:07:16'),
(2758, 606, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-11-01 11:07:16'),
(2759, 606, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-11-01 11:07:16'),
(2760, 606, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-11-01 11:07:16'),
(2761, 606, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-11-01 11:07:16'),
(2762, 606, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-11-01 11:07:16'),
(2763, 606, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-11-01 11:07:25'),
(2764, 607, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 71', 1, '2019-11-01 11:34:49'),
(2765, 607, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-11-01 11:34:49'),
(2766, 607, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 1', 1, '2019-11-01 11:34:49'),
(2767, 607, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-11-01 11:34:49'),
(2768, 607, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-11-01 11:34:49'),
(2769, 607, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-11-01 11:34:49'),
(2770, 607, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-11-01 11:34:54'),
(2771, 1, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(2772, 4, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(2773, 5, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(2774, 6, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:06:01'),
(2775, 7, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(2776, 8, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(2777, 9, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(2778, 10, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2779, 11, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2780, 12, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(2781, 13, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(2782, 14, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2783, 15, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(2784, 16, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2785, 17, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(2786, 18, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(2787, 19, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(2788, 20, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(2789, 21, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(2790, 22, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(2791, 23, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2792, 24, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(2793, 25, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(2794, 26, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(2795, 27, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(2796, 28, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2797, 29, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(2798, 30, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(2799, 31, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(2800, 32, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(2801, 33, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(2802, 34, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(2803, 35, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(2804, 36, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:06:01'),
(2805, 37, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(2806, 38, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:06:01'),
(2807, 39, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(2808, 40, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(2809, 41, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:06:01'),
(2810, 42, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(2811, 43, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(2812, 44, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(2813, 45, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(2814, 46, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:06:01'),
(2815, 47, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(2816, 48, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(2817, 49, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(2818, 50, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2819, 51, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2820, 52, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(2821, 53, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2822, 54, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(2823, 55, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(2824, 56, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:06:01'),
(2825, 57, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(2826, 58, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(2827, 59, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(2828, 60, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(2829, 61, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(2830, 62, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(2831, 63, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(2832, 64, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(2833, 65, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(2834, 66, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(2835, 67, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(2836, 68, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(2837, 69, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(2838, 70, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(2839, 71, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2840, 72, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(2841, 73, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:06:01'),
(2842, 74, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2843, 75, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(2844, 76, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(2845, 77, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(2846, 78, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(2847, 79, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2848, 80, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(2849, 81, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(2850, 82, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(2851, 83, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(2852, 84, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(2853, 85, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(2854, 86, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(2855, 87, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(2856, 88, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:06:01'),
(2857, 89, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(2858, 90, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:06:01'),
(2859, 91, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(2860, 92, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(2861, 93, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(2862, 94, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(2863, 95, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(2864, 96, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2865, 97, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(2866, 98, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:06:01'),
(2867, 99, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(2868, 100, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(2869, 101, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(2870, 102, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(2871, 103, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(2872, 104, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(2873, 105, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2874, 106, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(2875, 107, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(2876, 108, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(2877, 109, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(2878, 110, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(2879, 111, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(2880, 112, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(2881, 113, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(2882, 114, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(2883, 115, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(2884, 116, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(2885, 117, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2886, 118, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(2887, 119, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(2888, 120, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2889, 121, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:06:01'),
(2890, 122, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(2891, 123, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(2892, 124, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(2893, 125, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:06:01'),
(2894, 126, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(2895, 127, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(2896, 128, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:06:01'),
(2897, 129, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(2898, 130, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(2899, 131, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(2900, 132, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(2901, 133, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(2902, 134, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:06:01'),
(2903, 135, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:06:01'),
(2904, 136, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(2905, 137, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2906, 138, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(2907, 139, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(2908, 140, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(2909, 141, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(2910, 142, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(2911, 143, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(2912, 144, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(2913, 145, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(2914, 146, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(2915, 147, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(2916, 148, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(2917, 149, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(2918, 150, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(2919, 151, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(2920, 152, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(2921, 153, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(2922, 154, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2923, 155, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(2924, 156, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(2925, 157, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(2926, 158, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(2927, 159, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(2928, 160, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:06:01'),
(2929, 161, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:06:01'),
(2930, 162, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2931, 163, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2932, 164, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(2933, 165, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(2934, 166, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:06:01'),
(2935, 167, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(2936, 168, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(2937, 169, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(2938, 170, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:06:01'),
(2939, 171, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(2940, 172, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(2941, 173, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(2942, 174, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2943, 175, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2944, 176, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(2945, 177, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(2946, 178, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2947, 179, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(2948, 180, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(2949, 181, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(2950, 182, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(2951, 183, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:06:01'),
(2952, 184, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(2953, 185, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(2954, 186, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(2955, 187, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(2956, 188, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(2957, 189, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(2958, 190, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(2959, 191, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(2960, 192, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(2961, 193, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(2962, 194, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(2963, 195, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(2964, 196, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:06:01'),
(2965, 197, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(2966, 198, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(2967, 199, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(2968, 200, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(2969, 201, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(2970, 202, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(2971, 203, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:06:01'),
(2972, 204, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2973, 205, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(2974, 206, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(2975, 207, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(2976, 208, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2977, 209, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:06:01'),
(2978, 210, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(2979, 211, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(2980, 212, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:06:01'),
(2981, 213, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(2982, 214, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(2983, 215, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(2984, 216, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(2985, 217, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(2986, 218, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(2987, 219, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(2988, 220, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:06:01'),
(2989, 221, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:06:01'),
(2990, 222, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(2991, 223, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(2992, 224, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(2993, 225, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(2994, 226, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(2995, 227, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(2996, 228, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(2997, 229, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:06:01'),
(2998, 230, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(2999, 231, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3000, 232, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(3001, 233, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(3002, 234, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(3003, 235, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(3004, 236, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3005, 237, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(3006, 238, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:06:01'),
(3007, 239, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3008, 240, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(3009, 241, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(3010, 242, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3011, 243, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3012, 244, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3013, 245, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(3014, 246, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3015, 247, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(3016, 248, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(3017, 249, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:06:01'),
(3018, 250, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(3019, 251, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3020, 252, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(3021, 253, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3022, 254, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3023, 255, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3024, 256, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(3025, 257, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(3026, 258, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:06:01'),
(3027, 259, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3028, 260, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:06:01'),
(3029, 261, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:06:01'),
(3030, 262, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3031, 263, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3032, 264, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(3033, 265, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(3034, 266, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3035, 267, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:06:01'),
(3036, 268, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3037, 269, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3038, 270, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3039, 271, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3040, 272, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3041, 273, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(3042, 274, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3043, 275, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(3044, 276, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(3045, 277, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3046, 278, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3047, 279, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3048, 280, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3049, 281, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3050, 282, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(3051, 283, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3052, 284, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3053, 285, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3054, 286, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(3055, 287, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3056, 288, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:06:01'),
(3057, 289, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(3058, 290, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(3059, 291, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(3060, 292, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3061, 293, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:06:01'),
(3062, 294, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3063, 295, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(3064, 296, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(3065, 297, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(3066, 298, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3067, 299, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(3068, 300, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3069, 301, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:06:01'),
(3070, 302, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(3071, 303, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(3072, 304, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3073, 305, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(3074, 306, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3075, 307, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3076, 308, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3077, 309, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3078, 310, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3079, 311, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:06:01'),
(3080, 312, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(3081, 313, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(3082, 314, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(3083, 315, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3084, 316, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(3085, 317, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3086, 318, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(3087, 319, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3088, 320, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(3089, 321, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3090, 322, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3091, 323, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(3092, 324, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:06:01'),
(3093, 325, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(3094, 326, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:06:01'),
(3095, 327, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:06:01'),
(3096, 328, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(3097, 329, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3098, 330, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3099, 331, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(3100, 332, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(3101, 333, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:06:01'),
(3102, 334, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3103, 335, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:06:01'),
(3104, 336, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3105, 337, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3106, 338, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(3107, 339, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3108, 340, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(3109, 341, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3110, 342, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3111, 343, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(3112, 344, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:06:01'),
(3113, 345, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(3114, 346, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3115, 347, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3116, 348, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(3117, 349, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3118, 350, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3119, 351, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3120, 352, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3121, 353, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(3122, 354, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:06:01'),
(3123, 355, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(3124, 356, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3125, 357, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3126, 358, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3127, 359, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3128, 360, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(3129, 361, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(3130, 362, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(3131, 364, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3132, 365, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(3133, 366, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3134, 367, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(3135, 369, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(3136, 370, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3137, 371, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(3138, 372, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(3139, 373, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(3140, 374, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3141, 375, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:06:01'),
(3142, 376, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3143, 377, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(3144, 378, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3145, 379, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(3146, 380, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:06:01'),
(3147, 381, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3148, 382, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3149, 383, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:06:01'),
(3150, 384, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3151, 385, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3152, 386, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(3153, 387, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3154, 388, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(3155, 389, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3156, 390, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3157, 391, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3158, 392, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3159, 393, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(3160, 394, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3161, 395, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3162, 396, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3163, 397, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(3164, 398, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(3165, 399, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(3166, 400, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(3167, 401, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:06:01'),
(3168, 402, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3169, 403, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(3170, 404, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01');
INSERT INTO `tbl_user_scratch_card` (`id`, `user_id`, `scratch_id`, `app_group_id`, `scratch_type`, `scratch_for`, `earning`, `is_scratch`, `created_at`) VALUES
(3171, 405, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(3172, 406, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(3173, 407, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(3174, 408, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(3175, 409, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3176, 410, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(3177, 411, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3178, 412, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(3179, 413, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(3180, 414, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(3181, 415, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3182, 416, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3183, 417, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3184, 418, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(3185, 419, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:06:01'),
(3186, 420, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(3187, 421, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3188, 422, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3189, 423, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:06:01'),
(3190, 424, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3191, 425, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(3192, 426, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(3193, 427, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3194, 428, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3195, 429, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(3196, 430, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:06:01'),
(3197, 431, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3198, 432, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3199, 433, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3200, 434, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(3201, 435, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:06:01'),
(3202, 436, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3203, 437, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(3204, 438, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(3205, 439, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3206, 440, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(3207, 441, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3208, 442, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3209, 443, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:06:01'),
(3210, 444, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(3211, 445, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3212, 446, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(3213, 447, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(3214, 448, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(3215, 449, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(3216, 450, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(3217, 451, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(3218, 452, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3219, 453, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(3220, 454, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(3221, 455, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3222, 456, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3223, 457, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3224, 458, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3225, 459, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3226, 460, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(3227, 461, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3228, 462, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3229, 463, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3230, 464, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3231, 465, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3232, 466, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3233, 467, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(3234, 468, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:06:01'),
(3235, 469, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3236, 470, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(3237, 471, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(3238, 472, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(3239, 473, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3240, 474, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3241, 475, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(3242, 476, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(3243, 477, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3244, 478, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(3245, 479, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(3246, 480, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3247, 481, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3248, 482, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:06:01'),
(3249, 483, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3250, 484, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(3251, 485, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3252, 486, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3253, 487, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3254, 488, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3255, 489, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3256, 490, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(3257, 491, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(3258, 492, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3259, 493, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3260, 494, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(3261, 495, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3262, 496, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(3263, 497, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(3264, 498, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3265, 499, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3266, 500, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3267, 501, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3268, 502, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(3269, 503, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:06:01'),
(3270, 504, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(3271, 505, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3272, 506, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3273, 507, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:06:01'),
(3274, 508, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3275, 509, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3276, 510, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3277, 511, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(3278, 512, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(3279, 513, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3280, 514, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:06:01'),
(3281, 515, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:06:01'),
(3282, 516, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(3283, 517, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3284, 518, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3285, 519, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3286, 520, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(3287, 521, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3288, 522, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3289, 523, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3290, 524, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(3291, 525, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:06:01'),
(3292, 526, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3293, 527, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3294, 528, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3295, 529, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:06:01'),
(3296, 530, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(3297, 531, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(3298, 532, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3299, 533, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:06:01'),
(3300, 534, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3301, 535, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:06:01'),
(3302, 536, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(3303, 537, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:06:01'),
(3304, 538, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:06:01'),
(3305, 539, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3306, 540, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3307, 541, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:06:01'),
(3308, 542, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(3309, 543, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:06:01'),
(3310, 544, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3311, 545, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:06:01'),
(3312, 546, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(3313, 547, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(3314, 548, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(3315, 549, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:06:01'),
(3316, 550, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(3317, 551, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3318, 552, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3319, 553, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:06:01'),
(3320, 554, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3321, 555, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:06:01'),
(3322, 556, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(3323, 557, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3324, 558, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:06:01'),
(3325, 559, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3326, 560, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:06:01'),
(3327, 561, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:06:01'),
(3328, 562, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:06:01'),
(3329, 563, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3330, 564, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:06:01'),
(3331, 565, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3332, 566, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3333, 567, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(3334, 568, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3335, 569, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3336, 570, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:06:01'),
(3337, 571, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3338, 572, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:06:01'),
(3339, 573, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:06:01'),
(3340, 574, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3341, 575, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:06:01'),
(3342, 576, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3343, 577, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3344, 578, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:06:01'),
(3345, 579, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(3346, 580, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:06:01'),
(3347, 581, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3348, 582, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(3349, 583, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:06:01'),
(3350, 584, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(3351, 585, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:06:01'),
(3352, 586, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:06:01'),
(3353, 587, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:06:01'),
(3354, 588, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3355, 589, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:06:01'),
(3356, 590, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:06:01'),
(3357, 591, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:06:01'),
(3358, 592, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:06:01'),
(3359, 593, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:06:01'),
(3360, 594, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:06:01'),
(3361, 595, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(3362, 596, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:06:01'),
(3363, 597, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(3364, 598, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:06:01'),
(3365, 599, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:06:01'),
(3366, 600, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:06:01'),
(3367, 601, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:06:01'),
(3368, 602, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:06:01'),
(3369, 603, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:06:01'),
(3370, 604, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:06:01'),
(3371, 605, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:06:01'),
(3372, 606, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:06:01'),
(3373, 607, 16, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:06:01'),
(3374, 1, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3375, 4, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3376, 5, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3377, 6, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3378, 7, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3379, 8, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3380, 9, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3381, 10, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3382, 11, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3383, 12, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3384, 13, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3385, 14, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3386, 15, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3387, 16, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3388, 17, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3389, 18, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3390, 19, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3391, 20, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3392, 21, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3393, 22, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:12:46'),
(3394, 23, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3395, 24, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3396, 25, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3397, 26, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3398, 27, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3399, 28, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3400, 29, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3401, 30, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3402, 31, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3403, 32, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3404, 33, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3405, 34, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3406, 35, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3407, 36, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3408, 37, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:12:46'),
(3409, 38, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3410, 39, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3411, 40, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3412, 41, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3413, 42, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3414, 43, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3415, 44, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3416, 45, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3417, 46, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3418, 47, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3419, 48, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:12:46'),
(3420, 49, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3421, 50, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3422, 51, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3423, 52, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3424, 53, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3425, 54, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3426, 55, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3427, 56, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3428, 57, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3429, 58, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3430, 59, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3431, 60, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3432, 61, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3433, 62, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3434, 63, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3435, 64, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3436, 65, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3437, 66, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3438, 67, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3439, 68, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3440, 69, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3441, 70, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3442, 71, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3443, 72, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3444, 73, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3445, 74, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3446, 75, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3447, 76, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3448, 77, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3449, 78, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:12:46'),
(3450, 79, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3451, 80, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3452, 81, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3453, 82, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3454, 83, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3455, 84, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3456, 85, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3457, 86, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3458, 87, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3459, 88, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3460, 89, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:12:46'),
(3461, 90, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:12:46'),
(3462, 91, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3463, 92, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3464, 93, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3465, 94, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3466, 95, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3467, 96, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 1, '2019-11-01 12:12:46'),
(3468, 97, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3469, 98, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3470, 99, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3471, 100, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3472, 101, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3473, 102, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3474, 103, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3475, 104, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3476, 105, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3477, 106, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3478, 107, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:12:46'),
(3479, 108, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3480, 109, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3481, 110, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3482, 111, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3483, 112, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3484, 113, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3485, 114, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3486, 115, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3487, 116, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3488, 117, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3489, 118, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3490, 119, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3491, 120, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3492, 121, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3493, 122, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3494, 123, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3495, 124, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3496, 125, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:12:46'),
(3497, 126, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3498, 127, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3499, 128, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3500, 129, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3501, 130, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3502, 131, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3503, 132, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3504, 133, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3505, 134, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3506, 135, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3507, 136, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3508, 137, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3509, 138, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3510, 139, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3511, 140, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3512, 141, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:12:46'),
(3513, 142, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3514, 143, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3515, 144, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3516, 145, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3517, 146, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3518, 147, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3519, 148, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3520, 149, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3521, 150, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3522, 151, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3523, 152, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3524, 153, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:12:46'),
(3525, 154, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3526, 155, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3527, 156, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3528, 157, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3529, 158, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3530, 159, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3531, 160, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3532, 161, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3533, 162, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3534, 163, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3535, 164, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3536, 165, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3537, 166, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3538, 167, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3539, 168, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3540, 169, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3541, 170, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3542, 171, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3543, 172, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3544, 173, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3545, 174, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3546, 175, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3547, 176, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3548, 177, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3549, 178, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3550, 179, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3551, 180, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3552, 181, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:12:46'),
(3553, 182, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3554, 183, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3555, 184, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3556, 185, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3557, 186, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3558, 187, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3559, 188, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3560, 189, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3561, 190, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3562, 191, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:12:46'),
(3563, 192, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:12:46'),
(3564, 193, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3565, 194, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3566, 195, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3567, 196, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:12:46'),
(3568, 197, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3569, 198, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3570, 199, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3571, 200, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3572, 201, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3573, 202, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3574, 203, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3575, 204, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3576, 205, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3577, 206, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3578, 207, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3579, 208, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3580, 209, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3581, 210, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3582, 211, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3583, 212, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:12:46'),
(3584, 213, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3585, 214, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3586, 215, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3587, 216, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3588, 217, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:12:46'),
(3589, 218, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3590, 219, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3591, 220, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:12:46'),
(3592, 221, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3593, 222, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3594, 223, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3595, 224, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3596, 225, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3597, 226, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3598, 227, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3599, 228, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3600, 229, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3601, 230, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3602, 231, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3603, 232, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3604, 233, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3605, 234, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3606, 235, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3607, 236, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3608, 237, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3609, 238, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3610, 239, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3611, 240, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3612, 241, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3613, 242, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3614, 243, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3615, 244, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3616, 245, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3617, 246, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3618, 247, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3619, 248, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:12:46'),
(3620, 249, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3621, 250, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3622, 251, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3623, 252, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3624, 253, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3625, 254, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3626, 255, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3627, 256, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3628, 257, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3629, 258, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3630, 259, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3631, 260, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:12:46'),
(3632, 261, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3633, 262, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3634, 263, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3635, 264, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3636, 265, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3637, 266, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3638, 267, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3639, 268, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3640, 269, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:12:46'),
(3641, 270, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3642, 271, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3643, 272, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:12:46'),
(3644, 273, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3645, 274, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3646, 275, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3647, 276, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3648, 277, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3649, 278, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3650, 279, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3651, 280, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3652, 281, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3653, 282, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3654, 283, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3655, 284, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3656, 285, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3657, 286, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:12:46'),
(3658, 287, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3659, 288, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3660, 289, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3661, 290, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:12:46'),
(3662, 291, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3663, 292, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3664, 293, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3665, 294, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3666, 295, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3667, 296, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3668, 297, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:12:46'),
(3669, 298, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3670, 299, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3671, 300, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3672, 301, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3673, 302, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3674, 303, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3675, 304, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:12:46'),
(3676, 305, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3677, 306, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:12:46'),
(3678, 307, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3679, 308, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3680, 309, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3681, 310, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3682, 311, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3683, 312, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3684, 313, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3685, 314, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3686, 315, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3687, 316, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3688, 317, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3689, 318, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3690, 319, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:12:46'),
(3691, 320, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3692, 321, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3693, 322, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3694, 323, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3695, 324, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3696, 325, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3697, 326, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3698, 327, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3699, 328, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3700, 329, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:12:46'),
(3701, 330, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3702, 331, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3703, 332, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3704, 333, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3705, 334, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:12:46'),
(3706, 335, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3707, 336, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3708, 337, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3709, 338, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3710, 339, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3711, 340, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3712, 341, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3713, 342, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3714, 343, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3715, 344, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3716, 345, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3717, 346, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3718, 347, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3719, 348, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3720, 349, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3721, 350, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3722, 351, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3723, 352, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3724, 353, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3725, 354, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3726, 355, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3727, 356, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3728, 357, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3729, 358, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3730, 359, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3731, 360, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3732, 361, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3733, 362, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:12:46'),
(3734, 364, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:12:46'),
(3735, 365, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:12:46'),
(3736, 366, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 73', 0, '2019-11-01 12:12:46'),
(3737, 367, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3738, 369, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3739, 370, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3740, 371, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 1, '2019-11-01 12:12:46'),
(3741, 372, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3742, 373, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3743, 374, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3744, 375, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3745, 376, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3746, 377, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3747, 378, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3748, 379, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3749, 380, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3750, 381, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3751, 382, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3752, 383, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3753, 384, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3754, 385, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3755, 386, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3756, 387, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3757, 388, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3758, 389, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3759, 390, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3760, 391, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 77', 0, '2019-11-01 12:12:46'),
(3761, 392, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3762, 393, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3763, 394, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3764, 395, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3765, 396, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3766, 397, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3767, 398, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3768, 399, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3769, 400, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:12:46'),
(3770, 401, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3771, 402, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46');
INSERT INTO `tbl_user_scratch_card` (`id`, `user_id`, `scratch_id`, `app_group_id`, `scratch_type`, `scratch_for`, `earning`, `is_scratch`, `created_at`) VALUES
(3772, 403, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3773, 404, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3774, 405, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3775, 406, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3776, 407, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3777, 408, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:12:46'),
(3778, 409, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3779, 410, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3780, 411, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3781, 412, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3782, 413, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3783, 414, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3784, 415, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3785, 416, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3786, 417, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3787, 418, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3788, 419, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3789, 420, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3790, 421, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3791, 422, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3792, 423, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3793, 424, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3794, 425, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3795, 426, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3796, 427, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3797, 428, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3798, 429, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3799, 430, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3800, 431, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3801, 432, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3802, 433, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3803, 434, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3804, 435, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3805, 436, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3806, 437, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3807, 438, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3808, 439, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3809, 440, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3810, 441, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3811, 442, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3812, 443, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 95', 0, '2019-11-01 12:12:46'),
(3813, 444, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3814, 445, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3815, 446, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3816, 447, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3817, 448, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3818, 449, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:12:46'),
(3819, 450, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3820, 451, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 53', 0, '2019-11-01 12:12:46'),
(3821, 452, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3822, 453, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3823, 454, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3824, 455, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3825, 456, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3826, 457, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3827, 458, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3828, 459, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3829, 460, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3830, 461, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3831, 462, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3832, 463, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3833, 464, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3834, 465, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3835, 466, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3836, 467, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3837, 468, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3838, 469, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 100', 0, '2019-11-01 12:12:46'),
(3839, 470, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3840, 471, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3841, 472, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3842, 473, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3843, 474, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3844, 475, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3845, 476, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3846, 477, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3847, 478, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:12:46'),
(3848, 479, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3849, 480, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3850, 481, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3851, 482, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3852, 483, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3853, 484, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3854, 485, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3855, 486, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3856, 487, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3857, 488, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3858, 489, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3859, 490, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3860, 491, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3861, 492, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:12:46'),
(3862, 493, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3863, 494, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3864, 495, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 81', 0, '2019-11-01 12:12:46'),
(3865, 496, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3866, 497, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3867, 498, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3868, 499, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3869, 500, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3870, 501, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3871, 502, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3872, 503, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3873, 504, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3874, 505, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3875, 506, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3876, 507, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3877, 508, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3878, 509, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3879, 510, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 64', 0, '2019-11-01 12:12:46'),
(3880, 511, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3881, 512, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3882, 513, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3883, 514, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3884, 515, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3885, 516, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3886, 517, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3887, 518, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 56', 0, '2019-11-01 12:12:46'),
(3888, 519, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 75', 0, '2019-11-01 12:12:46'),
(3889, 520, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3890, 521, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3891, 522, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3892, 523, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3893, 524, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3894, 525, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3895, 526, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3896, 527, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3897, 528, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3898, 529, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3899, 530, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 79', 0, '2019-11-01 12:12:46'),
(3900, 531, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3901, 532, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 94', 0, '2019-11-01 12:12:46'),
(3902, 533, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3903, 534, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3904, 535, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 61', 0, '2019-11-01 12:12:46'),
(3905, 536, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3906, 537, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3907, 538, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 97', 0, '2019-11-01 12:12:46'),
(3908, 539, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3909, 540, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3910, 541, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3911, 542, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3912, 543, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 67', 0, '2019-11-01 12:12:46'),
(3913, 544, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3914, 545, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3915, 546, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 71', 0, '2019-11-01 12:12:46'),
(3916, 547, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3917, 548, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3918, 549, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 72', 0, '2019-11-01 12:12:46'),
(3919, 550, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3920, 551, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3921, 552, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 93', 0, '2019-11-01 12:12:46'),
(3922, 553, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3923, 554, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3924, 555, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3925, 556, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3926, 557, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 65', 0, '2019-11-01 12:12:46'),
(3927, 558, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 80', 0, '2019-11-01 12:12:46'),
(3928, 559, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3929, 560, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3930, 561, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3931, 562, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 89', 0, '2019-11-01 12:12:46'),
(3932, 563, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3933, 564, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 66', 0, '2019-11-01 12:12:46'),
(3934, 565, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3935, 566, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3936, 567, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3937, 568, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 84', 0, '2019-11-01 12:12:46'),
(3938, 569, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 91', 0, '2019-11-01 12:12:46'),
(3939, 570, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3940, 571, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3941, 572, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 90', 0, '2019-11-01 12:12:46'),
(3942, 573, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3943, 574, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3944, 575, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 54', 0, '2019-11-01 12:12:46'),
(3945, 576, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 88', 0, '2019-11-01 12:12:46'),
(3946, 577, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 87', 0, '2019-11-01 12:12:46'),
(3947, 578, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 70', 0, '2019-11-01 12:12:46'),
(3948, 579, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3949, 580, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 74', 0, '2019-11-01 12:12:46'),
(3950, 581, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 50', 0, '2019-11-01 12:12:46'),
(3951, 582, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3952, 583, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3953, 584, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 82', 0, '2019-11-01 12:12:46'),
(3954, 585, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 59', 0, '2019-11-01 12:12:46'),
(3955, 586, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 52', 0, '2019-11-01 12:12:46'),
(3956, 587, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 62', 0, '2019-11-01 12:12:46'),
(3957, 588, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 58', 0, '2019-11-01 12:12:46'),
(3958, 589, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3959, 590, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 99', 0, '2019-11-01 12:12:46'),
(3960, 591, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 63', 0, '2019-11-01 12:12:46'),
(3961, 592, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3962, 593, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 55', 0, '2019-11-01 12:12:46'),
(3963, 594, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 83', 0, '2019-11-01 12:12:46'),
(3964, 595, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 76', 0, '2019-11-01 12:12:46'),
(3965, 596, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 92', 0, '2019-11-01 12:12:46'),
(3966, 597, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 57', 0, '2019-11-01 12:12:46'),
(3967, 598, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 96', 0, '2019-11-01 12:12:46'),
(3968, 599, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3969, 600, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 69', 0, '2019-11-01 12:12:46'),
(3970, 601, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 60', 0, '2019-11-01 12:12:46'),
(3971, 602, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 68', 0, '2019-11-01 12:12:46'),
(3972, 603, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 86', 0, '2019-11-01 12:12:46'),
(3973, 604, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 51', 0, '2019-11-01 12:12:46'),
(3974, 605, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 85', 0, '2019-11-01 12:12:46'),
(3975, 606, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 98', 0, '2019-11-01 12:12:46'),
(3976, 607, 17, NULL, 'reward', NULL, 'You\'ve won ₹ 78', 0, '2019-11-01 12:12:46'),
(3977, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-11-01 13:20:36'),
(3978, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-11-02 04:41:33'),
(3979, 608, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 193', 0, '2019-11-02 05:17:26'),
(3980, 608, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-11-02 05:17:26'),
(3981, 608, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 5', 0, '2019-11-02 05:17:26'),
(3982, 608, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-11-02 05:17:26'),
(3983, 608, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-11-02 05:17:26'),
(3984, 608, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-11-02 05:17:26'),
(3985, 608, 16, NULL, 'reward', 'Reward', 'You\'ve won ₹ 98', 0, '2019-11-02 05:17:26'),
(3986, 608, 17, NULL, 'reward', 'oyo', 'You\'ve won ₹ 83', 0, '2019-11-02 05:17:26'),
(3987, 608, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-11-02 05:17:29'),
(3988, 535, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-11-02 06:16:56'),
(3989, 609, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 127', 1, '2019-11-02 11:26:11'),
(3990, 609, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 1, '2019-11-02 11:26:11'),
(3991, 609, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 1, '2019-11-02 11:26:11'),
(3992, 609, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 1, '2019-11-02 11:26:11'),
(3993, 609, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 1, '2019-11-02 11:26:11'),
(3994, 609, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 1, '2019-11-02 11:26:11'),
(3995, 609, 16, NULL, 'reward', 'Reward', 'You\'ve won ₹ 83', 0, '2019-11-02 11:26:11'),
(3996, 609, 17, NULL, 'reward', 'oyo', 'You\'ve won ₹ 51', 0, '2019-11-02 11:26:11'),
(3997, 609, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-11-02 11:26:17'),
(3998, 850, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-11-02 11:55:37'),
(3999, 591, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-11-02 18:38:39'),
(4000, 591, 10, 2, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-11-02 18:39:34'),
(4001, 612, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-11-03 01:42:27'),
(4002, 609, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 1, '2019-11-03 03:32:47'),
(4003, 416, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-11-03 08:31:40'),
(4004, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-11-03 10:39:07'),
(4005, 613, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 127', 1, '2019-11-03 11:32:00'),
(4006, 613, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-11-03 11:32:00'),
(4007, 613, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 7', 0, '2019-11-03 11:32:00'),
(4008, 613, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-11-03 11:32:00'),
(4009, 613, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-11-03 11:32:00'),
(4010, 613, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-11-03 11:32:00'),
(4011, 613, 16, NULL, 'reward', 'Reward', 'You\'ve won ₹ 94', 0, '2019-11-03 11:32:00'),
(4012, 613, 17, NULL, 'reward', 'oyo', 'You\'ve won ₹ 63', 0, '2019-11-03 11:32:00'),
(4013, 613, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-11-03 11:32:01'),
(4014, 859, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-11-03 14:55:23'),
(4015, 548, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-11-03 19:29:22'),
(4016, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-11-04 03:47:43'),
(4017, 605, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-11-04 05:43:45'),
(4018, 615, 5, NULL, 'reward', 'registration reward', 'You\'ve won ₹ 240', 0, '2019-11-04 06:00:56'),
(4019, 615, 11, NULL, 'coupan', 'Red Bus', 'QWERTY', 0, '2019-11-04 06:00:56'),
(4020, 615, 12, NULL, 'reward', 'Demo Reward', 'You\'ve won ₹ 6', 0, '2019-11-04 06:00:56'),
(4021, 615, 13, NULL, 'coupan', 'Demo Coupon', 'ASDFGH', 0, '2019-11-04 06:00:56'),
(4022, 615, 14, NULL, 'coupan', '1MG Offer Code', '1MGIKEBANA', 0, '2019-11-04 06:00:56'),
(4023, 615, 15, NULL, 'coupan', 'Movie Codes', 'QWERTY', 0, '2019-11-04 06:00:56'),
(4024, 615, 16, NULL, 'reward', 'Reward', 'You\'ve won ₹ 72', 0, '2019-11-04 06:00:56'),
(4025, 615, 17, NULL, 'reward', 'oyo', 'You\'ve won ₹ 68', 0, '2019-11-04 06:00:56'),
(4026, 615, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-11-04 06:00:59'),
(4027, 604, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-11-04 07:23:33'),
(4028, 188, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-11-04 16:33:35'),
(4029, 595, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-11-04 17:25:40'),
(4030, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 1, '2019-11-04 21:08:33'),
(4031, 221, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-11-05 11:15:51'),
(4032, 605, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-11-05 11:43:13'),
(4033, 609, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 1, '2019-11-05 14:50:24'),
(4034, 523, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 1, '2019-11-05 22:47:11'),
(4035, 426, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-11-06 01:25:39'),
(4036, 692, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-11-06 06:05:39'),
(4037, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-11-06 08:50:17'),
(4038, 551, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-11-07 14:33:23'),
(4039, 551, 10, 1, 'reward', NULL, 'You\'ve won ₹ 8', 0, '2019-11-07 14:33:50'),
(4040, 605, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-11-08 08:14:16'),
(4041, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-11-08 10:41:48'),
(4042, 583, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-11-08 11:52:21'),
(4043, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 5', 0, '2019-11-08 15:32:36'),
(4044, 613, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-11-08 19:36:25'),
(4045, 613, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-11-10 03:12:56'),
(4046, 407, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-11-10 08:59:54'),
(4047, 838, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-11-10 10:38:11'),
(4048, 96, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-11-11 00:13:09'),
(4049, 576, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-11-11 01:50:13'),
(4050, 532, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 10', 0, '2019-11-11 04:33:03'),
(4051, 371, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 8', 1, '2019-11-11 08:36:20'),
(4052, 371, 10, 3, 'reward', NULL, 'You\'ve won ₹ 3', 1, '2019-11-11 08:43:02'),
(4053, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 6', 0, '2019-11-11 11:52:48'),
(4054, 613, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 2', 0, '2019-11-11 12:19:08'),
(4055, 14, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 4', 0, '2019-11-11 21:44:41'),
(4056, 615, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 9', 0, '2019-11-11 21:49:11'),
(4057, 615, 10, 1, 'reward', NULL, 'You\'ve won ₹ 1', 0, '2019-11-11 21:49:43'),
(4058, 605, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 7', 0, '2019-11-12 03:34:35'),
(4059, 8, 7, NULL, 'reward', NULL, 'You\'ve won ₹ 3', 0, '2019-11-12 05:10:12'),
(4060, 1, 9, NULL, 'reward', 'referral reward', 'You\'ve won ₹ 14', 0, '2020-01-13 05:32:30'),
(4061, 626, 9, NULL, 'reward', 'referral reward', 'You\'ve won ₹ 23', 0, '2020-01-13 05:32:30'),
(4062, 1, 9, NULL, 'reward', 'referral reward', 'You\'ve won ₹ 15', 0, '2020-01-21 05:33:24'),
(4063, 627, 9, NULL, 'reward', 'referral reward', 'You\'ve won ₹ 16', 0, '2020-01-21 05:33:24'),
(4064, 1, 9, NULL, 'reward', 'referral reward', 'You\'ve won ₹ 21', 0, '2020-02-04 07:11:07'),
(4065, 629, 9, NULL, 'reward', 'referral reward', 'You\'ve won ₹ 10', 0, '2020-02-04 07:11:07'),
(4066, 1, 9, NULL, 'reward', 'referral reward', 'You\'ve won ₹ 25', 0, '2020-02-04 07:11:55'),
(4067, 630, 9, NULL, 'reward', 'referral reward', 'You\'ve won ₹ 10', 0, '2020-02-04 07:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web_setting`
--

CREATE TABLE `tbl_web_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_web_setting`
--

INSERT INTO `tbl_web_setting` (`id`, `name`, `value`) VALUES
(1, 'app-logo', 'images/logo/280121105018am-shopping-cart.png'),
(2, 'app-name', 'Go Services'),
(3, 'app-description', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(4, 'app-privacy', '<p><i><strong>Lorem Ipsum</strong></i> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(11, 'app-version', '1.0'),
(12, 'app-otp-on-off', '1');

-- --------------------------------------------------------

--
-- Table structure for table `termcondition`
--

CREATE TABLE `termcondition` (
  `id` int(255) NOT NULL,
  `termcondition` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termcondition`
--

INSERT INTO `termcondition` (`id`, `termcondition`) VALUES
(4, '<h1 class=\"text-center\" style=\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 36px; font-family: Poppins-Medium; font-weight: 500; line-height: 1.1; color: #333333; text-align: center;\">Terms and Conditions</h1>\r\n<p style=\"margin-bottom: 0in;\" align=\"JUSTIFY\"><strong>Maxx Business Media Pvt Ltd</strong>(\"<strong>UrbanCorner</strong>\"), primarily operates, controls and manages the Services (as defined below) provided by it from its corporate office at No. 90, 2nd Cross, A-Sector, Amruthanagar, Bengaluru, Karnataka &ndash; 560092 (&ldquo;Bengaluru Corporate Office&rdquo;).</p>');

-- --------------------------------------------------------

--
-- Table structure for table `time_interval`
--

CREATE TABLE `time_interval` (
  `time_id` int(100) NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EndTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_interval`
--

INSERT INTO `time_interval` (`time_id`, `start_time`, `EndTime`, `Duration`) VALUES
(1, '07:00', '21:00', '30');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `address_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT 'N/A',
  `updated_at` varchar(255) NOT NULL DEFAULT 'N/A',
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_store`
--
ALTER TABLE `about_store`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `addons_booking`
--
ALTER TABLE `addons_booking`
  ADD PRIMARY KEY (`booking_add_on_id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`add_on_id`);

--
-- Indexes for table `add_ons_des`
--
ALTER TABLE `add_ons_des`
  ADD PRIMARY KEY (`des_id`);

--
-- Indexes for table `advertisment_plan`
--
ALTER TABLE `advertisment_plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `blog_points`
--
ALTER TABLE `blog_points`
  ADD PRIMARY KEY (`blog_point_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `booking_cancel_list`
--
ALTER TABLE `booking_cancel_list`
  ADD PRIMARY KEY (`booking_cancel_id`);

--
-- Indexes for table `booking_cart`
--
ALTER TABLE `booking_cart`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `booking_coins`
--
ALTER TABLE `booking_coins`
  ADD PRIMARY KEY (`coins_id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `cancellation_list`
--
ALTER TABLE `cancellation_list`
  ADD PRIMARY KEY (`cancel_id`);

--
-- Indexes for table `cart_addons`
--
ALTER TABLE `cart_addons`
  ADD PRIMARY KEY (`c_aid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `complaint_raise`
--
ALTER TABLE `complaint_raise`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `country_code`
--
ALTER TABLE `country_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `faq_ans`
--
ALTER TABLE `faq_ans`
  ADD PRIMARY KEY (`faq_ans_id`);

--
-- Indexes for table `faq_category`
--
ALTER TABLE `faq_category`
  ADD PRIMARY KEY (`faq_cat_id`);

--
-- Indexes for table `faq_desc`
--
ALTER TABLE `faq_desc`
  ADD PRIMARY KEY (`faq_desc_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `gmap_key`
--
ALTER TABLE `gmap_key`
  ADD PRIMARY KEY (`map_id`);

--
-- Indexes for table `hygine_price`
--
ALTER TABLE `hygine_price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `lower_banner`
--
ALTER TABLE `lower_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `membership_plan`
--
ALTER TABLE `membership_plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `membership_user`
--
ALTER TABLE `membership_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`partner_id`);

--
-- Indexes for table `partner_bank`
--
ALTER TABLE `partner_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `partner_city`
--
ALTER TABLE `partner_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `partner_documentation`
--
ALTER TABLE `partner_documentation`
  ADD PRIMARY KEY (`partner_doc_id`);

--
-- Indexes for table `partner_earning`
--
ALTER TABLE `partner_earning`
  ADD PRIMARY KEY (`earn_id`);

--
-- Indexes for table `partner_gst`
--
ALTER TABLE `partner_gst`
  ADD PRIMARY KEY (`gst_id`);

--
-- Indexes for table `payout_request`
--
ALTER TABLE `payout_request`
  ADD PRIMARY KEY (`payout_id`);

--
-- Indexes for table `payout_requests`
--
ALTER TABLE `payout_requests`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `previous_user_membership_table`
--
ALTER TABLE `previous_user_membership_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raffle_card`
--
ALTER TABLE `raffle_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge_history`
--
ALTER TABLE `recharge_history`
  ADD PRIMARY KEY (`recharge_id`);

--
-- Indexes for table `recharge_partner`
--
ALTER TABLE `recharge_partner`
  ADD PRIMARY KEY (`recharge_id`);

--
-- Indexes for table `reward_image`
--
ALTER TABLE `reward_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_blog`
--
ALTER TABLE `service_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `storecoupon`
--
ALTER TABLE `storecoupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`st_cat_id`);

--
-- Indexes for table `store_dashboard`
--
ALTER TABLE `store_dashboard`
  ADD PRIMARY KEY (`dash_id`);

--
-- Indexes for table `store_followers`
--
ALTER TABLE `store_followers`
  ADD PRIMARY KEY (`follow_id`);

--
-- Indexes for table `store_tags`
--
ALTER TABLE `store_tags`
  ADD PRIMARY KEY (`store_tag_id`);

--
-- Indexes for table `store_timings`
--
ALTER TABLE `store_timings`
  ADD PRIMARY KEY (`timing_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `sub_category_about`
--
ALTER TABLE `sub_category_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_header_content`
--
ALTER TABLE `sub_category_header_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category_points`
--
ALTER TABLE `sub_category_points`
  ADD PRIMARY KEY (`points`);

--
-- Indexes for table `sub_child_category`
--
ALTER TABLE `sub_child_category`
  ADD PRIMARY KEY (`child_category_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admob`
--
ALTER TABLE `tbl_admob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advertisment`
--
ALTER TABLE `tbl_advertisment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_app`
--
ALTER TABLE `tbl_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bankoffers`
--
ALTER TABLE `tbl_bankoffers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email`
--
ALTER TABLE `tbl_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `tbl_Enquiry`
--
ALTER TABLE `tbl_Enquiry`
  ADD PRIMARY KEY (`enq_id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_event_banner`
--
ALTER TABLE `tbl_event_banner`
  ADD PRIMARY KEY (`event_banner_id`);

--
-- Indexes for table `tbl_fcm`
--
ALTER TABLE `tbl_fcm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_msg_key`
--
ALTER TABLE `tbl_msg_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `tbl_redeem_request`
--
ALTER TABLE `tbl_redeem_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_referral`
--
ALTER TABLE `tbl_referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_scratch_card`
--
ALTER TABLE `tbl_scratch_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_scratch_card`
--
ALTER TABLE `tbl_user_scratch_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_web_setting`
--
ALTER TABLE `tbl_web_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termcondition`
--
ALTER TABLE `termcondition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_interval`
--
ALTER TABLE `time_interval`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `about_store`
--
ALTER TABLE `about_store`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addons_booking`
--
ALTER TABLE `addons_booking`
  MODIFY `booking_add_on_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `add_on_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `add_ons_des`
--
ALTER TABLE `add_ons_des`
  MODIFY `des_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `advertisment_plan`
--
ALTER TABLE `advertisment_plan`
  MODIFY `plan_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_points`
--
ALTER TABLE `blog_points`
  MODIFY `blog_point_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1394;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT for table `booking_cancel_list`
--
ALTER TABLE `booking_cancel_list`
  MODIFY `booking_cancel_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `booking_cart`
--
ALTER TABLE `booking_cart`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_coins`
--
ALTER TABLE `booking_coins`
  MODIFY `coins_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `detail_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

--
-- AUTO_INCREMENT for table `cancellation_list`
--
ALTER TABLE `cancellation_list`
  MODIFY `cancel_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart_addons`
--
ALTER TABLE `cart_addons`
  MODIFY `c_aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `complaint_raise`
--
ALTER TABLE `complaint_raise`
  MODIFY `complaint_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country_code`
--
ALTER TABLE `country_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq_ans`
--
ALTER TABLE `faq_ans`
  MODIFY `faq_ans_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `faq_category`
--
ALTER TABLE `faq_category`
  MODIFY `faq_cat_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_desc`
--
ALTER TABLE `faq_desc`
  MODIFY `faq_desc_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gmap_key`
--
ALTER TABLE `gmap_key`
  MODIFY `map_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hygine_price`
--
ALTER TABLE `hygine_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lower_banner`
--
ALTER TABLE `lower_banner`
  MODIFY `banner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `membership_plan`
--
ALTER TABLE `membership_plan`
  MODIFY `plan_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `membership_user`
--
ALTER TABLE `membership_user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `partner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `partner_bank`
--
ALTER TABLE `partner_bank`
  MODIFY `bank_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `partner_city`
--
ALTER TABLE `partner_city`
  MODIFY `city_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `partner_documentation`
--
ALTER TABLE `partner_documentation`
  MODIFY `partner_doc_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `partner_earning`
--
ALTER TABLE `partner_earning`
  MODIFY `earn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partner_gst`
--
ALTER TABLE `partner_gst`
  MODIFY `gst_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payout_request`
--
ALTER TABLE `payout_request`
  MODIFY `payout_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payout_requests`
--
ALTER TABLE `payout_requests`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `previous_user_membership_table`
--
ALTER TABLE `previous_user_membership_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `raffle_card`
--
ALTER TABLE `raffle_card`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recharge_history`
--
ALTER TABLE `recharge_history`
  MODIFY `recharge_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recharge_partner`
--
ALTER TABLE `recharge_partner`
  MODIFY `recharge_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `reward_image`
--
ALTER TABLE `reward_image`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `service_blog`
--
ALTER TABLE `service_blog`
  MODIFY `blog_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=528;

--
-- AUTO_INCREMENT for table `storecoupon`
--
ALTER TABLE `storecoupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `st_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `store_dashboard`
--
ALTER TABLE `store_dashboard`
  MODIFY `dash_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_followers`
--
ALTER TABLE `store_followers`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_tags`
--
ALTER TABLE `store_tags`
  MODIFY `store_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `store_timings`
--
ALTER TABLE `store_timings`
  MODIFY `timing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `sub_category_about`
--
ALTER TABLE `sub_category_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_category_header_content`
--
ALTER TABLE `sub_category_header_content`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_category_points`
--
ALTER TABLE `sub_category_points`
  MODIFY `points` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sub_child_category`
--
ALTER TABLE `sub_child_category`
  MODIFY `child_category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admob`
--
ALTER TABLE `tbl_admob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_advertisment`
--
ALTER TABLE `tbl_advertisment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_app`
--
ALTER TABLE `tbl_app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_bankoffers`
--
ALTER TABLE `tbl_bankoffers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_email`
--
ALTER TABLE `tbl_email`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_Enquiry`
--
ALTER TABLE `tbl_Enquiry`
  MODIFY `enq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `event_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_event_banner`
--
ALTER TABLE `tbl_event_banner`
  MODIFY `event_banner_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_fcm`
--
ALTER TABLE `tbl_fcm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_msg_key`
--
ALTER TABLE `tbl_msg_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_redeem_request`
--
ALTER TABLE `tbl_redeem_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_referral`
--
ALTER TABLE `tbl_referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_scratch_card`
--
ALTER TABLE `tbl_scratch_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=745;

--
-- AUTO_INCREMENT for table `tbl_user_scratch_card`
--
ALTER TABLE `tbl_user_scratch_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4068;

--
-- AUTO_INCREMENT for table `tbl_web_setting`
--
ALTER TABLE `tbl_web_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `termcondition`
--
ALTER TABLE `termcondition`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_interval`
--
ALTER TABLE `time_interval`
  MODIFY `time_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
