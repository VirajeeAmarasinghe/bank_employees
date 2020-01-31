-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2020 at 10:09 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_employee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'People\'s bank', '2020-01-29 18:30:00', NULL),
(2, 'BOC bank', '2020-01-29 18:30:00', NULL),
(3, 'Commercial Bank', '2020-01-29 18:30:00', NULL),
(4, 'Sampath Bank', '2020-01-29 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `branch_address`, `bank_id`, `created_at`, `updated_at`) VALUES
(1, 'Rambukkana Branch', 'Kurunegala Rd, Rambukkana', 1, '2020-01-29 18:30:00', NULL),
(2, 'Kegalle branch', 'Main street, Kegalle', 2, '2020-01-29 18:30:00', NULL),
(3, 'Kurunagala Branch', 'No.13, Maliyadeva School Rd, Kurunegala', 3, '2020-01-29 18:30:00', NULL),
(4, 'Kandy Branch', 'Dalada Weediya, Kandy', 4, '2020-01-29 18:30:00', NULL),
(5, 'Colombo branch', 'Fort road, Colombo 5', 4, '2020-01-29 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `emp_name`, `emp_email`, `emp_photo`, `emp_address`, `password`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Virajee Amarasinghe', 'virajee.hiranthika@gmail.com', 'virajee.png', 'Kudagama,Hureemaluwa,Rambukkana', '$2y$10$EZUp4t2/UFIhtIJ85NfuQ.Bs.eFVlKpjA3DZ43T20X3U5AwY1ODJ2', 1, NULL, NULL),
(2, 'Ruvindu Amarasinghe', 'ruvindu.amarasinghe@gmail.com', 'ruvindu.png', 'Kudagama,Hureemaluwa,Rambukkana', '$2y$10$SQoO24p7Ij4h7GQcYJJXXelFl2bZAaFWCT6v5aTgw5rfPO7GjV8xS', 2, NULL, NULL),
(3, 'Sandunika Dunukewatta', 'sandunika.dunukewatta@gmail.com', 'sandunika.png', 'Hureemaluwa,Rambukkana', '$2y$10$2kurrnx/IMrB84mz3KV1L.F/lsdBuIC7HwbhJzvg26.bG1Jc5rVay', 3, NULL, NULL),
(4, 'Malani Weerasinghe', 'malani.weerasinghe@gmail.com', 'weerasinghe.png', 'Kudagama,Hureemaluwa,Rambukkana', '$2y$10$FRdo7c4YjWRy6HPNmExRZ.PuGcq.9crK663aidYfA8/11R75Ecbni', 4, NULL, NULL),
(5, 'H.R.Amarasinghe', 'h.r.amarasinghe@gmail.com', 'amarasinghe.png', 'Kudagama,Hureemaluwa,Rambukkana', '$2y$10$PFusY.upZcB6djiTiP7YC.eRHGyC8gmDR53pyz3NhmNQ3530sia/u', 5, NULL, NULL);

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
(1, '2020_01_30_055225_create_banks_table', 1),
(2, '2020_01_30_055240_create_branches_table', 1),
(3, '2020_01_30_055258_create_employees_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_bank_id_foreign` (`bank_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
