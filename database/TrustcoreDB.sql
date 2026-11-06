-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 22, 2026 at 03:26 PM
-- Server version: 8.0.42-0ubuntu0.20.04.1
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ch379444_trustcore`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident_coverage_dasi_meta`
--

CREATE TABLE `accident_coverage_dasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accident_coverage_dasi_meta`
--

INSERT INTO `accident_coverage_dasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, 'Illness only', 76, '2025-03-18 19:11:26', NULL, 'Daily allowance'),
(2, 'Illness and accident', 76, '2025-03-18 19:11:50', NULL, 'Daily allowance'),
(3, 'Illness and accident', 76, '2025-03-18 19:12:36', NULL, 'Daily allowance LCA'),
(4, 'Illness', 76, '2025-03-18 19:12:59', NULL, 'Daily allowance LCA');

-- --------------------------------------------------------

--
-- Table structure for table `accident_coverage_meta`
--

CREATE TABLE `accident_coverage_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accident_coverage_meta`
--

INSERT INTO `accident_coverage_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Illness', 89, '2025-03-19 07:41:33', NULL),
(2, 'Illness and accident', 89, '2025-03-19 07:41:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assets_meta`
--

CREATE TABLE `assets_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boolean_meta`
--

CREATE TABLE `boolean_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boolean_meta`
--

INSERT INTO `boolean_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Yes', 32, '2025-03-05 09:28:14', NULL),
(2, 'No', 32, '2025-03-05 09:28:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin@example.com|154.80.15.206', 'i:2;', 1748268871),
('admin@example.com|154.80.15.206:timer', 'i:1748268871;', 1748268871),
('admin@gmail.com|154.80.15.206', 'i:1;', 1748268899),
('admin@gmail.com|154.80.15.206:timer', 'i:1748268899;', 1748268899),
('ahmedhabibu49@gmail.com|105.119.45.190', 'i:3;', 1791031301),
('ahmedhabibu49@gmail.com|105.119.45.190:timer', 'i:1791031301;', 1791031301),
('chukwuebi10@gmail.com|141.0.13.151', 'i:2;', 1789337008),
('chukwuebi10@gmail.com|141.0.13.151:timer', 'i:1789337008;', 1789337008),
('eduardo.morais@hotmail.com|2a02:1210:28d2:4f00:cc76:cdf2:c6f1:74d7', 'i:1;', 1745040797),
('eduardo.morais@hotmail.com|2a02:1210:28d2:4f00:cc76:cdf2:c6f1:74d7:timer', 'i:1745040797;', 1745040797),
('elijahnakaanga@gmail.com|102.208.220.203', 'i:1;', 1760276120),
('elijahnakaanga@gmail.com|102.208.220.203:timer', 'i:1760276120;', 1760276120),
('ifyobianika@gmail.com|102.90.98.226', 'i:1;', 1786088825),
('ifyobianika@gmail.com|102.90.98.226:timer', 'i:1786088825;', 1786088825),
('olusunmadeabayomi@gmail.com|102.89.22.91', 'i:1;', 1783618733),
('olusunmadeabayomi@gmail.com|102.89.22.91:timer', 'i:1783618733;', 1783618733),
('raphael_ferrer@hotmail.com|46.140.44.234', 'i:1;', 1754305338),
('raphael_ferrer@hotmail.com|46.140.44.234:timer', 'i:1754305338;', 1754305338),
('tarkowskivernon@gmail.com|24.96.1.10', 'i:1;', 1790492388),
('tarkowskivernon@gmail.com|24.96.1.10:timer', 'i:1790492388;', 1790492388),
('teat@test.com|178.197.219.232', 'i:1;', 1770962536),
('teat@test.com|178.197.219.232:timer', 'i:1770962536;', 1770962536),
('wendyallison10@yahoo.com|81.2.140.94', 'i:1;', 1789496431),
('wendyallison10@yahoo.com|81.2.140.94:timer', 'i:1789496431;', 1789496431),
('wendyallison810@gmail.com|81.2.140.94', 'i:2;', 1789496397),
('wendyallison810@gmail.com|81.2.140.94:timer', 'i:1789496397;', 1789496397);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `handle`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(11, 'Contracts', 'contracts', 'published', '2025-01-22 16:56:43', '2025-01-22 16:56:43', NULL),
(12, 'Insurance Type', 'insurance_type', 'published', '2025-01-24 08:25:16', '2025-01-24 08:25:16', NULL),
(13, 'Insurance Companies', 'insurance_companies', 'published', '2025-01-27 09:07:47', '2025-01-27 09:07:47', NULL),
(14, 'Communication', 'communication', 'published', '2025-01-27 09:08:40', '2025-01-27 09:08:40', NULL),
(16, 'Assets', 'assets', 'published', '2025-01-27 09:09:55', '2025-01-27 09:09:55', NULL),
(17, 'Offers', 'offers', 'published', '2025-01-27 09:10:04', '2025-01-27 09:10:04', NULL),
(20, 'Gender', 'gender', 'published', '2025-02-22 19:07:33', '2025-02-22 19:07:33', NULL),
(22, 'Health insurance', 'health_insurance', 'published', '2025-02-22 19:12:29', '2025-02-22 19:12:29', NULL),
(23, 'Current insurer', 'current_insurer', 'published', '2025-02-22 19:15:07', '2025-02-22 19:15:07', NULL),
(24, 'Coverage Level', 'coverage_level', 'published', '2025-02-22 19:16:08', '2025-02-22 19:16:08', NULL),
(25, 'Supplementary Insurance Vvg', 'supplementary_insurance_vvg', 'published', '2025-02-22 19:18:06', '2025-02-22 19:18:06', NULL),
(26, 'Language', 'language', 'published', '2025-02-22 19:21:35', '2025-02-22 19:21:35', NULL),
(27, 'Relationship', 'relationship', 'published', '2025-02-22 19:22:52', '2025-02-22 19:22:52', NULL),
(28, 'Country', 'country', 'published', '2025-02-22 19:23:23', '2025-02-22 19:23:23', NULL),
(29, 'Payment Method', 'payment_method', 'published', '2025-02-22 19:25:24', '2025-02-22 19:25:24', NULL),
(30, 'Land Bank', 'land_bank', 'published', '2025-02-22 19:26:04', '2025-02-22 19:26:04', NULL),
(31, 'Invoicing', 'invoicing', 'published', '2025-02-22 19:26:36', '2025-02-22 19:26:36', NULL),
(32, 'Boolean', 'boolean', 'published', '2025-02-22 19:29:33', '2025-02-22 19:29:33', NULL),
(33, 'Groupe Mutuel Template 1', 'template_groupe_mutual', NULL, '2025-02-26 20:51:56', '2025-04-08 11:49:12', NULL),
(36, 'Health insurer', 'health_insurer', NULL, '2025-02-26 21:21:46', '2025-02-26 21:21:46', NULL),
(37, 'Deductible', 'deductible', NULL, '2025-02-26 21:23:43', '2025-02-26 21:23:43', NULL),
(40, 'Franchise Data', 'franchise_data', 'published', '2025-02-28 15:15:29', '2025-02-28 15:15:29', NULL),
(41, 'Occupational Status', 'occupational_status', NULL, '2025-03-03 11:00:19', '2025-03-03 11:00:19', NULL),
(42, 'Packages LCA', 'packages_lca', NULL, '2025-03-05 09:12:31', '2025-03-05 09:12:31', NULL),
(46, 'niveau Package', 'niveau_package', NULL, '2025-03-05 09:45:08', '2025-03-05 09:45:08', NULL),
(47, 'Templates', 'templates', NULL, '2025-03-06 09:42:47', '2025-03-06 09:42:47', NULL),
(52, 'Insurance Model GSI', 'insurance_model_gsi', NULL, '2025-03-17 07:34:33', '2025-03-17 07:34:33', NULL),
(53, 'Level coverage GSI', 'level_coverage_gsi', NULL, '2025-03-17 11:29:12', '2025-03-17 11:29:12', NULL),
(54, 'Deductible coverage GSI', 'deductible_coverage', NULL, '2025-03-18 09:31:34', '2025-03-18 09:31:48', NULL),
(55, 'Insurance model HLSI', 'insurance_model_hlsi', NULL, '2025-03-18 09:48:23', '2025-03-18 09:48:23', NULL),
(56, 'Level coverage HLSI', 'level_coverage_hlsi', NULL, '2025-03-18 09:49:30', '2025-03-18 09:49:30', NULL),
(57, 'Insurance model HSI', 'insurance_model_hsi', NULL, '2025-03-18 09:54:47', '2025-03-18 09:54:47', NULL),
(58, 'Level Coverage HSI', 'level_coverage_hsi', NULL, '2025-03-18 09:56:23', '2025-03-18 09:56:23', NULL),
(59, 'Deductible coverage HSI', 'deductible_coverage_hsi', NULL, '2025-03-18 10:02:01', '2025-03-18 10:02:01', NULL),
(60, 'Insurance model MTSI', 'insurance_model_mtsi', NULL, '2025-03-18 10:21:49', '2025-03-18 10:21:49', NULL),
(61, 'Level coverage MTSI', 'level_coverage_mtsi', NULL, '2025-03-18 10:22:43', '2025-03-18 10:22:43', NULL),
(62, 'Insurance Model DSI', 'insurance_model_dsi', NULL, '2025-03-18 10:54:30', '2025-03-18 10:54:30', NULL),
(63, 'Level coverage DSI', 'level_coverage_dsi', NULL, '2025-03-18 10:55:06', '2025-03-18 10:55:06', NULL),
(64, 'Insurance model HASI', 'insurance_model_hasi', NULL, '2025-03-18 11:01:54', '2025-03-18 11:01:54', NULL),
(65, 'Insurance model HSSI', 'insurance_model_hssi', NULL, '2025-03-18 11:06:57', '2025-03-18 11:06:57', NULL),
(66, 'Insurance model SHI', 'insurance_model_shi', NULL, '2025-03-18 11:09:55', '2025-03-18 11:09:55', NULL),
(67, 'Level coverage  SHI', 'level_coverage_shi', NULL, '2025-03-18 11:12:32', '2025-03-18 11:12:32', NULL),
(68, 'Deductible coverage SHI', 'deductible_coverage_shi', NULL, '2025-03-18 11:19:38', '2025-03-18 11:19:38', NULL),
(69, 'Insurance model LSI', 'insurance_model_lsi', NULL, '2025-03-18 11:50:19', '2025-03-18 11:50:19', NULL),
(70, 'Level coverage LSI', 'level_coverage_lsi', NULL, '2025-03-18 11:50:55', '2025-03-18 11:50:55', NULL),
(71, 'Criterion LSI', 'criterion_lsi', NULL, '2025-03-18 11:54:38', '2025-03-18 11:54:38', NULL),
(72, 'Insurance Model LSSI', 'insurance_model_lssi', NULL, '2025-03-18 17:40:44', '2025-03-18 18:51:08', NULL),
(73, 'Insurance model DASI', 'insurance_model_dasi', NULL, '2025-03-18 19:01:55', '2025-03-18 19:01:55', NULL),
(74, 'Health insurer DASI', 'health_insurer_dasi', NULL, '2025-03-18 19:03:19', '2025-03-18 19:03:19', NULL),
(75, 'Level coverage DASI', 'level_coverage_dasi', NULL, '2025-03-18 19:05:52', '2025-03-18 19:05:52', NULL),
(76, 'Accident coverage DASI', 'accident_coverage_dasi', NULL, '2025-03-18 19:10:11', '2025-03-18 19:10:11', NULL),
(77, 'Waiting period DASI', 'waiting_period_dasi', NULL, '2025-03-18 19:14:45', '2025-03-18 19:14:45', NULL),
(78, 'Insurance model ISI', 'insurance_model_isi', NULL, '2025-03-18 19:28:25', '2025-03-18 19:28:25', NULL),
(79, 'Level coverage ISI', 'level_coverage_isi', NULL, '2025-03-18 19:28:58', '2025-03-18 19:28:58', NULL),
(80, 'Waiting period ISI', 'waiting_period_isi', NULL, '2025-03-18 19:30:10', '2025-03-18 19:30:10', NULL),
(81, 'Insurance model HADSI', 'insurance_model_hadsi', NULL, '2025-03-18 19:36:51', '2025-03-18 19:36:51', NULL),
(82, 'Insurance model ASI', 'insurance_model_asi', NULL, '2025-03-18 19:52:10', '2025-03-18 19:52:10', NULL),
(83, 'Insurance model CPSI', 'insurance_model_cpsi', NULL, '2025-03-18 19:54:50', '2025-03-18 19:54:50', NULL),
(84, 'Criterion CPSI', 'criterion_cpsi', NULL, '2025-03-18 19:55:53', '2025-03-18 19:55:53', NULL),
(85, 'Insurance Model LASI', 'insurance_model_lasi', NULL, '2025-03-19 06:55:19', '2025-03-19 06:55:19', NULL),
(86, 'Level Coverage LASI', 'level_coverage_lasi', NULL, '2025-03-19 07:07:13', '2025-03-19 07:07:13', NULL),
(87, 'Insurance model LIASI', 'insurance_model_liasi', NULL, '2025-03-19 07:38:20', '2025-03-19 07:38:20', NULL),
(88, 'Level Coverage LIASI', 'level_coverage_liasi', NULL, '2025-03-19 07:39:28', '2025-03-19 07:39:28', NULL),
(89, 'Accident coverage LIASI', 'accident_coverage', NULL, '2025-03-19 07:41:07', '2025-03-19 07:41:20', NULL),
(90, 'Insurance model LSISI', 'insurance_model_lsisi', NULL, '2025-03-19 07:55:11', '2025-03-19 07:55:11', NULL),
(91, 'Level Coverage LSISI', 'level_coverage_lsisi', NULL, '2025-03-19 07:56:00', '2025-03-19 07:56:00', NULL),
(94, 'Permit', 'permit', NULL, '2025-04-16 14:08:38', '2025-04-16 14:08:38', NULL),
(96, 'Group Mutuel Template', 'template_groupe_mutuel_template', NULL, NULL, '2025-04-29 06:15:36', 27),
(99, 'Nur KVG', 'template_nur_kvg', NULL, NULL, NULL, 27),
(108, 'test template1', 'template_test_template1', NULL, NULL, NULL, 8),
(109, 'test 2', 'template_test_2', NULL, NULL, NULL, 27),
(110, 'test5', 'template_test5', NULL, NULL, NULL, 36),
(111, 'test 6', 'template_test_6', NULL, NULL, NULL, 36),
(113, 'test 7', 'template_test_7', NULL, NULL, NULL, 36),
(114, 'test 8', 'template_test_8', NULL, NULL, NULL, 36),
(116, 'test 89', 'template_test_89', NULL, NULL, NULL, 36),
(117, 'Test52526373', 'template_test52526373', NULL, NULL, NULL, 27),
(118, 'test 9', 'template_test_9', NULL, NULL, NULL, 36),
(119, 'test 10', 'template_test_10', NULL, NULL, NULL, 36),
(120, 'test 11', 'template_test_11', NULL, NULL, NULL, 36),
(121, 'Test765343678697867565', 'template_test765343678697867565', NULL, NULL, NULL, 27),
(122, 'Group Mutuel Template 2.0', 'template_group_mutuel_template_20', NULL, NULL, NULL, 27);

-- --------------------------------------------------------

--
-- Table structure for table `communication_meta`
--

CREATE TABLE `communication_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts_meta`
--

CREATE TABLE `contracts_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_contract_date` date DEFAULT NULL,
  `textarea_content` longtext COLLATE utf8mb4_unicode_ci,
  `rel_created_by_col_users` bigint UNSIGNED DEFAULT NULL,
  `rel_signed_by_col_users` bigint UNSIGNED DEFAULT NULL,
  `rel_insurance_type_col_insurance_type` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_meta`
--

CREATE TABLE `country_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_meta`
--

INSERT INTO `country_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(8, 'Switzerland', 28, '2025-04-10 13:46:19', NULL),
(9, 'Afghanistan', 28, '2025-04-10 13:46:19', NULL),
(10, 'Albania', 28, '2025-04-10 13:46:19', NULL),
(11, 'Algeria', 28, '2025-04-10 13:46:19', NULL),
(12, 'American Samoa', 28, '2025-04-10 13:46:19', NULL),
(13, 'Andorra', 28, '2025-04-10 13:46:19', NULL),
(14, 'Angola', 28, '2025-04-10 13:46:19', NULL),
(15, 'Anguilla', 28, '2025-04-10 13:46:19', NULL),
(16, 'Antarctica', 28, '2025-04-10 13:46:19', NULL),
(17, 'Antigua and Barbuda', 28, '2025-04-10 13:46:19', NULL),
(18, 'Argentina', 28, '2025-04-10 13:46:19', NULL),
(19, 'Armenia', 28, '2025-04-10 13:46:19', NULL),
(20, 'Aruba', 28, '2025-04-10 13:46:19', NULL),
(21, 'Australia', 28, '2025-04-10 13:46:19', NULL),
(22, 'Austria', 28, '2025-04-10 13:46:19', NULL),
(23, 'Azerbaijan', 28, '2025-04-10 13:46:19', NULL),
(24, 'Bahamas', 28, '2025-04-10 13:46:19', NULL),
(25, 'Bahrain', 28, '2025-04-10 13:46:19', NULL),
(26, 'Bangladesh', 28, '2025-04-10 13:46:19', NULL),
(27, 'Barbados', 28, '2025-04-10 13:46:19', NULL),
(28, 'Belarus', 28, '2025-04-10 13:46:19', NULL),
(29, 'Belgium', 28, '2025-04-10 13:46:19', NULL),
(30, 'Belize', 28, '2025-04-10 13:46:19', NULL),
(31, 'Benin', 28, '2025-04-10 13:46:19', NULL),
(32, 'Bermuda', 28, '2025-04-10 13:46:19', NULL),
(33, 'Bhutan', 28, '2025-04-10 13:46:19', NULL),
(34, 'Bolivia, Plurinational State Of', 28, '2025-04-10 13:46:19', NULL),
(35, 'Bonaire, Sint Eustatius And Saba', 28, '2025-04-10 13:46:19', NULL),
(36, 'Bosnia and Herzegovina', 28, '2025-04-10 13:46:19', NULL),
(37, 'Botswana', 28, '2025-04-10 13:46:19', NULL),
(38, 'Bouvet Island', 28, '2025-04-10 13:46:19', NULL),
(39, 'Brazil', 28, '2025-04-10 13:46:19', NULL),
(40, 'British Indian Ocean Territory', 28, '2025-04-10 13:46:19', NULL),
(41, 'Brunei Darussalam', 28, '2025-04-10 13:46:19', NULL),
(42, 'Bulgaria', 28, '2025-04-10 13:46:19', NULL),
(43, 'Burindi', 28, '2025-04-10 13:46:19', NULL),
(44, 'Burkina Faso', 28, '2025-04-10 13:46:19', NULL),
(45, 'Cambodia', 28, '2025-04-10 13:46:19', NULL),
(46, 'Cameroon', 28, '2025-04-10 13:46:19', NULL),
(47, 'Canada', 28, '2025-04-10 13:46:19', NULL),
(48, 'Cape Verde', 28, '2025-04-10 13:46:19', NULL),
(49, 'Cayman Islands', 28, '2025-04-10 13:46:19', NULL),
(50, 'Central African Republic', 28, '2025-04-10 13:46:19', NULL),
(51, 'Chad', 28, '2025-04-10 13:46:19', NULL),
(52, 'Chile', 28, '2025-04-10 13:46:19', NULL),
(53, 'China', 28, '2025-04-10 13:46:19', NULL),
(54, 'Christmas Island', 28, '2025-04-10 13:46:19', NULL),
(55, 'Cocos (Keeling) Islands', 28, '2025-04-10 13:46:19', NULL),
(56, 'Colombia', 28, '2025-04-10 13:46:19', NULL),
(57, 'Comoros', 28, '2025-04-10 13:46:19', NULL),
(58, 'Congo', 28, '2025-04-10 13:46:19', NULL),
(59, 'Cook Islands', 28, '2025-04-10 13:46:19', NULL),
(60, 'Costa Rica', 28, '2025-04-10 13:46:19', NULL),
(61, 'Croatia', 28, '2025-04-10 13:46:19', NULL),
(62, 'Cuba', 28, '2025-04-10 13:46:19', NULL),
(63, 'Curaçao', 28, '2025-04-10 13:46:19', NULL),
(64, 'Cyprus', 28, '2025-04-10 13:46:19', NULL),
(65, 'Czech Republic', 28, '2025-04-10 13:46:19', NULL),
(66, 'Côte D\'Ivoire', 28, '2025-04-10 13:46:19', NULL),
(67, 'Democratic People\'s Republic Of Korea', 28, '2025-04-10 13:46:19', NULL),
(68, 'Democratic Republic Of Congo', 28, '2025-04-10 13:46:19', NULL),
(69, 'Denmark', 28, '2025-04-10 13:46:19', NULL),
(70, 'Djibouti', 28, '2025-04-10 13:46:19', NULL),
(71, 'Dominica', 28, '2025-04-10 13:46:19', NULL),
(72, 'Dominican Republic', 28, '2025-04-10 13:46:19', NULL),
(73, 'East-Timor', 28, '2025-04-10 13:46:19', NULL),
(74, 'Ecuador', 28, '2025-04-10 13:46:19', NULL),
(75, 'Egypt', 28, '2025-04-10 13:46:19', NULL),
(76, 'El Salvador', 28, '2025-04-10 13:46:19', NULL),
(77, 'Equatorial Guinea', 28, '2025-04-10 13:46:19', NULL),
(78, 'Eritrea', 28, '2025-04-10 13:46:19', NULL),
(79, 'Estonia', 28, '2025-04-10 13:46:19', NULL),
(80, 'Ethiopia', 28, '2025-04-10 13:47:23', NULL),
(81, 'Falkland Islands (Malvinas)', 28, '2025-04-10 13:47:23', NULL),
(82, 'Faroe Islands', 28, '2025-04-10 13:47:23', NULL),
(83, 'Fiji', 28, '2025-04-10 13:47:23', NULL),
(84, 'Finland', 28, '2025-04-10 13:47:23', NULL),
(85, 'France', 28, '2025-04-10 13:47:23', NULL),
(86, 'French Guiana', 28, '2025-04-10 13:47:23', NULL),
(87, 'French Polynesia', 28, '2025-04-10 13:47:23', NULL),
(88, 'French Southern Territories', 28, '2025-04-10 13:47:23', NULL),
(89, 'Gabon', 28, '2025-04-10 13:47:23', NULL),
(90, 'Gambia', 28, '2025-04-10 13:47:23', NULL),
(91, 'Georgia', 28, '2025-04-10 13:47:23', NULL),
(92, 'Germany', 28, '2025-04-10 13:47:23', NULL),
(93, 'Ghana', 28, '2025-04-10 13:47:23', NULL),
(94, 'Gibraltar', 28, '2025-04-10 13:47:23', NULL),
(95, 'Greece', 28, '2025-04-10 13:47:23', NULL),
(96, 'Greenland', 28, '2025-04-10 13:47:23', NULL),
(97, 'Grenada', 28, '2025-04-10 13:47:23', NULL),
(98, 'Guadeloupe', 28, '2025-04-10 13:47:23', NULL),
(99, 'Guam', 28, '2025-04-10 13:47:23', NULL),
(100, 'Guatemala', 28, '2025-04-10 13:47:23', NULL),
(101, 'Guernsey', 28, '2025-04-10 13:47:23', NULL),
(102, 'Guinea', 28, '2025-04-10 13:47:23', NULL),
(103, 'Guinea-Bissau', 28, '2025-04-10 13:47:23', NULL),
(104, 'Guyana', 28, '2025-04-10 13:47:23', NULL),
(105, 'Haiti', 28, '2025-04-10 13:47:23', NULL),
(106, 'Heard Island And Mcdonald Islands', 28, '2025-04-10 13:47:23', NULL),
(107, 'Holy See (Vatican City State)', 28, '2025-04-10 13:47:23', NULL),
(108, 'Honduras', 28, '2025-04-10 13:47:23', NULL),
(109, 'Hong Kong', 28, '2025-04-10 13:47:23', NULL),
(110, 'Hungary', 28, '2025-04-10 13:47:23', NULL),
(111, 'Iceland', 28, '2025-04-10 13:47:23', NULL),
(112, 'India', 28, '2025-04-10 13:47:23', NULL),
(113, 'Indonesia', 28, '2025-04-10 13:47:23', NULL),
(114, 'Iran, Islamic Republic Of', 28, '2025-04-10 13:47:23', NULL),
(115, 'Iraq', 28, '2025-04-10 13:47:23', NULL),
(116, 'Ireland', 28, '2025-04-10 13:47:23', NULL),
(117, 'Isle of Man', 28, '2025-04-10 13:47:23', NULL),
(118, 'Israel', 28, '2025-04-10 13:47:23', NULL),
(119, 'Italy', 28, '2025-04-10 13:47:23', NULL),
(120, 'Jamaica', 28, '2025-04-10 13:47:23', NULL),
(121, 'Japan', 28, '2025-04-10 13:47:23', NULL),
(122, 'Jersey', 28, '2025-04-10 13:47:23', NULL),
(123, 'Jordan', 28, '2025-04-10 13:47:23', NULL),
(124, 'Kazakhstan', 28, '2025-04-10 13:47:23', NULL),
(125, 'Kenya', 28, '2025-04-10 13:47:23', NULL),
(126, 'Kiribati', 28, '2025-04-10 13:47:23', NULL),
(127, 'Korea, Republic Of', 28, '2025-04-10 13:47:23', NULL),
(128, 'Kuwait', 28, '2025-04-10 13:47:23', NULL),
(129, 'Kyrgyzstan', 28, '2025-04-10 13:47:23', NULL),
(130, 'Lao People\'s Democratic Republic', 28, '2025-04-10 13:47:23', NULL),
(131, 'Latvia', 28, '2025-04-10 13:47:23', NULL),
(132, 'Lebanon', 28, '2025-04-10 13:47:23', NULL),
(133, 'Lesotho', 28, '2025-04-10 13:47:23', NULL),
(134, 'Liberia', 28, '2025-04-10 13:47:23', NULL),
(135, 'Libya', 28, '2025-04-10 13:47:23', NULL),
(136, 'Liechtenstein', 28, '2025-04-10 13:47:23', NULL),
(137, 'Lithuania', 28, '2025-04-10 13:47:23', NULL),
(138, 'Luxembourg', 28, '2025-04-10 13:47:23', NULL),
(139, 'Macao', 28, '2025-04-10 13:47:23', NULL),
(140, 'Madagascar', 28, '2025-04-10 13:47:23', NULL),
(141, 'Malawi', 28, '2025-04-10 13:47:23', NULL),
(142, 'Malaysia', 28, '2025-04-10 13:47:23', NULL),
(143, 'Maldives', 28, '2025-04-10 13:47:23', NULL),
(144, 'Mali', 28, '2025-04-10 13:47:23', NULL),
(145, 'Malta', 28, '2025-04-10 13:47:23', NULL),
(146, 'Marshall Islands', 28, '2025-04-10 13:47:23', NULL),
(147, 'Martinique', 28, '2025-04-10 13:47:23', NULL),
(148, 'Mauritania', 28, '2025-04-10 13:47:23', NULL),
(149, 'Mauritius', 28, '2025-04-10 13:47:23', NULL),
(150, 'Mayotte', 28, '2025-04-10 13:47:23', NULL),
(151, 'Mexico', 28, '2025-04-10 13:47:23', NULL),
(152, 'Micronesia, Federated States Of', 28, '2025-04-10 13:47:23', NULL),
(153, 'Moldova, Republic Of', 28, '2025-04-10 13:47:23', NULL),
(154, 'Monaco', 28, '2025-04-10 13:47:23', NULL),
(155, 'Mongolia', 28, '2025-04-10 13:47:23', NULL),
(156, 'Montenegro', 28, '2025-04-10 13:47:23', NULL),
(157, 'Montserrat', 28, '2025-04-10 13:47:23', NULL),
(158, 'Morocco', 28, '2025-04-10 13:50:59', NULL),
(159, 'Mozambique', 28, '2025-04-10 13:50:59', NULL),
(160, 'Myanmar', 28, '2025-04-10 13:50:59', NULL),
(161, 'Namibia', 28, '2025-04-10 13:50:59', NULL),
(162, 'Nauru', 28, '2025-04-10 13:50:59', NULL),
(163, 'Nepal', 28, '2025-04-10 13:50:59', NULL),
(164, 'Netherlands', 28, '2025-04-10 13:50:59', NULL),
(165, 'New Caledonia', 28, '2025-04-10 13:50:59', NULL),
(166, 'New Zealand', 28, '2025-04-10 13:50:59', NULL),
(167, 'Nicaragua', 28, '2025-04-10 13:50:59', NULL),
(168, 'Niger', 28, '2025-04-10 13:50:59', NULL),
(169, 'Nigeria', 28, '2025-04-10 13:50:59', NULL),
(170, 'Niue', 28, '2025-04-10 13:50:59', NULL),
(171, 'Norfolk Island', 28, '2025-04-10 13:50:59', NULL),
(172, 'Northern Mariana Islands', 28, '2025-04-10 13:50:59', NULL),
(173, 'Norway', 28, '2025-04-10 13:50:59', NULL),
(174, 'Oman', 28, '2025-04-10 13:50:59', NULL),
(175, 'Pakistan', 28, '2025-04-10 13:50:59', NULL),
(176, 'Palau', 28, '2025-04-10 13:50:59', NULL),
(177, 'Palestinian Territory, Occupied', 28, '2025-04-10 13:50:59', NULL),
(178, 'Panama', 28, '2025-04-10 13:50:59', NULL),
(179, 'Papua New Guinea', 28, '2025-04-10 13:50:59', NULL),
(180, 'Paraguay', 28, '2025-04-10 13:50:59', NULL),
(181, 'Peru', 28, '2025-04-10 13:50:59', NULL),
(182, 'Philippines', 28, '2025-04-10 13:50:59', NULL),
(183, 'Pitcairn', 28, '2025-04-10 13:50:59', NULL),
(184, 'Poland', 28, '2025-04-10 13:50:59', NULL),
(185, 'Portugal', 28, '2025-04-10 13:50:59', NULL),
(186, 'Puerto Rico', 28, '2025-04-10 13:50:59', NULL),
(187, 'Qatar', 28, '2025-04-10 13:50:59', NULL),
(188, 'Republic Of Kosovo', 28, '2025-04-10 13:50:59', NULL),
(189, 'Republic Of North Macedonia', 28, '2025-04-10 13:50:59', NULL),
(190, 'Romania', 28, '2025-04-10 13:50:59', NULL),
(191, 'Russian Federation', 28, '2025-04-10 13:50:59', NULL),
(192, 'Rwanda', 28, '2025-04-10 13:50:59', NULL),
(193, 'Réunion', 28, '2025-04-10 13:50:59', NULL),
(194, 'Saint Helena, Ascension And Tristan', 28, '2025-04-10 13:50:59', NULL),
(195, 'Saint Kitts and Nevis', 28, '2025-04-10 13:50:59', NULL),
(196, 'Saint Lucia', 28, '2025-04-10 13:50:59', NULL),
(197, 'Saint Martin (French Part)', 28, '2025-04-10 13:50:59', NULL),
(198, 'Saint Pierre And Miquelon', 28, '2025-04-10 13:50:59', NULL),
(199, 'Saint Vincent And The Grenadines', 28, '2025-04-10 13:50:59', NULL),
(200, 'Saint-Barthélemy', 28, '2025-04-10 13:50:59', NULL),
(201, 'Samoa', 28, '2025-04-10 13:50:59', NULL),
(202, 'San Marino', 28, '2025-04-10 13:50:59', NULL),
(203, 'Sao Tome And Principe', 28, '2025-04-10 13:50:59', NULL),
(204, 'Saudi Arabia', 28, '2025-04-10 13:50:59', NULL),
(205, 'Senegal', 28, '2025-04-10 13:50:59', NULL),
(206, 'Serbia', 28, '2025-04-10 13:50:59', NULL),
(207, 'Seychelles', 28, '2025-04-10 13:50:59', NULL),
(208, 'Sierra Leone', 28, '2025-04-10 13:50:59', NULL),
(209, 'Singapore', 28, '2025-04-10 13:50:59', NULL),
(210, 'Sint Maarten (Dutch Part)', 28, '2025-04-10 13:50:59', NULL),
(211, 'Slovakia', 28, '2025-04-10 13:50:59', NULL),
(212, 'Slovenia', 28, '2025-04-10 13:50:59', NULL),
(213, 'Solomon Islands', 28, '2025-04-10 13:50:59', NULL),
(214, 'Somalia', 28, '2025-04-10 13:50:59', NULL),
(215, 'South Africa', 28, '2025-04-10 13:50:59', NULL),
(216, 'South Georgia And Sandwich Islands', 28, '2025-04-10 13:50:59', NULL),
(217, 'South Sudan', 28, '2025-04-10 13:50:59', NULL),
(218, 'Spain', 28, '2025-04-10 13:50:59', NULL),
(219, 'Sri Lanka', 28, '2025-04-10 13:50:59', NULL),
(220, 'Sudan', 28, '2025-04-10 13:50:59', NULL),
(221, 'Suriname', 28, '2025-04-10 13:50:59', NULL),
(222, 'Svalbard And Jan Mayen', 28, '2025-04-10 13:50:59', NULL),
(223, 'Swaziland', 28, '2025-04-10 13:50:59', NULL),
(224, 'Sweden', 28, '2025-04-10 13:50:59', NULL),
(225, 'Syrian Arab Republic', 28, '2025-04-10 13:50:59', NULL),
(226, 'Taiwan, Province Of China', 28, '2025-04-10 13:50:59', NULL),
(227, 'Tajikistan', 28, '2025-04-10 13:50:59', NULL),
(228, 'Tanzania, United Republic Of', 28, '2025-04-10 13:50:59', NULL),
(229, 'Thailand', 28, '2025-04-10 13:50:59', NULL),
(230, 'Timor-Leste', 28, '2025-04-10 13:50:59', NULL),
(231, 'Togo', 28, '2025-04-10 13:50:59', NULL),
(232, 'Tokelau', 28, '2025-04-10 13:50:59', NULL),
(233, 'Tonga', 28, '2025-04-10 13:50:59', NULL),
(234, 'Trinidad and Tobago', 28, '2025-04-10 13:50:59', NULL),
(235, 'Tunisia', 28, '2025-04-10 13:50:59', NULL),
(236, 'Turkey', 28, '2025-04-10 13:50:59', NULL),
(237, 'Turkmenistan', 28, '2025-04-10 13:50:59', NULL),
(238, 'Turks And Caicos Islands', 28, '2025-04-10 13:50:59', NULL),
(239, 'Tuvalu', 28, '2025-04-10 13:50:59', NULL),
(240, 'Uganda', 28, '2025-04-10 13:50:59', NULL),
(241, 'Ukraine', 28, '2025-04-10 13:50:59', NULL),
(242, 'United Arab Emirates', 28, '2025-04-10 13:50:59', NULL),
(243, 'United Kingdom', 28, '2025-04-10 13:50:59', NULL),
(244, 'United States', 28, '2025-04-10 13:50:59', NULL),
(245, 'United States Minor Outlying Islands', 28, '2025-04-10 13:50:59', NULL),
(246, 'Uruguay', 28, '2025-04-10 13:50:59', NULL),
(247, 'Uzbekistan', 28, '2025-04-10 13:50:59', NULL),
(248, 'Vanuatu', 28, '2025-04-10 13:50:59', NULL),
(249, 'Venezuela, Bolivarian Republic Of', 28, '2025-04-10 13:50:59', NULL),
(250, 'Viet Nam', 28, '2025-04-10 13:50:59', NULL),
(251, 'Virgin Islands, British', 28, '2025-04-10 13:50:59', NULL),
(252, 'Virgin Islands, U.S.', 28, '2025-04-10 13:50:59', NULL),
(253, 'Wallis And Futuna', 28, '2025-04-10 13:50:59', NULL),
(254, 'Western Sahara', 28, '2025-04-10 13:50:59', NULL),
(255, 'Yemen', 28, '2025-04-10 13:50:59', NULL),
(256, 'Zambia', 28, '2025-04-10 13:50:59', NULL),
(257, 'Zimbabwe', 28, '2025-04-10 13:50:59', NULL),
(258, 'Åland Islands', 28, '2025-04-10 13:50:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coverage_level_meta`
--

CREATE TABLE `coverage_level_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coverage_level_meta`
--

INSERT INTO `coverage_level_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'N/A', NULL, NULL, NULL),
(2, '25% family discount for three children or more', 24, '2025-02-26 21:22:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `criterion_cpsi_meta`
--

CREATE TABLE `criterion_cpsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterion_cpsi_meta`
--

INSERT INTO `criterion_cpsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Family', 84, '2025-03-18 19:56:13', NULL),
(2, 'Individual', 84, '2025-03-18 19:56:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `criterion_lsi_meta`
--

CREATE TABLE `criterion_lsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterion_lsi_meta`
--

INSERT INTO `criterion_lsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Person only', 71, '2025-03-18 11:55:06', NULL),
(2, 'Family member', 71, '2025-03-18 11:55:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `current_insurer_meta`
--

CREATE TABLE `current_insurer_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_insurer_meta`
--

INSERT INTO `current_insurer_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Foreign insurer', NULL, NULL, '2025-03-05 11:05:44'),
(2, 'Agrisano Krankenkasse AG', 23, '2025-02-26 21:28:50', NULL),
(3, 'AMB Assurances SA', 23, '2025-02-26 21:28:58', NULL),
(4, 'Aquilana Versicherungen', 23, '2025-04-08 13:38:42', NULL),
(5, 'Arcosana SA', 23, '2025-04-08 13:38:42', NULL),
(6, 'Assura-Basis SA', 23, '2025-04-08 13:38:42', NULL),
(7, 'Atupri Gesundheitsversicherung', 23, '2025-04-08 13:38:42', NULL),
(8, 'Avenir Assurance Maladie SA', 23, '2025-04-08 13:38:42', NULL),
(9, 'Caisse maladie vallée d\'Entremont société coopérative', 23, '2025-04-08 13:38:42', NULL),
(10, 'Cassa da malsauns Lumneziana', 23, '2025-04-08 13:38:42', NULL),
(11, 'CONCORDIA Schweiz. Kranken- und Unfallversicherung', 23, '2025-04-08 13:38:42', NULL),
(12, 'CSS Kranken-Versicherung AG', 23, '2025-04-08 13:38:42', NULL),
(13, 'Easy Sana Assurance Maladie SA', 23, '2025-04-08 13:38:42', NULL),
(14, 'EGK-health insurance plan', 23, '2025-04-08 13:38:42', NULL),
(15, 'Einsiedler Krankenkasse', 23, '2025-04-08 13:38:42', NULL),
(16, 'GALENOS AG', 23, '2025-04-08 13:38:42', NULL),
(17, 'Genossenschaft Krankenkasse Steffisburg', 23, '2025-04-08 13:38:42', NULL),
(18, 'Glarner Krankenversicherung', 23, '2025-04-08 13:38:42', NULL),
(19, 'Helsana Assurances SA', 23, '2025-04-08 13:38:42', NULL),
(20, 'HOTELA Caisse maladie', 23, '2025-04-08 13:38:42', NULL),
(21, 'Indivo Versicherungen AG', 23, '2025-04-08 13:38:42', NULL),
(22, 'KKV Krankenkasse Visperterminen', 23, '2025-04-08 13:38:42', NULL),
(23, 'KluG Kranken-versicherung', 23, '2025-04-08 13:38:42', NULL),
(24, 'Kolping Caisse maladie SA', 23, '2025-04-08 13:38:42', NULL),
(25, 'KPT Krankenkasse AG / CPT Assurance SA', 23, '2025-04-08 13:38:42', NULL),
(26, 'Krankenkasse Birchmeier', 23, '2025-04-08 13:38:42', NULL),
(27, 'Krankenkasse Flaachtal', 23, '2025-04-08 13:38:42', NULL),
(28, 'Krankenkasse Institut Ingenbohl', 23, '2025-04-08 13:38:42', NULL),
(29, 'Krankenkasse Luzerner Hinterland', 23, '2025-04-08 13:38:42', NULL),
(30, 'Krankenkasse Simplon', 23, '2025-04-08 13:38:42', NULL),
(31, 'Krankenkasse SLKK', 23, '2025-04-08 13:38:42', NULL),
(32, 'Krankenkasse Stoffel', 23, '2025-04-08 13:38:42', NULL),
(33, 'Krankenkasse Turbenthal', 23, '2025-04-08 13:38:42', NULL),
(34, 'Military insurance', 23, '2025-04-08 13:38:42', NULL),
(35, 'Moove Sympany AG', 23, '2025-04-08 13:38:42', NULL),
(36, 'Mutuel Assurance Maladie SA', 23, '2025-04-08 13:38:42', NULL),
(37, 'Mutuelle Neuchâteloise Assurance Maladie', 23, '2025-04-08 13:38:42', NULL),
(38, 'Philos Assurance Maladie SA', 23, '2025-04-08 13:38:42', NULL),
(39, 'PROVITA assurance santé SA', 23, '2025-04-08 13:38:42', NULL),
(40, 'Rhenusana', 23, '2025-04-08 13:38:42', NULL),
(41, 'Sana24 AG', 23, '2025-04-08 13:38:42', NULL),
(42, 'Sanavals Gesundheitskasse', 23, '2025-04-08 13:38:42', NULL),
(43, 'Sanitas Grundversicherungen AG', 23, '2025-04-08 13:38:42', NULL),
(44, 'Sodalis gesundheitsgruppe', 23, '2025-04-08 13:38:42', NULL),
(45, 'Stiftung Krankenkasse Wädenswil', 23, '2025-04-08 13:38:42', NULL),
(46, 'Sumiswalder Krankenkasse', 23, '2025-04-08 13:38:42', NULL),
(47, 'SUPRA-1846 SA', 23, '2025-04-08 13:38:42', NULL),
(48, 'SWICA Krankenversicherung', 23, '2025-04-08 13:38:42', NULL),
(49, 'Visana AG', 23, '2025-04-08 13:38:42', NULL),
(50, 'vita surselva', 23, '2025-04-08 13:38:42', NULL),
(51, 'Vivacare AG', 23, '2025-04-08 13:38:42', NULL),
(52, 'Vivao Sympany AG', 23, '2025-04-08 13:38:42', NULL),
(53, 'ÖKK Kranken- und Unfallversicherungen AG', 23, '2025-04-08 13:38:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deductible_coverage_hsi_meta`
--

CREATE TABLE `deductible_coverage_hsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deductible_coverage_hsi_meta`
--

INSERT INTO `deductible_coverage_hsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, '0 CHF', 59, '2025-03-18 10:03:19', NULL, 'Hôpital senior'),
(2, '2000 CHF', 59, '2025-03-18 10:03:32', NULL, 'Hôpital senior'),
(3, '5000 CHF', 59, '2025-03-18 10:03:40', NULL, 'Hôpital senior'),
(4, '0 CHF', 59, '2025-03-18 10:04:11', NULL, 'Supplemental hospitalisation insurance'),
(5, '1000 CHF', 59, '2025-03-18 10:04:20', NULL, 'Supplemental hospitalisation insurance'),
(6, '3000 CHF', 59, '2025-03-18 10:04:29', NULL, 'Supplemental hospitalisation insurance');

-- --------------------------------------------------------

--
-- Table structure for table `deductible_coverage_meta`
--

CREATE TABLE `deductible_coverage_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deductible_coverage_meta`
--

INSERT INTO `deductible_coverage_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, '0 CHF', 54, '2025-03-18 09:32:33', NULL, 'Global'),
(2, '150 CHF', 54, '2025-03-18 09:32:53', NULL, 'Global'),
(3, '0 CHF', 54, '2025-03-18 09:33:34', NULL, 'Global confort'),
(4, '150 CHF', 54, '2025-03-18 09:33:45', NULL, 'Global confort'),
(5, '0 CHF', 54, '2025-03-18 09:34:15', NULL, 'Global mi-privée'),
(6, '1000 CHF', 54, '2025-03-18 09:34:41', NULL, 'Global mi-privée'),
(7, '3000 CHF', 54, '2025-03-18 09:34:54', NULL, 'Global mi-privée'),
(8, '0 CHF', 54, '2025-03-18 09:35:15', NULL, 'Global privée'),
(9, '1000 CHF', 54, '2025-03-18 09:35:32', NULL, 'Global privée'),
(10, '3000 CHF', 54, '2025-03-18 09:35:47', NULL, 'Global privée'),
(11, '0 CHF', 54, '2025-03-18 09:36:16', NULL, 'Global smart'),
(12, '500 CHF', 54, '2025-03-18 09:36:24', NULL, 'Global smart');

-- --------------------------------------------------------

--
-- Table structure for table `deductible_coverage_shi_meta`
--

CREATE TABLE `deductible_coverage_shi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deductible_coverage_shi_meta`
--

INSERT INTO `deductible_coverage_shi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, 'No deductible', 68, '2025-03-18 11:20:31', NULL, 'Optimum - Supplemental health insurance'),
(2, 'Annual deductible of CHF 150', 68, '2025-03-18 11:20:55', NULL, 'Optimum - Supplemental health insurance'),
(3, '0 CHF', 68, '2025-03-18 11:21:34', NULL, 'Supplemental health'),
(4, '50 CHF', 68, '2025-03-18 11:21:48', NULL, 'Supplemental health');

-- --------------------------------------------------------

--
-- Table structure for table `deductible_meta`
--

CREATE TABLE `deductible_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deductible_meta`
--

INSERT INTO `deductible_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(2, '100', 37, '2025-02-26 21:24:17', NULL),
(3, '200', 37, '2025-02-26 21:24:22', NULL),
(4, '300', 37, '2025-02-26 21:24:26', NULL),
(5, '400', 37, '2025-02-26 21:24:30', NULL),
(6, '500', 37, '2025-02-26 21:24:34', NULL),
(7, '600', 37, '2025-02-26 21:24:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `franchise_data_meta`
--

CREATE TABLE `franchise_data_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `franchise_data_meta`
--

INSERT INTO `franchise_data_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, '0 ', 40, '2025-05-27 11:16:53', NULL),
(9, '100', 40, '2025-05-27 11:17:00', NULL),
(10, '200', 40, '2025-05-27 11:17:10', NULL),
(11, '300', 40, '2025-05-27 11:17:17', NULL),
(12, '400', 40, '2025-05-27 11:17:24', NULL),
(13, '500', 40, '2025-05-27 11:17:30', NULL),
(14, '600', 40, '2025-05-27 11:17:40', NULL),
(15, '1000', 40, '2025-05-27 11:17:47', NULL),
(16, '1500', 40, '2025-05-27 11:17:56', NULL),
(17, '2500', 40, '2025-05-27 11:18:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gender_meta`
--

CREATE TABLE `gender_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender_meta`
--

INSERT INTO `gender_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Masculine', NULL, NULL, NULL),
(2, 'Female', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health_insurance_meta`
--

CREATE TABLE `health_insurance_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_insurance_meta`
--

INSERT INTO `health_insurance_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Avenir Krankenversicherung AG', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `health_insurer_dasi_meta`
--

CREATE TABLE `health_insurer_dasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_insurer_dasi_meta`
--

INSERT INTO `health_insurer_dasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, 'Mutuel Assurances (SI)', 74, '2025-03-18 19:04:25', NULL, 'Daily allowance'),
(2, 'Avenir Assurances', 74, '2025-03-18 19:04:48', NULL, 'Daily allowance'),
(3, 'Philos', 74, '2025-03-18 19:05:20', NULL, 'Daily allowance');

-- --------------------------------------------------------

--
-- Table structure for table `health_insurer_meta`
--

CREATE TABLE `health_insurer_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `health_insurer_meta`
--

INSERT INTO `health_insurer_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Avenir Assurance Maladie SA', 36, '2025-02-26 21:21:59', NULL),
(2, 'Philos Assurance Maladie SA', 36, '2025-02-26 21:22:08', NULL),
(3, 'Mutuel Assurance Maladie SA', 36, '2025-02-26 21:22:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_companies_meta`
--

CREATE TABLE `insurance_companies_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_user_name_req` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_password_req` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_created_by_col_users` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_companies_meta`
--

INSERT INTO `insurance_companies_meta` (`id`, `collection_id`, `created_at`, `updated_at`, `text_company_name`, `text_user_name_req`, `text_password_req`, `text_mobile`, `rel_created_by_col_users`) VALUES
(16, 13, '2025-01-27 15:57:55', '2025-04-11 04:36:02', 'Groupe Mutuel', '14004', 'Eduardo1973!', NULL, NULL),
(19, 13, '2025-04-22 14:43:04', NULL, 'Test', 'test', 'tesr', 'test', '17'),
(21, 13, '2025-04-25 07:28:48', '2025-04-25 07:38:39', 'Group Mutuel', '14004', 'Eduardo1973!', '0786564646', '27');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_asi_meta`
--

CREATE TABLE `insurance_model_asi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_asi_meta`
--

INSERT INTO `insurance_model_asi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'ActiVita', 82, '2025-03-18 19:52:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_cpsi_meta`
--

CREATE TABLE `insurance_model_cpsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_cpsi_meta`
--

INSERT INTO `insurance_model_cpsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'CY CyberProtect 1 year', 83, '2025-03-18 19:55:03', NULL),
(2, 'CY CyberProtect 3 year', 83, '2025-03-18 19:55:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_dasi_meta`
--

CREATE TABLE `insurance_model_dasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_dasi_meta`
--

INSERT INTO `insurance_model_dasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Daily allowance', 73, '2025-03-18 19:02:13', NULL),
(2, 'Daily allowance LCA', 73, '2025-03-18 19:02:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_dsi_meta`
--

CREATE TABLE `insurance_model_dsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_dsi_meta`
--

INSERT INTO `insurance_model_dsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Soins Dentaire plus', 62, '2025-03-18 10:54:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_gsi_meta`
--

CREATE TABLE `insurance_model_gsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_gsi_meta`
--

INSERT INTO `insurance_model_gsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Global', 52, '2025-03-17 11:23:56', NULL),
(2, 'Global confort', 52, '2025-03-17 11:24:12', NULL),
(3, 'Global famille', 52, '2025-03-17 11:25:43', NULL),
(4, 'Global flex', 52, '2025-03-17 11:25:59', NULL),
(5, 'Global mi-privée', 52, '2025-03-17 11:26:13', NULL),
(6, 'Global privée', 52, '2025-03-17 11:26:28', NULL),
(7, 'Global smart', 52, '2025-03-17 11:26:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_hadsi_meta`
--

CREATE TABLE `insurance_model_hadsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_hadsi_meta`
--

INSERT INTO `insurance_model_hadsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Daily cash benefit loss of earnings in case of hos.', 81, '2025-03-18 19:37:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_hasi_meta`
--

CREATE TABLE `insurance_model_hasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_hasi_meta`
--

INSERT INTO `insurance_model_hasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Alterna', 64, '2025-03-18 11:02:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_hlsi_meta`
--

CREATE TABLE `insurance_model_hlsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_hlsi_meta`
--

INSERT INTO `insurance_model_hlsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'H-Capital', 55, '2025-03-18 09:48:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_hsi_meta`
--

CREATE TABLE `insurance_model_hsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_hsi_meta`
--

INSERT INTO `insurance_model_hsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'H-Bonus', 57, '2025-03-18 09:55:03', NULL),
(2, 'Hôpital senior', 57, '2025-03-18 09:55:23', NULL),
(3, 'Supplemental hospitalisation insurance', 57, '2025-03-18 09:55:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_hssi_meta`
--

CREATE TABLE `insurance_model_hssi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_hssi_meta`
--

INSERT INTO `insurance_model_hssi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Vitalis', 65, '2025-03-18 11:07:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_isi_meta`
--

CREATE TABLE `insurance_model_isi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_isi_meta`
--

INSERT INTO `insurance_model_isi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Sekunda', 78, '2025-03-18 19:28:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_lasi_meta`
--

CREATE TABLE `insurance_model_lasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_lasi_meta`
--

INSERT INTO `insurance_model_lasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'ProVista', 85, '2025-03-19 07:06:25', NULL),
(2, 'ProVista light', 85, '2025-03-19 07:06:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_liasi_meta`
--

CREATE TABLE `insurance_model_liasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_liasi_meta`
--

INSERT INTO `insurance_model_liasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'PrimaCapital - Lump-sum insurance in case of disability or death', 87, '2025-03-19 07:38:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_lsisi_meta`
--

CREATE TABLE `insurance_model_lsisi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_lsisi_meta`
--

INSERT INTO `insurance_model_lsisi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'SafeCapital - Insurance for a lump-sum amount in case of death following an accident or sudden illness', 90, '2025-03-19 07:55:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_lsi_meta`
--

CREATE TABLE `insurance_model_lsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_lsi_meta`
--

INSERT INTO `insurance_model_lsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Legis legal protection 3 years', 69, '2025-03-18 11:50:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_lssi_meta`
--

CREATE TABLE `insurance_model_lssi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_lssi_meta`
--

INSERT INTO `insurance_model_lssi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Legis sana+', 72, '2025-03-18 17:40:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_mtsi_meta`
--

CREATE TABLE `insurance_model_mtsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_mtsi_meta`
--

INSERT INTO `insurance_model_mtsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Mundo', 60, '2025-03-18 10:22:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_model_shi_meta`
--

CREATE TABLE `insurance_model_shi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_model_shi_meta`
--

INSERT INTO `insurance_model_shi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Optimum - Supplemental health insurance', 66, '2025-03-18 11:10:12', NULL),
(2, 'Premium - Supplemental health insurance', 66, '2025-03-18 11:10:36', NULL),
(3, 'Supplemental health', 66, '2025-03-18 11:10:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_type_meta`
--

CREATE TABLE `insurance_type_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_type_meta`
--

INSERT INTO `insurance_type_meta` (`id`, `collection_id`, `created_at`, `updated_at`, `text_title`) VALUES
(3, 12, '2025-01-27 15:57:12', '2025-02-26 21:19:16', 'Standard'),
(4, 12, '2025-01-27 15:57:21', '2025-02-26 21:19:26', 'SanaTel'),
(5, 12, '2025-02-26 21:19:37', NULL, 'PrimaCare'),
(6, 12, '2025-02-26 21:19:49', NULL, 'OptiMed'),
(7, 12, '2025-02-26 21:19:58', NULL, 'PrimaFlex');

-- --------------------------------------------------------

--
-- Table structure for table `invoicing_meta`
--

CREATE TABLE `invoicing_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoicing_meta`
--

INSERT INTO `invoicing_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(2, 'Monthly', 31, '2025-04-10 13:12:15', NULL),
(3, 'Annual', 31, '2025-04-10 13:12:36', NULL),
(4, 'Six-monthly', 31, '2025-04-10 13:13:02', NULL),
(5, 'Quarterly', 31, '2025-04-10 13:13:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `land_bank_meta`
--

CREATE TABLE `land_bank_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'German', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_dasi_meta`
--

CREATE TABLE `level_coverage_dasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_dasi_meta`
--

INSERT INTO `level_coverage_dasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, '365/450', 75, '2025-03-18 19:08:57', NULL, 'Daily allowance LCA'),
(2, '730/900', 75, '2025-03-18 19:09:21', NULL, 'Daily allowance LCA'),
(3, '1095/1350', 75, '2025-03-18 19:09:37', NULL, 'Daily allowance LCA'),
(4, '730/case', 75, '2025-03-18 19:09:51', NULL, 'Daily allowance LCA');

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_dsi_meta`
--

CREATE TABLE `level_coverage_dsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_dsi_meta`
--

INSERT INTO `level_coverage_dsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'L1 1\'000', 63, '2025-03-18 10:55:32', NULL),
(2, 'L2 3\'000', 63, '2025-03-18 10:55:47', NULL),
(3, 'L3 15\'000', 63, '2025-03-18 10:56:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_gsi_meta`
--

CREATE TABLE `level_coverage_gsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_gsi_meta`
--

INSERT INTO `level_coverage_gsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, 'L1 1 bed', 53, '2025-03-17 11:29:32', '2025-03-18 08:01:31', 'Global confort'),
(2, 'L1 2 beds', 53, '2025-03-17 11:29:44', '2025-03-18 08:01:37', 'Global confort'),
(3, 'L1 Temporis', 53, '2025-03-17 11:29:56', '2025-03-18 08:01:43', 'Global confort'),
(4, 'L2 1 bed', 53, '2025-03-17 11:30:11', '2025-03-18 08:01:48', 'Global confort'),
(5, 'L2 2 beds', 53, '2025-03-17 11:31:10', '2025-03-18 08:01:54', 'Global confort'),
(6, 'L2 Temporis', 53, '2025-03-17 11:31:36', '2025-03-18 08:02:01', 'Global confort'),
(7, 'L3 1 bed', 53, '2025-03-17 11:32:05', '2025-03-18 08:02:10', 'Global confort'),
(8, 'L3 2 beds', 53, '2025-03-17 11:32:05', '2025-03-18 08:02:16', 'Global confort'),
(9, 'L3 Temporis', 53, '2025-03-17 11:32:05', '2025-03-18 08:02:23', 'Global confort'),
(10, 'L4 1 bed', 53, '2025-03-17 11:32:56', '2025-03-18 08:02:28', 'Global confort'),
(11, 'L4 2 beds', 53, '2025-03-17 11:33:09', '2025-03-18 08:02:33', 'Global confort'),
(12, 'L4 Temporis', 53, '2025-03-17 11:33:24', '2025-03-18 08:02:38', 'Global confort'),
(13, 'Level 1', 53, '2025-03-17 11:34:19', '2025-03-18 08:03:30', 'Global'),
(14, 'Level 1 temporis', 53, '2025-03-17 11:34:27', '2025-03-18 08:03:34', 'Global'),
(15, 'Level 2', 53, '2025-03-17 11:34:37', '2025-03-18 08:03:40', 'Global'),
(16, 'Level 2 temporis', 53, '2025-03-17 11:34:45', '2025-03-18 08:03:46', 'Global'),
(17, 'Level 3', 53, '2025-03-17 11:34:55', '2025-03-18 08:03:51', 'Global'),
(18, 'Level 3 temporis', 53, '2025-03-17 11:35:02', '2025-03-18 08:03:56', 'Global'),
(19, 'Level 4', 53, '2025-03-17 11:35:13', '2025-03-18 08:04:01', 'Global'),
(20, 'Level 4 temporis', 53, '2025-03-17 11:35:20', '2025-03-18 08:04:07', 'Global'),
(21, 'Without discount', 53, '2025-03-17 11:35:44', '2025-03-18 08:04:24', 'Global famille'),
(22, 'Hospital only', 53, '2025-03-17 11:36:34', '2025-03-18 08:04:52', 'Global flex'),
(23, 'Hospital + supplemental health', 53, '2025-03-17 11:36:46', '2025-03-18 08:04:59', 'Global flex'),
(24, 'Level 1', 53, '2025-03-17 11:37:26', '2025-03-18 08:05:34', 'Global mi-privée'),
(25, 'Level 1 temporis', 53, '2025-03-17 11:37:39', '2025-03-18 08:05:39', 'Global mi-privée'),
(26, 'Worlwide', 53, '2025-03-18 09:27:30', NULL, 'Global privée'),
(27, 'Swiss', 53, '2025-03-18 09:27:48', NULL, 'Global privée'),
(28, 'Temporis', 53, '2025-03-18 09:28:20', NULL, 'Global privée'),
(29, 'Level 1 - Basic', 53, '2025-03-18 09:28:50', NULL, 'Global smart'),
(30, 'Level 2 - Medium', 53, '2025-03-18 09:29:15', NULL, 'Global smart'),
(31, 'Level 3 - Comfort semiprivate', 53, '2025-03-18 09:29:31', NULL, 'Global smart'),
(32, 'Level 3 - Comfort private', 53, '2025-03-18 09:29:50', NULL, 'Global smart'),
(33, 'Upgrade abroad', 53, '2025-03-18 09:30:08', NULL, 'Global smart');

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_hlsi_meta`
--

CREATE TABLE `level_coverage_hlsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_hlsi_meta`
--

INSERT INTO `level_coverage_hlsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Lump-sum 300', 56, '2025-03-18 09:49:58', NULL),
(2, 'Lump-sum 500', 56, '2025-03-18 09:50:27', NULL),
(3, 'Lump-sum 600', 56, '2025-03-18 09:50:34', NULL),
(4, 'Lump-sum 900', 56, '2025-03-18 09:50:40', NULL),
(5, 'Lump-sum 1000', 56, '2025-03-18 09:50:58', NULL),
(6, 'Lump-sum 1200', 56, '2025-03-18 09:51:04', NULL),
(7, 'Lump-sum 1500', 56, '2025-03-18 09:51:11', NULL),
(8, 'Lump-sum 2000', 56, '2025-03-18 09:51:25', NULL),
(9, 'Lump-sum 2500', 56, '2025-03-18 09:51:32', NULL),
(10, 'Lump-sum 3000', 56, '2025-03-18 09:51:38', NULL),
(11, 'Lump-sum 3500', 56, '2025-03-18 09:51:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_hsi_meta`
--

CREATE TABLE `level_coverage_hsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_hsi_meta`
--

INSERT INTO `level_coverage_hsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, 'Public 2 beds', 58, '2025-03-18 09:57:12', NULL, 'Hôpital senior'),
(2, 'Public 1 bed', 58, '2025-03-18 09:57:43', NULL, 'Hôpital senior'),
(3, 'Semi-private', 58, '2025-03-18 09:58:02', NULL, 'Hôpital senior'),
(4, 'Private', 58, '2025-03-18 09:58:20', NULL, 'Hôpital senior'),
(5, 'Public', 58, '2025-03-18 09:59:13', NULL, 'Supplemental hospitalisation insurance'),
(6, 'Semi-private', 58, '2025-03-18 09:59:45', NULL, 'Supplemental hospitalisation insurance'),
(7, 'Private', 58, '2025-03-18 10:00:02', NULL, 'Supplemental hospitalisation insurance'),
(8, 'Private worldwide', 58, '2025-03-18 10:00:19', NULL, 'Supplemental hospitalisation insurance');

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_isi_meta`
--

CREATE TABLE `level_coverage_isi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_isi_meta`
--

INSERT INTO `level_coverage_isi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'CHF 30.00 per day', 79, '2025-03-18 19:29:19', NULL),
(2, 'CHF 50.00 per day', 79, '2025-03-18 19:29:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_lasi_meta`
--

CREATE TABLE `level_coverage_lasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_lasi_meta`
--

INSERT INTO `level_coverage_lasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, 'Disab. prog. death   2500 disab.  100000', 86, '2025-03-19 07:08:37', NULL, 'ProVista'),
(2, 'Disab. prog. death   3000 disab.  50000', 86, '2025-03-19 07:08:37', '2025-03-19 07:09:12', 'ProVista'),
(3, 'Disab. prog. death   3000 disab.  75000', 86, '2025-03-19 07:09:32', NULL, 'ProVista'),
(4, 'Disab. prog. death 3000 disab. 100000', 86, '2025-03-19 07:09:52', NULL, 'ProVista'),
(5, 'Disab. prog. death   5000 disab.  10000', 86, '2025-03-19 07:10:40', NULL, 'ProVista'),
(6, 'Disab. prog. death   5000 disab.  30000', 86, '2025-03-19 07:10:59', NULL, 'ProVista'),
(7, 'Disab. prog. death   5000 disab.  50000', 86, '2025-03-19 07:11:20', NULL, 'ProVista'),
(8, 'Disab. prog. death   5000 disab.  60000', 86, '2025-03-19 07:13:28', NULL, 'ProVista'),
(9, 'Disab. prog. death 5000 disab. 75000', 86, '2025-03-19 07:13:56', NULL, 'ProVista'),
(10, 'Disab. prog. death 5000 disab. 100000', 86, '2025-03-19 07:14:07', NULL, 'ProVista'),
(11, 'Disab. prog. death 5000 disab. 150000', 86, '2025-03-19 07:14:26', NULL, 'ProVista'),
(12, 'Disab. prog. death 5000 disab. 200000', 86, '2025-03-19 07:14:41', NULL, 'ProVista'),
(13, 'Disab. prog. death 5000 disab. 250000', 86, '2025-03-19 07:15:00', NULL, 'ProVista'),
(14, 'Disab. prog. death 5000 disab. 300000', 86, '2025-03-19 07:15:15', NULL, 'ProVista'),
(15, 'Disab. prog. death 10000 disab. 20000', 86, '2025-03-19 07:15:53', NULL, 'ProVista'),
(16, 'Disab. prog. death 10000 disab. 30000', 86, '2025-03-19 07:16:14', NULL, 'ProVista'),
(17, 'Disab. prog. death 10000 disab. 60000', 86, '2025-03-19 07:16:27', NULL, 'ProVista'),
(18, 'Disab. prog. death 10000 disab. 75000', 86, '2025-03-19 07:17:09', NULL, 'ProVista'),
(19, 'Disab. prog. death 10000 disab. 100000', 86, '2025-03-19 07:17:38', NULL, 'ProVista'),
(20, 'Disab. prog. death 10000 disab. 150000', 86, '2025-03-19 07:18:00', NULL, 'ProVista'),
(21, 'Disab. prog. death 10000 disab. 200000', 86, '2025-03-19 07:18:44', NULL, 'ProVista'),
(22, 'Disab. prog. death 10000 disab. 300000', 86, '2025-03-19 07:19:08', NULL, 'ProVista'),
(23, 'Disab. prog. death  15000 disab.  30000', 86, '2025-03-19 07:20:16', NULL, 'ProVista'),
(24, 'Disab. prog. death 20000  disab. 30000', 86, '2025-03-19 07:20:46', NULL, 'ProVista'),
(25, 'Disab. prog. death 20000 disab. 40000', 86, '2025-03-19 07:21:36', NULL, 'ProVista'),
(26, 'Disab. prog. death 20000 disab. 100000', 86, '2025-03-19 07:21:59', NULL, 'ProVista'),
(27, 'Disab. prog. death 20000 disab. 200000', 86, '2025-03-19 07:22:13', NULL, 'ProVista'),
(28, 'Disab. prog. death  20000 disab. 300000', 86, '2025-03-19 07:24:01', NULL, 'ProVista'),
(29, 'Disab. prog. death   25000 disab.  50000', 86, '2025-03-19 07:25:49', NULL, 'ProVista'),
(30, 'Disab. prog. death  30000 disab. 100000', 86, '2025-03-19 07:26:24', NULL, 'ProVista'),
(31, 'Disab. prog. death  30000 disab. 60000', 86, '2025-03-19 07:26:47', '2025-03-19 07:27:32', 'ProVista'),
(32, 'Disab. prog. death  30000 disab. 200000', 86, '2025-03-19 07:27:18', NULL, 'ProVista'),
(33, 'Disab. prog. death  40000 disab. 80000', 86, '2025-03-19 07:31:04', NULL, 'ProVista'),
(34, 'Capital 20000', 86, '2025-03-19 07:33:50', NULL, 'ProVista Light'),
(35, 'Capital 25000', 86, '2025-03-19 07:34:00', NULL, 'ProVista Light'),
(36, 'Capital 50000', 86, '2025-03-19 07:34:14', NULL, 'ProVista Light'),
(37, 'Capital 100000', 86, '2025-03-19 07:34:33', '2025-03-19 07:35:02', 'ProVista Light'),
(38, 'Capital 150000', 86, '2025-03-19 07:34:46', '2025-03-19 07:35:09', 'ProVista Light'),
(39, 'Capital 200000', 86, '2025-03-19 07:35:19', NULL, 'ProVista Light');

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_liasi_meta`
--

CREATE TABLE `level_coverage_liasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_liasi_meta`
--

INSERT INTO `level_coverage_liasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, '10,000', 88, '2025-03-19 07:39:42', NULL),
(2, '25,000', 88, '2025-03-19 07:39:56', NULL),
(3, '50,000', 88, '2025-03-19 07:40:03', NULL),
(4, '75,000', 88, '2025-03-19 07:40:12', NULL),
(5, '100,000', 88, '2025-03-19 07:40:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_lsisi_meta`
--

CREATE TABLE `level_coverage_lsisi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_lsisi_meta`
--

INSERT INTO `level_coverage_lsisi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Insured amount CHF 100,000.00', 91, '2025-03-19 07:56:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_lsi_meta`
--

CREATE TABLE `level_coverage_lsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_lsi_meta`
--

INSERT INTO `level_coverage_lsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Mobility legal protection insurance - Legis Strada', 70, '2025-03-18 11:53:51', NULL),
(2, 'Personal and mobility legal protection insurance - Legis Duo', 70, '2025-03-18 11:54:04', NULL),
(3, 'Personal legal protection insurance - Legis Priva', 70, '2025-03-18 11:54:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_mtsi_meta`
--

CREATE TABLE `level_coverage_mtsi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_mtsi_meta`
--

INSERT INTO `level_coverage_mtsi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Without discount', 61, '2025-03-18 10:23:00', NULL),
(2, 'With discount', 61, '2025-03-18 10:23:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level_coverage_shi_meta`
--

CREATE TABLE `level_coverage_shi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level_coverage_shi_meta`
--

INSERT INTO `level_coverage_shi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, 'Without family discount', 67, '2025-03-18 11:14:22', NULL, 'Optimum - Supplemental health insurance'),
(2, 'Without family discount', 67, '2025-03-18 11:14:59', NULL, 'Premium - Supplemental health insurance'),
(3, 'Level 1', 67, '2025-03-18 11:15:42', NULL, 'Supplemental health'),
(4, 'Level 2', 67, '2025-03-18 11:15:52', NULL, 'Supplemental health'),
(5, 'Level 3', 67, '2025-03-18 11:16:03', NULL, 'Supplemental health'),
(6, 'Level 4', 67, '2025-03-18 11:16:13', NULL, 'Supplemental health');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_01_071004_create_personal_access_tokens_table', 1),
(5, '2025_01_01_071412_create_roles_table', 2),
(6, '2025_01_01_071533_create_user_roles_table', 2),
(7, '2025_01_01_072018_add_name_to_roles_table', 3),
(10, '2025_01_01_072255_create_personal_access_tokens_table', 4),
(11, '2025_01_03_130022_create_collection_table', 4),
(12, '2025_01_06_122624_create_test_four_meta_table', 5),
(13, '2025_01_06_124755_create_collections_table', 6),
(14, '2025_01_06_125502_create_contracts_meta_table', 7),
(15, '2025_01_06_130724_create_contracts_meta_table', 8),
(16, '2025_01_06_130933_create_contracts_second_meta_table', 9),
(17, '2025_01_07_065111_create_user_metas_table', 10),
(18, '2025_01_07_080352_create_contracts_meta_table', 11),
(19, '2025_01_07_134328_create_contract_meta_table', 12),
(20, '2025_01_09_133818_add_last_login_and_settings_to_user_metas_table', 13),
(21, '2025_01_10_141633_drop_type_column_from_collections_table', 13),
(22, '2025_01_13_121907_create_settings_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `niveau_package_meta`
--

CREATE TABLE `niveau_package_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `niveau_package_meta`
--

INSERT INTO `niveau_package_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'STARTER_SAFE_PLUS', 46, '2025-03-05 09:45:34', NULL),
(2, 'STARTER_SAFE_STANDARD', 46, '2025-03-05 09:45:45', NULL),
(3, 'LEGAL_SAFE_FAMILY_MEMBER', 46, '2025-03-05 09:46:04', NULL),
(4, 'LEGAL_SAFE_FAMILY', 46, '2025-03-05 09:46:15', NULL),
(5, 'LEGAL_SAFE_INDIVIDUAL', 46, '2025-03-05 09:46:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `occupational_status_meta`
--

CREATE TABLE `occupational_status_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupational_status_meta`
--

INSERT INTO `occupational_status_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(7, 'Employee', 41, '2025-04-14 20:19:21', NULL),
(8, 'Self-employed', 41, '2025-04-14 20:19:42', NULL),
(9, 'Unemployed', 41, '2025-04-14 20:19:58', NULL),
(10, 'Diplomat', 41, '2025-04-14 20:21:38', NULL),
(11, 'Pensioner', 41, '2025-04-14 20:22:59', NULL),
(12, 'Other', 41, '2025-04-14 20:23:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offers_meta`
--

CREATE TABLE `offers_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `text_meta_title_req` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_customer_req_col_users` bigint UNSIGNED DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_templates_req_col_collections` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers_meta`
--

INSERT INTO `offers_meta` (`id`, `text_meta_title_req`, `rel_customer_req_col_users`, `collection_id`, `created_at`, `updated_at`, `file_pdf`, `text_status`, `rel_templates_req_col_collections`) VALUES
(180, 'Group Mutuel Template', 38, 17, '2025-05-05 07:37:30', '2025-05-05 07:46:02', 'assets/offers/offer_offer_36629_1746431162.pdf', 'Ready', 'template_groupe_mutuel_template'),
(181, 'Group Mutuel Template', 38, 17, '2025-05-05 07:50:13', '2025-05-05 08:01:56', 'assets/offers/offer_offer_92153_1746432116.pdf', 'Ready', 'template_groupe_mutuel_template'),
(182, 'Group Mutuel Template', 30, 17, '2025-05-05 07:51:37', '2025-05-05 08:10:42', 'assets/offers/offer_offer_85809_1746432642.pdf', 'Ready', 'template_groupe_mutuel_template'),
(183, 'Group Mutuel Template', 30, 17, '2025-05-05 08:32:23', '2025-05-05 08:44:24', 'assets/offers/offer_offer_67574_1746434664.pdf', 'Ready', 'template_groupe_mutuel_template'),
(184, 'Group Mutuel Template', 38, 17, '2025-05-05 10:13:03', NULL, NULL, 'Creating Offer', 'template_groupe_mutuel_template'),
(185, 'Group Mutuel Template', 30, 17, '2025-05-05 10:14:16', '2025-05-05 10:34:04', 'assets/offers/offer_offer_90972_1746441244.pdf', 'Ready', 'template_groupe_mutuel_template'),
(186, 'Group Mutuel Template', 30, 17, '2025-05-05 10:35:13', '2025-05-05 10:44:31', 'assets/offers/offer_offer_81538_1746441871.pdf', 'Ready', 'template_groupe_mutuel_template'),
(187, 'Group Mutuel Template', 38, 17, '2025-05-05 10:35:43', '2025-05-05 10:52:51', 'assets/offers/offer_offer_5022_1746442371.pdf', 'Ready', 'template_groupe_mutuel_template'),
(188, 'Group Mutuel Template', 38, 17, '2025-05-05 10:38:06', '2025-05-05 11:00:47', 'assets/offers/offer_offer_58618_1746442847.pdf', 'Ready', 'template_groupe_mutuel_template'),
(189, 'Group Mutuel Template', 30, 17, '2025-05-05 11:08:13', '2025-05-05 11:18:14', 'assets/offers/offer_offer_81095_1746443894.pdf', 'Ready', 'template_groupe_mutuel_template'),
(190, 'Group Mutuel Template', 38, 17, '2025-05-05 11:21:05', '2025-05-05 11:30:56', 'assets/offers/offer_offer_4422_1746444656.pdf', 'Ready', 'template_groupe_mutuel_template'),
(191, 'Group Mutuel Template', 38, 17, '2025-05-05 15:32:58', '2025-05-05 15:44:03', 'assets/offers/offer_offer_52783_1746459843.pdf', 'Ready', 'template_groupe_mutuel_template'),
(192, 'Group Mutuel Template', 30, 17, '2025-05-05 15:33:42', '2025-05-05 15:52:18', 'assets/offers/offer_offer_74005_1746460338.pdf', 'Ready', 'template_groupe_mutuel_template'),
(193, 'Group Mutuel Template', 38, 17, '2025-05-06 06:28:28', '2025-05-06 06:42:19', 'assets/offers/offer_offer_60631_1746513739.pdf', 'Ready', 'template_groupe_mutuel_template'),
(194, 'Group Mutuel Template', 30, 17, '2025-05-06 06:43:47', '2025-05-06 06:55:45', 'assets/offers/offer_offer_232_1746514545.pdf', 'Ready', 'template_groupe_mutuel_template'),
(195, 'Group Mutuel Template', 38, 17, '2025-05-06 06:58:42', '2025-05-06 07:08:07', 'assets/offers/offer_offer_34563_1746515287.pdf', 'Ready', 'template_groupe_mutuel_template'),
(196, 'Group Mutuel Template', 30, 17, '2025-05-06 07:09:42', '2025-05-06 07:22:37', 'assets/offers/offer_offer_22912_1746516157.pdf', 'Ready', 'template_groupe_mutuel_template'),
(197, 'Group Mutuel Template', 38, 17, '2025-05-06 12:22:35', '2025-05-06 12:34:07', 'assets/offers/offer_offer_43401_1746534847.pdf', 'Ready', 'template_groupe_mutuel_template'),
(198, 'Group Mutuel Template', 30, 17, '2025-05-06 12:25:19', '2025-05-06 12:42:26', 'assets/offers/offer_offer_87100_1746535346.pdf', 'Ready', 'template_groupe_mutuel_template'),
(199, 'Group Mutuel Template', 38, 17, '2025-05-06 12:33:01', '2025-05-06 12:50:13', 'assets/offers/offer_offer_50447_1746535813.pdf', 'Ready', 'template_groupe_mutuel_template'),
(200, 'Group Mutuel Template', 40, 17, '2025-05-06 12:34:06', '2025-05-06 13:12:02', NULL, 'Failed', 'template_groupe_mutuel_template'),
(201, 'Group Mutuel Template', 40, 17, '2025-05-06 12:36:29', '2025-05-06 13:19:05', NULL, 'Failed', 'template_groupe_mutuel_template'),
(202, 'test 66', 40, 17, '2025-05-06 13:32:13', '2025-05-06 14:48:59', 'assets/offers/offer_offer_18057_1746542939.pdf', 'Ready', 'template_groupe_mutuel_template'),
(203, 'Group Mutuel Template', 40, 17, '2025-05-13 07:56:49', '2025-05-13 08:09:06', 'assets/offers/offer_offer_41934_1747123746.pdf', 'Ready', 'template_groupe_mutuel_template'),
(204, 'Group Mutuel Template', 40, 17, '2025-05-13 07:57:31', '2025-05-13 08:19:56', 'assets/offers/offer_offer_16498_1747124396.pdf', 'Ready', 'template_groupe_mutuel_template'),
(205, 'Group Mutuel Template', 30, 17, '2025-05-13 07:58:01', '2025-05-13 08:29:41', 'assets/offers/offer_offer_93348_1747124981.pdf', 'Ready', 'template_groupe_mutuel_template'),
(206, 'Group Mutuel Template', 40, 17, '2025-05-13 07:58:23', '2025-05-13 08:40:36', 'assets/offers/offer_offer_4983_1747125636.pdf', 'Ready', 'template_groupe_mutuel_template'),
(207, 'Group Mutuel Template', 30, 17, '2025-05-13 20:04:24', '2025-05-13 20:19:07', 'assets/offers/offer_offer_86303_1747167547.pdf', 'Ready', 'template_groupe_mutuel_template'),
(208, 'Group Mutuel Template', 30, 17, '2025-05-13 20:04:39', '2025-05-13 20:30:03', 'assets/offers/offer_offer_10700_1747168203.pdf', 'Ready', 'template_groupe_mutuel_template'),
(209, 'Group Mutuel Template', 38, 17, '2025-05-14 21:09:46', '2025-05-14 21:33:57', 'assets/offers/offer_offer_57727_1747258437.pdf', 'Ready', 'template_groupe_mutuel_template'),
(210, 'Group Mutuel Template', 40, 17, '2025-05-26 12:50:10', '2025-05-26 13:21:08', 'assets/offers/offer_offer_55647_1748265668.pdf', 'Ready', 'template_groupe_mutuel_template'),
(211, 'Group Mutuel Template', 41, 17, '2025-05-26 12:50:45', '2025-05-26 13:12:32', 'assets/offers/offer_offer_38040_1748265152.pdf', 'Ready', 'template_groupe_mutuel_template'),
(212, 'Nur KVG', 41, 17, '2025-05-26 13:14:20', '2025-05-26 13:22:49', NULL, 'Failed', 'template_nur_kvg'),
(213, 'test offer', 30, 17, '2025-05-26 13:33:23', '2025-05-26 13:39:29', NULL, 'Failed', 'template_nur_kvg'),
(214, 'test offer 1', 38, 17, '2025-05-26 13:36:07', '2025-05-26 13:39:56', NULL, 'Failed', 'template_nur_kvg'),
(215, 'test offer3', 30, 17, '2025-05-26 13:53:18', '2025-05-26 14:04:41', 'assets/offers/offer_offer_47545_1748268281.pdf', 'Ready', 'template_groupe_mutuel_template'),
(216, 'test offer 4', 30, 17, '2025-05-26 13:54:22', '2025-05-26 14:14:18', NULL, 'Failed', 'template_nur_kvg'),
(217, 'test 4', 30, 17, '2025-05-26 13:55:02', '2025-05-26 14:13:36', 'assets/offers/offer_offer_82108_1748268816.pdf', 'Ready', 'template_groupe_mutuel_template'),
(218, 'test offer 5', 30, 17, '2025-05-26 14:17:26', '2025-05-26 14:26:08', 'assets/offers/offer_offer_44004_1748269568.pdf', 'Ready', 'template_test_template'),
(219, 'Test 5', 30, 17, '2025-05-26 14:28:09', '2025-05-26 14:35:25', NULL, 'Failed', 'template_nur_kvg'),
(220, 'Test 5.0', 30, 17, '2025-05-26 14:35:46', '2025-05-26 14:44:30', 'assets/offers/offer_offer_31399_1748270670.pdf', 'Ready', 'template_test_template'),
(221, 'Test 5.1', 30, 17, '2025-05-26 14:37:24', '2025-05-28 13:02:05', 'assets/offers/offer_offer_51658_1748437325.pdf', 'Ready', 'template_nur_kvg'),
(222, 'test offer 6', 30, 17, '2025-05-26 22:11:52', '2025-05-26 22:20:25', 'assets/offers/offer_offer_89656_1748298025.pdf', 'Ready', 'template_groupe_mutuel_template'),
(223, 'test offer 7', 30, 17, '2025-05-26 22:12:12', '2025-05-26 22:24:16', 'assets/offers/offer_offer_30577_1748298256.pdf', 'Ready', 'template_nur_kvg'),
(225, 'Nur KVG', 40, 17, '2025-05-27 09:35:30', '2025-05-27 09:48:23', 'assets/offers/offer_offer_25583_1748339303.pdf', 'Ready', 'template_nur_kvg'),
(226, 'Group Mutuel Template', 40, 17, '2025-05-27 09:35:56', '2025-05-27 09:56:47', 'assets/offers/offer_offer_39170_1748339807.pdf', 'Ready', 'template_groupe_mutuel_template'),
(227, 'Nur KVG', 30, 17, '2025-06-05 07:28:23', '2025-06-05 08:15:04', NULL, 'Failed', 'template_nur_kvg'),
(228, 'Nur KVG', 46, 17, '2025-06-05 07:56:49', '2025-06-05 08:17:06', NULL, 'Failed', 'template_nur_kvg'),
(229, 'Nur KVG', 46, 17, '2025-06-05 07:58:11', '2025-06-10 09:42:04', 'assets/offers/offer_offer_6992_1749548524.pdf', 'Ready', 'template_nur_kvg'),
(230, 'test offer 1', 30, 17, '2025-06-05 12:35:28', '2025-06-05 12:47:17', NULL, 'Failed', 'template_nur_kvg'),
(231, 'Nur KVG', 30, 17, '2025-06-05 12:57:00', '2025-06-05 13:02:29', NULL, 'Failed', 'template_nur_kvg'),
(232, 'test offer 12', 38, 17, '2025-06-10 09:42:03', '2025-06-10 09:46:22', 'assets/offers/offer_offer_56491_1749548782.pdf', 'Ready', 'template_nur_kvg');

-- --------------------------------------------------------

--
-- Table structure for table `packages_lca_meta`
--

CREATE TABLE `packages_lca_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages_lca_meta`
--

INSERT INTO `packages_lca_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'LegalSafe', 42, '2025-03-05 09:13:02', NULL),
(2, 'StarterSafe', 42, '2025-03-05 09:13:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('jane.doe@example.com', '$2y$12$TEjv8rbhN/E9iRjcCmutw.8ENo10km1BHRLOVC1zMz13SP4VxVIfW', '2025-01-07 09:10:00'),
('test@test.com', '$2y$12$aX8i1nBp.aGpU14M7c1ZlOUC0zGn0UXPhf6qvANVWnqdLSoZkwVVC', '2025-01-24 05:34:00'),
('waqarahmedshakir15@gmail.com', '$2y$12$wNr7CpVpmRW4ZhAdT4UIdO2BKq4B0yoWPBHR/7Og0iI1zXXb8XfCO', '2025-01-30 15:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_meta`
--

CREATE TABLE `payment_method_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_method_meta`
--

INSERT INTO `payment_method_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(2, 'Invoice sent by mail', 29, '2025-04-10 13:23:47', NULL),
(3, 'Bank by LSV', 29, '2025-04-10 13:24:14', NULL),
(4, 'Post office direct debit', 29, '2025-04-10 13:24:36', NULL),
(5, 'E-bill', 29, '2025-04-10 13:24:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permit_meta`
--

CREATE TABLE `permit_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permit_meta`
--

INSERT INTO `permit_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'B non-EU permit', 94, '2025-04-16 14:09:17', NULL),
(2, 'C non-EU permit', 94, '2025-04-16 14:09:37', NULL),
(3, 'F permit', 94, '2025-04-16 14:10:05', NULL),
(4, 'G non-EU permit', 94, '2025-04-16 14:10:20', NULL),
(5, 'L EU/EFTA permit', 94, '2025-04-16 14:10:31', NULL),
(6, 'Legitimation card with immunity', 94, '2025-04-16 14:10:43', NULL),
(7, 'Legitimation card without immunity', 94, '2025-04-16 14:10:54', NULL),
(8, 'N permit', 94, '2025-04-16 14:11:06', NULL),
(9, 'Non-UE/EFTA resident', 94, '2025-04-16 14:11:16', NULL),
(10, 'Permit in progress', 94, '2025-04-16 14:11:26', NULL),
(11, 'S permit', 94, '2025-04-16 14:11:37', NULL),
(12, 'Undocumented', 94, '2025-04-16 14:11:49', NULL),
(13, 'Unknown', 94, '2025-04-16 14:11:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'API Token', '19131ac840adb73a00778b9bedd2b74e150bfcefeb22cded00304a974c03e127', '[\"*\"]', NULL, NULL, '2025-01-07 02:28:57', '2025-01-07 02:28:57'),
(2, 'App\\Models\\User', 3, 'API Token', '972762f34b9b86e2a3ddbf00ad541958a495f078298a5d0d78259d4ae11cc196', '[\"*\"]', NULL, NULL, '2025-01-07 02:30:12', '2025-01-07 02:30:12'),
(4, 'App\\Models\\User', 8, 'API Token', 'a666f0aef0dc549b1df38525a4faa5985292184ca8dc04f2b886cac6bb736074', '[\"*\"]', NULL, NULL, '2025-01-07 03:34:50', '2025-01-07 03:34:50'),
(5, 'App\\Models\\User', 8, 'API Token', 'e129b80d4ef72ff630c0df5136efcb56d2617717da25499cb768207a9bed55ec', '[\"*\"]', NULL, NULL, '2025-01-07 03:35:51', '2025-01-07 03:35:51'),
(7, 'App\\Models\\User', 8, 'API Token', '0d691276fdd77d0b6616005e0f0747f689ce3a5aad4732f8fd0b1431971b6512', '[\"*\"]', '2025-01-07 06:48:20', NULL, '2025-01-07 04:23:26', '2025-01-07 06:48:20'),
(8, 'App\\Models\\User', 8, 'API Token', '8bb671ae2242152979cb877e148c49fc2b0e41262ebf4e60a1b9f31865c0f815', '[\"*\"]', '2025-01-08 09:24:56', NULL, '2025-01-07 08:43:10', '2025-01-08 09:24:56'),
(9, 'App\\Models\\User', 8, 'API Token', '34db7c726824d1768ba4995304844ba946ebecb0cc21801d348d5b1b01875d6c', '[\"*\"]', NULL, NULL, '2025-01-08 10:08:59', '2025-01-08 10:08:59'),
(10, 'App\\Models\\User', 8, 'API Token', 'daa7d6d76d8d1e527d1028d9ffbf53fa8f9e35e8160db9d556e95b642b3d2bf0', '[\"*\"]', NULL, NULL, '2025-01-09 07:00:54', '2025-01-09 07:00:54'),
(11, 'App\\Models\\User', 8, 'API Token', '5e844eea0ffb2afecbdbc9bd90a3fb1956dc467dd1d9870372f5d4feee61d6fd', '[\"*\"]', '2025-02-22 19:29:33', NULL, '2025-01-09 07:12:02', '2025-02-22 19:29:33'),
(12, 'App\\Models\\User', 8, 'API Token', '7cf851e2c1f62aadde280c059ac17d231e5da41015be2e5f422a70446213a7f4', '[\"*\"]', NULL, NULL, '2025-01-15 08:03:13', '2025-01-15 08:03:13'),
(13, 'App\\Models\\User', 8, 'API Token', '186cfd3a2e29686fd29341030f5e5425dae0b723626622c427638327f1b0f312', '[\"*\"]', NULL, NULL, '2025-01-15 08:43:38', '2025-01-15 08:43:38'),
(14, 'App\\Models\\User', 8, 'API Token', '440f2b0dd94e8e6ba98901cf2258498b6a2f7bcb6d44bba501f0e11d89d04aff', '[\"*\"]', '2025-01-20 07:39:01', NULL, '2025-01-17 16:27:43', '2025-01-20 07:39:01'),
(15, 'App\\Models\\User', 8, 'API Token', 'ab68b3f06e0773201f81e645e12e274d3a4d95f93cc8b88d9a6bf94aa34bd0a3', '[\"*\"]', '2025-02-28 14:24:04', NULL, '2025-01-20 07:36:57', '2025-02-28 14:24:04'),
(16, 'App\\Models\\User', 17, 'API Token', '4428e4b0c419e54ae1dcdbc3384bc748e6fe7cd3a3826b8f190fadc00aa9f3ae', '[\"*\"]', NULL, NULL, '2025-01-21 08:28:39', '2025-01-21 08:28:39'),
(17, 'App\\Models\\User', 17, 'API Token', '645228e140d1a4d7c97037f5897e5b4da7cfdd22a403234a8a4c41f5028e3c9e', '[\"*\"]', NULL, NULL, '2025-01-21 08:30:05', '2025-01-21 08:30:05'),
(18, 'App\\Models\\User', 17, 'API Token', '8df2f2e14443c44764012fd706017ec7950443e6fa0655f00d910d16dd757853', '[\"*\"]', NULL, NULL, '2025-01-21 08:31:57', '2025-01-21 08:31:57'),
(19, 'App\\Models\\User', 17, 'API Token', '24ed080295c90b86fc7101f770b74f3fe49490e59e5546bc9dcf30546602d28e', '[\"*\"]', NULL, NULL, '2025-01-21 08:54:48', '2025-01-21 08:54:48'),
(20, 'App\\Models\\User', 17, 'API Token', '9e317bbbd4ab24b75e159ac98153ed978fa28c808bc69723658768e1763c00c4', '[\"*\"]', NULL, NULL, '2025-01-21 08:55:21', '2025-01-21 08:55:21'),
(21, 'App\\Models\\User', 17, 'API Token', 'ecd7ef1ec6e51b258a78bd1c4c23ac7dce2dc8b27f95ce6ea26c8dd234eb8ee7', '[\"*\"]', NULL, NULL, '2025-01-21 09:00:22', '2025-01-21 09:00:22'),
(22, 'App\\Models\\User', 17, 'API Token', 'a9692f620cefede6d41b3a42ad4c3ac92849aabb8ca86e4fc11e072796fa8888', '[\"*\"]', NULL, NULL, '2025-01-21 09:07:58', '2025-01-21 09:07:58'),
(23, 'App\\Models\\User', 17, 'API Token', 'a02bc559716f526cf8d35e2786f00dd00991d60a2f0924075e1975796d7dd0df', '[\"*\"]', NULL, NULL, '2025-01-21 09:21:44', '2025-01-21 09:21:44'),
(24, 'App\\Models\\User', 17, 'API Token', 'ac2f7712eebdad607e16419f976a60dcf5c0eda8d972a57acd25a4aaaf41e8ca', '[\"*\"]', NULL, NULL, '2025-01-21 09:51:26', '2025-01-21 09:51:26'),
(25, 'App\\Models\\User', 17, 'API Token', 'd6aae6a0e1396e51d9c8b1329ca1dc63aed61cfe90f7a6daf0c07e897605f6d0', '[\"*\"]', NULL, NULL, '2025-01-21 17:03:51', '2025-01-21 17:03:51'),
(26, 'App\\Models\\User', 17, 'API Token', 'da54b468031bbadb0fd9b80dd0c7a212ad8fd7a6b91bf4efbcae839c5bd69403', '[\"*\"]', NULL, NULL, '2025-01-21 17:07:50', '2025-01-21 17:07:50'),
(27, 'App\\Models\\User', 17, 'API Token', 'f5ef7d82ef7a8ef52457c6e204eecb24b05eb9af68e43031d3aea328ff51a245', '[\"*\"]', NULL, NULL, '2025-01-21 17:25:08', '2025-01-21 17:25:08'),
(28, 'App\\Models\\User', 17, 'API Token', 'fb533dbbd3ac636725a7f90fc977854041d7fa19d09fb944221bc19c83c84804', '[\"*\"]', NULL, NULL, '2025-01-21 17:28:38', '2025-01-21 17:28:38'),
(29, 'App\\Models\\User', 17, 'API Token', 'e62a025227cc76fdd251a8df62a181755d36a4f08aa7cf2828fa2e21584baebc', '[\"*\"]', NULL, NULL, '2025-01-22 06:37:26', '2025-01-22 06:37:26'),
(30, 'App\\Models\\User', 17, 'API Token', '12f924642c8deb245cb145407b621d54506ab5409ed934a5510d76d0e28d0042', '[\"*\"]', NULL, NULL, '2025-01-22 07:01:10', '2025-01-22 07:01:10'),
(31, 'App\\Models\\User', 17, 'API Token', '2492b6ded7144f928e202b6401fd9f96f24404d4da30fc94d3b504207491c9c6', '[\"*\"]', NULL, NULL, '2025-01-22 07:10:17', '2025-01-22 07:10:17'),
(32, 'App\\Models\\User', 17, 'API Token', 'e395829705245126ec15fbef3c018f5a9b7f8ffae0c4ecdf7cbd8bdcc427b274', '[\"*\"]', NULL, NULL, '2025-01-22 07:15:06', '2025-01-22 07:15:06'),
(33, 'App\\Models\\User', 17, 'API Token', '7b26d4e8a5c9492ed488d3edbb24c57147f36a5d1cb12427369dcb55bf7311bb', '[\"*\"]', NULL, NULL, '2025-01-22 07:19:08', '2025-01-22 07:19:08'),
(34, 'App\\Models\\User', 17, 'API Token', 'b3ac0b4e1825a7e77a49e13dcab2e8d800c6a1a759327836420924330734d523', '[\"*\"]', NULL, NULL, '2025-01-22 07:27:15', '2025-01-22 07:27:15'),
(35, 'App\\Models\\User', 17, 'API Token', 'b742e19be19b851f6085f231de55736c4c0ddc48a0c4015c4318f41de81eab0d', '[\"*\"]', NULL, NULL, '2025-01-22 07:29:54', '2025-01-22 07:29:54'),
(36, 'App\\Models\\User', 17, 'API Token', 'dd8a64322268d150757f402f53e5d9e9a8727245cf21629465a196ba44819024', '[\"*\"]', NULL, NULL, '2025-01-22 07:31:06', '2025-01-22 07:31:06'),
(37, 'App\\Models\\User', 17, 'API Token', '99561d0ee9316ad2f56206e4ebb20b66456461cc9d9223635f55e6e408a44a94', '[\"*\"]', NULL, NULL, '2025-01-22 07:31:32', '2025-01-22 07:31:32'),
(38, 'App\\Models\\User', 17, 'API Token', '19dae6dd5d21013c5ca55516901b9f20f3e9dc3b8a4e38a99e4fce04bf322ab0', '[\"*\"]', NULL, NULL, '2025-01-22 07:33:54', '2025-01-22 07:33:54'),
(39, 'App\\Models\\User', 17, 'API Token', '1276f51d1d35a89c5755b104a0b888d62d95a6b8f26ec62415ca67568f4db877', '[\"*\"]', NULL, NULL, '2025-01-22 07:36:09', '2025-01-22 07:36:09'),
(40, 'App\\Models\\User', 17, 'API Token', 'f299e8d6b2b5417958f4914716d9a1a8e3ea3a646eb6a254c60ec417d3cacc6f', '[\"*\"]', NULL, NULL, '2025-01-22 07:37:26', '2025-01-22 07:37:26'),
(41, 'App\\Models\\User', 17, 'API Token', '4b94739f99136665d47af139f367317099a4543001e8c8ba12ea114ea5ad1a68', '[\"*\"]', NULL, NULL, '2025-01-22 07:39:36', '2025-01-22 07:39:36'),
(42, 'App\\Models\\User', 17, 'API Token', '03dbe48f5c0001075947450a6a760b29a5edf7259a613f68060b79a5d2d5e790', '[\"*\"]', NULL, NULL, '2025-01-22 07:42:13', '2025-01-22 07:42:13'),
(43, 'App\\Models\\User', 17, 'API Token', '56d89aa45f54932678e17f6cf9e8581d0e3b92d847a0d120034b7807989b1b37', '[\"*\"]', NULL, NULL, '2025-01-22 07:42:43', '2025-01-22 07:42:43'),
(44, 'App\\Models\\User', 17, 'API Token', '15baa7673b06888ef3a809fb0228253e33a8d1e491440be241aedbd48818c519', '[\"*\"]', NULL, NULL, '2025-01-22 09:41:00', '2025-01-22 09:41:00'),
(45, 'App\\Models\\User', 17, 'API Token', 'b0ff93df48610b266a0479a646653edf094c8ba2a92d90339f50d3b299afee1f', '[\"*\"]', NULL, NULL, '2025-01-22 09:50:48', '2025-01-22 09:50:48'),
(46, 'App\\Models\\User', 17, 'API Token', 'da1a225bc86156d02135b6b89da396205d3c9bad4c097c13cc934ebb3c7da216', '[\"*\"]', NULL, NULL, '2025-01-22 09:51:15', '2025-01-22 09:51:15'),
(47, 'App\\Models\\User', 17, 'API Token', 'b675c571cdbb861a8718c351ae44df4837f26cf4508a719adc3a3eebcd74c208', '[\"*\"]', NULL, NULL, '2025-01-22 16:14:59', '2025-01-22 16:14:59'),
(48, 'App\\Models\\User', 17, 'API Token', '7f8bb2722fbb141310c99060d77a7a0c4ae58991c0c4be5117d4dc2b687acdaf', '[\"*\"]', NULL, NULL, '2025-01-22 16:34:28', '2025-01-22 16:34:28'),
(49, 'App\\Models\\User', 17, 'API Token', '2a65e71a76c9631c9ed61db5f0148a157215e8707788202d8958083397e553fb', '[\"*\"]', NULL, NULL, '2025-01-22 16:38:26', '2025-01-22 16:38:26'),
(50, 'App\\Models\\User', 17, 'API Token', 'd179eb7fea246ef4b6a159d4b2d21da22046c2a9fdc4d157aceea2567c04e225', '[\"*\"]', NULL, NULL, '2025-01-22 17:12:53', '2025-01-22 17:12:53'),
(51, 'App\\Models\\User', 17, 'API Token', 'c5213a734a4ff2ca7ee43f1e2a9c02e651da1e0a89ee365ef8c4ec6d90523782', '[\"*\"]', NULL, NULL, '2025-01-22 17:13:28', '2025-01-22 17:13:28'),
(52, 'App\\Models\\User', 17, 'API Token', '54a12c0822310f84e5e3538918ef24c01edd5d98c996bfaa4e4cc7ca05d63a34', '[\"*\"]', NULL, NULL, '2025-01-22 17:13:37', '2025-01-22 17:13:37'),
(53, 'App\\Models\\User', 17, 'API Token', '099cecf510891aa0eb8a5eaeb568e2320e3ea3615dc2888f30975e8eada6266d', '[\"*\"]', NULL, NULL, '2025-01-22 17:14:08', '2025-01-22 17:14:08'),
(54, 'App\\Models\\User', 17, 'API Token', 'db5280b4e1760c6805cee9e5e7399c8d05c19f2fe850b96350b3c72ef4741cb1', '[\"*\"]', NULL, NULL, '2025-01-22 17:15:07', '2025-01-22 17:15:07'),
(55, 'App\\Models\\User', 17, 'API Token', 'e485f8db122c5e620e0afab30eba30d1a408c5117b9ab8bb057b873846ce611e', '[\"*\"]', NULL, NULL, '2025-01-22 17:16:48', '2025-01-22 17:16:48'),
(56, 'App\\Models\\User', 17, 'API Token', '6296468a12ac191377ef83864461cccb712b62510176235e9b68330f9cd5b410', '[\"*\"]', NULL, NULL, '2025-01-22 17:17:32', '2025-01-22 17:17:32'),
(57, 'App\\Models\\User', 17, 'API Token', '0999b1e17fd1518c565cb20f755bc4c7cd8fa91cefa88b94d611fa626c0a30ee', '[\"*\"]', NULL, NULL, '2025-01-22 17:17:45', '2025-01-22 17:17:45'),
(58, 'App\\Models\\User', 17, 'API Token', '8ec402568d86bcafc206251b77fa63cd6632c8609f920f4c4aa9b985414ff8c9', '[\"*\"]', NULL, NULL, '2025-01-23 05:07:24', '2025-01-23 05:07:24'),
(59, 'App\\Models\\User', 17, 'API Token', 'e80e8acbc87c4bfefbdb305e3f4adb2b1ee4d21799fa96b94fc5f29b305cda2a', '[\"*\"]', NULL, NULL, '2025-01-23 14:39:04', '2025-01-23 14:39:04'),
(60, 'App\\Models\\User', 17, 'API Token', 'd93890c4930186d893c76177b3f48342f6f83550b0359eb835e480cca8731bc1', '[\"*\"]', NULL, NULL, '2025-01-23 14:44:43', '2025-01-23 14:44:43'),
(61, 'App\\Models\\User', 17, 'API Token', '56c8d7447ee48bfb6d1d049bc29961d81e36a4c5c5fcf994bb0f53fd1d2edb48', '[\"*\"]', NULL, NULL, '2025-01-23 14:47:58', '2025-01-23 14:47:58'),
(62, 'App\\Models\\User', 17, 'API Token', '65f153d4c6a2a85fead84e103d7011160eb011c8d4a4ce5668e78eb67628d9e0', '[\"*\"]', NULL, NULL, '2025-01-24 05:33:39', '2025-01-24 05:33:39'),
(63, 'App\\Models\\User', 17, 'API Token', '17876ad6eea3aa90ee7ce652774f34f119b5c78246497d5e8cb4be88e481305c', '[\"*\"]', NULL, NULL, '2025-01-24 05:34:35', '2025-01-24 05:34:35'),
(64, 'App\\Models\\User', 17, 'API Token', 'fc7218d532d19e2f6be4a4cd58dcfbe97a8f7b997395853323caa135bd41c2f5', '[\"*\"]', NULL, NULL, '2025-01-27 05:22:42', '2025-01-27 05:22:42'),
(65, 'App\\Models\\User', 17, 'API Token', 'caa0fa5bc3c42a511cafecaead3346e2ee0892750b1c65d5a0b5d94fba9df974', '[\"*\"]', NULL, NULL, '2025-01-27 05:34:59', '2025-01-27 05:34:59'),
(66, 'App\\Models\\User', 17, 'API Token', 'b4b7da7b0e8fdc7a4c8c90f7286af37cd67e97da6dd0bd9f1a6d196b2d31a79c', '[\"*\"]', NULL, NULL, '2025-01-27 05:41:45', '2025-01-27 05:41:45'),
(67, 'App\\Models\\User', 17, 'API Token', '683e4360633b8ab6a1b23fa76b2966565869ef36af481057b15b3477c9af034c', '[\"*\"]', NULL, NULL, '2025-01-27 05:44:01', '2025-01-27 05:44:01'),
(68, 'App\\Models\\User', 17, 'API Token', 'bbae8f6562b53d26665c4885a9b1d8536a932d503fbaed54c907d83579a01a66', '[\"*\"]', NULL, NULL, '2025-01-27 06:00:40', '2025-01-27 06:00:40'),
(69, 'App\\Models\\User', 17, 'API Token', '6ff6ebed6ab8e11ecccdfd5468e6f91e5bb122f4e54551f693962d08c0aa8fe5', '[\"*\"]', NULL, NULL, '2025-01-30 15:51:35', '2025-01-30 15:51:35'),
(70, 'App\\Models\\User', 17, 'API Token', '8769cf93c1a0d72eba1f1261291ef9bc93fb8f5ed21c7ff72a1dac2bfddc1220', '[\"*\"]', NULL, NULL, '2025-02-06 14:45:53', '2025-02-06 14:45:53'),
(71, 'App\\Models\\User', 17, 'API Token', '522a155f14f074ce97187c3447b41bdea0c0f2333cc7347542dda41b1ae92bb2', '[\"*\"]', NULL, NULL, '2025-02-06 14:58:16', '2025-02-06 14:58:16'),
(72, 'App\\Models\\User', 17, 'API Token', '5f50062224e2c284b926d6d88859b2e24bb0aa39a244b46ee7b7abadd6affcf9', '[\"*\"]', NULL, NULL, '2025-02-10 11:18:24', '2025-02-10 11:18:24'),
(73, 'App\\Models\\User', 17, 'API Token', '612a1f45bf3c273018ac73b5915271c02e20b3ac315aff791c1c110ac3f4d2d7', '[\"*\"]', NULL, NULL, '2025-02-10 12:49:57', '2025-02-10 12:49:57'),
(74, 'App\\Models\\User', 17, 'API Token', '4686553b24634cd6701e4a02825307935b53c788cbe342d1fb362bcb06231ab9', '[\"*\"]', '2025-02-12 09:48:54', NULL, '2025-02-10 15:28:22', '2025-02-12 09:48:54'),
(75, 'App\\Models\\User', 17, 'API Token', '0eae278e058ccee8649467e4b6e03554a21fcdac29dbe998185b7ad3af535c63', '[\"*\"]', NULL, NULL, '2025-02-11 12:10:23', '2025-02-11 12:10:23'),
(76, 'App\\Models\\User', 17, 'API Token', 'ea2835b94a14e84109ea4d83980449519bf29cea1bebf50a967ce1686a744402', '[\"*\"]', '2025-02-11 17:10:17', NULL, '2025-02-11 12:27:18', '2025-02-11 17:10:17'),
(77, 'App\\Models\\User', 17, 'API Token', 'fcdd0525c7408c734e0d7543d6fc96cfc04b8bd01269cdeec0708a9ab47e699a', '[\"*\"]', '2025-02-19 14:06:21', NULL, '2025-02-11 20:35:23', '2025-02-19 14:06:21'),
(78, 'App\\Models\\User', 17, 'API Token', '0f5e43b9558ef50bc2dc766e4e83d8d07b5efb4846c0649f79cf0b2925011a98', '[\"*\"]', '2025-02-12 13:24:26', NULL, '2025-02-12 09:49:14', '2025-02-12 13:24:26'),
(79, 'App\\Models\\User', 17, 'API Token', '5123c7bae483fd259e6ad703beeec7fdd650a85098a8ea950be1ee37ec7bd734', '[\"*\"]', NULL, NULL, '2025-02-19 11:27:20', '2025-02-19 11:27:20'),
(80, 'App\\Models\\User', 17, 'API Token', 'a3684eb73d80c905ce3452d3fb33d8ea9ffe79368167c4511f099325726a5843', '[\"*\"]', NULL, NULL, '2025-02-19 11:27:53', '2025-02-19 11:27:53'),
(81, 'App\\Models\\User', 17, 'API Token', '8e31ff91b3bf542be7914c6b8d14eb8e8510b6ceff83a0a62383aa335c63a903', '[\"*\"]', NULL, NULL, '2025-02-19 11:36:47', '2025-02-19 11:36:47'),
(82, 'App\\Models\\User', 17, 'API Token', '8169683c4bc2a9acf12db5de24fce12a53d87363c3b05dc85a4ee17e8cc5158f', '[\"*\"]', NULL, NULL, '2025-02-19 11:40:27', '2025-02-19 11:40:27'),
(83, 'App\\Models\\User', 17, 'API Token', 'aa8df5e3895978632c05643a7471929ce2f8bdbfa453ba4965f7fbf65453500b', '[\"*\"]', '2025-02-19 13:58:16', NULL, '2025-02-19 11:44:37', '2025-02-19 13:58:16'),
(84, 'App\\Models\\User', 20, 'API Token', '96b353791524b40e682a5b07c3516b87101f1be7df6bfec1e1494232dae7f3ab', '[\"*\"]', NULL, NULL, '2025-02-19 13:44:11', '2025-02-19 13:44:11'),
(85, 'App\\Models\\User', 20, 'API Token', '580b1b681b4c272b693b0fbc8581033489e027b8f84c4f74e22c56acfb306769', '[\"*\"]', '2025-06-24 17:16:03', NULL, '2025-02-19 13:48:43', '2025-06-24 17:16:03'),
(86, 'App\\Models\\User', 17, 'API Token', '3a1df5ae59b52d63a833cd2ce65c35b14ef4ae3f43f0f9ec392303bb1aed3dda', '[\"*\"]', '2025-03-03 05:09:23', NULL, '2025-02-19 13:59:04', '2025-03-03 05:09:23'),
(87, 'App\\Models\\User', 17, 'API Token', 'fccf521590961721b869162a18e27da112e508a13ab5771a83471e0231974815', '[\"*\"]', '2025-03-04 10:06:34', NULL, '2025-02-19 14:23:25', '2025-03-04 10:06:34'),
(88, 'App\\Models\\User', 17, 'API Token', 'e4c31bd029c957354309bd6903f1bb4d4dcf612de5cf8a5a8d524a25c5165038', '[\"*\"]', '2025-02-24 20:25:20', NULL, '2025-02-19 14:23:33', '2025-02-24 20:25:20'),
(89, 'App\\Models\\User', 20, 'API Token', '5255b5193ff5fd83ae710990fb311b59acf65d7c4583eee22ea7599ebc4845d0', '[\"*\"]', NULL, NULL, '2025-02-19 14:38:18', '2025-02-19 14:38:18'),
(90, 'App\\Models\\User', 20, 'API Token', '916cde42711a5433efa97158b82b6a44e16bf8bac32d3dec23716e094358bba3', '[\"*\"]', NULL, NULL, '2025-02-22 18:41:55', '2025-02-22 18:41:55'),
(91, 'App\\Models\\User', 20, 'API Token', '5724e849a6c95aab95f28a0e472184c3e77b4db7db3b6839d4315b70cafd3462', '[\"*\"]', NULL, NULL, '2025-02-22 19:00:47', '2025-02-22 19:00:47'),
(92, 'App\\Models\\User', 20, 'API Token', '0cd8c3d5d8d912828bc4d5d83932d34dbceb8d83424d6d20cf98df446d6100f0', '[\"*\"]', NULL, NULL, '2025-02-22 19:01:04', '2025-02-22 19:01:04'),
(93, 'App\\Models\\User', 20, 'API Token', 'f9d343779035d5d5ed5d2fbbf90e8a1f96d700cc24ac031338f784bceb148473', '[\"*\"]', '2025-02-22 19:15:37', NULL, '2025-02-22 19:04:29', '2025-02-22 19:15:37'),
(94, 'App\\Models\\User', 20, 'API Token', '5e587dcc320ce1bdbfc85928b1e561320ceff645b0e00652775176a7d4e2c40b', '[\"*\"]', NULL, NULL, '2025-02-22 19:25:38', '2025-02-22 19:25:38'),
(95, 'App\\Models\\User', 20, 'API Token', '3adcf6fb9c7454f07666b27e57d0c6be36f04cdc5437a0a3677fd6a169ac58a2', '[\"*\"]', NULL, NULL, '2025-02-22 19:25:54', '2025-02-22 19:25:54'),
(96, 'App\\Models\\User', 20, 'API Token', 'd1f8c35b4a116147ce7df7c0d8058a092a8f69958f299316ef0c6036bf0524bf', '[\"*\"]', '2025-02-22 19:28:37', NULL, '2025-02-22 19:28:31', '2025-02-22 19:28:37'),
(97, 'App\\Models\\User', 20, 'API Token', '0e11add35ee490d7e74aacca97017e0a3e98b1554e9880956b0add835f8e5cc2', '[\"*\"]', NULL, NULL, '2025-02-24 12:04:03', '2025-02-24 12:04:03'),
(98, 'App\\Models\\User', 20, 'API Token', '11b74a45a3ce42285bba33b180eab29a31724ef28c039f60c33537e0e2fb12ba', '[\"*\"]', '2025-02-24 12:05:59', NULL, '2025-02-24 12:05:30', '2025-02-24 12:05:59'),
(99, 'App\\Models\\User', 20, 'API Token', '7f8ce8b930259c2c3eba0f1918819456b86ee7c45f8bb7204c016cc3d8fb96d3', '[\"*\"]', '2025-02-24 12:08:28', NULL, '2025-02-24 12:07:53', '2025-02-24 12:08:28'),
(100, 'App\\Models\\User', 17, 'API Token', '55a1aa24f2c2ebe2d191afa71ed95f16e7d5f8f04c058aea7df7a235e53e8bad', '[\"*\"]', '2025-02-27 21:00:25', NULL, '2025-02-26 20:12:01', '2025-02-27 21:00:25'),
(101, 'App\\Models\\User', 17, 'API Token', 'aeb17656fc07e659a72d44f1faeda9fdc59d57edeb595063371a72c6d4d4bf31', '[\"*\"]', '2025-02-26 21:32:29', NULL, '2025-02-26 20:49:43', '2025-02-26 21:32:29'),
(102, 'App\\Models\\User', 20, 'API Token', 'eb095fc5eb6ced98ae7320b6bd64ab41770004971b8a20a8b14a77942bdb2114', '[\"*\"]', NULL, NULL, '2025-02-27 15:16:27', '2025-02-27 15:16:27'),
(103, 'App\\Models\\User', 20, 'API Token', '70c00de038fa2aaa33b35440e589245d7fce725438f3233c61537242e9e9fd41', '[\"*\"]', '2025-02-27 15:18:42', NULL, '2025-02-27 15:18:40', '2025-02-27 15:18:42'),
(104, 'App\\Models\\User', 20, 'API Token', '6a1c9b2977d6f7370734eb27190a2551ac4af44d01dac9ac1bcefc2cb1362a41', '[\"*\"]', '2025-02-27 15:23:31', NULL, '2025-02-27 15:23:30', '2025-02-27 15:23:31'),
(105, 'App\\Models\\User', 20, 'API Token', '8cb41132742cfefc0258e47f93830281fd03fb91ef6a0318ee881c5cc83066cf', '[\"*\"]', NULL, NULL, '2025-02-27 15:33:38', '2025-02-27 15:33:38'),
(106, 'App\\Models\\User', 20, 'API Token', '80521d152d258eb4679d2c5f052ed170900576d6478eabf051f05c7e4b40f750', '[\"*\"]', NULL, NULL, '2025-02-27 15:55:03', '2025-02-27 15:55:03'),
(107, 'App\\Models\\User', 20, 'API Token', '50e132c206d6573c3fc38e74d141bd46c7774ee3ed80ce45766747335d51fc88', '[\"*\"]', '2025-02-27 19:09:06', NULL, '2025-02-27 19:09:05', '2025-02-27 19:09:06'),
(108, 'App\\Models\\User', 20, 'API Token', 'eaaf44369c71ac6a64b8739b590818e29ad14e12b30d2a1fa15dc3aab2b8d602', '[\"*\"]', '2025-02-27 19:22:20', NULL, '2025-02-27 19:22:19', '2025-02-27 19:22:20'),
(109, 'App\\Models\\User', 20, 'API Token', '760c447b47feb4346e9915130e0d48e71f6fa52e85dcdb9e926968c49f075b03', '[\"*\"]', '2025-02-27 19:54:32', NULL, '2025-02-27 19:54:32', '2025-02-27 19:54:32'),
(110, 'App\\Models\\User', 20, 'API Token', '6ce36540b3490edf3a3d652382873b87f35aa7014ade09d20344206497701225', '[\"*\"]', '2025-02-27 20:29:27', NULL, '2025-02-27 20:29:27', '2025-02-27 20:29:27'),
(111, 'App\\Models\\User', 17, 'API Token', '64b325f3c3e3a7862604efae40d725ab2b089a71993632a8b0d8ed13bddb98f5', '[\"*\"]', '2025-02-27 21:25:17', NULL, '2025-02-27 21:00:54', '2025-02-27 21:25:17'),
(112, 'App\\Models\\User', 17, 'API Token', '0f2449fc447ee4e34295f35a00feaffb7f7d211947f533e16ba0d806a68d72fe', '[\"*\"]', '2025-03-17 07:37:34', NULL, '2025-02-27 21:01:21', '2025-03-17 07:37:34'),
(113, 'App\\Models\\User', 20, 'API Token', '4b5770b04589fa3fea635e76268393450259c572981d214d51c00105568e8b67', '[\"*\"]', '2025-02-27 21:31:24', NULL, '2025-02-27 21:31:23', '2025-02-27 21:31:24'),
(114, 'App\\Models\\User', 20, 'API Token', '493fa86a12a3e31762338d30c082e81c7f17a89a52e840cca2cb858d86b8d10a', '[\"*\"]', '2025-02-27 21:31:49', NULL, '2025-02-27 21:31:49', '2025-02-27 21:31:49'),
(115, 'App\\Models\\User', 20, 'API Token', '68ca8dca843fda75eb5b2d6304e6f79f0c388424b75f492cd0003327c65b6d75', '[\"*\"]', '2025-02-27 21:32:20', NULL, '2025-02-27 21:32:20', '2025-02-27 21:32:20'),
(116, 'App\\Models\\User', 20, 'API Token', 'ea64d627a26191a79765ccb4964f6a6765d5f4cc49ff820dab05c3ce3acbb86a', '[\"*\"]', '2025-02-27 21:33:31', NULL, '2025-02-27 21:33:31', '2025-02-27 21:33:31'),
(117, 'App\\Models\\User', 20, 'API Token', '6e1daaa416464a1ede9cdc270865a7a32d36a3abbf45bb7e91ed64c1b98a3069', '[\"*\"]', '2025-02-27 21:37:08', NULL, '2025-02-27 21:37:08', '2025-02-27 21:37:08'),
(118, 'App\\Models\\User', 20, 'API Token', 'a6f1c8567d3441d666ef43a0b9296dc8b9c688ae7e15683e8ffe30488dc91a2d', '[\"*\"]', '2025-02-27 21:37:36', NULL, '2025-02-27 21:37:35', '2025-02-27 21:37:36'),
(119, 'App\\Models\\User', 20, 'API Token', 'd8470625b539c0fdcff6c020dc7bf5cfa8e0216a2ec80d9d4a092664bb0f97ee', '[\"*\"]', '2025-02-27 22:12:54', NULL, '2025-02-27 22:12:53', '2025-02-27 22:12:54'),
(120, 'App\\Models\\User', 17, 'API Token', 'c703bafbb30f14db0247be9b926ff833f18fa9547a88e33cde19f087df58ce3e', '[\"*\"]', '2025-02-28 12:22:53', NULL, '2025-02-27 22:22:58', '2025-02-28 12:22:53'),
(121, 'App\\Models\\User', 20, 'API Token', '26034be334b5dfbdf150cad46290becf985bdacb503e455dc7061baca43be364', '[\"*\"]', '2025-02-27 22:53:40', NULL, '2025-02-27 22:53:39', '2025-02-27 22:53:40'),
(122, 'App\\Models\\User', 20, 'API Token', 'ce46529fa784af82ffd797b68d42b152bc7d19fd3853e94fdcfa12edabd54dc0', '[\"*\"]', '2025-02-28 06:10:22', NULL, '2025-02-28 06:10:21', '2025-02-28 06:10:22'),
(123, 'App\\Models\\User', 20, 'API Token', 'ca6d2bac7f5b6b4385d0422294317836e7a73109f09ee59644f303321763df0d', '[\"*\"]', '2025-02-28 07:30:53', NULL, '2025-02-28 07:30:52', '2025-02-28 07:30:53'),
(124, 'App\\Models\\User', 20, 'API Token', 'f988537d01f47b990f7ce20e53f8721e007fa225537b8798061be08f9a65ce0e', '[\"*\"]', '2025-02-28 07:49:01', NULL, '2025-02-28 07:49:00', '2025-02-28 07:49:01'),
(125, 'App\\Models\\User', 20, 'API Token', '91f352ce812da2707fc4b268175e2a51f7de5482bc4a681777551b6d094c687f', '[\"*\"]', '2025-02-28 07:56:00', NULL, '2025-02-28 07:55:59', '2025-02-28 07:56:00'),
(126, 'App\\Models\\User', 20, 'API Token', 'c2b5d3d23980ec0e17311e6c1195e448f3c1cce93b1408b867ea081931118c93', '[\"*\"]', '2025-02-28 08:12:10', NULL, '2025-02-28 08:12:09', '2025-02-28 08:12:10'),
(127, 'App\\Models\\User', 20, 'API Token', '05766b2c27e9a495a4488ca9edbd9b15ecaa1addda8a02f71b71ac3599fb85aa', '[\"*\"]', '2025-02-28 09:12:40', NULL, '2025-02-28 09:12:39', '2025-02-28 09:12:40'),
(128, 'App\\Models\\User', 20, 'API Token', '3dcffd58d096eee53febc226aad255f97315744728122c95a4e235db359a31f6', '[\"*\"]', '2025-02-28 09:17:07', NULL, '2025-02-28 09:17:06', '2025-02-28 09:17:07'),
(129, 'App\\Models\\User', 20, 'API Token', '08bf64a72b64e6cec98343540aa00617bac2d1d575fb21b35b756575bb7170b9', '[\"*\"]', '2025-02-28 09:21:01', NULL, '2025-02-28 09:21:00', '2025-02-28 09:21:01'),
(130, 'App\\Models\\User', 20, 'API Token', '042a9b4c2f7feb1b8c5071395f772b0982c69932edccb072ba8fc58abf1b8392', '[\"*\"]', '2025-02-28 09:38:04', NULL, '2025-02-28 09:38:03', '2025-02-28 09:38:04'),
(131, 'App\\Models\\User', 20, 'API Token', '2808cee3b2a866e99fd02f0cc5eef9cf8a16e579c017c4c433a7b9865d449618', '[\"*\"]', '2025-02-28 09:42:57', NULL, '2025-02-28 09:42:57', '2025-02-28 09:42:57'),
(132, 'App\\Models\\User', 20, 'API Token', 'e7259d8102b43a1d65e1c192ccf19002792086d725f22879521b56b5de401107', '[\"*\"]', '2025-02-28 09:50:34', NULL, '2025-02-28 09:50:33', '2025-02-28 09:50:34'),
(133, 'App\\Models\\User', 20, 'API Token', 'f85753527628a54e3421b131e4328bd4526623ad86b34bbe72543fdc03b838f9', '[\"*\"]', '2025-02-28 09:57:09', NULL, '2025-02-28 09:57:08', '2025-02-28 09:57:09'),
(134, 'App\\Models\\User', 20, 'API Token', '870404b7e3e7f1197d22662a85366653993085f6e8ce09dbc64d7470084e7aab', '[\"*\"]', '2025-02-28 10:04:46', NULL, '2025-02-28 10:04:45', '2025-02-28 10:04:46'),
(135, 'App\\Models\\User', 20, 'API Token', 'fcb04e38d08caad7e61bbd5d61969a46c919d02468943129ad357323bf853f67', '[\"*\"]', '2025-02-28 10:04:47', NULL, '2025-02-28 10:04:47', '2025-02-28 10:04:47'),
(136, 'App\\Models\\User', 20, 'API Token', '3ba03b958dd9acf09f6e351f52a89067c7030a3eb05d10a592d0d833fec15c22', '[\"*\"]', '2025-02-28 10:39:40', NULL, '2025-02-28 10:39:39', '2025-02-28 10:39:40'),
(137, 'App\\Models\\User', 20, 'API Token', 'ea21b5b174a742a4ee1f9f35295fd8540f1b224aec1270b2ae5c50a2d3cc8e4f', '[\"*\"]', '2025-02-28 10:40:31', NULL, '2025-02-28 10:40:29', '2025-02-28 10:40:31'),
(138, 'App\\Models\\User', 20, 'API Token', 'bb0ef029855e93f8209925d11474341a75f9a7dcc54d8902266231f318ccc547', '[\"*\"]', '2025-02-28 10:42:42', NULL, '2025-02-28 10:42:42', '2025-02-28 10:42:42'),
(139, 'App\\Models\\User', 20, 'API Token', '85bf81c140969f8998c3e6ad10606a10f08f6aa20bcf7a8e7563026836918eea', '[\"*\"]', '2025-02-28 11:10:14', NULL, '2025-02-28 11:10:13', '2025-02-28 11:10:14'),
(140, 'App\\Models\\User', 20, 'API Token', 'd6a7cf1b4f70916c70001ea2bbddcbf1278a0a946ed5e35d6127ec267202d3ed', '[\"*\"]', '2025-02-28 11:10:24', NULL, '2025-02-28 11:10:24', '2025-02-28 11:10:24'),
(141, 'App\\Models\\User', 20, 'API Token', '07301bc8abf0bd6eaa4a1eafbdedd1b89c1bb0202e3504afbdffc1c5f0ca74fd', '[\"*\"]', '2025-02-28 11:15:51', NULL, '2025-02-28 11:15:50', '2025-02-28 11:15:51'),
(142, 'App\\Models\\User', 20, 'API Token', 'a3be43d8ab52f19037c624c98c8f0a9f6ac9cb44c2c1f232cacd8a5f91a942f1', '[\"*\"]', '2025-02-28 11:19:51', NULL, '2025-02-28 11:19:50', '2025-02-28 11:19:51'),
(143, 'App\\Models\\User', 20, 'API Token', '31653d10da9b290b5279d38d564b2f29699c5b92b47a4ee967aec644e30461e0', '[\"*\"]', '2025-02-28 11:21:42', NULL, '2025-02-28 11:21:41', '2025-02-28 11:21:42'),
(144, 'App\\Models\\User', 20, 'API Token', 'ddb1d91b39647a4ae3fc390ee36992f06f78272fd41a80485802686f6929b003', '[\"*\"]', '2025-02-28 11:25:16', NULL, '2025-02-28 11:25:16', '2025-02-28 11:25:16'),
(145, 'App\\Models\\User', 20, 'API Token', '54081e0bd02880b4d19ee17e017c0086f0ce7b1bb6f119197af9e6758001bf5e', '[\"*\"]', '2025-02-28 11:25:36', NULL, '2025-02-28 11:25:35', '2025-02-28 11:25:36'),
(146, 'App\\Models\\User', 20, 'API Token', '42305406f95fc7ffd77f71f3b759723e3657a6d9c125d30e0ff559471720cc29', '[\"*\"]', '2025-02-28 11:38:49', NULL, '2025-02-28 11:38:48', '2025-02-28 11:38:49'),
(147, 'App\\Models\\User', 20, 'API Token', 'a79a31b1709bb4029e7a6f9313fd1ba3268d548c714c144e28f42d243a8e83d3', '[\"*\"]', '2025-02-28 11:42:34', NULL, '2025-02-28 11:42:33', '2025-02-28 11:42:34'),
(148, 'App\\Models\\User', 20, 'API Token', '73811c505e72db3aaa59c82d0561d40580b2afb6497250716c60e9c48329ca49', '[\"*\"]', '2025-02-28 11:53:04', NULL, '2025-02-28 11:53:03', '2025-02-28 11:53:04'),
(149, 'App\\Models\\User', 20, 'API Token', '6735a14d758f4ff582d2431c65a909935f5e46aea77a8a57065a669b6f55b96e', '[\"*\"]', '2025-02-28 11:58:59', NULL, '2025-02-28 11:58:58', '2025-02-28 11:58:59'),
(150, 'App\\Models\\User', 20, 'API Token', '4cd771053accdee7204ff95c401741a9e55a2b50381b0244bbbb45d720204791', '[\"*\"]', '2025-02-28 12:09:19', NULL, '2025-02-28 12:09:19', '2025-02-28 12:09:19'),
(151, 'App\\Models\\User', 20, 'API Token', '7d753c89474fa39aa9bebea5f6582b0e72ab3fc20872c5c852813e594c5d4dd8', '[\"*\"]', '2025-02-28 12:10:18', NULL, '2025-02-28 12:10:17', '2025-02-28 12:10:18'),
(152, 'App\\Models\\User', 20, 'API Token', '016e303cafad3c314fd6612d9dc0518c7b3f7b1b912e9401c2828b82112609b3', '[\"*\"]', '2025-02-28 12:23:56', NULL, '2025-02-28 12:23:56', '2025-02-28 12:23:56'),
(153, 'App\\Models\\User', 20, 'API Token', '4d3a40f49e43eda5d27aa4c4080296bbf102caa644fb9ada0d9b510b2c996350', '[\"*\"]', '2025-02-28 12:30:31', NULL, '2025-02-28 12:30:30', '2025-02-28 12:30:31'),
(154, 'App\\Models\\User', 17, 'API Token', '99a63f66a2082e7d6362c4044c11c5778655f17a7d037ee8f7a5400f899d4cc9', '[\"*\"]', NULL, NULL, '2025-02-28 12:34:12', '2025-02-28 12:34:12'),
(155, 'App\\Models\\User', 17, 'API Token', 'a836138ed9db65ea50d3e251bc1571306c4ac4b7f3b2bc02170ae7d614c67ed6', '[\"*\"]', '2025-03-04 10:06:05', NULL, '2025-02-28 12:37:20', '2025-03-04 10:06:05'),
(156, 'App\\Models\\User', 20, 'API Token', '126e49261bdeb36ea66dbbcaa5f02cfc17b12cc61a1801bbcf8304c111de5a81', '[\"*\"]', '2025-02-28 12:39:32', NULL, '2025-02-28 12:39:31', '2025-02-28 12:39:32'),
(157, 'App\\Models\\User', 20, 'API Token', '0d73b5a579150c5a9e3fad0f22c3cf5dfef718893bd8c68c73cee4a74353f757', '[\"*\"]', '2025-02-28 12:42:00', NULL, '2025-02-28 12:42:00', '2025-02-28 12:42:00'),
(158, 'App\\Models\\User', 20, 'API Token', '0402b65790c8095385c2cb158cf70d04abd4df8115a32d06bc364a39616a8ed7', '[\"*\"]', '2025-02-28 12:42:59', NULL, '2025-02-28 12:42:58', '2025-02-28 12:42:59'),
(159, 'App\\Models\\User', 20, 'API Token', 'd0a8c82b9f58cf4309a664a5be27d17dddba28e8ab5c735810a2ae78f4cd892b', '[\"*\"]', '2025-02-28 12:47:54', NULL, '2025-02-28 12:47:54', '2025-02-28 12:47:54'),
(160, 'App\\Models\\User', 20, 'API Token', 'b272ea7dcd73749b73f8d3f538439806377972647f889f794707fa362a91f2f6', '[\"*\"]', '2025-02-28 12:50:19', NULL, '2025-02-28 12:50:19', '2025-02-28 12:50:19'),
(161, 'App\\Models\\User', 20, 'API Token', '408fe0d25c487d945ae1277b0f22e79bfa8f01e26cececfd76da4d737463dc18', '[\"*\"]', '2025-02-28 13:01:43', NULL, '2025-02-28 13:01:42', '2025-02-28 13:01:43'),
(162, 'App\\Models\\User', 20, 'API Token', 'e696393a42170711beb2306a54b23500ec29840c0752138f6573ae7cce4ca150', '[\"*\"]', '2025-02-28 13:09:20', NULL, '2025-02-28 13:09:20', '2025-02-28 13:09:20'),
(163, 'App\\Models\\User', 17, 'API Token', '91511bce6bd86429a4096f713bd228638390328b68b1b8690657eb8ffcfd4856', '[\"*\"]', '2025-03-17 06:54:34', NULL, '2025-03-03 05:10:18', '2025-03-17 06:54:34'),
(164, 'App\\Models\\User', 20, 'API Token', '445b4301611f8e70bbf2a0ad45be5b2ea1841c18330a402bd48c0d93a54a938f', '[\"*\"]', '2025-03-03 09:24:45', NULL, '2025-03-03 09:24:44', '2025-03-03 09:24:45'),
(165, 'App\\Models\\User', 20, 'API Token', 'ebf744868ab04c70af2cfd3e68a363cdc7fda2bb988e69c34d3dd487974be563', '[\"*\"]', '2025-03-03 09:39:02', NULL, '2025-03-03 09:39:01', '2025-03-03 09:39:02'),
(166, 'App\\Models\\User', 20, 'API Token', 'c76bb3881f42864d2ed1c3ef867ed101e65fc15008cfa36dcf82441423dfec29', '[\"*\"]', '2025-03-03 09:51:59', NULL, '2025-03-03 09:51:59', '2025-03-03 09:51:59'),
(167, 'App\\Models\\User', 20, 'API Token', '83c5ccfb0de033d36410b3b4f2e556f27ed18e39968b7d72848a515cce6c8468', '[\"*\"]', '2025-03-03 09:58:27', NULL, '2025-03-03 09:58:26', '2025-03-03 09:58:27'),
(168, 'App\\Models\\User', 20, 'API Token', '87b521fe3ca61fdf98599e9eb8f818f7045c2dbc324b0b3937993701b2004620', '[\"*\"]', '2025-03-03 10:25:14', NULL, '2025-03-03 10:25:13', '2025-03-03 10:25:14'),
(169, 'App\\Models\\User', 20, 'API Token', '7e63888739cf50c0fecd69622eb387324e5a98c89001881044ce719a85111148', '[\"*\"]', '2025-03-03 10:31:51', NULL, '2025-03-03 10:31:50', '2025-03-03 10:31:51'),
(170, 'App\\Models\\User', 20, 'API Token', '76d94b28c688fcf69976d20ca79864b05a4f1b170fd13eb35ad82d59936e7aeb', '[\"*\"]', '2025-03-03 10:37:50', NULL, '2025-03-03 10:37:49', '2025-03-03 10:37:50'),
(171, 'App\\Models\\User', 20, 'API Token', '0ce7dd5924993c28adadc0ecf1978b7accaa664c15d453eb972fed4dbfa3d68a', '[\"*\"]', '2025-03-03 10:39:24', NULL, '2025-03-03 10:39:23', '2025-03-03 10:39:24'),
(172, 'App\\Models\\User', 20, 'API Token', '20590b8af9153626afdafa25475efb00db8aa6ed44da5953ae82f971512d309f', '[\"*\"]', '2025-03-03 10:43:30', NULL, '2025-03-03 10:43:28', '2025-03-03 10:43:30'),
(173, 'App\\Models\\User', 20, 'API Token', 'ce4ad602368f2020e61fb582f87c20eddad62126250416c3af76a9a0a67dacc9', '[\"*\"]', '2025-03-03 11:14:54', NULL, '2025-03-03 11:14:53', '2025-03-03 11:14:54'),
(174, 'App\\Models\\User', 20, 'API Token', '842fd63c4cb5d62bde0fa90ffd59ccc364d914ee502b82030c8897203834260c', '[\"*\"]', '2025-03-03 11:21:24', NULL, '2025-03-03 11:21:24', '2025-03-03 11:21:24'),
(175, 'App\\Models\\User', 20, 'API Token', '92f2000bc92055c1ed48b4a0d9dec23b2e2960ef27c7dbfb56690220d87af9e3', '[\"*\"]', '2025-03-03 17:07:54', NULL, '2025-03-03 17:07:53', '2025-03-03 17:07:54'),
(176, 'App\\Models\\User', 20, 'API Token', '5c9d669041f60147538d4471d039f8ea8147069f8ba97160adfe04baf42f4c56', '[\"*\"]', '2025-03-03 19:14:26', NULL, '2025-03-03 19:14:26', '2025-03-03 19:14:26'),
(177, 'App\\Models\\User', 17, 'API Token', 'ddfb33a169c30a3bb2f8b2041a414ee3e63bbdfdff121b5c167ceae72994ee32', '[\"*\"]', '2025-03-04 06:30:46', NULL, '2025-03-04 06:20:15', '2025-03-04 06:30:46'),
(178, 'App\\Models\\User', 20, 'API Token', '67a33db620ae45e319a9a60f2907d67d5ba2083ad56dad1d2f88c3ead986b09b', '[\"*\"]', '2025-03-04 06:37:07', NULL, '2025-03-04 06:37:06', '2025-03-04 06:37:07'),
(179, 'App\\Models\\User', 20, 'API Token', 'c475e484555fd2cbd6a578e26e86569d80c9b80d1fd993788377b37b2c8f61e2', '[\"*\"]', '2025-03-04 09:08:07', NULL, '2025-03-04 09:08:06', '2025-03-04 09:08:07'),
(180, 'App\\Models\\User', 17, 'API Token', '01f60098d931f674c58e7e8f49a0c1323143eb3662894f594cc533a230630268', '[\"*\"]', '2025-04-04 10:57:24', NULL, '2025-03-04 10:06:57', '2025-04-04 10:57:24'),
(181, 'App\\Models\\User', 17, 'API Token', 'ac8d727cdb4355113bd20ec11f64e9d5781f3da87714a89df1c44dfae893b343', '[\"*\"]', '2025-03-04 10:08:58', NULL, '2025-03-04 10:08:17', '2025-03-04 10:08:58'),
(182, 'App\\Models\\User', 20, 'API Token', '299ea729cac28edbd1962285d36195861022046f6af75141d1266b4ed4ac7d48', '[\"*\"]', '2025-03-04 10:09:29', NULL, '2025-03-04 10:09:28', '2025-03-04 10:09:29'),
(183, 'App\\Models\\User', 17, 'API Token', 'b43c4c30a445ba73518cd9113bcf35cf19ad23c642e208c63c5f647d3b6782ee', '[\"*\"]', '2025-03-04 10:23:22', NULL, '2025-03-04 10:10:10', '2025-03-04 10:23:22'),
(184, 'App\\Models\\User', 17, 'API Token', '5209d190a1295c04a339217061b824cc11fd3c0844fe5f0af5c0ea51c6571b30', '[\"*\"]', '2025-03-04 10:13:28', NULL, '2025-03-04 10:11:33', '2025-03-04 10:13:28'),
(185, 'App\\Models\\User', 17, 'API Token', 'c27b6bee9fa64a739308d0a22347477096101ad147566afcb2b1c2f82c9e79b7', '[\"*\"]', '2025-03-14 07:33:59', NULL, '2025-03-04 10:13:48', '2025-03-14 07:33:59'),
(186, 'App\\Models\\User', 20, 'API Token', '5c9228016826c0ba374710b2981f5b18d12f0794efc3ea9bd0f41ae86d27a6c5', '[\"*\"]', '2025-03-04 10:19:05', NULL, '2025-03-04 10:19:04', '2025-03-04 10:19:05'),
(187, 'App\\Models\\User', 20, 'API Token', 'affbed8b8d577e1f856fbde06b3b6d7076ba9e141a28b339ff36e56a7ad99f2c', '[\"*\"]', '2025-03-04 10:22:17', NULL, '2025-03-04 10:22:16', '2025-03-04 10:22:17'),
(188, 'App\\Models\\User', 20, 'API Token', 'd11766061302d3fe11378614efecd9252050b2042e9a12b724f575d29e86397a', '[\"*\"]', '2025-03-04 10:27:22', NULL, '2025-03-04 10:27:22', '2025-03-04 10:27:22'),
(189, 'App\\Models\\User', 20, 'API Token', '57ea6a673b55451a36103de2c9ca149d68859bd4c4f8a7324ce2ba77a30ca22f', '[\"*\"]', '2025-03-04 10:55:44', NULL, '2025-03-04 10:55:44', '2025-03-04 10:55:44'),
(190, 'App\\Models\\User', 20, 'API Token', '9d5b3f376d5c208c0f9d31a451c647aabb688cb4079b35475b97d0837ff476f5', '[\"*\"]', '2025-03-04 11:06:05', NULL, '2025-03-04 11:06:05', '2025-03-04 11:06:05'),
(191, 'App\\Models\\User', 20, 'API Token', '8169003422471c70321addfbf40f03eb3cf347b8968d4ee32808ae37fd880fac', '[\"*\"]', '2025-03-04 11:06:42', NULL, '2025-03-04 11:06:41', '2025-03-04 11:06:42'),
(192, 'App\\Models\\User', 20, 'API Token', '15a65ab898f00db5954f54ccdd513bb1e4bba69d5797df4673c6ac00381f9a6c', '[\"*\"]', '2025-03-04 11:08:14', NULL, '2025-03-04 11:08:13', '2025-03-04 11:08:14'),
(193, 'App\\Models\\User', 20, 'API Token', '533b18f7717a050a476f7f5109227006d989de1aa6ebd5aa73878fa6acc9998d', '[\"*\"]', '2025-03-04 11:16:19', NULL, '2025-03-04 11:16:18', '2025-03-04 11:16:19'),
(194, 'App\\Models\\User', 20, 'API Token', '14c5cda38b8f9edcd0dc67067c842ba6e0f3d2bb8129b120c22d241da2d37d98', '[\"*\"]', '2025-03-04 11:19:21', NULL, '2025-03-04 11:19:20', '2025-03-04 11:19:21'),
(195, 'App\\Models\\User', 20, 'API Token', '6c4068b4ca6dd2c4c9c8edc49fad60d9e2c5c0bcfe3e069be931c237b792ad85', '[\"*\"]', '2025-03-04 11:24:00', NULL, '2025-03-04 11:23:59', '2025-03-04 11:24:00'),
(196, 'App\\Models\\User', 20, 'API Token', '5fb8e313d59b85b9666968e0c4a978d95ebe18808cfe10fe1f7fb9650c48d975', '[\"*\"]', '2025-03-04 11:25:08', NULL, '2025-03-04 11:25:06', '2025-03-04 11:25:08'),
(197, 'App\\Models\\User', 20, 'API Token', 'bce10a4143b5fafa4b8280aa64aa5b02f3e86ddaef4386328e048ea2f9aa17f5', '[\"*\"]', '2025-03-04 11:34:38', NULL, '2025-03-04 11:34:37', '2025-03-04 11:34:38'),
(198, 'App\\Models\\User', 20, 'API Token', '074d57e653e37565409fe66cc994f1eb9a7cf19c2a144221bfd95c8bc38da584', '[\"*\"]', '2025-03-04 11:46:08', NULL, '2025-03-04 11:46:07', '2025-03-04 11:46:08'),
(199, 'App\\Models\\User', 20, 'API Token', '5aaaaa0262149b343ed6e9c0b12ac5dbb4d6c32c9127bd9872c3e9ca3285f874', '[\"*\"]', '2025-03-05 06:38:56', NULL, '2025-03-05 06:38:56', '2025-03-05 06:38:56'),
(200, 'App\\Models\\User', 20, 'API Token', '4baa7712feea378107a23e1c9e4ceea8dcf3aa8804e28fa7d032e794e19a3300', '[\"*\"]', '2025-03-05 06:41:40', NULL, '2025-03-05 06:41:39', '2025-03-05 06:41:40'),
(201, 'App\\Models\\User', 20, 'API Token', 'a73649525e79a87b366f2706b2e42f5049879bcdc36af3d0203f702e81c86293', '[\"*\"]', '2025-03-05 06:43:40', NULL, '2025-03-05 06:43:39', '2025-03-05 06:43:40'),
(202, 'App\\Models\\User', 20, 'API Token', '05ec4ecd4c6715564bb273774b4258d0ababcfacba040d741fbdf58fffb8af63', '[\"*\"]', '2025-03-05 06:48:10', NULL, '2025-03-05 06:48:09', '2025-03-05 06:48:10'),
(203, 'App\\Models\\User', 20, 'API Token', 'e7880dec5f45d49a5e808b03ab4833b0d9a9383aaf13857828b80d17ddb77a8f', '[\"*\"]', '2025-03-05 06:49:41', NULL, '2025-03-05 06:49:40', '2025-03-05 06:49:41'),
(204, 'App\\Models\\User', 20, 'API Token', '18c30236d005bf9b84a60654372e37898df167460abd0edc7e1cb403ad4b5537', '[\"*\"]', '2025-03-05 06:57:55', NULL, '2025-03-05 06:57:54', '2025-03-05 06:57:55'),
(205, 'App\\Models\\User', 20, 'API Token', 'c17aff9607d59eb302f4afa7a4a23e0e398d20757750705c1fce15c73e314d4e', '[\"*\"]', '2025-03-05 06:59:18', NULL, '2025-03-05 06:59:17', '2025-03-05 06:59:18'),
(206, 'App\\Models\\User', 20, 'API Token', '4254c23807d3bdde2f5f3749e89e844ebb571f3d61a0500d137f5eca414f9303', '[\"*\"]', '2025-03-05 07:05:20', NULL, '2025-03-05 07:05:18', '2025-03-05 07:05:20'),
(207, 'App\\Models\\User', 20, 'API Token', 'e61b94696413470f215e323d98ad03606e75b3501bff1a2e38decbf2bd07ab37', '[\"*\"]', '2025-03-05 07:09:10', NULL, '2025-03-05 07:09:09', '2025-03-05 07:09:10'),
(208, 'App\\Models\\User', 20, 'API Token', '206e3dd100b8cad5f72b41f6d902f0fca73b269a095401cfeaab4b4435a9a801', '[\"*\"]', '2025-03-05 07:20:02', NULL, '2025-03-05 07:20:01', '2025-03-05 07:20:02'),
(209, 'App\\Models\\User', 20, 'API Token', '61e1ce5ce8b9770a1f19aa053e1a09c481ea3fc6ed67118726bea63180876b9f', '[\"*\"]', '2025-03-05 07:20:21', NULL, '2025-03-05 07:20:21', '2025-03-05 07:20:21'),
(210, 'App\\Models\\User', 20, 'API Token', '4a7ef5113113d772cff2b5287b97941adc6129c93ee5be25e9e613832ea34a5e', '[\"*\"]', '2025-03-05 07:24:56', NULL, '2025-03-05 07:24:56', '2025-03-05 07:24:56'),
(211, 'App\\Models\\User', 20, 'API Token', '718b53fac39f03a343d82d450cde3f20fa044dc45b6207c1835c4a40b95aad81', '[\"*\"]', '2025-03-05 07:47:19', NULL, '2025-03-05 07:47:18', '2025-03-05 07:47:19'),
(212, 'App\\Models\\User', 20, 'API Token', 'ab8b663ca6484059c236441d8b89bf2a7ef691f29d4cbef641bc9cb776fe15a3', '[\"*\"]', '2025-03-05 07:51:33', NULL, '2025-03-05 07:51:32', '2025-03-05 07:51:33'),
(213, 'App\\Models\\User', 20, 'API Token', '4dd69f39271803a5601705848f26d6ee57acd14cde2bfd475a4967600c9c4e2d', '[\"*\"]', '2025-03-05 07:55:14', NULL, '2025-03-05 07:55:12', '2025-03-05 07:55:14'),
(214, 'App\\Models\\User', 20, 'API Token', 'fa90dc7b30d040046b9ef14a8f6dbfa08b69abac3d160c14135a3abbc9ec52e4', '[\"*\"]', '2025-03-05 09:11:11', NULL, '2025-03-05 09:11:10', '2025-03-05 09:11:11'),
(215, 'App\\Models\\User', 20, 'API Token', 'c66777f7c5d98fe36ecaafc0ceb455c8a1a21aad215997d9789a5d0fef80236a', '[\"*\"]', '2025-03-05 09:15:45', NULL, '2025-03-05 09:15:44', '2025-03-05 09:15:45'),
(216, 'App\\Models\\User', 20, 'API Token', 'a9fe46f18411c0effdb3e47fe5db2e2dc8f241524425fba432b5c3745bef5c19', '[\"*\"]', '2025-03-05 09:18:00', NULL, '2025-03-05 09:18:00', '2025-03-05 09:18:00'),
(217, 'App\\Models\\User', 20, 'API Token', 'bd93135ce6808f7102b39739e147dd3af29f5d88ccc3c75b3815cc2afde4d26a', '[\"*\"]', '2025-03-05 09:22:00', NULL, '2025-03-05 09:21:59', '2025-03-05 09:22:00'),
(218, 'App\\Models\\User', 20, 'API Token', 'f8882fbee27ff780f436b4944febf694d3b1f8f8349a85f424a91bf6170f9de2', '[\"*\"]', '2025-03-05 09:54:16', NULL, '2025-03-05 09:54:15', '2025-03-05 09:54:16'),
(219, 'App\\Models\\User', 20, 'API Token', '88f215c150f87b2ec2c8fbb252ab97e97f543345598c4467a1cee216f694985b', '[\"*\"]', '2025-03-05 10:04:07', NULL, '2025-03-05 10:04:07', '2025-03-05 10:04:07'),
(220, 'App\\Models\\User', 20, 'API Token', '43b24e99f05d84d0197102be60f194bb50c4e6c924c5e169d0d85fd51854ca4f', '[\"*\"]', '2025-03-05 10:13:45', NULL, '2025-03-05 10:13:44', '2025-03-05 10:13:45'),
(221, 'App\\Models\\User', 20, 'API Token', 'edef7c5b939d3a6adff503aeea7f3d8fc3af6a8d787ad80f27c124d9aa9e1bd1', '[\"*\"]', '2025-03-05 10:26:24', NULL, '2025-03-05 10:26:23', '2025-03-05 10:26:24'),
(222, 'App\\Models\\User', 20, 'API Token', '215a562844712cde540f1846364bcc65a465f7226f2cd804fd44e0c29f377c53', '[\"*\"]', '2025-03-05 10:46:50', NULL, '2025-03-05 10:46:49', '2025-03-05 10:46:50'),
(223, 'App\\Models\\User', 20, 'API Token', '4655bacb98b284b427d18a0899f15fac7acf40018e6344e985db8e888a9fcbcd', '[\"*\"]', '2025-03-05 10:50:23', NULL, '2025-03-05 10:50:21', '2025-03-05 10:50:23'),
(224, 'App\\Models\\User', 20, 'API Token', '5ed001edcf67f73c0e0610397954e2f302d52d54dc7fe805d8489ec84021fef7', '[\"*\"]', '2025-03-05 10:56:29', NULL, '2025-03-05 10:56:28', '2025-03-05 10:56:29'),
(225, 'App\\Models\\User', 20, 'API Token', '842ba90967c953af6f8b9bbc075a0e5df01d0c2f0ab11a0e368bcad6502213cd', '[\"*\"]', '2025-03-05 11:06:30', NULL, '2025-03-05 11:06:29', '2025-03-05 11:06:30'),
(226, 'App\\Models\\User', 20, 'API Token', 'cb7321c438c6cca0534017b2a21ed8f61ba6447b3485ce483b302ca5027b8bfa', '[\"*\"]', '2025-03-05 11:15:12', NULL, '2025-03-05 11:15:11', '2025-03-05 11:15:12'),
(227, 'App\\Models\\User', 20, 'API Token', 'bb543458a4c139277d280a76372a72b941aaba21f37a89ec8401c27f4e11b720', '[\"*\"]', '2025-03-05 11:22:41', NULL, '2025-03-05 11:22:39', '2025-03-05 11:22:41'),
(228, 'App\\Models\\User', 20, 'API Token', '68bf81ff3df3e55b19d822648b1b425be607326422eba408f978675bd5ea0d9b', '[\"*\"]', '2025-03-05 11:26:06', NULL, '2025-03-05 11:26:06', '2025-03-05 11:26:06'),
(229, 'App\\Models\\User', 20, 'API Token', '1035e269079631a320187628b25f4db50418c67fb9ec6f3bb46424a523d393af', '[\"*\"]', '2025-03-05 11:31:40', NULL, '2025-03-05 11:31:39', '2025-03-05 11:31:40'),
(230, 'App\\Models\\User', 20, 'API Token', '72479f3b3c8bcdb1908084c2e90074a2566fe46039ec20a478cfb16e85f7501c', '[\"*\"]', '2025-03-05 11:35:01', NULL, '2025-03-05 11:35:00', '2025-03-05 11:35:01'),
(231, 'App\\Models\\User', 20, 'API Token', '92ca3ec9b8183b9bce40fd823e0396ed57ebcd4383165b95ce61716c41236489', '[\"*\"]', '2025-03-05 11:35:19', NULL, '2025-03-05 11:35:18', '2025-03-05 11:35:19'),
(232, 'App\\Models\\User', 20, 'API Token', '1731b54bf5f7942639b67a89118441a869ddd575c621f85f36b1e345bb3a0e3d', '[\"*\"]', '2025-03-05 11:36:30', NULL, '2025-03-05 11:36:28', '2025-03-05 11:36:30'),
(233, 'App\\Models\\User', 17, 'API Token', '62888a1b145716d0b048ca11aae45cd54aa5095e1c0756c8c644424229ccfe88', '[\"*\"]', '2025-03-05 12:16:32', NULL, '2025-03-05 11:36:33', '2025-03-05 12:16:32'),
(234, 'App\\Models\\User', 20, 'API Token', '7dad3afcd357b8f8b0e85655ca94e97ab042905e8c0db98b8dc0b8ca807819d3', '[\"*\"]', '2025-03-05 11:39:45', NULL, '2025-03-05 11:39:44', '2025-03-05 11:39:45'),
(235, 'App\\Models\\User', 20, 'API Token', '6957fb9c1728ede6648be6d0bc4e471a8d7ff54e238b635f2d3a8356eb2cfc08', '[\"*\"]', '2025-03-05 11:40:50', NULL, '2025-03-05 11:40:49', '2025-03-05 11:40:50'),
(236, 'App\\Models\\User', 20, 'API Token', '56ca89d001f0a054e92632c99daea806f8b886ae1070bd0e5bf79c2ec45b87bf', '[\"*\"]', '2025-03-05 11:47:57', NULL, '2025-03-05 11:47:57', '2025-03-05 11:47:57'),
(237, 'App\\Models\\User', 20, 'API Token', 'bdc15b796a713eacaa1c144a21ff36a8990a30f1bcf673a177829d3b1e63b21e', '[\"*\"]', '2025-03-05 12:00:19', NULL, '2025-03-05 12:00:18', '2025-03-05 12:00:19'),
(238, 'App\\Models\\User', 20, 'API Token', 'b3441f66d4fae2d67a1564391720a8bc7ff2d9f5c92e1560c9959b46faed9a6e', '[\"*\"]', '2025-03-05 12:08:34', NULL, '2025-03-05 12:08:33', '2025-03-05 12:08:34'),
(239, 'App\\Models\\User', 20, 'API Token', '01df095e749faa0504be86568b7ce93d5169b33b01003eba086a5314a1ba806c', '[\"*\"]', '2025-03-05 12:08:46', NULL, '2025-03-05 12:08:45', '2025-03-05 12:08:46'),
(240, 'App\\Models\\User', 20, 'API Token', '761f46b82ba48be9f3b10f21bf20b6f09abb8c28b64948f4d10acd2d80352f64', '[\"*\"]', '2025-03-05 12:10:39', NULL, '2025-03-05 12:10:38', '2025-03-05 12:10:39'),
(241, 'App\\Models\\User', 20, 'API Token', 'd4b7247a4fad43178e1a9c807d47fa088cfa67c809b4f30472813077e0086880', '[\"*\"]', '2025-03-05 12:41:31', NULL, '2025-03-05 12:41:31', '2025-03-05 12:41:31'),
(242, 'App\\Models\\User', 20, 'API Token', 'b29334cead2fdd2f030ddc137e6d95fb4c7095fa3910614849fddea6078e75d0', '[\"*\"]', '2025-03-06 09:29:39', NULL, '2025-03-06 09:29:38', '2025-03-06 09:29:39'),
(243, 'App\\Models\\User', 20, 'API Token', '2d33e4243807018ac9533a2566ae22650fc7dd8d78c8e46ee19105b7fbb82382', '[\"*\"]', '2025-03-07 06:40:40', NULL, '2025-03-07 06:40:38', '2025-03-07 06:40:40'),
(244, 'App\\Models\\User', 20, 'API Token', 'c47eff309b3c1d78461dca49c86dd6ddd50272eeae0dac41db0dee89293a9b84', '[\"*\"]', '2025-03-07 06:54:35', NULL, '2025-03-07 06:54:33', '2025-03-07 06:54:35'),
(245, 'App\\Models\\User', 20, 'API Token', '755940b87829e9adf3d49a1584a58a41abc158258dd451a0fc986fc0587da862', '[\"*\"]', '2025-03-07 06:58:13', NULL, '2025-03-07 06:58:12', '2025-03-07 06:58:13'),
(246, 'App\\Models\\User', 20, 'API Token', 'c371f5d1044800f1c1710c6e5d7d586a53837e46f99df18c9f817b305521f995', '[\"*\"]', '2025-03-07 06:59:28', NULL, '2025-03-07 06:59:27', '2025-03-07 06:59:28'),
(247, 'App\\Models\\User', 20, 'API Token', 'd7b2b8cce7ffec1a3e068f7af9dddf71ae5a1df160295e39793ef738c2b90eb7', '[\"*\"]', '2025-03-10 09:30:01', NULL, '2025-03-10 09:30:00', '2025-03-10 09:30:01'),
(248, 'App\\Models\\User', 20, 'API Token', '0d7f094bdac9c36d5e937c621591dc00e9c30252b01c12042a6f97122aef20b7', '[\"*\"]', '2025-03-10 09:34:11', NULL, '2025-03-10 09:34:10', '2025-03-10 09:34:11'),
(249, 'App\\Models\\User', 20, 'API Token', 'f920c8cf2247cedb190cd0cee4f72067ed842b6cd1fb774f84fa16f81a596a0b', '[\"*\"]', '2025-03-10 09:35:10', NULL, '2025-03-10 09:35:09', '2025-03-10 09:35:10'),
(250, 'App\\Models\\User', 20, 'API Token', 'cd29c9381e791bbacf8e936ba8ddd845e55585f5b4a22daff8b331475d3893da', '[\"*\"]', '2025-03-10 09:40:47', NULL, '2025-03-10 09:40:46', '2025-03-10 09:40:47'),
(251, 'App\\Models\\User', 20, 'API Token', 'eacefe5cff3ef0a6fc5cb7a49df5d13621c3fe8f6c5ff6499d89d817d0d55fde', '[\"*\"]', '2025-03-10 10:07:35', NULL, '2025-03-10 10:07:34', '2025-03-10 10:07:35'),
(252, 'App\\Models\\User', 20, 'API Token', '77ebdba551064bd128ab5c38cc7548989b44a5ed7511bc34f7e33ebfe9ac944b', '[\"*\"]', '2025-03-10 10:07:56', NULL, '2025-03-10 10:07:55', '2025-03-10 10:07:56'),
(253, 'App\\Models\\User', 20, 'API Token', 'b274b7e29d7a2e75706ca361c1f02f1c50154b2018b8f9784433a3f9bbc301a6', '[\"*\"]', '2025-03-10 10:15:18', NULL, '2025-03-10 10:15:18', '2025-03-10 10:15:18'),
(254, 'App\\Models\\User', 20, 'API Token', '1aacd40a8d9d8179407643b377267638891e28091f3ea377e0548083d764f0a2', '[\"*\"]', '2025-03-10 10:44:36', NULL, '2025-03-10 10:44:07', '2025-03-10 10:44:36'),
(255, 'App\\Models\\User', 20, 'API Token', '001686ca8611d4bac9db3028dd5f9504a2bb74df0d20f51d39f3654ab21e1eb2', '[\"*\"]', '2025-03-10 10:50:01', NULL, '2025-03-10 10:50:00', '2025-03-10 10:50:01'),
(256, 'App\\Models\\User', 20, 'API Token', '492333b2f841562b9b60d34ce8fa1f0f19dc543c2f669cd2de06874db7659e8b', '[\"*\"]', '2025-03-10 10:53:25', NULL, '2025-03-10 10:53:24', '2025-03-10 10:53:25'),
(257, 'App\\Models\\User', 20, 'API Token', '47c35aef1e2105cffa1675f595db85dc815bf29966167ff9ff33d7c33934225b', '[\"*\"]', '2025-03-10 10:53:37', NULL, '2025-03-10 10:53:35', '2025-03-10 10:53:37'),
(258, 'App\\Models\\User', 20, 'API Token', '35ca1c43ad5f46e5e82dc14c52c8d32bc8e1509359f7711e379e747eb8e42fce', '[\"*\"]', '2025-03-10 10:58:53', NULL, '2025-03-10 10:58:51', '2025-03-10 10:58:53'),
(259, 'App\\Models\\User', 20, 'API Token', 'f606da31b2c5dffe1fa83ccd6d1fa1f098e3834fff5a047b673a9362b8df2e46', '[\"*\"]', '2025-03-10 11:07:01', NULL, '2025-03-10 11:07:00', '2025-03-10 11:07:01'),
(260, 'App\\Models\\User', 20, 'API Token', '6358e693621af4bed64a282bc1d165bf9dbc7a1f6fc5de93367ca1374d69293f', '[\"*\"]', '2025-03-10 11:13:01', NULL, '2025-03-10 11:13:01', '2025-03-10 11:13:01'),
(261, 'App\\Models\\User', 20, 'API Token', '9028ef027f09a7577597365286105f5ac72185383a1e704bdf96bcb20505c7e0', '[\"*\"]', '2025-03-10 17:17:29', NULL, '2025-03-10 17:17:29', '2025-03-10 17:17:29'),
(262, 'App\\Models\\User', 20, 'API Token', 'e46f7e269cd3bb8eadea1af84addd901b5e868209a45c879c5a8ca3be228d9c1', '[\"*\"]', '2025-03-10 17:34:18', NULL, '2025-03-10 17:34:17', '2025-03-10 17:34:18');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(263, 'App\\Models\\User', 20, 'API Token', '9a5d6f44d6441ff940f46b06e43ae82ec04f42d420503ea4dc264fc24086f6b3', '[\"*\"]', '2025-03-10 17:40:12', NULL, '2025-03-10 17:40:11', '2025-03-10 17:40:12'),
(264, 'App\\Models\\User', 20, 'API Token', 'ab8102b19077cdde230e654e37c2c83a5d0422e7ce075f520df753636cf22b88', '[\"*\"]', '2025-03-10 17:45:13', NULL, '2025-03-10 17:45:12', '2025-03-10 17:45:13'),
(265, 'App\\Models\\User', 20, 'API Token', '18960730be50503db75ca370d38ccb3102518938044d3ceac437805236ff0c1a', '[\"*\"]', '2025-03-10 17:52:19', NULL, '2025-03-10 17:52:18', '2025-03-10 17:52:19'),
(266, 'App\\Models\\User', 20, 'API Token', 'ae9d0d83af33c2b58c6c5edc0d348509afc6235bcb35900a4552a670f0721e70', '[\"*\"]', '2025-03-10 17:59:13', NULL, '2025-03-10 17:59:13', '2025-03-10 17:59:13'),
(267, 'App\\Models\\User', 20, 'API Token', '10f9df906f0274650738b6496d038e5c4f095367b3cb75fc4c49b86dc3e22ac7', '[\"*\"]', '2025-03-10 18:00:49', NULL, '2025-03-10 18:00:48', '2025-03-10 18:00:49'),
(268, 'App\\Models\\User', 20, 'API Token', 'a2f4212e2f62cb69bddaa488ae9fe796ea3f8f014f9f6e66db3624c9312d24a7', '[\"*\"]', '2025-03-10 18:10:48', NULL, '2025-03-10 18:10:47', '2025-03-10 18:10:48'),
(269, 'App\\Models\\User', 20, 'API Token', '009336ea07afba13df5cc090f2d3eaab9fa1a34d0600f53db65ab7af793b5ced', '[\"*\"]', '2025-03-10 18:18:25', NULL, '2025-03-10 18:18:24', '2025-03-10 18:18:25'),
(270, 'App\\Models\\User', 20, 'API Token', '638c27d6a34d938b7a4b33496b69f58d4d0cde4f88350dbb83400496f945def7', '[\"*\"]', '2025-03-10 18:27:41', NULL, '2025-03-10 18:27:40', '2025-03-10 18:27:41'),
(271, 'App\\Models\\User', 20, 'API Token', 'e1f4ac5c51e73e97992ca336ee3308d6263f4046492d6c5ec392f38ec640ee6c', '[\"*\"]', '2025-03-10 18:29:48', NULL, '2025-03-10 18:29:48', '2025-03-10 18:29:48'),
(272, 'App\\Models\\User', 20, 'API Token', '72b6b2e2aee19029ca548a00ef5564e95221d16f7e9593af3d32d86dc7e47d87', '[\"*\"]', '2025-03-10 18:33:44', NULL, '2025-03-10 18:33:43', '2025-03-10 18:33:44'),
(273, 'App\\Models\\User', 20, 'API Token', 'ff1bcfed5a1602078499de0f38d27241b8ef096ec3c6cfbab93e1d77c5d70465', '[\"*\"]', '2025-03-10 18:40:12', NULL, '2025-03-10 18:40:11', '2025-03-10 18:40:12'),
(274, 'App\\Models\\User', 20, 'API Token', '2ba145506b13a3776fa15601f6cadc04f61c446ed7fc34a57c805b9ee99e5214', '[\"*\"]', NULL, NULL, '2025-03-10 18:44:04', '2025-03-10 18:44:04'),
(275, 'App\\Models\\User', 20, 'API Token', 'e480dccacaaa7bfd61453b2efb04b9d0a38390e2b33a2bd4530e8b39570468e3', '[\"*\"]', NULL, NULL, '2025-03-10 18:49:02', '2025-03-10 18:49:02'),
(276, 'App\\Models\\User', 20, 'API Token', '5e04f820d2b89e89c511efd1967c1230243ed825f7e1722320e3f5ca01788cf3', '[\"*\"]', '2025-03-10 18:52:05', NULL, '2025-03-10 18:52:05', '2025-03-10 18:52:05'),
(277, 'App\\Models\\User', 20, 'API Token', 'd4f77a6d0b0907bf7dc3dd1a97344b129d52eddca2bf60bb52d117fdf0c83a2a', '[\"*\"]', '2025-03-10 19:03:10', NULL, '2025-03-10 19:03:09', '2025-03-10 19:03:10'),
(278, 'App\\Models\\User', 20, 'API Token', '5b355be51a959c33cb93473cf2434b9d36a6f8ab169b03e9e402b69e33c07037', '[\"*\"]', '2025-03-11 07:56:23', NULL, '2025-03-11 07:56:19', '2025-03-11 07:56:23'),
(279, 'App\\Models\\User', 20, 'API Token', '0809bd63ac4a28429e7e772f772456ffeafb8cdee34238b4c4e400fb834f8fa0', '[\"*\"]', '2025-03-11 08:01:54', NULL, '2025-03-11 08:01:53', '2025-03-11 08:01:54'),
(280, 'App\\Models\\User', 20, 'API Token', '8152a759ac1be7372abb6f530cfb882a4fdc53d1742276003f4a09448cb331fe', '[\"*\"]', '2025-03-11 08:18:30', NULL, '2025-03-11 08:18:29', '2025-03-11 08:18:30'),
(281, 'App\\Models\\User', 20, 'API Token', 'bbfa1484a3093b257a0922be43a4bf23d0401ea9b3edf692c64047b5f8d902ad', '[\"*\"]', '2025-03-11 08:23:42', NULL, '2025-03-11 08:23:41', '2025-03-11 08:23:42'),
(282, 'App\\Models\\User', 20, 'API Token', 'e7680c1afccb05d64117d8d8fd8d305502ef5d949a5b1c022a69593c0080efbe', '[\"*\"]', '2025-03-11 08:29:35', NULL, '2025-03-11 08:29:35', '2025-03-11 08:29:35'),
(283, 'App\\Models\\User', 20, 'API Token', 'fe42c761064dbde73ca073f20bb9e5b3922038ca042ace1cd16a54135d91d076', '[\"*\"]', '2025-03-11 08:53:47', NULL, '2025-03-11 08:53:46', '2025-03-11 08:53:47'),
(284, 'App\\Models\\User', 20, 'API Token', 'c9346e11565b47a633353cce22a05f01fa93ccc6cc5ee63e38a7dcb9569ff670', '[\"*\"]', '2025-03-11 09:48:28', NULL, '2025-03-11 09:48:28', '2025-03-11 09:48:28'),
(285, 'App\\Models\\User', 20, 'API Token', '5b84838c7d32f065d9ce86fcee56a4ef349419231aba94ef23f58175a4c7523b', '[\"*\"]', '2025-03-11 09:54:02', NULL, '2025-03-11 09:54:02', '2025-03-11 09:54:02'),
(286, 'App\\Models\\User', 20, 'API Token', '2d624f1112ece8558504b62f8a748ccbd9c07d8f099a5fa0aed8578a499d9b96', '[\"*\"]', '2025-03-11 10:41:07', NULL, '2025-03-11 10:41:06', '2025-03-11 10:41:07'),
(287, 'App\\Models\\User', 20, 'API Token', '8d9e2130e9b7f66d35e05e7f587719145a4943a2acb26044ba512586953ad32b', '[\"*\"]', '2025-03-11 10:44:02', NULL, '2025-03-11 10:44:01', '2025-03-11 10:44:02'),
(288, 'App\\Models\\User', 20, 'API Token', 'ca67a1abd07f0b4cd50512ead46c83dc718e9c1cbf2bcd7bcfe5b7ba8b647174', '[\"*\"]', '2025-03-11 10:46:48', NULL, '2025-03-11 10:46:47', '2025-03-11 10:46:48'),
(289, 'App\\Models\\User', 20, 'API Token', 'c33abc3b05c06681ac0739c2a470030142c1bb7f467be735c6c1fc82e7b746e2', '[\"*\"]', '2025-03-11 10:49:21', NULL, '2025-03-11 10:49:20', '2025-03-11 10:49:21'),
(290, 'App\\Models\\User', 20, 'API Token', '839a310433aff7b3b3b3e6b37a57f6410fd17752a94f86d73bc0badacabbfe51', '[\"*\"]', '2025-03-11 11:11:28', NULL, '2025-03-11 11:11:28', '2025-03-11 11:11:28'),
(291, 'App\\Models\\User', 20, 'API Token', '034c137afeee3018b88164aca05178a646ebf9ef6dacc85c3a896b30ce3f7599', '[\"*\"]', '2025-03-11 11:25:57', NULL, '2025-03-11 11:25:55', '2025-03-11 11:25:57'),
(292, 'App\\Models\\User', 20, 'API Token', 'e3327ca5334ffd6afa531c0d2272866bfe341181d26ddcd9e1ed625d4a446fd6', '[\"*\"]', '2025-03-11 11:29:44', NULL, '2025-03-11 11:29:43', '2025-03-11 11:29:44'),
(293, 'App\\Models\\User', 20, 'API Token', '4bd8ed916ecc0e511f25ec5ad3c2168618e6b977a3df3fd2ed12b7e7c440d1d0', '[\"*\"]', '2025-03-11 11:37:13', NULL, '2025-03-11 11:37:13', '2025-03-11 11:37:13'),
(294, 'App\\Models\\User', 20, 'API Token', 'f020cdbc9609d7d22bc83cd41c909d4e470150f149e59365ba742a34a22c1c83', '[\"*\"]', '2025-03-11 18:09:18', NULL, '2025-03-11 18:09:18', '2025-03-11 18:09:18'),
(295, 'App\\Models\\User', 20, 'API Token', '1cb760e12fe57013e0273d221c47230d94c73b3e2644e98a560e2215a18cc11f', '[\"*\"]', '2025-03-11 18:15:13', NULL, '2025-03-11 18:15:13', '2025-03-11 18:15:13'),
(296, 'App\\Models\\User', 20, 'API Token', '162c0ac3b504961c793e1cf69d50e2fe341d424752fa4af35b53e4efa79a9b62', '[\"*\"]', '2025-03-11 18:18:15', NULL, '2025-03-11 18:18:14', '2025-03-11 18:18:15'),
(297, 'App\\Models\\User', 20, 'API Token', '3bab70178eb9ab6062c63bb9a1f5fdff80b59b0f2f7f444821b6c57f2ba83550', '[\"*\"]', '2025-03-11 18:20:47', NULL, '2025-03-11 18:20:47', '2025-03-11 18:20:47'),
(298, 'App\\Models\\User', 20, 'API Token', '9dcfcf310d42e69091a9b6d8eb504c92cdb085b99bf16920e1c9543197f30953', '[\"*\"]', '2025-03-11 18:23:20', NULL, '2025-03-11 18:23:19', '2025-03-11 18:23:20'),
(299, 'App\\Models\\User', 20, 'API Token', '7006e1cd5bb9391993af1f7745a3eeffa3fc39fd66301c637a7a44c1fc76e1ac', '[\"*\"]', '2025-03-11 18:25:53', NULL, '2025-03-11 18:25:53', '2025-03-11 18:25:53'),
(300, 'App\\Models\\User', 20, 'API Token', '7176a20aa40be7c03bd2d054533ee87487b2f1ce7d8aa188c2bfd83d615e13d5', '[\"*\"]', '2025-03-11 18:44:47', NULL, '2025-03-11 18:44:47', '2025-03-11 18:44:47'),
(301, 'App\\Models\\User', 20, 'API Token', 'e2526ca19d1426f574ccfe7952650ab74eb44ffad567eea79b1c9edd29c4da12', '[\"*\"]', '2025-03-11 18:47:45', NULL, '2025-03-11 18:47:45', '2025-03-11 18:47:45'),
(302, 'App\\Models\\User', 20, 'API Token', 'ba5359ac38c173c22b4b7e62d3b0d04fd8365d2aeb42da5190ed2549d69d5116', '[\"*\"]', '2025-03-11 18:50:48', NULL, '2025-03-11 18:50:48', '2025-03-11 18:50:48'),
(303, 'App\\Models\\User', 20, 'API Token', '289db949f9d1ecd96be1dd1dfa955d2c45b56177aff4c317a18a452653587bd9', '[\"*\"]', '2025-03-12 08:29:08', NULL, '2025-03-12 08:29:08', '2025-03-12 08:29:08'),
(304, 'App\\Models\\User', 20, 'API Token', '9ec314f6f33c152287dacd17e038b875b51ec216699529f6639db93c98e9f9d9', '[\"*\"]', '2025-03-12 08:32:05', NULL, '2025-03-12 08:32:04', '2025-03-12 08:32:05'),
(305, 'App\\Models\\User', 20, 'API Token', 'c7b8968d889654179635262cfb03cd6b2070a1b612e11632404db5b50067c9a7', '[\"*\"]', '2025-03-12 08:42:31', NULL, '2025-03-12 08:42:31', '2025-03-12 08:42:31'),
(306, 'App\\Models\\User', 20, 'API Token', '59bd0914cf4d741f2ad864d5409e480121f82d3ae0753e660c1413041c53b8bf', '[\"*\"]', '2025-03-12 08:45:35', NULL, '2025-03-12 08:45:35', '2025-03-12 08:45:35'),
(307, 'App\\Models\\User', 20, 'API Token', 'cdc9a151fb9583fed71b6e5c8ed5c42b8f75410bcf1c56d18e4c187a3e8baefd', '[\"*\"]', '2025-03-12 08:48:09', NULL, '2025-03-12 08:48:08', '2025-03-12 08:48:09'),
(308, 'App\\Models\\User', 20, 'API Token', 'e88251a96ea46cfb28e6309493f2d7b128911ce8479bb0b221ff55b870838b63', '[\"*\"]', '2025-03-12 08:50:41', NULL, '2025-03-12 08:50:40', '2025-03-12 08:50:41'),
(309, 'App\\Models\\User', 20, 'API Token', '9a9a1560d071914a802c5b57371d8ca12cfd9ff64749434361e3ef53d2a5c9f5', '[\"*\"]', '2025-03-12 10:10:40', NULL, '2025-03-12 10:10:39', '2025-03-12 10:10:40'),
(310, 'App\\Models\\User', 20, 'API Token', '72ac46376b464fdd2e5624dc279945e9be14798b195579a52a1f556052b0069c', '[\"*\"]', '2025-03-12 10:13:25', NULL, '2025-03-12 10:13:25', '2025-03-12 10:13:25'),
(311, 'App\\Models\\User', 20, 'API Token', '2f88df61176fce16ec1ec22be4cda87d7403732ab7f297ef1981867a8694a770', '[\"*\"]', '2025-03-12 11:11:31', NULL, '2025-03-12 11:11:30', '2025-03-12 11:11:31'),
(312, 'App\\Models\\User', 20, 'API Token', '4943175f8288c83e2f5b0e899198c3add5b28893076362d65b92783578f7812f', '[\"*\"]', '2025-03-12 11:33:04', NULL, '2025-03-12 11:33:04', '2025-03-12 11:33:04'),
(313, 'App\\Models\\User', 20, 'API Token', '6c1b7d3a1c5f8bd8d2e43dd126c79f440681bd7cb605686c6be75a26d34c1663', '[\"*\"]', '2025-03-12 11:35:57', NULL, '2025-03-12 11:35:57', '2025-03-12 11:35:57'),
(314, 'App\\Models\\User', 20, 'API Token', '6563aff10676e460d851a4c428aa18c15adec90ade0293d9713844ff15043974', '[\"*\"]', '2025-03-12 11:56:42', NULL, '2025-03-12 11:56:41', '2025-03-12 11:56:42'),
(315, 'App\\Models\\User', 20, 'API Token', '0943bfbc9612ddaded983aadfbb42a7c23fa1c8f8a180241c64cf453ea5a7ced', '[\"*\"]', '2025-03-12 12:03:29', NULL, '2025-03-12 12:03:29', '2025-03-12 12:03:29'),
(316, 'App\\Models\\User', 20, 'API Token', '857f56120e1584b8f7a0c177da1e08bec635810c64df23ec54f8d86677080d52', '[\"*\"]', '2025-03-12 18:52:00', NULL, '2025-03-12 18:51:59', '2025-03-12 18:52:00'),
(317, 'App\\Models\\User', 20, 'API Token', 'a0dd9c2f0dcaf617ee4a3b541afd6175d30d9836f06742aa026fe96d413e3a5c', '[\"*\"]', '2025-03-13 10:20:35', NULL, '2025-03-13 10:20:34', '2025-03-13 10:20:35'),
(318, 'App\\Models\\User', 20, 'API Token', '758e8aca7ba63797870f1f9d0a7b1f915f4ffe8759e69a3c0e368a1b45b49410', '[\"*\"]', '2025-03-13 10:23:54', NULL, '2025-03-13 10:23:52', '2025-03-13 10:23:54'),
(319, 'App\\Models\\User', 20, 'API Token', 'd6b7c7fbda93a1be1113b8b0203dfef28a3dfc8172ea763acfeb3185082a18a2', '[\"*\"]', '2025-03-13 10:27:17', NULL, '2025-03-13 10:27:16', '2025-03-13 10:27:17'),
(320, 'App\\Models\\User', 20, 'API Token', '6f7c46fb7fe1c0655130bc05b9168aae932fcf55f2f20c3099bc2ab5c36e858a', '[\"*\"]', '2025-03-13 10:33:27', NULL, '2025-03-13 10:33:26', '2025-03-13 10:33:27'),
(321, 'App\\Models\\User', 20, 'API Token', '0177db3f3b8bb1ea0ea18e50c478457be68328b048451ded9702b0286fa0ef1c', '[\"*\"]', '2025-03-13 10:42:05', NULL, '2025-03-13 10:42:04', '2025-03-13 10:42:05'),
(322, 'App\\Models\\User', 20, 'API Token', '7a69d09533238e883455bd39426ee1138c0f3528185f709acdc08ca18c83a672', '[\"*\"]', '2025-03-13 10:49:14', NULL, '2025-03-13 10:49:14', '2025-03-13 10:49:14'),
(323, 'App\\Models\\User', 20, 'API Token', 'f0541ffff9559d35f1fcd438753171aad5c7cf007dfcb5f4928b93213bc5f8e1', '[\"*\"]', '2025-03-13 10:52:57', NULL, '2025-03-13 10:52:56', '2025-03-13 10:52:57'),
(324, 'App\\Models\\User', 20, 'API Token', '07b3987d5d52b6ebaaf5f57cd7ef2b1618b541e68c9133aad80a742c433cab36', '[\"*\"]', '2025-03-13 10:59:18', NULL, '2025-03-13 10:59:17', '2025-03-13 10:59:18'),
(325, 'App\\Models\\User', 20, 'API Token', 'b52558c09b008d7e7c84d07b6d2e1b772ca09b933c44360257e359c9e191e20a', '[\"*\"]', '2025-03-13 11:03:38', NULL, '2025-03-13 11:03:37', '2025-03-13 11:03:38'),
(326, 'App\\Models\\User', 20, 'API Token', '2234e5747bb34286521e582079b1db4e1bebd3dcc61b437270ca5c41d325cbea', '[\"*\"]', '2025-03-13 11:14:16', NULL, '2025-03-13 11:14:15', '2025-03-13 11:14:16'),
(327, 'App\\Models\\User', 20, 'API Token', 'c415ccd8a6950f0e6e2573ec7e6f7aab62d986a6f4c128df7c997bab55d7e454', '[\"*\"]', '2025-03-13 11:22:16', NULL, '2025-03-13 11:22:15', '2025-03-13 11:22:16'),
(328, 'App\\Models\\User', 21, 'API Token', 'e27aec6f8d96fcccb0832c052b7982e03408f96327cd5602577b61d8a853ad2b', '[\"*\"]', '2025-03-14 07:57:55', NULL, '2025-03-14 07:34:12', '2025-03-14 07:57:55'),
(329, 'App\\Models\\User', 21, 'API Token', 'fdc57ddab49ada76837b3ef647303fe0d6d4199c34c5d27b661873996d565f96', '[\"*\"]', NULL, NULL, '2025-03-14 11:58:49', '2025-03-14 11:58:49'),
(330, 'App\\Models\\User', 17, 'API Token', '3058b534d6add5be29df69caf948ffdc55d5ea6f5798802e44d4e9d2cc6b186f', '[\"*\"]', '2025-03-14 13:05:37', NULL, '2025-03-14 12:56:53', '2025-03-14 13:05:37'),
(331, 'App\\Models\\User', 22, 'API Token', 'b4aa4bee92f4221c6ec5c28d7dadaa65912ffc01ba4c0d9948e279ca2c91e75f', '[\"*\"]', '2025-04-08 09:51:00', NULL, '2025-03-14 13:05:55', '2025-04-08 09:51:00'),
(332, 'App\\Models\\User', 22, 'API Token', '14b3f83a82c674d4ee7edbe50b519f19761f531402d8d9330c44b72fffa60e5d', '[\"*\"]', '2025-03-14 14:14:23', NULL, '2025-03-14 14:09:30', '2025-03-14 14:14:23'),
(333, 'App\\Models\\User', 20, 'API Token', 'ef012bc98c44703352304d2786e87590b492b2ec0acf7a6c8568dd9b2488f3e9', '[\"*\"]', '2025-03-14 19:30:06', NULL, '2025-03-14 19:30:05', '2025-03-14 19:30:06'),
(334, 'App\\Models\\User', 20, 'API Token', 'a38f9f3615c2a6c486a7a24b0f2758d2f1584de6dcd08f18b13086f3b289124a', '[\"*\"]', '2025-03-14 19:31:24', NULL, '2025-03-14 19:31:23', '2025-03-14 19:31:24'),
(335, 'App\\Models\\User', 20, 'API Token', '63d45a33e617b64cd6fc1714d5fcab2801e19fde5ebad24bd572535edca19b88', '[\"*\"]', '2025-03-14 19:42:30', NULL, '2025-03-14 19:42:29', '2025-03-14 19:42:30'),
(336, 'App\\Models\\User', 20, 'API Token', 'e61444a333d413b99a8ca29d953e0b667a772ad1ab1e4ec7616ef34081c0e675', '[\"*\"]', '2025-03-14 19:44:49', NULL, '2025-03-14 19:44:48', '2025-03-14 19:44:49'),
(337, 'App\\Models\\User', 20, 'API Token', 'c68a025e82f17df1a42ab60fe3f363b4083a97adab40fe04153ef4216fd9aecd', '[\"*\"]', '2025-03-14 19:49:58', NULL, '2025-03-14 19:49:57', '2025-03-14 19:49:58'),
(338, 'App\\Models\\User', 20, 'API Token', 'c777fc809c3d43bcc79feff81617f34dfd69226521ddc6e415a625fe099bb694', '[\"*\"]', '2025-03-14 20:56:15', NULL, '2025-03-14 20:56:15', '2025-03-14 20:56:15'),
(339, 'App\\Models\\User', 17, 'API Token', 'ec7d38e9a85797ac96c3877ad2596912d435236a106b853a90b4fa4415d4c09c', '[\"*\"]', '2025-03-17 07:38:19', NULL, '2025-03-17 07:38:11', '2025-03-17 07:38:19'),
(340, 'App\\Models\\User', 17, 'API Token', 'c0fd63b8a8fdbc6798b661c4ec6cc7a065a7d68252064fdc8b8b3e9c3c71ab1b', '[\"*\"]', '2025-03-17 07:39:29', NULL, '2025-03-17 07:39:03', '2025-03-17 07:39:29'),
(341, 'App\\Models\\User', 17, 'API Token', '1c2c9887910dcafc247e383cac9b957aa62182d5009f550475710a65a511506a', '[\"*\"]', '2025-05-28 13:23:42', NULL, '2025-03-17 08:32:29', '2025-05-28 13:23:42'),
(342, 'App\\Models\\User', 17, 'API Token', 'e2b39d86e6a7a85525208c4903583708284785c8924eaebdd5648a67d5758c0f', '[\"*\"]', '2025-03-21 07:12:20', NULL, '2025-03-17 09:07:38', '2025-03-21 07:12:20'),
(343, 'App\\Models\\User', 20, 'API Token', 'dc0eb212057ee7d24950e943cc9ac2084e07da17b666e4b8c9b403f69b624b5b', '[\"*\"]', '2025-03-17 10:10:02', NULL, '2025-03-17 10:10:01', '2025-03-17 10:10:02'),
(344, 'App\\Models\\User', 20, 'API Token', '2f18541e3762b8d9a05cad2a456918bc1a831d046ac76b9dd2cdc29eb434d6b9', '[\"*\"]', '2025-03-25 10:57:49', NULL, '2025-03-25 10:57:48', '2025-03-25 10:57:49'),
(345, 'App\\Models\\User', 20, 'API Token', 'd12ea859933a5d4e4a130d7913c05fa6b586c26c76d7025b97d49897affa992c', '[\"*\"]', '2025-03-25 11:01:46', NULL, '2025-03-25 11:01:45', '2025-03-25 11:01:46'),
(346, 'App\\Models\\User', 20, 'API Token', '32c5745e634d5e2c24d7a3643614105506fe2d315aecbf1a22df74fd68abee82', '[\"*\"]', '2025-03-25 11:04:05', NULL, '2025-03-25 11:04:03', '2025-03-25 11:04:05'),
(347, 'App\\Models\\User', 20, 'API Token', '4278db6cce0f697a26c4fdedc58b50b2255d0c42da29321fd080c6d7311539da', '[\"*\"]', '2025-03-25 11:20:48', NULL, '2025-03-25 11:20:46', '2025-03-25 11:20:48'),
(348, 'App\\Models\\User', 20, 'API Token', '7fff6acbfdc5bf07ea463f319b9c47b9e6e11882f5f3b6d26afca9ca7e971607', '[\"*\"]', '2025-03-26 09:59:01', NULL, '2025-03-26 09:59:00', '2025-03-26 09:59:01'),
(349, 'App\\Models\\User', 20, 'API Token', '726aadba8aacac6ef589be62387705ac57eb0ea5b8a6f4336e6a0cc68a15b59e', '[\"*\"]', '2025-03-26 10:15:09', NULL, '2025-03-26 10:15:07', '2025-03-26 10:15:09'),
(350, 'App\\Models\\User', 20, 'API Token', 'e424b6c396d2921acda6dee54fd5730cfad4583140f6a7def0e540fd31463050', '[\"*\"]', '2025-03-26 10:28:03', NULL, '2025-03-26 10:28:02', '2025-03-26 10:28:03'),
(351, 'App\\Models\\User', 20, 'API Token', '82118019a2068f0d1d59032dc92ab1d9d40654d82520b59efe90977cfb067fc1', '[\"*\"]', '2025-03-26 10:29:33', NULL, '2025-03-26 10:29:32', '2025-03-26 10:29:33'),
(352, 'App\\Models\\User', 20, 'API Token', '1fae598fedc3154b1d93c00f48b770c264f531a8fbb2384ba02f82119583e9fa', '[\"*\"]', '2025-03-26 10:42:45', NULL, '2025-03-26 10:42:44', '2025-03-26 10:42:45'),
(353, 'App\\Models\\User', 20, 'API Token', 'f749f00ff92b1231f3ebb998f7d870a3c1931b81fe19790388bb0af0454f4def', '[\"*\"]', '2025-03-26 11:00:46', NULL, '2025-03-26 11:00:46', '2025-03-26 11:00:46'),
(354, 'App\\Models\\User', 20, 'API Token', '0e9d3264ad66ae651389a876a9d4b9a33c4c34ff7c866e4a6d28b2cd4cb550cc', '[\"*\"]', '2025-03-26 11:11:44', NULL, '2025-03-26 11:11:43', '2025-03-26 11:11:44'),
(355, 'App\\Models\\User', 20, 'API Token', 'ac567cc4b680aa7d12f70fcc618bb3ee7c4a4eb6645856445d7238b7e22e81eb', '[\"*\"]', '2025-03-26 11:18:27', NULL, '2025-03-26 11:18:26', '2025-03-26 11:18:27'),
(356, 'App\\Models\\User', 20, 'API Token', '85a914a867db9145b64f1351e788d8da905956d11057eadbb81357b857b35a5f', '[\"*\"]', '2025-03-26 11:29:07', NULL, '2025-03-26 11:29:06', '2025-03-26 11:29:07'),
(357, 'App\\Models\\User', 20, 'API Token', 'e99f8d46d770a3307a08e9e9cd5e2cd3eb4dfbed6dfddb4871315396519ecf19', '[\"*\"]', '2025-03-26 11:40:44', NULL, '2025-03-26 11:40:43', '2025-03-26 11:40:44'),
(358, 'App\\Models\\User', 20, 'API Token', '4c376d3544962f61b2a2df116625958bc5f2dc755ce8c09fe8162aea100eabde', '[\"*\"]', '2025-03-27 08:54:20', NULL, '2025-03-27 08:54:19', '2025-03-27 08:54:20'),
(359, 'App\\Models\\User', 20, 'API Token', '794a2e82af08683ac88490f8c3f4464df377eca207fe0a17faff7ba99720cc8e', '[\"*\"]', '2025-03-27 09:04:42', NULL, '2025-03-27 09:04:41', '2025-03-27 09:04:42'),
(360, 'App\\Models\\User', 20, 'API Token', 'c94eab6e9fdb5f2424d76ce38ade5096f38e4ff51aacdf0395ce1ca5ac92ab28', '[\"*\"]', '2025-03-27 09:18:16', NULL, '2025-03-27 09:18:15', '2025-03-27 09:18:16'),
(361, 'App\\Models\\User', 20, 'API Token', 'f878b5937b079d4eadfff04cc36ce71fe867f6c6c42eb940864ad0b1be862c00', '[\"*\"]', '2025-03-27 09:43:24', NULL, '2025-03-27 09:43:24', '2025-03-27 09:43:24'),
(362, 'App\\Models\\User', 20, 'API Token', '4a44f6c1b7a6e38b07566ee7b58aa0ea88ec0d35a5fade9739e1d9a522eb43fe', '[\"*\"]', '2025-03-27 09:56:41', NULL, '2025-03-27 09:56:39', '2025-03-27 09:56:41'),
(363, 'App\\Models\\User', 20, 'API Token', '60fc6c8e66e3debd3104b088417698582cc47ab040eca9f913bb587b729c2334', '[\"*\"]', '2025-03-27 10:12:46', NULL, '2025-03-27 10:12:45', '2025-03-27 10:12:46'),
(364, 'App\\Models\\User', 20, 'API Token', '697629d572b022fb8cb95d392d6c513f626d472215bfcd3c192795e4b96e2bb5', '[\"*\"]', '2025-03-27 10:15:02', NULL, '2025-03-27 10:14:54', '2025-03-27 10:15:02'),
(365, 'App\\Models\\User', 20, 'API Token', '4cfced8943240acd6ce88ec3f391db27d55ac7e70f89913b32f94b68be2127c3', '[\"*\"]', '2025-03-27 10:25:42', NULL, '2025-03-27 10:25:41', '2025-03-27 10:25:42'),
(366, 'App\\Models\\User', 20, 'API Token', '26f994e770881632ba441f350b4b826ff40d4bd3f49f8b5da53d8e79bada0ff3', '[\"*\"]', '2025-03-27 10:32:47', NULL, '2025-03-27 10:32:46', '2025-03-27 10:32:47'),
(367, 'App\\Models\\User', 20, 'API Token', '7ffb0e7eea48dd992c1cd290eaca337e1ae493444ac1d9d78c181618df0e6b80', '[\"*\"]', '2025-03-27 10:49:05', NULL, '2025-03-27 10:49:05', '2025-03-27 10:49:05'),
(368, 'App\\Models\\User', 20, 'API Token', '1702ffe3f9d7b4aa703f2cf54e2771670a84e4030ca5e4526e484f27b6906930', '[\"*\"]', '2025-03-27 10:56:05', NULL, '2025-03-27 10:56:04', '2025-03-27 10:56:05'),
(369, 'App\\Models\\User', 20, 'API Token', '3509d6daf5fe11b877125f74bc7ffb907fd020190ee870edca20374d57bc821e', '[\"*\"]', '2025-03-27 11:05:44', NULL, '2025-03-27 11:05:43', '2025-03-27 11:05:44'),
(370, 'App\\Models\\User', 20, 'API Token', 'ce2041542170d6bad8c76f61a79fc179c800365770a1d13db01fa97e1995ca04', '[\"*\"]', '2025-03-27 11:06:46', NULL, '2025-03-27 11:06:45', '2025-03-27 11:06:46'),
(371, 'App\\Models\\User', 20, 'API Token', 'a750a881f0580cd8540f5f2d89ea303ed95497e208c55117f12cf88084d55580', '[\"*\"]', '2025-03-27 11:07:13', NULL, '2025-03-27 11:07:10', '2025-03-27 11:07:13'),
(372, 'App\\Models\\User', 20, 'API Token', '831478835b3f6408f2d34b758409bc70e375b044401765fd2a5e5a40f97f9cbe', '[\"*\"]', '2025-03-27 11:09:26', NULL, '2025-03-27 11:09:25', '2025-03-27 11:09:26'),
(373, 'App\\Models\\User', 20, 'API Token', 'cc7ec4d3b397f47b7ca9358f8089b9425794da3fb83ac19dd8cf3ef86e20e2ea', '[\"*\"]', '2025-03-27 20:19:50', NULL, '2025-03-27 20:19:50', '2025-03-27 20:19:50'),
(374, 'App\\Models\\User', 20, 'API Token', '4aa6f166b155e5f5b6ae5c3091cca23d70cefb31934b1c23eaa22802cdcc4105', '[\"*\"]', '2025-03-27 20:21:12', NULL, '2025-03-27 20:21:11', '2025-03-27 20:21:12'),
(375, 'App\\Models\\User', 20, 'API Token', '7e506b4c486427677cdbfb60066463c5e29faa68871e422607a8088023117ab8', '[\"*\"]', '2025-03-27 20:27:55', NULL, '2025-03-27 20:27:55', '2025-03-27 20:27:55'),
(376, 'App\\Models\\User', 20, 'API Token', 'b4764dbce4862c7e9cde4f3c8eaf9ad45d6d6a4cdf94239063067dd582203fc1', '[\"*\"]', '2025-03-27 20:28:59', NULL, '2025-03-27 20:28:58', '2025-03-27 20:28:59'),
(377, 'App\\Models\\User', 20, 'API Token', 'c1d50625f6a36c20a3b4431494a94badaa7c53ac77ffc74c7cdffef99a2b4869', '[\"*\"]', '2025-03-27 20:40:34', NULL, '2025-03-27 20:40:34', '2025-03-27 20:40:34'),
(378, 'App\\Models\\User', 20, 'API Token', '3649edf6854145dcbe9fe145e8107a5007c1924082fe8add66a919851a1c8241', '[\"*\"]', '2025-03-27 21:01:17', NULL, '2025-03-27 21:01:16', '2025-03-27 21:01:17'),
(379, 'App\\Models\\User', 20, 'API Token', '372e03915ac86139cec0aee2e41ebd382b806e2e3f357cdf89e80b1d78a68c6d', '[\"*\"]', '2025-03-27 21:03:57', NULL, '2025-03-27 21:03:56', '2025-03-27 21:03:57'),
(380, 'App\\Models\\User', 20, 'API Token', '86f39d7babda3ea460e7ac62689d676606f5214b988c647c6195c6c9d904ac84', '[\"*\"]', '2025-03-28 08:10:30', NULL, '2025-03-28 08:10:29', '2025-03-28 08:10:30'),
(381, 'App\\Models\\User', 20, 'API Token', 'bea2ccfbcdf51a18418ac8541b2049b909f02fe2e9c5468fe31707d1cc527bb2', '[\"*\"]', '2025-04-01 13:02:52', NULL, '2025-04-01 13:02:52', '2025-04-01 13:02:52'),
(382, 'App\\Models\\User', 20, 'API Token', 'ba9cf09ba8e5547a9823bc7cf5641ee690d6727e53e22126d81fa5e15cc97094', '[\"*\"]', '2025-04-01 13:12:56', NULL, '2025-04-01 13:12:56', '2025-04-01 13:12:56'),
(383, 'App\\Models\\User', 20, 'API Token', 'cc73a6064595e3ab21ac50d9f06b0bddb555e0422e34915d814179eff7126f83', '[\"*\"]', '2025-04-01 13:20:35', NULL, '2025-04-01 13:20:34', '2025-04-01 13:20:35'),
(384, 'App\\Models\\User', 20, 'API Token', '0a40583285875407aa0d75330ec40fd958fc2fc901d85cc4fe3a675c6dc0e98f', '[\"*\"]', '2025-04-02 09:57:08', NULL, '2025-04-02 09:57:07', '2025-04-02 09:57:08'),
(385, 'App\\Models\\User', 20, 'API Token', '461292b4fc772823ccfe8a670c56a6224293174f3fef1969660b6861e76766d0', '[\"*\"]', '2025-04-02 10:00:31', NULL, '2025-04-02 10:00:30', '2025-04-02 10:00:31'),
(386, 'App\\Models\\User', 20, 'API Token', '00dac554cad32bf03c63d294b14b8789e6ceebc354c79477f61de167d6df64d8', '[\"*\"]', '2025-04-02 10:38:29', NULL, '2025-04-02 10:38:29', '2025-04-02 10:38:29'),
(387, 'App\\Models\\User', 20, 'API Token', '8dd8f68e255fa38affdbedd555c9e7bfac5270cde1f6dd083b2d44f213f34275', '[\"*\"]', '2025-04-02 10:58:40', NULL, '2025-04-02 10:58:40', '2025-04-02 10:58:40'),
(388, 'App\\Models\\User', 20, 'API Token', '1f91fa349b0280f1a3c244b6a44960cea39c2e4343b74c7988da02325730e31e', '[\"*\"]', '2025-04-02 11:18:19', NULL, '2025-04-02 11:18:18', '2025-04-02 11:18:19'),
(389, 'App\\Models\\User', 20, 'API Token', '5149851f3d27473fe2a9ffbbe3c924c8bd3d80721574f96760f9bd032eb355a0', '[\"*\"]', '2025-04-02 11:23:24', NULL, '2025-04-02 11:23:23', '2025-04-02 11:23:24'),
(390, 'App\\Models\\User', 20, 'API Token', 'a228fd33f6ecce0d56f6445d09c7ba063ca0b23e9ad55f1299dbe4a1bfb43556', '[\"*\"]', '2025-04-02 13:05:21', NULL, '2025-04-02 13:05:21', '2025-04-02 13:05:21'),
(391, 'App\\Models\\User', 20, 'API Token', '54c86caed5cb8d22c6004c4989288076e1ead6c7a7e9fde8037bd087678a4ef5', '[\"*\"]', '2025-04-02 13:08:02', NULL, '2025-04-02 13:08:01', '2025-04-02 13:08:02'),
(392, 'App\\Models\\User', 20, 'API Token', 'e813e3daac269806993efa1a3484248f109d3ed1ea7a05e28025acd0d0462c6b', '[\"*\"]', '2025-04-02 13:24:51', NULL, '2025-04-02 13:24:51', '2025-04-02 13:24:51'),
(393, 'App\\Models\\User', 20, 'API Token', 'c313a3db214b66bd0b57e0bc6db353c0004d42f2d8ab0cf310e3ae6a0b51918d', '[\"*\"]', '2025-04-02 13:31:58', NULL, '2025-04-02 13:31:57', '2025-04-02 13:31:58'),
(394, 'App\\Models\\User', 20, 'API Token', '5e5f701be6e5fb0c849d6922385945e3733e5b3ad0a4e813425009204b2d77cd', '[\"*\"]', '2025-04-02 13:46:33', NULL, '2025-04-02 13:46:32', '2025-04-02 13:46:33'),
(395, 'App\\Models\\User', 20, 'API Token', 'f35534e4b5d0aa0e457db57f276422c40c83b7d72076f7d5462ae3599a66f7c2', '[\"*\"]', '2025-04-02 14:07:39', NULL, '2025-04-02 14:07:38', '2025-04-02 14:07:39'),
(396, 'App\\Models\\User', 20, 'API Token', 'f478ecd8b5b2a4a5afcfdb0ffe97e763b947b7e4bce15c5aff4fd06b31f361b9', '[\"*\"]', '2025-04-02 14:16:16', NULL, '2025-04-02 14:16:15', '2025-04-02 14:16:16'),
(397, 'App\\Models\\User', 20, 'API Token', '48ba3084bd0392b536802f44f924347877285abc51a5ebdb328b29e9df3f094a', '[\"*\"]', '2025-04-02 14:28:53', NULL, '2025-04-02 14:28:52', '2025-04-02 14:28:53'),
(398, 'App\\Models\\User', 20, 'API Token', '909c66ec29f1966977b7196a208ea36852df3f90ddef5b1fe973fd03bafc63e1', '[\"*\"]', '2025-04-02 22:03:03', NULL, '2025-04-02 22:03:02', '2025-04-02 22:03:03'),
(399, 'App\\Models\\User', 20, 'API Token', '86483a85c31b0f0e45017d91712391eb73f6c187311f6311ee9904aa9f8e539b', '[\"*\"]', '2025-04-02 22:32:50', NULL, '2025-04-02 22:32:50', '2025-04-02 22:32:50'),
(400, 'App\\Models\\User', 20, 'API Token', '3deb5b601f575d98c7b03a0c0132354fa262879677c72f72c7014e689cd03666', '[\"*\"]', '2025-04-02 22:39:56', NULL, '2025-04-02 22:39:55', '2025-04-02 22:39:56'),
(401, 'App\\Models\\User', 20, 'API Token', 'e89b0bf74346eda5c02ff0fd10d15d80f0aeb988470767a0fb664a290d0006fa', '[\"*\"]', '2025-04-02 23:01:59', NULL, '2025-04-02 23:01:58', '2025-04-02 23:01:59'),
(402, 'App\\Models\\User', 20, 'API Token', 'c1f84675715d68921c0b52d6b2852a000b4384c8604ac68bd4ed563984dee8a8', '[\"*\"]', '2025-04-03 10:40:22', NULL, '2025-04-03 10:40:22', '2025-04-03 10:40:22'),
(403, 'App\\Models\\User', 20, 'API Token', 'de910ce410d06d4f246fd0718830b8a26abeb6b616da9fecb22ad5139152577c', '[\"*\"]', '2025-04-03 10:54:05', NULL, '2025-04-03 10:54:04', '2025-04-03 10:54:05'),
(404, 'App\\Models\\User', 20, 'API Token', '02c65d9702fddc2054ca27fd8b2044f42e197bd127804437ab2dd88bcf8c6a35', '[\"*\"]', '2025-04-03 10:56:30', NULL, '2025-04-03 10:56:30', '2025-04-03 10:56:30'),
(405, 'App\\Models\\User', 20, 'API Token', 'e3fa7a0405791d1afb9193fba615c307f0a3251dde3d20041a967c4a1fa636a6', '[\"*\"]', '2025-04-03 10:58:32', NULL, '2025-04-03 10:58:31', '2025-04-03 10:58:32'),
(406, 'App\\Models\\User', 20, 'API Token', '9ebd1f50c9af239fc0be64b9756df279b9ac0f98ce89c377f12614cb00fdd92c', '[\"*\"]', '2025-04-03 12:03:14', NULL, '2025-04-03 12:03:08', '2025-04-03 12:03:14'),
(407, 'App\\Models\\User', 20, 'API Token', 'b6b6761050a8adb4f519367c4f7fee82e65528df40121e6b60e979ad5c3b272f', '[\"*\"]', '2025-04-03 12:39:36', NULL, '2025-04-03 12:39:35', '2025-04-03 12:39:36'),
(408, 'App\\Models\\User', 20, 'API Token', 'b3f0e42c554b03722b068b679b0ee6743dd7e20b6dff7f99096729fbf09d069f', '[\"*\"]', '2025-04-03 12:53:07', NULL, '2025-04-03 12:53:06', '2025-04-03 12:53:07'),
(409, 'App\\Models\\User', 20, 'API Token', '96a1ee9c3ea7917a4833b8c490c5b3046a92aeeafe557626bfdb663e1548a188', '[\"*\"]', '2025-04-03 13:15:01', NULL, '2025-04-03 13:15:01', '2025-04-03 13:15:01'),
(410, 'App\\Models\\User', 20, 'API Token', 'c0ac682127fca80615e5af2b5b75208c3250b7dd186b2686af0f28c1a864d543', '[\"*\"]', '2025-04-03 13:56:23', NULL, '2025-04-03 13:56:22', '2025-04-03 13:56:23'),
(411, 'App\\Models\\User', 20, 'API Token', '75dfa2440cd678a42e24873fd640f17acac39f31e847f5ec13e4f2b555ff0e23', '[\"*\"]', '2025-04-03 14:12:21', NULL, '2025-04-03 14:12:20', '2025-04-03 14:12:21'),
(412, 'App\\Models\\User', 20, 'API Token', 'd397efee7a19b88635255db9facb182fbf03a72d61c840e4a569758e766509c3', '[\"*\"]', '2025-04-03 14:13:36', NULL, '2025-04-03 14:13:35', '2025-04-03 14:13:36'),
(413, 'App\\Models\\User', 20, 'API Token', '92cf1a039eaf2552962b395c300795d560ef6e616a7a73d4b96ea9561443e54c', '[\"*\"]', '2025-04-03 14:30:16', NULL, '2025-04-03 14:30:15', '2025-04-03 14:30:16'),
(414, 'App\\Models\\User', 20, 'API Token', '31a2df907d9e09f5e59c857faa05a2411ed7d847245816475dbda439b83a9843', '[\"*\"]', '2025-04-03 14:46:40', NULL, '2025-04-03 14:46:40', '2025-04-03 14:46:40'),
(415, 'App\\Models\\User', 17, 'API Token', '25d1b2d4150720f1a4edb9079dfbaab442999969de508ff54c575487dc523a70', '[\"*\"]', '2025-04-18 23:43:52', NULL, '2025-04-04 10:58:18', '2025-04-18 23:43:52'),
(416, 'App\\Models\\User', 20, 'API Token', '3350d81206628478bc1cfb8831cfa73a5892e601822865e9f514e263623723d4', '[\"*\"]', '2025-04-04 11:11:44', NULL, '2025-04-04 11:11:44', '2025-04-04 11:11:44'),
(417, 'App\\Models\\User', 20, 'API Token', '4e4f3f5276bb64bbdaadb587078c424e3a015ea966bcaf44235ffdff9d9710df', '[\"*\"]', '2025-04-04 11:19:51', NULL, '2025-04-04 11:19:51', '2025-04-04 11:19:51'),
(418, 'App\\Models\\User', 21, 'API Token', '28102f5702f5035cf3f3db0d98d020b74370a6bd8c53871689b86d9a7d047064', '[\"*\"]', '2025-04-08 06:49:32', NULL, '2025-04-08 06:49:14', '2025-04-08 06:49:32'),
(419, 'App\\Models\\User', 22, 'API Token', '79940c3431e112d8a5d85e4a883bca6619caa20d9da62f956f8a1f51659b9037', '[\"*\"]', '2025-04-08 06:56:32', NULL, '2025-04-08 06:50:39', '2025-04-08 06:56:32'),
(420, 'App\\Models\\User', 22, 'API Token', 'e26926e553a84e51c297f29cf5d429cbec9d4609c08a7a4d0e80d222fa9d3da0', '[\"*\"]', '2025-04-08 07:02:06', NULL, '2025-04-08 06:56:47', '2025-04-08 07:02:06'),
(421, 'App\\Models\\User', 22, 'API Token', 'a6b89d81361b619af537b58c988c740a8e363ec368ea8e6a0c92f3b6e58fd3c8', '[\"*\"]', '2025-04-08 09:52:26', NULL, '2025-04-08 09:52:16', '2025-04-08 09:52:26'),
(422, 'App\\Models\\User', 22, 'API Token', 'a91aea86e83ca98f41f581445fa88872de59f86e5d52357c9a32b5670234edf8', '[\"*\"]', '2025-04-08 09:55:08', NULL, '2025-04-08 09:55:02', '2025-04-08 09:55:08'),
(423, 'App\\Models\\User', 22, 'API Token', 'aef468c091f140902ea1682e02fc373195986fd526074325b4b4b5ccb8d45efe', '[\"*\"]', '2025-04-15 21:11:46', NULL, '2025-04-08 09:55:19', '2025-04-15 21:11:46'),
(424, 'App\\Models\\User', 22, 'API Token', 'f7eb7601f550141c0d1d2705b89280c81ecd3568d5b18cc8452699d876d79f7d', '[\"*\"]', '2025-04-08 10:22:35', NULL, '2025-04-08 09:59:06', '2025-04-08 10:22:35'),
(425, 'App\\Models\\User', 22, 'API Token', 'dda3ff0097b27210561f326cf9d13ca34543eadcee281a99d78ae2b406bcbd27', '[\"*\"]', '2025-04-08 10:28:57', NULL, '2025-04-08 10:25:44', '2025-04-08 10:28:57'),
(426, 'App\\Models\\User', 22, 'API Token', '278b5bd7b96af0ae1704410262c06df2c1cc5ad042a43ee53388762415cd0b8e', '[\"*\"]', '2025-04-08 11:20:02', NULL, '2025-04-08 11:02:18', '2025-04-08 11:20:02'),
(427, 'App\\Models\\User', 20, 'API Token', '0072e2d51e95350f45c2fa280b0a6f43a335b3601b2522507f8380479f1e84c9', '[\"*\"]', '2025-04-08 11:16:29', NULL, '2025-04-08 11:16:29', '2025-04-08 11:16:29'),
(428, 'App\\Models\\User', 22, 'API Token', 'ea75b18255960fb233468f622fca616d6adbcd59cc272bd55121e8ec3660b590', '[\"*\"]', '2025-04-16 06:58:49', NULL, '2025-04-08 11:27:04', '2025-04-16 06:58:49'),
(429, 'App\\Models\\User', 20, 'API Token', '9099b6fe4c53cb97c5dc2b5392cd52be7e7c3c3074d429045d001ab104cbc76e', '[\"*\"]', '2025-04-08 11:31:21', NULL, '2025-04-08 11:31:20', '2025-04-08 11:31:21'),
(430, 'App\\Models\\User', 20, 'API Token', '95eb6fcb39cf691f7798c94b6e2008aef1433ec75256c848b82c532665066074', '[\"*\"]', '2025-04-08 11:44:27', NULL, '2025-04-08 11:44:27', '2025-04-08 11:44:27'),
(431, 'App\\Models\\User', 20, 'API Token', '6cca1775f708fa8668846630addc7a4a34cccc04ad881e5cea81ba52efb492c7', '[\"*\"]', '2025-04-08 12:35:39', NULL, '2025-04-08 12:35:38', '2025-04-08 12:35:39'),
(432, 'App\\Models\\User', 20, 'API Token', '74778d35a7feff6bae1ae08351a4d177ae730be70ebe988924111256d4ae2526', '[\"*\"]', '2025-04-08 14:48:45', NULL, '2025-04-08 14:48:44', '2025-04-08 14:48:45'),
(433, 'App\\Models\\User', 20, 'API Token', '4fbef046efa4aacd62cd04946c4afbcc1cce737b88d96fe77825f6510cf40728', '[\"*\"]', '2025-04-08 15:08:31', NULL, '2025-04-08 15:08:30', '2025-04-08 15:08:31'),
(434, 'App\\Models\\User', 20, 'API Token', 'ab4ba7693afcd0593481501901408fa40a4d24aa45dc0ff8434786520362e7ce', '[\"*\"]', '2025-04-08 19:37:20', NULL, '2025-04-08 19:37:20', '2025-04-08 19:37:20'),
(435, 'App\\Models\\User', 20, 'API Token', 'f3e9167cd7b8b16918c6b4e1767ca7f3cd77b0a8d711175b6d6639fc671858f4', '[\"*\"]', '2025-04-08 19:50:33', NULL, '2025-04-08 19:50:32', '2025-04-08 19:50:33'),
(436, 'App\\Models\\User', 20, 'API Token', '1fb64e3ec94764fd57eb330093c4ce8afd82082ef49e8132b4429e4d509248fa', '[\"*\"]', '2025-04-08 20:12:20', NULL, '2025-04-08 20:12:19', '2025-04-08 20:12:20'),
(437, 'App\\Models\\User', 20, 'API Token', '8687fb878e669c742fd29f5e8bc0b3a760d169c587566bf54a93c7420ea6963a', '[\"*\"]', '2025-04-09 20:18:06', NULL, '2025-04-09 20:18:06', '2025-04-09 20:18:06'),
(438, 'App\\Models\\User', 20, 'API Token', '342d3b4f177270dc346604ea0df1b7dfd81bb0d7e3e212680ce40c9d70340578', '[\"*\"]', '2025-04-09 21:40:41', NULL, '2025-04-09 21:40:41', '2025-04-09 21:40:41'),
(439, 'App\\Models\\User', 20, 'API Token', 'afcc9df02dc5915a4d07c9e06bc288aad29e12fd82aea2c33f06b0decf91bb3b', '[\"*\"]', '2025-04-09 21:48:29', NULL, '2025-04-09 21:48:28', '2025-04-09 21:48:29'),
(440, 'App\\Models\\User', 20, 'API Token', '08c77ca0e224836698d81af0e63fe54a1d4984ff25cb9162fd3feb85c841a75a', '[\"*\"]', '2025-04-10 09:20:25', NULL, '2025-04-10 09:20:25', '2025-04-10 09:20:25'),
(441, 'App\\Models\\User', 20, 'API Token', '88043202d93f6a3ec87eba769eac17044c400b8a7e66eb890d58bedd50bb03fe', '[\"*\"]', '2025-04-10 13:08:29', NULL, '2025-04-10 13:08:28', '2025-04-10 13:08:29'),
(442, 'App\\Models\\User', 20, 'API Token', '8d5db3e3ba6e6d31b6c12fcd42e41e0ee32f6d6fee5372088c500a57d3b69103', '[\"*\"]', '2025-04-10 14:05:44', NULL, '2025-04-10 14:05:44', '2025-04-10 14:05:44'),
(443, 'App\\Models\\User', 20, 'API Token', '43e07ed3976591c318e8b09017392dfd586f10f4c97af1db30a42fa8fe95976c', '[\"*\"]', '2025-04-10 14:13:14', NULL, '2025-04-10 14:13:13', '2025-04-10 14:13:14'),
(444, 'App\\Models\\User', 20, 'API Token', 'fad518034255506b7f7a105b502886e8cb5e9091a4a302f53ba8e5ee6e0b3cd8', '[\"*\"]', '2025-04-10 14:28:26', NULL, '2025-04-10 14:28:25', '2025-04-10 14:28:26'),
(445, 'App\\Models\\User', 20, 'API Token', 'd9927a5b09953d4466c7e69b724fb5959bf7e7f3c581d37ccc7ed36302bd3bab', '[\"*\"]', '2025-04-10 14:43:30', NULL, '2025-04-10 14:43:29', '2025-04-10 14:43:30'),
(446, 'App\\Models\\User', 20, 'API Token', 'a728905802dfda8f542812a0e49c80b22b76e498bff61a88f34228f8ac7bf1c4', '[\"*\"]', '2025-04-10 14:45:10', NULL, '2025-04-10 14:45:09', '2025-04-10 14:45:10'),
(447, 'App\\Models\\User', 20, 'API Token', 'f68749321e0cc709f463eee3d8202cb77bd19e4fd15b12ead0b8d729f500e26d', '[\"*\"]', '2025-04-10 14:52:49', NULL, '2025-04-10 14:52:48', '2025-04-10 14:52:49'),
(448, 'App\\Models\\User', 20, 'API Token', '61829e96a9c062fa67c8b387631349159cca31f5f5f4322bd15e12072cee8f40', '[\"*\"]', '2025-04-10 14:55:17', NULL, '2025-04-10 14:55:16', '2025-04-10 14:55:17'),
(449, 'App\\Models\\User', 20, 'API Token', '9ed5e6409e00dc176cc2844b160b6670184ded5ed475d21b9e7cdbd85fbd03de', '[\"*\"]', '2025-04-10 15:00:25', NULL, '2025-04-10 15:00:25', '2025-04-10 15:00:25'),
(450, 'App\\Models\\User', 22, 'API Token', '06715ab413e63faa6606534e456261faa106621ecc802828878fdb3334506eb4', '[\"*\"]', '2025-04-16 09:40:20', NULL, '2025-04-11 04:24:18', '2025-04-16 09:40:20'),
(451, 'App\\Models\\User', 20, 'API Token', '1eb8a6dc1e4d6ed4d34685a96083517f0909b65b5af85e7839bc5ed8dc77fadd', '[\"*\"]', '2025-04-11 11:49:14', NULL, '2025-04-11 11:49:14', '2025-04-11 11:49:14'),
(452, 'App\\Models\\User', 20, 'API Token', '5d03d5d6d67177f084534a488d2900459f12c3a841540fe9c52223e064c254d8', '[\"*\"]', '2025-04-14 12:27:30', NULL, '2025-04-14 12:27:30', '2025-04-14 12:27:30'),
(453, 'App\\Models\\User', 20, 'API Token', 'ebae39a35502aa2d37759140070b0724545ca62a65422a2e2bfcdc2d0f04eed9', '[\"*\"]', '2025-04-14 13:22:33', NULL, '2025-04-14 13:22:32', '2025-04-14 13:22:33'),
(454, 'App\\Models\\User', 20, 'API Token', 'c6c4c6bb1fe81d24c3c6880e4a8c8f0de5f3976b9de8a01ba32ef5cc6fa61997', '[\"*\"]', '2025-04-14 13:26:15', NULL, '2025-04-14 13:26:14', '2025-04-14 13:26:15'),
(455, 'App\\Models\\User', 20, 'API Token', 'cf1cc5241e32306a92501eb9e100bf151098e750a718658aae8218df39b83431', '[\"*\"]', '2025-04-14 14:43:24', NULL, '2025-04-14 14:43:19', '2025-04-14 14:43:24'),
(456, 'App\\Models\\User', 20, 'API Token', 'bc3b3bb857d9fc80d6de4b7f22d190d15f9c3a0ea8ba892185db2d8b811417bf', '[\"*\"]', '2025-04-14 14:46:14', NULL, '2025-04-14 14:46:13', '2025-04-14 14:46:14'),
(457, 'App\\Models\\User', 20, 'API Token', '52f335aa5fee5aed14b2d71d023e57904ea6abf234bb2b21e06bfb21125baabb', '[\"*\"]', '2025-04-14 15:10:38', NULL, '2025-04-14 15:10:37', '2025-04-14 15:10:38'),
(458, 'App\\Models\\User', 20, 'API Token', '211a22e62f1f985802f628a68fc8dd63eca835661895450db8ac80827efb92b9', '[\"*\"]', '2025-04-14 15:13:45', NULL, '2025-04-14 15:13:44', '2025-04-14 15:13:45'),
(459, 'App\\Models\\User', 20, 'API Token', '5cdcc9c68a3cdaa5650da6af2d65f7ba60a02736f74f440f850316fd7be702b4', '[\"*\"]', '2025-04-14 18:13:54', NULL, '2025-04-14 18:13:53', '2025-04-14 18:13:54'),
(460, 'App\\Models\\User', 20, 'API Token', 'dc3bee9b39d608bd6e33d788b9aa1f6d3a9d1263958f2d2752101316353c01de', '[\"*\"]', '2025-04-14 18:51:53', NULL, '2025-04-14 18:51:52', '2025-04-14 18:51:53'),
(461, 'App\\Models\\User', 20, 'API Token', 'ae4faf8b92f231dd403df29239fc2b8c62d98f1ec3c0d9fc0fbecdd77e81541a', '[\"*\"]', '2025-04-14 19:04:15', NULL, '2025-04-14 19:04:15', '2025-04-14 19:04:15'),
(462, 'App\\Models\\User', 20, 'API Token', '5fb98800f7cc9660439e91a8798c2d340115971ee6e2ac7c01adc28c07f20112', '[\"*\"]', NULL, NULL, '2025-04-14 20:39:33', '2025-04-14 20:39:33'),
(463, 'App\\Models\\User', 20, 'API Token', 'e473379ad89565a100492598ce0d7881c6ada933e8283048cd9f374bb31f6da6', '[\"*\"]', NULL, NULL, '2025-04-14 20:49:18', '2025-04-14 20:49:18'),
(464, 'App\\Models\\User', 20, 'API Token', 'bfa77655505cdca497ae3f76f9403bcb59f2c31613c58b2ffdfa7f4a7a484c70', '[\"*\"]', '2025-04-14 20:50:17', NULL, '2025-04-14 20:50:16', '2025-04-14 20:50:17'),
(465, 'App\\Models\\User', 20, 'API Token', '428967bdfc07a5a6333f0d21dec5ea8f68984a110419d8f00bebc553cadfeace', '[\"*\"]', '2025-04-14 21:19:41', NULL, '2025-04-14 21:19:41', '2025-04-14 21:19:41'),
(466, 'App\\Models\\User', 20, 'API Token', 'e1edea63cf6627859a1ca2c135dc19274284d5732fcabd6893d3a1a5876980eb', '[\"*\"]', '2025-04-14 21:35:52', NULL, '2025-04-14 21:35:51', '2025-04-14 21:35:52'),
(467, 'App\\Models\\User', 20, 'API Token', '4cfb543546f4d247bc358fabe41ab706f30f2567a6a44dba725e7c828e9dfc32', '[\"*\"]', '2025-04-14 21:55:05', NULL, '2025-04-14 21:55:04', '2025-04-14 21:55:05'),
(468, 'App\\Models\\User', 20, 'API Token', '58c0bbc9469f05d0015b6868ecfe0a5ce2078a3b967e0971cf32a9e6897b2fff', '[\"*\"]', '2025-04-14 23:28:54', NULL, '2025-04-14 23:28:54', '2025-04-14 23:28:54'),
(469, 'App\\Models\\User', 20, 'API Token', '4b39ed726ff30322286e6c7967289ec9b0cdb162a86c6e244f5598626991c801', '[\"*\"]', '2025-04-14 23:37:30', NULL, '2025-04-14 23:37:29', '2025-04-14 23:37:30'),
(470, 'App\\Models\\User', 20, 'API Token', 'd8a5efa32ad441e63a6eb7427598249d333dc3570aad3c9ccdbb5ca8a8994084', '[\"*\"]', '2025-04-14 23:41:02', NULL, '2025-04-14 23:41:01', '2025-04-14 23:41:02'),
(471, 'App\\Models\\User', 20, 'API Token', 'e153b36e0c093b3a72006c5a687a14e2bc9f47fe67494c39f49f126941b2207d', '[\"*\"]', '2025-04-15 04:55:01', NULL, '2025-04-15 04:55:01', '2025-04-15 04:55:01'),
(472, 'App\\Models\\User', 20, 'API Token', '414c1dd6e20e1a0f43dfdf443a76c00508f74e16d8fbbc75d88c1ca14f9ed78e', '[\"*\"]', '2025-04-15 04:57:55', NULL, '2025-04-15 04:57:55', '2025-04-15 04:57:55'),
(473, 'App\\Models\\User', 20, 'API Token', 'fb7e5c7067f5911dd4fdd971ffd5265bcee1619cffbe5302c43f943611510e53', '[\"*\"]', '2025-04-15 05:08:07', NULL, '2025-04-15 05:08:06', '2025-04-15 05:08:07'),
(474, 'App\\Models\\User', 20, 'API Token', '3929d568c81877625d07c9bed76681fda54bd7077b7d64f07a6d80a943c03063', '[\"*\"]', '2025-04-15 05:26:31', NULL, '2025-04-15 05:26:30', '2025-04-15 05:26:31'),
(475, 'App\\Models\\User', 20, 'API Token', '4799eb789894eace24e5c82da30ab0825d9cc66f7340b5b71a945d260fd431cd', '[\"*\"]', '2025-04-15 05:34:43', NULL, '2025-04-15 05:34:43', '2025-04-15 05:34:43'),
(476, 'App\\Models\\User', 20, 'API Token', '13fcc07932a9ac9d3f167071d5d013662db8518d03be36e2b89b8f74d52d7541', '[\"*\"]', '2025-04-15 05:36:17', NULL, '2025-04-15 05:36:16', '2025-04-15 05:36:17'),
(477, 'App\\Models\\User', 20, 'API Token', '2cb9066da53055386acd5c1ee2f51bf583c0dda12eda1b7ada4f36f650396d6f', '[\"*\"]', '2025-04-15 05:38:20', NULL, '2025-04-15 05:38:19', '2025-04-15 05:38:20'),
(478, 'App\\Models\\User', 20, 'API Token', 'a2e25c9fa0f601f87700757f210baa4e55eb2cd36401bffdb5487038edcd155f', '[\"*\"]', '2025-04-15 05:45:07', NULL, '2025-04-15 05:45:07', '2025-04-15 05:45:07'),
(479, 'App\\Models\\User', 20, 'API Token', '89fb76a249deba90c54a330c12f6b5a9fbb1497fbe60d0f373e436cfc4911b9d', '[\"*\"]', '2025-04-15 05:47:09', NULL, '2025-04-15 05:47:09', '2025-04-15 05:47:09'),
(480, 'App\\Models\\User', 20, 'API Token', 'c4b09b6fd020b6196b101aa512aa5ff82e1176f29f0c6a8f26e3089d6444aea2', '[\"*\"]', '2025-04-15 05:49:13', NULL, '2025-04-15 05:49:12', '2025-04-15 05:49:13'),
(481, 'App\\Models\\User', 20, 'API Token', '5d64b75cfbf96ad46986ea9186490aecf890c1031dd1e5a7e447f068392b8a24', '[\"*\"]', '2025-04-15 05:51:17', NULL, '2025-04-15 05:51:16', '2025-04-15 05:51:17'),
(482, 'App\\Models\\User', 20, 'API Token', 'b761d06da26a3e4045716f1bdd3528cdefc87ca5890b6f759df4b0133a396f14', '[\"*\"]', '2025-04-15 05:53:04', NULL, '2025-04-15 05:53:03', '2025-04-15 05:53:04'),
(483, 'App\\Models\\User', 20, 'API Token', '0bfc2a1137952537c3a24d9c2f6a25a6ff84fc020436a699862495c09ce8745a', '[\"*\"]', '2025-04-15 11:24:16', NULL, '2025-04-15 11:24:16', '2025-04-15 11:24:16'),
(484, 'App\\Models\\User', 20, 'API Token', 'aa7ea45f08c43133aba4100e7a25a03dcde30cd3beff7805a354afa95c996a2a', '[\"*\"]', '2025-04-15 11:26:46', NULL, '2025-04-15 11:26:45', '2025-04-15 11:26:46'),
(485, 'App\\Models\\User', 20, 'API Token', 'ac4dc9ee82134738d28d1d8eb981d63dfcc20237cdec3cc82e08da4dd8d46905', '[\"*\"]', '2025-04-15 11:34:31', NULL, '2025-04-15 11:34:31', '2025-04-15 11:34:31'),
(486, 'App\\Models\\User', 20, 'API Token', 'bb094089799a26be68b3c1ee1ce44fe5e5949232b538d7c1fd8f957b152585d3', '[\"*\"]', '2025-04-15 11:36:26', NULL, '2025-04-15 11:36:26', '2025-04-15 11:36:26'),
(487, 'App\\Models\\User', 20, 'API Token', 'eefbffa5f401670221068c31585adba0bd8640bb93a838ccdcb10d0f1db832ed', '[\"*\"]', '2025-04-15 12:14:07', NULL, '2025-04-15 12:14:06', '2025-04-15 12:14:07'),
(488, 'App\\Models\\User', 20, 'API Token', 'fbfe55bd9778ce4e2500318fc6c6983bbcb7d5c61d59dc6ff165bebfa0d52ff3', '[\"*\"]', '2025-04-15 12:37:30', NULL, '2025-04-15 12:37:29', '2025-04-15 12:37:30'),
(489, 'App\\Models\\User', 20, 'API Token', '2bb41a80c7cae96021d9b66abdafc4b5d48430cb92d4db55ebac3f834c0aac55', '[\"*\"]', '2025-04-15 12:45:44', NULL, '2025-04-15 12:45:43', '2025-04-15 12:45:44'),
(490, 'App\\Models\\User', 20, 'API Token', '548513da64bbff2d0c6be50373ea15ce1f88efb7cd03fd0a1d70a5071e7ff52b', '[\"*\"]', '2025-04-15 12:53:57', NULL, '2025-04-15 12:53:57', '2025-04-15 12:53:57'),
(491, 'App\\Models\\User', 20, 'API Token', '2b7740a0cc1be927c0b0b27131db2beabb8dfcbd74ea5ccd909fd9785e7d260a', '[\"*\"]', '2025-04-15 13:20:27', NULL, '2025-04-15 13:20:27', '2025-04-15 13:20:27'),
(492, 'App\\Models\\User', 20, 'API Token', '276df6a2a729df24883c4820fd2f38b3c93c5dd8194dd3e925c6297b02bd2fc2', '[\"*\"]', '2025-04-15 13:28:40', NULL, '2025-04-15 13:28:39', '2025-04-15 13:28:40'),
(493, 'App\\Models\\User', 20, 'API Token', 'f8e1d7be2fc0ccd5f01cb8fb5bd480eed895a254bd906093e6de5302920bcd34', '[\"*\"]', '2025-04-15 13:36:50', NULL, '2025-04-15 13:36:50', '2025-04-15 13:36:50'),
(494, 'App\\Models\\User', 20, 'API Token', '92255a84420a65b65bd619a4dc37659b1e6a8d00b53fa83f588fac6a23550f0b', '[\"*\"]', '2025-04-15 13:57:59', NULL, '2025-04-15 13:57:58', '2025-04-15 13:57:59'),
(495, 'App\\Models\\User', 20, 'API Token', 'bc6f6eb627abbfed648d6f8383d8e003f7777daa152e542b21989f956ccbc423', '[\"*\"]', '2025-04-15 14:19:58', NULL, '2025-04-15 14:19:58', '2025-04-15 14:19:58'),
(496, 'App\\Models\\User', 20, 'API Token', '9c24592d6ab395b5928c44c15e477cf340e04954f7fe932eb7d57e1f3d8c257a', '[\"*\"]', '2025-04-15 14:21:56', NULL, '2025-04-15 14:21:55', '2025-04-15 14:21:56'),
(497, 'App\\Models\\User', 20, 'API Token', 'ce250739b8948ae4eb8ae811d57d78bfb6dd2cc975cfe2d4cf94ba942b90c52d', '[\"*\"]', '2025-04-15 14:23:29', NULL, '2025-04-15 14:23:29', '2025-04-15 14:23:29'),
(498, 'App\\Models\\User', 20, 'API Token', 'fa0e7d4c06594bf2bea3d350f6f98c99795cb673ec734bc14d18abdb437ba614', '[\"*\"]', '2025-04-15 16:22:33', NULL, '2025-04-15 16:22:32', '2025-04-15 16:22:33'),
(499, 'App\\Models\\User', 20, 'API Token', 'f1b31f12b4775e68a0e28df5ae7d8d12ac71d8779fa38e2a84c41a9027f22f74', '[\"*\"]', '2025-04-15 16:26:08', NULL, '2025-04-15 16:26:07', '2025-04-15 16:26:08'),
(500, 'App\\Models\\User', 20, 'API Token', 'df6e3ceec68ed05eb5d8d669b2dcc1b7715eb4e0e8289e90572c74229f696183', '[\"*\"]', '2025-04-15 17:03:28', NULL, '2025-04-15 17:03:27', '2025-04-15 17:03:28'),
(501, 'App\\Models\\User', 20, 'API Token', 'c98d19c6555d545d5e8eac1a59ad99b0e6fb964b8e51338e6efc1bee89f77c70', '[\"*\"]', '2025-04-15 17:07:10', NULL, '2025-04-15 17:07:09', '2025-04-15 17:07:10'),
(502, 'App\\Models\\User', 20, 'API Token', '79b45c4e4a122e8c8116d63fc2c3efd0691f4c0c3a9ddb7aae08d25dcc9846e0', '[\"*\"]', '2025-04-15 17:09:12', NULL, '2025-04-15 17:09:11', '2025-04-15 17:09:12'),
(503, 'App\\Models\\User', 20, 'API Token', 'eae60db162adc967761c2140cf112ce3529600d18073585fbc55a11e9a3eaaf5', '[\"*\"]', '2025-04-15 17:29:27', NULL, '2025-04-15 17:29:27', '2025-04-15 17:29:27'),
(504, 'App\\Models\\User', 20, 'API Token', '4342427a1c4a5b1107f88e55be0965df267857239c56af8990b825e1b1570709', '[\"*\"]', '2025-04-15 17:38:38', NULL, '2025-04-15 17:38:38', '2025-04-15 17:38:38'),
(505, 'App\\Models\\User', 27, 'API Token', 'cab611d05635edc7b8e70056cd281e049fa44cc5ab37030cc629ca1e55b18971', '[\"*\"]', '2025-04-16 11:22:24', NULL, '2025-04-15 21:12:19', '2025-04-16 11:22:24'),
(506, 'App\\Models\\User', 20, 'API Token', '9eb9bf1374b12c62214f9328c86e26de674feeb46c6547c03fd2ecec11e880f9', '[\"*\"]', '2025-04-15 21:27:47', NULL, '2025-04-15 21:27:46', '2025-04-15 21:27:47'),
(507, 'App\\Models\\User', 20, 'API Token', '47a734743901ff4eec9b51e3894ead381bd5c2b3e74c2c19acd59d35e83e795f', '[\"*\"]', '2025-04-16 05:28:25', NULL, '2025-04-16 05:28:25', '2025-04-16 05:28:25'),
(508, 'App\\Models\\User', 20, 'API Token', '790abc74d5e3e987f369258e20f4e4bccffb78c36b88a9044f60839b24091c0e', '[\"*\"]', '2025-04-16 05:36:39', NULL, '2025-04-16 05:36:38', '2025-04-16 05:36:39'),
(509, 'App\\Models\\User', 20, 'API Token', '33aa4e374acb3a3920c237d496b1ceee8254279825cf32b5f365762284bf5e7f', '[\"*\"]', '2025-04-16 05:42:18', NULL, '2025-04-16 05:42:18', '2025-04-16 05:42:18'),
(510, 'App\\Models\\User', 20, 'API Token', 'd54d5a84f1213de50a9f0ce5c0ae21c6ff19bdcdaa45310a364b8cdd7265f84a', '[\"*\"]', '2025-04-16 05:54:57', NULL, '2025-04-16 05:54:56', '2025-04-16 05:54:57'),
(511, 'App\\Models\\User', 20, 'API Token', '5229c02fb8a3e73d86a99350f2dd7aacfe3018686e14c5f143393bcc594795c1', '[\"*\"]', '2025-04-16 05:56:58', NULL, '2025-04-16 05:56:57', '2025-04-16 05:56:58'),
(512, 'App\\Models\\User', 20, 'API Token', '13199958894ee2da9e8650055def205aef0554a11e377eec5f395adb45b52add', '[\"*\"]', '2025-04-16 06:09:21', NULL, '2025-04-16 06:09:21', '2025-04-16 06:09:21'),
(513, 'App\\Models\\User', 20, 'API Token', 'd61f355d7537bc19f660f3ea4cbcddebffb0ac058dbdd37d3be9ef9c613093c5', '[\"*\"]', '2025-04-16 06:17:30', NULL, '2025-04-16 06:17:30', '2025-04-16 06:17:30'),
(514, 'App\\Models\\User', 20, 'API Token', '306f5cdaaeff99e0ce9b665766c5a7a0d8a03f91cdf608fb1a47f0255c5069e9', '[\"*\"]', '2025-04-16 06:33:49', NULL, '2025-04-16 06:33:49', '2025-04-16 06:33:49'),
(515, 'App\\Models\\User', 20, 'API Token', '23dc815c2134f5c35c6ef26f861771e989de71d5c87ae9cddd0db97a16ccf2df', '[\"*\"]', '2025-04-16 06:45:22', NULL, '2025-04-16 06:45:22', '2025-04-16 06:45:22');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(516, 'App\\Models\\User', 27, 'API Token', '3617d63886b3bc006fd10ec51c30ee7600aef10b81ccc7b04ad3dec1f8ed0140', '[\"*\"]', '2025-04-16 12:04:28', NULL, '2025-04-16 06:59:38', '2025-04-16 12:04:28'),
(517, 'App\\Models\\User', 20, 'API Token', '1f431832ec6311c6be46b05f242a02d9c9c318d210aae45698465f7d7b0e5260', '[\"*\"]', '2025-04-16 07:00:38', NULL, '2025-04-16 07:00:38', '2025-04-16 07:00:38'),
(518, 'App\\Models\\User', 20, 'API Token', '8be750b341acbe03ac5a11ec6dfc46051d99a7bfd059a45b585724cb30759b7c', '[\"*\"]', '2025-04-16 07:11:17', NULL, '2025-04-16 07:11:17', '2025-04-16 07:11:17'),
(519, 'App\\Models\\User', 20, 'API Token', '562214d251249d286fb228cfd229f970b3f83d02b16edcb7b470cdbe32cf70c5', '[\"*\"]', '2025-04-16 07:18:56', NULL, '2025-04-16 07:18:55', '2025-04-16 07:18:56'),
(520, 'App\\Models\\User', 20, 'API Token', 'aff0378cc50cd00e76faf683f59ea2e9f90396be7a7136f7b5ff3bf2dd770fb9', '[\"*\"]', '2025-04-16 07:26:34', NULL, '2025-04-16 07:26:33', '2025-04-16 07:26:34'),
(521, 'App\\Models\\User', 20, 'API Token', 'd2f79eda64156a493f25bd134d2c93c0c29ddc1fe603013d2cddfd884848d20f', '[\"*\"]', '2025-04-16 07:34:13', NULL, '2025-04-16 07:34:11', '2025-04-16 07:34:13'),
(522, 'App\\Models\\User', 20, 'API Token', '530ac6ac8bed701ac5a9128dce08e48d46d8d066cd83cb4ee428aaad93d6f6e8', '[\"*\"]', '2025-04-16 07:36:47', NULL, '2025-04-16 07:36:47', '2025-04-16 07:36:47'),
(523, 'App\\Models\\User', 20, 'API Token', '973804eeba55d2a464bac1bdc13b73d4f4f8c2693578dc94e245c35b2d9018d3', '[\"*\"]', '2025-04-16 07:47:30', NULL, '2025-04-16 07:47:30', '2025-04-16 07:47:30'),
(524, 'App\\Models\\User', 20, 'API Token', 'e68408c3881b81a2626816ad1a6c33da7ce54670eae13d88c354c12048a35faa', '[\"*\"]', '2025-04-16 11:21:07', NULL, '2025-04-16 11:21:07', '2025-04-16 11:21:07'),
(525, 'App\\Models\\User', 17, 'API Token', 'f0ee55835746d3f36d0f617a7f504eec5ef0886c523445cd0932410f60eea920', '[\"*\"]', '2025-04-18 13:42:13', NULL, '2025-04-16 11:22:40', '2025-04-18 13:42:13'),
(526, 'App\\Models\\User', 20, 'API Token', 'eed665de26927904d123fa2673f58f8987e382a8d13d274af01b41a9fc407ed3', '[\"*\"]', '2025-04-16 11:23:33', NULL, '2025-04-16 11:23:33', '2025-04-16 11:23:33'),
(527, 'App\\Models\\User', 20, 'API Token', 'd8414ff1295865cd0ae0b4cca31cbd13c24c8f8f582d2303bff4fe245deb8cec', '[\"*\"]', '2025-04-16 11:46:45', NULL, '2025-04-16 11:46:44', '2025-04-16 11:46:45'),
(528, 'App\\Models\\User', 20, 'API Token', '04a295c0f929033ea7e79964a37e5ed1e33c22d54c32497c9051c9b714c9877a', '[\"*\"]', '2025-04-16 12:48:01', NULL, '2025-04-16 12:48:00', '2025-04-16 12:48:01'),
(529, 'App\\Models\\User', 20, 'API Token', 'b14370635e310afddc5435d82a2de354f3831267722eca168d47ea3b9df88caf', '[\"*\"]', '2025-04-17 20:06:29', NULL, '2025-04-17 20:06:29', '2025-04-17 20:06:29'),
(530, 'App\\Models\\User', 17, 'API Token', '7eea55f97abfff0c0466268523d41469e366ba46fe5449c13f770c9d99792a2e', '[\"*\"]', '2025-04-18 22:49:58', NULL, '2025-04-18 15:04:45', '2025-04-18 22:49:58'),
(531, 'App\\Models\\User', 17, 'API Token', '3369a06c1291e74dfaddc3d8511f85e054a7bcbb9ef87e1c0659d502b8c797dc', '[\"*\"]', '2025-04-18 23:08:36', NULL, '2025-04-18 22:55:48', '2025-04-18 23:08:36'),
(532, 'App\\Models\\User', 32, 'API Token', '4e5b81623f7bbda6614a187a139d26b250f73751d40d7c1e27a33b78887f7c15', '[\"*\"]', '2025-04-18 23:12:31', NULL, '2025-04-18 23:08:47', '2025-04-18 23:12:31'),
(533, 'App\\Models\\User', 17, 'API Token', '6dc6263bbb0e139fd814008f16c830782e3be535919872ba648f23d547fd03f3', '[\"*\"]', '2025-04-18 23:15:41', NULL, '2025-04-18 23:15:40', '2025-04-18 23:15:41'),
(534, 'App\\Models\\User', 17, 'API Token', '4e39a36cd1dfc26d3d82b287b1a3f17dca74b979d89a31b1cfb00a56fdeb46ad', '[\"*\"]', '2025-04-18 23:16:03', NULL, '2025-04-18 23:16:02', '2025-04-18 23:16:03'),
(535, 'App\\Models\\User', 17, 'API Token', 'a63bea692578d4dcf2f706e2de4fc315951a9491d37ae884fccc8c1a7c2ce87b', '[\"*\"]', '2025-04-18 23:32:23', NULL, '2025-04-18 23:27:53', '2025-04-18 23:32:23'),
(536, 'App\\Models\\User', 36, 'API Token', 'a1899d7ec2db8af1383e5173ef08a833bd9b4f6e30d23cb23c1be3f8dbb7fc9d', '[\"*\"]', '2025-04-18 23:46:48', NULL, '2025-04-18 23:44:09', '2025-04-18 23:46:48'),
(537, 'App\\Models\\User', 17, 'API Token', '18962fa1de9ad2bd116a93970473aac714129c4fa268178dc9e37fbaa43c0fd5', '[\"*\"]', '2025-04-18 23:47:21', NULL, '2025-04-18 23:47:02', '2025-04-18 23:47:21'),
(538, 'App\\Models\\User', 36, 'API Token', '4f341c57c59472537832c827db879cd7791e8afbb9d5aca61a680c905aa91089', '[\"*\"]', '2025-04-29 09:46:04', NULL, '2025-04-18 23:47:35', '2025-04-29 09:46:04'),
(539, 'App\\Models\\User', 17, 'API Token', '4cc1f0cbecd8dca88d9c7bb313f4604a9cbc18cfc96dbc504f4cc1ceecfad4d4', '[\"*\"]', '2025-04-21 22:44:10', NULL, '2025-04-19 00:36:09', '2025-04-21 22:44:10'),
(540, 'App\\Models\\User', 27, 'API Token', 'bc623c733f9af869fb85fa51d290d3874f005540b7842ae8950000a769bac5ee', '[\"*\"]', '2025-04-19 06:25:02', NULL, '2025-04-19 05:32:51', '2025-04-19 06:25:02'),
(541, 'App\\Models\\User', 20, 'API Token', 'b8a641eb1742a65e3372b55adc50d48402396ba9898c0b9c923d469b7ee0dd53', '[\"*\"]', '2025-04-20 20:20:31', NULL, '2025-04-20 20:20:31', '2025-04-20 20:20:31'),
(542, 'App\\Models\\User', 20, 'API Token', '0c0bc5255fd2e1f9129ba3c3d6d1577dbaf7fc8980ab67e774aaf2996258f82a', '[\"*\"]', '2025-04-20 20:28:47', NULL, '2025-04-20 20:28:47', '2025-04-20 20:28:47'),
(543, 'App\\Models\\User', 20, 'API Token', '32bbc4bd69d3ae966c102d230a6eb3215a3b5bf5230fbdaa8cb55faa428b0550', '[\"*\"]', '2025-04-20 23:41:40', NULL, '2025-04-20 23:41:39', '2025-04-20 23:41:40'),
(544, 'App\\Models\\User', 27, 'API Token', '72d7d3a3452b033548ac2febdfc1b6d66711b6a56216a774ff417653502fb73d', '[\"*\"]', '2025-04-22 08:57:14', NULL, '2025-04-22 08:43:42', '2025-04-22 08:57:14'),
(545, 'App\\Models\\User', 17, 'API Token', 'f4a53b8a9a72a876c8b13516cfd742e7d6f4edfe999616dd75794314d53be376', '[\"*\"]', '2025-04-22 14:09:18', NULL, '2025-04-22 09:14:54', '2025-04-22 14:09:18'),
(546, 'App\\Models\\User', 17, 'API Token', 'd9dadfc55de3a00d9c2ad9151f4e1efb80a53ae64664c78944544300458638c6', '[\"*\"]', '2025-04-22 09:16:39', NULL, '2025-04-22 09:15:38', '2025-04-22 09:16:39'),
(547, 'App\\Models\\User', 22, 'API Token', '91309f9889037b8a54c5479bed7ea9417f882e2fc647c1f2bc0ad52581b04308', '[\"*\"]', '2025-04-22 14:09:46', NULL, '2025-04-22 14:09:41', '2025-04-22 14:09:46'),
(548, 'App\\Models\\User', 22, 'API Token', '200070dbefce519b0a8a9325e55a7ff7aa735390fe1c73d0c1564ce420757c91', '[\"*\"]', '2025-04-22 14:09:57', NULL, '2025-04-22 14:09:56', '2025-04-22 14:09:57'),
(549, 'App\\Models\\User', 27, 'API Token', 'ca1d1fc67bc3659822cab3aa6465ab1ba135719f8b9c94deba16306aab8bf1c3', '[\"*\"]', '2025-04-22 14:10:14', NULL, '2025-04-22 14:10:11', '2025-04-22 14:10:14'),
(550, 'App\\Models\\User', 17, 'API Token', 'c40a642f23d541a3fda220119a5a9120f0fe9bcb6af2a21230ab90481bcfcefe', '[\"*\"]', '2025-04-22 14:48:48', NULL, '2025-04-22 14:11:35', '2025-04-22 14:48:48'),
(551, 'App\\Models\\User', 20, 'API Token', '07d46289a898985abff862bbd5eecbfb6ecb90b8c338c4d88a072a2475a72ef0', '[\"*\"]', '2025-04-22 14:28:10', NULL, '2025-04-22 14:28:10', '2025-04-22 14:28:10'),
(552, 'App\\Models\\User', 20, 'API Token', 'f57a07eb7a200c8a39d385fd4cb9daffd9522940f6afb1277850fd217f31ef2c', '[\"*\"]', '2025-04-22 14:40:09', NULL, '2025-04-22 14:40:08', '2025-04-22 14:40:09'),
(553, 'App\\Models\\User', 20, 'API Token', 'e739d54aea2483b89083a8fe9a62902b9faf235207b49f85e25d66271d834b07', '[\"*\"]', '2025-04-22 14:40:20', NULL, '2025-04-22 14:40:19', '2025-04-22 14:40:20'),
(554, 'App\\Models\\User', 17, 'API Token', '4e358d5a42a7c25b6f33d28820f76ab6c5b88522a49af9ad5863455399f142f5', '[\"*\"]', '2025-04-22 17:31:46', NULL, '2025-04-22 14:50:05', '2025-04-22 17:31:46'),
(555, 'App\\Models\\User', 27, 'API Token', '51a40d7c0ba7910056d4c71f0abc6742a2840705c91b12ddc726d4fa0030f4a9', '[\"*\"]', '2025-04-22 17:39:45', NULL, '2025-04-22 17:31:59', '2025-04-22 17:39:45'),
(556, 'App\\Models\\User', 17, 'API Token', '2b65b42b6328f00247344e4949b67f57458a70e230fe23da7fb4f8799da349af', '[\"*\"]', '2025-04-23 20:52:46', NULL, '2025-04-22 17:41:26', '2025-04-23 20:52:46'),
(557, 'App\\Models\\User', 20, 'API Token', 'd501ec583a6727003f0679ca490c4c95ca1fbbce5f360a4306d68c3f59974874', '[\"*\"]', '2025-04-23 20:48:58', NULL, '2025-04-23 20:48:58', '2025-04-23 20:48:58'),
(558, 'App\\Models\\User', 20, 'API Token', 'e9592d45558117b2df0d13af37de611894e1860b88c78c75c372b729b033efde', '[\"*\"]', '2025-04-23 20:49:47', NULL, '2025-04-23 20:49:46', '2025-04-23 20:49:47'),
(559, 'App\\Models\\User', 27, 'API Token', '7a525bb7138eff498f875e3af377df11b757d0b1aae6c061a5bcd9d722654f86', '[\"*\"]', '2025-04-27 20:03:25', NULL, '2025-04-23 20:52:56', '2025-04-27 20:03:25'),
(560, 'App\\Models\\User', 22, 'API Token', '3aa161f6117577e258f240b4ab7dd578ce6d6c5fc8ce62e962d0ece74cdd4103', '[\"*\"]', '2025-04-25 07:26:39', NULL, '2025-04-25 07:26:35', '2025-04-25 07:26:39'),
(561, 'App\\Models\\User', 27, 'API Token', '976e54865ec759b912cb954ece34a9b8635cb6bcf8c5338dc8d59be391a75167', '[\"*\"]', '2025-04-25 07:45:55', NULL, '2025-04-25 07:26:58', '2025-04-25 07:45:55'),
(562, 'App\\Models\\User', 20, 'API Token', '46a36b30c6dbb5035463640e7b6310bbd0fcf7b4cdc7635c321655e644f26943', '[\"*\"]', '2025-04-25 07:35:47', NULL, '2025-04-25 07:35:47', '2025-04-25 07:35:47'),
(563, 'App\\Models\\User', 20, 'API Token', '4d2bd2e45a9d986d0f2c9f631908d97d5a5443b786dd82eca7c0663c83415077', '[\"*\"]', '2025-04-26 21:23:37', NULL, '2025-04-26 21:23:36', '2025-04-26 21:23:37'),
(564, 'App\\Models\\User', 20, 'API Token', 'ae36b175e9881eed099dcf47cf7eb6c40090049f6f3f41d9c24ac70bb1c8493c', '[\"*\"]', '2025-04-26 21:24:19', NULL, '2025-04-26 21:24:19', '2025-04-26 21:24:19'),
(565, 'App\\Models\\User', 20, 'API Token', 'bb3062c68a00c66837025c8cc1512995fdd6bc7eb4144551f60215a86c063b20', '[\"*\"]', '2025-04-26 21:24:51', NULL, '2025-04-26 21:24:50', '2025-04-26 21:24:51'),
(566, 'App\\Models\\User', 27, 'API Token', '22350806ca3f281f2d52e8ca806679eb705ff6bdf17fdd35e93eada40442c96c', '[\"*\"]', '2025-04-27 12:56:31', NULL, '2025-04-27 09:29:36', '2025-04-27 12:56:31'),
(567, 'App\\Models\\User', 20, 'API Token', '39d208a322336a2c2e756a6d358758aea8286c5ecb45fcc429b96623bc0656a2', '[\"*\"]', '2025-04-27 09:41:51', NULL, '2025-04-27 09:41:51', '2025-04-27 09:41:51'),
(568, 'App\\Models\\User', 20, 'API Token', '21af6225dacb94e2fa024e3478ff9dbaed2585604c84060aed68f89352b98fa3', '[\"*\"]', '2025-04-27 19:31:35', NULL, '2025-04-27 19:31:35', '2025-04-27 19:31:35'),
(569, 'App\\Models\\User', 20, 'API Token', '58ec05bc446e11cdf4070cdc9aa1e081d62385c47dab235d97a6f9b5ac6b02f1', '[\"*\"]', '2025-04-27 19:43:16', NULL, '2025-04-27 19:43:15', '2025-04-27 19:43:16'),
(570, 'App\\Models\\User', 20, 'API Token', '4223595a33211902c321c7cfb1565ef78b224137ed276a6b0de5e5e33820513f', '[\"*\"]', '2025-04-27 19:55:46', NULL, '2025-04-27 19:55:45', '2025-04-27 19:55:46'),
(571, 'App\\Models\\User', 20, 'API Token', '4a7eb017e299ef8c5f8c02455c10477c37abe085681ca2ea99367461f8e97bef', '[\"*\"]', '2025-04-27 20:01:14', NULL, '2025-04-27 20:01:13', '2025-04-27 20:01:14'),
(572, 'App\\Models\\User', 17, 'API Token', '0d9f80a67682da58a566ebd73f047870e978d8654a3adb8992352680156a384b', '[\"*\"]', '2025-04-29 12:46:46', NULL, '2025-04-27 20:03:40', '2025-04-29 12:46:46'),
(573, 'App\\Models\\User', 20, 'API Token', '392da07511b682315ac438596e2cf8f26aae31a3670c532260bdaadf46a3506a', '[\"*\"]', '2025-04-27 20:11:58', NULL, '2025-04-27 20:11:56', '2025-04-27 20:11:58'),
(574, 'App\\Models\\User', 20, 'API Token', 'd898f2b55b8f4ee419b08add28c585de6c0461d699fee29c555eb797c147476f', '[\"*\"]', '2025-04-27 20:25:30', NULL, '2025-04-27 20:25:29', '2025-04-27 20:25:30'),
(575, 'App\\Models\\User', 20, 'API Token', '750d1e4eb2f1f7fc9b0de964801025d3dc1c41615412c66f9ee62bbac6f49a3f', '[\"*\"]', '2025-04-27 20:47:40', NULL, '2025-04-27 20:47:39', '2025-04-27 20:47:40'),
(576, 'App\\Models\\User', 20, 'API Token', 'f2266c738250edf0fd7928805005d297e669728ee56e1411e73c6a4b59a79dd7', '[\"*\"]', '2025-04-27 20:55:40', NULL, '2025-04-27 20:55:40', '2025-04-27 20:55:40'),
(577, 'App\\Models\\User', 20, 'API Token', '06f114085048870247cd07185e955bb0f14072dd52d3f83acedb43a409866f6f', '[\"*\"]', '2025-04-27 20:56:13', NULL, '2025-04-27 20:56:12', '2025-04-27 20:56:13'),
(578, 'App\\Models\\User', 20, 'API Token', 'e4d1c07d12698e1058d762cec65d2151a27944c5b129225f9597bc586fc8d272', '[\"*\"]', '2025-04-28 14:04:21', NULL, '2025-04-28 14:04:21', '2025-04-28 14:04:21'),
(579, 'App\\Models\\User', 20, 'API Token', '1fb2e1ad14ace78c8d3d55ab2d394a59f1fbf4517bdd7ef874a2682ca3ae7cd6', '[\"*\"]', '2025-04-28 14:18:20', NULL, '2025-04-28 14:18:10', '2025-04-28 14:18:20'),
(580, 'App\\Models\\User', 20, 'API Token', 'a5e142cee2a1ed8a7f3f08932ccc43fc73dcf0f7d162af9c83c8bcc3a51a4b00', '[\"*\"]', '2025-04-28 14:21:10', NULL, '2025-04-28 14:21:09', '2025-04-28 14:21:10'),
(581, 'App\\Models\\User', 20, 'API Token', '5411c31e3c962ebc760231cc6052c3c434dd10f3786723bd054447a36211124f', '[\"*\"]', '2025-04-28 14:31:38', NULL, '2025-04-28 14:31:36', '2025-04-28 14:31:38'),
(582, 'App\\Models\\User', 20, 'API Token', '95a5e23b907ae4f7516cd91f5c55d8f89e855e4fadf189d9d57e819f1198bb83', '[\"*\"]', '2025-04-28 14:43:21', NULL, '2025-04-28 14:43:21', '2025-04-28 14:43:21'),
(583, 'App\\Models\\User', 20, 'API Token', 'e5d84a7adcbc25c05ee372cc8ec8c93d4f013a1d2a54f431b77aa996fd449a09', '[\"*\"]', NULL, NULL, '2025-04-28 14:52:58', '2025-04-28 14:52:58'),
(584, 'App\\Models\\User', 20, 'API Token', '6faac2b3476f7e60acaad424b8ac4438c888088af8c8d9e762fa0b907fff2756', '[\"*\"]', '2025-04-28 15:08:33', NULL, '2025-04-28 15:08:32', '2025-04-28 15:08:33'),
(585, 'App\\Models\\User', 20, 'API Token', 'd66bf4252fca6b508a58d36d748973e72da9d996dd0868cce8e56eb4551044ff', '[\"*\"]', '2025-04-28 19:06:40', NULL, '2025-04-28 19:06:39', '2025-04-28 19:06:40'),
(586, 'App\\Models\\User', 20, 'API Token', 'a5cd0fad77ae5dec76fe562760b29a31882c615a1c0c4c46302fc06d362e35e2', '[\"*\"]', '2025-04-28 19:10:58', NULL, '2025-04-28 19:10:57', '2025-04-28 19:10:58'),
(587, 'App\\Models\\User', 20, 'API Token', 'c71fd759ee1b4d7bee294b583eb67d0998152105db8a9e49fc7e2b80f14faebf', '[\"*\"]', '2025-04-28 19:28:51', NULL, '2025-04-28 19:28:39', '2025-04-28 19:28:51'),
(588, 'App\\Models\\User', 20, 'API Token', '211234108863bf4a1af2ba53d1dbf54052a35961ca2e2f3780af1d153c7262c2', '[\"*\"]', '2025-04-28 20:27:59', NULL, '2025-04-28 20:27:59', '2025-04-28 20:27:59'),
(589, 'App\\Models\\User', 20, 'API Token', '9e06ba23fd242df32fd058cbf3f581ca005f984269d4e7dbd0c6fef570020e5a', '[\"*\"]', '2025-04-28 20:42:04', NULL, '2025-04-28 20:42:03', '2025-04-28 20:42:04'),
(590, 'App\\Models\\User', 20, 'API Token', 'dc28b467f8f92f83f16007be2ea83aa786cee878f8d1ec25425f082f969a2b38', '[\"*\"]', '2025-04-28 22:02:23', NULL, '2025-04-28 22:02:22', '2025-04-28 22:02:23'),
(591, 'App\\Models\\User', 20, 'API Token', '19f29d8b739f4085e2df309fee3fc4f0cb80b9eee60dc467dc774ead807dcf4b', '[\"*\"]', '2025-04-28 22:11:05', NULL, '2025-04-28 22:11:05', '2025-04-28 22:11:05'),
(592, 'App\\Models\\User', 27, 'API Token', '8f03fa3cfb20b629a9c108ca14d30cb1140a5650fbc377c8cf80f734acfd907e', '[\"*\"]', '2025-04-29 15:15:46', NULL, '2025-04-29 06:13:40', '2025-04-29 15:15:46'),
(593, 'App\\Models\\User', 20, 'API Token', '6c2543fe931a84bd782b540b838986a82ceadcd24d8ab89f4ed86275a1b174ac', '[\"*\"]', '2025-04-29 06:18:31', NULL, '2025-04-29 06:18:31', '2025-04-29 06:18:31'),
(594, 'App\\Models\\User', 20, 'API Token', 'cabb41a67949b9b644ebae83673fbfdcd89e7275542f16d6ce28e5158a3718ec', '[\"*\"]', '2025-04-29 06:19:25', NULL, '2025-04-29 06:19:24', '2025-04-29 06:19:25'),
(595, 'App\\Models\\User', 20, 'API Token', 'caf1d504b0b5c8f12c0052ae3af9b0338ba0013b0bff644cafb6e1f174e4c55c', '[\"*\"]', '2025-04-29 06:22:23', NULL, '2025-04-29 06:22:22', '2025-04-29 06:22:23'),
(596, 'App\\Models\\User', 20, 'API Token', '1a13e13b4f688a6de53e7e03c85a0b87937e98274696dde503513635c8b6c528', '[\"*\"]', '2025-04-29 06:22:54', NULL, '2025-04-29 06:22:53', '2025-04-29 06:22:54'),
(597, 'App\\Models\\User', 20, 'API Token', '782d71731cb415c1467b626cab0b350551ff946cbfda9128575265fff6b1718a', '[\"*\"]', '2025-04-29 07:23:32', NULL, '2025-04-29 07:23:32', '2025-04-29 07:23:32'),
(598, 'App\\Models\\User', 20, 'API Token', 'e6c5d0d89b527fd7c0e63d032966cd1f987158f44acbd769000e5522cbe0bc65', '[\"*\"]', '2025-04-29 07:32:02', NULL, '2025-04-29 07:32:02', '2025-04-29 07:32:02'),
(599, 'App\\Models\\User', 27, 'API Token', 'ee02830b382f7e20357603865f1ebb840eb6ee3d939686f7e079372672546f40', '[\"*\"]', '2025-04-30 07:27:48', NULL, '2025-04-29 08:05:48', '2025-04-30 07:27:48'),
(600, 'App\\Models\\User', 20, 'API Token', '5316d7ce087ec4d751d5198d866efda2927cf37287825819e686c805750f5cad', '[\"*\"]', '2025-04-29 08:09:49', NULL, '2025-04-29 08:09:49', '2025-04-29 08:09:49'),
(601, 'App\\Models\\User', 20, 'API Token', '2a125858e699c5c284059958912f4eb3034992f82990670a15f8b95c44edd595', '[\"*\"]', '2025-04-29 08:21:15', NULL, '2025-04-29 08:21:15', '2025-04-29 08:21:15'),
(602, 'App\\Models\\User', 20, 'API Token', 'd682f1ad39b6efe1fdda96f410f0ba7fe9a28a6c18985ea1de6c2ee3b2d2aa58', '[\"*\"]', '2025-04-29 08:29:51', NULL, '2025-04-29 08:29:50', '2025-04-29 08:29:51'),
(603, 'App\\Models\\User', 20, 'API Token', '54b3c2fb4f6544f0bc8c766a3224505d44c9c687053075b93f9569528a85f0d9', '[\"*\"]', '2025-04-29 08:54:40', NULL, '2025-04-29 08:54:39', '2025-04-29 08:54:40'),
(604, 'App\\Models\\User', 20, 'API Token', 'f133fe2f33012da23a7ea563440a66ce44c2cdec2a425bb96998b9250befea09', '[\"*\"]', '2025-04-29 09:03:10', NULL, '2025-04-29 09:03:10', '2025-04-29 09:03:10'),
(605, 'App\\Models\\User', 17, 'API Token', '7cbe9c7d53a1fdedd91e28e5cf76a685f5482098697f9074eb013203c424ad52', '[\"*\"]', '2025-04-29 13:13:26', NULL, '2025-04-29 09:46:31', '2025-04-29 13:13:26'),
(606, 'App\\Models\\User', 20, 'API Token', '0589e6f8ac3dc8ab3f2a7a1006641cb5a776a4ae54aebf9d4de5b09bf8240661', '[\"*\"]', '2025-04-29 10:08:39', NULL, '2025-04-29 10:08:39', '2025-04-29 10:08:39'),
(607, 'App\\Models\\User', 20, 'API Token', '915ef61e13cde0c11b530557de6f2a724e5c6d648f8e24d53770454ebec5edd3', '[\"*\"]', '2025-04-29 10:17:39', NULL, '2025-04-29 10:17:38', '2025-04-29 10:17:39'),
(608, 'App\\Models\\User', 20, 'API Token', 'b411213ff2ebfb4d62c3c7978a772e6ad4ba594ae26d771c3cb36c789eb4e722', '[\"*\"]', '2025-04-29 10:25:47', NULL, '2025-04-29 10:25:47', '2025-04-29 10:25:47'),
(609, 'App\\Models\\User', 20, 'API Token', 'daa278c1db71f189489cd3f3161b201e76f3e0dd6e012422ae8f3c742ee59919', '[\"*\"]', '2025-04-29 10:33:25', NULL, '2025-04-29 10:33:24', '2025-04-29 10:33:25'),
(610, 'App\\Models\\User', 27, 'API Token', '03a7ea52c93841cc09e7483e40b3226d5030a30fd98dfcecc5fcab7125076be7', '[\"*\"]', '2025-04-29 13:12:38', NULL, '2025-04-29 12:47:01', '2025-04-29 13:12:38'),
(611, 'App\\Models\\User', 27, 'API Token', '1a9a8984f12f0165c088a4fb84d5b350dac80417dd2b9400e46a7682a61bdae6', '[\"*\"]', '2025-04-29 13:13:00', NULL, '2025-04-29 13:12:45', '2025-04-29 13:13:00'),
(612, 'App\\Models\\User', 27, 'API Token', 'e141f84d447fd7e735ae60f657a44c54c22de4229fa1b6e2b1250c504aced572', '[\"*\"]', '2025-04-29 13:13:07', NULL, '2025-04-29 13:13:06', '2025-04-29 13:13:07'),
(613, 'App\\Models\\User', 27, 'API Token', 'eeb6a1ed2b964d551d60b574baf9ba82fc6e931b54edc1f8199222e9ae721600', '[\"*\"]', '2025-05-26 14:13:48', NULL, '2025-04-29 13:13:49', '2025-05-26 14:13:48'),
(614, 'App\\Models\\User', 27, 'API Token', 'f02ebf6b2cf98cc470f87511c4012508f92cc71c5db12006380a3efe32972dea', '[\"*\"]', '2025-04-29 15:17:03', NULL, '2025-04-29 15:15:55', '2025-04-29 15:17:03'),
(615, 'App\\Models\\User', 20, 'API Token', 'e122fbf4d5175b932ddb48ed5512f00f577db262a3764c6e5b07506390037508', '[\"*\"]', '2025-05-01 12:11:43', NULL, '2025-05-01 12:11:43', '2025-05-01 12:11:43'),
(616, 'App\\Models\\User', 20, 'API Token', '56f4f8a16c0c264e94dd61d409a01087cf2e4139a4784d247c2c814119175eec', '[\"*\"]', '2025-05-01 12:27:00', NULL, '2025-05-01 12:27:00', '2025-05-01 12:27:00'),
(617, 'App\\Models\\User', 20, 'API Token', '34e2ed153ce2c106de6db3cbe864b3ff3dc2e9a42d899a4c59cb2acaa535ed7b', '[\"*\"]', '2025-05-01 12:38:26', NULL, '2025-05-01 12:38:26', '2025-05-01 12:38:26'),
(618, 'App\\Models\\User', 20, 'API Token', 'ec21e41fdfdf0e44613a98b3760aeac5ab3c7e1f5453e6c16e137cbf2e58bee6', '[\"*\"]', '2025-05-01 12:50:24', NULL, '2025-05-01 12:50:23', '2025-05-01 12:50:24'),
(619, 'App\\Models\\User', 20, 'API Token', 'ef33b209a29793ea21c4e6e56785e5c8e3cc0d1cf5bf09efd1a0d771b1d5a697', '[\"*\"]', '2025-05-01 12:58:34', NULL, '2025-05-01 12:58:34', '2025-05-01 12:58:34'),
(620, 'App\\Models\\User', 20, 'API Token', '72cee12d27676f3576d61e3df02232201b8aa07de3a09e9bef6455b31308b85e', '[\"*\"]', '2025-05-01 13:06:52', NULL, '2025-05-01 13:06:51', '2025-05-01 13:06:52'),
(621, 'App\\Models\\User', 20, 'API Token', '3be971c7fbb0262ec58696bb4ddace381ade0b1157f0aebd0c531368a296ba3c', '[\"*\"]', '2025-05-01 13:37:09', NULL, '2025-05-01 13:37:09', '2025-05-01 13:37:09'),
(622, 'App\\Models\\User', 20, 'API Token', 'd166deb158be9cadb35dc6fc9d125766026b2377fda081fa148fa16dfa118d33', '[\"*\"]', '2025-05-01 13:38:58', NULL, '2025-05-01 13:38:57', '2025-05-01 13:38:58'),
(623, 'App\\Models\\User', 27, 'API Token', '6393817caa49cb7fb6429195036a4039c7961c9b245e5345d551c75634a21b0a', '[\"*\"]', '2025-05-29 12:35:40', NULL, '2025-05-01 20:53:38', '2025-05-29 12:35:40'),
(624, 'App\\Models\\User', 27, 'API Token', '8de228637d1e8232731d700ae9b68513ac1a95079d7be6554a6823387b6421b2', '[\"*\"]', '2025-05-03 12:52:46', NULL, '2025-05-03 12:51:58', '2025-05-03 12:52:46'),
(625, 'App\\Models\\User', 17, 'API Token', '94bfcf89b89c7a64db468d364b1dd6ee49dca0411fa764865b76697bed64190e', '[\"*\"]', '2025-05-03 12:53:27', NULL, '2025-05-03 12:53:23', '2025-05-03 12:53:27'),
(626, 'App\\Models\\User', 27, 'API Token', '48f8d7198e5d974315d75d5f99f102fcb61ecf92955e8b662803433b6a8cfdc5', '[\"*\"]', '2025-05-03 12:58:22', NULL, '2025-05-03 12:58:17', '2025-05-03 12:58:22'),
(627, 'App\\Models\\User', 17, 'API Token', 'd9d10419854d5293d27a0318dbadf2a6be967cedee3c90ef15ed01e8ed39e624', '[\"*\"]', '2025-05-03 13:07:17', NULL, '2025-05-03 13:07:08', '2025-05-03 13:07:17'),
(628, 'App\\Models\\User', 20, 'API Token', '439b6d3b780f2c8e75ab918acb1decec3579878f81f72c6c9be1601e22b5e9b5', '[\"*\"]', '2025-05-03 13:48:41', NULL, '2025-05-03 13:48:40', '2025-05-03 13:48:41'),
(629, 'App\\Models\\User', 20, 'API Token', 'd5e54742c9a1a2523ef3d1c42a2fb5c7c8fd5f03685bea08c52edaa2d8471dbc', '[\"*\"]', '2025-05-03 13:58:15', NULL, '2025-05-03 13:58:15', '2025-05-03 13:58:15'),
(630, 'App\\Models\\User', 20, 'API Token', '7aabfa12ae4590436891fd63bcd994ac3eeceee6ff19e76eddc0a2c44d384a9b', '[\"*\"]', '2025-05-03 14:25:10', NULL, '2025-05-03 14:25:10', '2025-05-03 14:25:10'),
(631, 'App\\Models\\User', 20, 'API Token', '0917d3a4faebe3b7fd7c046c693b1d1d079ed817e996eea20b28ca81d2afd430', '[\"*\"]', '2025-05-03 14:26:09', NULL, '2025-05-03 14:26:08', '2025-05-03 14:26:09'),
(632, 'App\\Models\\User', 20, 'API Token', '2d0d047fa33df88362c39cc23adc8a66ac8984f36feebf44b95d5165f1790a7c', '[\"*\"]', '2025-05-03 14:27:11', NULL, '2025-05-03 14:27:10', '2025-05-03 14:27:11'),
(633, 'App\\Models\\User', 20, 'API Token', 'deefe20ae069ff33bf4e59aff3cf64bc87308311f4507ff8900a5b07f4d83ecf', '[\"*\"]', '2025-05-03 14:28:12', NULL, '2025-05-03 14:28:11', '2025-05-03 14:28:12'),
(634, 'App\\Models\\User', 20, 'API Token', 'b7e80f0fdcf1b8d014813e9fbec1569c585eb39c470a3857021ac9e7b19c771b', '[\"*\"]', '2025-05-03 14:29:14', NULL, '2025-05-03 14:29:13', '2025-05-03 14:29:14'),
(635, 'App\\Models\\User', 20, 'API Token', '97429c9efedaca83f30c68da9843947b83bb115a5340277dda73b8bdbe853fe0', '[\"*\"]', '2025-05-03 14:30:15', NULL, '2025-05-03 14:30:14', '2025-05-03 14:30:15'),
(636, 'App\\Models\\User', 20, 'API Token', 'b3706a45ab9a4c4ca4653d5f262f4ce4d9696a2f11e577d97c23905e5ac7134a', '[\"*\"]', '2025-05-03 14:31:17', NULL, '2025-05-03 14:31:17', '2025-05-03 14:31:17'),
(637, 'App\\Models\\User', 20, 'API Token', '242b31e9aefaeb438ddcf505d75e4c43871a5ef11b2e93b62a6be9b0f2085afd', '[\"*\"]', '2025-05-03 14:33:21', NULL, '2025-05-03 14:33:20', '2025-05-03 14:33:21'),
(638, 'App\\Models\\User', 20, 'API Token', '1d40755bc3d6aa930fa0fa34cca498e1b9a5b8de81954dceb9498d57a7fd66d8', '[\"*\"]', '2025-05-03 14:34:22', NULL, '2025-05-03 14:34:22', '2025-05-03 14:34:22'),
(639, 'App\\Models\\User', 20, 'API Token', '0cb14e028902a11c2620846666d4a7f0ad3805bb663c461293ffaa4c82277531', '[\"*\"]', '2025-05-03 14:35:24', NULL, '2025-05-03 14:35:23', '2025-05-03 14:35:24'),
(640, 'App\\Models\\User', 20, 'API Token', '7737bb5e26ac4760cf12edd848a9dc0e1007f21592eeb06cd701816dea3ac1ed', '[\"*\"]', '2025-05-03 14:36:26', NULL, '2025-05-03 14:36:25', '2025-05-03 14:36:26'),
(641, 'App\\Models\\User', 20, 'API Token', '89564612fd40cf22b1e32359a6295025f1c19acb312be31d06743fbc5d16d7ba', '[\"*\"]', '2025-05-03 14:37:28', NULL, '2025-05-03 14:37:28', '2025-05-03 14:37:28'),
(642, 'App\\Models\\User', 20, 'API Token', '5a5a34f4fa848bac0498185e483533e9f5ecfb85ee93319db50e4d86c996eab7', '[\"*\"]', '2025-05-03 14:38:29', NULL, '2025-05-03 14:38:29', '2025-05-03 14:38:29'),
(643, 'App\\Models\\User', 20, 'API Token', '9c970085d4773d0a51021d960bb7bff4e9885a28fa2ccc83a0a9f105b1ae3b98', '[\"*\"]', '2025-05-03 14:54:47', NULL, '2025-05-03 14:54:46', '2025-05-03 14:54:47'),
(644, 'App\\Models\\User', 20, 'API Token', '52c1d04df9b98929e83125d6806f2bcd3c1764ba18e09cc18582c9d1bf2ec1ec', '[\"*\"]', '2025-05-03 14:55:47', NULL, '2025-05-03 14:55:47', '2025-05-03 14:55:47'),
(645, 'App\\Models\\User', 20, 'API Token', 'eccac384287590f755cf12422fd4b01cd6fe702815156af5d083bd1c7e3c188a', '[\"*\"]', '2025-05-03 15:27:21', NULL, '2025-05-03 15:27:21', '2025-05-03 15:27:21'),
(646, 'App\\Models\\User', 27, 'API Token', '135ceb395af353d3a7e24a3f21ec8e03ded5141a687822726a1e6f9e8a58715f', '[\"*\"]', '2025-05-03 15:34:36', NULL, '2025-05-03 15:32:29', '2025-05-03 15:34:36'),
(647, 'App\\Models\\User', 20, 'API Token', 'a5a60704845d90013e9d52903681f25e53b5ade3a08f3b2907df887f2f71ee05', '[\"*\"]', '2025-05-03 15:43:03', NULL, '2025-05-03 15:43:03', '2025-05-03 15:43:03'),
(648, 'App\\Models\\User', 20, 'API Token', '47d73ea8fa0f64cecb684e2ce7ed4cfc0ac07135ed5dea24d20e54fe3a0b3350', '[\"*\"]', '2025-05-03 15:44:04', NULL, '2025-05-03 15:44:03', '2025-05-03 15:44:04'),
(649, 'App\\Models\\User', 20, 'API Token', '870e6e5f2c48798ebcb96bf001214fefc5e0b21c853545fd3273352d94c85bfa', '[\"*\"]', '2025-05-03 15:45:06', NULL, '2025-05-03 15:45:06', '2025-05-03 15:45:06'),
(650, 'App\\Models\\User', 20, 'API Token', '309b205c0bd3ece0250b473bf9af457677cd7efbf76ec4feedb5450ff702deb3', '[\"*\"]', '2025-05-03 15:46:07', NULL, '2025-05-03 15:46:06', '2025-05-03 15:46:07'),
(651, 'App\\Models\\User', 20, 'API Token', 'c9ad21b2b473b0b88a2300ffedc49c465dc95a3f975cbd0da59e540b5e126839', '[\"*\"]', '2025-05-03 15:47:09', NULL, '2025-05-03 15:47:08', '2025-05-03 15:47:09'),
(652, 'App\\Models\\User', 20, 'API Token', '3414e9a893b368c80461fc39fae79b7de2c74b4635bb26cba2b8c25755dd4e2a', '[\"*\"]', '2025-05-03 16:21:49', NULL, '2025-05-03 16:21:49', '2025-05-03 16:21:49'),
(653, 'App\\Models\\User', 20, 'API Token', 'cdb4e5f903814f229a7ea8543a0a43432c9d6379c953af56fdc8d7893920f1e5', '[\"*\"]', '2025-05-03 16:38:32', NULL, '2025-05-03 16:38:31', '2025-05-03 16:38:32'),
(654, 'App\\Models\\User', 20, 'API Token', 'abc97e83ca490229d9f8b0af0197155828bdb0ab46bd903e222bc951769f3214', '[\"*\"]', '2025-05-03 16:39:32', NULL, '2025-05-03 16:39:32', '2025-05-03 16:39:32'),
(655, 'App\\Models\\User', 20, 'API Token', 'e6c3c7eba36e88c3c5db3856b42fa208f380a1a634493ac5670e1d02adedb3ea', '[\"*\"]', '2025-05-03 16:40:34', NULL, '2025-05-03 16:40:33', '2025-05-03 16:40:34'),
(656, 'App\\Models\\User', 20, 'API Token', '4695d9b286912c94556c1f9bf223cd227d043f4203c55b49c207ccd964b0276d', '[\"*\"]', '2025-05-03 16:41:36', NULL, '2025-05-03 16:41:36', '2025-05-03 16:41:36'),
(657, 'App\\Models\\User', 20, 'API Token', '1a5b11b5e760f44bbb361c4ab20fa422e8ec8076639ce67b13bf23078ef4f6e1', '[\"*\"]', '2025-05-03 16:42:38', NULL, '2025-05-03 16:42:37', '2025-05-03 16:42:38'),
(658, 'App\\Models\\User', 20, 'API Token', 'f68f272f3d3b720ef29cbbf742ec42660139854621e823a0ea71a163f8c994bd', '[\"*\"]', '2025-05-03 16:52:36', NULL, '2025-05-03 16:52:35', '2025-05-03 16:52:36'),
(659, 'App\\Models\\User', 20, 'API Token', '325e36aa25237010fa9f44b8a94784b35d723af325f4830143d83f127a5ad41c', '[\"*\"]', '2025-05-03 17:09:07', NULL, '2025-05-03 17:09:07', '2025-05-03 17:09:07'),
(660, 'App\\Models\\User', 20, 'API Token', '2ec7b0f7f923394b39698df0a2e89d4326f5ef0e0c5568838434ab7e80f9d6a4', '[\"*\"]', '2025-05-03 17:10:08', NULL, '2025-05-03 17:10:08', '2025-05-03 17:10:08'),
(661, 'App\\Models\\User', 20, 'API Token', 'ec4deca57d873f9ef29f32eb0ee30da5f27d599e2f9b71cffa4d6f7c4f4ac215', '[\"*\"]', '2025-05-03 17:11:11', NULL, '2025-05-03 17:11:10', '2025-05-03 17:11:11'),
(662, 'App\\Models\\User', 20, 'API Token', 'ef01f08eb11f3bcf8e1ae1ebaf102447bbfd7fd40ebbbc55b7dcde3f0d1f3e4e', '[\"*\"]', '2025-05-03 19:14:49', NULL, '2025-05-03 19:14:49', '2025-05-03 19:14:49'),
(663, 'App\\Models\\User', 20, 'API Token', 'c3a606c6485cffc1c3c80410c0b5bbe171b59536f822a21b153e8ed02f4c6c7c', '[\"*\"]', '2025-05-03 19:34:38', NULL, '2025-05-03 19:34:37', '2025-05-03 19:34:38'),
(664, 'App\\Models\\User', 20, 'API Token', '19c0719abdd960194586558f6fe8f25b467c0f4b9b3497822ce4154c96abd95d', '[\"*\"]', '2025-05-03 19:39:51', NULL, '2025-05-03 19:39:50', '2025-05-03 19:39:51'),
(665, 'App\\Models\\User', 20, 'API Token', '260053a77adb5055675384d627c2c055c457bc414a84d6c5415b03b0f5bf324d', '[\"*\"]', '2025-05-03 19:41:09', NULL, '2025-05-03 19:41:08', '2025-05-03 19:41:09'),
(666, 'App\\Models\\User', 27, 'API Token', 'fefd78724cfb6c9f3ca9641f7fb7a1d322de39e188da1a9e5ddd8b11076d78d2', '[\"*\"]', '2025-05-04 15:17:31', NULL, '2025-05-03 21:16:33', '2025-05-04 15:17:31'),
(667, 'App\\Models\\User', 20, 'API Token', 'b700e5dde6f1a16842017bf38db3b57b0c77cd0615f93f1c51adf1e17d35e22c', '[\"*\"]', '2025-05-03 21:20:38', NULL, '2025-05-03 21:20:37', '2025-05-03 21:20:38'),
(668, 'App\\Models\\User', 20, 'API Token', '7d618725cabaa2948ac3a5f3919fd0e9bdffd1b9a9a77d94127ec5a56f8822ef', '[\"*\"]', '2025-05-03 21:38:27', NULL, '2025-05-03 21:38:27', '2025-05-03 21:38:27'),
(669, 'App\\Models\\User', 20, 'API Token', 'b7934984e775f093e7987d18eacfe045cd3bb0511e85ec5eea5938abb15b3abc', '[\"*\"]', '2025-05-05 07:18:30', NULL, '2025-05-05 07:18:29', '2025-05-05 07:18:30'),
(670, 'App\\Models\\User', 20, 'API Token', 'f0b8895084724042659f523497388d306860e35c7efe9586121e8333e58bd7de', '[\"*\"]', '2025-05-05 07:26:15', NULL, '2025-05-05 07:26:15', '2025-05-05 07:26:15'),
(671, 'App\\Models\\User', 20, 'API Token', '68af26ea9feb31f994fe2298709e85ab28294dbfd397dbb742dca3cf7160b2da', '[\"*\"]', '2025-05-05 07:38:29', NULL, '2025-05-05 07:38:26', '2025-05-05 07:38:29'),
(672, 'App\\Models\\User', 27, 'API Token', '7085df0b3b431a082de3206a6ced9b9363235718c1502621b32b8d90771462fe', '[\"*\"]', '2025-05-05 15:31:30', NULL, '2025-05-05 07:38:27', '2025-05-05 15:31:30'),
(673, 'App\\Models\\User', 20, 'API Token', 'd163e8344dbf553c6f845cb496e797b8e8cb9bca9976475907e9306d15884242', '[\"*\"]', '2025-05-05 07:54:30', NULL, '2025-05-05 07:54:30', '2025-05-05 07:54:30'),
(674, 'App\\Models\\User', 20, 'API Token', 'dae87dd6bcfe64a5fb82b0bc70e4080c3ec6c52bf17782b93fbd2beaa6c06ba9', '[\"*\"]', '2025-05-05 08:02:39', NULL, '2025-05-05 08:02:38', '2025-05-05 08:02:39'),
(675, 'App\\Models\\User', 22, 'API Token', '1359fc9af3d62cd062fb031509ad7ad4c55b4f6be182bf6be4326b937bdcbfec', '[\"*\"]', '2025-05-05 08:24:02', NULL, '2025-05-05 08:23:51', '2025-05-05 08:24:02'),
(676, 'App\\Models\\User', 27, 'API Token', 'be21ec34509f304595c72b81c086ab3daffc75490a72a90ccd9746496b3cc82c', '[\"*\"]', '2025-05-05 12:58:47', NULL, '2025-05-05 08:24:37', '2025-05-05 12:58:47'),
(677, 'App\\Models\\User', 20, 'API Token', 'e295534dc6cc247783baf30bcfdb2efed593e59bb20505937fb1b85fe3bc1c88', '[\"*\"]', '2025-05-05 08:36:23', NULL, '2025-05-05 08:36:22', '2025-05-05 08:36:23'),
(678, 'App\\Models\\User', 20, 'API Token', '69f536512b42c02ea7e44c5e077e523c14cebadec66f77b628c86b3e257544ab', '[\"*\"]', '2025-05-05 10:18:00', NULL, '2025-05-05 10:18:00', '2025-05-05 10:18:00'),
(679, 'App\\Models\\User', 20, 'API Token', '90f2e3112aa2f4109298c896f928e417c8d7126678752455ce90b10eb77a11e2', '[\"*\"]', '2025-05-05 10:26:08', NULL, '2025-05-05 10:26:07', '2025-05-05 10:26:08'),
(680, 'App\\Models\\User', 20, 'API Token', 'a1cd71809669b211269c6078d9e2b1b9477220ec1f4efc794566fc4d119869ce', '[\"*\"]', '2025-05-05 10:36:38', NULL, '2025-05-05 10:36:32', '2025-05-05 10:36:38'),
(681, 'App\\Models\\User', 20, 'API Token', '8ac74e9698d13c020f71ef64614821fe70d5216c300041f4e3532e536a1ba063', '[\"*\"]', '2025-05-05 10:45:15', NULL, '2025-05-05 10:45:13', '2025-05-05 10:45:15'),
(682, 'App\\Models\\User', 20, 'API Token', 'c133ad51eec5aef4ee84ad64fdd112d7cd01e94476d8166ff4bcaa1fc93dba3a', '[\"*\"]', '2025-05-05 10:53:21', NULL, '2025-05-05 10:53:21', '2025-05-05 10:53:21'),
(683, 'App\\Models\\User', 20, 'API Token', 'f3d8346be39abdd956a80e3db72fb8829fa4a30d9a8b699fe17dab518d6d29a9', '[\"*\"]', '2025-05-05 11:10:11', NULL, '2025-05-05 11:10:10', '2025-05-05 11:10:11'),
(684, 'App\\Models\\User', 20, 'API Token', 'f33582952540a7c956133807d3518a09cf5c374729ac687ad46aa042af585006', '[\"*\"]', '2025-05-05 11:23:30', NULL, '2025-05-05 11:23:30', '2025-05-05 11:23:30'),
(685, 'App\\Models\\User', 27, 'API Token', 'f2c273153e65e6ee9a53d71c9618924f4c87d77c292a50ce8c180943c874396b', '[\"*\"]', '2025-05-15 20:53:36', NULL, '2025-05-05 15:31:35', '2025-05-15 20:53:36'),
(686, 'App\\Models\\User', 20, 'API Token', '9b2065d88a1e22f27a2f0388751dea7e8cedce877e813fe425c69bf70912b23f', '[\"*\"]', '2025-05-05 15:36:32', NULL, '2025-05-05 15:36:31', '2025-05-05 15:36:32'),
(687, 'App\\Models\\User', 20, 'API Token', '073798b5346c9a376d10cf430ee199db205128640045e43b9b6760ed3a344a9d', '[\"*\"]', '2025-05-05 15:44:37', NULL, '2025-05-05 15:44:36', '2025-05-05 15:44:37'),
(688, 'App\\Models\\User', 20, 'API Token', 'b9266e8026f5e7c983ce909d64e7600778ebeadd696cff422555bdeb6df5e73d', '[\"*\"]', '2025-05-06 06:34:55', NULL, '2025-05-06 06:34:55', '2025-05-06 06:34:55'),
(689, 'App\\Models\\User', 20, 'API Token', 'b3f49a491dea1499cce6e6147e2e2c5a2312fbff139ce99a01a4b608aca4fead', '[\"*\"]', '2025-05-06 06:47:43', NULL, '2025-05-06 06:47:43', '2025-05-06 06:47:43'),
(690, 'App\\Models\\User', 20, 'API Token', '80e16ca2c3cf341aff5c31e64e09e4170a27a23f3eba4c285de6abc52669279d', '[\"*\"]', '2025-05-06 07:00:36', NULL, '2025-05-06 07:00:36', '2025-05-06 07:00:36'),
(691, 'App\\Models\\User', 20, 'API Token', '9ca680f617f538d5dea097fc9948f78c49e36e499ae3b971bd1bfbce3fcf9837', '[\"*\"]', '2025-05-06 07:11:59', NULL, '2025-05-06 07:11:54', '2025-05-06 07:11:59'),
(692, 'App\\Models\\User', 20, 'API Token', '9f824ed60af5df3008ca33fade032ab1ba4f754d0d7cc4e1afd20d9971e45049', '[\"*\"]', '2025-05-06 07:13:09', NULL, '2025-05-06 07:13:05', '2025-05-06 07:13:09'),
(693, 'App\\Models\\User', 27, 'API Token', '51df62e4cf40e7039fa35f3d4b22efd8b9a313d5fcbf8df12101f48e25b63ec0', '[\"*\"]', '2025-05-06 14:13:44', NULL, '2025-05-06 12:11:31', '2025-05-06 14:13:44'),
(694, 'App\\Models\\User', 20, 'API Token', '91df3563549fd187a6b740ffdfb62deab57290d23c324af2a7052a0c04634ec9', '[\"*\"]', '2025-05-06 12:26:41', NULL, '2025-05-06 12:26:40', '2025-05-06 12:26:41'),
(695, 'App\\Models\\User', 20, 'API Token', 'c901086b8691bd3878fd455ecfd64682f6908477e3fb94465403805805041c2d', '[\"*\"]', '2025-05-06 12:34:44', NULL, '2025-05-06 12:34:44', '2025-05-06 12:34:44'),
(696, 'App\\Models\\User', 20, 'API Token', 'eb8572558eba8cfce70181d8a13dfa3b33fd9b952da6a5e6bc280f662d6191bb', '[\"*\"]', '2025-05-06 12:42:52', NULL, '2025-05-06 12:42:51', '2025-05-06 12:42:52'),
(697, 'App\\Models\\User', 20, 'API Token', 'f261b74b68da507dbe47df1ac046636c5fe8d51e74b5f56699087255def424b5', '[\"*\"]', '2025-05-06 12:51:00', NULL, '2025-05-06 12:50:59', '2025-05-06 12:51:00'),
(698, 'App\\Models\\User', 20, 'API Token', '468e13018b643ed2acafe6d5d0980a3bd80a66e22ef55edb9eb1b88646d231a8', '[\"*\"]', '2025-05-06 12:58:07', NULL, '2025-05-06 12:58:06', '2025-05-06 12:58:07'),
(699, 'App\\Models\\User', 20, 'API Token', 'f2f4d8f181ad4240471a2f8dfca01718e4eca6cac38ccdf2666688fd9d6be9f0', '[\"*\"]', '2025-05-06 13:05:14', NULL, '2025-05-06 13:05:13', '2025-05-06 13:05:14'),
(700, 'App\\Models\\User', 20, 'API Token', '4ba32beb67b9bc2cc81f39fa9dd9fc80ad9181bc3bce80f4630dff36ececd9d7', '[\"*\"]', '2025-05-06 13:12:21', NULL, '2025-05-06 13:12:20', '2025-05-06 13:12:21'),
(701, 'App\\Models\\User', 20, 'API Token', '22851b3a66ba28c9611e9836049bdb669d6c188a72622b913c8abe9e26070c83', '[\"*\"]', '2025-05-06 13:36:16', NULL, '2025-05-06 13:36:15', '2025-05-06 13:36:16'),
(702, 'App\\Models\\User', 20, 'API Token', '8b4b2a0ebe26fdbb1dcbd375f6aaf3946d653893d25214333f847c9cb7685a15', '[\"*\"]', '2025-05-06 13:47:07', NULL, '2025-05-06 13:47:04', '2025-05-06 13:47:07'),
(703, 'App\\Models\\User', 20, 'API Token', 'fe1fd2b4aee888e03bf4024279ccb2ba6a7822e9103cc358f59e130e1b8935f2', '[\"*\"]', '2025-05-06 14:41:13', NULL, '2025-05-06 14:41:12', '2025-05-06 14:41:13'),
(704, 'App\\Models\\User', 20, 'API Token', 'a595ae26cfb81664e00a74a4c75e01e46ddedd4f68efc3829513224f255deba2', '[\"*\"]', '2025-05-13 08:00:59', NULL, '2025-05-13 08:00:59', '2025-05-13 08:00:59'),
(705, 'App\\Models\\User', 20, 'API Token', '3331d9ed06124d166fe93bc02b2fb7af2fb332578c8bbf8f355655dd79d63b01', '[\"*\"]', '2025-05-13 08:12:13', NULL, '2025-05-13 08:12:12', '2025-05-13 08:12:13'),
(706, 'App\\Models\\User', 20, 'API Token', 'f183b20c6c3a85f31ee163c7a56ef0aa8e61d99e986a3e96aecc251218da82f7', '[\"*\"]', '2025-05-13 08:21:56', NULL, '2025-05-13 08:21:56', '2025-05-13 08:21:56'),
(707, 'App\\Models\\User', 20, 'API Token', '080eb0bffe984a25896f8cd164bb6f43ea825739d7caec1201fe7610699d0484', '[\"*\"]', '2025-05-13 08:32:42', NULL, '2025-05-13 08:32:41', '2025-05-13 08:32:42'),
(708, 'App\\Models\\User', 20, 'API Token', 'fb2f0e2f0b11de62119fcf7aafa977ac17bd4458b77ba6ab92d8e8c9d3c39fe0', '[\"*\"]', '2025-05-13 20:11:28', NULL, '2025-05-13 20:11:28', '2025-05-13 20:11:28'),
(709, 'App\\Models\\User', 20, 'API Token', '5b3bcd8abfa67f2a82ec206365a1764cecdb31358575ff8da9789161d2c0e041', '[\"*\"]', '2025-05-13 20:22:09', NULL, '2025-05-13 20:22:09', '2025-05-13 20:22:09'),
(710, 'App\\Models\\User', 20, 'API Token', '2d1ed2fb1e06c40552fa42722001485bdb17c95b9da7a11bc5a03640030ea90d', '[\"*\"]', '2025-05-14 21:15:38', NULL, '2025-05-14 21:15:38', '2025-05-14 21:15:38'),
(711, 'App\\Models\\User', 20, 'API Token', 'ba8d03fcd873ba6e68a4c57e4ddcd5c4517b52d5598c98428bbda5ceabfc8971', '[\"*\"]', '2025-05-14 21:26:34', NULL, '2025-05-14 21:26:33', '2025-05-14 21:26:34'),
(712, 'App\\Models\\User', 27, 'API Token', '77c3e3c0566ea45f62aa6dc2e0a164a5ed41726ec232a9a1213ea8860447f46f', '[\"*\"]', '2025-05-15 05:42:23', NULL, '2025-05-15 05:42:07', '2025-05-15 05:42:23'),
(713, 'App\\Models\\User', 27, 'API Token', '9010c769897eeecdb18a320e57d2e7444569b4b2ef88f71d2a4ebe144c4e2ce5', '[\"*\"]', '2025-06-04 17:19:27', NULL, '2025-05-15 20:53:40', '2025-06-04 17:19:27'),
(714, 'App\\Models\\User', 27, 'API Token', 'cc39397aad4b085784f39a76795e4b958a1c75e9eb875664d23bb66a194a42cc', '[\"*\"]', '2025-05-26 13:41:24', NULL, '2025-05-26 12:05:38', '2025-05-26 13:41:24'),
(715, 'App\\Models\\User', 22, 'API Token', 'ec7d577b286a04ef260469ade651b7b690269a9e4bca786439e054f95b0cfddc', '[\"*\"]', '2025-05-26 12:09:57', NULL, '2025-05-26 12:09:43', '2025-05-26 12:09:57'),
(716, 'App\\Models\\User', 27, 'API Token', '49456e851ff212c172eb564bd168bcb246d249066df8559d77ef6c822678ca4f', '[\"*\"]', '2025-05-27 05:58:18', NULL, '2025-05-26 12:10:38', '2025-05-27 05:58:18'),
(717, 'App\\Models\\User', 20, 'API Token', '6ac603c66916ca851f190ede9fe5c012a2fc1078aaca088b9df866b63e129abf', '[\"*\"]', '2025-05-26 12:55:47', NULL, '2025-05-26 12:55:44', '2025-05-26 12:55:47'),
(718, 'App\\Models\\User', 20, 'API Token', '861e1cec8acb2c77f69570161d820d2f64fbbe077c8b76ce702916d622372b2c', '[\"*\"]', '2025-05-26 13:04:31', NULL, '2025-05-26 13:04:31', '2025-05-26 13:04:31'),
(719, 'App\\Models\\User', 20, 'API Token', '1283b8180620f8e9693b3a023c988a7008416d3db391e1b469db547cac0f6298', '[\"*\"]', '2025-05-26 13:13:13', NULL, '2025-05-26 13:13:10', '2025-05-26 13:13:13'),
(720, 'App\\Models\\User', 20, 'API Token', '58d75428b1094c48d054c6aec76a07868ce8ed47e133b57540f60b70983047e2', '[\"*\"]', '2025-05-26 13:21:47', NULL, '2025-05-26 13:21:46', '2025-05-26 13:21:47'),
(721, 'App\\Models\\User', 20, 'API Token', '39ffe234d71520d0b2f44274a05a377a0cdbf6bf28352fd3abe273f9cd17eab4', '[\"*\"]', '2025-05-26 13:22:45', NULL, '2025-05-26 13:22:44', '2025-05-26 13:22:45'),
(722, 'App\\Models\\User', 20, 'API Token', '3c854c498566428bb963f2ea622c102aa2cc2bb161d965178f2bf4534eb36a3c', '[\"*\"]', '2025-05-26 13:38:00', NULL, '2025-05-26 13:37:59', '2025-05-26 13:38:00'),
(723, 'App\\Models\\User', 20, 'API Token', '4dc720690c009e48773a89325c0a68efa8d7a42548d063b6c17c8c348b7e65a0', '[\"*\"]', '2025-05-26 13:38:52', NULL, '2025-05-26 13:38:50', '2025-05-26 13:38:52'),
(724, 'App\\Models\\User', 20, 'API Token', '1aab999f1f2eafeaffc087fd5036a132c7de3751f21ad1a7ff39419f2ad52fb2', '[\"*\"]', NULL, NULL, '2025-05-26 13:39:23', '2025-05-26 13:39:23'),
(725, 'App\\Models\\User', 20, 'API Token', '94c44a3f218ef4bb3b4b010c015d63c4a5b226518b8b850852fdf91794d0cb9f', '[\"*\"]', '2025-05-26 13:39:52', NULL, '2025-05-26 13:39:51', '2025-05-26 13:39:52'),
(726, 'App\\Models\\User', 20, 'API Token', 'eba98b0d4c949148290546426189c184b2faedcaf00c64a80f408405d5fddd0a', '[\"*\"]', '2025-05-26 13:56:53', NULL, '2025-05-26 13:56:53', '2025-05-26 13:56:53'),
(727, 'App\\Models\\User', 20, 'API Token', 'd3aefe5c8f142f273e8367c93886e7004315dd103dc15f053480050991493dd0', '[\"*\"]', '2025-05-26 14:05:23', NULL, '2025-05-26 14:05:22', '2025-05-26 14:05:23'),
(728, 'App\\Models\\User', 20, 'API Token', '544b244777a5d893e212dee4ddac2a36eba56cef2d6de9693fc579eb9f315200', '[\"*\"]', '2025-05-26 14:05:53', NULL, '2025-05-26 14:05:53', '2025-05-26 14:05:53'),
(729, 'App\\Models\\User', 20, 'API Token', '9c4c3020b3229297a9236f893920e1fe4b0be1a27a470b9e26c2eac06602a471', '[\"*\"]', '2025-05-26 14:14:07', NULL, '2025-05-26 14:14:05', '2025-05-26 14:14:07'),
(730, 'App\\Models\\User', 17, 'API Token', '23244d9331e8e840ef6e59fa2667d887135c5e7d46f43932e1965ff17d501462', '[\"*\"]', '2025-07-04 13:41:41', NULL, '2025-05-26 14:14:32', '2025-07-04 13:41:41'),
(731, 'App\\Models\\User', 17, 'API Token', '9c19e928b6c59ea14911f3925e3426111dc835ba38d304dd7379fcda91eaf2b7', '[\"*\"]', '2025-06-04 12:56:13', NULL, '2025-05-26 14:14:38', '2025-06-04 12:56:13'),
(732, 'App\\Models\\User', 20, 'API Token', 'c2824ca27c886d6869e3ca3e883380436184e645ed47a5c0674883535cd93259', '[\"*\"]', '2025-05-26 14:18:19', NULL, '2025-05-26 14:18:18', '2025-05-26 14:18:19'),
(733, 'App\\Models\\User', 20, 'API Token', '24a766db6f6db05f1a084ec689aefdeff003a9c9b027cd99b741cc838ddbafa6', '[\"*\"]', '2025-05-26 14:31:32', NULL, '2025-05-26 14:31:31', '2025-05-26 14:31:32'),
(734, 'App\\Models\\User', 20, 'API Token', 'd686d079a85d38f0d867ddd350108845450859f17fe1562dd71833158b33c9bf', '[\"*\"]', '2025-05-26 14:33:39', NULL, '2025-05-26 14:33:38', '2025-05-26 14:33:39'),
(735, 'App\\Models\\User', 20, 'API Token', '66fd274aeab795a100ba135eb16f75fff788ebf03981dbf2425e369820bdb293', '[\"*\"]', '2025-05-26 14:36:36', NULL, '2025-05-26 14:36:35', '2025-05-26 14:36:36'),
(736, 'App\\Models\\User', 20, 'API Token', '7512b4abe5b71c18735c2fe680dfe0f74166648559f950fa7a5360557edd1f14', '[\"*\"]', '2025-05-26 14:45:21', NULL, '2025-05-26 14:45:20', '2025-05-26 14:45:21'),
(737, 'App\\Models\\User', 20, 'API Token', 'a1357e996f9d53c686974773a9fd64b66843cae192c7e9886f2cbe1e51d417e8', '[\"*\"]', '2025-05-26 14:51:32', NULL, '2025-05-26 14:51:31', '2025-05-26 14:51:32'),
(738, 'App\\Models\\User', 20, 'API Token', 'e84ad033961f38bc2164d0f272f3705614119f19cb59adecd6143dd5e1269a1d', '[\"*\"]', '2025-05-26 20:06:19', NULL, '2025-05-26 20:06:19', '2025-05-26 20:06:19'),
(739, 'App\\Models\\User', 20, 'API Token', '7f15b8e489bf9bfc777e5f6db396c6ea58d0c1866f89db6e507f1c6c4fe45a43', '[\"*\"]', '2025-05-26 20:10:27', NULL, '2025-05-26 20:10:27', '2025-05-26 20:10:27'),
(740, 'App\\Models\\User', 20, 'API Token', '3d934375e8b40e9e6da9ca96d7db7cd2dffff2e232d9a30001d03704fdb25211', '[\"*\"]', '2025-05-26 20:27:30', NULL, '2025-05-26 20:27:29', '2025-05-26 20:27:30'),
(741, 'App\\Models\\User', 20, 'API Token', '51b5dcf106554bf239a057b9df9895fa0d8b178f432dcc614de655585cb09e9b', '[\"*\"]', '2025-05-26 20:31:35', NULL, '2025-05-26 20:31:35', '2025-05-26 20:31:35'),
(742, 'App\\Models\\User', 20, 'API Token', 'c5cb5266b36bcc64d6237d8847cb8712b244b5594fc6a255c2f086b5f5448a03', '[\"*\"]', '2025-05-26 20:34:15', NULL, '2025-05-26 20:34:13', '2025-05-26 20:34:15'),
(743, 'App\\Models\\User', 20, 'API Token', 'dc8c2e95af7e71df507ebe9670237de556c77f27b8fb78843ecc1cb8782ba8bd', '[\"*\"]', '2025-05-26 20:37:34', NULL, '2025-05-26 20:37:33', '2025-05-26 20:37:34'),
(744, 'App\\Models\\User', 20, 'API Token', 'e248ee61ac3a43d901f6aad4e1274ad24825ce948616994973a2d35f62425612', '[\"*\"]', '2025-05-26 20:44:11', NULL, '2025-05-26 20:44:10', '2025-05-26 20:44:11'),
(745, 'App\\Models\\User', 20, 'API Token', '6592cbee243f9621bea2e2da0c9d3d07b1203bb8239b8cb25e335b1a9ec0f96a', '[\"*\"]', '2025-05-26 20:47:52', NULL, '2025-05-26 20:47:52', '2025-05-26 20:47:52'),
(746, 'App\\Models\\User', 20, 'API Token', '6944cce795a51d2808847171b38173f8f330a160be9fa628cde0f060f5620039', '[\"*\"]', NULL, NULL, '2025-05-26 20:51:50', '2025-05-26 20:51:50'),
(747, 'App\\Models\\User', 20, 'API Token', '4794c8b43b50208e8ed0bc96cd31bd05418f55df07b1650fae244285ed91ed0a', '[\"*\"]', '2025-05-26 20:53:42', NULL, '2025-05-26 20:53:32', '2025-05-26 20:53:42'),
(748, 'App\\Models\\User', 20, 'API Token', '348591ce6b698e44a80c311c2801447d23d0486e9bbc2c34aa0251843545bb3d', '[\"*\"]', '2025-05-26 20:54:28', NULL, '2025-05-26 20:54:28', '2025-05-26 20:54:28'),
(749, 'App\\Models\\User', 20, 'API Token', '290aff695c172a009909afe196d692264f442f06101dfb88884521a4f5fe7f15', '[\"*\"]', '2025-05-26 21:02:43', NULL, '2025-05-26 21:02:32', '2025-05-26 21:02:43'),
(750, 'App\\Models\\User', 20, 'API Token', '295fdb533a8d3d7e3ee90f59372792fda4f0d383ba7535eebed2680ed832c843', '[\"*\"]', '2025-05-26 21:16:35', NULL, '2025-05-26 21:16:27', '2025-05-26 21:16:35'),
(751, 'App\\Models\\User', 20, 'API Token', '83896e7b31d9a110fceaf04e3ecad531ca3d94b6ef7dba51cef76055592d85c7', '[\"*\"]', '2025-05-26 21:19:38', NULL, '2025-05-26 21:19:37', '2025-05-26 21:19:38'),
(752, 'App\\Models\\User', 20, 'API Token', 'eb550e7b9a879198a9248a77d8b6f100fb1d6db65d68707e0ee6be8ba8f91c3f', '[\"*\"]', '2025-05-26 21:21:35', NULL, '2025-05-26 21:21:28', '2025-05-26 21:21:35'),
(753, 'App\\Models\\User', 20, 'API Token', '1eb12f34d41d202c7e29e519a52a720b0b3722ec059619aafe638ac66106b1bc', '[\"*\"]', '2025-05-26 21:26:20', NULL, '2025-05-26 21:26:19', '2025-05-26 21:26:20'),
(754, 'App\\Models\\User', 20, 'API Token', 'ec8896d75145d61aedab0fe7712086794299ce9b28c0575bbbd2a23fc4f973d4', '[\"*\"]', '2025-05-26 21:29:54', NULL, '2025-05-26 21:29:53', '2025-05-26 21:29:54'),
(755, 'App\\Models\\User', 20, 'API Token', '69b1c62065db1f0767200a34abf55b36863c735d1ca22ca80045e68021cfbd98', '[\"*\"]', '2025-05-26 21:37:16', NULL, '2025-05-26 21:37:15', '2025-05-26 21:37:16'),
(756, 'App\\Models\\User', 20, 'API Token', '07d23048598466f1edb733d92fea41e47ec933b21f97edaa949a906897e682f1', '[\"*\"]', '2025-05-26 21:45:14', NULL, '2025-05-26 21:45:12', '2025-05-26 21:45:14'),
(757, 'App\\Models\\User', 20, 'API Token', 'f6effd1db97e75cf75064ea1e1bf47c2c94a3d1390ccba30b5e318b622a51d49', '[\"*\"]', '2025-05-26 21:58:21', NULL, '2025-05-26 21:58:20', '2025-05-26 21:58:21'),
(758, 'App\\Models\\User', 20, 'API Token', 'dc4185d69f113978165138a453b077e18536c57d42f241943b4ac4f2465505ed', '[\"*\"]', '2025-05-26 22:03:34', NULL, '2025-05-26 22:03:33', '2025-05-26 22:03:34'),
(759, 'App\\Models\\User', 20, 'API Token', 'f84c9af94b2ee7929eacf8f66f229fcceb6f72906a8eee46a47dd9b9b0190bb4', '[\"*\"]', '2025-05-26 22:07:38', NULL, '2025-05-26 22:07:37', '2025-05-26 22:07:38'),
(760, 'App\\Models\\User', 20, 'API Token', 'd48e04ffa0edbb475ca9c829967e492769bc7d46fdbddbf44860d2e212ccf3b5', '[\"*\"]', '2025-05-26 22:12:42', NULL, '2025-05-26 22:12:42', '2025-05-26 22:12:42'),
(761, 'App\\Models\\User', 20, 'API Token', '46bc8361b2e665607de2661061988d59f4740c36931e82deff142060fe63b394', '[\"*\"]', '2025-05-26 22:20:51', NULL, '2025-05-26 22:20:50', '2025-05-26 22:20:51'),
(762, 'App\\Models\\User', 20, 'API Token', '336ce84f9bb21478d053bfa88783aba6bb01aca2763c4dfa4f16071fd0442a14', '[\"*\"]', '2025-05-27 09:38:37', NULL, '2025-05-27 09:38:36', '2025-05-27 09:38:37'),
(763, 'App\\Models\\User', 20, 'API Token', '3dd96938f7f73d27deb3189307de631f7e316e85fd3bf78f2c14b356b75fe3c1', '[\"*\"]', '2025-05-27 09:42:39', NULL, '2025-05-27 09:42:38', '2025-05-27 09:42:39'),
(764, 'App\\Models\\User', 20, 'API Token', 'eb7c82d70f1eee56c5b0ff240def7a9f09d6baf32a85ab21a236bbd961524056', '[\"*\"]', '2025-05-27 09:48:53', NULL, '2025-05-27 09:48:52', '2025-05-27 09:48:53'),
(765, 'App\\Models\\User', 20, 'API Token', 'dc6de7b5d0eb56033da60236d70c00efeeeab64bf594a16b959ade12cfa10c69', '[\"*\"]', '2025-05-27 09:57:35', NULL, '2025-05-27 09:57:35', '2025-05-27 09:57:35'),
(766, 'App\\Models\\User', 17, 'API Token', '699a0ed76f5d856b42997096eb7b48621c0bebeddc6ba3c34ecd5c831d333945', '[\"*\"]', '2025-05-27 15:04:12', NULL, '2025-05-27 13:01:01', '2025-05-27 15:04:12'),
(767, 'App\\Models\\User', 20, 'API Token', 'ef06516992da2be51895579d292683117afe519cad502e7457f097cfb5098641', '[\"*\"]', '2025-05-28 12:58:24', NULL, '2025-05-28 12:58:24', '2025-05-28 12:58:24'),
(768, 'App\\Models\\User', 17, 'API Token', '62c50fde83e7350b4fa862be8b727b543ca39d69e362864c9ac63bc51a6f3604', '[\"*\"]', '2025-07-04 12:56:28', NULL, '2025-05-29 12:35:56', '2025-07-04 12:56:28');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(769, 'App\\Models\\User', 27, 'API Token', '6f43a8c82b7f92842c1831ca2c65143955940d6df1340d58120c6979ed21590b', '[\"*\"]', '2025-05-31 05:48:30', NULL, '2025-05-31 05:45:50', '2025-05-31 05:48:30'),
(770, 'App\\Models\\User', 17, 'API Token', '59a262b07c67359f168711004e4e9f9f8693d79e52291f30d235ced21adeabb1', '[\"*\"]', '2025-06-01 07:28:34', NULL, '2025-06-01 07:28:16', '2025-06-01 07:28:34'),
(771, 'App\\Models\\User', 27, 'API Token', '0d535c3fc7007952c11ff6810a97f04257ccd433b03a8c2cc5ba946d048ecb82', '[\"*\"]', '2025-06-04 10:04:25', NULL, '2025-06-04 10:02:36', '2025-06-04 10:04:25'),
(772, 'App\\Models\\User', 36, 'API Token', '2d511e6bb6370a184ca0f4f5af3d48f6347bddc81ddbd882fe11ce5da68cabcc', '[\"*\"]', '2025-06-04 14:42:48', NULL, '2025-06-04 12:56:25', '2025-06-04 14:42:48'),
(773, 'App\\Models\\User', 17, 'API Token', 'a02bb1fdc01941d74e7693513421b94909ddf61c9fe8e125cffd64ee4def4cb1', '[\"*\"]', '2025-06-04 14:44:17', NULL, '2025-06-04 14:43:09', '2025-06-04 14:44:17'),
(774, 'App\\Models\\User', 36, 'API Token', 'df8e52af42e2206c5f36f3d0a0124e7bcb4c8610bdac9650c6c0bf193e04e8e7', '[\"*\"]', '2025-06-04 22:13:34', NULL, '2025-06-04 14:44:31', '2025-06-04 22:13:34'),
(775, 'App\\Models\\User', 17, 'API Token', 'f4eff0da5e31043df5b45cb74cec339cae4de000fbf27778322a16dab9189b9a', '[\"*\"]', '2025-06-04 22:15:44', NULL, '2025-06-04 22:13:51', '2025-06-04 22:15:44'),
(776, 'App\\Models\\User', 36, 'API Token', '316db9bfc3e4f1a73dada74d08e42ac2da41c9c9c8ce6086d8d6fe64bfd80d35', '[\"*\"]', '2025-06-05 12:34:48', NULL, '2025-06-04 22:16:02', '2025-06-05 12:34:48'),
(777, 'App\\Models\\User', 20, 'API Token', '8dcab715834d820f3506e3e3669c8e1b3c0cffd4e3426557f6a3496fb0c04594', '[\"*\"]', '2025-06-05 07:34:01', NULL, '2025-06-05 07:34:00', '2025-06-05 07:34:01'),
(778, 'App\\Models\\User', 27, 'API Token', '67a9b1dcee31a74a6d4b677c284baa79f3195378812d94b564f2a4d763fbaca6', '[\"*\"]', '2025-06-05 08:01:23', NULL, '2025-06-05 07:38:03', '2025-06-05 08:01:23'),
(779, 'App\\Models\\User', 27, 'API Token', 'a88069460252ccde1e68694f7a000986dfa064759d10257c835aabc6dc38a29c', '[\"*\"]', '2025-06-05 07:46:23', NULL, '2025-06-05 07:38:20', '2025-06-05 07:46:23'),
(780, 'App\\Models\\User', 20, 'API Token', '695677d531e4b641a8f4f1a2f23b7472fdbf41093150f3d00c1211ef5d25919c', '[\"*\"]', '2025-06-05 07:58:13', NULL, '2025-06-05 07:58:12', '2025-06-05 07:58:13'),
(781, 'App\\Models\\User', 20, 'API Token', '2e957af05c56a2961d71983644c00016c592dadafda3e1bb5db66a47433bb0fa', '[\"*\"]', '2025-06-05 08:14:33', NULL, '2025-06-05 08:14:32', '2025-06-05 08:14:33'),
(782, 'App\\Models\\User', 20, 'API Token', 'd04efe6953f7bac154c22fd75f536d149ab120ece939672986e18e3c5f46f897', '[\"*\"]', '2025-06-05 08:15:33', NULL, '2025-06-05 08:15:33', '2025-06-05 08:15:33'),
(783, 'App\\Models\\User', 20, 'API Token', 'ee4a9405e2de4a97f5bd8d1efd1bb9c6017ef700fb9cb3821ebe0248fdf68deb', '[\"*\"]', '2025-06-05 08:16:35', NULL, '2025-06-05 08:16:34', '2025-06-05 08:16:35'),
(784, 'App\\Models\\User', 20, 'API Token', 'af8805f3af87d88d5600696b9528a3424bd1faa6f5f574130925962de0a5be69', '[\"*\"]', '2025-06-05 08:17:39', NULL, '2025-06-05 08:17:39', '2025-06-05 08:17:39'),
(785, 'App\\Models\\User', 20, 'API Token', 'f8a4dd1a92658242d4fe0cb9f3ee2bd63259d0958eb08badec8bf225bbdc4130', '[\"*\"]', '2025-06-05 11:51:39', NULL, '2025-06-05 11:51:38', '2025-06-05 11:51:39'),
(786, 'App\\Models\\User', 20, 'API Token', '588a83965cd9209d009e77387169995725181eb458f9e792bff341b0f5a2a1c9', '[\"*\"]', '2025-06-05 11:52:14', NULL, '2025-06-05 11:52:13', '2025-06-05 11:52:14'),
(787, 'App\\Models\\User', 20, 'API Token', '85b12317f18e37cc8198d2cd5e42f8d8eaf1e1b257972cba654c3e78c1646027', '[\"*\"]', '2025-06-05 11:52:45', NULL, '2025-06-05 11:52:44', '2025-06-05 11:52:45'),
(788, 'App\\Models\\User', 20, 'API Token', '9c814e8534715ef3a6b572bcd62f10099be0d3f360f79c64593769ba494e712c', '[\"*\"]', '2025-06-05 12:09:04', NULL, '2025-06-05 12:09:04', '2025-06-05 12:09:04'),
(789, 'App\\Models\\User', 20, 'API Token', '9bee4a2bc60d19a18495fd30212fac1cc63005357038dfe51b4bb98ddada470d', '[\"*\"]', '2025-06-05 12:09:36', NULL, '2025-06-05 12:09:36', '2025-06-05 12:09:36'),
(790, 'App\\Models\\User', 20, 'API Token', '14de152336a4506962d67e38371be202e5b280ce2a840e44b1580602d839c784', '[\"*\"]', '2025-06-05 12:10:08', NULL, '2025-06-05 12:10:07', '2025-06-05 12:10:08'),
(791, 'App\\Models\\User', 17, 'API Token', 'd933c98e1bc548db8e989da37891c229ea7e87b3637cea196aff7d82e061ce98', '[\"*\"]', '2025-06-06 15:14:42', NULL, '2025-06-05 12:35:02', '2025-06-06 15:14:42'),
(792, 'App\\Models\\User', 20, 'API Token', 'ecac6a0fd09184b60957b6dcad391d09d703bdf9e8990dec5e8b6f26bd6e2ed8', '[\"*\"]', '2025-06-05 12:37:51', NULL, '2025-06-05 12:37:51', '2025-06-05 12:37:51'),
(793, 'App\\Models\\User', 20, 'API Token', 'f0edab60959fdba331f53d8a7c750360d0a8e9df90d48b25eb288980e64d9ed4', '[\"*\"]', '2025-06-05 12:40:17', NULL, '2025-06-05 12:40:17', '2025-06-05 12:40:17'),
(794, 'App\\Models\\User', 20, 'API Token', '328c10cde21b03d8175d3f54f628e818987eaf03e74c9c6cd4a1df3da5c51882', '[\"*\"]', '2025-06-05 12:42:51', NULL, '2025-06-05 12:42:50', '2025-06-05 12:42:51'),
(795, 'App\\Models\\User', 20, 'API Token', 'eb818cde82dcdcceb8bb9e2bfbd6e11bb817ac47a5c041d52dda0f3ca4f54af5', '[\"*\"]', '2025-06-05 12:45:23', NULL, '2025-06-05 12:45:22', '2025-06-05 12:45:23'),
(796, 'App\\Models\\User', 20, 'API Token', '410c2bb7f1f1cfa7af65985914728c9143cb40e04447ac39aae66c0310f169e7', '[\"*\"]', '2025-06-05 12:58:23', NULL, '2025-06-05 12:58:22', '2025-06-05 12:58:23'),
(797, 'App\\Models\\User', 20, 'API Token', '6ae9eaa29a41de271b42508074119d91362fedcc5398ffe099009a9a68f4169f', '[\"*\"]', '2025-06-05 13:00:36', NULL, '2025-06-05 13:00:35', '2025-06-05 13:00:36'),
(798, 'App\\Models\\User', 20, 'API Token', 'da221855fbcc30c10fd50eda70ab7dc34ed50631e43154306ce608918143a2f2', '[\"*\"]', '2025-06-05 13:09:22', NULL, '2025-06-05 13:09:19', '2025-06-05 13:09:22'),
(799, 'App\\Models\\User', 20, 'API Token', 'b0e51082438285f34466788b1d21444ce448e93fe99ffb62792d166284f92995', '[\"*\"]', '2025-06-05 13:12:10', NULL, '2025-06-05 13:12:08', '2025-06-05 13:12:10'),
(800, 'App\\Models\\User', 36, 'API Token', '5107c54e9ec1905d2e043e5c846d41a456b602c532ecb960ae7bbd971f3fc443', '[\"*\"]', '2025-06-10 09:41:10', NULL, '2025-06-06 15:14:59', '2025-06-10 09:41:10'),
(801, 'App\\Models\\User', 27, 'API Token', '946c3ffa6d4a9a8722b55c70fd0e2e4ab35d69aafa1c3f17a9f0b1b731abdc3f', '[\"*\"]', '2025-06-10 07:49:59', NULL, '2025-06-10 07:41:19', '2025-06-10 07:49:59'),
(802, 'App\\Models\\User', 20, 'API Token', '3fc91fdd2ab4955532e0eddfdffdeb1417538b0f75533be9501d89b1ee7ec7f7', '[\"*\"]', '2025-06-10 09:38:22', NULL, '2025-06-10 09:38:21', '2025-06-10 09:38:22'),
(803, 'App\\Models\\User', 17, 'API Token', 'e07791f1687479924531c235f5805bea3b33831367f1502904820a81e54fd410', '[\"*\"]', '2025-06-10 09:42:04', NULL, '2025-06-10 09:41:36', '2025-06-10 09:42:04'),
(804, 'App\\Models\\User', 20, 'API Token', 'aba2cab0aa5f544a766cc360abe6b9b3763d4668961f4d2b40d7e2b8a230a47f', '[\"*\"]', '2025-06-10 09:42:55', NULL, '2025-06-10 09:42:54', '2025-06-10 09:42:55'),
(805, 'App\\Models\\User', 17, 'API Token', '4e41d8c9df3d03b7dff3a5d53f849b9f360be90ff089c97684502c5c7697eaef', '[\"*\"]', '2025-06-11 07:02:16', NULL, '2025-06-11 07:01:04', '2025-06-11 07:02:16'),
(806, 'App\\Models\\User', 27, 'API Token', '842ccf7b64407dd453b66c5faa3e5f843db0ae0d65b2319becb5123d6b57f40f', '[\"*\"]', '2025-06-11 07:03:43', NULL, '2025-06-11 07:02:26', '2025-06-11 07:03:43'),
(807, 'App\\Models\\User', 17, 'API Token', '422bd81bd7ef5c21b76de8efe7639ab5409a3be07d2d3d4e6b1370b78de298ac', '[\"*\"]', '2025-07-16 12:26:36', NULL, '2025-07-16 12:22:57', '2025-07-16 12:26:36'),
(808, 'App\\Models\\User', 17, 'API Token', 'b16a1fff2542d3fe25eb217f0e7c55bd87b647f64c7f7d15980a13dbe04e425f', '[\"*\"]', '2025-08-05 11:05:37', NULL, '2025-07-16 12:28:32', '2025-08-05 11:05:37'),
(809, 'App\\Models\\User', 17, 'API Token', '61c6d67bdc129df99532711eca84628768c068b8ea7153bac6620d12f73045c9', '[\"*\"]', '2025-08-05 11:06:44', NULL, '2025-08-05 11:05:48', '2025-08-05 11:06:44'),
(810, 'App\\Models\\User', 17, 'API Token', '53bb1ad927f6dfcd7768c05f951d2ce23be173c2eab1a6d9f7bf0e3be2eb7ef9', '[\"*\"]', '2025-08-05 11:10:12', NULL, '2025-08-05 11:10:10', '2025-08-05 11:10:12'),
(811, 'App\\Models\\User', 17, 'API Token', '79b2a47014aabf5b334ba9228a2c978b76f7b91c70e4470fdadeb5998678a713', '[\"*\"]', NULL, NULL, '2026-02-17 10:18:52', '2026-02-17 10:18:52'),
(812, 'App\\Models\\User', 17, 'API Token', '658e67e93eb7b66dab9a4202d3974889a8252665bdf7d35e562b1197c42592de', '[\"*\"]', '2026-02-17 10:21:41', NULL, '2026-02-17 10:21:30', '2026-02-17 10:21:41'),
(813, 'App\\Models\\User', 17, 'API Token', 'dd7cc31a00300f4c6e4193c591cb64d555832084331d016a37693dc648a813a3', '[\"*\"]', NULL, NULL, '2026-10-22 11:10:22', '2026-10-22 11:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `relationship_meta`
--

CREATE TABLE `relationship_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relationship_meta`
--

INSERT INTO `relationship_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'legal representative', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`, `name`) VALUES
(1, '2025-01-07 01:58:08', '2025-01-07 01:58:08', 'admin'),
(2, '2025-01-07 01:58:08', '2025-01-07 01:58:08', 'employee'),
(3, '2025-01-07 01:58:08', '2025-01-07 01:58:08', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'logo', 'logos/2_1744095393.jpg', '2025-02-04 03:06:35', '2025-04-08 06:56:33'),
(3, 'company_name', 'Trust Core', '2025-02-04 03:20:59', '2025-02-04 09:03:58'),
(8, 'company_email', 'email@gmail.com', '2025-02-04 07:35:42', '2025-02-04 07:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `supplementary_insurance_vvg_meta`
--

CREATE TABLE `supplementary_insurance_vvg_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplementary_insurance_vvg_meta`
--

INSERT INTO `supplementary_insurance_vvg_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, 'Global range', NULL, NULL, '2025-03-13 22:05:25'),
(2, 'Travel insurance', NULL, NULL, '2025-03-13 22:06:03'),
(3, 'Hospitalisation & hospitalisation lump-sum', 25, '2025-03-13 22:05:41', NULL),
(4, 'Dental insurance', 25, '2025-03-13 22:06:20', NULL),
(5, 'Supplemental health insurance', 25, '2025-03-13 22:06:37', NULL),
(6, 'Legal protection', 25, '2025-03-13 22:06:55', NULL),
(7, 'Daily allowance', 25, '2025-03-13 22:07:11', NULL),
(8, 'Lump-sum in the event of disability or death.', 25, '2025-03-13 22:07:30', NULL),
(9, 'Accident insurance', 25, '2025-03-13 22:07:49', NULL),
(10, 'Insurance for risks and disputes on the Internet', 25, '2025-03-13 22:08:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `templates_meta`
--

CREATE TABLE `templates_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `text_meta_title_req` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rel_copy_data_req_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_choose_blueprints_req_col_collections` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_created_by_col_users` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates_meta`
--

INSERT INTO `templates_meta` (`id`, `text_meta_title_req`, `collection_id`, `created_at`, `updated_at`, `rel_copy_data_req_col_boolean`, `rel_choose_blueprints_req_col_collections`, `rel_created_by_col_users`) VALUES
(1, 'New Temp 1', 47, '2025-03-06 09:44:56', NULL, '1', NULL, NULL),
(2, 'New Temp 1', 47, '2025-03-06 09:46:22', NULL, '1', NULL, NULL),
(3, 'Temp 1', 47, '2025-03-06 09:47:22', NULL, '1', 'template_groupe_mutual', NULL),
(4, 'Temp empty 1', 47, '2025-03-06 09:47:45', NULL, '2', 'template_groupe_mutual', NULL),
(5, 'Template 1', 47, '2025-03-06 10:30:37', NULL, '1', 'template_groupe_mutual', NULL),
(6, 'Empty', 47, '2025-03-06 10:31:05', NULL, '2', 'template_groupe_mutual', NULL),
(7, 'no copy', 47, '2025-04-08 11:14:48', NULL, '2', 'template_groupe_mutual', NULL),
(8, 'with copy', 47, '2025-04-08 11:15:09', NULL, '1', 'template_groupe_mutual', NULL),
(9, 'Test without copy', 47, '2025-04-22 14:46:27', NULL, '2', 'template_groupe_mutual', 17),
(10, 'Groupe Mutuel Template', 47, '2025-04-22 14:47:29', NULL, '1', 'template_groupe_mutual', 27),
(11, 'Testetstests', 47, '2025-04-22 17:32:33', NULL, '1', 'template_groupe_mutuel_template', 27),
(12, 'test', 47, '2025-04-25 07:30:09', NULL, '1', 'template_groupe_mutuel_template', 27),
(13, 'Nur KVG', 47, '2025-05-26 12:56:19', NULL, '2', 'template_groupe_mutuel_template', 27),
(14, 'test template', 47, '2025-05-26 14:16:39', NULL, '1', 'template_groupe_mutuel_template', 8),
(15, 'test1', 47, '2025-05-26 15:04:26', NULL, '2', 'template_groupe_mutuel_template', 8),
(16, 'Test', 47, '2025-05-31 05:48:25', NULL, '2', 'template_groupe_mutuel_template', 27),
(17, 'test', 47, '2025-06-04 10:03:11', NULL, '1', 'template_groupe_mutuel_template', 27),
(18, 'test', 47, '2025-06-04 10:03:17', NULL, '1', 'template_groupe_mutuel_template', 27),
(19, 'test template', 47, '2025-06-04 11:20:32', NULL, '2', 'template_groupe_mutuel_template', 8),
(20, 'test 2', 47, '2025-06-04 11:20:55', NULL, '2', 'template_nur_kvg', 27),
(21, 'test template1', 47, '2025-06-04 11:33:39', NULL, '1', 'template_groupe_mutuel_template', 8),
(22, 'test 2', 47, '2025-06-04 11:33:55', NULL, '2', 'template_groupe_mutuel_template', 27),
(23, 'test5', 47, '2025-06-04 14:44:15', NULL, '1', 'template_groupe_mutuel_template', 36),
(24, 'test 6', 47, '2025-06-04 14:44:57', NULL, '1', 'template_test5', 36),
(25, 'test 6', 47, '2025-06-04 14:45:17', NULL, '1', 'template_test5', 36),
(26, 'test 7', 47, '2025-06-04 14:45:32', NULL, '1', 'template_test5', 36),
(27, 'test 8', 47, '2025-06-04 14:45:52', NULL, '1', 'template_test5', 36),
(28, 'test 8', 47, '2025-06-04 14:46:15', NULL, '1', 'template_test5', 36),
(29, 'test 89', 47, '2025-06-04 14:46:23', NULL, '1', 'template_test5', 36),
(30, 'Test52526373', 47, '2025-06-04 17:14:26', NULL, '1', 'template_groupe_mutuel_template', 27),
(31, 'test 9', 47, '2025-06-04 22:14:30', NULL, '1', 'template_groupe_mutual', 36),
(32, 'test 10', 47, '2025-06-04 22:15:38', NULL, '1', 'template_groupe_mutual', 36),
(33, 'test 11', 47, '2025-06-04 22:16:35', NULL, '2', 'template_test_10', 36),
(34, 'Test765343678697867565', 47, '2025-06-10 07:42:41', NULL, '1', 'template_groupe_mutuel_template', 27),
(35, 'Group Mutuel Template 2.0', 47, '2025-06-11 07:02:14', NULL, '1', 'template_groupe_mutual', 27);

-- --------------------------------------------------------

--
-- Table structure for table `template_groupe_mutual_meta`
--

CREATE TABLE `template_groupe_mutual_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `label_LAMal/KVG_basic_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `label_LCA/VVG_supplemental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global_range` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_&_hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `label_Hospitalisation` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `label_Travel_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Mundo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `label_Dental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Dentaire_plus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `label_Supplemental_health_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Alterna` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `label_Special_care` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `label_supplemental_health_insurance_s` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legal_protection` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legis` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `label_Legis_sana` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `label_Daily_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Daily allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Incapacity_for_housework` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `label_Hospitalisation_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `label_Accident_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `label_Insurance for risks and disputes on the Internet` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_CyberProtect` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `label_Lump-sum in the event of disability or death.` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Illness/Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `label_Accident or sudden illness` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_groupe_mutual_meta`
--

INSERT INTO `template_groupe_mutual_meta` (`id`, `meta_title`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_franchise_data_col_franchise_data`, `collection_id`, `created_at`, `updated_at`, `label_LAMal/KVG_basic_insurance`, `date_come_into_effect_req`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `rel_foreign_insurance_country_col_country`, `label_LCA/VVG_supplemental_insurance`, `date_entry_into_force_vvg`, `rel_accidental_coverage_col_boolean`, `label_Global_range`, `rel_si_with_global_col_boolean`, `label_Global`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `label_Hospitalisation_&_hospitalisation_lump-sum`, `rel_hospitalisation_lump_sum_col_boolean`, `label_Hospitalisation_lump-sum`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `label_Hospitalisation`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `label_Travel_insurance`, `rel_mundo_tsi_col_boolean`, `label_Mundo`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `label_Dental_insurance`, `rel_dentaire_plus_col_boolean`, `label_Dentaire_plus`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `label_Supplemental_health_insurance`, `rel_alterna_col_boolean`, `label_Alterna`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `label_Special_care`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `label_supplemental_health_insurance_s`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `label_Legal_protection`, `rel_legis_col_boolean`, `label_Legis`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `label_Legis_sana`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `label_Daily_allowance`, `rel_daily_allowance_col_boolean`, `label_Daily allowance`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `label_Incapacity_for_housework`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `label_Hospitalisation_allowance`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `label_Accident_insurance`, `rel_accident_insurance_col_boolean`, `label_Accident insurance`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `label_Insurance for risks and disputes on the Internet`, `rel_cyberprotect_col_boolean`, `label_CyberProtect`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `label_Lump-sum in the event of disability or death.`, `rel_accident_col_boolean`, `label_Accident`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `label_Illness/Accident`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `label_Accident or sudden illness`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 2, 3, '7', 'Retired', 8, 33, '2025-02-26 21:04:06', '2025-04-27 20:41:33', NULL, '2024-01-01', 6, 2, 10, NULL, '2024-01-01', '1', NULL, '1', NULL, '1', '15', '2', '2024-01-01', '1', NULL, '1', NULL, '1', '3', '2023-01-01', NULL, '1', '2', '2', '2', '2024-02-20', NULL, '1', NULL, '1', '1', '2024-01-03', NULL, '1', NULL, '1', '2', '2024-01-01', NULL, '1', NULL, '1', '2', '2023-01-01', NULL, '1', '1', '2024-02-02', NULL, '1', '1', '1', '2', '2023-01-01', '1', NULL, '1', NULL, '1', '2', '1', '2024-05-01', NULL, '1', '1', '2024-08-02', NULL, '1', NULL, '1', '3', '2', '2', '15', '800', '2022-01-01', NULL, '1', '1', '1', '1', '2024-01-01', NULL, '1', '1', '250', '2024-09-01', NULL, '1', NULL, '1', '2024-08-01', NULL, '1', NULL, '2', '2', '2023-02-01', NULL, '1', NULL, '1', '4', '2024-12-12', NULL, '1', '1', '2', '1', '2024-10-01', NULL, '1', '1', '1', '2024-02-01', 'This is a test description 1', '16');

-- --------------------------------------------------------

--
-- Table structure for table `template_groupe_mutuel_template_meta`
--

CREATE TABLE `template_groupe_mutuel_template_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_groupe_mutuel_template_meta`
--

INSERT INTO `template_groupe_mutuel_template_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `template_group_mutuel_template_20_meta`
--

CREATE TABLE `template_group_mutuel_template_20_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `label_LAMal/KVG_basic_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `label_LCA/VVG_supplemental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global_range` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_&_hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `label_Hospitalisation` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `label_Travel_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Mundo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `label_Dental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Dentaire_plus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `label_Supplemental_health_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Alterna` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `label_Special_care` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `label_supplemental_health_insurance_s` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legal_protection` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legis` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `label_Legis_sana` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `label_Daily_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Daily allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Incapacity_for_housework` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `label_Hospitalisation_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `label_Accident_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `label_Insurance for risks and disputes on the Internet` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_CyberProtect` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `label_Lump-sum in the event of disability or death.` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Illness/Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `label_Accident or sudden illness` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_group_mutuel_template_20_meta`
--

INSERT INTO `template_group_mutuel_template_20_meta` (`id`, `meta_title`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_franchise_data_col_franchise_data`, `collection_id`, `created_at`, `updated_at`, `label_LAMal/KVG_basic_insurance`, `date_come_into_effect_req`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `rel_foreign_insurance_country_col_country`, `label_LCA/VVG_supplemental_insurance`, `date_entry_into_force_vvg`, `rel_accidental_coverage_col_boolean`, `label_Global_range`, `rel_si_with_global_col_boolean`, `label_Global`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `label_Hospitalisation_&_hospitalisation_lump-sum`, `rel_hospitalisation_lump_sum_col_boolean`, `label_Hospitalisation_lump-sum`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `label_Hospitalisation`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `label_Travel_insurance`, `rel_mundo_tsi_col_boolean`, `label_Mundo`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `label_Dental_insurance`, `rel_dentaire_plus_col_boolean`, `label_Dentaire_plus`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `label_Supplemental_health_insurance`, `rel_alterna_col_boolean`, `label_Alterna`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `label_Special_care`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `label_supplemental_health_insurance_s`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `label_Legal_protection`, `rel_legis_col_boolean`, `label_Legis`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `label_Legis_sana`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `label_Daily_allowance`, `rel_daily_allowance_col_boolean`, `label_Daily allowance`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `label_Incapacity_for_housework`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `label_Hospitalisation_allowance`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `label_Accident_insurance`, `rel_accident_insurance_col_boolean`, `label_Accident insurance`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `label_Insurance for risks and disputes on the Internet`, `rel_cyberprotect_col_boolean`, `label_CyberProtect`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `label_Lump-sum in the event of disability or death.`, `rel_accident_col_boolean`, `label_Accident`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `label_Illness/Accident`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `label_Accident or sudden illness`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 2, 3, '7', 'Retired', 8, 33, '2025-02-26 21:04:06', '2025-04-27 20:41:33', NULL, '2024-01-01', 6, 2, 10, NULL, '2024-01-01', '1', NULL, '1', NULL, '1', '15', '2', '2024-01-01', '1', NULL, '1', NULL, '1', '3', '2023-01-01', NULL, '1', '2', '2', '2', '2024-02-20', NULL, '1', NULL, '1', '1', '2024-01-03', NULL, '1', NULL, '1', '2', '2024-01-01', NULL, '1', NULL, '1', '2', '2023-01-01', NULL, '1', '1', '2024-02-02', NULL, '1', '1', '1', '2', '2023-01-01', '1', NULL, '1', NULL, '1', '2', '1', '2024-05-01', NULL, '1', '1', '2024-08-02', NULL, '1', NULL, '1', '3', '2', '2', '15', '800', '2022-01-01', NULL, '1', '1', '1', '1', '2024-01-01', NULL, '1', '1', '250', '2024-09-01', NULL, '1', NULL, '1', '2024-08-01', NULL, '1', NULL, '2', '2', '2023-02-01', NULL, '1', NULL, '1', '4', '2024-12-12', NULL, '1', '1', '2', '1', '2024-10-01', NULL, '1', '1', '1', '2024-02-01', 'This is a test description 1', '16');

-- --------------------------------------------------------

--
-- Table structure for table `template_nur_kvg_meta`
--

CREATE TABLE `template_nur_kvg_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_test_label` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_nur_kvg_meta`
--

INSERT INTO `template_nur_kvg_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`, `label_test_label`) VALUES
(1, 'Offerte para Raphael', 99, NULL, '2025-05-26 13:49:50', '2025-07-20', NULL, 5, 1, NULL, 4, 2, 7, 185, '2', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_test5_meta`
--

CREATE TABLE `template_test5_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test5_meta`
--

INSERT INTO `template_test5_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `template_test52526373_meta`
--

CREATE TABLE `template_test52526373_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test52526373_meta`
--

INSERT INTO `template_test52526373_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `template_test765343678697867565_meta`
--

CREATE TABLE `template_test765343678697867565_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test765343678697867565_meta`
--

INSERT INTO `template_test765343678697867565_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `template_test_2_meta`
--

CREATE TABLE `template_test_2_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_2_meta`
--

INSERT INTO `template_test_2_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_test_6_meta`
--

CREATE TABLE `template_test_6_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_6_meta`
--

INSERT INTO `template_test_6_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `template_test_7_meta`
--

CREATE TABLE `template_test_7_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_7_meta`
--

INSERT INTO `template_test_7_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `template_test_8_meta`
--

CREATE TABLE `template_test_8_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_8_meta`
--

INSERT INTO `template_test_8_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `template_test_9_meta`
--

CREATE TABLE `template_test_9_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `label_LAMal/KVG_basic_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `label_LCA/VVG_supplemental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global_range` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_&_hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `label_Hospitalisation` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `label_Travel_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Mundo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `label_Dental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Dentaire_plus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `label_Supplemental_health_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Alterna` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `label_Special_care` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `label_supplemental_health_insurance_s` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legal_protection` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legis` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `label_Legis_sana` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `label_Daily_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Daily allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Incapacity_for_housework` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `label_Hospitalisation_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `label_Accident_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `label_Insurance for risks and disputes on the Internet` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_CyberProtect` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `label_Lump-sum in the event of disability or death.` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Illness/Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `label_Accident or sudden illness` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_9_meta`
--

INSERT INTO `template_test_9_meta` (`id`, `meta_title`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_franchise_data_col_franchise_data`, `collection_id`, `created_at`, `updated_at`, `label_LAMal/KVG_basic_insurance`, `date_come_into_effect_req`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `rel_foreign_insurance_country_col_country`, `label_LCA/VVG_supplemental_insurance`, `date_entry_into_force_vvg`, `rel_accidental_coverage_col_boolean`, `label_Global_range`, `rel_si_with_global_col_boolean`, `label_Global`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `label_Hospitalisation_&_hospitalisation_lump-sum`, `rel_hospitalisation_lump_sum_col_boolean`, `label_Hospitalisation_lump-sum`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `label_Hospitalisation`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `label_Travel_insurance`, `rel_mundo_tsi_col_boolean`, `label_Mundo`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `label_Dental_insurance`, `rel_dentaire_plus_col_boolean`, `label_Dentaire_plus`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `label_Supplemental_health_insurance`, `rel_alterna_col_boolean`, `label_Alterna`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `label_Special_care`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `label_supplemental_health_insurance_s`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `label_Legal_protection`, `rel_legis_col_boolean`, `label_Legis`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `label_Legis_sana`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `label_Daily_allowance`, `rel_daily_allowance_col_boolean`, `label_Daily allowance`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `label_Incapacity_for_housework`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `label_Hospitalisation_allowance`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `label_Accident_insurance`, `rel_accident_insurance_col_boolean`, `label_Accident insurance`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `label_Insurance for risks and disputes on the Internet`, `rel_cyberprotect_col_boolean`, `label_CyberProtect`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `label_Lump-sum in the event of disability or death.`, `rel_accident_col_boolean`, `label_Accident`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `label_Illness/Accident`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `label_Accident or sudden illness`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 2, 3, '7', 'Retired', 8, 33, '2025-02-26 21:04:06', '2025-04-27 20:41:33', NULL, '2024-01-01', 6, 2, 10, NULL, '2024-01-01', '1', NULL, '1', NULL, '1', '15', '2', '2024-01-01', '1', NULL, '1', NULL, '1', '3', '2023-01-01', NULL, '1', '2', '2', '2', '2024-02-20', NULL, '1', NULL, '1', '1', '2024-01-03', NULL, '1', NULL, '1', '2', '2024-01-01', NULL, '1', NULL, '1', '2', '2023-01-01', NULL, '1', '1', '2024-02-02', NULL, '1', '1', '1', '2', '2023-01-01', '1', NULL, '1', NULL, '1', '2', '1', '2024-05-01', NULL, '1', '1', '2024-08-02', NULL, '1', NULL, '1', '3', '2', '2', '15', '800', '2022-01-01', NULL, '1', '1', '1', '1', '2024-01-01', NULL, '1', '1', '250', '2024-09-01', NULL, '1', NULL, '1', '2024-08-01', NULL, '1', NULL, '2', '2', '2023-02-01', NULL, '1', NULL, '1', '4', '2024-12-12', NULL, '1', '1', '2', '1', '2024-10-01', NULL, '1', '1', '1', '2024-02-01', 'This is a test description 1', '16');

-- --------------------------------------------------------

--
-- Table structure for table `template_test_10_meta`
--

CREATE TABLE `template_test_10_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `label_LAMal/KVG_basic_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `label_LCA/VVG_supplemental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global_range` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_&_hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `label_Hospitalisation` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `label_Travel_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Mundo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `label_Dental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Dentaire_plus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `label_Supplemental_health_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Alterna` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `label_Special_care` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `label_supplemental_health_insurance_s` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legal_protection` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legis` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `label_Legis_sana` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `label_Daily_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Daily allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Incapacity_for_housework` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `label_Hospitalisation_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `label_Accident_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `label_Insurance for risks and disputes on the Internet` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_CyberProtect` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `label_Lump-sum in the event of disability or death.` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Illness/Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `label_Accident or sudden illness` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_10_meta`
--

INSERT INTO `template_test_10_meta` (`id`, `meta_title`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_franchise_data_col_franchise_data`, `collection_id`, `created_at`, `updated_at`, `label_LAMal/KVG_basic_insurance`, `date_come_into_effect_req`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `rel_foreign_insurance_country_col_country`, `label_LCA/VVG_supplemental_insurance`, `date_entry_into_force_vvg`, `rel_accidental_coverage_col_boolean`, `label_Global_range`, `rel_si_with_global_col_boolean`, `label_Global`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `label_Hospitalisation_&_hospitalisation_lump-sum`, `rel_hospitalisation_lump_sum_col_boolean`, `label_Hospitalisation_lump-sum`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `label_Hospitalisation`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `label_Travel_insurance`, `rel_mundo_tsi_col_boolean`, `label_Mundo`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `label_Dental_insurance`, `rel_dentaire_plus_col_boolean`, `label_Dentaire_plus`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `label_Supplemental_health_insurance`, `rel_alterna_col_boolean`, `label_Alterna`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `label_Special_care`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `label_supplemental_health_insurance_s`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `label_Legal_protection`, `rel_legis_col_boolean`, `label_Legis`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `label_Legis_sana`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `label_Daily_allowance`, `rel_daily_allowance_col_boolean`, `label_Daily allowance`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `label_Incapacity_for_housework`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `label_Hospitalisation_allowance`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `label_Accident_insurance`, `rel_accident_insurance_col_boolean`, `label_Accident insurance`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `label_Insurance for risks and disputes on the Internet`, `rel_cyberprotect_col_boolean`, `label_CyberProtect`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `label_Lump-sum in the event of disability or death.`, `rel_accident_col_boolean`, `label_Accident`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `label_Illness/Accident`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `label_Accident or sudden illness`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 2, 3, '7', 'Retired', 8, 33, '2025-02-26 21:04:06', '2025-04-27 20:41:33', NULL, '2024-01-01', 6, 2, 10, NULL, '2024-01-01', '1', NULL, '1', NULL, '1', '15', '2', '2024-01-01', '1', NULL, '1', NULL, '1', '3', '2023-01-01', NULL, '1', '2', '2', '2', '2024-02-20', NULL, '1', NULL, '1', '1', '2024-01-03', NULL, '1', NULL, '1', '2', '2024-01-01', NULL, '1', NULL, '1', '2', '2023-01-01', NULL, '1', '1', '2024-02-02', NULL, '1', '1', '1', '2', '2023-01-01', '1', NULL, '1', NULL, '1', '2', '1', '2024-05-01', NULL, '1', '1', '2024-08-02', NULL, '1', NULL, '1', '3', '2', '2', '15', '800', '2022-01-01', NULL, '1', '1', '1', '1', '2024-01-01', NULL, '1', '1', '250', '2024-09-01', NULL, '1', NULL, '1', '2024-08-01', NULL, '1', NULL, '2', '2', '2023-02-01', NULL, '1', NULL, '1', '4', '2024-12-12', NULL, '1', '1', '2', '1', '2024-10-01', NULL, '1', '1', '1', '2024-02-01', 'This is a test description 1', '16');

-- --------------------------------------------------------

--
-- Table structure for table `template_test_11_meta`
--

CREATE TABLE `template_test_11_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `label_LAMal/KVG_basic_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `label_LCA/VVG_supplemental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global_range` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Global` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_&_hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Hospitalisation_lump-sum` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `label_Hospitalisation` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `label_Travel_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Mundo` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `label_Dental_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Dentaire_plus` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `label_Supplemental_health_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Alterna` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `label_Special_care` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `label_supplemental_health_insurance_s` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legal_protection` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Legis` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `label_Legis_sana` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `label_Daily_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Daily allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Incapacity_for_housework` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `label_Hospitalisation_allowance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `label_Accident_insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident insurance` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `label_Insurance for risks and disputes on the Internet` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_CyberProtect` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `label_Lump-sum in the event of disability or death.` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_Illness/Accident` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `label_Accident or sudden illness` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_11_meta`
--

INSERT INTO `template_test_11_meta` (`id`, `meta_title`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_franchise_data_col_franchise_data`, `collection_id`, `created_at`, `updated_at`, `label_LAMal/KVG_basic_insurance`, `date_come_into_effect_req`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `rel_foreign_insurance_country_col_country`, `label_LCA/VVG_supplemental_insurance`, `date_entry_into_force_vvg`, `rel_accidental_coverage_col_boolean`, `label_Global_range`, `rel_si_with_global_col_boolean`, `label_Global`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `label_Hospitalisation_&_hospitalisation_lump-sum`, `rel_hospitalisation_lump_sum_col_boolean`, `label_Hospitalisation_lump-sum`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `label_Hospitalisation`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `label_Travel_insurance`, `rel_mundo_tsi_col_boolean`, `label_Mundo`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `label_Dental_insurance`, `rel_dentaire_plus_col_boolean`, `label_Dentaire_plus`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `label_Supplemental_health_insurance`, `rel_alterna_col_boolean`, `label_Alterna`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `label_Special_care`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `label_supplemental_health_insurance_s`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `label_Legal_protection`, `rel_legis_col_boolean`, `label_Legis`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `label_Legis_sana`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `label_Daily_allowance`, `rel_daily_allowance_col_boolean`, `label_Daily allowance`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `label_Incapacity_for_housework`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `label_Hospitalisation_allowance`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `label_Accident_insurance`, `rel_accident_insurance_col_boolean`, `label_Accident insurance`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `label_Insurance for risks and disputes on the Internet`, `rel_cyberprotect_col_boolean`, `label_CyberProtect`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `label_Lump-sum in the event of disability or death.`, `rel_accident_col_boolean`, `label_Accident`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `label_Illness/Accident`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `label_Accident or sudden illness`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_test_89_meta`
--

CREATE TABLE `template_test_89_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_89_meta`
--

INSERT INTO `template_test_89_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `template_test_template1_meta`
--

CREATE TABLE `template_test_template1_meta` (
  `id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_come_into_effect_req` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_legal_representative_tel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_basic_insurance_kvg_col_insurance_type` bigint UNSIGNED DEFAULT NULL,
  `rel_health_insurance_col_health_insurer` bigint UNSIGNED DEFAULT NULL,
  `date_entry_into_force_vvg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_payment_method_col_payment_method` bigint UNSIGNED DEFAULT NULL,
  `rel_invoicing_col_invoicing` bigint UNSIGNED DEFAULT NULL,
  `rel_franchise_data_col_franchise_data` bigint UNSIGNED DEFAULT NULL,
  `rel_foreign_insurance_country_col_country` bigint UNSIGNED DEFAULT NULL,
  `rel_accidental_coverage_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_occupational_status_req_col_occupational_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_other_occupational_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_si_with_global_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_gsi_col_insurance_model_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_gsi_col_level_coverage_gsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_gsi_col_deductible_coverage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_gsi` date DEFAULT NULL,
  `rel_facilitated_transfer_gsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_hospitalisation_lump_sum_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hlsi_col_insurance_model_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hlsi_col_level_coverage_hlsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hlsi` date DEFAULT NULL,
  `rel_hospitalisation_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hsi_col_insurance_model_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_hsi_col_level_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_hsi_col_deductible_coverage_hsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hsi` date DEFAULT NULL,
  `rel_mundo_tsi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_mundo_col_insurance_model_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_mundo_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_mundo` date DEFAULT NULL,
  `rel_dentaire_plus_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dsi_col_insurance_model_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dsi_col_level_coverage_dsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dsi` date DEFAULT NULL,
  `rel_alterna_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_ahsi_col_insurance_model_hasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_ahsi_col_level_coverage_mtsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_ahsi` date DEFAULT NULL,
  `rel_special_care_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_scsi_col_insurance_model_hssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_scsi` date DEFAULT NULL,
  `rel_supplemental_health_insurance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_shi_col_insurance_model_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_shi_col_level_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_deductible_coverage_shi_col_deductible_coverage_shi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_shi` date DEFAULT NULL,
  `rel_facilitated_transfer_shi_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_legis_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsi_col_insurance_model_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsi_col_level_coverage_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_lsi_col_criterion_lsi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsi` date DEFAULT NULL,
  `rel_legis_sana_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lssi_col_insurance_model_lssi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lssi` date DEFAULT NULL,
  `rel_daily_allowance_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_dasi_col_insurance_model_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_health_insurer_dasi_col_health_insurer_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_dasi_col_level_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_dasi_col_accident_coverage_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_dasi_col_waiting_period_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_dasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_incapacity_for_housework_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_isi_col_insurance_model_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_isi_col_level_coverage_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_waiting_period_isi_col_waiting_period_isi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_isi` date DEFAULT NULL,
  `rel_hospitalisation_allowance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_hadsi_col_insurance_model_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_daily_amount_hadsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_hadsi` date DEFAULT NULL,
  `rel_accident_insurance_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_asi_col_insurance_model_asi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_asi` date DEFAULT NULL,
  `rel_cyberprotect_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_cpsi_col_insurance_model_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_criterion_cpsi_col_criterion_cpsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_cpsi` date DEFAULT NULL,
  `rel_accident_col_boolean` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lasi_col_insurance_model_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lasi_col_level_coverage_lasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lasi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_IllnessAccident_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_liasi_col_insurance_model_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_liasi_col_level_coverage_liasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_accident_coverage_liasi_col_accident_coverage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_liasi` date DEFAULT NULL,
  `rel_Accident_or_sudden_illness_col_boolean` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_insurance_model_lsisi_col_insurance_model_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_level_coverage_lsisi_col_level_coverage_lsisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_entry_into_force_lsisi` date DEFAULT NULL,
  `textarea_template_description` longtext COLLATE utf8mb4_unicode_ci,
  `rel_company_col_insurance_companies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `template_test_template1_meta`
--

INSERT INTO `template_test_template1_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `date_come_into_effect_req`, `text_legal_representative_tel`, `rel_basic_insurance_kvg_col_insurance_type`, `rel_health_insurance_col_health_insurer`, `date_entry_into_force_vvg`, `rel_payment_method_col_payment_method`, `rel_invoicing_col_invoicing`, `rel_franchise_data_col_franchise_data`, `rel_foreign_insurance_country_col_country`, `rel_accidental_coverage_col_boolean`, `rel_occupational_status_req_col_occupational_status`, `text_other_occupational_data`, `rel_si_with_global_col_boolean`, `rel_insurance_model_gsi_col_insurance_model_gsi`, `rel_level_coverage_gsi_col_level_coverage_gsi`, `rel_deductible_coverage_gsi_col_deductible_coverage`, `date_entry_into_force_gsi`, `rel_facilitated_transfer_gsi_col_boolean`, `rel_hospitalisation_lump_sum_col_boolean`, `rel_insurance_model_hlsi_col_insurance_model_hlsi`, `rel_level_coverage_hlsi_col_level_coverage_hlsi`, `date_entry_into_force_hlsi`, `rel_hospitalisation_col_boolean`, `rel_insurance_model_hsi_col_insurance_model_hsi`, `rel_level_coverage_hsi_col_level_coverage_hsi`, `rel_deductible_coverage_hsi_col_deductible_coverage_hsi`, `date_entry_into_force_hsi`, `rel_mundo_tsi_col_boolean`, `rel_insurance_model_mundo_col_insurance_model_mtsi`, `rel_level_coverage_mundo_col_level_coverage_mtsi`, `date_entry_into_force_mundo`, `rel_dentaire_plus_col_boolean`, `rel_insurance_model_dsi_col_insurance_model_dsi`, `rel_level_coverage_dsi_col_level_coverage_dsi`, `date_entry_into_force_dsi`, `rel_alterna_col_boolean`, `rel_insurance_model_ahsi_col_insurance_model_hasi`, `rel_level_coverage_ahsi_col_level_coverage_mtsi`, `date_entry_into_force_ahsi`, `rel_special_care_col_boolean`, `rel_insurance_model_scsi_col_insurance_model_hssi`, `date_entry_into_force_scsi`, `rel_supplemental_health_insurance_col_boolean`, `rel_insurance_model_shi_col_insurance_model_shi`, `rel_level_coverage_shi_col_level_coverage_shi`, `rel_deductible_coverage_shi_col_deductible_coverage_shi`, `date_entry_into_force_shi`, `rel_facilitated_transfer_shi_col_boolean`, `rel_legis_col_boolean`, `rel_insurance_model_lsi_col_insurance_model_lsi`, `rel_level_coverage_lsi_col_level_coverage_lsi`, `rel_criterion_lsi_col_criterion_lsi`, `date_entry_into_force_lsi`, `rel_legis_sana_col_boolean`, `rel_insurance_model_lssi_col_insurance_model_lssi`, `date_entry_into_force_lssi`, `rel_daily_allowance_col_boolean`, `rel_insurance_model_dasi_col_insurance_model_dasi`, `rel_health_insurer_dasi_col_health_insurer_dasi`, `rel_level_coverage_dasi_col_level_coverage_dasi`, `rel_accident_coverage_dasi_col_accident_coverage_dasi`, `rel_waiting_period_dasi_col_waiting_period_dasi`, `text_daily_amount_dasi`, `date_entry_into_force_dasi`, `rel_incapacity_for_housework_col_boolean`, `rel_insurance_model_isi_col_insurance_model_isi`, `rel_level_coverage_isi_col_level_coverage_isi`, `rel_waiting_period_isi_col_waiting_period_isi`, `date_entry_into_force_isi`, `rel_hospitalisation_allowance_col_boolean`, `rel_insurance_model_hadsi_col_insurance_model_hadsi`, `text_daily_amount_hadsi`, `date_entry_into_force_hadsi`, `rel_accident_insurance_col_boolean`, `rel_insurance_model_asi_col_insurance_model_asi`, `date_entry_into_force_asi`, `rel_cyberprotect_col_boolean`, `rel_insurance_model_cpsi_col_insurance_model_cpsi`, `rel_criterion_cpsi_col_criterion_cpsi`, `date_entry_into_force_cpsi`, `rel_accident_col_boolean`, `rel_insurance_model_lasi_col_insurance_model_lasi`, `rel_level_coverage_lasi_col_level_coverage_lasi`, `date_entry_into_force_lasi`, `rel_IllnessAccident_col_boolean`, `rel_insurance_model_liasi_col_insurance_model_liasi`, `rel_level_coverage_liasi_col_level_coverage_liasi`, `rel_accident_coverage_liasi_col_accident_coverage`, `date_entry_into_force_liasi`, `rel_Accident_or_sudden_illness_col_boolean`, `rel_insurance_model_lsisi_col_insurance_model_lsisi`, `rel_level_coverage_lsisi_col_level_coverage_lsisi`, `date_entry_into_force_lsisi`, `textarea_template_description`, `rel_company_col_insurance_companies`) VALUES
(1, 'Group Mutual Template test change', 33, '2025-02-26 21:04:06', '2025-04-29 07:19:20', '2024-01-01', '1231212321', 6, 2, '2024-01-01', 2, 3, 7, 10, '1', '7', 'Retired', '1', '1', '15', '2', '2024-01-01', '1', '1', '1', '3', '2023-01-01', '1', '2', '2', '2', '2024-02-20', '1', '1', '1', '2024-01-03', '1', '1', '2', '2024-01-01', '1', '1', '2', '2023-01-01', '1', '1', '2024-02-02', '1', '1', '1', '2', '2023-01-01', '1', '1', '1', '2', '1', '2024-05-01', '1', '1', '2024-08-02', '1', '1', '3', '2', '2', '15', '800', '2022-01-01', '1', '1', '1', '1', '2024-01-01', '1', '1', '250', '2024-09-01', '1', '1', '2024-08-01', '1', '2', '2', '2023-02-01', '1', '1', '4', '2024-12-12', '1', '1', '2', '1', '2024-10-01', '1', '1', '1', '2024-02-01', 'This is a test description 1', '21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Waqar Ahmed', 'waqarahmedshakir15@gmail.com', NULL, '$2y$12$iNCHsN6eXzHtuLncjakyke7AQyg5xkMZCCCl08nafDducLWhwhHJi', NULL, '2025-01-07 02:19:32', '2025-01-30 14:55:48'),
(17, 'Waqar updated 1 Shakir updated 1', 'test@test.com', NULL, '$2y$12$o6EiduScyRDZqnCZqxCW7.YuMzu4uN9S80cqhOM0f4OlloDwXbSre', NULL, '2025-01-21 08:28:28', '2025-04-18 22:37:44'),
(18, 'Waqar Shakir2', 'waqarahmedshakir16@gmail.com', NULL, '$2y$12$mv2EjOys4lKI7i5puunv7usTbsz6EebCZqnUrh0/uO1WbX8BSVP3G', NULL, '2025-01-27 08:18:01', '2025-01-27 09:50:03'),
(19, 'Waqar Shakir', 'test@test.coma', NULL, '$2y$12$0u7AoH3tqSYQFxdL6KW9aOdMs9rgBq783MSs6xL2Wqd6WNP/N8wY2', NULL, '2025-01-27 09:36:34', '2025-01-27 09:36:34'),
(20, 'API User', 'apiuser@trustcore.com', NULL, '$2y$12$6N11ala96cMdmwp1WXj42eNsUkz6OBLwqT4EeIeMFlrcTFFLSrF.y', NULL, '2025-02-19 12:23:34', '2025-02-19 12:23:34'),
(22, 'test test', 'employee@trustcore.com', NULL, '$2y$12$V8mwqiIWnNsDq297HC0J.OWTVCa26ielwMuft.rXwLA.jkC4iRpva', NULL, '2025-03-14 13:05:36', '2025-03-14 13:05:36'),
(24, 'Raphael Sparandeo Ferrer', 'raphael_ferrer@hotmail.com', NULL, '$2y$12$lGj8DK31vUskU72jXk01D.Nk3reAnvgl7m0ZsxwVutK3JEHYU5O/q', NULL, '2025-04-08 11:04:24', '2025-04-08 11:04:24'),
(27, 'Eduardo Morais', 'eduardo_morais@hotmail.com', NULL, '$2y$12$K3uh48.82ADRsF0RrP.44.kSEB7O8ZRbUlIAfaqqVgvKCBH8wIMz2', NULL, '2025-04-15 21:11:45', '2025-04-15 21:11:45'),
(28, 'eduardo customer', 'eduardo_customer@test.com', NULL, '$2y$12$f5/g8gEfb3wupBeu8GkhUukl23CQZiF27fJ6lg851hfbgEDZc9Ymm', NULL, '2025-04-15 21:56:45', '2025-04-15 21:56:45'),
(29, 'test customer', 'test_customer@test.com', NULL, '$2y$12$ZJuXo5dHbCiO3tAJF83X7.22UqXxXu5M394nz0BOOm6NvuoC6dXEG', NULL, '2025-04-15 21:59:45', '2025-04-15 21:59:45'),
(30, 'Raphael Ferrer', 'raphael.ferrer@neotralo.ch', NULL, '$2y$12$ayUPsFTcRbEbblAvPHqVvejNxs22qlZdfi9ZO2NYh8WlYiCLuWLwO', NULL, '2025-04-16 07:03:02', '2025-04-25 07:31:40'),
(31, 'iuh iuh', 'sdfds@sdf.sdfi', NULL, '$2y$12$vEKLZCxOyqmTXuVzfoS2D.YdEYI6oh9QhUJcdB1gxDL4UR/MNcQSC', NULL, '2025-04-16 07:14:03', '2025-04-16 07:14:03'),
(32, 'emp 2', 'employee2@gmail.com', NULL, '$2y$12$PCq/eKEAwzb7DDnGQyoODO5w5VrEEy3tfC/1POMVHmLLMno8T8BOO', NULL, '2025-04-18 23:08:24', '2025-04-18 23:08:24'),
(33, 'customer 1', 'customer1@emp2.com', NULL, '$2y$12$hUs/J5azGwYJH6gzKQozXOG4eEm/bnQa3yUA7qd8BaG7k/qb6rG2C', NULL, '2025-04-18 23:10:02', '2025-04-18 23:10:02'),
(34, 'customer 2', 'customer2@gmail.com', NULL, '$2y$12$eRP/GzeSxhh.d871uuHJ8.vUaAsI6Q8qKDXgpWD1fQ5LdU6lKiL.K', NULL, '2025-04-18 23:12:29', '2025-04-18 23:12:29'),
(36, 'test employee', 'test@test1.com', NULL, '$2y$12$./RMZ2pgKHJkOMAWKO7nhOEVGBnjwJLlJqWf4pStW3XEnTZ7JaxeS', NULL, '2025-04-18 23:43:49', '2025-06-04 12:56:08'),
(37, 'test customer', 'test@customer.com', NULL, '$2y$12$GhMRbVgvBcL.WKIhCYSFvOq31P5tSilz8nBQL9c989BrTBPLCcihK', NULL, '2025-04-18 23:46:01', '2025-04-18 23:46:01'),
(38, 'Eduardo De Morais', 'Eduardo_test7373@hotmail.com', NULL, '$2y$12$KqbeYk/rTgJ.TgFBUwOcaO7g3J6GvAJCOgnxYnTMZ4ue99X3/mjwq', NULL, '2025-04-19 05:38:08', '2025-05-05 15:34:46'),
(40, 'Aparecida Viana de Morais', 'e.demorais@trustcore.ch', NULL, '$2y$12$.2Kx04hqTSFukOyQ3TiHpehJ.L/2AqXed1d1tmYlzr210F/6XEIWe', NULL, '2025-05-06 12:31:00', '2025-05-06 13:31:58'),
(41, 'Sérgio Ricardo Da Conceição', 'e.demorais@cfinanz.ch', NULL, '$2y$12$8BYz8aVRyrcH93lxLeJJKuSAgxdzed7YpVxGHR3WWQRhIP49qrd1i', NULL, '2025-05-26 12:45:56', '2025-05-26 12:45:56'),
(42, 'Dev Test', 'dev@test.com', NULL, '$2y$12$HQn5fXtfb3SKTygGcDH./ee34xL/kEkMzedoM1k.L7t4M3uf38wXK', NULL, '2025-05-27 13:08:17', '2025-05-27 13:08:17'),
(43, 'Dev Test', 'devtest@gmail.com', NULL, '$2y$12$27y4alI7w.qrKxcLpQ8QPeofn5jB6y.4/VL/8ZlIZJxOfRUSCGGWC', NULL, '2025-05-27 14:38:12', '2025-05-27 14:38:12'),
(46, 'Daniel Colado', 'info@info.ch', NULL, '$2y$12$vQ9V/DxAauyikGtGYo.5oemwNNWGGov4aUgvmEpCSuGsuH1erS/kK', NULL, '2025-06-05 07:48:51', '2025-06-05 07:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `text_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_city_req` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_birthdate` date DEFAULT NULL,
  `rel_gender_req_col_gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_employee_assigned_col_users` bigint UNSIGNED DEFAULT NULL,
  `text_home_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_work_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_mobile_req` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_doctors_first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_doctors_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_doctors_zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_current_insurer_req_col_current_insurer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_current_vvg_insurer_req_col_current_insurer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_nationality_col_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rel_permit_col_permit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `user_id`, `created_at`, `updated_at`, `last_login`, `settings`, `text_first_name`, `text_last_name`, `text_address`, `text_postcode`, `text_city_req`, `date_birthdate`, `rel_gender_req_col_gender`, `rel_employee_assigned_col_users`, `text_home_phone`, `text_work_phone`, `text_mobile_req`, `text_doctors_first_name`, `text_doctors_name`, `text_doctors_zip_code`, `rel_current_insurer_req_col_current_insurer`, `rel_current_vvg_insurer_req_col_current_insurer`, `rel_nationality_col_country`, `rel_permit_col_permit`) VALUES
(1, 8, '2025-01-07 02:19:32', '2025-04-20 20:06:28', '2025-01-20 07:36:57', NULL, 'Waqar', 'Ahmed', 'test address', '8001', 'Zürich', '1997-01-31', '1', 8, '3034569872', '3034569873', '3034569874', 'mark', 'a', '8001', '1', '2', '10', '13'),
(7, 17, '2025-01-21 08:28:28', '2026-10-22 11:10:22', '2026-10-22 11:10:22', '\"{\\\"theme_setting\\\":\\\"default\\\",\\\"language_setting\\\":\\\"en\\\"}\"', 'Waqar updated', 'Shakir updated 1', 'House E304 street 2 nadirabad bedian road lahore cantt', '54000', NULL, '2025-01-27', NULL, 17, NULL, NULL, '3244170644', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 18, '2025-01-27 08:18:01', '2025-03-10 18:24:55', NULL, NULL, 'Waqar', 'Shakir2', 'House E304 street 2 nadirabad bedian road lahore cantt', '8001', NULL, '1997-01-28', NULL, 8, '3034569872', '3034569873', '3034569874', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 19, '2025-01-27 09:36:34', '2025-01-30 14:56:39', NULL, NULL, 'Waqar', 'Shakir', 'House E304 street 2 nadirabad bedian road lahore cantt', '54000', NULL, '2024-12-31', NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 20, '2025-02-19 12:23:34', '2025-06-10 09:42:54', '2025-06-10 09:42:54', NULL, 'API', 'User', 'colorado', '80225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 22, '2025-03-14 13:05:36', '2025-05-26 12:09:43', '2025-05-26 12:09:43', '\"{\\\"theme_setting\\\":\\\"default\\\"}\"', 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 24, '2025-04-08 11:04:24', '2025-04-15 13:11:19', NULL, NULL, 'Raphael', 'Sparandeo Ferrer', 'Ursprungstrasse 1d', '8044', 'Gockhausen', '1980-01-05', '1', NULL, '0789051265', '0789051265', '0789051265', 'Beate', 'Tilch', '8038', '2', '1', '8', NULL),
(15, 27, '2025-04-15 21:11:45', '2025-06-11 07:02:59', '2025-06-11 07:02:26', '\"{\\\"theme_setting\\\":\\\"corporate\\\",\\\"language_setting\\\":\\\"de\\\"}\"', 'Eduardo', 'Morais', 'Ursprungstrasse 1d', '80001', 'test', '2025-04-16', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 28, '2025-04-15 21:56:46', '2025-04-15 21:56:46', NULL, NULL, 'eduardo', 'customer', NULL, NULL, NULL, '2025-04-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 29, '2025-04-15 21:59:45', '2025-04-15 21:59:45', NULL, NULL, 'test', 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 30, '2025-04-16 07:03:02', '2025-05-06 18:34:16', NULL, NULL, 'Raphael', 'Ferrer', 'Ursprungstrasse 1d', '8044', 'Gockhausen', '1990-02-01', '2', 27, '0789051212', '0789051212', '0789051212', 'Beate', 'Tilch', '8038', '5', '16', '8', '12'),
(19, 31, '2025-04-16 07:14:03', '2025-04-16 07:14:03', NULL, NULL, 'iuh', 'iuh', 'iuh 2', '8002', 'asdasd', '1982-01-01', '2', 27, '0789051265', '0789051265', '0789051265', 'sdf', '32323', '3232', '4', '4', '11', NULL),
(20, 32, '2025-04-18 23:08:24', '2025-04-18 23:11:28', '2025-04-18 23:08:47', NULL, 'emp upadted', '2', 'House E304 street 2', '54000', 'LAHORE', '2025-04-09', NULL, NULL, '3244170644', '3244170644', '3244170644', 'test', 'teast', NULL, NULL, NULL, NULL, NULL),
(21, 33, '2025-04-18 23:10:02', '2025-04-18 23:10:16', NULL, NULL, 'customer', '1', 'House E304', '54000', 'LAHORE', '2025-03-31', '1', 32, '3244170644', '3244170644', '3244170644', 'test', 'teast', '123123', '2', '1', '8', '2'),
(22, 34, '2025-04-18 23:12:29', '2025-04-18 23:47:18', NULL, NULL, 'customer', '2', 'House', '54000', 'LAHORE', '2025-04-08', '1', 36, '3244170644', '3244170644', '1234567899', '12312312rfqef', 'teast', 'dfsdfsdfsd', '3', '5', '8', '1'),
(24, 36, '2025-04-18 23:43:49', '2025-06-06 15:15:17', '2025-06-06 15:14:59', '\"{\\\"language_setting\\\":\\\"en\\\"}\"', 'test', 'employee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9876543211', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 37, '2025-04-18 23:46:01', '2025-04-19 00:36:34', NULL, NULL, 'test', 'customer', '8001', '8004', 'zurish', '1997-01-01', '1', 36, '9876543211', '9876543210', '0987654321', 'mark', 'a', '8004', '2', '3', '8', '13'),
(26, 38, '2025-04-19 05:38:08', '2025-05-05 15:32:00', NULL, NULL, 'Eduardo', 'De Morais', 'Albisstrasse 37', '8038', 'Zürich', '1990-01-01', '1', 27, '0789051266', '0789051266', '0789051266', 'Daniel', 'Zimmermann', '8910', '2', '2', '8', '10'),
(28, 40, '2025-05-06 12:31:00', '2025-05-06 14:29:58', NULL, NULL, 'Aparecida', 'Viana de Morais', 'Im Schatzacker 9', '8600', 'Dübendorf', '1968-06-20', '2', 27, '0763419409', '0763419409', '0763419409', 'Mario', 'Silva', '8600', '48', '48', '39', '2'),
(29, 41, '2025-05-26 12:45:56', '2025-05-26 12:45:56', NULL, NULL, 'Sérgio', 'Ricardo Da Conceição', 'Langstrasse 114', '8005', 'Zürich', '1989-09-29', '1', 27, '0794181632', '0794181632', '0794181632', 'Hans', 'Müller', '8004', '19', '19', '39', '2'),
(30, 42, '2025-05-27 13:08:17', '2025-05-27 13:08:17', NULL, NULL, 'Dev', 'Test', 'Westminster, CO 80031', '80225', 'Danver', '2025-05-27', '1', NULL, NULL, NULL, '0900123456', NULL, NULL, NULL, '49', '52', '92', '13'),
(31, 43, '2025-05-27 14:38:12', '2025-05-27 14:38:12', NULL, NULL, 'Dev', 'Test', 'Westminster, CO 80031', '80225', 'Danver', '2025-05-27', '1', NULL, NULL, NULL, '0900223456', NULL, NULL, NULL, '13', '14', '92', '13'),
(34, 46, '2025-06-05 07:48:51', '2025-06-05 07:48:51', NULL, NULL, 'Daniel', 'Colado', 'Hauptstrasse 87', '8004', 'Zürich', '1995-08-20', '1', 27, NULL, NULL, '0784352343', NULL, NULL, NULL, '6', '4', '8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(9, 8, 2, NULL, NULL),
(10, 18, 1, NULL, NULL),
(11, 19, 1, NULL, NULL),
(12, 20, 1, NULL, NULL),
(15, 22, 1, NULL, NULL),
(17, 24, 1, NULL, NULL),
(20, 27, 2, NULL, NULL),
(22, 17, 1, NULL, NULL),
(23, 33, 3, NULL, NULL),
(24, 32, 3, NULL, NULL),
(28, 34, 3, NULL, NULL),
(29, 36, 2, NULL, NULL),
(32, 37, 3, NULL, NULL),
(33, 38, 3, NULL, NULL),
(34, 30, 3, NULL, NULL),
(36, 40, 3, NULL, NULL),
(37, 41, 3, NULL, NULL),
(38, 42, 3, NULL, NULL),
(39, 43, 3, NULL, NULL),
(42, 46, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `waiting_period_dasi_meta`
--

CREATE TABLE `waiting_period_dasi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `waiting_period_dasi_meta`
--

INSERT INTO `waiting_period_dasi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`, `text_group_name`) VALUES
(1, '0 day', 77, '2025-03-18 19:15:54', NULL, 'Daily allowance'),
(2, '1 day', 77, '2025-03-18 19:16:10', NULL, 'Daily allowance'),
(3, '2 days', 77, '2025-03-18 19:16:20', NULL, 'Daily allowance'),
(4, '3 days', 77, '2025-03-18 19:16:28', NULL, 'Daily allowance'),
(5, '4 days', 77, '2025-03-18 19:16:41', NULL, 'Daily allowance'),
(6, '5 days', 77, '2025-03-18 19:16:48', NULL, 'Daily allowance'),
(7, '6 days', 77, '2025-03-18 19:16:57', NULL, 'Daily allowance'),
(8, '7 days', 77, '2025-03-18 19:17:03', NULL, 'Daily allowance'),
(9, '10 days', 77, '2025-03-18 19:17:15', NULL, 'Daily allowance'),
(10, '14 days', 77, '2025-03-18 19:17:27', NULL, 'Daily allowance'),
(11, '21 days', 77, '2025-03-18 19:17:38', NULL, 'Daily allowance'),
(12, '30 days', 77, '2025-03-18 19:17:48', NULL, 'Daily allowance'),
(13, '45 days', 77, '2025-03-18 19:17:57', NULL, 'Daily allowance'),
(14, '60 days', 77, '2025-03-18 19:18:06', NULL, 'Daily allowance'),
(15, '90 days', 77, '2025-03-18 19:18:15', NULL, 'Daily allowance'),
(16, '120 days', 77, '2025-03-18 19:18:31', NULL, 'Daily allowance'),
(17, '150 days', 77, '2025-03-18 19:18:41', NULL, 'Daily allowance'),
(18, '180 days', 77, '2025-03-18 19:18:49', NULL, 'Daily allowance'),
(19, '240 days', 77, '2025-03-18 19:18:59', NULL, 'Daily allowance'),
(20, '270 days', 77, '2025-03-18 19:19:09', NULL, 'Daily allowance'),
(21, '360 days', 77, '2025-03-18 19:19:21', NULL, 'Daily allowance'),
(22, '450 days', 77, '2025-03-18 19:19:29', NULL, 'Daily allowance'),
(23, '540 days', 77, '2025-03-18 19:19:40', NULL, 'Daily allowance'),
(24, '720 days', 77, '2025-03-18 19:19:54', NULL, 'Daily allowance'),
(25, '10 days', 77, '2025-03-18 19:20:29', NULL, 'Daily allowance LCA'),
(26, '14 days', 77, '2025-03-18 19:20:53', NULL, 'Daily allowance LCA'),
(27, '21 days', 77, '2025-03-18 19:21:05', NULL, 'Daily allowance LCA'),
(28, '30 days', 77, '2025-03-18 19:21:17', NULL, 'Daily allowance LCA'),
(29, '60 days', 77, '2025-03-18 19:21:29', NULL, 'Daily allowance LCA'),
(30, '90 days', 77, '2025-03-18 19:21:35', NULL, 'Daily allowance LCA'),
(31, '120 days', 77, '2025-03-18 19:21:49', NULL, 'Daily allowance LCA'),
(32, '150 days', 77, '2025-03-18 19:21:56', NULL, 'Daily allowance LCA'),
(33, '180 days', 77, '2025-03-18 19:22:04', NULL, 'Daily allowance LCA');

-- --------------------------------------------------------

--
-- Table structure for table `waiting_period_isi_meta`
--

CREATE TABLE `waiting_period_isi_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `waiting_period_isi_meta`
--

INSERT INTO `waiting_period_isi_meta` (`id`, `meta_title`, `collection_id`, `created_at`, `updated_at`) VALUES
(1, '15 days / Allowance duration : 365 days max.', 80, '2025-03-18 19:30:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident_coverage_dasi_meta`
--
ALTER TABLE `accident_coverage_dasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accident_coverage_dasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `accident_coverage_meta`
--
ALTER TABLE `accident_coverage_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accident_coverage_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `assets_meta`
--
ALTER TABLE `assets_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `boolean_meta`
--
ALTER TABLE `boolean_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `boolean_meta_collection_id_foreign` (`collection_id`);

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
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collections_name_unique` (`name`),
  ADD UNIQUE KEY `collections_handle_unique` (`handle`);

--
-- Indexes for table `communication_meta`
--
ALTER TABLE `communication_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communication_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `contracts_meta`
--
ALTER TABLE `contracts_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contracts_meta_collection_id_foreign` (`collection_id`),
  ADD KEY `contracts_meta_rel_created_by_col_users_foreign` (`rel_created_by_col_users`),
  ADD KEY `contracts_meta_rel_signed_by_col_users_foreign` (`rel_signed_by_col_users`),
  ADD KEY `contracts_meta_rel_insurance_type_col_insurance_type_foreign` (`rel_insurance_type_col_insurance_type`);

--
-- Indexes for table `country_meta`
--
ALTER TABLE `country_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `coverage_level_meta`
--
ALTER TABLE `coverage_level_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coverage_level_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `criterion_cpsi_meta`
--
ALTER TABLE `criterion_cpsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criterion_cpsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `criterion_lsi_meta`
--
ALTER TABLE `criterion_lsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criterion_lsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `current_insurer_meta`
--
ALTER TABLE `current_insurer_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `current_insurer_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `deductible_coverage_hsi_meta`
--
ALTER TABLE `deductible_coverage_hsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deductible_coverage_hsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `deductible_coverage_meta`
--
ALTER TABLE `deductible_coverage_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deductible_coverage_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `deductible_coverage_shi_meta`
--
ALTER TABLE `deductible_coverage_shi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deductible_coverage_shi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `deductible_meta`
--
ALTER TABLE `deductible_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deductible_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `franchise_data_meta`
--
ALTER TABLE `franchise_data_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `franchise_data_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `gender_meta`
--
ALTER TABLE `gender_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `health_insurance_meta`
--
ALTER TABLE `health_insurance_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `health_insurance_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `health_insurer_dasi_meta`
--
ALTER TABLE `health_insurer_dasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `health_insurer_dasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `health_insurer_meta`
--
ALTER TABLE `health_insurer_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `health_insurer_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_companies_meta`
--
ALTER TABLE `insurance_companies_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_companies_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_asi_meta`
--
ALTER TABLE `insurance_model_asi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_asi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_cpsi_meta`
--
ALTER TABLE `insurance_model_cpsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_cpsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_dasi_meta`
--
ALTER TABLE `insurance_model_dasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_dasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_dsi_meta`
--
ALTER TABLE `insurance_model_dsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_dsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_gsi_meta`
--
ALTER TABLE `insurance_model_gsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_gsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_hadsi_meta`
--
ALTER TABLE `insurance_model_hadsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_hadsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_hasi_meta`
--
ALTER TABLE `insurance_model_hasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_hasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_hlsi_meta`
--
ALTER TABLE `insurance_model_hlsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_hlsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_hsi_meta`
--
ALTER TABLE `insurance_model_hsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_hsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_hssi_meta`
--
ALTER TABLE `insurance_model_hssi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_hssi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_isi_meta`
--
ALTER TABLE `insurance_model_isi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_isi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_lasi_meta`
--
ALTER TABLE `insurance_model_lasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_lasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_liasi_meta`
--
ALTER TABLE `insurance_model_liasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_liasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_lsisi_meta`
--
ALTER TABLE `insurance_model_lsisi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_lsisi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_lsi_meta`
--
ALTER TABLE `insurance_model_lsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_lsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_lssi_meta`
--
ALTER TABLE `insurance_model_lssi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_lssi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_mtsi_meta`
--
ALTER TABLE `insurance_model_mtsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_mtsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_model_shi_meta`
--
ALTER TABLE `insurance_model_shi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_model_shi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `insurance_type_meta`
--
ALTER TABLE `insurance_type_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insurance_type_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `invoicing_meta`
--
ALTER TABLE `invoicing_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoicing_meta_collection_id_foreign` (`collection_id`);

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
-- Indexes for table `land_bank_meta`
--
ALTER TABLE `land_bank_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `land_bank_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_dasi_meta`
--
ALTER TABLE `level_coverage_dasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_dasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_dsi_meta`
--
ALTER TABLE `level_coverage_dsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_dsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_gsi_meta`
--
ALTER TABLE `level_coverage_gsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_gsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_hlsi_meta`
--
ALTER TABLE `level_coverage_hlsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_hlsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_hsi_meta`
--
ALTER TABLE `level_coverage_hsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_hsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_isi_meta`
--
ALTER TABLE `level_coverage_isi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_isi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_lasi_meta`
--
ALTER TABLE `level_coverage_lasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_lasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_liasi_meta`
--
ALTER TABLE `level_coverage_liasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_liasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_lsisi_meta`
--
ALTER TABLE `level_coverage_lsisi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_lsisi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_lsi_meta`
--
ALTER TABLE `level_coverage_lsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_lsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_mtsi_meta`
--
ALTER TABLE `level_coverage_mtsi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_mtsi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `level_coverage_shi_meta`
--
ALTER TABLE `level_coverage_shi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_coverage_shi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `niveau_package_meta`
--
ALTER TABLE `niveau_package_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `niveau_package_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `occupational_status_meta`
--
ALTER TABLE `occupational_status_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `occupational_status_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `offers_meta`
--
ALTER TABLE `offers_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `packages_lca_meta`
--
ALTER TABLE `packages_lca_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packages_lca_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_method_meta`
--
ALTER TABLE `payment_method_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `permit_meta`
--
ALTER TABLE `permit_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permit_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `relationship_meta`
--
ALTER TABLE `relationship_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relationship_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `supplementary_insurance_vvg_meta`
--
ALTER TABLE `supplementary_insurance_vvg_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplementary_insurance_vvg_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `templates_meta`
--
ALTER TABLE `templates_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `template_groupe_mutual_meta`
--
ALTER TABLE `template_groupe_mutual_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_groupe_mutual_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_metas_user_id_foreign` (`user_id`),
  ADD KEY `user_metas_rel_employee_assigned_col_users_foreign` (`rel_employee_assigned_col_users`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `waiting_period_dasi_meta`
--
ALTER TABLE `waiting_period_dasi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waiting_period_dasi_meta_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `waiting_period_isi_meta`
--
ALTER TABLE `waiting_period_isi_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `waiting_period_isi_meta_collection_id_foreign` (`collection_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident_coverage_dasi_meta`
--
ALTER TABLE `accident_coverage_dasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `accident_coverage_meta`
--
ALTER TABLE `accident_coverage_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assets_meta`
--
ALTER TABLE `assets_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boolean_meta`
--
ALTER TABLE `boolean_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `communication_meta`
--
ALTER TABLE `communication_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts_meta`
--
ALTER TABLE `contracts_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country_meta`
--
ALTER TABLE `country_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `coverage_level_meta`
--
ALTER TABLE `coverage_level_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `criterion_cpsi_meta`
--
ALTER TABLE `criterion_cpsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `criterion_lsi_meta`
--
ALTER TABLE `criterion_lsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `current_insurer_meta`
--
ALTER TABLE `current_insurer_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `deductible_coverage_hsi_meta`
--
ALTER TABLE `deductible_coverage_hsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deductible_coverage_meta`
--
ALTER TABLE `deductible_coverage_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deductible_coverage_shi_meta`
--
ALTER TABLE `deductible_coverage_shi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deductible_meta`
--
ALTER TABLE `deductible_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franchise_data_meta`
--
ALTER TABLE `franchise_data_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `gender_meta`
--
ALTER TABLE `gender_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `health_insurance_meta`
--
ALTER TABLE `health_insurance_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `health_insurer_dasi_meta`
--
ALTER TABLE `health_insurer_dasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `health_insurer_meta`
--
ALTER TABLE `health_insurer_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insurance_companies_meta`
--
ALTER TABLE `insurance_companies_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `insurance_model_asi_meta`
--
ALTER TABLE `insurance_model_asi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_cpsi_meta`
--
ALTER TABLE `insurance_model_cpsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insurance_model_dasi_meta`
--
ALTER TABLE `insurance_model_dasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insurance_model_dsi_meta`
--
ALTER TABLE `insurance_model_dsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_gsi_meta`
--
ALTER TABLE `insurance_model_gsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `insurance_model_hadsi_meta`
--
ALTER TABLE `insurance_model_hadsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_hasi_meta`
--
ALTER TABLE `insurance_model_hasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_hlsi_meta`
--
ALTER TABLE `insurance_model_hlsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_hsi_meta`
--
ALTER TABLE `insurance_model_hsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insurance_model_hssi_meta`
--
ALTER TABLE `insurance_model_hssi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_isi_meta`
--
ALTER TABLE `insurance_model_isi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_lasi_meta`
--
ALTER TABLE `insurance_model_lasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `insurance_model_liasi_meta`
--
ALTER TABLE `insurance_model_liasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_lsisi_meta`
--
ALTER TABLE `insurance_model_lsisi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_lsi_meta`
--
ALTER TABLE `insurance_model_lsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_lssi_meta`
--
ALTER TABLE `insurance_model_lssi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_mtsi_meta`
--
ALTER TABLE `insurance_model_mtsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `insurance_model_shi_meta`
--
ALTER TABLE `insurance_model_shi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `insurance_type_meta`
--
ALTER TABLE `insurance_type_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoicing_meta`
--
ALTER TABLE `invoicing_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `land_bank_meta`
--
ALTER TABLE `land_bank_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `level_coverage_dasi_meta`
--
ALTER TABLE `level_coverage_dasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `level_coverage_dsi_meta`
--
ALTER TABLE `level_coverage_dsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level_coverage_gsi_meta`
--
ALTER TABLE `level_coverage_gsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `level_coverage_hlsi_meta`
--
ALTER TABLE `level_coverage_hlsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `level_coverage_hsi_meta`
--
ALTER TABLE `level_coverage_hsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `level_coverage_isi_meta`
--
ALTER TABLE `level_coverage_isi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `level_coverage_lasi_meta`
--
ALTER TABLE `level_coverage_lasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `level_coverage_liasi_meta`
--
ALTER TABLE `level_coverage_liasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `level_coverage_lsisi_meta`
--
ALTER TABLE `level_coverage_lsisi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `level_coverage_lsi_meta`
--
ALTER TABLE `level_coverage_lsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `level_coverage_mtsi_meta`
--
ALTER TABLE `level_coverage_mtsi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `level_coverage_shi_meta`
--
ALTER TABLE `level_coverage_shi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `niveau_package_meta`
--
ALTER TABLE `niveau_package_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `occupational_status_meta`
--
ALTER TABLE `occupational_status_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `offers_meta`
--
ALTER TABLE `offers_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `packages_lca_meta`
--
ALTER TABLE `packages_lca_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_method_meta`
--
ALTER TABLE `payment_method_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permit_meta`
--
ALTER TABLE `permit_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=814;

--
-- AUTO_INCREMENT for table `relationship_meta`
--
ALTER TABLE `relationship_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supplementary_insurance_vvg_meta`
--
ALTER TABLE `supplementary_insurance_vvg_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `templates_meta`
--
ALTER TABLE `templates_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `template_groupe_mutual_meta`
--
ALTER TABLE `template_groupe_mutual_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `waiting_period_dasi_meta`
--
ALTER TABLE `waiting_period_dasi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `waiting_period_isi_meta`
--
ALTER TABLE `waiting_period_isi_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accident_coverage_dasi_meta`
--
ALTER TABLE `accident_coverage_dasi_meta`
  ADD CONSTRAINT `accident_coverage_dasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `accident_coverage_meta`
--
ALTER TABLE `accident_coverage_meta`
  ADD CONSTRAINT `accident_coverage_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `assets_meta`
--
ALTER TABLE `assets_meta`
  ADD CONSTRAINT `assets_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `boolean_meta`
--
ALTER TABLE `boolean_meta`
  ADD CONSTRAINT `boolean_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `communication_meta`
--
ALTER TABLE `communication_meta`
  ADD CONSTRAINT `communication_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `contracts_meta`
--
ALTER TABLE `contracts_meta`
  ADD CONSTRAINT `contracts_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contracts_meta_rel_created_by_col_users_foreign` FOREIGN KEY (`rel_created_by_col_users`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contracts_meta_rel_insurance_type_col_insurance_type_foreign` FOREIGN KEY (`rel_insurance_type_col_insurance_type`) REFERENCES `insurance_type_meta` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `contracts_meta_rel_signed_by_col_users_foreign` FOREIGN KEY (`rel_signed_by_col_users`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `country_meta`
--
ALTER TABLE `country_meta`
  ADD CONSTRAINT `country_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `coverage_level_meta`
--
ALTER TABLE `coverage_level_meta`
  ADD CONSTRAINT `coverage_level_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `criterion_cpsi_meta`
--
ALTER TABLE `criterion_cpsi_meta`
  ADD CONSTRAINT `criterion_cpsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `criterion_lsi_meta`
--
ALTER TABLE `criterion_lsi_meta`
  ADD CONSTRAINT `criterion_lsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `current_insurer_meta`
--
ALTER TABLE `current_insurer_meta`
  ADD CONSTRAINT `current_insurer_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `deductible_coverage_hsi_meta`
--
ALTER TABLE `deductible_coverage_hsi_meta`
  ADD CONSTRAINT `deductible_coverage_hsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `deductible_coverage_meta`
--
ALTER TABLE `deductible_coverage_meta`
  ADD CONSTRAINT `deductible_coverage_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `deductible_coverage_shi_meta`
--
ALTER TABLE `deductible_coverage_shi_meta`
  ADD CONSTRAINT `deductible_coverage_shi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `deductible_meta`
--
ALTER TABLE `deductible_meta`
  ADD CONSTRAINT `deductible_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `franchise_data_meta`
--
ALTER TABLE `franchise_data_meta`
  ADD CONSTRAINT `franchise_data_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `gender_meta`
--
ALTER TABLE `gender_meta`
  ADD CONSTRAINT `gender_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `health_insurance_meta`
--
ALTER TABLE `health_insurance_meta`
  ADD CONSTRAINT `health_insurance_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `health_insurer_dasi_meta`
--
ALTER TABLE `health_insurer_dasi_meta`
  ADD CONSTRAINT `health_insurer_dasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `health_insurer_meta`
--
ALTER TABLE `health_insurer_meta`
  ADD CONSTRAINT `health_insurer_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_companies_meta`
--
ALTER TABLE `insurance_companies_meta`
  ADD CONSTRAINT `insurance_companies_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_asi_meta`
--
ALTER TABLE `insurance_model_asi_meta`
  ADD CONSTRAINT `insurance_model_asi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_cpsi_meta`
--
ALTER TABLE `insurance_model_cpsi_meta`
  ADD CONSTRAINT `insurance_model_cpsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_dasi_meta`
--
ALTER TABLE `insurance_model_dasi_meta`
  ADD CONSTRAINT `insurance_model_dasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_dsi_meta`
--
ALTER TABLE `insurance_model_dsi_meta`
  ADD CONSTRAINT `insurance_model_dsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_gsi_meta`
--
ALTER TABLE `insurance_model_gsi_meta`
  ADD CONSTRAINT `insurance_model_gsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_hadsi_meta`
--
ALTER TABLE `insurance_model_hadsi_meta`
  ADD CONSTRAINT `insurance_model_hadsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_hasi_meta`
--
ALTER TABLE `insurance_model_hasi_meta`
  ADD CONSTRAINT `insurance_model_hasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_hlsi_meta`
--
ALTER TABLE `insurance_model_hlsi_meta`
  ADD CONSTRAINT `insurance_model_hlsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_hsi_meta`
--
ALTER TABLE `insurance_model_hsi_meta`
  ADD CONSTRAINT `insurance_model_hsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_hssi_meta`
--
ALTER TABLE `insurance_model_hssi_meta`
  ADD CONSTRAINT `insurance_model_hssi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_isi_meta`
--
ALTER TABLE `insurance_model_isi_meta`
  ADD CONSTRAINT `insurance_model_isi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_lasi_meta`
--
ALTER TABLE `insurance_model_lasi_meta`
  ADD CONSTRAINT `insurance_model_lasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_liasi_meta`
--
ALTER TABLE `insurance_model_liasi_meta`
  ADD CONSTRAINT `insurance_model_liasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_lsisi_meta`
--
ALTER TABLE `insurance_model_lsisi_meta`
  ADD CONSTRAINT `insurance_model_lsisi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_lsi_meta`
--
ALTER TABLE `insurance_model_lsi_meta`
  ADD CONSTRAINT `insurance_model_lsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_lssi_meta`
--
ALTER TABLE `insurance_model_lssi_meta`
  ADD CONSTRAINT `insurance_model_lssi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_mtsi_meta`
--
ALTER TABLE `insurance_model_mtsi_meta`
  ADD CONSTRAINT `insurance_model_mtsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_model_shi_meta`
--
ALTER TABLE `insurance_model_shi_meta`
  ADD CONSTRAINT `insurance_model_shi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `insurance_type_meta`
--
ALTER TABLE `insurance_type_meta`
  ADD CONSTRAINT `insurance_type_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `invoicing_meta`
--
ALTER TABLE `invoicing_meta`
  ADD CONSTRAINT `invoicing_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `land_bank_meta`
--
ALTER TABLE `land_bank_meta`
  ADD CONSTRAINT `land_bank_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD CONSTRAINT `language_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_dasi_meta`
--
ALTER TABLE `level_coverage_dasi_meta`
  ADD CONSTRAINT `level_coverage_dasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_dsi_meta`
--
ALTER TABLE `level_coverage_dsi_meta`
  ADD CONSTRAINT `level_coverage_dsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_gsi_meta`
--
ALTER TABLE `level_coverage_gsi_meta`
  ADD CONSTRAINT `level_coverage_gsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_hlsi_meta`
--
ALTER TABLE `level_coverage_hlsi_meta`
  ADD CONSTRAINT `level_coverage_hlsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_hsi_meta`
--
ALTER TABLE `level_coverage_hsi_meta`
  ADD CONSTRAINT `level_coverage_hsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_isi_meta`
--
ALTER TABLE `level_coverage_isi_meta`
  ADD CONSTRAINT `level_coverage_isi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_lasi_meta`
--
ALTER TABLE `level_coverage_lasi_meta`
  ADD CONSTRAINT `level_coverage_lasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_liasi_meta`
--
ALTER TABLE `level_coverage_liasi_meta`
  ADD CONSTRAINT `level_coverage_liasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_lsisi_meta`
--
ALTER TABLE `level_coverage_lsisi_meta`
  ADD CONSTRAINT `level_coverage_lsisi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_lsi_meta`
--
ALTER TABLE `level_coverage_lsi_meta`
  ADD CONSTRAINT `level_coverage_lsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_mtsi_meta`
--
ALTER TABLE `level_coverage_mtsi_meta`
  ADD CONSTRAINT `level_coverage_mtsi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `level_coverage_shi_meta`
--
ALTER TABLE `level_coverage_shi_meta`
  ADD CONSTRAINT `level_coverage_shi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `niveau_package_meta`
--
ALTER TABLE `niveau_package_meta`
  ADD CONSTRAINT `niveau_package_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `occupational_status_meta`
--
ALTER TABLE `occupational_status_meta`
  ADD CONSTRAINT `occupational_status_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `offers_meta`
--
ALTER TABLE `offers_meta`
  ADD CONSTRAINT `offers_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `packages_lca_meta`
--
ALTER TABLE `packages_lca_meta`
  ADD CONSTRAINT `packages_lca_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payment_method_meta`
--
ALTER TABLE `payment_method_meta`
  ADD CONSTRAINT `payment_method_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `permit_meta`
--
ALTER TABLE `permit_meta`
  ADD CONSTRAINT `permit_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `relationship_meta`
--
ALTER TABLE `relationship_meta`
  ADD CONSTRAINT `relationship_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `supplementary_insurance_vvg_meta`
--
ALTER TABLE `supplementary_insurance_vvg_meta`
  ADD CONSTRAINT `supplementary_insurance_vvg_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `templates_meta`
--
ALTER TABLE `templates_meta`
  ADD CONSTRAINT `templates_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `template_groupe_mutual_meta`
--
ALTER TABLE `template_groupe_mutual_meta`
  ADD CONSTRAINT `template_groupe_mutual_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD CONSTRAINT `user_metas_rel_employee_assigned_col_users_foreign` FOREIGN KEY (`rel_employee_assigned_col_users`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_metas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `waiting_period_dasi_meta`
--
ALTER TABLE `waiting_period_dasi_meta`
  ADD CONSTRAINT `waiting_period_dasi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `waiting_period_isi_meta`
--
ALTER TABLE `waiting_period_isi_meta`
  ADD CONSTRAINT `waiting_period_isi_meta_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
