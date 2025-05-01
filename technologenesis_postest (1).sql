-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2023 at 02:27 AM
-- Server version: 10.3.36-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technologenesis_postest`
--

-- --------------------------------------------------------

--
-- Table structure for table `catlogs`
--

CREATE TABLE `catlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catlogs`
--

INSERT INTO `catlogs` (`id`, `name`, `status`, `icon`, `created_at`, `updated_at`) VALUES
(20, 'All', '1', '1.png', '2023-03-31 12:09:26', '2023-03-31 12:09:26'),
(21, 'Fries', '1', '3.png', '2023-03-31 12:09:36', '2023-03-31 12:09:36'),
(22, 'Beverage', '1', '2.png', '2023-03-31 12:10:07', '2023-03-31 12:10:07'),
(23, 'Snacks', '1', '6.png', '2023-03-31 12:10:16', '2023-03-31 12:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `catlog_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `manage_stock` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `image`, `status`, `catlog_id`, `stock`, `manage_stock`, `created_at`, `updated_at`) VALUES
(12, 'Samosa', '50', '14.png', '1', 23, 0, '0', '2023-03-31 12:11:05', '2023-03-31 12:11:05'),
(13, 'Pespi 350ml', '60', '10.png', '1', 22, 83, '1', '2023-03-31 12:12:01', '2023-04-06 18:39:16'),
(14, 'Cheetoz', '50', '2.png', '2', 23, 0, '1', '2023-03-31 12:12:56', '2023-03-31 12:13:47'),
(15, 'Cheetos', '50', '2.png', '1', 23, 0, '1', '2023-03-31 12:14:09', '2023-04-08 16:36:08'),
(16, 'Coffee', '150', '3.png', '1', 22, 0, NULL, '2023-03-31 12:15:01', '2023-04-06 17:47:35'),
(17, '7UP 350ml', '60', '1.png', '1', 22, 148, '1', '2023-03-31 12:15:41', '2023-04-06 15:15:05'),
(18, 'Dew 350ml', '60', '4.png', '1', 22, 149, '1', '2023-03-31 12:16:14', '2023-04-05 15:51:45'),
(19, 'Fries', '150', '5.png', '1', 21, 0, '0', '2023-03-31 12:16:36', '2023-03-31 12:16:36'),
(20, 'Lays', '60', '8.png', '1', 23, 43, '1', '2023-03-31 12:17:36', '2023-04-08 14:53:08'),
(21, 'Merinda', '60', '9.png', '1', 22, 135, '1', '2023-03-31 12:18:34', '2023-04-08 16:36:59'),
(23, 'Water', '80', '13.png', '2', 22, 29, '1', '2023-03-31 12:20:29', '2023-04-06 18:37:31'),
(24, 'Slice Juice', '40', '15.png', '1', 22, 10, '1', '2023-03-31 12:21:05', '2023-04-08 16:36:59'),
(25, 'Sting', '60', '16.png', '1', 22, 32, '1', '2023-03-31 12:21:21', '2023-04-08 16:32:19'),
(26, 'Tea', '80', '17.png', '1', 22, 0, '0', '2023-03-31 12:21:53', '2023-04-04 10:23:23'),
(27, 'Fruita vital Mango', '180', '6.png', '1', 22, 45, '1', '2023-03-31 12:23:04', '2023-04-07 14:31:59'),
(28, 'Fruita vital peach', '180', '7.png', '1', 22, 44, '1', '2023-03-31 12:23:45', '2023-04-05 15:51:45'),
(29, 'Lays Test', '60', '8.png', '2', 23, 10, '1', '2023-04-04 10:37:57', '2023-04-04 11:36:18'),
(30, 'Lays test 2', '150', '16.png', '2', 23, 0, '1', '2023-04-04 10:38:37', '2023-04-04 11:36:15'),
(31, 'Lays test update test', '50', '18.png', '2', 21, 45, '1', '2023-04-06 17:29:54', '2023-04-06 18:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `listorders`
--

CREATE TABLE `listorders` (
  `id` int(11) NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listorders`
--

INSERT INTO `listorders` (`id`, `qty`, `price`, `item_id`, `created_at`, `updated_at`, `order_id`) VALUES
(85, '1', '700', 22, '2023-04-05 17:21:32', '2023-04-05 17:21:32', 70),
(86, '1', '60', 25, '2023-04-05 17:21:32', '2023-04-05 17:21:32', 70),
(87, '1', '40', 24, '2023-04-05 17:21:32', '2023-04-05 17:21:32', 70),
(88, '1', '40', 24, '2023-04-05 17:26:10', '2023-04-05 17:26:10', 71),
(89, '1', '80', 23, '2023-04-05 17:26:10', '2023-04-05 17:26:10', 71),
(90, '1', '60', 25, '2023-04-05 17:26:19', '2023-04-05 17:26:19', 72),
(91, '1', '80', 26, '2023-04-05 17:26:19', '2023-04-05 17:26:19', 72),
(92, '1', '180', 27, '2023-04-05 17:26:19', '2023-04-05 17:26:19', 72),
(93, '1', '60', 25, '2023-04-05 17:42:51', '2023-04-05 17:42:51', 73),
(94, '1', '40', 24, '2023-04-05 17:42:51', '2023-04-05 17:42:51', 73),
(95, '1', '80', 23, '2023-04-05 17:42:51', '2023-04-05 17:42:51', 73),
(96, '1', '700', 22, '2023-04-05 17:45:55', '2023-04-05 17:45:55', 74),
(97, '1', '150', 19, '2023-04-05 17:46:35', '2023-04-05 17:46:35', 75),
(98, '1', '40', 24, '2023-04-05 17:48:56', '2023-04-05 17:48:56', 76),
(99, '2', '120', 21, '2023-04-06 14:07:00', '2023-04-06 14:07:00', 77),
(100, '1', '4', 13, '2023-04-06 15:06:14', '2023-04-06 15:06:14', NULL),
(101, '1', '60', 17, '2023-04-06 15:15:05', '2023-04-06 15:15:05', 79),
(102, '1', '700', 22, '2023-04-06 15:15:05', '2023-04-06 15:15:05', 79),
(103, '1', '80', 23, '2023-04-06 15:15:05', '2023-04-06 15:15:05', 79),
(104, '1', '40', 24, '2023-04-06 15:15:05', '2023-04-06 15:15:05', 79),
(105, '1', '60', 25, '2023-04-06 15:15:05', '2023-04-06 15:15:05', 79),
(106, '1', '60', 25, '2023-04-06 15:20:46', '2023-04-06 15:20:46', 80),
(107, '1', '40', 24, '2023-04-06 15:25:16', '2023-04-06 15:25:16', 81),
(108, '1', '80', 23, '2023-04-06 15:25:16', '2023-04-06 15:25:16', 81),
(109, '1', '80', 23, '2023-04-06 15:26:10', '2023-04-06 15:26:10', 82),
(110, '2', '160', 23, '2023-04-06 15:26:46', '2023-04-06 15:26:46', 83),
(111, '1', '40', 24, '2023-04-06 15:27:29', '2023-04-06 15:27:29', 84),
(112, '1', '60', 25, '2023-04-06 15:27:29', '2023-04-06 15:27:29', 84),
(113, '1', '40', 24, '2023-04-06 15:34:57', '2023-04-06 15:34:57', 85),
(114, '1', '180', 27, '2023-04-06 15:34:57', '2023-04-06 15:34:57', 85),
(115, '2', '160', 26, '2023-04-06 15:34:57', '2023-04-06 15:34:57', 85),
(116, '1', '700', 22, '2023-04-06 15:45:20', '2023-04-06 15:45:20', 94),
(117, '1', '180', 27, '2023-04-06 17:15:33', '2023-04-06 17:15:33', 95),
(118, '2', '160', 26, '2023-04-06 17:15:33', '2023-04-06 17:15:33', 95),
(119, '1', '60', 25, '2023-04-06 17:15:33', '2023-04-06 17:15:33', 95),
(120, '4', '160', 24, '2023-04-06 17:15:33', '2023-04-06 17:15:33', 95),
(121, '5', '400', 23, '2023-04-06 17:15:33', '2023-04-06 17:15:33', 95),
(122, '1', '60', 13, '2023-04-06 18:39:16', '2023-04-06 18:39:16', 96),
(123, '5', '3500', 22, '2023-04-07 14:16:37', '2023-04-07 14:16:37', 97),
(124, '1', '40', 24, '2023-04-07 14:17:17', '2023-04-07 14:17:17', 98),
(125, '1', '60', 21, '2023-04-07 14:20:01', '2023-04-07 14:20:01', 99),
(126, '8', '320', 24, '2023-04-07 14:20:24', '2023-04-07 14:20:24', 100),
(127, '1', '60', 21, '2023-04-07 14:22:21', '2023-04-07 14:22:21', 101),
(128, '1', '60', 20, '2023-04-07 14:29:54', '2023-04-07 14:29:54', 102),
(129, '1', '60', 21, '2023-04-07 14:31:09', '2023-04-07 14:31:09', 103),
(130, '1', '150', 16, '2023-04-07 14:31:22', '2023-04-07 14:31:22', 104),
(131, '1', '80', 26, '2023-04-07 14:31:42', '2023-04-07 14:31:42', 105),
(132, '1', '180', 27, '2023-04-07 14:31:59', '2023-04-07 14:31:59', 106),
(133, '1', '60', 25, '2023-04-07 14:32:10', '2023-04-07 14:32:10', 107),
(134, '1', '60', 25, '2023-04-07 14:32:44', '2023-04-07 14:32:44', 108),
(135, '1', '80', 26, '2023-04-07 14:33:33', '2023-04-07 14:33:33', 109),
(136, '1', '60', 20, '2023-04-07 14:33:47', '2023-04-07 14:33:47', 110),
(137, '1', '60', 20, '2023-04-07 14:36:30', '2023-04-07 14:36:30', 111),
(138, '1', '60', 21, '2023-04-07 14:36:40', '2023-04-07 14:36:40', 112),
(139, '1', '40', 24, '2023-04-07 14:36:54', '2023-04-07 14:36:54', 113),
(140, '1', '60', 21, '2023-04-07 14:37:05', '2023-04-07 14:37:05', 114),
(141, '1', '60', 21, '2023-04-07 14:37:45', '2023-04-07 14:37:45', 115),
(142, '2', '120', 20, '2023-04-07 14:37:57', '2023-04-07 14:37:57', 116),
(143, '1', '60', 21, '2023-04-07 14:38:31', '2023-04-07 14:38:31', 117),
(144, '1', '40', 24, '2023-04-07 14:39:52', '2023-04-07 14:39:52', 118),
(145, '1', '60', 21, '2023-04-08 14:40:05', '2023-04-08 14:40:05', 119),
(146, '1', '60', 21, '2023-04-08 14:46:06', '2023-04-08 14:46:06', 120),
(147, '1', '40', 24, '2023-04-08 14:52:07', '2023-04-08 14:52:07', 121),
(148, '1', '60', 20, '2023-04-08 14:53:08', '2023-04-08 14:53:08', 122),
(149, '4', '240', 25, '2023-04-08 16:31:56', '2023-04-08 16:31:56', 123),
(150, '4', '240', 25, '2023-04-08 16:32:19', '2023-04-08 16:32:19', 124),
(151, '3', '150', 15, '2023-04-08 16:32:37', '2023-04-08 16:32:37', 125),
(152, '1', '50', 15, '2023-04-08 16:36:08', '2023-04-08 16:36:08', 126),
(153, '1', '40', 24, '2023-04-08 16:36:59', '2023-04-08 16:36:59', 127),
(154, '1', '60', 21, '2023-04-08 16:36:59', '2023-04-08 16:36:59', 127);

-- --------------------------------------------------------

--
-- Table structure for table `managestocks`
--

CREATE TABLE `managestocks` (
  `id` int(11) NOT NULL,
  `old_stock` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_stock` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_03_28_074734_create_permission_tables', 1),
(12, '2023_03_28_075454_create_catlogs_table', 1),
(13, '2023_03_28_075556_create_items_table', 2),
(14, '2023_03_28_080911_create_temporders_table', 3),
(15, '2023_03_28_082117_create_orders_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `temp_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `temp_id`, `item_id`, `order_type`, `total_price`, `user_id`, `created_at`, `updated_at`) VALUES
(70, NULL, NULL, '1', '8000', 6, '2023-04-05 17:21:32', '2023-04-05 17:21:32'),
(71, NULL, NULL, '1', '120', 6, '2023-04-05 17:26:10', '2023-04-05 17:26:10'),
(72, NULL, NULL, '1', '320', 6, '2023-04-05 17:26:19', '2023-04-05 17:26:19'),
(73, NULL, NULL, '3', '180', 6, '2023-04-05 17:42:51', '2023-04-05 17:42:51'),
(74, NULL, NULL, '3', '700', 6, '2023-04-05 17:45:55', '2023-04-05 17:45:55'),
(75, NULL, NULL, '4', '150', 6, '2023-04-05 17:46:35', '2023-04-05 17:46:35'),
(76, NULL, NULL, '2', '40', 6, '2023-04-05 17:48:56', '2023-04-05 17:48:56'),
(77, NULL, NULL, '1', '120', 6, '2023-04-06 14:07:00', '2023-04-06 14:07:00'),
(78, NULL, NULL, '1', '0', 6, '2023-04-06 15:14:43', '2023-04-06 15:14:43'),
(79, NULL, NULL, '1', '940', 6, '2023-04-06 15:15:05', '2023-04-06 15:15:05'),
(80, NULL, NULL, '1', '60', 6, '2023-04-06 15:20:46', '2023-04-06 15:20:46'),
(81, NULL, NULL, '1', '120', 6, '2023-04-06 15:25:16', '2023-04-06 15:25:16'),
(82, NULL, NULL, '1', '80', 6, '2023-04-06 15:26:10', '2023-04-06 15:26:10'),
(83, NULL, NULL, '2', '160', 6, '2023-04-06 15:26:46', '2023-04-06 15:26:46'),
(84, NULL, NULL, '1', '100', 6, '2023-04-06 15:27:29', '2023-04-06 15:27:29'),
(85, NULL, NULL, '1', '380', 6, '2023-04-06 15:34:57', '2023-04-06 15:34:57'),
(86, NULL, NULL, '1', '0', 6, '2023-04-06 15:35:53', '2023-04-06 15:35:53'),
(87, NULL, NULL, '1', '0', 6, '2023-04-06 15:38:33', '2023-04-06 15:38:33'),
(88, NULL, NULL, '1', '0', 6, '2023-04-06 15:42:15', '2023-04-06 15:42:15'),
(89, NULL, NULL, '1', '0', 6, '2023-04-06 15:42:51', '2023-04-06 15:42:51'),
(90, NULL, NULL, '1', '0', 6, '2023-04-06 15:43:52', '2023-04-06 15:43:52'),
(91, NULL, NULL, '2', '0', 6, '2023-04-06 15:44:18', '2023-04-06 15:44:18'),
(92, NULL, NULL, '1', '0', 6, '2023-04-06 15:44:51', '2023-04-06 15:44:51'),
(93, NULL, NULL, '3', '0', 6, '2023-04-06 15:45:06', '2023-04-06 15:45:06'),
(94, NULL, NULL, '3', '700', 6, '2023-04-06 15:45:20', '2023-04-06 15:45:20'),
(95, NULL, NULL, '1', '960', 6, '2023-04-06 17:15:33', '2023-04-06 17:15:33'),
(96, NULL, NULL, '2', '60', 6, '2023-04-06 18:39:16', '2023-04-06 18:39:16'),
(97, NULL, NULL, '1', '3500', 6, '2023-04-07 14:16:37', '2023-04-07 14:16:37'),
(98, NULL, NULL, '1', '40', 6, '2023-04-07 14:17:17', '2023-04-07 14:17:17'),
(99, NULL, NULL, '1', '60', 6, '2023-04-07 14:20:01', '2023-04-07 14:20:01'),
(100, NULL, NULL, '1', '320', 6, '2023-04-07 14:20:24', '2023-04-07 14:20:24'),
(101, NULL, NULL, '1', '60', 6, '2023-04-07 14:22:21', '2023-04-07 14:22:21'),
(102, NULL, NULL, '1', '60', 6, '2023-04-07 14:29:54', '2023-04-07 14:29:54'),
(103, NULL, NULL, '1', '60', 6, '2023-04-07 14:31:09', '2023-04-07 14:31:09'),
(104, NULL, NULL, '1', '150', 6, '2023-04-07 14:31:22', '2023-04-07 14:31:22'),
(105, NULL, NULL, '1', '80', 6, '2023-04-07 14:31:42', '2023-04-07 14:31:42'),
(106, NULL, NULL, '1', '180', 6, '2023-04-07 14:31:59', '2023-04-07 14:31:59'),
(107, NULL, NULL, '1', '60', 6, '2023-04-07 14:32:10', '2023-04-07 14:32:10'),
(108, NULL, NULL, '1', '60', 6, '2023-04-07 14:32:44', '2023-04-07 14:32:44'),
(109, NULL, NULL, '1', '80', 6, '2023-04-07 14:33:33', '2023-04-07 14:33:33'),
(110, NULL, NULL, '1', '60', 6, '2023-04-07 14:33:47', '2023-04-07 14:33:47'),
(111, NULL, NULL, '1', '60', 6, '2023-04-07 14:36:30', '2023-04-07 14:36:30'),
(112, NULL, NULL, '1', '60', 6, '2023-04-07 14:36:40', '2023-04-07 14:36:40'),
(113, NULL, NULL, '1', '40', 6, '2023-04-07 14:36:54', '2023-04-07 14:36:54'),
(114, NULL, NULL, '1', '60', 6, '2023-04-07 14:37:05', '2023-04-07 14:37:05'),
(115, NULL, NULL, '1', '60', 6, '2023-04-07 14:37:45', '2023-04-07 14:37:45'),
(116, NULL, NULL, '1', '120', 6, '2023-04-07 14:37:57', '2023-04-07 14:37:57'),
(117, NULL, NULL, '1', '60', 6, '2023-04-07 14:38:31', '2023-04-07 14:38:31'),
(118, NULL, NULL, '1', '40', 6, '2023-04-07 14:39:52', '2023-04-07 14:39:52'),
(119, NULL, NULL, '2', '60', 6, '2023-04-08 14:40:05', '2023-04-08 14:40:05'),
(120, NULL, NULL, '4', '60', 6, '2023-04-08 14:46:06', '2023-04-08 14:46:06'),
(121, NULL, NULL, '3', '40', 6, '2023-04-08 14:52:07', '2023-04-08 14:52:07'),
(122, NULL, NULL, '4', '60', 6, '2023-04-08 14:53:08', '2023-04-08 14:53:08'),
(123, NULL, NULL, '5', '240', 6, '2023-04-08 16:31:56', '2023-04-08 16:31:56'),
(124, NULL, NULL, '1', '240', 6, '2023-04-08 16:32:19', '2023-04-08 16:32:19'),
(125, NULL, NULL, '1', '150', 6, '2023-04-08 16:32:37', '2023-04-08 16:32:37'),
(126, NULL, NULL, '1', '50', 6, '2023-04-08 16:36:08', '2023-04-08 16:36:08'),
(127, NULL, NULL, '1', '100', 6, '2023-04-08 16:36:59', '2023-04-08 16:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'api', '2023-03-28 03:54:15', '2023-03-28 03:54:15'),
(2, 'item', 'api', '2023-03-28 03:54:15', '2023-03-28 03:54:15'),
(3, 'Order', 'api', '2023-03-28 03:54:15', '2023-03-28 03:54:15'),
(4, 'User', 'api', '2023-03-28 03:54:15', '2023-03-28 03:54:15'),
(5, 'Setting', 'api', '2023-03-28 03:54:15', '2023-03-28 03:54:15'),
(6, 'Expense', 'api', '2023-03-28 03:54:15', '2023-03-28 03:54:15'),
(7, 'Calender', 'api', '2023-03-28 03:54:15', '2023-03-28 03:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'api', '2023-03-28 03:54:16', '2023-03-28 03:54:16'),
(2, 'User', 'api', '2023-03-28 03:54:16', '2023-03-28 03:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `temporders`
--

CREATE TABLE `temporders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `phone`, `created_at`, `updated_at`) VALUES
(6, 'Ahmed Saeed', 'user111@gmail.com', NULL, '$2y$10$3dql3qbob32cf04tcVKh9up.m6cexxzmlcixNREXGpJagGxCWbC3.', NULL, 'User', '03240425055', '2023-04-07 18:24:01', '2023-04-10 15:08:31'),
(22, 'hassan', 'hassan@gmail.com', NULL, '$2y$10$5Wr7Wb3/IVV8UhGBEb2uAuLeRgYL441Gei.OqmeqPRmTE0LY.I9i2', NULL, 'User', '03003264998', '2023-04-07 17:48:51', '2023-04-07 17:48:51'),
(24, 'Ali aa', 'ali@gmail.com', NULL, '$2y$10$ECZo1rNmgsUtN5kPVe98.OOKhu.FvUOUerqNv62IB/ABcDyUjwBsG', NULL, 'User', '03003264998', '2023-04-07 18:29:08', '2023-04-07 18:35:25'),
(25, 'aaaaaaa', 'aamir65@gmail.com', NULL, '$2y$10$s.cZlmGBIpk5sbSKwLEOeu5eABvqNT/b7URgVD4DN.LNCCa8ejI6a', NULL, 'Admin', '03003264991', '2023-04-07 18:32:20', '2023-04-07 18:38:46'),
(27, 'ahmed', 'ahmed12@gmail.com', NULL, '$2y$10$cfDq3F7SpLLhPl9b.befAuupTXAEN3CiE5m5wtw42V4HxA/4wE.wq', NULL, 'User', '03003264998', '2023-04-08 14:03:43', '2023-04-10 15:06:08'),
(28, 'M.Arsalan', 'arsalan@gmail.com', NULL, '$2y$10$DEF.C.K9igQzWDFRWJfZjeUgLTuyECXetvEZA571amczTsYNw/CuS', NULL, 'Admin', '03003264998', '2023-04-08 14:09:01', '2023-04-08 14:11:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catlogs`
--
ALTER TABLE `catlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_catlog_id_foreign` (`catlog_id`);

--
-- Indexes for table `listorders`
--
ALTER TABLE `listorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managestocks`
--
ALTER TABLE `managestocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_temp_id_foreign` (`temp_id`),
  ADD KEY `orders_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `temporders`
--
ALTER TABLE `temporders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temporders_item_id_foreign` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catlogs`
--
ALTER TABLE `catlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `listorders`
--
ALTER TABLE `listorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `managestocks`
--
ALTER TABLE `managestocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temporders`
--
ALTER TABLE `temporders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_catlog_id_foreign` FOREIGN KEY (`catlog_id`) REFERENCES `catlogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_temp_id_foreign` FOREIGN KEY (`temp_id`) REFERENCES `temporders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `temporders`
--
ALTER TABLE `temporders`
  ADD CONSTRAINT `temporders_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
