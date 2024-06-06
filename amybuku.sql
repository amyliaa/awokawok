-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 06:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amybuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `detiltransaksis`
--

CREATE TABLE `detiltransaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaksi_id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detiltransaksis`
--

INSERT INTO `detiltransaksis` (`id`, `transaksi_id`, `produk_id`, `qty`, `harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 86000, '2024-04-26 21:26:21', '2024-04-26 21:26:21'),
(2, 2, 1, 2, 86000, '2024-04-26 21:32:15', '2024-04-26 21:32:15'),
(4, 4, 1, 1, 86000, '2024-04-26 22:31:08', '2024-04-26 22:31:08'),
(5, 5, 1, 1, 86000, '2024-04-26 23:38:22', '2024-04-26 23:38:22'),
(6, 6, 1, 1, 86000, '2024-04-27 05:20:18', '2024-04-27 05:20:18'),
(7, 7, 1, 1, 86000, '2024-05-04 06:41:52', '2024-05-04 06:41:52'),
(8, 7, 2, 1, 23000, '2024-05-04 06:41:59', '2024-05-04 06:41:59'),
(9, 8, 1, 1, 86000, '2024-05-07 22:18:27', '2024-05-07 22:18:27'),
(10, 8, 2, 2, 23000, '2024-05-07 22:18:34', '2024-05-07 22:18:34'),
(11, 9, 1, 1, 86000, '2024-05-15 21:41:24', '2024-05-15 21:41:24'),
(13, 10, 4, 2, 58000, '2024-05-27 05:28:10', '2024-05-27 05:28:10'),
(14, 10, 3, 1, 68000, '2024-05-27 05:28:17', '2024-05-27 05:28:17'),
(15, 11, 5, 1, 62000, '2024-05-27 05:29:22', '2024-05-27 05:29:22'),
(16, 12, 4, 1, 58000, '2024-05-27 05:32:39', '2024-05-27 05:32:39'),
(17, 13, 1, 1, 86000, '2024-05-27 05:34:15', '2024-05-27 05:34:15'),
(18, 14, 2, 2, 23000, '2024-05-27 05:35:16', '2024-05-27 05:35:16'),
(19, 15, 3, 1, 68000, '2024-05-27 05:36:41', '2024-05-27 05:36:41'),
(20, 16, 3, 1, 68000, '2024-05-28 06:22:59', '2024-05-28 06:22:59'),
(21, 18, 3, 1, 68000, '2024-06-05 05:09:05', '2024-06-05 05:09:05'),
(22, 18, 4, 1, 58000, '2024-06-05 05:09:12', '2024-06-05 05:09:12');

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
(45, '2014_10_12_100000_create_password_resets_table', 1),
(46, '2019_08_19_000000_create_failed_jobs_table', 1),
(47, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(48, '2024_04_26_021358_create_users_table', 1),
(49, '2024_04_26_023951_create_pelanggans_table', 1),
(50, '2024_04_26_025511_create_produks_table', 1),
(51, '2024_04_26_030008_create_transaksis_table', 1),
(52, '2024_04_26_030330_create_detiltransaksis_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `nama`, `telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Celci Monica', '081234567891', 'Palang Merah', '2024-04-25 21:12:45', '2024-04-26 04:55:01'),
(2, 'Nishimiya', '082368425418', 'Shibuya', '2024-04-26 21:50:40', '2024-04-26 21:50:54'),
(3, 'Ahmadi Muslim', '086321436532', 'Paya Raja', '2024-05-12 07:41:15', '2024-05-12 07:41:40'),
(4, 'Zenin Maki', '081423675124', 'Shibuya', '2024-05-19 01:11:51', '2024-05-19 01:11:51'),
(5, 'Choso', '082368425317', 'Isekai', '2024-05-27 05:31:48', '2024-05-27 05:31:48'),
(6, 'Jihan Fahira', '081254729085', 'Terban', '2024-06-05 05:08:46', '2024-06-05 05:08:46');

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
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `nama`, `deskripsi`, `stok`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Novel (MARVELUNA)', 'Marvel si cokul.', 2, 86000, '2024-04-26 19:14:16', '2024-05-27 05:34:49'),
(2, 'Cerpen (Malin Kundang)', 'Anak durhaka.', 5, 23000, '2024-05-04 06:40:48', '2024-05-27 05:35:34'),
(3, 'Buku Edukasi (Matematika)', 'Kurikulum 13', 6, 68000, '2024-05-19 00:49:37', '2024-06-05 05:09:22'),
(4, 'Antologi (Kabut di Teras Senja)', 'Baca aja la ya.', 6, 58000, '2024-05-27 05:22:55', '2024-06-05 05:09:22'),
(5, 'Antologi (Lautan Sempena)', 'Karangan Author', 9, 62000, '2024-05-27 05:25:31', '2024-05-27 05:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `pelanggan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `invoice`, `pelanggan_id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(1, 'INV-1', 1, 3, 172000, '2024-04-26 21:25:10', '2024-04-26 21:26:21'),
(2, 'INV-2', 1, 3, 172000, '2024-04-26 21:32:08', '2024-04-26 21:32:15'),
(3, 'INV-3', 2, 3, 86000, '2024-04-26 21:51:36', '2024-04-26 21:51:44'),
(4, 'INV-4', 2, 3, 86000, '2024-04-26 22:31:02', '2024-04-26 22:31:08'),
(5, 'INV-5', 2, 3, 86000, '2024-04-26 23:18:49', '2024-04-26 23:38:22'),
(6, 'INV-6', 2, 3, 86000, '2024-04-27 05:20:12', '2024-04-27 05:20:18'),
(7, 'INV-7', 2, 3, 109000, '2024-05-04 06:41:37', '2024-05-04 06:41:59'),
(8, 'INV-8', 2, 3, 132000, '2024-05-07 22:18:17', '2024-05-07 22:18:34'),
(9, 'INV-9', 3, 3, 86000, '2024-05-15 21:41:18', '2024-05-15 21:41:44'),
(10, 'INV-10', 4, 3, 184000, '2024-05-27 05:27:58', '2024-05-27 05:28:17'),
(11, 'INV-11', 3, 3, 62000, '2024-05-27 05:29:16', '2024-05-27 05:29:22'),
(12, 'INV-12', 5, 3, 58000, '2024-05-27 05:32:01', '2024-05-27 05:32:39'),
(13, 'INV-13', 2, 3, 86000, '2024-05-27 05:34:11', '2024-05-27 05:34:15'),
(14, 'INV-14', 1, 3, 46000, '2024-05-27 05:35:05', '2024-05-27 05:35:16'),
(15, 'INV-15', 4, 3, 68000, '2024-05-27 05:36:09', '2024-05-27 05:36:41'),
(16, 'INV-16', 5, 3, 68000, '2024-05-28 06:22:52', '2024-05-28 06:22:59'),
(17, 'INV-17', 4, 3, 0, '2024-05-28 06:55:46', '2024-05-28 06:55:46'),
(18, 'INV-18', 6, 9, 126000, '2024-06-05 05:08:57', '2024-06-05 05:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `email`, `name`, `created_at`, `updated_at`, `foto`) VALUES
(3, '$2y$10$K8cysWzfT2.cmEJO9BT9l.hfDbLPEBeFkx/hdL91QwRthDGg7DvmC', 'miko@gmail.com', 'Miko', NULL, NULL, ''),
(4, '$2y$10$WmqJ96LWIbZ5iupsfwFbJOJRipukBk4b7Y.uM0CUk6soc8quU.Q7i', 'jiiwan@gmail.com', 'Jihan Raihanah', '2024-04-25 20:37:31', '2024-04-25 20:37:31', ''),
(6, '$2y$10$0v6DdY4Eu8Np1ZYu.cTfpui93s/pD8vKvqBYJM7Kj5B7MZZOHxqyq', 'celci@gmail.com', 'Celci Monica', '2024-05-07 22:16:20', '2024-05-07 22:16:20', ''),
(7, '$2y$10$efegFi0HiSnVL9jXTiXvFeaMKCt03nhhyLzGYY4dqr7VhLwIRn1vy', 'ahmadi@gmail.com', 'Ahmadi Muslim', '2024-05-12 07:31:18', '2024-05-12 07:31:18', ''),
(8, '$2y$10$229ejBtmAFPmig6.ivMUiOAuWedB33azp.p8lcgQzH7pUVGXUQ7W.', 'windi@gmail.com', 'Windi Syafira', '2024-05-19 01:24:58', '2024-05-19 01:24:58', ''),
(9, '$2y$10$c5BpQXqP5ARmdt1yf/IjS.4Uc07BRt8Hzk.OnImsskM6KF/tdHpxe', 'amylia@gmail.com', 'T. Amylia Safitri', '2024-06-04 18:06:37', '2024-06-04 18:06:37', ''),
(10, '$2y$10$kuY1YItgXs6773MXoRkaCOjnayaZ/U0.mXzKYvG.Mrjo6wAyq4kL2', 'pari@gmail.com', 'M. Fahri', '2024-06-04 18:50:56', '2024-06-04 18:50:56', '14.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detiltransaksis_transaksi_id_foreign` (`transaksi_id`),
  ADD KEY `detiltransaksis_produk_id_foreign` (`produk_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksis_invoice_unique` (`invoice`),
  ADD KEY `transaksis_pelanggan_id_foreign` (`pelanggan_id`),
  ADD KEY `transaksis_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detiltransaksis`
--
ALTER TABLE `detiltransaksis`
  ADD CONSTRAINT `detiltransaksis_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detiltransaksis_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_pelanggan_id_foreign` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
