-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2025 at 11:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('5106149228f4ac3e47c59765f4800d0f', 'i:1;', 1741516185),
('5106149228f4ac3e47c59765f4800d0f:timer', 'i:1741516185;', 1741516185),
('9c00c1a05c03cd4e525e077d097eb4c8', 'i:1;', 1741516420),
('9c00c1a05c03cd4e525e077d097eb4c8:timer', 'i:1741516420;', 1741516420);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(10, 'GIN', '2024-11-20 16:18:41', '2024-11-20 16:18:41'),
(11, 'Whisky', '2024-11-20 16:18:49', '2024-11-20 16:18:49'),
(12, 'vodka', '2024-11-20 16:18:55', '2024-11-20 16:18:55'),
(13, 'tequila', '2024-11-20 16:19:01', '2024-11-20 16:19:01'),
(14, 'Wine', '2024-11-20 16:19:07', '2024-11-20 16:19:07'),
(15, 'Beer', '2024-11-20 16:19:13', '2024-11-20 16:19:13'),
(16, 'Spirits', '2024-11-21 11:37:49', '2024-11-21 11:37:49');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_31_154208_add_two_factor_columns_to_users_table', 1),
(5, '2024_10_31_154243_create_personal_access_tokens_table', 1),
(6, '2024_11_04_025902_create_categories_table', 2),
(7, '2024_11_04_175314_create_products_table', 3),
(8, '2024_11_08_203647_create_carts_table', 4),
(9, '2024_11_12_180037_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `delivery_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `user_id`, `product_id`, `product_title`, `product_price`, `quantity`, `image`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(14, 'simon', NULL, NULL, '1', '7', 'Gilbeys 750ml', '4500', '3', '1732130418.jpg', 'Cash On Delivery', 'Delivered', '2024-11-21 11:25:51', '2024-11-21 11:38:48'),
(15, 'simon', NULL, NULL, '1', '8', 'Black Lable 1LTR', '4500', '1', '1732171942.jpg', 'Cash On Delivery', 'Delivered', '2024-11-21 11:25:51', '2024-11-22 02:43:21'),
(16, 'simon', NULL, NULL, '1', '9', 'Don Julio', '5000', '1', '1732172082.jpg', 'Paid', 'Delivered', '2024-11-21 11:29:38', '2024-11-22 02:43:24'),
(17, 'simon', NULL, NULL, '1', '8', 'Black Lable 1LTR', '4500', '1', '1732171942.jpg', 'Paid', 'Delivered', '2024-11-21 11:29:38', '2024-11-22 02:43:27'),
(18, 'simon', NULL, NULL, '1', '7', 'Gilbeys', '1500', '1', '1732130418.jpg', 'Cash On Delivery', 'Delivered', '2024-11-21 14:58:49', '2024-11-22 02:43:30'),
(19, 'simon', NULL, NULL, '1', '8', 'Black Lable 1LTR', '4500', '1', '1732171942.jpg', 'Cash On Delivery', 'Delivered', '2024-11-21 14:58:49', '2024-11-22 02:43:34'),
(20, 'simon', NULL, NULL, '1', '7', 'Gilbeys', '1500', '1', '1732130418.jpg', 'Paid', 'Delivered', '2024-11-21 15:00:36', '2024-11-22 02:43:38'),
(21, 'simon', NULL, NULL, '1', '8', 'Black Lable 1LTR', '4500', '1', '1732171942.jpg', 'Paid', 'Delivered', '2024-11-21 15:00:36', '2024-11-22 02:43:41'),
(22, 'simon', NULL, NULL, '1', '9', 'Don Julio', '5000', '1', '1732172082.jpg', 'Paid', 'Delivered', '2024-11-21 15:00:36', '2024-11-22 02:43:46'),
(23, 'simon', NULL, NULL, '1', '7', 'Gilbeys', '1500', '1', '1732130418.jpg', 'Paid', 'Delivered', '2024-11-21 15:03:04', '2024-11-22 02:43:51'),
(24, 'simon', NULL, NULL, '1', '8', 'Black Lable 1LTR', '4500', '1', '1732171942.jpg', 'Paid', 'Pending', '2024-11-21 15:04:25', '2024-11-21 15:04:25'),
(25, 'simon', NULL, NULL, '1', '7', 'Gilbeys', '4500', '3', '1732130418.jpg', 'Cash On Delivery', 'Pending', '2024-11-22 02:36:09', '2024-11-22 02:36:09'),
(26, 'simon', NULL, NULL, '1', '8', 'Black Lable 1LTR', '4500', '1', '1732171942.jpg', 'Cash On Delivery', 'Pending', '2024-11-22 02:36:09', '2024-11-22 02:36:09'),
(27, 'simon', NULL, NULL, '1', '8', 'Black Lable 1LTR', '4500', '1', '1732171942.jpg', 'Paid', 'Pending', '2024-11-22 02:37:45', '2024-11-22 02:37:45'),
(28, 'simon', NULL, NULL, '1', '9', 'Don Julio', '5000', '1', '1732172082.jpg', 'Paid', 'Pending', '2024-11-22 02:37:45', '2024-11-22 02:37:45'),
(29, 'simon', NULL, NULL, '1', '7', 'Gilbeys', '1500', '1', '1732130418.jpg', 'Cash On Delivery', 'Pending', '2024-11-22 12:33:36', '2024-11-22 12:33:36'),
(30, 'simon', NULL, NULL, '1', '9', 'Don Julio', '5000', '1', '1732172082.jpg', 'Cash On Delivery', 'Pending', '2024-11-22 12:33:36', '2024-11-22 12:33:36'),
(31, 'simon', NULL, NULL, '1', '9', 'Don Julio', '5000', '1', '1732172082.jpg', 'Cash On Delivery', 'Pending', '2024-11-22 12:33:36', '2024-11-22 12:33:36'),
(32, 'simon', NULL, NULL, '1', '9', 'Don Julio', '5000', '1', '1732172082.jpg', 'Paid', 'Pending', '2024-11-22 12:34:50', '2024-11-22 12:34:50'),
(33, 'simon', NULL, NULL, '1', '9', 'Don Julio', '5000', '1', '1732172082.jpg', 'Cash On Delivery', 'Pending', '2024-11-25 08:36:45', '2024-11-25 08:36:45'),
(34, 'simon', NULL, NULL, '1', '7', 'Gilbeys', '3000', '2', '1732130418.jpg', 'Cash On Delivery', 'Pending', '2024-11-25 08:36:45', '2024-11-25 08:36:45'),
(35, 'ray', NULL, NULL, '2', '7', 'Gilbeys 750ml', '6000', '4', '1732130418.jpg', 'Paid', 'Pending', '2024-11-25 08:41:27', '2024-11-25 08:41:27'),
(36, 'ray', NULL, NULL, '2', '8', 'Black Lable 1LTR', '4500', '1', '1732171942.jpg', 'Paid', 'Pending', '2024-11-25 08:41:27', '2024-11-25 08:41:27'),
(37, 'simon', NULL, NULL, '1', '9', 'Don Julio', '5000', '1', '1732172082.jpg', 'Paid', 'Delivered', '2025-03-09 07:31:30', '2025-03-09 07:36:08'),
(38, 'simon', NULL, NULL, '1', '7', 'Gilbeys', '1500', '1', '1732130418.jpg', 'Paid', 'Delivered', '2025-03-09 07:31:30', '2025-03-09 07:36:03'),
(39, 'simon', NULL, NULL, '1', '11', 'Sky vodka', '8000', '1', '1732254164.jpg', 'Paid', 'Delivered', '2025-03-09 07:31:30', '2025-03-09 07:35:53');

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `image`, `description`, `category`, `quantity`, `discount_price`, `created_at`, `updated_at`) VALUES
(7, 'Gilbeys', '1500', '1732130418.jpg', 'Best gin with a pinch of tonic', 'GIN', '10', NULL, '2024-11-20 16:20:18', '2024-11-21 14:23:06'),
(8, 'Black Lable 1LTR', '4500', '1732171942.jpg', 'Fine well aged whisky', 'Whisky', '30', NULL, '2024-11-21 03:52:22', '2024-11-21 03:52:22'),
(9, 'Don Julio', '5000', '1732172082.jpg', 'gin of gins', 'GIN', '5', NULL, '2024-11-21 03:54:42', '2024-11-21 03:54:42'),
(10, 'Corona', '300', '1732199736.jpg', 'beer of bbets', 'Beer', '10', NULL, '2024-11-21 11:35:36', '2024-11-21 11:59:19'),
(11, 'Sky vodka', '8000', '1732254164.jpg', 'The sky is the limit', 'vodka', '10', NULL, '2024-11-22 02:42:44', '2024-11-22 02:42:44'),
(12, 'Old Monk', '4000', '1732535804.jpg', 'old monk', 'Whisky', '10', NULL, '2024-11-25 08:56:44', '2024-11-25 08:56:44'),
(13, 'Tangurey 11', '2500', '1732535864.jpg', 'red lable', 'Whisky', '5', NULL, '2024-11-25 08:57:44', '2024-11-25 08:57:44'),
(14, '1234', '2500', '1732535916.jpg', '1234', 'vodka', '10', NULL, '2024-11-25 08:58:36', '2024-11-25 08:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Brh4kY2CJopUty9EQEvDHiCl4OpP68JyA5cwZeOK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1lXcjlwem8wTk1wcGxGV29RYnhFUVZoSzJwNmN6cWh4alRFNTBGTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1741516580);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `userType`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'simon', 'simon@gmail.com', '0', NULL, NULL, NULL, '$2y$12$fRrgrlqsonfaRNUgyxCqm.D/2d8w.8ssK7yqV9rJZmzs6rwqQhLVG', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-31 12:50:17', '2024-10-31 12:50:17'),
(2, 'ray', 'ray@gmail.com', '1', NULL, NULL, NULL, '$2y$12$70t2XtT4xliR/lV6oROTnu3ULVwag5WB.bjecnv/Ue5gKHRf0TWAy', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-31 14:14:01', '2024-10-31 14:14:01'),
(1232425, 'stano', 'stano@gmail.com', '1', '2547889977', NULL, NULL, '$2y$12$oe8XcAbKVubvwJQkOM.tGOBi4FAPKMWbyAWggozZfQpQ0HHFppiV6', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-21 03:50:03', '2024-11-21 03:50:03'),
(1232426, 'caro', 'caro@gmail.com', '0', NULL, NULL, NULL, '$2y$12$Fzlg3qp654iMXQ2zFXenX.m7kyzRHLe1Qtbq8iOaTr9tpC.8kv9Va', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-21 04:04:01', '2024-11-21 04:04:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1232427;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
