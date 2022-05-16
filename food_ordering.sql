-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 07:04 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handicrafts_auction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(19,2) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`id`, `user_id`, `price`, `product_id`, `description`, `created_at`, `updated_at`) VALUES
(42, 8, 20.00, 117, 'i think it doesnt coast more than 20$', '2022-01-07 05:07:55', '2022-01-07 05:24:52'),
(43, 20, 25.00, 117, 'i will get it', '2022-03-04 17:02:40', '2022-03-04 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `bidupdates`
--

CREATE TABLE `bidupdates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double(19,2) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bid_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bidupdates`
--

INSERT INTO `bidupdates` (`id`, `price`, `description`, `bid_id`, `created_at`, `updated_at`) VALUES
(23, 12.00, 'this wool is usefull', 42, '2022-01-07 05:07:55', '2022-01-07 05:07:55'),
(24, 20.00, 'i think it doesnt coast more than 20$', 42, '2022-01-07 05:24:52', '2022-01-07 05:24:52'),
(25, 25.00, 'i will get it', 43, '2022-03-04 17:02:40', '2022-03-04 17:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Salade', 'This category contains foods that belong to any type of handmad salads', NULL, NULL),
(2, 'Soup', 'This category contains foods that belong to any type of handmad Soup', NULL, NULL),
(3, 'Sweets', 'This category contains foods that belong to any type of handmad Sweets', NULL, NULL),
(4, 'Sundae', 'This category contains foods that belong to any type of handmad Sundae', NULL, NULL),
(5, 'Pastries', 'This category contains foods that belong to any type of handmad pastries\n', NULL, NULL),
(6, 'FastFood', 'This category contains foods that belong to any type of handmad FastFood', NULL, NULL),
(7, 'TraditionalFood', 'This category contains foods that belong to any type of handmad TraditionalFood', NULL, NULL),
(19, 'Other', 'other types', NULL, NULL);

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(19, 'p4a.jpg', '/storage/uploads/p4a.jpg', 68, '2021-12-08 17:28:25', '2021-12-08 17:28:25'),
(20, 'p4b.jpg', '/storage/uploads/p4b.jpg', 68, '2021-12-08 17:28:25', '2021-12-08 17:28:25'),
(24, 'p61.jpg', '/storage/uploads/p61.jpg', 70, '2021-12-08 17:57:10', '2021-12-08 17:57:10'),
(25, 'p62.jpg', '/storage/uploads/p62.jpg', 70, '2021-12-08 17:57:10', '2021-12-08 17:57:10'),
(26, 'p63.jpg', '/storage/uploads/p63.jpg', 70, '2021-12-08 17:57:10', '2021-12-08 17:57:10'),
(124, 'p3a.jpg', '/storage/uploads/p3a.jpg', 67, '2021-12-28 07:44:33', '2021-12-28 07:44:33'),
(125, 'p3c.jpg', '/storage/uploads/p3c.jpg', 67, '2021-12-28 07:44:33', '2021-12-28 07:44:33'),
(134, 'p2a.jpg', '/storage/uploads/p2a.jpg', 117, '2022-01-07 05:04:44', '2022-01-07 05:04:44'),
(135, 'p2b.jpg', '/storage/uploads/p2b.jpg', 117, '2022-01-07 05:04:44', '2022-01-07 05:04:44');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_17_120332_create_orders_table', 1),
(6, '2021_10_17_120418_create_products_table', 1),
(7, '2021_10_17_120429_create_bids_table', 1),
(8, '2021_10_17_120447_create_categories_table', 1),
(9, '2021_10_17_120506_create_images_table', 1),
(10, '2021_11_17_171027_create_products_table', 2),
(11, '2021_11_17_171323_create_bids_table', 3),
(12, '2021_11_17_171427_create_orders_table', 4),
(13, '2021_11_17_171831_create_images_table', 4),
(14, '2021_11_17_174858_create_roles_table', 5),
(15, '2021_11_17_174924_create_permissions_table', 5),
(16, '2021_11_17_175303_create_role_has_permissions_table', 6),
(17, '2021_11_17_180219_add_role_id_to_users_table', 7),
(18, '2021_11_18_161604_add_user_id_to_products_table', 8),
(19, '2021_11_18_181247_add_is-delevered_to_orders_table', 9),
(20, '2021_11_17_175303_create_permission_role_table', 10),
(21, '2021_11_19_192743_add_user_id_to_orders_table', 10),
(22, '2021_11_18_181247_add_is-ordered-by-auction_to_orders_table', 11),
(23, '2021_12_08_080636_create_images_table', 11),
(24, '2021_12_08_080636_create_bidUpdates_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(19,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is-ordered-by-auction` tinyint(4) DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('laraveldemo2018@gmail.com', '$2y$10$EwXpHFwaSwiUu9PObP9creXsF9MbiK85Zll2tn9ZOZH1POZflYRMO', '2021-11-17 17:04:07'),
('entesar.2000banna@gmail.com', '$2y$10$aV0oD4zYcHdwT8zyH3QQl.8DnJ1OlolJIR8JphIkxyjiWln2Sr1Je', '2022-03-05 04:54:02');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(3) UNSIGNED DEFAULT NULL,
  `orderNowPrice` double(19,2) NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `start_auction` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_auction` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `category_id`, `orderNowPrice`, `is_delete`, `start_auction`, `end_auction`, `created_at`, `updated_at`, `user_id`) VALUES
(67, 'Fuyit Natural Wood Slices', 'Natural & Original: Wood Circles are made of natural wood with barks, have a rustic beauty and are in good shape. Some wood bark may fall partially from the slices.', 5, 80.00, 0, '2021-12-08 17:22:56', '2024-07-28 06:49:55', '2021-12-08 17:22:56', '2022-03-04 07:50:17', 4),
(68, 'Best Kit With No Tools Needed', 'Whether you are a jewelry making aficionado or just wanting to start a new hobby, a jewelry making kit is a must-have. These kits come will all the supplies you need to make earrings, necklaces, bracelets, anklets, and more, while also coming in handy when fast, timely repairs are needed.Whether you are a jewelry making aficionado or just wanting to start a new hobby, a jewelry making kit is a must-have. These kits come will all the supplies you need to make earrings, necklaces, bracelets, anklets, and more, while also coming in handy when fast, timely repairs are needed.', 6, 99.99, 0, '2021-12-08 17:28:25', '2024-04-27 16:28:25', '2021-12-08 17:28:25', '2022-01-06 05:56:44', 4),
(70, 'LifeAround2Angels Bath Bombs Gift Set 12 USA made Fizzies', '12 uniquely handcrafted bath bombs. Functional and relaxing. Great Mothers day gifts.Truly made in California, USA freshly with premium USA natural ingredients - fizzes with colors, will not stain your tub! Therapeutic and Moisturizing bath bombs, formulated for Normal/Dry skin Developed and Created by us, a bath bomb company with passion Bath Bomb Individually Wrapped. Perfect gift ideas for party favors and wedding. This bath bomb gift sets is on many\'s wish list. Perfect for Fathers Day gifts, birthday gift, gifts for her, spa/bath gifts, for the special one, perfect gifts for mom, wife, girlfriend or women you love.', 2, 129.99, 0, '2021-12-08 17:57:10', '2024-03-30 06:24:10', '2021-12-08 17:57:10', '2022-01-06 02:44:53', 6),
(117, 'Wool Yarn', '1. Content: 100% Extraordinarily Luxurious Merino wool 2. Specification: 127yd / 116 m ( 1.76 oz / 50 g ), Needle Size: 4-8mm, 1 ball * 50g. 3. Excellent Sourcing: Merino wool is a material derived from Merino sheep and is known for its outstanding characteristics including its excellent softness, gloss and breathability. Merino wool yarn is softer, thinner and warmer than many others.', 4, 30.00, 0, '2022-01-07 05:04:44', '2025-03-01 05:21:40', '2022-01-07 05:04:44', '2022-05-11 10:01:07', 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Craftsman', NULL, NULL),
(3, 'Buyer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `is_delete` tinyint(1) DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '/storage/uploads/n0_image.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `address`, `mobile`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `role_id`, `is_delete`, `image`) VALUES
(1, 'admin', 'admin', 'admin2022', 'laraveldemo2018@gmail.com', '$2y$10$l9icgrL0l84VOJDsLgRde.ZdHUMBRjr5A.eVNLDrPPH62NuSOBkV2', 'Gaza ElRemal Street', '0592684956', NULL, 'UILc1rDOWygrG5zdSPQRoOgXhvD1TlIexJPJlXHqf36x0cuAkBnIujFtQluT', NULL, '2021-11-21 09:58:20', 1, 0, '/storage/uploads/n0_image.PNG'),
(4, 'entesar', 'elbanna', 'entesar2000', 'entesar.2000banna@gmail.com', '$2y$10$rNSVfHwtQ9JOvmlRnEafj.iW0bSjiSk8/1/sSJyu/9QJY1YjLxe2G', 'elreemal', '1234567898', NULL, 'T5lgmkUXTKRS8L93FvucTfoJ6Iz7RwnST0f1wClbiTm71h0jOOdSn3em1jbf', '2021-11-18 06:35:38', '2022-01-04 07:43:52', 2, 0, '/storage/uploads/user2.png'),
(6, 'sara', 'elbanna', 'sara2011', 'sara.2000banna@gmail.com', '$2y$10$eP6vqOob50mAhongIlR3kenbsujQSbRUq.LqjzkzBHgzM0zZyN4Di', 'remal', '8765432876', NULL, NULL, '2021-11-18 06:56:22', '2022-01-06 19:58:18', 2, 0, '/storage/uploads/n0_image.PNG'),
(8, 'malak', 'elbanna', 'malak2000', 'hsoubcontrolpanel@gmail.com', '$2y$10$Y4a2qwXBGW7juivdRlFbFe2qa9cvb93FwclB7cPx6586RftXFa4IW', 'el remal', '9999999999', NULL, NULL, '2021-11-19 17:38:22', '2022-01-04 07:52:34', 3, 0, '/storage/uploads/user.jpg'),
(20, 'rawand', 'elbanna', 'rawand2000', 'rawand.2000banna@gmail.com', '$2y$10$NRUmkYygsvM/ygguK0DX1uzQP7NVV1FFP6oq01t5yFwcAE7SFNLGq', 'elremal', '1234567895', NULL, NULL, '2021-12-28 04:56:28', '2021-12-28 04:56:28', 3, 0, '/storage/uploads/n0_image.PNG'),
(21, 'kareman', 'banna', 'koko', 'koko@gmail.com', '$2y$10$iYAzerMKLMLDVIOh4DDREOXwvAVitq9zAMZHKRg1JZVaj3dREHvkO', 'beside taj mall', '1234567893', NULL, NULL, '2022-01-03 17:36:51', '2022-01-03 17:39:06', 2, 1, '/storage/uploads/n0_image.PNG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bids_user_id_foreign` (`user_id`),
  ADD KEY `bids_product_id_foreign` (`product_id`);

--
-- Indexes for table `bidupdates`
--
ALTER TABLE `bidupdates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bidupdates_bid_id_foreign` (`bid_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `bidupdates`
--
ALTER TABLE `bidupdates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bids`
--
ALTER TABLE `bids`
  ADD CONSTRAINT `bids_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bids_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bidupdates`
--
ALTER TABLE `bidupdates`
  ADD CONSTRAINT `bidupdates_bid_id_foreign` FOREIGN KEY (`bid_id`) REFERENCES `bids` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
