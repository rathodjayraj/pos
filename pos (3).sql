-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 06:52 AM
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
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city_id` varchar(225) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `role` varchar(225) DEFAULT NULL,
  `image_id` int(50) DEFAULT NULL,
  `is_login` int(11) NOT NULL DEFAULT 0,
  `pas` varchar(225) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `full_name`, `user_name`, `email`, `phone`, `address`, `city_id`, `state_id`, `country_id`, `role`, `image_id`, `is_login`, `pas`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super_admin', 'super-admin@gmail.com', '8088156940', 'ujjain d', '569', 21, 101, NULL, 19, 1, '7MgPe6bw', NULL, '$2y$10$jLuhsUK9dLJk2uZ6ShgafuG0kYec8HH2xuiXePShx3B8q.SESXULK', NULL, NULL, '2024-03-01 03:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `created_by`, `name`, `code`, `image_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'ca122', 22, 1, '2024-01-16 11:42:18', '2024-01-28 08:05:58'),
(2, 3, 'Food', 'Nd12', 33, 1, '2024-01-20 13:41:32', '2024-01-20 13:41:32'),
(3, 8, 'csdv', 'ascvs', 53, 1, '2024-01-29 06:17:17', '2024-01-29 06:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `description`, `image_id`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'ENTRY AREA', NULL, NULL, NULL, 1, '8', '2024-02-20 04:45:01', '2024-02-20 04:45:01'),
(5, 'DRAWING ROOM', NULL, NULL, NULL, 1, '8', '2024-02-20 04:52:18', '2024-02-20 04:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `city_id`, `state_id`, `country_id`, `address`, `description`, `image_id`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(10, 'VIhan Patel', 'chirag@gmail.com', '9016168412', NULL, NULL, NULL, 'Near Chopati Road Porbandar,Near Chopati Road PorbandarNear Chopati Road PorbandarNear Chopati Road Porbandar', NULL, 68, 1, 8, '2024-02-20 04:13:45', '2024-02-24 06:27:39'),
(11, 'Chirag Padaya', 'admin@admin.com', '9016168412', NULL, NULL, NULL, 'Ayodhya Chowk, Opposite Gokul Mathura Apartment, 150 feet ring road, Rajkot - 360005, Gujarat - INDIA', NULL, 71, 1, 8, '2024-02-22 00:52:09', '2024-02-22 00:52:09'),
(14, 'chirag padaya', 'quantumbot@gmail.com', '9012128452', NULL, NULL, NULL, 'ytyrtyrty', NULL, 79, 1, 8, '2024-03-05 23:56:37', '2024-03-05 23:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `city_id`, `state_id`, `country_id`, `address`, `description`, `image_id`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Rahul', 'rahul@gmail.com', '6999999999', 569, 21, 101, 'test', NULL, 30, 1, 1, '2024-01-19 05:25:17', '2024-01-19 05:43:24'),
(5, 'Jaydeep Pipaliya', 'quantumbot@gmail.com', '9016168412', NULL, NULL, NULL, NULL, NULL, 67, 1, 8, '2024-02-20 03:34:10', '2024-03-06 00:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heading_items`
--

CREATE TABLE `heading_items` (
  `id` int(11) NOT NULL,
  `heading_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `heading_items`
--

INSERT INTO `heading_items` (`id`, `heading_id`, `description`, `unit`, `qty`) VALUES
(76, 4, 'Decorative Laminate over Main Door Lock Change Door Magnet. Using some door jamb as given by builder or contractor)(Panelling outside of Grill door is Not included in this Package)', 'No', '1'),
(77, 4, 'Safety Door New Flush Door with decorative Laminate both side with MS Grill + 01 New Door Lock', 'No', '1'),
(78, 4, 'Shoe Rack with Shutters with Laminate Finish (Without Seating Space)', 'L/s', '1'),
(83, 5, 'TV unit with drawers without Panelling', 'L/s', 'As per site'),
(84, 5, '03 Seater + 02 Seater Sofa Set', 'No.', '1'),
(85, 5, 'Centre table Laminate Finish', 'No.', '1'),
(86, 5, 'Pop Ceiling', '1/s.', 'As per Site');

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `selection_id` text DEFAULT NULL,
  `specification` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `created_by`, `name`, `selection_id`, `specification`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 8, 'Ceiling', '3', 'POP as per design 3x3 CF G 8KG With Net', '-----', 1, '2024-02-20 23:44:53', '2024-02-20 23:59:20'),
(4, 8, 'Fabric For Curtain and Lining work', '4,5', 'Sorrow /  GM / F&F / Diving', 'Fibric Price witch is consider in this is Approx.', 1, '2024-02-20 23:58:04', '2024-02-20 23:58:04'),
(5, 8, 'category-2', '3,4,5', 'dsdfd', 'dfdfdf', 1, '2024-02-21 00:08:06', '2024-02-21 01:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_05_174148_create_admins_table', 1),
(6, '2023_10_05_175014_create_masters_table', 1),
(7, '2023_10_07_132645_create_leave_requests_table', 1),
(8, '2023_10_07_140039_create_leave_types_table', 1),
(9, '2023_10_07_140245_create_upload_files_table', 1),
(10, '2023_10_25_054302_create_permission_tables', 2),
(11, '2023_10_26_054453_create_department_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(11, 'App\\Models\\Role', 4),
(12, 'App\\Models\\Role', 4),
(13, 'App\\Models\\Role', 4),
(14, 'App\\Models\\Role', 4),
(15, 'App\\Models\\Role', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_by`, `customer_id`, `product_id`, `price`, `image_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 4, 6, 33, NULL, NULL, 1, '2024-02-07 05:45:14', '2024-02-07 06:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'admin', NULL, NULL),
(2, 'role-add', 'admin', NULL, NULL),
(3, 'role-edit', 'admin', NULL, NULL),
(4, 'role-delete', 'admin', NULL, NULL),
(5, 'role-show', 'admin', NULL, NULL),
(6, 'customer-list', 'admin', NULL, NULL),
(7, 'customer-add', 'admin', NULL, NULL),
(8, 'customer-edit', 'admin', NULL, NULL),
(9, 'customer-delete', 'admin', NULL, NULL),
(10, 'customer-show', 'admin', NULL, NULL),
(11, 'category-list', 'web', NULL, NULL),
(12, 'category-add', 'web', NULL, NULL),
(13, 'category-edit', 'web', NULL, NULL),
(14, 'category-delete', 'web', NULL, NULL),
(15, 'category-show', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions_old`
--

CREATE TABLE `permissions_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions_old`
--

INSERT INTO `permissions_old` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role', 'web', NULL, NULL),
(2, 'role-list', 'web', NULL, NULL),
(3, 'role-add', 'web', NULL, NULL),
(4, 'role-edit', 'web', NULL, NULL),
(5, 'role-delete', 'web', NULL, NULL),
(6, 'staff', 'web', NULL, NULL),
(7, 'staff-list', 'web', NULL, NULL),
(8, 'staff-add', 'web', NULL, NULL),
(9, 'staff-edit', 'web', NULL, NULL),
(10, 'staff-delete', 'web', NULL, NULL),
(11, 'raw-material-category', 'web', NULL, NULL),
(12, 'raw-material-category-list', 'web', NULL, NULL),
(13, 'raw-material-category-add', 'web', NULL, NULL),
(14, 'raw-material-category-edit', 'web', NULL, NULL),
(15, 'raw-material-category-delete', 'web', NULL, NULL),
(16, 'raw-material', 'web', NULL, NULL),
(17, 'raw-material-list', 'web', NULL, NULL),
(18, 'raw-material-add', 'web', NULL, NULL),
(19, 'raw-material-edit', 'web', NULL, NULL),
(20, 'raw-material-delete', 'web', NULL, NULL),
(21, 'machine', 'web', NULL, NULL),
(22, 'machine-list', 'web', NULL, NULL),
(23, 'machine-add', 'web', NULL, NULL),
(24, 'machine-edit', 'web', NULL, NULL),
(25, 'machine-delete', 'web', NULL, NULL),
(26, 'stock-alert', 'web', NULL, NULL),
(27, 'stock-alert-list', 'web', NULL, NULL),
(28, 'stock-alert-add', 'web', NULL, NULL),
(29, 'stock-alert-edit', 'web', NULL, NULL),
(30, 'stock-alert-delete', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `client_id` text DEFAULT NULL,
  `project_code` text DEFAULT NULL,
  `project_name` text DEFAULT NULL,
  `carpet_area` text DEFAULT NULL,
  `project_type` text DEFAULT NULL,
  `cost` text DEFAULT NULL,
  `addition_remark` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `client_id`, `project_code`, `project_name`, `carpet_area`, `project_type`, `cost`, `addition_remark`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(22, '10', 'PROJECT8855TTY', '4BHK Vasundhara 2', '1990 SQ.FT.', 'turn-key', '10,0000', NULL, 8, 1, '2024-02-29 05:14:47', '2024-02-29 05:14:47'),
(23, '10', 'PROJECT8855TTY', '4BHK Vasundhara 2', '1990 SQ.FT.', 'turn-key', '10,0000', 'xzzxczxcxzc zxfdsfdsf  sdfgsjdfjsdfsdf v bcbc bchb xzjcbzxc kjzxbc zxjcbzxic ohzxdkhs rioyesriyewior7ewv rthjj ucidrt livu ce.jillvehrtjh vkmert', 8, 1, '2024-02-29 05:46:16', '2024-02-29 05:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `quatation_heading`
--

CREATE TABLE `quatation_heading` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `quatation_id` text DEFAULT NULL,
  `heading_id` text DEFAULT NULL,
  `heading_instruction` text DEFAULT NULL,
  `heading_unit` text DEFAULT NULL,
  `heading_qty` text DEFAULT NULL,
  `heading_other` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quatation_heading`
--

INSERT INTO `quatation_heading` (`id`, `created_by`, `quatation_id`, `heading_id`, `heading_instruction`, `heading_unit`, `heading_qty`, `heading_other`, `created_at`, `updated_at`) VALUES
(39, 8, '15', '4', 'Decorative Laminate over Main Door Lock Change Door Magnet. Using some door jamb as given by builder or contractor)(Panelling outside of Grill door is Not included in this Package)', 'No', '1', NULL, '2024-02-29 06:51:05', '2024-02-29 06:51:05'),
(40, 8, '15', '4', 'Safety Door New Flush Door with decorative Laminate both side with MS Grill + 01 New Door Lock', 'No', '1', NULL, '2024-02-29 06:51:05', '2024-02-29 06:51:05'),
(41, 8, '15', '4', 'Shoe Rack with Shutters with Laminate Finish (Without Seating Space)', 'L/s', '1', NULL, '2024-02-29 06:51:05', '2024-02-29 06:51:05'),
(42, 8, '17', '5', 'TV unit with drawers without Panelling', 'L/s', 'As per site', NULL, '2024-02-29 09:24:26', '2024-02-29 09:24:26'),
(43, 8, '17', '5', '03 Seater + 02 Seater Sofa Set', 'No.', '1', NULL, '2024-02-29 09:24:26', '2024-02-29 09:24:26'),
(44, 8, '17', '5', 'Centre table Laminate Finish', 'No.', '1', NULL, '2024-02-29 09:24:26', '2024-02-29 09:24:26'),
(45, 8, '17', '5', 'Pop Ceiling', '1/s.', 'As per Site', NULL, '2024-02-29 09:24:26', '2024-02-29 09:24:26'),
(46, 8, '18', '5', 'TV unit with drawers without Panelling', 'L/s', 'As per site', NULL, '2024-02-29 09:24:29', '2024-02-29 09:24:29'),
(47, 8, '18', '5', '03 Seater + 02 Seater Sofa Set', 'No.', '1', NULL, '2024-02-29 09:24:29', '2024-02-29 09:24:29'),
(48, 8, '18', '5', 'Centre table Laminate Finish', 'No.', '1', NULL, '2024-02-29 09:24:29', '2024-02-29 09:24:29'),
(49, 8, '18', '5', 'Pop Ceiling', '1/s.', 'As per Site', NULL, '2024-02-29 09:24:29', '2024-02-29 09:24:29'),
(50, 8, '19', '4', 'Decorative Laminate over Main Door Lock Change Door Magnet. Using some door jamb as given by builder or contractor)(Panelling outside of Grill door is Not included in this Package)', 'No', '1', NULL, '2024-02-29 09:33:19', '2024-02-29 09:33:19'),
(51, 8, '19', '4', 'Safety Door New Flush Door with decorative Laminate both side with MS Grill + 01 New Door Lock', 'No', '1', NULL, '2024-02-29 09:33:19', '2024-02-29 09:33:19'),
(52, 8, '19', '4', 'Shoe Rack with Shutters with Laminate Finish (Without Seating Space)', 'L/s', '1', NULL, '2024-02-29 09:33:19', '2024-02-29 09:33:19'),
(53, 8, '20', '4', 'Decorative Laminate over Main Door Lock Change Door Magnet. Using some door jamb as given by builder or contractor)(Panelling outside of Grill door is Not included in this Package)', 'No', '1', NULL, '2024-02-29 09:34:31', '2024-02-29 09:34:31'),
(54, 8, '20', '4', 'Safety Door New Flush Door with decorative Laminate both side with MS Grill + 01 New Door Lock', 'No', '1', NULL, '2024-02-29 09:34:31', '2024-02-29 09:34:31'),
(55, 8, '20', '4', 'Shoe Rack with Shutters with Laminate Finish (Without Seating Space)', 'L/s', '1', NULL, '2024-02-29 09:34:31', '2024-02-29 09:34:31'),
(56, 8, '21', '5', 'TV unit with drawers without Panelling', 'L/s', 'As per site', NULL, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(57, 8, '21', '5', '03 Seater + 02 Seater Sofa Set', 'No.', '1', NULL, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(58, 8, '21', '5', 'Centre table Laminate Finish', 'No.', '1', NULL, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(59, 8, '21', '5', 'Pop Ceiling', '1/s.', 'As per Site', NULL, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(60, 8, '21', '4', 'Decorative Laminate over Main Door Lock Change Door Magnet. Using some door jamb as given by builder or contractor)(Panelling outside of Grill door is Not included in this Package)', 'No', '1', NULL, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(61, 8, '21', '4', 'Safety Door New Flush Door with decorative Laminate both side with MS Grill + 01 New Door Lock', 'No', '1', NULL, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(62, 8, '21', '4', 'Shoe Rack with Shutters with Laminate Finish (Without Seating Space)', 'L/s', '1', NULL, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(63, 8, '22', '4', 'Decorative Laminate over Main Door Lock Change Door Magnet. Using some door jamb as given by builder or contractor)(Panelling outside of Grill door is Not included in this Package)', 'No', '1', NULL, '2024-02-29 10:44:47', '2024-02-29 10:44:47'),
(64, 8, '22', '4', 'Safety Door New Flush Door with decorative Laminate both side with MS Grill + 01 New Door Lock', 'No', '1', NULL, '2024-02-29 10:44:47', '2024-02-29 10:44:47'),
(65, 8, '22', '4', 'Shoe Rack with Shutters with Laminate Finish (Without Seating Space)', 'L/s', '1', NULL, '2024-02-29 10:44:47', '2024-02-29 10:44:47'),
(66, 8, '23', '4', 'Decorative Laminate over Main Door Lock Change Door Magnet. Using some door jamb as given by builder or contractor)(Panelling outside of Grill door is Not included in this Package)', 'No', '1', NULL, '2024-02-29 11:16:16', '2024-02-29 11:16:16'),
(67, 8, '23', '4', 'Safety Door New Flush Door with decorative Laminate both side with MS Grill + 01 New Door Lock', 'No', '1', NULL, '2024-02-29 11:16:16', '2024-02-29 11:16:16'),
(68, 8, '23', '4', 'Shoe Rack with Shutters with Laminate Finish (Without Seating Space)', 'L/s', '1', NULL, '2024-02-29 11:16:16', '2024-02-29 11:16:16'),
(69, 8, '24', '5', 'TV unit with drawers without Panelling', 'L/s', 'As per site', NULL, '2024-03-05 05:54:48', '2024-03-05 05:54:48'),
(70, 8, '24', '5', '03 Seater + 02 Seater Sofa Set', 'No.', '1', NULL, '2024-03-05 05:54:48', '2024-03-05 05:54:48'),
(71, 8, '24', '5', 'Centre table Laminate Finish', 'No.', '1', NULL, '2024-03-05 05:54:48', '2024-03-05 05:54:48'),
(72, 8, '24', '5', 'Pop Ceiling', '1/s.', 'As per Site', NULL, '2024-03-05 05:54:48', '2024-03-05 05:54:48'),
(73, 8, '24', '4', 'Decorative Laminate over Main Door Lock Change Door Magnet. Using some door jamb as given by builder or contractor)(Panelling outside of Grill door is Not included in this Package)', 'No', '1', NULL, '2024-03-05 05:54:48', '2024-03-05 05:54:48'),
(74, 8, '24', '4', 'Safety Door New Flush Door with decorative Laminate both side with MS Grill + 01 New Door Lock', 'No', '1', NULL, '2024-03-05 05:54:48', '2024-03-05 05:54:48'),
(75, 8, '24', '4', 'Shoe Rack with Shutters with Laminate Finish (Without Seating Space)', 'L/s', '1', NULL, '2024-03-05 05:54:48', '2024-03-05 05:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `quatation_material`
--

CREATE TABLE `quatation_material` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `quatation_id` text DEFAULT NULL,
  `material_name` text DEFAULT NULL,
  `selection_id` text DEFAULT NULL,
  `material_specification` text DEFAULT NULL,
  `material_description` text DEFAULT NULL,
  `material_other` text DEFAULT NULL,
  `material_finish` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quatation_material`
--

INSERT INTO `quatation_material` (`id`, `created_by`, `quatation_id`, `material_name`, `selection_id`, `material_specification`, `material_description`, `material_other`, `material_finish`, `status`, `created_at`, `updated_at`) VALUES
(9, 8, '3', 'Fabric For Curtain and Lining work', NULL, 'Sorrow /  GM / F&F / Diving', 'Fibric Price witch is consider in this is Approx.', NULL, NULL, 1, '2024-02-29 06:32:11', '2024-02-29 06:32:11'),
(10, 8, '15', 'Fabric For Curtain and Lining work', '4', 'Sorrow /  GM / F&F / Diving', 'Fibric Price witch is consider in this is Approx.', NULL, NULL, 1, '2024-02-29 06:51:05', '2024-02-29 06:51:05'),
(11, 8, '20', 'Fabric For Curtain and Lining work', NULL, 'Sorrow /  GM / F&F / Diving', 'Fibric Price witch is consider in this is Approx.', NULL, NULL, 1, '2024-02-29 09:34:31', '2024-02-29 09:34:31'),
(12, 8, '21', 'Fabric For Curtain and Lining work', NULL, 'Sorrow /  GM / F&F / Diving', 'Fibric Price witch is consider in this is Approx.', NULL, NULL, 1, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(13, 8, '21', 'Ceiling', NULL, 'POP as per design 3x3 CF G 8KG With Net', '-----', NULL, NULL, 1, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(14, 8, '21', 'category-2', NULL, 'dsdfd', 'dfdfdf', NULL, NULL, 1, '2024-02-29 10:39:28', '2024-02-29 10:39:28'),
(15, 8, '22', 'Ceiling', NULL, 'POP as per design 3x3 CF G 8KG With Net', '-----', NULL, NULL, 1, '2024-02-29 10:44:47', '2024-02-29 10:44:47'),
(16, 8, '23', 'Fabric For Curtain and Lining work', NULL, 'Sorrow /  GM / F&F / Diving', 'Fibric Price witch is consider in this is Approx.', NULL, NULL, 1, '2024-02-29 11:16:16', '2024-02-29 11:16:16'),
(17, 8, '23', 'Ceiling', NULL, 'POP as per design 3x3 CF G 8KG With Net', '-----', NULL, NULL, 1, '2024-02-29 11:16:17', '2024-02-29 11:16:17'),
(18, 8, '24', 'Fabric For Curtain and Lining work', NULL, 'Sorrow /  GM / F&F / Diving', 'Fibric Price witch is consider in this is Approx.', NULL, NULL, 1, '2024-03-05 05:54:48', '2024-03-05 05:54:48'),
(19, 8, '24', 'Ceiling', NULL, 'POP as per design 3x3 CF G 8KG With Net', '-----', NULL, NULL, 1, '2024-03-05 05:54:48', '2024-03-05 05:54:48'),
(20, 8, '24', 'category-2', NULL, 'dsdfd', 'dfdfdf', NULL, NULL, 1, '2024-03-05 05:54:48', '2024-03-05 05:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_by`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Super Admin', 'admin', '2024-01-09 12:34:52', '2024-01-09 12:34:52'),
(2, NULL, 'Staff', 'admin', '2024-01-09 12:43:05', '2024-01-09 12:43:05'),
(4, NULL, 'Pos-Admin', 'web', '2024-01-14 11:41:25', '2024-01-14 11:42:12');

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
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 2),
(11, 4),
(12, 4),
(13, 4),
(14, 4),
(15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `selectiodones`
--

CREATE TABLE `selectiodones` (
  `id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selectiodones`
--

INSERT INTO `selectiodones` (`id`, `created_by`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, 8, 'Execution Team', 1, '2024-02-20 07:04:31', '2024-02-26 00:05:29'),
(4, 8, 'Designer Team', 1, '2024-02-20 07:05:00', '2024-02-20 07:05:00'),
(5, 8, 'Client', 1, '2024-02-20 07:05:14', '2024-02-20 07:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_id` int(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `code`, `description`, `image_id`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sub cat 1', 1, 'cat34', 'testdss', 24, 1, 1, '2024-01-15 23:34:19', '2024-01-17 12:08:58'),
(2, 'sub cat 2', 2, 'cat34', 'testdss', 24, 1, 1, '2024-01-15 23:34:19', '2024-01-17 12:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `upload_images`
--

CREATE TABLE `upload_images` (
  `id` int(11) NOT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `upload_images`
--

INSERT INTO `upload_images` (`id`, `file`, `created_at`, `updated_at`) VALUES
(1, 'upload/staff-image/1704825383_Screenshot (2).png', '2024-01-09 13:06:23', '2024-01-09 13:06:23'),
(2, 'upload/staff-image/1704825471_Screenshot (2).png', '2024-01-09 13:07:51', '2024-01-09 13:07:51'),
(3, 'upload/staff-image/1704849736_Screenshot (2).png', '2024-01-09 19:52:16', '2024-01-09 19:52:16'),
(4, 'upload/staff-image/1704849742_Screenshot 2023-03-03 122643.png', '2024-01-09 19:52:22', '2024-01-09 19:52:22'),
(5, 'upload/staff-image/1704849826_Screenshot_1693849834.png', '2024-01-09 19:53:46', '2024-01-09 19:53:46'),
(6, 'upload/staff-image/1704850025_Screenshot (2).png', '2024-01-09 19:57:05', '2024-01-09 19:57:05'),
(7, 'upload/staff-image/1704850074_Screenshot (2).png', '2024-01-09 19:57:54', '2024-01-09 19:57:54'),
(8, 'upload/staff-image/1704850112_Screenshot (2).png', '2024-01-09 19:58:32', '2024-01-09 19:58:32'),
(9, 'upload/staff-image/1704850124_Screenshot (2).png', '2024-01-09 19:58:44', '2024-01-09 19:58:44'),
(10, 'upload/staff-image/1704850178_Screenshot (2).png', '2024-01-09 19:59:38', '2024-01-09 19:59:38'),
(11, 'upload/staff-image/1704850194_Screenshot (1).png', '2024-01-09 19:59:54', '2024-01-09 19:59:54'),
(12, 'upload/staff-image/1704852352_Screenshot (1).png', '2024-01-09 20:35:52', '2024-01-09 20:35:52'),
(13, 'upload/staff-image/1704853211_download (1).jpeg', '2024-01-09 20:50:11', '2024-01-09 20:50:11'),
(14, 'upload/staff-image/1705074705_download.jpeg', '2024-01-12 10:21:45', '2024-01-12 10:21:45'),
(15, 'upload/staff-image/1705074715_download.jpeg', '2024-01-12 10:21:55', '2024-01-12 10:21:55'),
(16, 'upload/staff-image/1705080770_download.jpeg', '2024-01-12 12:02:50', '2024-01-12 12:02:50'),
(17, 'upload/staff-image/1705080889_download (1).jpeg', '2024-01-12 12:04:49', '2024-01-12 12:04:49'),
(18, 'upload/staff-image/1705080943_download (1).jpeg', '2024-01-12 12:05:43', '2024-01-12 12:05:43'),
(19, 'upload/staff-image/1705081027_download.jpeg', '2024-01-12 12:07:07', '2024-01-12 12:07:07'),
(20, 'upload/category-image/1705374566_download.jpeg', '2024-01-15 21:39:26', '2024-01-15 21:39:26'),
(21, 'upload/brand-image/1705425041_download (1).jpeg', '2024-01-16 11:40:41', '2024-01-16 11:40:41'),
(22, 'upload/brand-image/1705425703_download.jpeg', '2024-01-16 11:51:43', '2024-01-16 11:51:43'),
(23, 'upload/sub-category-image/1705512247_download.jpeg', '2024-01-17 11:54:07', '2024-01-17 11:54:07'),
(24, 'upload/sub-category-image/1705512427_download (1).jpeg', '2024-01-17 11:57:07', '2024-01-17 11:57:07'),
(25, 'upload/pos-image/1705659728_download (1).jpeg', '2024-01-19 04:52:08', '2024-01-19 04:52:08'),
(26, 'upload/customer-image/1705660558_download (1).jpeg', '2024-01-19 05:05:58', '2024-01-19 05:05:58'),
(27, 'upload/customer-image/1705660732_download (1).jpeg', '2024-01-19 05:08:52', '2024-01-19 05:08:52'),
(28, 'upload/customer-image/1705661212_download (1).jpeg', '2024-01-19 05:16:52', '2024-01-19 05:16:52'),
(29, 'upload/customer-image/1705661715_download.jpeg', '2024-01-19 05:25:15', '2024-01-19 05:25:15'),
(30, 'upload/customer-image/1705662634_download (1).jpeg', '2024-01-19 05:40:34', '2024-01-19 05:40:34'),
(31, 'upload/supplier-image/1705662975_download (1).jpeg', '2024-01-19 05:46:15', '2024-01-19 05:46:15'),
(32, 'upload/supplier-image/1705662980_download.jpeg', '2024-01-19 05:46:20', '2024-01-19 05:46:20'),
(33, 'upload/brand-image/1705777891_download (1).jpeg', '2024-01-20 13:41:31', '2024-01-20 13:41:31'),
(34, 'upload/pos-image/1705810337_images.jpeg', '2024-01-20 22:42:17', '2024-01-20 22:42:17'),
(35, 'upload/category-image/1705889580_download (3).jpeg', '2024-01-21 20:43:00', '2024-01-21 20:43:00'),
(36, 'upload/product-image/1705890467_download (2).jpeg', '2024-01-21 20:57:47', '2024-01-21 20:57:47'),
(37, 'upload/product-image/1705890486_download (3).jpeg', '2024-01-21 20:58:06', '2024-01-21 20:58:06'),
(38, 'upload/product-image/1705890536_download (2).jpeg', '2024-01-21 20:58:56', '2024-01-21 20:58:56'),
(39, 'upload/product-image/1705890778_download (3).jpeg', '2024-01-21 21:02:58', '2024-01-21 21:02:58'),
(40, 'upload/product-image/1705890965_download (2).jpeg', '2024-01-21 21:06:05', '2024-01-21 21:06:05'),
(41, 'upload/product-image/1705891157_download (3).jpeg', '2024-01-21 21:09:17', '2024-01-21 21:09:17'),
(42, 'upload/product-image/1705891336_images.jpeg', '2024-01-21 21:12:16', '2024-01-21 21:12:16'),
(43, 'upload/product-image/1705891798_download (3).jpeg', '2024-01-21 21:19:58', '2024-01-21 21:19:58'),
(44, 'upload/product-image/1705905781_download (2).jpeg', '2024-01-22 01:13:01', '2024-01-22 01:13:01'),
(45, 'upload/product-image/1706183368_Water Proof ITC.jpg', '2024-01-25 06:19:28', '2024-01-25 06:19:28'),
(46, 'upload/product-image/1706183455_Water Proof ITC.jpg', '2024-01-25 06:20:55', '2024-01-25 06:20:55'),
(47, 'upload/staff-image/1706357700_Water Proof ITC.jpg', '2024-01-27 06:45:00', '2024-01-27 06:45:00'),
(48, 'upload/staff-image/1706413336_variety logo.png', '2024-01-27 22:12:16', '2024-01-27 22:12:16'),
(49, 'upload/product-image/1706414956_Water Proof ITC.jpg', '2024-01-27 22:39:16', '2024-01-27 22:39:16'),
(50, 'upload/staff-image/1706417062_Water ITE.jpg', '2024-01-27 23:14:22', '2024-01-27 23:14:22'),
(51, 'upload/staff-image/1706437255_Water Proof ITC.jpg', '2024-01-28 04:50:55', '2024-01-28 04:50:55'),
(52, 'upload/category-image/1706528820_Water ITE.jpg', '2024-01-29 06:17:00', '2024-01-29 06:17:00'),
(53, 'upload/brand-image/1706528836_woman-doing-speech-therapy-with-little-blonde-boy.jpg', '2024-01-29 06:17:16', '2024-01-29 06:17:16'),
(54, 'upload/sub-category-image/1706528860_variety logo.png', '2024-01-29 06:17:40', '2024-01-29 06:17:40'),
(55, 'upload/product-image/1706528893_woman-doing-speech-therapy-with-little-blonde-boy.jpg', '2024-01-29 06:18:13', '2024-01-29 06:18:13'),
(56, 'upload/staff-image/1707126742_Screenshot 2023-01-21 112137.png', '2024-02-05 04:22:22', '2024-02-05 04:22:22'),
(57, 'upload/staff-image/1707127907_Screenshot 2023-01-21 112137.png', '2024-02-05 04:41:47', '2024-02-05 04:41:47'),
(58, 'upload/staff-image/1707128176_Screenshot 2023-01-21 112137.png', '2024-02-05 04:46:16', '2024-02-05 04:46:16'),
(59, 'upload/staff-image/1707128659_Screenshot 2023-01-21 112137.png', '2024-02-05 04:54:19', '2024-02-05 04:54:19'),
(60, 'upload/staff-image/1707128969_Screenshot 2023-01-21 112137.png', '2024-02-05 04:59:29', '2024-02-05 04:59:29'),
(61, 'upload/staff-image/1707131213_Screenshot 2023-01-21 112137.png', '2024-02-05 05:36:53', '2024-02-05 05:36:53'),
(62, 'upload/staff-image/1708152087_123.png', '2024-02-17 01:11:27', '2024-02-17 01:11:27'),
(63, 'upload/staff-image/1708152175_123.png', '2024-02-17 01:12:55', '2024-02-17 01:12:55'),
(64, 'upload/product-image/1708414106_Our vision.png', '2024-02-20 01:58:26', '2024-02-20 01:58:26'),
(65, 'upload/staff-image/1708419590_Our vision.png', '2024-02-20 03:29:50', '2024-02-20 03:29:50'),
(66, 'upload/staff-image/1708419704_favicon.png', '2024-02-20 03:31:44', '2024-02-20 03:31:44'),
(67, 'upload/staff-image/1708419849_Our vision.png', '2024-02-20 03:34:09', '2024-02-20 03:34:09'),
(68, 'upload/staff-image/1708422202_qb-fotor-20230727182414.png', '2024-02-20 04:13:22', '2024-02-20 04:13:22'),
(69, 'upload/product-image/1708423136_Screenshot 2024-02-20 152820.png', '2024-02-20 04:28:56', '2024-02-20 04:28:56'),
(70, 'upload/product-image/1708425494_Screenshot 2024-02-20 152742.png', '2024-02-20 05:08:14', '2024-02-20 05:08:14'),
(71, 'upload/staff-image/1708582927_profile-img.jpg', '2024-02-22 00:52:07', '2024-02-22 00:52:07'),
(72, 'upload/staff-image/1709277556_Vishwakarma (1).png', '2024-03-01 01:49:16', '2024-03-01 01:49:16'),
(73, 'upload/staff-image/1709535680_168248018864489c3cd4c72.jpg', '2024-03-04 01:31:20', '2024-03-04 01:31:20'),
(74, 'upload/staff-image/1709536164_favicon-16x16.png', '2024-03-04 01:39:24', '2024-03-04 01:39:24'),
(75, 'upload/staff-image/1709536211_threads-app-icon.png', '2024-03-04 01:40:11', '2024-03-04 01:40:11'),
(76, 'upload/staff-image/1709536452_Vishwakarma (1).png', '2024-03-04 01:44:12', '2024-03-04 01:44:12'),
(77, 'upload/staff-image/1709543085_favicon-16x16.png', '2024-03-04 03:34:45', '2024-03-04 03:34:45'),
(78, 'upload/staff-image/1709641861_Asset 2@3x-8.png', '2024-03-05 07:01:01', '2024-03-05 07:01:01'),
(79, 'upload/staff-image/1709702775_Vishwakarma (1).png', '2024-03-05 23:56:15', '2024-03-05 23:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_name` varchar(225) DEFAULT NULL,
  `image_id` int(50) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `is_login` int(11) NOT NULL DEFAULT 0 COMMENT 'admin=0,user=1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_by`, `full_name`, `email`, `user_name`, `image_id`, `company_name`, `phone`, `status`, `is_login`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, NULL, 'Vishwakarma', 'vishwakarma@gmail.com', NULL, 77, 'Vishwakarma', '9099091890', NULL, 0, NULL, '$2y$12$Lniwc3auH6UY0rNAHLHZquXgzUG4wz3V/Dj5YtXLCIJRsjkmf6d1i', NULL, '2024-01-28 04:50:55', '2024-03-04 03:34:46'),
(9, NULL, 'ddfdf', 'test@gmail.com', NULL, 59, 'demo', '9898989898', 1, 0, NULL, '$2y$10$2t6U4A2S6OOeBIyUEoFTMeZwDgjKvuR3h1GiCuf04a1jsOV0hR5RW', NULL, '2024-02-05 04:54:23', '2024-02-05 04:54:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `heading_items`
--
ALTER TABLE `heading_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masters_email_unique` (`email`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions_old`
--
ALTER TABLE `permissions_old`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quatation_heading`
--
ALTER TABLE `quatation_heading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quatation_material`
--
ALTER TABLE `quatation_material`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `selectiodones`
--
ALTER TABLE `selectiodones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_images`
--
ALTER TABLE `upload_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heading_items`
--
ALTER TABLE `heading_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions_old`
--
ALTER TABLE `permissions_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `quatation_heading`
--
ALTER TABLE `quatation_heading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `quatation_material`
--
ALTER TABLE `quatation_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `selectiodones`
--
ALTER TABLE `selectiodones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_images`
--
ALTER TABLE `upload_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions_old` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions_old` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
