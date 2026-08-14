-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2026 at 05:24 AM
-- Server version: 8.4.3
-- PHP Version: 8.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lions-school`
--

-- --------------------------------------------------------

--
-- Table structure for table `absent_reasons`
--

CREATE TABLE `absent_reasons` (
  `id` int UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absent_reasons`
--

INSERT INTO `absent_reasons` (`id`, `title`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Health Issue', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(2, 'Family Functions', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(3, 'Personal Work', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(4, 'Others', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `school_id`, `name`, `description`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2026-2027', 'This is Current Academic Year', '2026-06-01 00:00:00', '2027-04-30 00:00:00', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(2, 1, '2027-2028', 'This is Next Academic Year', '2027-06-01 00:00:00', '2028-04-30 00:00:00', 2, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `event`, `causer_id`, `causer_type`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'editschooldetail', 'School Details Updated Successfully', 1, 'App\\Models\\School', NULL, 1, 'App\\Models\\User', '{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"}', NULL, '2026-08-12 07:46:13', '2026-08-12 07:46:13'),
(2, 'editschooldetail', 'School Details Updated Successfully', 1, 'App\\Models\\School', NULL, 1, 'App\\Models\\User', '{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"}', NULL, '2026-08-12 07:46:14', '2026-08-12 07:46:14'),
(3, 'editschooldetail', 'School Details Updated Successfully', 1, 'App\\Models\\School', NULL, 1, 'App\\Models\\User', '{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"}', NULL, '2026-08-12 07:47:19', '2026-08-12 07:47:19'),
(4, 'editschooldetail', 'School Details Updated Successfully', 1, 'App\\Models\\School', NULL, 1, 'App\\Models\\User', '{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"}', NULL, '2026-08-12 07:47:20', '2026-08-12 07:47:20'),
(5, 'editschooldetail', 'School Details Updated Successfully', 1, 'App\\Models\\School', NULL, 1, 'App\\Models\\User', '{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"}', NULL, '2026-08-12 07:50:07', '2026-08-12 07:50:07'),
(6, 'editschooldetail', 'School Details Updated Successfully', 1, 'App\\Models\\School', NULL, 1, 'App\\Models\\User', '{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/151.0.0.0 Safari\\/537.36\"}', NULL, '2026-08-12 07:50:08', '2026-08-12 07:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `address_locations`
--

CREATE TABLE `address_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `academic_year_id` int UNSIGNED DEFAULT NULL,
  `standard_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` text COLLATE utf8mb4_unicode_ci,
  `nationality` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` text COLLATE utf8mb4_unicode_ci,
  `community` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` text COLLATE utf8mb4_unicode_ci,
  `identification_marks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_last_studied` longtext COLLATE utf8mb4_unicode_ci,
  `reason_for_leaving` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_for_communication` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `siblings` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `half_yearly_mark_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_of_education` enum('CBSE','Matric','ICSE','State Board','Anglo Indian','Others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_of_language` enum('Tamil','English','Sanskrit','French') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_selection` longtext COLLATE utf8mb4_unicode_ci,
  `board_registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_qualification_id` int UNSIGNED DEFAULT NULL,
  `father_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_income` double DEFAULT NULL,
  `father_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_qualification_id` int UNSIGNED DEFAULT NULL,
  `mother_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_income` double DEFAULT NULL,
  `mother_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_with_student_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_with_student_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medical_history` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_curricular_activities` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode_of_transport` enum('auto','car','city_bus','cycle','rickshaw','school_bus','taxi','walking') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_details` longtext COLLATE utf8mb4_unicode_ci,
  `application_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_status` enum('Draft','Approved','Pending','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_group_id` int UNSIGNED DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED NOT NULL,
  `subject_id` int UNSIGNED NOT NULL,
  `teacher_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `assigned_date` datetime DEFAULT NULL,
  `submission_date` datetime DEFAULT NULL,
  `status` enum('pending','ongoing','cancel','completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_approvals`
--

CREATE TABLE `assignment_approvals` (
  `id` int UNSIGNED NOT NULL,
  `assignment_id` int UNSIGNED NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approved','pending','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approved_by` int UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `session` enum('afternoon','forenoon') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `reason_id` int UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `recorded_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentications`
--

CREATE TABLE `authentications` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_on` timestamp NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `background_images`
--

CREATE TABLE `background_images` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `type` enum('event','noticeboard') COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `book_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn_number` bigint NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `school_id`, `academic_year_id`, `category_id`, `book_code`, `title`, `author`, `isbn_number`, `cover_image`, `availability`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '7902358', 'Perspiciatis voluptatem libero quo consequatur et.', 'Rosetta Haag', 3009791069163, 'https://placeit/200x300', 6, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(2, 1, 1, 9, '1609472', 'Soluta voluptas placeat voluptatem.', 'Walker Abshire', 5174338743467, 'https://placeit/200x300', 25, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(3, 1, 1, 9, '3789002', 'Molestias et vero autem iste.', 'Rico Rau Jr.', 6894018578651, 'https://placeit/200x300', 13, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(4, 1, 1, 6, '5444836', 'Facere dolores qui maxime.', 'Daron Romaguera', 3913193508505, 'https://placeit/200x300', 12, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(5, 1, 1, 5, '5007117', 'Voluptate odit corporis nesciunt numquam dolor.', 'Elsa Collins', 9594194223303, 'https://placeit/200x300', 9, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(6, 1, 1, 9, '6183295', 'Vel excepturi excepturi eum sequi ea.', 'Ashton Torp', 221890218096, 'https://placeit/200x300', 9, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(7, 1, 1, 1, '5271421', 'Natus quasi hic quia.', 'Bertrand Hartmann', 295349617334, 'https://placeit/200x300', 18, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(8, 1, 1, 5, '1803500', 'Laudantium aut fugit praesentium.', 'Rafael Blick', 4831116701828, 'https://placeit/200x300', 22, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(9, 1, 1, 3, '2875889', 'Non vel molestias consequatur.', 'Cassidy O\'Hara', 3307570721555, 'https://placeit/200x300', 9, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(10, 1, 1, 4, '1754547', 'Enim soluta repellendus voluptatibus temporibus in.', 'Deshaun Osinski', 47565491799, 'https://placeit/200x300', 23, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(11, 1, 1, 1, '3097910', 'Quia eos sed nihil distinctio totam rerum.', 'Prof. Zaria Boehm', 3270375101894, 'https://placeit/200x300', 18, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(12, 1, 1, 3, '6817939', 'Ducimus numquam et recusandae voluptatibus sint sit.', 'Mattie Boyer MD', 1165232845177, 'https://placeit/200x300', 7, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(13, 1, 1, 6, '4975005', 'Voluptas magni praesentium fugit velit praesentium.', 'Emilie Graham', 4005321182448, 'https://placeit/200x300', 17, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(14, 1, 1, 7, '7972111', 'Perferendis exercitationem non similique mollitia.', 'Prof. Sid Nolan', 133374786314, 'https://placeit/200x300', 9, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(15, 1, 1, 6, '2949825', 'Quasi tempore ut consequatur reiciendis quidem.', 'Diana Aufderhar II', 9852030997758, 'https://placeit/200x300', 16, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(16, 1, 1, 5, '1441644', 'Omnis distinctio ea odio.', 'Prof. Dawn Crona', 6492793092838, 'https://placeit/200x300', 9, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(17, 1, 1, 7, '8574296', 'Labore eum quasi et praesentium deleniti.', 'Mr. Bernhard Cremin', 4076927706628, 'https://placeit/200x300', 25, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(18, 1, 1, 5, '1499079', 'Voluptatem corrupti ex libero et reprehenderit qui.', 'Raheem Marvin', 9555346978236, 'https://placeit/200x300', 20, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(19, 1, 1, 4, '8295376', 'Similique dicta consequuntur molestias voluptas est illum.', 'Estefania Jakubowski', 3864882516847, 'https://placeit/200x300', 23, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(20, 1, 1, 5, '5869688', 'Error quo ut amet.', 'Maia Mohr', 7984725323329, 'https://placeit/200x300', 21, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(21, 1, 1, 10, '1903374', 'Ad molestiae maxime et adipisci eos.', 'Ebony Kilback', 3280214515324, 'https://placeit/200x300', 20, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(22, 1, 1, 2, '1740324', 'Et pariatur laboriosam labore.', 'Thad Dickens', 9030425061813, 'https://placeit/200x300', 19, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(23, 1, 1, 8, '2295740', 'Dolor nihil esse reiciendis omnis nulla.', 'Mr. Cloyd Dare DDS', 4983733450839, 'https://placeit/200x300', 19, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(24, 1, 1, 9, '7351618', 'Iste provident aut distinctio sed optio quibusdam.', 'Mozell Larson DVM', 9352109171787, 'https://placeit/200x300', 24, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(25, 1, 1, 10, '3137627', 'Est quia repellendus aut.', 'Jaron Lesch', 6168705112627, 'https://placeit/200x300', 9, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(26, 1, 1, 4, '6520936', 'Facere voluptatum nihil tempore iusto maiores.', 'Ms. Lavinia Swaniawski', 5171180913581, 'https://placeit/200x300', 15, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(27, 1, 1, 3, '2128389', 'Est optio nemo libero eum voluptas.', 'Gilda Kirlin', 1536488996089, 'https://placeit/200x300', 5, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(28, 1, 1, 5, '6251205', 'Molestiae fugiat animi optio.', 'Mr. Tremayne Davis', 9690977121238, 'https://placeit/200x300', 12, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(29, 1, 1, 1, '3706261', 'Dolorem molestiae deserunt repellendus nesciunt.', 'Dr. Gilbert O\'Conner', 7727713038795, 'https://placeit/200x300', 7, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(30, 1, 1, 10, '1473112', 'Quis perspiciatis non dolorum.', 'Bethany Fay', 5557451583354, 'https://placeit/200x300', 14, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(31, 1, 1, 5, '6805707', 'Laborum deserunt iusto exercitationem non dolor.', 'Prof. Rogers Hamill', 7614049254961, 'https://placeit/200x300', 24, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(32, 1, 1, 10, '6072938', 'Voluptas voluptas quo qui molestiae.', 'Kane Howell', 2303823429590, 'https://placeit/200x300', 13, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(33, 1, 1, 5, '4312843', 'Facilis tempore quia soluta aut.', 'Christine Little', 3067903602752, 'https://placeit/200x300', 11, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(34, 1, 1, 8, '3006248', 'Et qui adipisci rerum sint delectus eveniet.', 'Granville Keebler', 1988495460266, 'https://placeit/200x300', 14, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(35, 1, 1, 3, '1712677', 'Necessitatibus eos aut ipsam omnis.', 'Sydnee Daniel', 5961977118134, 'https://placeit/200x300', 9, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(36, 1, 1, 7, '2939023', 'Suscipit dolor sunt illum.', 'Prof. Destini Bednar II', 988307858275, 'https://placeit/200x300', 11, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(37, 1, 1, 5, '2192390', 'Vel qui delectus doloribus expedita.', 'Maximo Douglas', 5867452690433, 'https://placeit/200x300', 13, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(38, 1, 1, 5, '5920398', 'Atque aut sit quia saepe.', 'Norma Cartwright DDS', 4248505336118, 'https://placeit/200x300', 23, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(39, 1, 1, 4, '7799407', 'Sed ab suscipit omnis velit quia.', 'Prof. Turner Hermann', 7227574511920, 'https://placeit/200x300', 14, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(40, 1, 1, 10, '1349674', 'Voluptas minus sit et et tempore.', 'Agustina Kling DDS', 7776502129633, 'https://placeit/200x300', 18, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(41, 1, 1, 2, '3503394', 'Aliquid ut eos est magnam nemo.', 'Mrs. Jannie Macejkovic', 2106957845317, 'https://placeit/200x300', 18, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(42, 1, 1, 8, '2827310', 'Et amet eos unde explicabo et sequi.', 'Hugh Hagenes PhD', 5303044541405, 'https://placeit/200x300', 18, '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(43, 1, 1, 8, '7992531', 'Laborum optio odio officiis tempora ab laborum.', 'Aliza Kerluke MD', 3175722443187, 'https://placeit/200x300', 16, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(44, 1, 1, 6, '4838812', 'Voluptatibus et facilis excepturi quia.', 'Floy Reynolds', 6128652225573, 'https://placeit/200x300', 5, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(45, 1, 1, 2, '1417746', 'Laboriosam sunt doloribus est.', 'Dakota Kuvalis', 7936168393438, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(46, 1, 1, 7, '5491493', 'Quo aliquid doloribus delectus debitis.', 'Ida Mertz', 6482794504355, 'https://placeit/200x300', 15, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(47, 1, 1, 5, '7430166', 'Tempore corrupti quia voluptatem aut quis laboriosam.', 'Celestino O\'Conner V', 1768145806176, 'https://placeit/200x300', 12, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(48, 1, 1, 1, '1137229', 'Adipisci dolor eum possimus.', 'Sonya Turcotte', 9749911374527, 'https://placeit/200x300', 6, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(49, 1, 1, 10, '7303976', 'Id odio minima excepturi.', 'Catherine Muller', 2896336483376, 'https://placeit/200x300', 5, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(50, 1, 1, 1, '4994785', 'Possimus ut a ex tempora repellat eveniet.', 'Mr. Diego Corkery', 1880768259280, 'https://placeit/200x300', 20, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(51, 1, 1, 5, '3537200', 'Eveniet sed iste consequatur.', 'Marques Nicolas DVM', 9111337410828, 'https://placeit/200x300', 11, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(52, 1, 1, 4, '2265417', 'Et quos sed tenetur consequatur facere.', 'Bria Williamson', 4502746556583, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(53, 1, 1, 7, '4281082', 'Veritatis rem sed dolore dolor quia.', 'Mr. Nicolas Gorczany', 3328070416543, 'https://placeit/200x300', 19, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(54, 1, 1, 7, '8615531', 'Non qui aut debitis quis.', 'Rafael Kuhic DDS', 7651725869897, 'https://placeit/200x300', 18, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(55, 1, 1, 8, '5072445', 'Eaque vero numquam non qui porro.', 'Miss Ana Stoltenberg', 2966780906131, 'https://placeit/200x300', 25, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(56, 1, 1, 2, '6719535', 'Provident ipsum ullam fugiat perferendis modi.', 'Ms. Reva Mueller III', 513406842735, 'https://placeit/200x300', 8, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(57, 1, 1, 2, '6515302', 'Voluptatum aut ullam explicabo.', 'Dr. Wellington Hansen', 8427293654536, 'https://placeit/200x300', 12, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(58, 1, 1, 10, '1603787', 'Repellat non recusandae delectus error saepe.', 'Marilou Miller MD', 7197553446232, 'https://placeit/200x300', 12, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(59, 1, 1, 1, '1666629', 'Dolor ea maiores nobis reprehenderit error.', 'Mable Lind', 8049781583236, 'https://placeit/200x300', 11, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(60, 1, 1, 5, '1606255', 'Dolorem sunt nemo mollitia.', 'Jake Langosh', 3383427715267, 'https://placeit/200x300', 24, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(61, 1, 1, 5, '4588843', 'Corporis sed ut est perferendis dolorem quam.', 'Gisselle Luettgen Jr.', 908380030474, 'https://placeit/200x300', 13, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(62, 1, 1, 8, '5483254', 'Modi sit in et a voluptate voluptatem.', 'Mrs. Zoey Becker DDS', 8144515010955, 'https://placeit/200x300', 19, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(63, 1, 1, 5, '3104377', 'Laborum aut et rem.', 'Mireya Willms', 3011504827038, 'https://placeit/200x300', 6, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(64, 1, 1, 2, '6860277', 'Nesciunt nisi blanditiis enim.', 'Prof. Fern Kessler Jr.', 8104860491434, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(65, 1, 1, 2, '5108967', 'Dolor vero voluptatem est dolore ipsa.', 'Antonina Medhurst', 9018083140514, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(66, 1, 1, 7, '1476957', 'Nesciunt neque quisquam at voluptas incidunt magni.', 'Sydnee Bailey', 4874543071249, 'https://placeit/200x300', 8, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(67, 1, 1, 2, '1775601', 'Asperiores porro nisi qui rerum aut.', 'Shanelle Leffler', 9405687687314, 'https://placeit/200x300', 20, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(68, 1, 1, 3, '6232210', 'Explicabo ipsam qui harum.', 'Ms. Genoveva Mann', 4221492693020, 'https://placeit/200x300', 15, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(69, 1, 1, 2, '8545499', 'Voluptas ex est tempora earum.', 'Jovanny Christiansen PhD', 1214969580353, 'https://placeit/200x300', 8, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(70, 1, 1, 10, '6249204', 'Quia recusandae minus quia veniam.', 'Kari Heaney', 2396710733030, 'https://placeit/200x300', 20, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(71, 1, 1, 1, '8086244', 'Sit et iste at deleniti dicta.', 'Shirley Kris', 4737395073499, 'https://placeit/200x300', 17, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(72, 1, 1, 7, '8464207', 'Iste fugit iste temporibus qui.', 'Magdalena Veum', 967703502500, 'https://placeit/200x300', 10, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(73, 1, 1, 8, '4697003', 'Nobis asperiores ea quod.', 'Camron Gerlach', 5917419846998, 'https://placeit/200x300', 12, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(74, 1, 1, 1, '3831163', 'Molestiae unde maxime corrupti quisquam eos sint.', 'Scarlett Miller', 9542660102416, 'https://placeit/200x300', 5, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(75, 1, 1, 6, '1788773', 'Ut voluptas modi perspiciatis.', 'Dr. Kaia Hilpert DVM', 842260704362, 'https://placeit/200x300', 7, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(76, 1, 1, 1, '6345193', 'Sunt modi minima eius.', 'Helmer Thompson', 6759841410229, 'https://placeit/200x300', 23, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(77, 1, 1, 9, '4211215', 'Aut maiores aut officia quo.', 'Bridget Klein', 9262043547855, 'https://placeit/200x300', 13, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(78, 1, 1, 1, '6491836', 'Perspiciatis aut dolore accusantium placeat eum qui.', 'Mr. Cyril Funk', 6777356120136, 'https://placeit/200x300', 19, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(79, 1, 1, 6, '6800052', 'Vel temporibus ex porro.', 'Prof. Jailyn Hahn', 8097568032033, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(80, 1, 1, 5, '8061250', 'Voluptatibus saepe consectetur veniam voluptates repellat quos.', 'Mrs. Anna Schuster', 5497344768058, 'https://placeit/200x300', 23, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(81, 1, 1, 3, '1519510', 'Qui minus nesciunt aut a.', 'Dr. Jules Fay PhD', 2533537805308, 'https://placeit/200x300', 21, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(82, 1, 1, 10, '5910967', 'Ut autem voluptatem dicta et velit.', 'Jasmin Rutherford', 5198391235080, 'https://placeit/200x300', 19, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(83, 1, 1, 2, '2176584', 'Occaecati quas nulla rerum.', 'Novella Parisian DVM', 3496507259534, 'https://placeit/200x300', 22, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(84, 1, 1, 2, '3686635', 'Necessitatibus mollitia quasi quia ipsa.', 'Dangelo Bruen', 8422537812611, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(85, 1, 1, 7, '5411386', 'Quasi dolore voluptas fuga ut.', 'Genevieve Harris III', 2461861420242, 'https://placeit/200x300', 11, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(86, 1, 1, 6, '2536616', 'Accusamus eveniet sint accusantium consequuntur illo rerum.', 'Name Johnston', 1299277041710, 'https://placeit/200x300', 20, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(87, 1, 1, 8, '4794360', 'Nulla ipsa necessitatibus sint quia voluptas enim placeat.', 'Maye Boyle', 5418769902438, 'https://placeit/200x300', 8, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(88, 1, 1, 4, '5645931', 'Alias asperiores incidunt ad commodi minus voluptates.', 'Agustin Hermiston', 7609193250082, 'https://placeit/200x300', 10, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(89, 1, 1, 1, '3223028', 'Iste eligendi rerum tempora numquam in pariatur.', 'Elmo Kuphal', 4119364005739, 'https://placeit/200x300', 5, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(90, 1, 1, 5, '1302573', 'Repellendus perspiciatis maiores velit.', 'Elena Vandervort', 8460946952436, 'https://placeit/200x300', 25, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(91, 1, 1, 2, '4029378', 'Maiores officia aut officia.', 'Dr. Kevin Marquardt MD', 2972970359960, 'https://placeit/200x300', 15, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(92, 1, 1, 2, '3281584', 'Sint reiciendis atque omnis ratione assumenda.', 'Mrs. Sincere Balistreri', 4913329383753, 'https://placeit/200x300', 21, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(93, 1, 1, 10, '4787806', 'Voluptatem blanditiis laborum repellendus.', 'Miss Aditya Aufderhar', 3606276203755, 'https://placeit/200x300', 13, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(94, 1, 1, 3, '3889496', 'Possimus animi excepturi aspernatur tempora.', 'Miss Matilde Halvorson PhD', 8682156915630, 'https://placeit/200x300', 18, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(95, 1, 1, 9, '7231194', 'Architecto cum praesentium et praesentium.', 'Kailyn Ritchie', 623819018334, 'https://placeit/200x300', 14, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(96, 1, 1, 2, '1619954', 'A consectetur asperiores atque consequuntur nulla occaecati.', 'Mittie McKenzie DVM', 7560551327290, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(97, 1, 1, 8, '1918450', 'Quia nihil est amet nemo doloribus molestiae.', 'Kane Cormier V', 8792420083450, 'https://placeit/200x300', 13, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(98, 1, 1, 4, '2738718', 'Omnis doloribus aliquam et.', 'Odell Block DVM', 540752219225, 'https://placeit/200x300', 11, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(99, 1, 1, 2, '6037898', 'Ipsa illo consequatur ut.', 'Tod Streich', 6195536406182, 'https://placeit/200x300', 6, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(100, 1, 1, 7, '6956530', 'Non consectetur sapiente aut atque eos.', 'Miss Melody Lehner', 9615252831039, 'https://placeit/200x300', 18, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(101, 1, 1, 2, '7893358', 'Fugit animi sequi ut asperiores quis.', 'Dr. Mariah Boyle DDS', 1147098899549, 'https://placeit/200x300', 19, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(102, 1, 1, 5, '6575012', 'Ut atque aliquam enim rerum.', 'Lawrence Watsica', 94357622244, 'https://placeit/200x300', 6, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(103, 1, 1, 3, '3223405', 'Nam minus vero ducimus harum mollitia aspernatur.', 'Deron Christiansen I', 6227592166349, 'https://placeit/200x300', 16, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(104, 1, 1, 7, '2600845', 'Ea id modi qui ipsum eaque sunt.', 'Prof. Jordane Turner', 5372894299538, 'https://placeit/200x300', 17, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(105, 1, 1, 1, '8008957', 'Voluptatem doloremque est asperiores pariatur atque dicta.', 'Ms. Ashleigh Ruecker', 9307077553523, 'https://placeit/200x300', 7, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(106, 1, 1, 5, '5375690', 'Voluptas qui quisquam perspiciatis eveniet accusantium sint.', 'Jazmyne Carroll', 6220867784552, 'https://placeit/200x300', 24, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(107, 1, 1, 7, '5866782', 'Iste fuga exercitationem dolorem quasi asperiores harum.', 'Cristopher Padberg', 4262136469502, 'https://placeit/200x300', 15, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(108, 1, 1, 3, '2933526', 'Voluptatem modi quia excepturi.', 'Mrs. Marisa Welch', 5054539709144, 'https://placeit/200x300', 25, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(109, 1, 1, 7, '1904552', 'Culpa ipsam consectetur dolorum inventore consequatur.', 'Isabelle Collier', 2649106260864, 'https://placeit/200x300', 6, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(110, 1, 1, 10, '8758198', 'Aliquam et ea nesciunt ut voluptas.', 'Beau Haley', 9350387451119, 'https://placeit/200x300', 7, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(111, 1, 1, 6, '7381261', 'Rerum modi ex ipsam.', 'Amir Swift', 5161192050800, 'https://placeit/200x300', 5, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(112, 1, 1, 7, '3354816', 'Et tempora voluptatem esse placeat esse.', 'Ms. Thora Trantow', 6144797612252, 'https://placeit/200x300', 12, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(113, 1, 1, 7, '7678847', 'Vitae doloremque laborum iure veritatis.', 'Rosella Ferry II', 8723711432190, 'https://placeit/200x300', 8, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(114, 1, 1, 6, '8625280', 'Ut vel et sunt qui illum.', 'Miss Misty Yost', 6602449386475, 'https://placeit/200x300', 22, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(115, 1, 1, 1, '4900026', 'Ducimus inventore aut quos non.', 'Troy Thiel', 9362631865580, 'https://placeit/200x300', 15, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(116, 1, 1, 10, '4124854', 'Ex perspiciatis sunt exercitationem quidem cum corrupti.', 'Adeline Herman', 9963495203770, 'https://placeit/200x300', 8, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(117, 1, 1, 2, '6140390', 'Dolores et non iste inventore eaque.', 'Mrs. Brianne Marquardt', 5267314751669, 'https://placeit/200x300', 5, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(118, 1, 1, 10, '7152180', 'Itaque facere omnis et inventore quo.', 'Mr. Kaden Brekke', 9632010081178, 'https://placeit/200x300', 19, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(119, 1, 1, 3, '4792140', 'Saepe sunt ea facere.', 'Alysha Fadel', 9621929579630, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(120, 1, 1, 3, '6918716', 'Dignissimos vel aut natus ut eum aut.', 'Edmond Howell V', 7054614915925, 'https://placeit/200x300', 8, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(121, 1, 1, 3, '2265091', 'Quidem aperiam perspiciatis laboriosam distinctio esse distinctio.', 'Jamaal Pagac', 2418986367662, 'https://placeit/200x300', 23, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(122, 1, 1, 10, '3322439', 'Corporis ullam non et at maxime.', 'Trycia Grady II', 4627569485954, 'https://placeit/200x300', 15, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(123, 1, 1, 10, '3811831', 'Nemo reiciendis similique illo vero vero.', 'Katrina Wisoky', 8494804605691, 'https://placeit/200x300', 13, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(124, 1, 1, 2, '8636508', 'Enim impedit quia quis.', 'Dr. Margie Morissette III', 8496945306260, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(125, 1, 1, 5, '7628939', 'Sit sapiente ipsum possimus.', 'Derrick Veum', 9014198404336, 'https://placeit/200x300', 18, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(126, 1, 1, 3, '7225269', 'Voluptatem nam doloribus sequi unde beatae.', 'Mr. Claude Kiehn', 5618490621534, 'https://placeit/200x300', 21, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(127, 1, 1, 1, '2425715', 'Unde veniam consequatur cumque voluptatibus.', 'Mr. Deshawn Crooks I', 9651465371481, 'https://placeit/200x300', 9, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(128, 1, 1, 1, '1731952', 'Nemo qui atque eos reprehenderit sed.', 'Dr. Eve McGlynn', 7356506682367, 'https://placeit/200x300', 10, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(129, 1, 1, 10, '2482023', 'Nihil deserunt sint reprehenderit minus quia sint.', 'Ivory Aufderhar', 8438335852834, 'https://placeit/200x300', 14, '2026-08-12 07:38:42', '2026-08-12 07:38:42'),
(130, 1, 1, 10, '4301978', 'Harum rerum nulla voluptates vitae iste tempora.', 'Prof. Linwood Glover', 5627649634844, 'https://placeit/200x300', 15, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(131, 1, 1, 7, '1886783', 'Saepe minima doloremque velit.', 'Mr. Cortez Adams', 7583573744890, 'https://placeit/200x300', 17, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(132, 1, 1, 2, '2346372', 'Ea ea magnam eveniet.', 'Gladyce Casper', 7894018513668, 'https://placeit/200x300', 8, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(133, 1, 1, 4, '7696025', 'Ut doloribus qui est tempore rerum.', 'Annetta Collier PhD', 7611409794822, 'https://placeit/200x300', 23, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(134, 1, 1, 1, '7163842', 'Odio ab aut et.', 'Valentine Turner', 152618673838, 'https://placeit/200x300', 7, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(135, 1, 1, 7, '6367713', 'Ut cumque earum fuga.', 'Ms. Rubie Kreiger', 9178625793773, 'https://placeit/200x300', 20, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(136, 1, 1, 10, '8069376', 'Delectus hic qui autem quaerat eos hic.', 'Annie McKenzie', 8225252242882, 'https://placeit/200x300', 12, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(137, 1, 1, 2, '8153288', 'Aut velit neque dolores.', 'Hyman Predovic', 7906739009969, 'https://placeit/200x300', 13, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(138, 1, 1, 10, '7676472', 'Est ut quod reprehenderit odit aperiam.', 'Darryl Mante', 982501343520, 'https://placeit/200x300', 17, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(139, 1, 1, 6, '3006483', 'Porro numquam distinctio voluptate.', 'Kylie Berge', 3470790927165, 'https://placeit/200x300', 9, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(140, 1, 1, 1, '7304740', 'At natus sapiente quas ab quaerat.', 'Cristian Fahey', 5187775254793, 'https://placeit/200x300', 15, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(141, 1, 1, 5, '6714567', 'Est est pariatur soluta.', 'Axel Maggio Sr.', 1786197198872, 'https://placeit/200x300', 17, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(142, 1, 1, 5, '5949856', 'Autem exercitationem id modi voluptatem perspiciatis laudantium tenetur.', 'Soledad Harvey', 3828245334172, 'https://placeit/200x300', 13, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(143, 1, 1, 1, '3277656', 'Mollitia ut autem autem libero.', 'Mr. Nick Fisher DDS', 5058610499702, 'https://placeit/200x300', 11, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(144, 1, 1, 5, '1354258', 'Autem eos laboriosam voluptatem consequatur.', 'Baron Sanford DDS', 5319579535185, 'https://placeit/200x300', 24, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(145, 1, 1, 2, '1137037', 'Numquam modi iste magni dolor voluptatem voluptatem.', 'Miss Abbigail Wehner MD', 7963694877040, 'https://placeit/200x300', 22, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(146, 1, 1, 4, '1797097', 'Odit tempore doloremque non assumenda temporibus fugit.', 'Mr. Kristopher Konopelski DVM', 9965729217591, 'https://placeit/200x300', 19, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(147, 1, 1, 2, '1972359', 'Qui recusandae minus vitae nostrum.', 'Dr. Clotilde Blanda', 1718159712802, 'https://placeit/200x300', 22, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(148, 1, 1, 8, '6198117', 'Commodi officiis ullam a veniam iste voluptatem.', 'Cameron Quigley', 8324952111075, 'https://placeit/200x300', 6, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(149, 1, 1, 1, '1358307', 'Aut in ut fuga provident.', 'Jeanie Lind', 4371501280632, 'https://placeit/200x300', 5, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(150, 1, 1, 4, '7512300', 'Itaque repudiandae impedit id officia id illo.', 'Malika Weissnat', 7893511681171, 'https://placeit/200x300', 19, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(151, 1, 1, 3, '2223713', 'Dolore quisquam modi enim ut.', 'Mr. Mack Roob Sr.', 6234435166886, 'https://placeit/200x300', 6, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(152, 1, 1, 1, '6993247', 'Dolorem facilis rerum nisi et minima praesentium.', 'Maryam Homenick I', 4108273590870, 'https://placeit/200x300', 9, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(153, 1, 1, 9, '1186967', 'Quae voluptatem est alias earum vel.', 'Prof. Andres Conn', 2821857652161, 'https://placeit/200x300', 23, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(154, 1, 1, 5, '5316957', 'Eos aut ducimus corrupti ipsum reiciendis error.', 'Alisa Hessel', 957775511050, 'https://placeit/200x300', 25, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(155, 1, 1, 3, '8750790', 'Consequatur rem ut soluta quis quia similique.', 'Mrs. Edwina Olson DDS', 3708047446757, 'https://placeit/200x300', 6, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(156, 1, 1, 4, '1754223', 'Aut accusantium sit sint assumenda quos commodi.', 'Augusta Franecki V', 5385103286694, 'https://placeit/200x300', 20, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(157, 1, 1, 1, '4150272', 'Consequatur non eum tempora dolores quod voluptatum.', 'Frederic Hodkiewicz', 715188700962, 'https://placeit/200x300', 7, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(158, 1, 1, 1, '1716220', 'Itaque repudiandae qui nihil vel omnis.', 'Prof. Will Miller', 8167114546014, 'https://placeit/200x300', 18, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(159, 1, 1, 2, '4126350', 'Soluta modi nihil libero enim commodi fuga.', 'Ibrahim Crist', 8484302121366, 'https://placeit/200x300', 16, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(160, 1, 1, 2, '4277914', 'Totam ipsum provident perspiciatis.', 'Moses Bernier', 9357106619331, 'https://placeit/200x300', 13, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(161, 1, 1, 5, '4850326', 'Dolor qui mollitia maxime.', 'Ms. Mellie Maggio Jr.', 8935611565131, 'https://placeit/200x300', 17, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(162, 1, 1, 2, '5203148', 'Distinctio dolores fugit dolor non quia repudiandae.', 'Marques Denesik', 2409177266918, 'https://placeit/200x300', 12, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(163, 1, 1, 10, '7005618', 'Consectetur qui blanditiis minus rerum ab.', 'Dr. Nelle Blanda MD', 3537779387072, 'https://placeit/200x300', 21, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(164, 1, 1, 3, '5600305', 'Pariatur iure rerum quia tempora.', 'Miss Dorothea Yost', 7534236829966, 'https://placeit/200x300', 7, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(165, 1, 1, 7, '7345991', 'Incidunt repellendus ea ipsum id aut at.', 'Brett Beahan', 7835198611102, 'https://placeit/200x300', 7, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(166, 1, 1, 9, '7297307', 'Explicabo dolor architecto enim.', 'Joanne Schneider', 8996332122881, 'https://placeit/200x300', 18, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(167, 1, 1, 4, '6002036', 'Quibusdam aliquam mollitia neque sequi sed est.', 'Prof. Celestine Donnelly MD', 4989418516821, 'https://placeit/200x300', 17, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(168, 1, 1, 7, '6283913', 'Non quo non dolores laboriosam magni vero.', 'Lessie Collins', 6029986802013, 'https://placeit/200x300', 13, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(169, 1, 1, 8, '1863954', 'Nobis numquam et ab aperiam.', 'Sasha Pagac Jr.', 4617627555422, 'https://placeit/200x300', 9, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(170, 1, 1, 8, '6588631', 'Ducimus vitae velit reiciendis dolorem maxime quam.', 'Shany Ankunding', 5852422455372, 'https://placeit/200x300', 5, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(171, 1, 1, 6, '4626287', 'Aut quod voluptas veritatis et.', 'Clementina Zieme', 7032904799110, 'https://placeit/200x300', 23, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(172, 1, 1, 1, '6312250', 'Porro veritatis voluptas officiis consectetur sed itaque.', 'Kennith Von', 9988675720960, 'https://placeit/200x300', 23, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(173, 1, 1, 10, '1949140', 'Autem labore debitis blanditiis ut rerum esse.', 'Ms. Lorine Skiles IV', 8956535171253, 'https://placeit/200x300', 24, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(174, 1, 1, 1, '3285945', 'Ipsam consequatur est et facilis corrupti repellendus.', 'Deondre O\'Hara III', 7313057558367, 'https://placeit/200x300', 9, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(175, 1, 1, 7, '3150964', 'Repudiandae in sed ut molestiae maxime.', 'Mack Block', 4188775655505, 'https://placeit/200x300', 13, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(176, 1, 1, 7, '6126097', 'Architecto illum sapiente quo placeat officiis iste.', 'Tobin Oberbrunner', 9238520663332, 'https://placeit/200x300', 21, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(177, 1, 1, 1, '4084117', 'Ratione et sed odio.', 'Prof. Blair Stehr PhD', 5042961559710, 'https://placeit/200x300', 6, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(178, 1, 1, 10, '4588549', 'Doloribus molestias illo modi sequi omnis.', 'Santos Hahn', 6080975907522, 'https://placeit/200x300', 9, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(179, 1, 1, 6, '2163826', 'Maiores mollitia et dignissimos possimus est.', 'Lennie Barton', 8279566528736, 'https://placeit/200x300', 9, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(180, 1, 1, 5, '1931173', 'Dolor illo vel est assumenda consequatur.', 'Karson Williamson', 3741021701145, 'https://placeit/200x300', 12, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(181, 1, 1, 10, '1416663', 'Sed illum ut debitis assumenda ea.', 'Merlin Yost', 7502824820169, 'https://placeit/200x300', 21, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(182, 1, 1, 9, '4851974', 'Mollitia qui eligendi perspiciatis perferendis sed omnis.', 'Alva Mante', 5939236059276, 'https://placeit/200x300', 21, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(183, 1, 1, 1, '6068921', 'Aperiam aperiam sed aliquam deserunt placeat voluptas.', 'Hazel Langworth V', 3531621766282, 'https://placeit/200x300', 17, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(184, 1, 1, 10, '8572797', 'Est ipsum quo dolores enim eius.', 'Rosemarie Hahn', 5999154387448, 'https://placeit/200x300', 7, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(185, 1, 1, 9, '6269691', 'Consequuntur eos id similique voluptatum.', 'Dr. Raymundo Roob V', 1734627983628, 'https://placeit/200x300', 11, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(186, 1, 1, 10, '4484463', 'Inventore soluta incidunt ut in.', 'Sterling Runolfsdottir', 4974596031471, 'https://placeit/200x300', 6, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(187, 1, 1, 9, '3135767', 'Delectus quam aperiam illo.', 'Jaquelin Labadie IV', 8116257114550, 'https://placeit/200x300', 19, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(188, 1, 1, 9, '5476850', 'Ratione officia ut et eveniet.', 'Yvonne Hackett', 8861714309917, 'https://placeit/200x300', 12, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(189, 1, 1, 8, '3311830', 'Qui perferendis et enim culpa in vero.', 'Alek Tillman', 3995793191233, 'https://placeit/200x300', 17, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(190, 1, 1, 8, '2434046', 'Laboriosam facilis tempore aut voluptatem.', 'Shirley Lakin', 9378590950137, 'https://placeit/200x300', 8, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(191, 1, 1, 10, '3537503', 'Ea voluptatem sapiente necessitatibus consectetur nesciunt.', 'Cheyenne Witting', 6548420901537, 'https://placeit/200x300', 24, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(192, 1, 1, 3, '5347444', 'Dolor nisi qui distinctio esse sed dicta.', 'Kaelyn Emard', 7853800511275, 'https://placeit/200x300', 7, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(193, 1, 1, 10, '4600583', 'Eos beatae iure assumenda.', 'Prof. Gideon Greenfelder', 9265751518490, 'https://placeit/200x300', 22, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(194, 1, 1, 2, '1366880', 'At non praesentium molestias tempora consequatur.', 'Prof. Madelyn Cruickshank II', 5885456228346, 'https://placeit/200x300', 15, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(195, 1, 1, 1, '2799796', 'Quo impedit minus recusandae.', 'Stephan Rutherford', 2996845588248, 'https://placeit/200x300', 20, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(196, 1, 1, 5, '8484890', 'Libero repellendus neque tempora tempora.', 'Mr. Joshua Kuhlman DVM', 3654914010463, 'https://placeit/200x300', 5, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(197, 1, 1, 9, '2163619', 'Molestias qui beatae saepe sit et quae.', 'Greyson Orn', 9514631614495, 'https://placeit/200x300', 23, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(198, 1, 1, 3, '1607478', 'Ut enim quidem et.', 'Mr. Oliver Schumm', 2555502857112, 'https://placeit/200x300', 16, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(199, 1, 1, 9, '6970685', 'Consequuntur iusto occaecati et.', 'Bailee Nikolaus PhD', 2450482602212, 'https://placeit/200x300', 18, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(200, 1, 1, 9, '8367615', 'Et recusandae sed assumenda inventore.', 'Frida Hansen', 5999321643018, 'https://placeit/200x300', 22, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(201, 1, 1, 10, '7417363', 'Culpa adipisci ex rem.', 'Kurtis McClure PhD', 9492596713654, 'https://placeit/200x300', 18, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(202, 1, 1, 3, '3697537', 'Id delectus eos minus tempora pariatur.', 'Fleta Orn', 4877239295998, 'https://placeit/200x300', 25, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(203, 1, 1, 4, '3342168', 'Et eius et soluta.', 'Madaline Jacobson', 3159648262916, 'https://placeit/200x300', 22, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(204, 1, 1, 2, '6566799', 'Inventore sunt qui quia repellendus aliquid.', 'Tiara Reichel', 7955081024199, 'https://placeit/200x300', 15, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(205, 1, 1, 3, '5870014', 'Molestias nobis iusto fugit qui.', 'Dorothy Goodwin', 4143953787065, 'https://placeit/200x300', 7, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(206, 1, 1, 8, '3531591', 'Omnis nihil sunt nobis alias sunt minus.', 'Arno Bode PhD', 8940084470455, 'https://placeit/200x300', 19, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(207, 1, 1, 10, '4223194', 'Qui et et et quod voluptatem aperiam.', 'Mrs. Noemi Lynch IV', 5566879246536, 'https://placeit/200x300', 8, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(208, 1, 1, 10, '8092933', 'Et numquam inventore doloremque incidunt.', 'Laverne Kreiger', 907204421108, 'https://placeit/200x300', 24, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(209, 1, 1, 1, '2184045', 'Porro asperiores nam voluptas sed eum ut.', 'Prof. Marvin Hodkiewicz III', 6431905168894, 'https://placeit/200x300', 23, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(210, 1, 1, 4, '7349430', 'Suscipit adipisci atque aliquid eos quia cumque.', 'Quentin Dicki', 6747550890876, 'https://placeit/200x300', 8, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(211, 1, 1, 10, '8032501', 'Sunt vero ipsa nemo hic.', 'Robbie Wilkinson', 4932601333743, 'https://placeit/200x300', 5, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(212, 1, 1, 10, '2279698', 'Est impedit provident possimus quod.', 'Leda Nolan', 7473206225066, 'https://placeit/200x300', 24, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(213, 1, 1, 10, '6929524', 'Vitae aut dolores et.', 'Prof. Ardella Emard', 351570635513, 'https://placeit/200x300', 16, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(214, 1, 1, 10, '1436076', 'Minus quas facilis ut deserunt ratione.', 'Holly Runolfsdottir', 1877144717076, 'https://placeit/200x300', 14, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(215, 1, 1, 7, '2280034', 'Omnis mollitia odio optio doloremque.', 'Garnett Hand', 3975152313018, 'https://placeit/200x300', 9, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(216, 1, 1, 9, '7865584', 'Qui modi earum sunt.', 'Rhea Blick', 4420279827492, 'https://placeit/200x300', 8, '2026-08-12 07:38:43', '2026-08-12 07:38:43'),
(217, 1, 1, 9, '5126068', 'Ea magni voluptatem occaecati aut.', 'Seamus Strosin III', 962529713659, 'https://placeit/200x300', 18, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(218, 1, 1, 3, '1836602', 'Consectetur sed illo sequi aliquid vitae.', 'Dr. Robin Mosciski', 6723073850849, 'https://placeit/200x300', 18, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(219, 1, 1, 7, '3489374', 'Velit quasi animi ipsam consectetur quia.', 'Bernie Feest V', 2474784497475, 'https://placeit/200x300', 16, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(220, 1, 1, 8, '7622457', 'Ut eius vitae adipisci veniam aliquid quibusdam.', 'Daphnee Rowe', 6686731072239, 'https://placeit/200x300', 7, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(221, 1, 1, 7, '1252437', 'Dicta natus amet accusantium.', 'Margret Schoen', 7485570240750, 'https://placeit/200x300', 14, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(222, 1, 1, 10, '6086112', 'Nemo perspiciatis dolor numquam et sint dicta.', 'Miss Kelsie Weimann II', 8304821451914, 'https://placeit/200x300', 15, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(223, 1, 1, 9, '4921150', 'Ipsum alias beatae et similique cupiditate.', 'Dr. Ron Wisozk MD', 6211045051047, 'https://placeit/200x300', 7, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(224, 1, 1, 3, '4981136', 'Temporibus quod aliquid quia.', 'Beverly Berge', 8096975274067, 'https://placeit/200x300', 14, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(225, 1, 1, 6, '7467163', 'Amet repellendus reiciendis quia quaerat odio fugit.', 'Anissa Gerhold', 4614370019515, 'https://placeit/200x300', 17, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(226, 1, 1, 7, '6939089', 'Sed exercitationem voluptatem et suscipit mollitia est.', 'Friedrich Nienow', 9192811386518, 'https://placeit/200x300', 21, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(227, 1, 1, 10, '5686819', 'Distinctio aut fugiat reprehenderit iusto.', 'Mrs. Maymie Conn', 1958649342663, 'https://placeit/200x300', 23, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(228, 1, 1, 9, '6237629', 'Aspernatur rerum fuga quae.', 'Dr. Amina Smith III', 7729006040515, 'https://placeit/200x300', 13, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(229, 1, 1, 1, '5347029', 'Recusandae cumque voluptate amet.', 'Jaiden Howell', 4642003834396, 'https://placeit/200x300', 7, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(230, 1, 1, 7, '2922083', 'Nobis excepturi ipsa nemo.', 'Rebeka Klocko', 9532880889358, 'https://placeit/200x300', 14, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(231, 1, 1, 1, '8710889', 'Qui vel saepe amet iusto consequatur.', 'Kendall Kuvalis', 6819774840712, 'https://placeit/200x300', 9, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(232, 1, 1, 3, '6150698', 'Aut est et quo alias reprehenderit.', 'Susie Davis MD', 7222869336820, 'https://placeit/200x300', 10, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(233, 1, 1, 2, '4179000', 'Cupiditate ex maxime tempore deleniti fugit deserunt.', 'Coy Baumbach', 3218950121523, 'https://placeit/200x300', 24, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(234, 1, 1, 9, '3106550', 'Modi sint ex numquam numquam sequi fuga.', 'Ms. Joyce O\'Reilly', 3887433080291, 'https://placeit/200x300', 18, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(235, 1, 1, 5, '3574962', 'Sit aut repellendus sapiente qui.', 'Miss Colleen Hackett', 5681851814678, 'https://placeit/200x300', 24, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(236, 1, 1, 3, '3861543', 'Quia ut praesentium magni.', 'Santina Carter', 6912091243737, 'https://placeit/200x300', 16, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(237, 1, 1, 6, '5296805', 'Fugiat qui iste aut asperiores quo accusamus.', 'Sherwood Cartwright', 5330438549105, 'https://placeit/200x300', 14, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(238, 1, 1, 9, '3994197', 'Vel natus delectus fugit ducimus qui.', 'Prof. Saige Reichel', 898949611599, 'https://placeit/200x300', 5, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(239, 1, 1, 9, '5706185', 'Et ratione harum mollitia.', 'Retha Grimes', 336926385267, 'https://placeit/200x300', 12, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(240, 1, 1, 8, '3561844', 'Itaque debitis cum cupiditate.', 'Vickie Ondricka', 9902438080115, 'https://placeit/200x300', 16, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(241, 1, 1, 1, '1419508', 'Molestiae sint veniam est dolor.', 'Freeda Maggio', 3091890581431, 'https://placeit/200x300', 9, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(242, 1, 1, 9, '2471357', 'Enim non ex ut eaque.', 'Charley Toy DDS', 5408948841689, 'https://placeit/200x300', 25, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(243, 1, 1, 1, '7931442', 'Quaerat quia unde omnis molestiae.', 'Lucious Veum Sr.', 7539788795028, 'https://placeit/200x300', 23, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(244, 1, 1, 3, '2964462', 'Dolor natus sit rerum.', 'Mr. Willis O\'Connell MD', 2236622328569, 'https://placeit/200x300', 10, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(245, 1, 1, 3, '2295243', 'Voluptates et eum in voluptas cumque qui.', 'Kamryn Romaguera', 4535522981088, 'https://placeit/200x300', 13, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(246, 1, 1, 7, '8528386', 'Esse necessitatibus nihil aliquam dignissimos dolor temporibus.', 'Justyn Hamill', 8047012426086, 'https://placeit/200x300', 15, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(247, 1, 1, 8, '2704037', 'Et deleniti incidunt sint.', 'Miss Zoe Reilly', 5053971176590, 'https://placeit/200x300', 17, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(248, 1, 1, 8, '1725280', 'Ut et beatae voluptas ea qui alias.', 'Flavio Volkman', 3841617830089, 'https://placeit/200x300', 23, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(249, 1, 1, 2, '6083995', 'Accusantium voluptatibus nulla minima dolores.', 'Dr. Garry Haag V', 8120449692221, 'https://placeit/200x300', 16, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(250, 1, 1, 3, '8190391', 'Voluptas aliquid qui quia illo voluptatem.', 'Elissa Berge II', 514004975320, 'https://placeit/200x300', 21, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(251, 1, 1, 1, '8716875', 'Atque minima omnis necessitatibus animi dignissimos facere.', 'Wayne Towne', 2962127657117, 'https://placeit/200x300', 9, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(252, 1, 1, 2, '5030740', 'Corrupti nihil atque cupiditate nobis et tempora eligendi.', 'Monserrat Romaguera', 9166154483678, 'https://placeit/200x300', 12, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(253, 1, 1, 4, '3996081', 'Dignissimos qui est enim magni.', 'Wilma Tromp', 6806147310767, 'https://placeit/200x300', 13, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(254, 1, 1, 7, '6330388', 'Minus similique repellat praesentium eligendi.', 'Dr. Maynard Armstrong', 591715176826, 'https://placeit/200x300', 23, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(255, 1, 1, 2, '7747794', 'Molestiae eaque id eum.', 'Anika Langosh II', 7285538458469, 'https://placeit/200x300', 22, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(256, 1, 1, 4, '2898741', 'Id dolores quas ut quis.', 'Pearlie Bergnaum', 9353339842003, 'https://placeit/200x300', 15, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(257, 1, 1, 3, '8184417', 'Placeat impedit nobis modi voluptate corrupti.', 'Yasmin Dooley', 7465861380808, 'https://placeit/200x300', 7, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(258, 1, 1, 4, '8354143', 'Voluptatibus et quo quo quasi necessitatibus quidem.', 'Lori King', 4613979066777, 'https://placeit/200x300', 11, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(259, 1, 1, 1, '4898528', 'Maiores voluptatem eaque est nostrum sit.', 'Roman Zieme', 7113894410244, 'https://placeit/200x300', 17, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(260, 1, 1, 4, '4957871', 'Corporis neque labore aspernatur tempora non.', 'Oral Boyer', 2792988953789, 'https://placeit/200x300', 20, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(261, 1, 1, 2, '5609599', 'Nihil autem beatae vel sint dolorum praesentium.', 'Mr. Brannon Hegmann II', 4652742830153, 'https://placeit/200x300', 13, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(262, 1, 1, 6, '2868688', 'Perferendis accusamus hic ex odio.', 'Timmy Blanda', 2479053474485, 'https://placeit/200x300', 20, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(263, 1, 1, 6, '3345984', 'Impedit et et odit illo.', 'Roderick Rutherford', 5851316608368, 'https://placeit/200x300', 8, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(264, 1, 1, 8, '6463987', 'Fugit sapiente rerum laudantium velit velit voluptatibus.', 'Rahsaan Hickle', 8539300090906, 'https://placeit/200x300', 7, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(265, 1, 1, 8, '6899390', 'Molestiae quam blanditiis veritatis quo asperiores.', 'Casandra Bogisich DVM', 4980785237005, 'https://placeit/200x300', 6, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(266, 1, 1, 7, '6557902', 'Repudiandae corrupti mollitia fugiat qui qui.', 'Miss Hailie Feil', 9298570657927, 'https://placeit/200x300', 21, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(267, 1, 1, 2, '7924070', 'Consequatur est maiores sint sunt labore.', 'Juanita O\'Keefe', 7979354278768, 'https://placeit/200x300', 14, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(268, 1, 1, 7, '8849420', 'Quos enim libero quisquam nulla unde magnam.', 'Dr. Rosalinda Hegmann MD', 2295064689140, 'https://placeit/200x300', 14, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(269, 1, 1, 8, '6268514', 'Omnis quae voluptates hic suscipit quo.', 'Vivian Harris', 9775419077073, 'https://placeit/200x300', 13, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(270, 1, 1, 5, '8416295', 'Id numquam doloremque perspiciatis nulla.', 'Aaliyah Schoen', 9751892801145, 'https://placeit/200x300', 13, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(271, 1, 1, 7, '4609796', 'Esse accusamus et repudiandae et aut et.', 'Lila Hayes III', 9156316362750, 'https://placeit/200x300', 13, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(272, 1, 1, 2, '6833156', 'Vitae aperiam aut omnis.', 'Roxane Christiansen', 9328548073821, 'https://placeit/200x300', 18, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(273, 1, 1, 7, '7797719', 'Rerum quia mollitia quo corrupti.', 'Carolanne Metz', 1486866666830, 'https://placeit/200x300', 10, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(274, 1, 1, 3, '4602772', 'Ex ut dolor consequatur.', 'Lorenzo Schulist Jr.', 3586337413524, 'https://placeit/200x300', 17, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(275, 1, 1, 10, '6460881', 'Aut qui mollitia dolorem.', 'Delpha Marks DDS', 3355325571474, 'https://placeit/200x300', 9, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(276, 1, 1, 2, '7006406', 'Eligendi cumque cumque culpa est velit.', 'Dr. Bertrand Mayer II', 4111767053874, 'https://placeit/200x300', 13, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(277, 1, 1, 8, '5574319', 'Sint dolorem ratione quia ipsum aut.', 'Vella Rogahn', 3355761654182, 'https://placeit/200x300', 9, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(278, 1, 1, 3, '2400663', 'Quod quas reprehenderit dolore accusamus.', 'Mr. Junius Williamson DDS', 3074497361859, 'https://placeit/200x300', 19, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(279, 1, 1, 3, '3175922', 'Praesentium repellat et rerum quidem.', 'Stevie Hansen', 2315511217266, 'https://placeit/200x300', 20, '2026-08-12 07:38:44', '2026-08-12 07:38:44');
INSERT INTO `books` (`id`, `school_id`, `academic_year_id`, `category_id`, `book_code`, `title`, `author`, `isbn_number`, `cover_image`, `availability`, `created_at`, `updated_at`) VALUES
(280, 1, 1, 5, '5526130', 'Officiis placeat sint aut.', 'Max Bahringer', 3129762364346, 'https://placeit/200x300', 11, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(281, 1, 1, 3, '4136565', 'Voluptas et aut ad repellendus accusantium.', 'Mrs. Desiree Legros', 5514355872168, 'https://placeit/200x300', 21, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(282, 1, 1, 3, '5099917', 'Voluptas dolores sed animi et asperiores.', 'Nicolette Runolfsdottir MD', 3923220782693, 'https://placeit/200x300', 22, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(283, 1, 1, 8, '1876128', 'Adipisci iste dolorum id accusamus.', 'Eli Rau Jr.', 5709391789307, 'https://placeit/200x300', 25, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(284, 1, 1, 6, '3645012', 'Ut non sunt cum qui.', 'Mr. Keegan Dickinson III', 198326448245, 'https://placeit/200x300', 24, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(285, 1, 1, 4, '2346034', 'Eos dolor temporibus labore.', 'Odessa Murray', 1449965432720, 'https://placeit/200x300', 11, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(286, 1, 1, 5, '1915282', 'Voluptas magni aut expedita numquam corporis laborum.', 'Dr. Dovie Hyatt IV', 561477340834, 'https://placeit/200x300', 6, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(287, 1, 1, 6, '3985659', 'Ut et temporibus excepturi doloremque ab assumenda.', 'Alexandria Bergstrom', 4797494043731, 'https://placeit/200x300', 25, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(288, 1, 1, 4, '4788981', 'Aut libero iste tempora vel vel.', 'Carmine Kub', 8000413084477, 'https://placeit/200x300', 15, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(289, 1, 1, 6, '5966954', 'Illo est quia voluptatum eligendi et.', 'Adele Bailey', 4023096055255, 'https://placeit/200x300', 12, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(290, 1, 1, 2, '7377436', 'Rerum in quia aut.', 'Carlee Nikolaus DDS', 1653886682267, 'https://placeit/200x300', 24, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(291, 1, 1, 8, '1375312', 'Explicabo corporis dolores repellendus ullam.', 'Shanelle Labadie', 8278620286469, 'https://placeit/200x300', 8, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(292, 1, 1, 7, '2024903', 'Quasi velit dicta quia sequi.', 'Javon Sawayn', 4343634672813, 'https://placeit/200x300', 15, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(293, 1, 1, 2, '4502736', 'Inventore voluptates et voluptate amet.', 'Sam Mueller', 1318218542113, 'https://placeit/200x300', 7, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(294, 1, 1, 4, '5498593', 'Perspiciatis architecto dolor accusamus autem est.', 'Miss Delilah Wilkinson MD', 493879070500, 'https://placeit/200x300', 17, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(295, 1, 1, 6, '4190999', 'Tempore omnis architecto earum quas.', 'Prof. Jocelyn Boehm', 1114182496526, 'https://placeit/200x300', 15, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(296, 1, 1, 8, '6353135', 'Pariatur consequatur error excepturi ex repellat.', 'Dr. Dagmar Nitzsche', 5804613474891, 'https://placeit/200x300', 12, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(297, 1, 1, 5, '7364892', 'Minima inventore voluptas qui error fuga.', 'Dr. Wilton Schneider', 746133521561, 'https://placeit/200x300', 11, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(298, 1, 1, 6, '3523038', 'Reiciendis et totam nisi accusamus iusto numquam.', 'Jaycee Barrows', 5875139898072, 'https://placeit/200x300', 20, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(299, 1, 1, 5, '2831035', 'Ut mollitia modi autem qui.', 'Emory Kuhic Jr.', 3231414359133, 'https://placeit/200x300', 8, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(300, 1, 1, 6, '4649690', 'Non id tempore aut commodi ipsam.', 'Bryana Rau', 6106880697560, 'https://placeit/200x300', 10, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(301, 1, 1, 3, '3423287', 'Velit numquam nobis cumque.', 'Jason Fisher DDS', 3811270417002, 'https://placeit/200x300', 16, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(302, 1, 1, 7, '2455757', 'Sint iure sit dolores autem.', 'Lolita Feest', 5639430325688, 'https://placeit/200x300', 7, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(303, 1, 1, 1, '5652727', 'Dignissimos sit perferendis earum.', 'Dr. Marcos Steuber IV', 5969987815975, 'https://placeit/200x300', 23, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(304, 1, 1, 1, '1148124', 'Quas in vero sint nisi laborum voluptas.', 'Amy Hudson', 5359590961747, 'https://placeit/200x300', 18, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(305, 1, 1, 6, '5802404', 'Voluptatibus odit et eos.', 'Darrion Turcotte', 8017577526965, 'https://placeit/200x300', 19, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(306, 1, 1, 2, '6445148', 'Rerum aliquid porro perspiciatis occaecati.', 'Cathy Senger', 2298483570846, 'https://placeit/200x300', 20, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(307, 1, 1, 8, '5514534', 'Qui pariatur eaque voluptas qui.', 'Mr. Maximilian Osinski', 5204707911606, 'https://placeit/200x300', 25, '2026-08-12 07:38:44', '2026-08-12 07:38:44'),
(308, 1, 1, 6, '6188367', 'Sit mollitia temporibus ea quaerat et nesciunt.', 'Misael Schaden', 364155366917, 'https://placeit/200x300', 11, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(309, 1, 1, 4, '1549948', 'A tempora assumenda ipsam quidem doloremque.', 'Mr. Vaughn Doyle III', 3234547161970, 'https://placeit/200x300', 19, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(310, 1, 1, 7, '3479866', 'Quod provident enim reprehenderit explicabo illum.', 'Gerson Lind DDS', 785070126033, 'https://placeit/200x300', 8, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(311, 1, 1, 5, '3476752', 'Quas possimus libero et.', 'Deshaun Russel', 7274203097645, 'https://placeit/200x300', 9, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(312, 1, 1, 1, '5602789', 'Veritatis sequi sequi rerum iure corporis.', 'Delilah Schinner', 8673299554176, 'https://placeit/200x300', 22, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(313, 1, 1, 3, '8776667', 'Soluta qui ipsam quas impedit in.', 'Betsy Smitham', 1035019480238, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(314, 1, 1, 2, '4959670', 'Dolor pariatur excepturi quos.', 'Adrian Feest', 5095379075792, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(315, 1, 1, 10, '4827475', 'Aut laborum qui quas.', 'Electa Cormier DVM', 602197621473, 'https://placeit/200x300', 16, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(316, 1, 1, 1, '6416298', 'Natus harum aliquid enim doloremque maxime dolores.', 'Alfonso Hettinger', 8420375288629, 'https://placeit/200x300', 23, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(317, 1, 1, 1, '1370857', 'Vel aut omnis sed distinctio sequi beatae.', 'Eddie Herman', 6207559744001, 'https://placeit/200x300', 6, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(318, 1, 1, 9, '7201028', 'Velit ea pariatur quibusdam.', 'Karson Altenwerth', 4573463626293, 'https://placeit/200x300', 6, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(319, 1, 1, 4, '5353834', 'Dolorem labore consectetur dolor consequatur.', 'Dr. Rodrigo Mann', 9180572623454, 'https://placeit/200x300', 10, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(320, 1, 1, 6, '7751123', 'Id quia quam voluptatum rem cum voluptatem cupiditate.', 'Lenore Fadel', 2314254970506, 'https://placeit/200x300', 11, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(321, 1, 1, 7, '2487823', 'Et deleniti ipsa cupiditate sit deserunt.', 'Raven Gaylord II', 2715935681092, 'https://placeit/200x300', 9, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(322, 1, 1, 5, '4083968', 'Quo aut dicta reiciendis vero soluta.', 'Vella Brown', 2731221644299, 'https://placeit/200x300', 5, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(323, 1, 1, 5, '3355466', 'Aut ab et distinctio.', 'Mrs. Kamille Collier III', 8638470108586, 'https://placeit/200x300', 21, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(324, 1, 1, 10, '6473692', 'Animi nam accusantium fuga laboriosam enim.', 'Jasmin Walsh', 8799139447962, 'https://placeit/200x300', 22, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(325, 1, 1, 6, '4852530', 'Ex culpa quisquam magni dolores laudantium illum.', 'Ubaldo Littel', 3694298781986, 'https://placeit/200x300', 14, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(326, 1, 1, 1, '8858686', 'Ad quidem facere ut voluptates voluptatem.', 'Karolann Goyette IV', 1244512717332, 'https://placeit/200x300', 20, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(327, 1, 1, 2, '6547681', 'Ipsa aspernatur eaque aspernatur laborum suscipit.', 'Callie Schimmel', 6605583208108, 'https://placeit/200x300', 8, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(328, 1, 1, 9, '5385001', 'Quia odio hic blanditiis saepe.', 'Taylor Littel', 6207293738694, 'https://placeit/200x300', 18, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(329, 1, 1, 2, '3649297', 'Minus velit perferendis soluta aperiam est.', 'Myrtie Grady', 7321660769223, 'https://placeit/200x300', 11, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(330, 1, 1, 10, '5419040', 'Ea alias ipsum sed vitae quia.', 'Geo O\'Conner', 6202192763860, 'https://placeit/200x300', 22, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(331, 1, 1, 2, '2251350', 'Et dolorem est aut mollitia libero.', 'Emiliano Hudson', 4744418916602, 'https://placeit/200x300', 9, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(332, 1, 1, 1, '5918180', 'Omnis est labore hic a.', 'Prof. Jake Rohan Sr.', 5879562088635, 'https://placeit/200x300', 24, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(333, 1, 1, 1, '6570288', 'Aperiam dolorem quia sit.', 'Diamond Kessler II', 4413481117536, 'https://placeit/200x300', 19, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(334, 1, 1, 7, '8673204', 'A magni ut dicta ut.', 'Reba Huel', 746246476925, 'https://placeit/200x300', 8, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(335, 1, 1, 9, '6285198', 'Aut et pariatur sint deserunt nobis.', 'Virginia Bahringer', 1704885637335, 'https://placeit/200x300', 16, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(336, 1, 1, 1, '1804338', 'Asperiores illo eius ipsam ea consequatur dolore.', 'Dr. Rebeca Ankunding IV', 4136227599969, 'https://placeit/200x300', 8, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(337, 1, 1, 8, '6286681', 'Eum enim optio modi.', 'Ms. Orpha Homenick', 6722962019312, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(338, 1, 1, 9, '7242343', 'Libero delectus est sequi autem.', 'Gerardo Wintheiser', 2775445605766, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(339, 1, 1, 1, '6728928', 'Sunt velit consequatur eum voluptatibus.', 'Reyna Denesik', 7181815515149, 'https://placeit/200x300', 17, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(340, 1, 1, 3, '8415440', 'Eos excepturi ipsam blanditiis nisi quia tempora.', 'Ms. Elissa Franecki', 6378459189817, 'https://placeit/200x300', 6, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(341, 1, 1, 5, '2423539', 'Sequi omnis vel maxime.', 'Viola Kris', 884219962911, 'https://placeit/200x300', 8, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(342, 1, 1, 10, '5075762', 'Magnam tenetur deserunt ullam.', 'Tyler Lang', 6675767931931, 'https://placeit/200x300', 9, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(343, 1, 1, 8, '5078547', 'Qui assumenda et qui.', 'Tatum Fahey', 6752824764388, 'https://placeit/200x300', 24, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(344, 1, 1, 3, '2317616', 'Ullam veniam eligendi dolor ipsum.', 'Jerrod Sipes', 1424222776779, 'https://placeit/200x300', 21, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(345, 1, 1, 5, '5004953', 'Dolores nobis repudiandae eius sapiente.', 'Dr. Roberto Crona', 4338102714430, 'https://placeit/200x300', 13, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(346, 1, 1, 1, '4585650', 'Doloremque quasi perspiciatis ratione dolores et.', 'Nona Davis', 4789631638245, 'https://placeit/200x300', 15, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(347, 1, 1, 1, '6188678', 'Sit dolores possimus ut natus.', 'Viva Larson', 7295314364013, 'https://placeit/200x300', 22, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(348, 1, 1, 5, '8783017', 'Sit est in animi et et.', 'Miss Catherine Kub', 5023465672334, 'https://placeit/200x300', 15, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(349, 1, 1, 4, '6248208', 'Corporis et distinctio enim dolorem.', 'Wanda Towne', 1417907922431, 'https://placeit/200x300', 10, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(350, 1, 1, 2, '2207123', 'Ab impedit et quo architecto qui.', 'Retha Lueilwitz', 2665523852994, 'https://placeit/200x300', 7, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(351, 1, 1, 10, '5316843', 'Perspiciatis fugiat sunt autem blanditiis.', 'Jeff Hoppe', 5485820490562, 'https://placeit/200x300', 22, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(352, 1, 1, 1, '8056481', 'Error ab quo harum.', 'Philip Block', 5449757342264, 'https://placeit/200x300', 11, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(353, 1, 1, 2, '1101732', 'Quae omnis necessitatibus consectetur reiciendis dicta.', 'Laura Weimann', 1218343491754, 'https://placeit/200x300', 10, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(354, 1, 1, 7, '2294503', 'Iusto dolores occaecati magni.', 'Syble Tromp', 5299554542806, 'https://placeit/200x300', 9, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(355, 1, 1, 8, '2300731', 'Perspiciatis voluptatum reprehenderit qui quia hic exercitationem.', 'Winifred Dooley', 2016793910820, 'https://placeit/200x300', 13, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(356, 1, 1, 7, '3677036', 'Tempora voluptatem voluptas dolores perspiciatis.', 'Mr. Enrique Auer', 4944230241085, 'https://placeit/200x300', 9, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(357, 1, 1, 5, '3282262', 'Vel et corporis eius ad exercitationem odit.', 'Morton Conn', 3779072464559, 'https://placeit/200x300', 13, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(358, 1, 1, 7, '3284817', 'Tempora aliquid illo similique.', 'Corene Denesik', 3344577001440, 'https://placeit/200x300', 19, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(359, 1, 1, 2, '7542036', 'Consequatur ab eligendi fugit beatae eum.', 'Rebekah Larkin DVM', 2234720663797, 'https://placeit/200x300', 5, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(360, 1, 1, 10, '5976410', 'Voluptatem repellat deserunt consequatur.', 'Angelica Stroman', 981784489109, 'https://placeit/200x300', 7, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(361, 1, 1, 9, '4506807', 'Minus veniam aut necessitatibus rerum.', 'Ms. Alysa Durgan', 1567276496221, 'https://placeit/200x300', 21, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(362, 1, 1, 9, '2837376', 'Nulla laborum voluptatem fuga sunt.', 'Jason Skiles IV', 475656387162, 'https://placeit/200x300', 23, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(363, 1, 1, 7, '5875265', 'Aliquam facere unde recusandae voluptatibus.', 'Prof. Adele Sauer', 7010312231781, 'https://placeit/200x300', 19, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(364, 1, 1, 1, '6215581', 'Labore ut laudantium ea iste ratione quae.', 'Prof. Oswaldo Emard', 2216325861297, 'https://placeit/200x300', 22, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(365, 1, 1, 10, '5638663', 'Soluta officia dolore sed.', 'Cory Thompson', 8245841094791, 'https://placeit/200x300', 9, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(366, 1, 1, 6, '3494969', 'Quaerat quidem adipisci vitae aliquid rerum.', 'Prof. Jaron Bogan IV', 4468469200236, 'https://placeit/200x300', 21, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(367, 1, 1, 1, '1110069', 'Nemo autem quos enim perferendis et.', 'Trever Barrows', 513148526948, 'https://placeit/200x300', 20, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(368, 1, 1, 5, '1158634', 'Nemo deleniti est eos accusamus saepe quis voluptates.', 'Sandrine Hintz', 4049703574902, 'https://placeit/200x300', 13, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(369, 1, 1, 2, '8167885', 'Accusamus accusantium corporis nihil ut dolor.', 'Raul Gaylord', 2422380278684, 'https://placeit/200x300', 19, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(370, 1, 1, 4, '7860335', 'Incidunt qui id aut.', 'Donny Denesik', 4003610038520, 'https://placeit/200x300', 5, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(371, 1, 1, 3, '4774615', 'Odio beatae rerum aut et beatae doloremque.', 'Elwin Schuppe II', 8689599000411, 'https://placeit/200x300', 21, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(372, 1, 1, 2, '3465079', 'Hic in aut dolores illo.', 'Leda Hintz', 3580442382454, 'https://placeit/200x300', 20, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(373, 1, 1, 9, '5227893', 'Qui dicta voluptatum animi quod quas.', 'Nathan Hahn', 1461656119109, 'https://placeit/200x300', 6, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(374, 1, 1, 1, '2331670', 'Id sed numquam eveniet.', 'Dr. Pansy Batz', 3823615896281, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(375, 1, 1, 8, '6611805', 'Quia est ut fugiat in.', 'Prof. Manuela Williamson', 4277280685456, 'https://placeit/200x300', 7, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(376, 1, 1, 4, '4995238', 'Nisi repudiandae quia mollitia.', 'Karlie Kohler', 6546329860597, 'https://placeit/200x300', 22, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(377, 1, 1, 1, '5750364', 'Tenetur ut est et fuga exercitationem eum.', 'Carroll Davis', 3393576550411, 'https://placeit/200x300', 5, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(378, 1, 1, 9, '6805676', 'Dolor laborum voluptatem nisi alias voluptates molestiae.', 'Alexzander Gulgowski', 2131361274576, 'https://placeit/200x300', 10, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(379, 1, 1, 8, '6312650', 'Enim dolores quia dicta.', 'Dr. Itzel Wintheiser IV', 4743997293029, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(380, 1, 1, 9, '7951143', 'Molestiae aliquam provident quis deserunt.', 'Pietro Jacobs', 7453987987971, 'https://placeit/200x300', 18, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(381, 1, 1, 3, '4022079', 'Eos nostrum odio non.', 'Morris Batz I', 6714451252201, 'https://placeit/200x300', 20, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(382, 1, 1, 9, '1901427', 'Qui minima quis nihil animi.', 'Maverick Walsh', 9716512145047, 'https://placeit/200x300', 16, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(383, 1, 1, 5, '4807019', 'Et laborum dolorum corporis aliquid ea qui.', 'Aidan Schoen', 5373847593604, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(384, 1, 1, 4, '5601891', 'Voluptatibus quo doloremque dolore aut.', 'Ila Howe IV', 1994144739652, 'https://placeit/200x300', 10, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(385, 1, 1, 2, '7647599', 'Quas rem fuga aperiam.', 'Prof. Jaleel Gleichner II', 501690360394, 'https://placeit/200x300', 19, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(386, 1, 1, 2, '3367308', 'Non rerum commodi sunt commodi placeat.', 'Dr. Orrin Waelchi', 8032893482177, 'https://placeit/200x300', 20, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(387, 1, 1, 5, '5357951', 'Aut ad temporibus fugiat voluptas dolor.', 'Augustus Bins DDS', 4705361573663, 'https://placeit/200x300', 11, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(388, 1, 1, 5, '5026157', 'Saepe eveniet veritatis voluptatem deserunt.', 'Noble Wuckert', 1742419023216, 'https://placeit/200x300', 24, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(389, 1, 1, 5, '2473904', 'Sint dolor adipisci omnis sed deserunt.', 'Nathanial Lind', 1832169916514, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(390, 1, 1, 1, '6629769', 'Minima nulla cum omnis sit.', 'Ms. Hassie Schamberger', 488224545666, 'https://placeit/200x300', 20, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(391, 1, 1, 4, '1483415', 'Necessitatibus dolores aspernatur expedita.', 'Prof. Adell Wiegand IV', 4815283453094, 'https://placeit/200x300', 5, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(392, 1, 1, 9, '1464141', 'Maxime blanditiis quia alias.', 'Dr. Treva Ernser', 3275165409136, 'https://placeit/200x300', 13, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(393, 1, 1, 2, '3358140', 'Qui alias odio sed officia.', 'Clark Rosenbaum', 7967181039324, 'https://placeit/200x300', 23, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(394, 1, 1, 4, '6918693', 'Ut corporis eos amet.', 'Nichole Kris II', 6555130059649, 'https://placeit/200x300', 25, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(395, 1, 1, 10, '8321366', 'Qui praesentium et exercitationem.', 'Dr. Claudia Cronin', 9607421784093, 'https://placeit/200x300', 12, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(396, 1, 1, 2, '4384916', 'Nisi sint illo rerum ea hic accusamus.', 'Prof. Rae Wisozk', 9443806045072, 'https://placeit/200x300', 5, '2026-08-12 07:38:45', '2026-08-12 07:38:45'),
(397, 1, 1, 6, '5847590', 'Eos eligendi dolor ducimus in nostrum.', 'Adam Thompson', 2966152514131, 'https://placeit/200x300', 16, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(398, 1, 1, 8, '3074205', 'Perferendis consequatur sit odit explicabo dignissimos ut.', 'Kiley Nikolaus', 3990190164293, 'https://placeit/200x300', 24, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(399, 1, 1, 1, '8104695', 'Labore eveniet fugit sed dicta.', 'Juston Rogahn', 1035561361740, 'https://placeit/200x300', 15, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(400, 1, 1, 8, '2329165', 'Placeat optio libero quae dolore consequatur.', 'Mr. Ibrahim Mosciski', 6596243574001, 'https://placeit/200x300', 13, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(401, 1, 1, 6, '4983883', 'Sint quia voluptatum veritatis veritatis.', 'Rory Rippin', 4048789965093, 'https://placeit/200x300', 11, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(402, 1, 1, 10, '8617502', 'Libero quo error officia.', 'Agustin Miller', 9614876056613, 'https://placeit/200x300', 18, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(403, 1, 1, 1, '4239764', 'Ratione reprehenderit placeat velit porro mollitia.', 'Conor Deckow V', 8486605091629, 'https://placeit/200x300', 24, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(404, 1, 1, 1, '5738078', 'Laudantium quis est rem.', 'Mrs. Carolina Pouros', 6074792777468, 'https://placeit/200x300', 15, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(405, 1, 1, 4, '8576873', 'In officiis aut est repudiandae voluptas.', 'Emil Beatty', 5497993623883, 'https://placeit/200x300', 22, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(406, 1, 1, 9, '8433710', 'Ab quis reiciendis aut voluptates.', 'Katharina Nader', 1007579720512, 'https://placeit/200x300', 25, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(407, 1, 1, 3, '7095219', 'Ex est dicta eos praesentium veniam voluptatem.', 'Freda Huels', 4142674339270, 'https://placeit/200x300', 17, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(408, 1, 1, 10, '5577101', 'Velit repudiandae omnis eum eos a.', 'Pearl Waelchi', 4376498828010, 'https://placeit/200x300', 16, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(409, 1, 1, 1, '8869712', 'Quod incidunt rerum id adipisci voluptates nisi.', 'Tillman Tromp', 1432275895033, 'https://placeit/200x300', 22, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(410, 1, 1, 1, '7250505', 'Rem aut dolor nihil.', 'Anissa Ernser', 2908207692210, 'https://placeit/200x300', 10, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(411, 1, 1, 4, '4059635', 'Totam ratione quibusdam nihil ut cupiditate molestiae.', 'Markus Schowalter DDS', 2639672625082, 'https://placeit/200x300', 25, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(412, 1, 1, 8, '4736609', 'Provident autem impedit aspernatur rem dolorem.', 'Mr. Torrance Eichmann', 663420323038, 'https://placeit/200x300', 20, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(413, 1, 1, 2, '3416488', 'Aliquid cumque magnam quidem ad facilis.', 'Chelsey Marks DDS', 6792794364126, 'https://placeit/200x300', 10, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(414, 1, 1, 7, '8445187', 'Quidem quaerat unde error dicta.', 'Ozella O\'Kon III', 7789308878797, 'https://placeit/200x300', 20, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(415, 1, 1, 3, '3855725', 'Tempore non molestias tempore nulla provident.', 'Lucie Grady IV', 9413875063321, 'https://placeit/200x300', 12, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(416, 1, 1, 4, '1314917', 'Laborum voluptas possimus qui.', 'Alba Wilderman', 5659794424933, 'https://placeit/200x300', 6, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(417, 1, 1, 1, '1701303', 'Facilis impedit tempore id.', 'Mr. Walter Gutkowski', 5942769444150, 'https://placeit/200x300', 25, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(418, 1, 1, 1, '4762987', 'Praesentium enim nam aspernatur.', 'Prof. Quinten Feeney', 9858941303374, 'https://placeit/200x300', 18, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(419, 1, 1, 2, '6542372', 'Sint laborum ea voluptatem dolor.', 'Lillian Homenick', 5388870656219, 'https://placeit/200x300', 17, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(420, 1, 1, 9, '8236659', 'Est fugiat excepturi et sed alias sapiente.', 'Dr. Jamir Lakin DDS', 9094637502915, 'https://placeit/200x300', 24, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(421, 1, 1, 1, '1237128', 'Perferendis ab sed repellat.', 'Ken Gulgowski', 6555058160212, 'https://placeit/200x300', 10, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(422, 1, 1, 6, '5063211', 'Animi veritatis accusantium aut nisi repudiandae consequuntur.', 'Dr. Leanne Halvorson', 2844092115031, 'https://placeit/200x300', 21, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(423, 1, 1, 5, '7995972', 'Soluta voluptatum recusandae eligendi distinctio eos.', 'Filomena Hane', 9539627657218, 'https://placeit/200x300', 17, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(424, 1, 1, 8, '7757477', 'Sapiente pariatur occaecati et vero.', 'Dr. Desiree Gottlieb Sr.', 3753897408417, 'https://placeit/200x300', 16, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(425, 1, 1, 3, '8354004', 'Optio rerum perferendis quod dolorem blanditiis odit.', 'Izaiah Hoppe', 8050333466259, 'https://placeit/200x300', 12, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(426, 1, 1, 3, '1871431', 'Vitae voluptatem nam fugit.', 'Johnpaul Will', 7255768281977, 'https://placeit/200x300', 5, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(427, 1, 1, 1, '2981826', 'Quo et ut ab.', 'Alva Davis', 4204436966275, 'https://placeit/200x300', 22, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(428, 1, 1, 3, '1664665', 'Expedita pariatur corrupti assumenda rerum velit.', 'Prof. Giovani Leuschke MD', 6109912990103, 'https://placeit/200x300', 22, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(429, 1, 1, 8, '4671755', 'Rerum dolores facilis qui doloremque.', 'Prof. Esta Kilback', 2213005869475, 'https://placeit/200x300', 7, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(430, 1, 1, 2, '8543871', 'Eum laboriosam consequatur consequatur ratione velit repudiandae.', 'Cecilia Borer', 3172140124223, 'https://placeit/200x300', 20, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(431, 1, 1, 8, '2893082', 'Aut eligendi magnam provident.', 'Ladarius Cruickshank', 100950795541, 'https://placeit/200x300', 24, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(432, 1, 1, 9, '7625928', 'Harum laborum quaerat nemo.', 'Favian Beatty', 9995548829231, 'https://placeit/200x300', 19, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(433, 1, 1, 1, '8226623', 'Fuga in neque qui odio quia amet.', 'May Lebsack', 6716842857101, 'https://placeit/200x300', 23, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(434, 1, 1, 10, '4651950', 'Doloribus esse sed consequatur sit.', 'Verona Corkery', 9485652184512, 'https://placeit/200x300', 13, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(435, 1, 1, 10, '7942572', 'Est dolores officia enim laborum aut nostrum.', 'Mrs. Lindsay Anderson III', 1751839535438, 'https://placeit/200x300', 15, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(436, 1, 1, 10, '1709613', 'Praesentium aut nihil id laborum.', 'Hudson Ullrich', 6894440987908, 'https://placeit/200x300', 25, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(437, 1, 1, 10, '4437858', 'Delectus et eos perferendis.', 'Ruby Quigley Sr.', 7239533197854, 'https://placeit/200x300', 5, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(438, 1, 1, 6, '1225042', 'Maxime consequatur perspiciatis suscipit.', 'Raquel Hansen', 491664782959, 'https://placeit/200x300', 7, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(439, 1, 1, 3, '6778308', 'Eos eum et quaerat repellat sunt accusamus.', 'Adell Swift', 6283065280578, 'https://placeit/200x300', 10, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(440, 1, 1, 7, '7575849', 'Quos consequuntur pariatur qui.', 'Bradly Ortiz', 4679240155335, 'https://placeit/200x300', 7, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(441, 1, 1, 7, '3628721', 'Natus occaecati et laboriosam itaque dignissimos.', 'Dr. Marie O\'Reilly MD', 7182460688738, 'https://placeit/200x300', 6, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(442, 1, 1, 6, '5197491', 'Ullam nostrum enim neque.', 'Santiago Hoeger', 6587803861006, 'https://placeit/200x300', 14, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(443, 1, 1, 5, '6443602', 'Repellendus reprehenderit voluptate totam.', 'Brycen Jones', 9818273928065, 'https://placeit/200x300', 12, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(444, 1, 1, 2, '2521012', 'Molestiae id delectus necessitatibus rerum.', 'Daisy Sipes V', 1026040225950, 'https://placeit/200x300', 17, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(445, 1, 1, 5, '6922879', 'Vel eaque sed dolorem.', 'Prof. Ellis Nader IV', 8785375954197, 'https://placeit/200x300', 9, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(446, 1, 1, 1, '3955954', 'Nihil provident aliquam eum voluptas accusantium.', 'Joseph Gottlieb', 7052874120073, 'https://placeit/200x300', 20, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(447, 1, 1, 3, '7653362', 'Aut eum aut consectetur sint.', 'Prof. Price Treutel', 6636244123058, 'https://placeit/200x300', 16, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(448, 1, 1, 1, '1939028', 'Ipsum eligendi neque dolores quis ea iure.', 'Connie Feil', 3880419523782, 'https://placeit/200x300', 8, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(449, 1, 1, 2, '4652588', 'Nesciunt praesentium consectetur ipsa.', 'Herminia Marks', 7362378855785, 'https://placeit/200x300', 17, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(450, 1, 1, 5, '8093110', 'Non facilis et ut.', 'Miss Marguerite Kihn Sr.', 8861434218001, 'https://placeit/200x300', 11, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(451, 1, 1, 8, '2766553', 'Quia ut ut et.', 'Mr. Haley Boyle Sr.', 8669016710628, 'https://placeit/200x300', 5, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(452, 1, 1, 2, '6559763', 'Qui molestiae architecto sapiente officia tempora.', 'Delfina O\'Hara', 3768150279505, 'https://placeit/200x300', 21, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(453, 1, 1, 4, '1177746', 'Velit veniam ipsum aut numquam.', 'Garrick Buckridge', 7153917094730, 'https://placeit/200x300', 15, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(454, 1, 1, 6, '2826366', 'Est labore enim nostrum.', 'Eldora Rath MD', 1977193107467, 'https://placeit/200x300', 10, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(455, 1, 1, 5, '8034534', 'Doloribus occaecati assumenda aut.', 'Aniya Sporer', 1841445006580, 'https://placeit/200x300', 8, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(456, 1, 1, 6, '2202602', 'Corporis delectus quasi dolores tenetur vero ipsum.', 'Forest Friesen', 801028683714, 'https://placeit/200x300', 9, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(457, 1, 1, 6, '1285050', 'Ut eos unde ipsam.', 'Carissa Larson', 9126684151423, 'https://placeit/200x300', 12, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(458, 1, 1, 2, '7019611', 'Et rerum voluptas et commodi.', 'Rita Witting', 9538767454992, 'https://placeit/200x300', 25, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(459, 1, 1, 7, '2808730', 'Veritatis corrupti in pariatur.', 'Gracie Feest', 4337635090547, 'https://placeit/200x300', 10, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(460, 1, 1, 2, '3536699', 'Quis quia odio quasi qui et.', 'Rahul McKenzie', 2039707908737, 'https://placeit/200x300', 15, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(461, 1, 1, 8, '5676831', 'Ducimus et et odit sunt.', 'Dr. Reggie Mosciski', 2707706963612, 'https://placeit/200x300', 19, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(462, 1, 1, 8, '6564518', 'Eveniet necessitatibus sed laboriosam molestiae voluptatum consequatur.', 'Prof. Jamarcus Rodriguez', 5246687167840, 'https://placeit/200x300', 19, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(463, 1, 1, 7, '2452783', 'Cupiditate sunt dolor a qui rerum.', 'Gayle Ortiz', 6762335575182, 'https://placeit/200x300', 19, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(464, 1, 1, 9, '2558811', 'Veniam totam accusamus deserunt voluptatibus.', 'Alice Wintheiser', 4786460906538, 'https://placeit/200x300', 7, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(465, 1, 1, 6, '5403417', 'Consectetur est nihil at est.', 'Elouise Rodriguez', 4687395358228, 'https://placeit/200x300', 24, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(466, 1, 1, 9, '5859761', 'Rerum molestiae laborum veritatis sit perspiciatis.', 'Ms. Muriel Bartell', 8265123373697, 'https://placeit/200x300', 18, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(467, 1, 1, 5, '4101038', 'Nihil qui dolorem ea qui voluptates facilis.', 'Floyd Raynor', 9842132944972, 'https://placeit/200x300', 18, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(468, 1, 1, 4, '7650552', 'Quasi voluptatibus qui accusamus aliquam.', 'Watson Kertzmann', 8698229861285, 'https://placeit/200x300', 10, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(469, 1, 1, 8, '7146767', 'Vitae quo sint porro aliquid.', 'Mr. Xander Eichmann', 5702346806968, 'https://placeit/200x300', 8, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(470, 1, 1, 3, '6973498', 'Non aut rerum sit quae.', 'Elvis Torphy', 9439268675643, 'https://placeit/200x300', 5, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(471, 1, 1, 8, '5496599', 'Enim amet reprehenderit eum culpa consectetur recusandae.', 'Neha Heaney', 163396977315, 'https://placeit/200x300', 21, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(472, 1, 1, 4, '5674257', 'Voluptate sunt rerum odio officiis.', 'Kaleigh Kovacek', 7454145682219, 'https://placeit/200x300', 14, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(473, 1, 1, 8, '3953487', 'Consequatur et est velit.', 'Prof. Pat Douglas IV', 5502642846886, 'https://placeit/200x300', 9, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(474, 1, 1, 1, '2150307', 'Accusantium consectetur officia temporibus nemo odio quia.', 'Prof. Aracely Stehr', 3251856953454, 'https://placeit/200x300', 12, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(475, 1, 1, 9, '4190280', 'Consectetur temporibus blanditiis soluta nisi totam iste.', 'Terrance Mertz', 357605442217, 'https://placeit/200x300', 22, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(476, 1, 1, 1, '4541011', 'Ut enim atque asperiores non nam.', 'Arvid Morissette', 2685763043891, 'https://placeit/200x300', 23, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(477, 1, 1, 9, '1732143', 'Officiis omnis incidunt nulla aut eveniet.', 'Dovie King', 1154763369658, 'https://placeit/200x300', 23, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(478, 1, 1, 10, '7460948', 'Quis sunt alias possimus et consequatur magnam.', 'Oleta Macejkovic', 4579841157014, 'https://placeit/200x300', 19, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(479, 1, 1, 5, '3063814', 'Voluptatum velit ratione animi aut voluptatem.', 'Zakary Ledner', 7594146358499, 'https://placeit/200x300', 12, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(480, 1, 1, 6, '6962007', 'Omnis sint harum sequi sint.', 'Grace Torphy', 9030434215122, 'https://placeit/200x300', 17, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(481, 1, 1, 9, '2149369', 'Autem temporibus eius quia rerum.', 'Hope Macejkovic', 6262248901103, 'https://placeit/200x300', 10, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(482, 1, 1, 10, '1262715', 'Reprehenderit eum non possimus ducimus.', 'Holly Fadel', 3251714480092, 'https://placeit/200x300', 11, '2026-08-12 07:38:46', '2026-08-12 07:38:46'),
(483, 1, 1, 7, '8695974', 'Molestiae aut hic voluptatibus cumque.', 'Mrs. Macy Greenfelder', 6285306842071, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(484, 1, 1, 7, '4635376', 'Nulla cumque aut sit consequatur assumenda.', 'Dr. Casper Abshire', 5363532222230, 'https://placeit/200x300', 24, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(485, 1, 1, 1, '6756126', 'Ipsam rerum qui et eum iste esse.', 'Jamal Marks', 595369899155, 'https://placeit/200x300', 14, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(486, 1, 1, 9, '5735505', 'At nihil voluptate temporibus voluptas.', 'Sam Dickens', 8180769298305, 'https://placeit/200x300', 22, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(487, 1, 1, 10, '7242228', 'Consectetur eos quasi nihil.', 'Ottilie Brekke', 5522347648875, 'https://placeit/200x300', 18, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(488, 1, 1, 9, '1183131', 'Officiis fuga enim ut.', 'Bulah Glover', 7631716489754, 'https://placeit/200x300', 13, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(489, 1, 1, 6, '7800414', 'Reprehenderit eos in est.', 'Ms. Hattie Wiegand DDS', 4668733604665, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(490, 1, 1, 6, '7868013', 'Quas sint architecto fugit.', 'Dr. Lula Vandervort', 5133662401764, 'https://placeit/200x300', 15, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(491, 1, 1, 7, '3142749', 'Inventore debitis velit ipsa aut doloremque molestiae.', 'Lizzie Jacobs', 7116348008141, 'https://placeit/200x300', 13, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(492, 1, 1, 1, '2331709', 'Ut quo minus illo quas.', 'Mrs. Teresa D\'Amore', 6946158725553, 'https://placeit/200x300', 22, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(493, 1, 1, 5, '7397123', 'Sit quia et aut sit quaerat sint.', 'Mr. Raymundo Corwin', 4570237391531, 'https://placeit/200x300', 21, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(494, 1, 1, 3, '5331092', 'Minima est inventore tempora illo blanditiis quae.', 'Haylee Gerhold', 8802104907955, 'https://placeit/200x300', 17, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(495, 1, 1, 8, '6409725', 'Officiis ipsum ex repudiandae.', 'Manley Veum', 5667340788514, 'https://placeit/200x300', 11, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(496, 1, 1, 3, '1962561', 'Et corporis nesciunt laudantium.', 'Kristy Langworth V', 3480863637754, 'https://placeit/200x300', 10, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(497, 1, 1, 8, '4036675', 'Sed voluptatum ipsam similique saepe impedit similique.', 'Leonora Simonis', 4996282376277, 'https://placeit/200x300', 10, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(498, 1, 1, 5, '2609835', 'Autem culpa facilis nobis cum consequatur.', 'Teresa Schuster', 2358469244618, 'https://placeit/200x300', 7, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(499, 1, 1, 4, '2978415', 'Vel et ratione voluptatibus et.', 'Albertha Fisher PhD', 6850854342719, 'https://placeit/200x300', 9, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(500, 1, 1, 9, '6889650', 'Autem libero ipsam exercitationem.', 'Valentina Ernser DDS', 6400596329099, 'https://placeit/200x300', 10, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(501, 1, 1, 9, '7615034', 'Delectus consequuntur aut veniam molestias occaecati.', 'Dr. Lysanne Kihn', 8729966658972, 'https://placeit/200x300', 6, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(502, 1, 1, 4, '1580276', 'Vel rem officia rerum rerum.', 'Jacklyn Zboncak', 1599715920943, 'https://placeit/200x300', 14, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(503, 1, 1, 3, '3554835', 'In et ut aspernatur iste quia.', 'Dr. Chesley Barton DDS', 2350792157696, 'https://placeit/200x300', 15, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(504, 1, 1, 4, '3794853', 'Et dolore ut voluptatem voluptas.', 'Sylvester Padberg II', 3262304204707, 'https://placeit/200x300', 24, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(505, 1, 1, 5, '2505317', 'Rerum itaque nihil vel dignissimos.', 'Janelle Weissnat', 520371296944, 'https://placeit/200x300', 23, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(506, 1, 1, 1, '5572194', 'Rerum totam reprehenderit aliquam quis eveniet.', 'Sally Hamill', 6216070556819, 'https://placeit/200x300', 8, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(507, 1, 1, 6, '8136530', 'Id recusandae quisquam voluptate et voluptates.', 'Prof. Davon Pfannerstill Sr.', 4697167271563, 'https://placeit/200x300', 20, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(508, 1, 1, 10, '4637246', 'Eos saepe qui aut sit omnis beatae.', 'Hollis Yost', 7017151722036, 'https://placeit/200x300', 7, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(509, 1, 1, 3, '7371026', 'Consequatur laborum non dolor ut doloremque sequi.', 'Leslie Hamill', 1634290483381, 'https://placeit/200x300', 21, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(510, 1, 1, 7, '5881038', 'Eaque non assumenda qui cupiditate.', 'Jaida Hauck', 8571855791440, 'https://placeit/200x300', 7, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(511, 1, 1, 4, '8879035', 'Consequatur non ducimus magni porro sit.', 'Hector Brekke', 8246054988259, 'https://placeit/200x300', 22, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(512, 1, 1, 4, '2131201', 'Earum laboriosam ab sed nostrum cupiditate.', 'Edgar Jakubowski', 8243472177050, 'https://placeit/200x300', 25, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(513, 1, 1, 1, '6024921', 'Nihil commodi cum eum.', 'Dr. Kendall Spinka', 2095454152380, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(514, 1, 1, 8, '7138247', 'Quia sint quidem et adipisci amet.', 'Carissa Davis', 6506308396172, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(515, 1, 1, 5, '5783043', 'Quisquam dolores provident illum.', 'Prof. Alexandre O\'Reilly III', 7074825394692, 'https://placeit/200x300', 18, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(516, 1, 1, 1, '6939720', 'Nam consequuntur ea quia voluptatem.', 'Dr. Kris Anderson PhD', 9056193582510, 'https://placeit/200x300', 7, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(517, 1, 1, 8, '5989720', 'Quia dolor non rem.', 'Delmer McClure', 8274121172331, 'https://placeit/200x300', 5, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(518, 1, 1, 5, '4669674', 'Magni eius velit qui rem quis.', 'Opal Ullrich', 2073149676496, 'https://placeit/200x300', 6, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(519, 1, 1, 7, '2560351', 'Corrupti sit alias quis nisi inventore temporibus.', 'Mrs. Meaghan Moore V', 215444260303, 'https://placeit/200x300', 21, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(520, 1, 1, 1, '4414766', 'Voluptas ipsa fugit vero accusamus et ratione.', 'Leonard Lynch PhD', 3479962748430, 'https://placeit/200x300', 11, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(521, 1, 1, 5, '4696175', 'Omnis facere sunt non voluptatem dolorem esse.', 'Bobby Daugherty', 7433903968321, 'https://placeit/200x300', 15, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(522, 1, 1, 1, '8628798', 'Est nulla temporibus sed doloremque dicta nihil.', 'Talia Kub', 8943870545054, 'https://placeit/200x300', 8, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(523, 1, 1, 8, '8257340', 'Voluptatem eveniet ratione ratione facere placeat tenetur.', 'Sally Adams', 3327555390132, 'https://placeit/200x300', 19, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(524, 1, 1, 3, '5025585', 'Ut voluptatem amet consequuntur voluptatem aut.', 'Kristopher Gleason', 8536852250307, 'https://placeit/200x300', 8, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(525, 1, 1, 3, '2946858', 'Autem explicabo et non omnis veniam voluptas.', 'Lucinda Kautzer MD', 1390657054433, 'https://placeit/200x300', 23, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(526, 1, 1, 6, '7446906', 'Eius consequuntur eum et alias id.', 'Dr. Clara Morar', 7974942424459, 'https://placeit/200x300', 7, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(527, 1, 1, 1, '8688876', 'Amet praesentium et quos enim occaecati et.', 'Beulah Jakubowski', 8950296341818, 'https://placeit/200x300', 18, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(528, 1, 1, 2, '6057630', 'Quis placeat voluptatem et qui voluptatem.', 'Miss Oceane Raynor', 7197438455564, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(529, 1, 1, 4, '8198600', 'Vero ex ab mollitia.', 'Mallory Price', 6027827598026, 'https://placeit/200x300', 7, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(530, 1, 1, 1, '5520272', 'Distinctio qui voluptatem voluptates.', 'Trent Friesen', 9622247721329, 'https://placeit/200x300', 14, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(531, 1, 1, 6, '6484494', 'Eos molestiae accusamus quae expedita.', 'Kylee Champlin', 8632724493886, 'https://placeit/200x300', 15, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(532, 1, 1, 2, '2896092', 'Perferendis repudiandae consequatur magnam.', 'Luis Hegmann', 4279109502296, 'https://placeit/200x300', 23, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(533, 1, 1, 5, '6077074', 'Reiciendis quo doloremque aut iste nulla.', 'Jody Prohaska III', 3197738607049, 'https://placeit/200x300', 23, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(534, 1, 1, 3, '7481450', 'Occaecati ipsum maxime natus temporibus aut.', 'Prof. Rolando Maggio', 7572170308987, 'https://placeit/200x300', 9, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(535, 1, 1, 10, '8078109', 'Officia placeat sequi laudantium dolorem dolorem.', 'Dena Johnston', 5866977926652, 'https://placeit/200x300', 25, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(536, 1, 1, 6, '6700498', 'Sunt non veniam aut distinctio maiores.', 'Mrs. Ova Mayer Sr.', 3649778518996, 'https://placeit/200x300', 17, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(537, 1, 1, 6, '8187995', 'Qui vitae et non animi architecto omnis.', 'Elijah Botsford', 9075931951364, 'https://placeit/200x300', 18, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(538, 1, 1, 4, '7858741', 'Blanditiis repellat cum ut qui natus voluptas.', 'Samantha Weissnat Sr.', 3221721129628, 'https://placeit/200x300', 15, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(539, 1, 1, 10, '3859062', 'Incidunt consequuntur provident rerum et perspiciatis facilis.', 'Triston Gislason', 5342042782236, 'https://placeit/200x300', 24, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(540, 1, 1, 7, '1718543', 'Quisquam necessitatibus dolores labore consequuntur.', 'Dr. Crawford Stoltenberg', 8041289774475, 'https://placeit/200x300', 17, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(541, 1, 1, 3, '8874461', 'Quasi vero voluptatibus ut dolorum sit.', 'Margaretta Rau III', 2517199029333, 'https://placeit/200x300', 23, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(542, 1, 1, 2, '1559076', 'Rerum et neque aut.', 'Asia Lindgren', 9064916260553, 'https://placeit/200x300', 16, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(543, 1, 1, 8, '7890320', 'Perspiciatis saepe rerum nostrum at consequatur.', 'Leonardo Gislason', 1054254577404, 'https://placeit/200x300', 18, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(544, 1, 1, 7, '7714860', 'Ea quis itaque autem totam aperiam.', 'Mrs. Marge Goldner DVM', 2339273958427, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(545, 1, 1, 8, '3277243', 'Necessitatibus aut id et sunt autem facere.', 'Dr. Estevan Wolff', 6953084972630, 'https://placeit/200x300', 7, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(546, 1, 1, 7, '1710222', 'Et nostrum est impedit magni.', 'Darion Dibbert I', 7951632439894, 'https://placeit/200x300', 23, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(547, 1, 1, 9, '4023900', 'Quia maiores quam enim aut.', 'Felton Kulas', 5230008282497, 'https://placeit/200x300', 21, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(548, 1, 1, 3, '8619656', 'Quas eum nisi eum eaque.', 'Cletus Crona III', 730295879738, 'https://placeit/200x300', 22, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(549, 1, 1, 1, '7564925', 'Laboriosam ea impedit culpa non.', 'Ray Marquardt', 3157664591065, 'https://placeit/200x300', 17, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(550, 1, 1, 10, '4976571', 'Molestiae qui deleniti unde veritatis rerum saepe.', 'Mr. Francesco Jones', 8745062508010, 'https://placeit/200x300', 13, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(551, 1, 1, 3, '4036830', 'Recusandae ipsa soluta facere.', 'Triston Wiza Jr.', 8477361728171, 'https://placeit/200x300', 21, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(552, 1, 1, 5, '7017401', 'Velit ratione architecto ratione est.', 'Mrs. Pamela Harris II', 7656601537624, 'https://placeit/200x300', 6, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(553, 1, 1, 2, '6827792', 'Aperiam dolore qui et repellat quos.', 'Thomas Frami', 6395233275221, 'https://placeit/200x300', 7, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(554, 1, 1, 2, '1168068', 'Autem vitae dolorem beatae et.', 'Zoey Schaden', 333107273658, 'https://placeit/200x300', 10, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(555, 1, 1, 6, '1461561', 'Enim harum animi minus facere consequatur ab.', 'Ms. Carlie Hahn', 8583093243865, 'https://placeit/200x300', 17, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(556, 1, 1, 10, '4492425', 'Ipsam quas quas suscipit voluptate.', 'Briana Bode', 9541172002146, 'https://placeit/200x300', 22, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(557, 1, 1, 6, '8581233', 'Quo dicta fugiat vero eos debitis.', 'Katharina Howe', 6066788734883, 'https://placeit/200x300', 8, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(558, 1, 1, 4, '4007195', 'Sint dolore libero architecto quia.', 'Miss Catherine Rogahn', 7873924858810, 'https://placeit/200x300', 17, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(559, 1, 1, 3, '1677386', 'Itaque laborum voluptate adipisci sed sit quia.', 'Mrs. Carmen Rippin', 5553024504306, 'https://placeit/200x300', 19, '2026-08-12 07:38:47', '2026-08-12 07:38:47');
INSERT INTO `books` (`id`, `school_id`, `academic_year_id`, `category_id`, `book_code`, `title`, `author`, `isbn_number`, `cover_image`, `availability`, `created_at`, `updated_at`) VALUES
(560, 1, 1, 5, '1375012', 'Blanditiis aperiam aut ut unde voluptatibus.', 'Ms. Grace Runolfsson', 4125091839844, 'https://placeit/200x300', 25, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(561, 1, 1, 8, '1947411', 'Cumque aut repudiandae dolorum odio ut at.', 'Winston Wolff', 7999203876174, 'https://placeit/200x300', 15, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(562, 1, 1, 9, '7381414', 'Voluptas eius iusto facere laudantium voluptatem.', 'Abigail Little', 3544063274765, 'https://placeit/200x300', 18, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(563, 1, 1, 9, '7742095', 'Qui sit earum soluta tenetur culpa.', 'Magnus Stehr', 3156341449729, 'https://placeit/200x300', 8, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(564, 1, 1, 9, '1348830', 'Eaque ut accusamus consequatur sequi aut consequatur.', 'Camron Strosin PhD', 7242102859145, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(565, 1, 1, 5, '3287831', 'Enim aut est qui sit cumque enim.', 'Scarlett Wisozk', 1479147487057, 'https://placeit/200x300', 25, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(566, 1, 1, 6, '8561019', 'Vero voluptate labore accusamus sunt ipsa.', 'Savanna Heller', 1321848936573, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(567, 1, 1, 10, '5339866', 'Reprehenderit voluptas iusto eos sed voluptates.', 'Miss Lilliana Hintz III', 9746202746247, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(568, 1, 1, 6, '7796754', 'Voluptatem natus repellat possimus ducimus aut sapiente.', 'Sandy Ward', 3182571275388, 'https://placeit/200x300', 17, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(569, 1, 1, 4, '6557631', 'Quidem cumque commodi corporis rerum.', 'Ms. Era Walsh', 3287037975823, 'https://placeit/200x300', 10, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(570, 1, 1, 9, '4867802', 'Unde sit id blanditiis omnis libero.', 'Dr. Joannie Feest DDS', 1891847498636, 'https://placeit/200x300', 25, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(571, 1, 1, 4, '1771865', 'Aut voluptatem iste numquam architecto facilis.', 'Jayme Shanahan', 6619092053524, 'https://placeit/200x300', 25, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(572, 1, 1, 10, '1393018', 'Dolores quas non eaque quia ipsam.', 'Dr. Scotty King DVM', 130141550253, 'https://placeit/200x300', 12, '2026-08-12 07:38:47', '2026-08-12 07:38:47'),
(573, 1, 1, 5, '1749255', 'Possimus quam quam labore nostrum ipsa.', 'Jeffrey Kreiger', 5199741824657, 'https://placeit/200x300', 20, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(574, 1, 1, 5, '1192146', 'Qui molestias architecto quas.', 'Dr. Margot Kirlin', 1437354065260, 'https://placeit/200x300', 7, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(575, 1, 1, 8, '7995532', 'Eius quae excepturi commodi blanditiis ut.', 'Elda Upton', 1285317427002, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(576, 1, 1, 8, '8583388', 'Officiis exercitationem ducimus numquam pariatur voluptates dolor.', 'Ms. Neha Boyle MD', 7952836232656, 'https://placeit/200x300', 19, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(577, 1, 1, 1, '4503103', 'Fugit sequi similique unde.', 'Mr. Herbert Grimes IV', 9496240831329, 'https://placeit/200x300', 5, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(578, 1, 1, 10, '1115800', 'Voluptatum enim ut eos est quo.', 'Mr. Melvina VonRueden', 9423294403981, 'https://placeit/200x300', 21, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(579, 1, 1, 6, '6234524', 'Est odio consequuntur fugiat omnis maxime enim.', 'Mr. Tod Yundt', 6556179526093, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(580, 1, 1, 7, '1740113', 'Enim ut officiis quis.', 'Brooke Champlin', 2009097185285, 'https://placeit/200x300', 12, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(581, 1, 1, 4, '8298101', 'Modi distinctio eum quisquam deserunt ex.', 'Dr. Winston Flatley PhD', 2497482844921, 'https://placeit/200x300', 9, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(582, 1, 1, 1, '2918449', 'Minima quia sapiente dolores.', 'Prof. Bethany Carter', 9582610400155, 'https://placeit/200x300', 6, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(583, 1, 1, 10, '7666413', 'Ea esse velit provident nulla cum.', 'Prof. Elena Stiedemann', 4718103259121, 'https://placeit/200x300', 5, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(584, 1, 1, 1, '3286353', 'Velit atque aperiam labore voluptatem recusandae enim.', 'Christine Boehm', 7342501741390, 'https://placeit/200x300', 17, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(585, 1, 1, 4, '6639967', 'Repellat et fugit error adipisci.', 'Mr. Charley Huels Jr.', 9122488880972, 'https://placeit/200x300', 16, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(586, 1, 1, 2, '7099470', 'Minima voluptatem ea ut iusto aliquam.', 'Donny O\'Reilly', 9121864540219, 'https://placeit/200x300', 8, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(587, 1, 1, 6, '7875576', 'Consequatur qui commodi et.', 'Mrs. Molly Ullrich II', 4677355800706, 'https://placeit/200x300', 25, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(588, 1, 1, 9, '1317140', 'Et ex voluptatem esse.', 'Lavada Bartoletti', 8933119769921, 'https://placeit/200x300', 8, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(589, 1, 1, 5, '4540033', 'Aut molestiae aut ut perferendis enim.', 'Delpha Herzog', 672215994063, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(590, 1, 1, 8, '6423435', 'Ratione maiores ipsam eum soluta delectus magni.', 'Sadye Simonis', 258387784413, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(591, 1, 1, 10, '6595818', 'Fuga quaerat aut sunt.', 'Lorine Dach', 1377660762692, 'https://placeit/200x300', 21, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(592, 1, 1, 10, '2481898', 'Omnis perspiciatis impedit voluptates ratione velit.', 'Maribel Block', 1144554588955, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(593, 1, 1, 7, '1268387', 'Et magnam laboriosam fugiat ut quia.', 'Mable Eichmann', 98528939551, 'https://placeit/200x300', 9, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(594, 1, 1, 10, '5774257', 'Voluptate libero autem eos quam et rem.', 'Prof. Zachary Mertz', 303970263773, 'https://placeit/200x300', 21, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(595, 1, 1, 1, '5570354', 'Et omnis doloribus qui.', 'Prof. Lon Mohr II', 8967132841357, 'https://placeit/200x300', 7, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(596, 1, 1, 2, '4119398', 'Et illo iure qui et molestiae neque.', 'Johnpaul Watsica', 5469591213742, 'https://placeit/200x300', 8, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(597, 1, 1, 8, '2525742', 'Occaecati laboriosam reprehenderit eum.', 'Hudson Johnston V', 7135855146689, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(598, 1, 1, 4, '4505534', 'Aut quis modi eos minus.', 'Jaylin Lockman', 8256622110951, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(599, 1, 1, 3, '3268348', 'Quia et natus praesentium quia sint assumenda.', 'Adaline Hamill I', 7013337189327, 'https://placeit/200x300', 10, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(600, 1, 1, 5, '7102481', 'Dignissimos vel molestiae ex.', 'Tamara Welch', 3634832211920, 'https://placeit/200x300', 15, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(601, 1, 1, 1, '6492623', 'Quas sint nisi dolores non.', 'Samanta Greenholt MD', 5364718633338, 'https://placeit/200x300', 13, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(602, 1, 1, 7, '6844687', 'Iusto labore aut quo nemo hic alias.', 'Keegan Watsica III', 9433536831038, 'https://placeit/200x300', 12, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(603, 1, 1, 7, '7149660', 'Rem cumque aut doloremque eaque.', 'Israel McKenzie', 9707766975139, 'https://placeit/200x300', 15, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(604, 1, 1, 5, '1436730', 'Expedita aut doloremque provident quaerat porro.', 'Prof. Reyna Huel I', 5095708057680, 'https://placeit/200x300', 12, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(605, 1, 1, 7, '2858121', 'Qui molestiae sit suscipit illum.', 'Helga Leuschke', 8470702916770, 'https://placeit/200x300', 13, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(606, 1, 1, 4, '4728703', 'Suscipit ex beatae quia.', 'Josianne Flatley', 147311321391, 'https://placeit/200x300', 8, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(607, 1, 1, 2, '2679064', 'Autem omnis mollitia quas quasi rerum.', 'Michele Kohler II', 9780482277145, 'https://placeit/200x300', 25, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(608, 1, 1, 4, '4874820', 'Itaque excepturi ut facere totam est.', 'Kirstin Ebert MD', 6122186788573, 'https://placeit/200x300', 16, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(609, 1, 1, 6, '7465219', 'Iusto expedita neque magnam vitae.', 'Golden Upton', 7215511926609, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(610, 1, 1, 2, '4636232', 'Quia cupiditate enim beatae ut exercitationem assumenda.', 'Alysa Bradtke', 581712443106, 'https://placeit/200x300', 5, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(611, 1, 1, 3, '6244627', 'Quae aspernatur accusantium occaecati.', 'Florence Senger', 5838836421110, 'https://placeit/200x300', 10, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(612, 1, 1, 4, '4416117', 'Numquam assumenda alias veniam.', 'Fabian Parker', 2328982363080, 'https://placeit/200x300', 15, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(613, 1, 1, 8, '4473410', 'Ipsa dignissimos id quos qui consequatur non.', 'Felix Jacobi', 5881636702385, 'https://placeit/200x300', 6, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(614, 1, 1, 10, '3011359', 'Adipisci rerum animi ut ut.', 'Orval Kuvalis Sr.', 6342019141454, 'https://placeit/200x300', 16, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(615, 1, 1, 2, '8418409', 'Ut accusantium quam quisquam deserunt.', 'Bradly Wyman', 2091558251141, 'https://placeit/200x300', 19, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(616, 1, 1, 6, '3085299', 'Excepturi magnam nihil vel ut sit sunt.', 'Skye Bruen', 6623719463702, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(617, 1, 1, 2, '4514451', 'Odit at ducimus quibusdam facilis et ex.', 'Ms. Shakira Ortiz Jr.', 5612900366497, 'https://placeit/200x300', 9, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(618, 1, 1, 8, '7302976', 'Doloremque amet alias et.', 'Miss Lilian Farrell I', 140012885117, 'https://placeit/200x300', 19, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(619, 1, 1, 3, '1104485', 'Occaecati corporis quis fuga dolorem minus.', 'Dr. Lukas Schuppe', 8993483113454, 'https://placeit/200x300', 12, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(620, 1, 1, 2, '1669576', 'Nisi esse quo omnis rerum fuga ut.', 'Prof. Brenda Koepp', 3025976860820, 'https://placeit/200x300', 11, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(621, 1, 1, 1, '3476440', 'Fugiat vel quaerat possimus.', 'Cornell Steuber', 1691734960419, 'https://placeit/200x300', 8, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(622, 1, 1, 6, '4839313', 'Corrupti eum totam maxime est veniam.', 'Mr. Riley Hane', 1764260109581, 'https://placeit/200x300', 8, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(623, 1, 1, 1, '2920973', 'Consequuntur earum doloremque adipisci nostrum aut.', 'Rylee Hartmann', 4820411006714, 'https://placeit/200x300', 15, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(624, 1, 1, 7, '3859600', 'Corporis cupiditate assumenda laborum deserunt dicta.', 'Muriel Treutel', 2215260649724, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(625, 1, 1, 6, '1873023', 'Cumque explicabo rem minus ad.', 'Gerson Raynor', 2064454528754, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(626, 1, 1, 2, '7238481', 'Maiores sapiente quo dolor.', 'Jonathan Wuckert Sr.', 5423209820555, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(627, 1, 1, 7, '7197671', 'Error qui earum iusto dicta ipsum minus.', 'Keith Sporer', 6644944637713, 'https://placeit/200x300', 22, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(628, 1, 1, 3, '5050283', 'Vel et sed voluptates praesentium rerum magnam.', 'Kaia Cronin', 9730393776107, 'https://placeit/200x300', 10, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(629, 1, 1, 8, '4989168', 'Voluptatibus cumque et vero rem.', 'Maverick Lehner', 6225686224364, 'https://placeit/200x300', 11, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(630, 1, 1, 4, '3146352', 'Labore sapiente accusamus voluptate.', 'Camden Conn', 8920803646156, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(631, 1, 1, 2, '2860180', 'Nulla necessitatibus voluptate rerum minus vel.', 'Prof. Remington Gleason', 1975098084524, 'https://placeit/200x300', 11, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(632, 1, 1, 4, '3413150', 'Non tempore officia qui necessitatibus.', 'Dr. Gerald O\'Reilly', 3656450992708, 'https://placeit/200x300', 7, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(633, 1, 1, 2, '1306072', 'Aut molestiae fugit ipsa inventore vero.', 'Elizabeth Weber DVM', 6724885927590, 'https://placeit/200x300', 10, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(634, 1, 1, 1, '1448802', 'Quibusdam commodi sit accusantium ut officia qui.', 'Cortney Parisian', 3832693769899, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(635, 1, 1, 10, '6120747', 'Repudiandae aspernatur et ipsa rerum dolorem.', 'Izaiah Trantow', 746239108963, 'https://placeit/200x300', 12, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(636, 1, 1, 1, '1226960', 'Est velit esse eaque.', 'Prof. Rebeka Waters V', 3246967467709, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(637, 1, 1, 3, '2404147', 'Autem rerum laudantium quam.', 'Carolina Schoen I', 8390429871421, 'https://placeit/200x300', 9, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(638, 1, 1, 9, '7566599', 'Quis autem illum consectetur quam.', 'Ms. Vita Champlin', 9262190852888, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(639, 1, 1, 7, '6631353', 'Non quo cupiditate vel.', 'Pinkie Blanda', 2601465255479, 'https://placeit/200x300', 13, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(640, 1, 1, 6, '6488922', 'Doloremque quam iste accusantium nulla error.', 'Eliseo Beier', 2338198982203, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(641, 1, 1, 4, '2956044', 'Asperiores velit quis quia ea ea enim.', 'Phoebe Yost II', 5675896655716, 'https://placeit/200x300', 15, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(642, 1, 1, 9, '6401715', 'Aut deserunt sit et.', 'Jayne Stoltenberg', 2087775481812, 'https://placeit/200x300', 6, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(643, 1, 1, 7, '8804438', 'Minima animi quis in.', 'Eileen Strosin', 2526470573427, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(644, 1, 1, 4, '8291458', 'Distinctio eius eveniet iure voluptas quas.', 'Dr. Misty Leuschke', 8082259683779, 'https://placeit/200x300', 8, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(645, 1, 1, 2, '4881275', 'Harum cupiditate et fuga sed ut.', 'Lelah Corwin', 8060648073837, 'https://placeit/200x300', 18, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(646, 1, 1, 10, '7746033', 'Corporis optio sed est similique sapiente.', 'Bridget Bailey', 1727444128792, 'https://placeit/200x300', 24, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(647, 1, 1, 8, '4724155', 'Rerum culpa in enim aut aliquid.', 'Monica Thiel', 1574035819870, 'https://placeit/200x300', 19, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(648, 1, 1, 9, '4272754', 'Similique quaerat voluptatum placeat libero.', 'Mr. Lambert Simonis I', 2471471182027, 'https://placeit/200x300', 22, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(649, 1, 1, 3, '7898617', 'Ipsum non iure modi illum eveniet.', 'Georgette Roberts IV', 9565304457352, 'https://placeit/200x300', 22, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(650, 1, 1, 6, '7045755', 'Delectus pariatur sapiente cumque eos et aut.', 'Prof. Madilyn Rutherford IV', 5078599488382, 'https://placeit/200x300', 6, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(651, 1, 1, 6, '7470578', 'Nostrum exercitationem aspernatur ut placeat consequatur corrupti numquam.', 'Theresia Barrows', 8102636799159, 'https://placeit/200x300', 14, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(652, 1, 1, 5, '3995567', 'Alias sunt occaecati cupiditate ipsa perspiciatis aut.', 'Syble Bernhard', 7214064653970, 'https://placeit/200x300', 6, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(653, 1, 1, 5, '1615529', 'Magni ea aut illum repudiandae nobis.', 'Anna Schumm', 384183938856, 'https://placeit/200x300', 16, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(654, 1, 1, 2, '4763642', 'Maiores est quae quisquam cupiditate expedita maiores.', 'Prof. Davonte Lowe', 652071331837, 'https://placeit/200x300', 10, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(655, 1, 1, 5, '3643953', 'Dolorem ut praesentium et commodi.', 'Armand Bode', 7053506460574, 'https://placeit/200x300', 9, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(656, 1, 1, 1, '1766743', 'Ipsum veritatis tempore repellat et sit.', 'Kian Metz Jr.', 1772948259978, 'https://placeit/200x300', 20, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(657, 1, 1, 9, '4023062', 'Minima recusandae et deserunt et.', 'Glenda Dooley', 8571190223248, 'https://placeit/200x300', 10, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(658, 1, 1, 6, '8570812', 'Labore voluptatibus optio consequatur blanditiis a assumenda.', 'Karina Brekke', 238952842441, 'https://placeit/200x300', 16, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(659, 1, 1, 3, '8344174', 'Perspiciatis excepturi voluptate commodi vel vel.', 'Elyssa Leannon', 2036840577578, 'https://placeit/200x300', 25, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(660, 1, 1, 10, '3092742', 'Blanditiis aut neque quam voluptatem sit sit.', 'Moises Anderson', 3360288542294, 'https://placeit/200x300', 10, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(661, 1, 1, 3, '7015240', 'Animi impedit ut debitis eos enim.', 'Benjamin Deckow', 3891906408123, 'https://placeit/200x300', 22, '2026-08-12 07:38:48', '2026-08-12 07:38:48'),
(662, 1, 1, 7, '4021665', 'Enim consequuntur nihil id repellendus omnis et.', 'Lincoln Swaniawski', 4776780284928, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(663, 1, 1, 9, '4125722', 'Est commodi aut dolore et nobis pariatur.', 'Rosalyn Fay Sr.', 3892518686299, 'https://placeit/200x300', 9, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(664, 1, 1, 3, '2367788', 'Quia aut officiis enim quia sunt.', 'Zachariah Pagac', 6884260156721, 'https://placeit/200x300', 17, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(665, 1, 1, 9, '7127164', 'Quia libero tenetur dolore.', 'Darrick Hammes PhD', 4269718983449, 'https://placeit/200x300', 6, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(666, 1, 1, 1, '7473198', 'Sit labore enim ut cum cumque sapiente esse.', 'Mr. Monserrate Parisian Sr.', 2824303437916, 'https://placeit/200x300', 6, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(667, 1, 1, 5, '6764303', 'Aliquam modi ipsum impedit.', 'Asia Erdman', 3691140585242, 'https://placeit/200x300', 23, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(668, 1, 1, 7, '4646928', 'Commodi corrupti aut qui et fugiat suscipit.', 'Javon Smith', 2144427159151, 'https://placeit/200x300', 13, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(669, 1, 1, 5, '6842304', 'Aliquam eaque officia voluptatem molestiae.', 'Prof. Brooke Gerhold', 4416352669516, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(670, 1, 1, 10, '5819318', 'Labore ut et ea dolorem.', 'Esteban Roob', 8136925805153, 'https://placeit/200x300', 18, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(671, 1, 1, 1, '2829552', 'Quia soluta aut aut.', 'Donavon Moore Jr.', 7024260868166, 'https://placeit/200x300', 9, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(672, 1, 1, 2, '8294339', 'Pariatur possimus delectus nobis.', 'Prof. Kristopher Gottlieb I', 5282098402071, 'https://placeit/200x300', 5, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(673, 1, 1, 2, '4306631', 'Perspiciatis laudantium rerum illum ut illo.', 'Mrs. Domenica Gaylord', 166658792824, 'https://placeit/200x300', 11, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(674, 1, 1, 10, '2515076', 'Placeat quo fugit ipsum totam aliquam fugit.', 'Mr. Jackson Donnelly', 5926915871953, 'https://placeit/200x300', 7, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(675, 1, 1, 1, '5904660', 'Dolore ex velit est nesciunt.', 'Leola Nikolaus', 7953077980856, 'https://placeit/200x300', 7, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(676, 1, 1, 8, '3397890', 'Adipisci et excepturi qui rerum est autem.', 'Christa O\'Keefe DDS', 4874356026436, 'https://placeit/200x300', 7, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(677, 1, 1, 9, '2038865', 'Et error tempore enim qui officia temporibus.', 'Ricky Hilpert', 1540165377337, 'https://placeit/200x300', 8, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(678, 1, 1, 9, '8296319', 'Nam et impedit culpa.', 'Miss Kellie Raynor', 8598153612871, 'https://placeit/200x300', 22, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(679, 1, 1, 8, '7430346', 'Natus ipsam voluptates quaerat at dignissimos voluptates.', 'Dr. Beryl Mayert', 7771722925928, 'https://placeit/200x300', 22, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(680, 1, 1, 9, '2455313', 'Velit id tempora molestias.', 'Leonor Becker DDS', 6270822479719, 'https://placeit/200x300', 21, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(681, 1, 1, 9, '1464848', 'Dignissimos earum modi aut consequatur corporis.', 'Mae Ward IV', 404698172801, 'https://placeit/200x300', 11, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(682, 1, 1, 2, '2529200', 'Et voluptas eos praesentium enim.', 'Francisco Crona MD', 6904637719899, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(683, 1, 1, 1, '3015516', 'Consequatur delectus sunt ut quasi deserunt quam.', 'Dr. Paris Kub', 5340327924661, 'https://placeit/200x300', 14, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(684, 1, 1, 7, '4301585', 'Alias explicabo similique sint consequatur.', 'Wade Greenfelder', 2968235746880, 'https://placeit/200x300', 22, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(685, 1, 1, 7, '7415773', 'Officiis delectus debitis reiciendis id.', 'Prof. Carol Rice', 6540500835091, 'https://placeit/200x300', 10, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(686, 1, 1, 10, '1962349', 'Quia architecto ipsam consequuntur.', 'Prof. Rodolfo Lynch', 3848789438150, 'https://placeit/200x300', 19, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(687, 1, 1, 2, '8228911', 'Impedit assumenda minus porro est.', 'Bettye O\'Kon', 2275190293046, 'https://placeit/200x300', 12, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(688, 1, 1, 3, '4303711', 'Sed in officiis laboriosam commodi quod.', 'Oral Ullrich', 6174383965202, 'https://placeit/200x300', 5, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(689, 1, 1, 1, '1394628', 'Ea suscipit maiores voluptatem.', 'Ms. Shea Rath', 8632161039494, 'https://placeit/200x300', 18, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(690, 1, 1, 9, '1367254', 'Fuga voluptas assumenda nemo.', 'Bernita Gulgowski', 4783473631921, 'https://placeit/200x300', 20, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(691, 1, 1, 6, '6896947', 'Consectetur libero voluptas rerum magnam.', 'Eden Ebert', 6217596828725, 'https://placeit/200x300', 5, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(692, 1, 1, 3, '5219164', 'Velit incidunt facilis eligendi officiis nostrum.', 'Prof. Waylon Langosh', 1770596197765, 'https://placeit/200x300', 6, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(693, 1, 1, 10, '5164698', 'Cumque commodi at vitae quo minima.', 'Maia O\'Keefe', 5811194160549, 'https://placeit/200x300', 17, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(694, 1, 1, 8, '3310111', 'Quas et atque totam omnis.', 'Mr. Rodolfo Altenwerth', 2342742007335, 'https://placeit/200x300', 14, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(695, 1, 1, 4, '6578478', 'Modi vitae quia voluptates maxime provident.', 'Beth Bogisich', 3168040201690, 'https://placeit/200x300', 13, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(696, 1, 1, 6, '4349868', 'Molestiae similique tenetur sunt quia in id.', 'Verna Kub Sr.', 6004349802862, 'https://placeit/200x300', 8, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(697, 1, 1, 3, '1675132', 'Molestias suscipit impedit est expedita inventore eaque.', 'Lou Waters', 6218257756159, 'https://placeit/200x300', 21, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(698, 1, 1, 2, '7986545', 'Quis aspernatur beatae vel.', 'Ms. Romaine Ratke DDS', 2391889554745, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(699, 1, 1, 3, '6993266', 'Sapiente adipisci voluptatem ea laborum.', 'Mr. Larry Goldner Jr.', 6226134800970, 'https://placeit/200x300', 6, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(700, 1, 1, 3, '1724314', 'Expedita omnis ipsa deserunt ut.', 'Dr. Jordane Barrows Jr.', 5357818196308, 'https://placeit/200x300', 8, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(701, 1, 1, 10, '5429475', 'Similique quas eius at voluptas iure praesentium.', 'Mr. Tristian Donnelly', 198430674011, 'https://placeit/200x300', 23, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(702, 1, 1, 10, '2055169', 'Velit aut velit est consequatur autem.', 'Emelie Keeling', 3769159195278, 'https://placeit/200x300', 5, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(703, 1, 1, 9, '5308736', 'Eos nisi ut id eum.', 'Sunny Balistreri', 6894278945576, 'https://placeit/200x300', 6, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(704, 1, 1, 2, '1157643', 'Quam ad quia rerum autem.', 'Mr. Mose Hudson', 889586403142, 'https://placeit/200x300', 14, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(705, 1, 1, 3, '2621721', 'Odit non consequatur omnis.', 'Carolanne Orn V', 942781832831, 'https://placeit/200x300', 11, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(706, 1, 1, 3, '6560732', 'Suscipit fugit ipsum eaque.', 'Mr. Keyon Schumm', 3867841124817, 'https://placeit/200x300', 19, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(707, 1, 1, 9, '1469852', 'Aspernatur quam ipsa nemo repellat provident voluptate.', 'Sally Sipes', 4625212343798, 'https://placeit/200x300', 16, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(708, 1, 1, 5, '1173777', 'Id voluptate molestias quod.', 'Dr. Joelle Parker', 3412931980929, 'https://placeit/200x300', 20, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(709, 1, 1, 1, '3276794', 'Assumenda eos provident non quisquam quam et.', 'Marlene Goodwin', 8755143572434, 'https://placeit/200x300', 18, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(710, 1, 1, 2, '4330426', 'Ea amet qui veritatis error.', 'Melody Eichmann', 1604580756013, 'https://placeit/200x300', 9, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(711, 1, 1, 7, '4780373', 'Ad sunt porro veritatis quo cupiditate rerum.', 'Luciano Volkman', 9535507164807, 'https://placeit/200x300', 11, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(712, 1, 1, 8, '5284554', 'Eveniet quibusdam est natus reiciendis.', 'Mekhi Rutherford', 6713672473471, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(713, 1, 1, 1, '6036393', 'Ut deserunt molestiae aliquid esse molestiae.', 'Mr. Ethel Cronin', 1520187753586, 'https://placeit/200x300', 16, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(714, 1, 1, 1, '1632516', 'Magnam dolore eaque perspiciatis totam molestiae quibusdam.', 'Colten Tromp', 6258858969244, 'https://placeit/200x300', 25, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(715, 1, 1, 1, '3879276', 'Possimus enim explicabo sit recusandae.', 'Miss Gabrielle Schaefer', 6142716670970, 'https://placeit/200x300', 6, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(716, 1, 1, 8, '7442412', 'Officiis iusto voluptatem et laborum dolores qui.', 'Vernice Willms', 4780478277673, 'https://placeit/200x300', 17, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(717, 1, 1, 5, '4665739', 'Non sed voluptas maxime ut.', 'Prof. Leonardo Purdy MD', 7182686638104, 'https://placeit/200x300', 5, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(718, 1, 1, 8, '2202611', 'Corrupti et fugiat laudantium nesciunt ut.', 'Buford Beier', 9601461991619, 'https://placeit/200x300', 11, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(719, 1, 1, 7, '4158934', 'Laudantium vel facere nesciunt ratione accusamus distinctio.', 'Angus Barton Sr.', 5134502183635, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(720, 1, 1, 7, '2573032', 'Quia qui id impedit suscipit esse quidem.', 'Godfrey Daniel', 3805530500948, 'https://placeit/200x300', 8, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(721, 1, 1, 8, '3781099', 'Temporibus commodi reprehenderit ab voluptas quia.', 'Prof. Diamond McDermott II', 7274204781390, 'https://placeit/200x300', 23, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(722, 1, 1, 9, '7540403', 'Quae natus debitis aut.', 'Eddie Batz', 995685048068, 'https://placeit/200x300', 24, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(723, 1, 1, 3, '2510060', 'Repudiandae vel quia quis expedita qui.', 'Elena Nitzsche', 8958516294807, 'https://placeit/200x300', 12, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(724, 1, 1, 5, '3463558', 'Repellendus nesciunt est repudiandae qui saepe in.', 'Dr. Chet Murazik', 1917842401348, 'https://placeit/200x300', 5, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(725, 1, 1, 3, '3311975', 'Vel laborum corrupti dolor pariatur voluptas.', 'Emmalee Kunze', 8315942223427, 'https://placeit/200x300', 7, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(726, 1, 1, 7, '2980160', 'Dolor ex voluptas dolores.', 'Martina Zboncak', 2626326751006, 'https://placeit/200x300', 7, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(727, 1, 1, 1, '7786688', 'Ut temporibus et dolores.', 'Darryl Morissette', 2675881925438, 'https://placeit/200x300', 19, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(728, 1, 1, 10, '4915899', 'Velit atque qui eius reprehenderit dolorem.', 'Miss Cathryn Conroy', 9017466431287, 'https://placeit/200x300', 18, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(729, 1, 1, 7, '2181862', 'Inventore autem consequatur id.', 'Ms. Lupe Hermann Jr.', 4925834113558, 'https://placeit/200x300', 5, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(730, 1, 1, 3, '7611724', 'Quia corrupti assumenda minus quam est enim.', 'Jennyfer Botsford', 2241305771754, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(731, 1, 1, 3, '1753456', 'Voluptatem necessitatibus et rem aspernatur.', 'Sabryna Bergnaum', 7384796776862, 'https://placeit/200x300', 19, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(732, 1, 1, 5, '7527939', 'Dicta occaecati quia aut.', 'Dr. Tate O\'Hara IV', 8735679206454, 'https://placeit/200x300', 10, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(733, 1, 1, 4, '2309241', 'Eos doloribus ipsum corrupti necessitatibus qui.', 'Mrs. Calista Collins', 162453229473, 'https://placeit/200x300', 8, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(734, 1, 1, 10, '3343747', 'Culpa id alias accusamus quis.', 'Mr. Orrin Grant', 8201327681510, 'https://placeit/200x300', 14, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(735, 1, 1, 2, '2151292', 'Est nesciunt voluptas ratione.', 'Leslie Weissnat I', 2360042094749, 'https://placeit/200x300', 18, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(736, 1, 1, 10, '2155402', 'Possimus eius et est error molestiae excepturi.', 'Alexandre Murazik', 9540247271982, 'https://placeit/200x300', 7, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(737, 1, 1, 4, '4542731', 'Repudiandae qui dolorem in.', 'Marco Farrell', 1528273828675, 'https://placeit/200x300', 11, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(738, 1, 1, 3, '2623254', 'Quis aut et quibusdam dignissimos quo perferendis.', 'Mr. Paolo Klein PhD', 9690304855867, 'https://placeit/200x300', 21, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(739, 1, 1, 4, '7238512', 'Voluptatibus enim consequatur vel aut atque.', 'Newton Corwin', 7670036761911, 'https://placeit/200x300', 12, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(740, 1, 1, 4, '3645911', 'Sunt cupiditate sit eius reprehenderit neque.', 'Prof. Geo Orn', 5575779601451, 'https://placeit/200x300', 19, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(741, 1, 1, 8, '5509121', 'Eos quod a aut dicta velit.', 'Mr. Barton Sipes', 4224515713491, 'https://placeit/200x300', 20, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(742, 1, 1, 6, '3753841', 'Molestias quos consequatur iste eum esse et.', 'Jamie White', 2172255633130, 'https://placeit/200x300', 10, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(743, 1, 1, 7, '8207086', 'Rerum voluptatibus ab laborum.', 'Ignatius Frami DDS', 6708818523448, 'https://placeit/200x300', 7, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(744, 1, 1, 7, '3722039', 'Similique sed corrupti molestias aut fugiat.', 'Aron Erdman', 8489479084575, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(745, 1, 1, 2, '7742949', 'Quia perspiciatis illum quisquam natus.', 'Dr. Juanita Prohaska Sr.', 3935723744658, 'https://placeit/200x300', 5, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(746, 1, 1, 3, '4000356', 'Voluptatibus eius alias porro.', 'Wava Lebsack', 4656645562913, 'https://placeit/200x300', 10, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(747, 1, 1, 4, '6530284', 'Magni eveniet eum commodi corporis.', 'Dr. Cleta Russel', 8826908311978, 'https://placeit/200x300', 24, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(748, 1, 1, 10, '6656669', 'Amet in pariatur rem.', 'Prof. Lambert Stoltenberg', 8953282219344, 'https://placeit/200x300', 21, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(749, 1, 1, 6, '1929916', 'Aliquid ea quia fuga.', 'Norris Hill V', 7663495378660, 'https://placeit/200x300', 15, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(750, 1, 1, 8, '8515900', 'Ducimus illum non a consequuntur.', 'Prof. Jovanny Leuschke', 5553564867268, 'https://placeit/200x300', 18, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(751, 1, 1, 6, '8351607', 'Quia consequuntur dolorum est.', 'Candida Prohaska PhD', 3155482590239, 'https://placeit/200x300', 18, '2026-08-12 07:38:49', '2026-08-12 07:38:49'),
(752, 1, 1, 8, '1602897', 'Deserunt laborum nemo corporis sunt omnis ipsum.', 'Hadley Dickens', 2706362156857, 'https://placeit/200x300', 18, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(753, 1, 1, 8, '6966667', 'Vitae recusandae velit cumque nesciunt voluptates sequi.', 'Quinn Wisozk', 2618436879411, 'https://placeit/200x300', 6, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(754, 1, 1, 9, '2361752', 'Hic ut voluptatibus voluptas necessitatibus.', 'Hunter Yundt', 585206423100, 'https://placeit/200x300', 22, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(755, 1, 1, 8, '8846196', 'Dignissimos harum sed facilis odio placeat occaecati.', 'Mara Grant', 7896417718736, 'https://placeit/200x300', 23, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(756, 1, 1, 1, '4561385', 'Corrupti saepe ratione voluptatem.', 'Mr. Demarcus Quitzon DVM', 6833303098511, 'https://placeit/200x300', 5, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(757, 1, 1, 10, '7604288', 'Unde maiores rerum explicabo nisi sint consectetur.', 'Dr. Esteban Pfeffer', 3206124553850, 'https://placeit/200x300', 15, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(758, 1, 1, 2, '3720037', 'Repudiandae est aspernatur ducimus et dignissimos sunt.', 'Dillan Satterfield', 5484458253891, 'https://placeit/200x300', 22, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(759, 1, 1, 7, '3727969', 'Quasi iusto non deleniti rem earum et.', 'Terrell Raynor', 6446603593015, 'https://placeit/200x300', 6, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(760, 1, 1, 1, '1125207', 'Molestiae totam maxime odit voluptas.', 'Juanita Herzog', 1014824526690, 'https://placeit/200x300', 11, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(761, 1, 1, 7, '7667410', 'Ullam ut nam rem amet necessitatibus.', 'Mrs. Allison Boyle MD', 9364202381635, 'https://placeit/200x300', 20, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(762, 1, 1, 9, '1400043', 'Debitis ullam eligendi expedita voluptatem eaque.', 'Maggie Kreiger', 8982872636308, 'https://placeit/200x300', 22, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(763, 1, 1, 7, '3868269', 'Vero aut commodi inventore.', 'Kylie Lang', 9080813949674, 'https://placeit/200x300', 11, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(764, 1, 1, 6, '1113143', 'Qui architecto ut sunt ut.', 'Chloe Littel', 2756118249937, 'https://placeit/200x300', 7, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(765, 1, 1, 6, '3531362', 'Qui dolores corporis minima deserunt fugiat.', 'Dr. Werner Rolfson', 2930844120535, 'https://placeit/200x300', 18, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(766, 1, 1, 3, '5190313', 'Consequatur est vel dolores in qui.', 'Rocio Monahan', 3950384425074, 'https://placeit/200x300', 22, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(767, 1, 1, 1, '2225061', 'Commodi ducimus voluptatem ad cumque alias excepturi.', 'Myrtle Conroy', 3170491211128, 'https://placeit/200x300', 23, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(768, 1, 1, 3, '5324126', 'Assumenda alias maiores est.', 'Marcia Dickinson', 5506268258924, 'https://placeit/200x300', 8, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(769, 1, 1, 5, '2498871', 'Sint commodi ipsum ipsa fuga cum et.', 'Maureen Watsica', 6245749028043, 'https://placeit/200x300', 7, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(770, 1, 1, 7, '2923116', 'Dolores occaecati tempore mollitia quo.', 'Deondre McKenzie III', 3691904278533, 'https://placeit/200x300', 15, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(771, 1, 1, 10, '4261096', 'Totam sit laboriosam omnis est deleniti sit.', 'Turner Bartell', 6059235074373, 'https://placeit/200x300', 13, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(772, 1, 1, 8, '3732206', 'Est ut adipisci sint dignissimos velit.', 'Prof. Francisco Altenwerth', 286026309031, 'https://placeit/200x300', 23, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(773, 1, 1, 9, '2503903', 'Labore quos voluptas ut quisquam.', 'Prof. Afton Ortiz', 4217029442612, 'https://placeit/200x300', 5, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(774, 1, 1, 4, '5742993', 'Aliquam dolor sapiente repudiandae.', 'Eloise Heaney', 555174075434, 'https://placeit/200x300', 16, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(775, 1, 1, 5, '5108909', 'Autem qui asperiores modi doloremque.', 'Prof. Elmo Ferry', 2779220913657, 'https://placeit/200x300', 21, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(776, 1, 1, 10, '7327465', 'Quis ut reiciendis laboriosam voluptatum repellendus perspiciatis aliquid.', 'Dr. Vincent Huel', 108122431983, 'https://placeit/200x300', 5, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(777, 1, 1, 1, '3352130', 'Voluptatem eos illo commodi aliquid eum.', 'Prof. Elmore Thiel', 4931195432405, 'https://placeit/200x300', 25, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(778, 1, 1, 5, '3368722', 'Id in in voluptas repudiandae.', 'Destinee Goldner', 614437699494, 'https://placeit/200x300', 5, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(779, 1, 1, 3, '7659030', 'Voluptas quam et a.', 'Prof. Miguel Will', 4227630648341, 'https://placeit/200x300', 17, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(780, 1, 1, 8, '8185988', 'Illo voluptatum assumenda voluptatem et perspiciatis molestiae dicta.', 'Mrs. Alize Crona PhD', 9843890882544, 'https://placeit/200x300', 18, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(781, 1, 1, 5, '7923254', 'Et voluptas qui qui magnam temporibus.', 'Ms. Elena Hane DVM', 8550774718134, 'https://placeit/200x300', 16, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(782, 1, 1, 4, '6842223', 'Atque eveniet dolore quae non consequuntur velit.', 'Keven Wintheiser', 54268675838, 'https://placeit/200x300', 17, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(783, 1, 1, 2, '2176036', 'Voluptatem dolor repellendus qui explicabo.', 'Dr. Burnice Wehner', 3048932623406, 'https://placeit/200x300', 18, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(784, 1, 1, 5, '2528011', 'Ad veritatis omnis aut.', 'Syble Beahan', 2055495315588, 'https://placeit/200x300', 14, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(785, 1, 1, 4, '3874054', 'Quia explicabo rerum voluptatem incidunt.', 'Maudie Rau', 5228294880428, 'https://placeit/200x300', 5, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(786, 1, 1, 6, '4108542', 'Iste porro voluptate delectus dolorum hic sit.', 'Jerrell Lowe DDS', 8771478583174, 'https://placeit/200x300', 19, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(787, 1, 1, 1, '8677549', 'Ut et alias a incidunt ut repellat.', 'Roxane Yundt', 1933830913556, 'https://placeit/200x300', 14, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(788, 1, 1, 1, '1382554', 'Dolores rerum ut molestiae nobis non modi.', 'Kayley Donnelly Jr.', 4845038880530, 'https://placeit/200x300', 10, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(789, 1, 1, 1, '6414565', 'Recusandae eos cumque error qui et.', 'Miss Imogene Frami', 9396006092783, 'https://placeit/200x300', 15, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(790, 1, 1, 3, '3254487', 'Voluptatem vel necessitatibus quo.', 'Stephany Nolan', 4822870166206, 'https://placeit/200x300', 25, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(791, 1, 1, 3, '3822682', 'Eum temporibus blanditiis expedita eligendi.', 'Zechariah Donnelly', 6057656015661, 'https://placeit/200x300', 22, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(792, 1, 1, 3, '2773112', 'Deserunt aut saepe quibusdam pariatur ipsa ea.', 'Dr. Ciara Mraz', 1953023793154, 'https://placeit/200x300', 17, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(793, 1, 1, 3, '3907728', 'Tempora temporibus officia est quia nisi.', 'Mossie Smitham', 6853378523558, 'https://placeit/200x300', 17, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(794, 1, 1, 2, '2523863', 'Quas est debitis quia.', 'Casper Weber', 7192546630797, 'https://placeit/200x300', 22, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(795, 1, 1, 6, '3943302', 'Eveniet aut in ea aut.', 'Kendra Harvey', 9508496493258, 'https://placeit/200x300', 23, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(796, 1, 1, 9, '1494762', 'Doloribus incidunt non et blanditiis.', 'Reva Reichert', 657347445324, 'https://placeit/200x300', 18, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(797, 1, 1, 7, '6294147', 'Aperiam at voluptate cumque animi necessitatibus dolorem.', 'Dr. Grant Gutmann', 2422721272432, 'https://placeit/200x300', 7, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(798, 1, 1, 4, '7955173', 'Ab beatae dolore quae et quasi voluptas.', 'Prof. Russel Lowe MD', 4721149954653, 'https://placeit/200x300', 12, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(799, 1, 1, 1, '7124253', 'Ut facere eos eaque voluptatem qui.', 'Cathrine Hintz', 9596587070488, 'https://placeit/200x300', 5, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(800, 1, 1, 9, '6522029', 'Placeat sit eum itaque id qui.', 'Jarrod Leffler', 9469472775730, 'https://placeit/200x300', 19, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(801, 1, 1, 8, '6331820', 'Molestiae est consequuntur aut.', 'Prof. Duane Gulgowski', 6811697843498, 'https://placeit/200x300', 7, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(802, 1, 1, 7, '1197783', 'Laudantium quia odio est distinctio in eius.', 'Idella Lowe', 3407818530472, 'https://placeit/200x300', 22, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(803, 1, 1, 2, '1754621', 'Iusto itaque est dolores.', 'Sylvester McLaughlin', 2734446745994, 'https://placeit/200x300', 13, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(804, 1, 1, 1, '5198921', 'Excepturi consequatur labore quae temporibus deleniti quaerat.', 'Keanu Schroeder', 5966001766015, 'https://placeit/200x300', 18, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(805, 1, 1, 8, '6094470', 'Quia alias animi ullam dolores repellat nihil.', 'Narciso Halvorson', 4065537282387, 'https://placeit/200x300', 15, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(806, 1, 1, 5, '6791580', 'Perspiciatis est recusandae nihil labore voluptate.', 'Kelvin Jakubowski', 3056412026210, 'https://placeit/200x300', 18, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(807, 1, 1, 5, '4086353', 'Nihil veniam architecto sapiente.', 'Aurore Smitham', 8134391499340, 'https://placeit/200x300', 24, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(808, 1, 1, 10, '7698855', 'Expedita facere sint similique omnis.', 'Rachael Hermann PhD', 8623032901163, 'https://placeit/200x300', 14, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(809, 1, 1, 4, '4171313', 'Iusto fugit optio harum.', 'Dr. Carlotta Schuster', 7017800674532, 'https://placeit/200x300', 10, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(810, 1, 1, 8, '3395825', 'Labore quas odit tempore beatae dicta doloribus.', 'Jewell Turner IV', 7819669029207, 'https://placeit/200x300', 25, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(811, 1, 1, 5, '5876263', 'Dignissimos recusandae magnam sit.', 'Zelda Schimmel I', 3887792123295, 'https://placeit/200x300', 16, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(812, 1, 1, 10, '7237646', 'Odio eos ea blanditiis ipsa officiis.', 'Ms. Jannie Fisher', 6328193779683, 'https://placeit/200x300', 9, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(813, 1, 1, 8, '4744033', 'Dolore aut similique dolor dolores.', 'Dante Bins', 4163855670913, 'https://placeit/200x300', 5, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(814, 1, 1, 1, '4832170', 'Libero non tenetur voluptatibus sint.', 'Savannah Rodriguez', 490480300392, 'https://placeit/200x300', 13, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(815, 1, 1, 3, '5736996', 'Ut omnis adipisci voluptas atque.', 'Angelina Deckow', 7091898318653, 'https://placeit/200x300', 20, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(816, 1, 1, 6, '4085847', 'Amet quia nostrum voluptatibus voluptas culpa.', 'Hilton Roob V', 7328189837778, 'https://placeit/200x300', 13, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(817, 1, 1, 2, '2363336', 'Ea odit repellat perferendis.', 'Sabrina Dicki', 2216478695824, 'https://placeit/200x300', 11, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(818, 1, 1, 10, '5551803', 'Blanditiis autem sapiente voluptatem inventore.', 'Dorothea Daniel', 3676792458229, 'https://placeit/200x300', 15, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(819, 1, 1, 9, '8880404', 'Sed similique itaque quidem culpa labore saepe.', 'Westley Weissnat II', 1838037325730, 'https://placeit/200x300', 10, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(820, 1, 1, 1, '2891241', 'Nisi in et debitis aut nostrum.', 'Gertrude Treutel', 4869280172724, 'https://placeit/200x300', 11, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(821, 1, 1, 2, '7997359', 'Quam similique vero voluptatibus blanditiis nisi.', 'Alexandria Pacocha', 4998364746442, 'https://placeit/200x300', 11, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(822, 1, 1, 5, '4314452', 'Iure debitis harum ut necessitatibus et.', 'Dr. Aryanna Auer', 2238283102939, 'https://placeit/200x300', 5, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(823, 1, 1, 4, '7613006', 'Eaque quam et optio.', 'Jettie Auer Jr.', 3081068896108, 'https://placeit/200x300', 18, '2026-08-12 07:38:50', '2026-08-12 07:38:50'),
(824, 1, 1, 5, '5617768', 'Quo vel repellendus laboriosam.', 'Ms. Amina Greenholt', 8661476190484, 'https://placeit/200x300', 14, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(825, 1, 1, 7, '1207449', 'Nemo esse optio repellendus beatae sint.', 'Mrs. Maryjane Daniel', 8647058107552, 'https://placeit/200x300', 16, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(826, 1, 1, 2, '2550934', 'Tempora aliquid quia soluta qui et tempora.', 'Prof. Hassie Reinger II', 1446089536273, 'https://placeit/200x300', 8, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(827, 1, 1, 2, '6392115', 'Fuga distinctio non qui sed qui.', 'Dr. Kody Lehner', 512178075969, 'https://placeit/200x300', 22, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(828, 1, 1, 7, '4514232', 'Quia consequatur enim amet quia perferendis.', 'Jedediah Kling', 9839470668431, 'https://placeit/200x300', 14, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(829, 1, 1, 10, '6143405', 'Minus itaque et beatae.', 'Lee Leannon', 3842460760141, 'https://placeit/200x300', 15, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(830, 1, 1, 1, '5734601', 'Odio amet qui ut laborum laboriosam in.', 'Orland Stamm', 5190334863343, 'https://placeit/200x300', 24, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(831, 1, 1, 4, '2926282', 'Voluptate qui odit voluptatem est quaerat.', 'Jakob Boehm', 6295673307127, 'https://placeit/200x300', 25, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(832, 1, 1, 7, '7029590', 'Exercitationem aspernatur libero nobis.', 'Domenica Cormier IV', 8167896571389, 'https://placeit/200x300', 13, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(833, 1, 1, 7, '6613649', 'Maiores culpa facere ut nulla.', 'Dr. Tavares Stoltenberg', 5316090753791, 'https://placeit/200x300', 8, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(834, 1, 1, 9, '4613794', 'Quod quo repudiandae provident eum voluptatem earum.', 'Ms. Pearlie Kshlerin MD', 3335400604099, 'https://placeit/200x300', 16, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(835, 1, 1, 10, '1625975', 'Recusandae illo qui ab.', 'Dr. Abigail Grant DVM', 4591299956360, 'https://placeit/200x300', 12, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(836, 1, 1, 5, '4729552', 'Voluptate quod assumenda quis.', 'Marjory Lindgren', 6911035455366, 'https://placeit/200x300', 14, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(837, 1, 1, 8, '6213628', 'Dolor voluptate maiores vel totam voluptatibus.', 'Prof. Ian Hirthe', 3073367463693, 'https://placeit/200x300', 12, '2026-08-12 07:38:51', '2026-08-12 07:38:51');
INSERT INTO `books` (`id`, `school_id`, `academic_year_id`, `category_id`, `book_code`, `title`, `author`, `isbn_number`, `cover_image`, `availability`, `created_at`, `updated_at`) VALUES
(838, 1, 1, 3, '1337805', 'Debitis tenetur nostrum assumenda aut.', 'Lily Wehner', 8506624178528, 'https://placeit/200x300', 5, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(839, 1, 1, 3, '1224266', 'Et est delectus rem.', 'Adele Gorczany', 6847762415840, 'https://placeit/200x300', 7, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(840, 1, 1, 2, '8194017', 'Consequatur autem non vero rerum tempore eaque.', 'Claude Hickle', 9615488135659, 'https://placeit/200x300', 22, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(841, 1, 1, 2, '8892882', 'Eveniet unde impedit fuga.', 'Charity Willms MD', 4381549332378, 'https://placeit/200x300', 23, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(842, 1, 1, 9, '2060401', 'Sunt porro ipsa quibusdam nulla ea ut.', 'Bettie Quigley', 4240714602671, 'https://placeit/200x300', 6, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(843, 1, 1, 3, '1892735', 'Voluptas sint id sunt.', 'Prof. Elmo Harber', 5478640166113, 'https://placeit/200x300', 20, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(844, 1, 1, 3, '4171880', 'Et voluptatem est mollitia eligendi maiores.', 'Rosa Donnelly', 8914952558361, 'https://placeit/200x300', 19, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(845, 1, 1, 10, '8885381', 'Quo similique nobis ut.', 'Ms. Audreanne Rolfson', 5003322452033, 'https://placeit/200x300', 10, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(846, 1, 1, 1, '6278355', 'Rerum ea et nam.', 'Wilfredo Hand', 5103966620253, 'https://placeit/200x300', 10, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(847, 1, 1, 9, '5073060', 'Harum mollitia quam suscipit.', 'Ms. Elvie Rosenbaum', 5451069111919, 'https://placeit/200x300', 7, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(848, 1, 1, 6, '4774939', 'Molestiae at a dolores.', 'Marcelle Schmeler', 9726133773819, 'https://placeit/200x300', 24, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(849, 1, 1, 7, '1952966', 'Occaecati recusandae omnis aliquid.', 'Ms. Stacy Shields DVM', 7756339574042, 'https://placeit/200x300', 22, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(850, 1, 1, 6, '3875748', 'Ex et modi reiciendis dolore.', 'Dr. Cali Collins IV', 8354201741494, 'https://placeit/200x300', 10, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(851, 1, 1, 5, '2912674', 'Velit vero eveniet voluptatum blanditiis.', 'Leanne Carroll', 4235979989490, 'https://placeit/200x300', 23, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(852, 1, 1, 6, '5460446', 'Soluta corrupti exercitationem velit maxime aut.', 'Donnie Gorczany', 9240604782792, 'https://placeit/200x300', 10, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(853, 1, 1, 1, '5565373', 'Fuga aliquid aliquam doloribus maiores aut voluptas.', 'Jenifer Bauch II', 4982706828323, 'https://placeit/200x300', 20, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(854, 1, 1, 8, '1285117', 'Veniam error odio consectetur ut consequatur.', 'Weston Kirlin', 3050003685831, 'https://placeit/200x300', 21, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(855, 1, 1, 6, '4895107', 'Cumque exercitationem quidem iusto similique.', 'Prof. Genevieve Becker MD', 6995531310473, 'https://placeit/200x300', 23, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(856, 1, 1, 9, '8843038', 'Qui non ut vel non pariatur similique.', 'Leola Ledner PhD', 2773993465771, 'https://placeit/200x300', 21, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(857, 1, 1, 6, '8634824', 'Ullam aut sapiente ea.', 'Mr. Garett Padberg Sr.', 1211645393276, 'https://placeit/200x300', 21, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(858, 1, 1, 2, '5947115', 'Voluptate vitae hic sequi.', 'Wilson Cole Sr.', 9628704981275, 'https://placeit/200x300', 17, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(859, 1, 1, 9, '4303504', 'Amet sit est maxime a.', 'Paris Torphy', 5789175474483, 'https://placeit/200x300', 19, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(860, 1, 1, 10, '2465786', 'Dignissimos porro provident dolorem optio vel id.', 'Zoe Towne DVM', 5438222426905, 'https://placeit/200x300', 17, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(861, 1, 1, 3, '5776261', 'Ipsa vero veniam aut delectus.', 'Lue Rippin', 1800139092438, 'https://placeit/200x300', 17, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(862, 1, 1, 4, '3835557', 'A eius atque excepturi ducimus ut veritatis.', 'Nyasia Pacocha', 8253954760106, 'https://placeit/200x300', 20, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(863, 1, 1, 7, '3625604', 'Illo dolor eos quo mollitia nostrum ex.', 'Kyleigh Metz', 6668162806744, 'https://placeit/200x300', 22, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(864, 1, 1, 3, '7938928', 'Dolorum fugit commodi fugit quis sequi.', 'Prof. Dedrick Swaniawski', 6085840980662, 'https://placeit/200x300', 6, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(865, 1, 1, 3, '2806722', 'Unde quidem minus odio voluptatem corrupti.', 'Janelle Corwin I', 1663537384860, 'https://placeit/200x300', 19, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(866, 1, 1, 10, '4438589', 'Consequatur consequuntur cumque rerum voluptatem incidunt.', 'Polly Gleichner', 5176045757010, 'https://placeit/200x300', 11, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(867, 1, 1, 4, '8139069', 'Impedit qui est sit aut.', 'Ms. Hildegard Bogan', 9616659611156, 'https://placeit/200x300', 23, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(868, 1, 1, 2, '4258397', 'Dolor non nam voluptates et laudantium.', 'Martina Kessler MD', 424583599988, 'https://placeit/200x300', 9, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(869, 1, 1, 1, '8126835', 'Ipsa sint voluptatibus qui enim vel labore.', 'Dr. Cory Prohaska Sr.', 619553629615, 'https://placeit/200x300', 13, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(870, 1, 1, 6, '1776799', 'Id iusto omnis qui sapiente aut hic.', 'Miss Kavon Kohler PhD', 5955381498623, 'https://placeit/200x300', 10, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(871, 1, 1, 4, '2740770', 'Eos sed perferendis quas id sed.', 'Justice Morissette', 2170701377669, 'https://placeit/200x300', 9, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(872, 1, 1, 7, '2984074', 'Ad enim enim magnam sit temporibus.', 'Dr. Gay Durgan', 7486567380497, 'https://placeit/200x300', 11, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(873, 1, 1, 1, '5772877', 'Explicabo autem provident voluptatem sint.', 'Eugene Schulist', 8628079116679, 'https://placeit/200x300', 19, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(874, 1, 1, 4, '1118831', 'Sed nostrum tenetur quos perspiciatis.', 'Earline Koelpin', 4031247396638, 'https://placeit/200x300', 16, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(875, 1, 1, 8, '7319897', 'Earum vel omnis nesciunt illum voluptatem.', 'Beulah Nolan', 4117456016199, 'https://placeit/200x300', 7, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(876, 1, 1, 9, '6190973', 'Nihil ullam hic ut sed tempore.', 'Shanel Conn', 9421441639504, 'https://placeit/200x300', 7, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(877, 1, 1, 9, '3686522', 'Quis voluptate voluptatem a similique.', 'Prof. Isabella Lesch', 351819311352, 'https://placeit/200x300', 15, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(878, 1, 1, 2, '3969396', 'Amet optio repellendus molestiae.', 'Arno Jerde IV', 7120986354782, 'https://placeit/200x300', 8, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(879, 1, 1, 8, '1353141', 'Exercitationem et voluptatem sed saepe vel vel.', 'Shania Rippin', 56169591934, 'https://placeit/200x300', 15, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(880, 1, 1, 5, '6906099', 'Voluptatum eveniet quidem molestiae.', 'Yasmine DuBuque', 2949360044881, 'https://placeit/200x300', 7, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(881, 1, 1, 2, '8119013', 'Ut tempore repellendus suscipit porro ea.', 'Wallace Bartell', 7937902771277, 'https://placeit/200x300', 25, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(882, 1, 1, 2, '4458374', 'Voluptas temporibus occaecati asperiores ipsa at temporibus.', 'Dr. Ruben Wehner II', 7598076704647, 'https://placeit/200x300', 20, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(883, 1, 1, 5, '3412874', 'Vel consequatur et et ut velit.', 'Mr. Kelton Lesch IV', 4717168571537, 'https://placeit/200x300', 22, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(884, 1, 1, 4, '7887709', 'Ducimus ipsum earum adipisci.', 'Prof. Tracey Leuschke', 6977981886708, 'https://placeit/200x300', 21, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(885, 1, 1, 10, '6349335', 'Quis consequuntur porro atque ipsam veniam.', 'Prof. Aric Purdy II', 4045874281762, 'https://placeit/200x300', 22, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(886, 1, 1, 1, '3370994', 'Quia libero est et.', 'Dr. Verner Swift', 7108625892857, 'https://placeit/200x300', 25, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(887, 1, 1, 2, '2669436', 'Ut eveniet doloribus fugiat aperiam.', 'Ms. Joy Hansen Sr.', 2486513374810, 'https://placeit/200x300', 19, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(888, 1, 1, 1, '3645323', 'Magnam debitis quia ut magnam perferendis fuga.', 'Eloy Schmitt', 6363289912551, 'https://placeit/200x300', 17, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(889, 1, 1, 2, '2401981', 'Voluptate quam officiis accusantium sit quo.', 'Mr. Randy Powlowski DVM', 5123438383967, 'https://placeit/200x300', 23, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(890, 1, 1, 3, '1168647', 'Adipisci aspernatur officiis nulla pariatur ut.', 'Dr. Ahmad Rowe DVM', 9823326720091, 'https://placeit/200x300', 6, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(891, 1, 1, 5, '2279686', 'Nesciunt quo excepturi quaerat.', 'Georgette Beer', 5739093359836, 'https://placeit/200x300', 8, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(892, 1, 1, 10, '3141294', 'Repudiandae ducimus modi et molestiae.', 'Prof. Landen Runte', 6174681300927, 'https://placeit/200x300', 22, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(893, 1, 1, 4, '7839201', 'Praesentium ut nesciunt tenetur laudantium enim.', 'Chester Bogan', 627709784293, 'https://placeit/200x300', 11, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(894, 1, 1, 7, '7645954', 'Laudantium ut cupiditate sed eius non ut.', 'Mortimer Littel', 3438711308837, 'https://placeit/200x300', 19, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(895, 1, 1, 8, '6201788', 'Voluptates sunt illo ut odit libero.', 'Gia Lind', 4554822440514, 'https://placeit/200x300', 11, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(896, 1, 1, 6, '2113750', 'Labore fugiat placeat corrupti culpa.', 'Tyrell Feeney PhD', 2402223929409, 'https://placeit/200x300', 21, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(897, 1, 1, 5, '8570717', 'Voluptatem iste qui placeat distinctio.', 'Darion Pagac DVM', 1061910851761, 'https://placeit/200x300', 17, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(898, 1, 1, 9, '3240386', 'Odit velit repudiandae animi.', 'Noelia Sporer III', 65695230637, 'https://placeit/200x300', 11, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(899, 1, 1, 4, '2903492', 'Beatae molestias sed in.', 'Jacinthe Lang', 8129184289536, 'https://placeit/200x300', 24, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(900, 1, 1, 4, '1922924', 'Occaecati ut blanditiis eum.', 'Luna Conn', 925992180359, 'https://placeit/200x300', 11, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(901, 1, 1, 10, '7189172', 'Repudiandae harum quam laboriosam.', 'Ransom Turner', 82022843513, 'https://placeit/200x300', 10, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(902, 1, 1, 3, '8288366', 'Dolorum est qui voluptates ratione itaque necessitatibus.', 'Mr. Darian Schamberger', 1676784004870, 'https://placeit/200x300', 23, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(903, 1, 1, 3, '7871808', 'Saepe sit consequatur consequatur velit nihil provident.', 'Rory Schmitt', 1450790633565, 'https://placeit/200x300', 15, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(904, 1, 1, 9, '4255288', 'Cumque autem aliquam saepe qui dolorem qui.', 'Miss Myra Dickinson Jr.', 6900872078074, 'https://placeit/200x300', 23, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(905, 1, 1, 8, '4103364', 'Laborum est totam aspernatur aspernatur facilis.', 'Valerie Batz II', 9929148130978, 'https://placeit/200x300', 25, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(906, 1, 1, 2, '3987227', 'Occaecati laboriosam accusamus nemo aliquid qui.', 'Prof. Gerson Jacobs', 8044300000850, 'https://placeit/200x300', 14, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(907, 1, 1, 7, '3350239', 'Vel culpa labore et eum.', 'Claudie Schumm', 244002111108, 'https://placeit/200x300', 8, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(908, 1, 1, 4, '3941834', 'Qui voluptatem sunt aut est ut.', 'Mrs. Dandre Konopelski DDS', 7263663680498, 'https://placeit/200x300', 20, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(909, 1, 1, 2, '5968920', 'Officia deserunt magnam ducimus.', 'Dr. Braxton Gulgowski', 8746142443801, 'https://placeit/200x300', 20, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(910, 1, 1, 2, '2314090', 'Doloribus temporibus est et ut fugiat non.', 'Jeff Cummings', 4881317694665, 'https://placeit/200x300', 19, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(911, 1, 1, 10, '1757389', 'Magnam iure autem distinctio possimus qui corporis.', 'Alvis Schuppe IV', 6408099123916, 'https://placeit/200x300', 6, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(912, 1, 1, 8, '2159628', 'Voluptatem in corporis consequatur voluptatibus natus.', 'Katrine Harber', 9361748947035, 'https://placeit/200x300', 7, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(913, 1, 1, 6, '4932114', 'Eius sunt saepe dolorem rerum ab.', 'Gerhard Kirlin', 176235834540, 'https://placeit/200x300', 8, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(914, 1, 1, 6, '6997501', 'Unde et dolores et velit dolor.', 'Jettie Rippin MD', 6048411008479, 'https://placeit/200x300', 17, '2026-08-12 07:38:51', '2026-08-12 07:38:51'),
(915, 1, 1, 4, '8584554', 'Sapiente dolor consequatur repellat quibusdam distinctio aut.', 'Bernadette Schaefer', 1292287095537, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(916, 1, 1, 7, '6538454', 'Nisi exercitationem officiis aut.', 'Helene Dibbert', 1178234815208, 'https://placeit/200x300', 8, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(917, 1, 1, 7, '3446326', 'Commodi omnis et ut quia dolores.', 'Emilio Howe', 6688365846965, 'https://placeit/200x300', 7, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(918, 1, 1, 1, '8686750', 'Suscipit omnis voluptates quisquam inventore odio sed.', 'Prof. Paxton Abshire IV', 9820164637932, 'https://placeit/200x300', 6, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(919, 1, 1, 3, '5526549', 'Quia ut incidunt iusto voluptas vero.', 'Alexa Kuphal', 4239453270203, 'https://placeit/200x300', 15, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(920, 1, 1, 4, '7679770', 'Natus laboriosam pariatur eos repudiandae.', 'Prof. Thalia Hoeger DDS', 1511979198432, 'https://placeit/200x300', 9, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(921, 1, 1, 3, '2002545', 'Aut alias nisi neque ex omnis.', 'Maribel Okuneva', 7826810316918, 'https://placeit/200x300', 8, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(922, 1, 1, 2, '8694184', 'Nisi magni sunt natus.', 'Lewis Lynch', 4954029143384, 'https://placeit/200x300', 7, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(923, 1, 1, 8, '4658379', 'Illum ut quisquam placeat deserunt nostrum assumenda.', 'Julius Keeling', 6687995482307, 'https://placeit/200x300', 6, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(924, 1, 1, 3, '4853864', 'Eos sint labore earum deleniti et.', 'Pattie Bechtelar', 9703670711849, 'https://placeit/200x300', 8, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(925, 1, 1, 6, '6119756', 'Illo consequatur voluptatum qui quae officia eum.', 'Prof. Omari Kutch', 8176057021502, 'https://placeit/200x300', 12, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(926, 1, 1, 5, '5753779', 'Voluptatem id et id quis dolore.', 'Greg Lebsack', 5718400669745, 'https://placeit/200x300', 18, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(927, 1, 1, 6, '6118831', 'Autem saepe perspiciatis aut est dolorum voluptates.', 'Anabelle Howell', 5741043420145, 'https://placeit/200x300', 7, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(928, 1, 1, 7, '6087584', 'Accusamus et natus alias officiis ad voluptatem.', 'Prof. Albin Senger III', 8061262694262, 'https://placeit/200x300', 7, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(929, 1, 1, 9, '7192826', 'Repudiandae quis natus aliquid.', 'Sigrid Wilkinson', 8017366641725, 'https://placeit/200x300', 15, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(930, 1, 1, 8, '3250993', 'Officia tempore ullam ipsum illo.', 'Prof. Marcella DuBuque', 2116963141235, 'https://placeit/200x300', 9, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(931, 1, 1, 1, '3092688', 'Consequatur et eum voluptatem quam voluptas provident.', 'Ahmed Terry', 9968377521911, 'https://placeit/200x300', 9, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(932, 1, 1, 7, '8484823', 'Laudantium ad error iusto enim.', 'Mrs. Berniece Kub', 1093378066661, 'https://placeit/200x300', 22, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(933, 1, 1, 8, '1529803', 'Sequi consequatur neque inventore placeat aliquid qui.', 'Jeanette Bauch', 6315701462397, 'https://placeit/200x300', 21, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(934, 1, 1, 4, '3330406', 'Praesentium culpa qui molestiae similique quia.', 'Dr. Eladio Bergnaum MD', 4835782228603, 'https://placeit/200x300', 14, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(935, 1, 1, 7, '7543895', 'Dolores corrupti autem dolor suscipit.', 'Brenden Hoppe', 2001022043752, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(936, 1, 1, 7, '7357538', 'Dolor et officia voluptas.', 'Buck Stiedemann', 2355012209292, 'https://placeit/200x300', 8, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(937, 1, 1, 3, '7114970', 'Voluptas qui magnam expedita.', 'Arnulfo Wiza', 6136214451018, 'https://placeit/200x300', 18, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(938, 1, 1, 10, '6499663', 'Quibusdam error possimus dolor et rem incidunt.', 'Brionna Bins', 6068229279137, 'https://placeit/200x300', 25, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(939, 1, 1, 2, '4671458', 'Enim delectus eius consequatur sed quaerat quibusdam.', 'Miss Lottie Erdman', 329974731490, 'https://placeit/200x300', 23, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(940, 1, 1, 10, '4405788', 'Perspiciatis culpa omnis et perferendis atque.', 'Dr. Tyreek Heidenreich I', 7428960932590, 'https://placeit/200x300', 19, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(941, 1, 1, 7, '4775312', 'Aspernatur sint omnis voluptas dicta dolor.', 'Jerad Kovacek DDS', 3072111775327, 'https://placeit/200x300', 17, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(942, 1, 1, 10, '5360398', 'Unde eveniet voluptas totam voluptatem autem.', 'Mr. Wilfrid Conroy MD', 6903466908412, 'https://placeit/200x300', 14, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(943, 1, 1, 9, '1149188', 'Minus illo nulla a ex minus similique.', 'Dr. Odell Hand Sr.', 5680348382478, 'https://placeit/200x300', 25, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(944, 1, 1, 1, '6202890', 'Porro eos laudantium dolorum velit.', 'Kari Cruickshank', 6762853181285, 'https://placeit/200x300', 19, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(945, 1, 1, 6, '3467981', 'Voluptate eius in harum.', 'Hal Bergstrom I', 1797847950269, 'https://placeit/200x300', 16, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(946, 1, 1, 7, '4041278', 'Ducimus neque culpa iusto molestias illo.', 'Mr. Mallory Quitzon DDS', 5488181759354, 'https://placeit/200x300', 24, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(947, 1, 1, 4, '1455729', 'Est aperiam unde rerum porro.', 'Dakota Nienow', 9229331545290, 'https://placeit/200x300', 17, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(948, 1, 1, 7, '5264823', 'Optio ea vitae est sed non quo.', 'Parker Ryan II', 4477614583360, 'https://placeit/200x300', 12, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(949, 1, 1, 7, '6461631', 'Praesentium suscipit consectetur enim.', 'Talia Mertz DVM', 7253309788190, 'https://placeit/200x300', 24, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(950, 1, 1, 8, '1873414', 'Est aut qui illo.', 'Kiana Rogahn', 2021550280672, 'https://placeit/200x300', 15, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(951, 1, 1, 9, '6574892', 'Nemo quis aliquid reiciendis exercitationem.', 'Maximo Pacocha', 6300209185381, 'https://placeit/200x300', 8, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(952, 1, 1, 4, '8014768', 'Culpa harum qui eveniet.', 'Max Parisian', 3314525992205, 'https://placeit/200x300', 14, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(953, 1, 1, 8, '4087284', 'Velit sunt quia explicabo.', 'Audra Hoeger', 9486726736781, 'https://placeit/200x300', 23, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(954, 1, 1, 7, '3974267', 'Minima autem ab perferendis reiciendis error.', 'Jace Johnson', 6054128903358, 'https://placeit/200x300', 18, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(955, 1, 1, 3, '5010023', 'Tempora quisquam amet aut ipsam qui.', 'Dr. Kim Becker DVM', 9526154544456, 'https://placeit/200x300', 25, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(956, 1, 1, 4, '1518520', 'Quam explicabo rerum omnis.', 'Leola Graham', 6918667536555, 'https://placeit/200x300', 21, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(957, 1, 1, 1, '2188011', 'Sed atque ut voluptate vero suscipit.', 'Tracey Roob', 1708360061417, 'https://placeit/200x300', 12, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(958, 1, 1, 7, '1213546', 'Consequatur nemo non corporis.', 'Magdalen Larkin', 7865338831091, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(959, 1, 1, 3, '5855259', 'Est at quae consequatur numquam ex.', 'Ellis Metz', 5113442686765, 'https://placeit/200x300', 6, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(960, 1, 1, 7, '5701782', 'Explicabo sint occaecati non autem.', 'Freddy Strosin', 6831815570884, 'https://placeit/200x300', 22, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(961, 1, 1, 2, '6543996', 'Quia illo et odit labore.', 'Prof. Maxime Bahringer III', 7267084515124, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(962, 1, 1, 7, '3761001', 'Quo illo et quo saepe hic.', 'Mr. Dwight Runte Jr.', 9830959825406, 'https://placeit/200x300', 24, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(963, 1, 1, 2, '3210235', 'Fugit eligendi nulla mollitia facilis.', 'Caden Hickle', 9262359579694, 'https://placeit/200x300', 8, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(964, 1, 1, 10, '8309518', 'Architecto magni aut nulla quia error enim.', 'Sonny Ernser', 526760681896, 'https://placeit/200x300', 22, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(965, 1, 1, 8, '8652890', 'Veritatis blanditiis nihil autem quia.', 'Augusta Gleichner III', 5666491208889, 'https://placeit/200x300', 10, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(966, 1, 1, 6, '7533934', 'Ut incidunt quis deserunt omnis.', 'Harmon Okuneva', 1834315805253, 'https://placeit/200x300', 8, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(967, 1, 1, 8, '1601734', 'Consequatur fuga modi voluptas odit minus repellat.', 'Demond Schiller MD', 6051886529820, 'https://placeit/200x300', 5, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(968, 1, 1, 4, '7072688', 'Incidunt quas asperiores ut et.', 'Mrs. Eunice Dicki', 909554546753, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(969, 1, 1, 1, '1626442', 'Et ut reprehenderit explicabo.', 'Prof. Noelia Dietrich DVM', 9457606360297, 'https://placeit/200x300', 5, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(970, 1, 1, 8, '2780230', 'Eos ut beatae quia.', 'Walton Romaguera', 7168096165829, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(971, 1, 1, 10, '4810226', 'Et quia natus ratione architecto.', 'Christian Parisian', 7361627516798, 'https://placeit/200x300', 12, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(972, 1, 1, 2, '4041321', 'Quas itaque et corporis laboriosam.', 'Ms. Janis Bogan', 8764263398138, 'https://placeit/200x300', 15, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(973, 1, 1, 2, '2228749', 'Facilis sunt similique qui accusamus.', 'Gracie Heathcote', 4848959379749, 'https://placeit/200x300', 18, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(974, 1, 1, 1, '3761986', 'Quia quo ipsam aliquid aperiam.', 'Dr. Jana Paucek', 4920502483278, 'https://placeit/200x300', 23, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(975, 1, 1, 5, '1562558', 'Dolores et facere suscipit.', 'Jana Olson', 6526884103414, 'https://placeit/200x300', 18, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(976, 1, 1, 2, '1638673', 'Voluptatibus atque iure velit.', 'Geoffrey Osinski', 2259795572768, 'https://placeit/200x300', 24, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(977, 1, 1, 2, '6374715', 'Ut nobis at aut ipsam vel.', 'Leanne Mosciski', 7101580830360, 'https://placeit/200x300', 8, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(978, 1, 1, 9, '3699337', 'Rerum ipsam officia doloremque.', 'Ocie Mertz', 8623111788432, 'https://placeit/200x300', 9, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(979, 1, 1, 7, '8893200', 'Laborum optio laudantium error error.', 'Prof. Dale Koss', 4959036429667, 'https://placeit/200x300', 6, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(980, 1, 1, 8, '8200017', 'Vero doloribus laborum rerum minima et eligendi.', 'Elissa Gottlieb', 8320625773236, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(981, 1, 1, 8, '4473368', 'Sint tenetur eos cum qui quia.', 'Dr. Albin Lubowitz', 7970550205503, 'https://placeit/200x300', 14, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(982, 1, 1, 6, '1948127', 'Vel quia nobis voluptatum aut harum porro.', 'D\'angelo Schumm Sr.', 1416682506744, 'https://placeit/200x300', 22, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(983, 1, 1, 8, '8524024', 'Aperiam consequuntur nobis itaque nesciunt qui neque.', 'Viviane Graham PhD', 1283184484470, 'https://placeit/200x300', 16, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(984, 1, 1, 4, '5341003', 'Sit nulla magnam sit commodi.', 'Adan Parisian', 7360642832098, 'https://placeit/200x300', 19, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(985, 1, 1, 10, '5803836', 'Ut magnam quam fuga minima.', 'Stuart Larson', 4572373951266, 'https://placeit/200x300', 13, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(986, 1, 1, 6, '6701707', 'Qui omnis aut velit.', 'Augusta Waelchi MD', 4596022035534, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(987, 1, 1, 9, '6551493', 'Eaque iure delectus non.', 'Jeanie Hansen', 9639296201771, 'https://placeit/200x300', 12, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(988, 1, 1, 6, '1845370', 'Non maxime qui consectetur.', 'Miss Sierra Predovic II', 6531376776175, 'https://placeit/200x300', 14, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(989, 1, 1, 5, '2744072', 'Delectus assumenda ut qui temporibus amet velit.', 'Miss Pearline Shields MD', 9924325368502, 'https://placeit/200x300', 9, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(990, 1, 1, 9, '7549047', 'Ducimus provident est impedit aut molestiae id.', 'Maynard Grimes DDS', 1905353641254, 'https://placeit/200x300', 11, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(991, 1, 1, 9, '6433863', 'Iure voluptatem ut rerum quo voluptas possimus.', 'Annette Corwin', 7848421760324, 'https://placeit/200x300', 10, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(992, 1, 1, 4, '6963469', 'Sit odit nulla nobis dignissimos.', 'Camylle Torp DDS', 3405013720438, 'https://placeit/200x300', 16, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(993, 1, 1, 4, '4230192', 'Beatae qui non deserunt.', 'Prof. Destiny Kertzmann', 3254202140072, 'https://placeit/200x300', 18, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(994, 1, 1, 3, '1577109', 'Perferendis suscipit ut et fugit.', 'Simeon Mueller', 7876475707507, 'https://placeit/200x300', 14, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(995, 1, 1, 4, '3347808', 'Et aspernatur est voluptatibus id similique.', 'Adele Kozey I', 8962575315618, 'https://placeit/200x300', 12, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(996, 1, 1, 10, '2276488', 'Est ut tempora culpa numquam cum ut consequuntur.', 'Dr. Mae Kertzmann Jr.', 2565831792107, 'https://placeit/200x300', 24, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(997, 1, 1, 2, '4526447', 'Exercitationem eveniet et voluptatum veniam corrupti.', 'Laurianne Collins', 6218627594084, 'https://placeit/200x300', 20, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(998, 1, 1, 10, '3695857', 'Voluptates aperiam minima eos ut aut cupiditate.', 'Ursula Haley', 6447910969098, 'https://placeit/200x300', 25, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(999, 1, 1, 9, '3081009', 'Enim et provident minus.', 'Dr. Kristin Harris PhD', 5203637713571, 'https://placeit/200x300', 18, '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(1000, 1, 1, 2, '3912979', 'Ad libero dicta magnam.', 'Minerva Hodkiewicz', 9566673183361, 'https://placeit/200x300', 10, '2026-08-12 07:38:52', '2026-08-12 07:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `books_category`
--

CREATE TABLE `books_category` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books_category`
--

INSERT INTO `books_category` (`id`, `school_id`, `category`, `created_at`, `updated_at`) VALUES
(1, 1, 'Astro Physics', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(2, 1, 'Arts', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(3, 1, 'Comics', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(4, 1, 'Computer Science', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(5, 1, 'History', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(6, 1, 'Music', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(7, 1, 'Technology', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(8, 1, 'Magazines', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(9, 1, 'Question Bank', '2026-08-12 07:38:41', '2026-08-12 07:38:41'),
(10, 1, 'Projects', '2026-08-12 07:38:41', '2026-08-12 07:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `books_lending`
--

CREATE TABLE `books_lending` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `book_code_no` int NOT NULL,
  `library_card_no` int NOT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issued_by` int UNSIGNED DEFAULT NULL,
  `status` enum('pending','returned','cancel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_log`
--

CREATE TABLE `call_log` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `calling_purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `incoming_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outgoing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `entry_by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `standard_id` int UNSIGNED NOT NULL,
  `subject_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int UNSIGNED NOT NULL,
  `country_id` int UNSIGNED NOT NULL,
  `state_id` int UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `state_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 1, 'Amaravati', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(2, 7, 2, 'Itanagar', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(3, 7, 3, 'Dispur', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(4, 7, 4, 'Patna', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(5, 7, 5, 'Raipur', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(6, 7, 6, 'Panaji', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(7, 7, 7, 'Gandhinagar', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(8, 7, 8, 'Chandigarh', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(9, 7, 9, 'Shimla', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(10, 7, 10, 'Srinagar', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(11, 7, 11, 'Ranchi', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(12, 7, 12, 'Bengaluru', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(13, 7, 13, 'Thiruvananthapuram', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(14, 7, 14, 'Bhopal', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(15, 7, 15, 'Mumbai', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(16, 7, 16, 'Imphal', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(17, 7, 17, 'Shillong', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(18, 7, 18, 'Aizawl', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(19, 7, 19, 'Kohima', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(20, 7, 20, 'Bhubaneswar', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(21, 7, 21, 'Chandigarh', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(22, 7, 22, 'Jaipur', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(23, 7, 23, 'Gangtok', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(24, 7, 24, 'Chennai', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(25, 7, 25, 'Hyderabad', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(26, 7, 26, 'Agartala', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(27, 7, 27, 'Lucknow', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(28, 7, 28, 'Dehradun', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(29, 7, 29, 'Kolkata', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(30, 7, 24, 'Coimbatore', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(31, 7, 24, 'Madurai', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(32, 7, 24, 'Trichy', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(33, 7, 15, 'Pune', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(34, 7, 13, 'Cochin', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(35, 7, 24, 'Salem', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(36, 7, 24, 'Tirunelveli', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(37, 7, 24, 'Tiruppur', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(38, 7, 24, 'Vellore', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(39, 7, 24, 'Erode', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(40, 7, 24, 'Thoothukudi', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(41, 7, 24, 'Dindigul', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(42, 7, 24, 'Thanjavur', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(43, 7, 24, 'Ranipet', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(44, 7, 24, 'Sivakasi', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(45, 7, 24, 'Karur', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(46, 7, 24, 'Ooty', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(47, 7, 24, 'Hosur', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(48, 7, 24, 'Nagercoil', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(49, 7, 24, 'Kanchipuram', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(50, 7, 24, 'Kumarapalayam', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(51, 7, 24, 'Namakkal', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(52, 7, 24, 'Karaikkudi', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(53, 7, 24, 'Neyveli', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(54, 7, 24, 'Cuddalore', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(55, 7, 24, 'Kumbakonam', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(56, 7, 24, 'Tiruvannamalai', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(57, 7, 24, 'Pollachi', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(58, 7, 24, 'Rajapalayam', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(59, 7, 24, 'Virudhunagar', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(60, 7, 24, 'Gudiyatham', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(61, 7, 24, 'Pudukkotai', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(62, 7, 24, 'Vaniyambadi', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(63, 7, 24, 'Ambur', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(64, 7, 24, 'Tirupathur', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(65, 7, 24, 'Nagapattinam', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_room_pages`
--

CREATE TABLE `class_room_pages` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_room_page_attachments`
--

CREATE TABLE `class_room_page_attachments` (
  `id` int UNSIGNED NOT NULL,
  `page_id` int UNSIGNED NOT NULL,
  `attachment_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_room_page_categories`
--

CREATE TABLE `class_room_page_categories` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_room_page_categories`
--

INSERT INTO `class_room_page_categories` (`id`, `school_id`, `academic_year_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'english', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(2, 1, 1, 'general_knowledge', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(3, 1, 1, 'mathematics', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(4, 1, 1, 'others', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(5, 1, 1, 'science', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(6, 1, 1, 'social_studies', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(7, 1, 1, 'tamil', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_room_page_details`
--

CREATE TABLE `class_room_page_details` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `page_id` int UNSIGNED NOT NULL,
  `is_following` tinyint(1) DEFAULT NULL,
  `like` tinyint(1) DEFAULT NULL,
  `dislike` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher_links`
--

CREATE TABLE `class_teacher_links` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED NOT NULL,
  `subject_id` int UNSIGNED NOT NULL,
  `teacher_id` int UNSIGNED NOT NULL,
  `no_of_periods` int DEFAULT NULL,
  `remaining_periods` int DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `user_one` int UNSIGNED NOT NULL,
  `user_two` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_chat`
--

CREATE TABLE `conversation_chat` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_message_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_messages`
--

CREATE TABLE `conversation_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `conversation_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversation_user`
--

CREATE TABLE `conversation_user` (
  `id` bigint UNSIGNED NOT NULL,
  `conversation_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `short_name`, `iso_code`, `tel_prefix`, `status`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '93', 0, NULL, '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(2, 'Albania', 'AL', 'ALB', '355', 0, NULL, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(3, 'Argentina', 'AR', 'ARG', '54', 0, NULL, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(4, 'Australia', 'AU', 'AUS', '61', 0, NULL, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(5, 'China', 'CH', 'CHN', '86', 0, NULL, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(6, 'Egypt', 'EG', 'EGY', '20', 0, NULL, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(7, 'India', 'IN', 'IND', '91', 1, NULL, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(8, 'Malaysia', 'MA', 'MYS', '60', 0, NULL, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(9, 'Switzerland', 'SW', 'CHE', '41', 0, NULL, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disciplines`
--

CREATE TABLE `disciplines` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `incident_date` datetime NOT NULL,
  `reported_by` int UNSIGNED NOT NULL,
  `incident_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_taken` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('discipline','performance','others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` enum('video','audio','image') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_parents` tinyint(1) NOT NULL DEFAULT '0',
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `version` int NOT NULL DEFAULT '1',
  `type` enum('certificates','id_proof','others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standard_id` int UNSIGNED DEFAULT NULL,
  `batch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_type` enum('school','class','alumni') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `repeats` int DEFAULT '0',
  `freq` int DEFAULT '0',
  `freq_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `category` enum('culturals','education','exam','holidays','meeting') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organised_by` longtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `allDay` tinyint NOT NULL DEFAULT '1',
  `url` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `school_id`, `academic_year_id`, `standard_id`, `batch`, `select_type`, `title`, `description`, `repeats`, `freq`, `freq_term`, `location`, `category`, `organised_by`, `image`, `color`, `start_date`, `end_date`, `allDay`, `url`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, '', 'school', 'New Year', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-01-01 00:00:00', '2026-01-01 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(2, 1, 1, NULL, '', 'school', 'Pongal', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-01-14 00:00:00', '2026-01-14 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(3, 1, 1, NULL, '', 'school', 'Thiruvalluvar Day', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-01-15 00:00:00', '2026-01-15 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(4, 1, 1, NULL, '', 'school', 'Uzhavar Thirunal', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-01-16 00:00:00', '2026-01-16 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(5, 1, 1, NULL, '', 'school', 'Republic Day', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-01-26 00:00:00', '2026-01-26 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(6, 1, 1, NULL, '', 'school', 'Maha Shivaratri', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-02-15 00:00:00', '2026-02-15 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(7, 1, 1, NULL, '', 'school', 'Ramzan', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-03-20 00:00:00', '2026-03-20 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(8, 1, 1, NULL, '', 'school', 'Ugadi', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-03-19 00:00:00', '2026-03-19 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(9, 1, 1, NULL, '', 'school', 'Good Friday', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-04-03 00:00:00', '2026-04-03 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(10, 1, 1, NULL, '', 'school', 'Tamil New Year', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-04-14 00:00:00', '2026-04-14 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(11, 1, 1, NULL, '', 'school', 'Bakrid', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-05-28 00:00:00', '2026-05-28 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(12, 1, 1, NULL, '', 'school', 'Muharram', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-08-17 00:00:00', '2026-08-17 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(13, 1, 1, NULL, '', 'school', 'Krishna Jayanthi', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-09-04 00:00:00', '2026-09-04 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(14, 1, 1, NULL, '', 'school', 'Vinayagar Chaturthi', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-09-13 00:00:00', '2026-09-13 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(15, 1, 1, NULL, '', 'school', 'Gandhi Jayanthi', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-10-02 00:00:00', '2026-10-02 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(16, 1, 1, NULL, '', 'school', 'Ayudha Pooja', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-10-19 00:00:00', '2026-10-19 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(17, 1, 1, NULL, '', 'school', 'Vijaya Dasami', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-10-20 00:00:00', '2026-10-20 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(18, 1, 1, NULL, '', 'school', 'Deepavali', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-11-08 00:00:00', '2026-11-08 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(19, 1, 1, NULL, '', 'school', 'Christmas', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2026-12-25 00:00:00', '2026-12-25 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(20, 1, 1, NULL, '', 'school', 'New Year', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-01-01 00:00:00', '2027-01-01 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(21, 1, 1, NULL, '', 'school', 'Pongal', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-01-14 00:00:00', '2027-01-14 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(22, 1, 1, NULL, '', 'school', 'Thiruvalluvar Day', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-01-15 00:00:00', '2027-01-15 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(23, 1, 1, NULL, '', 'school', 'Uzhavar Thirunal', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-01-16 00:00:00', '2027-01-16 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(24, 1, 1, NULL, '', 'school', 'Republic Day', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-01-26 00:00:00', '2027-01-26 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(25, 1, 1, NULL, '', 'school', 'Maha Shivaratri', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-03-08 00:00:00', '2027-03-08 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(26, 1, 1, NULL, '', 'school', 'Ramzan', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-02-09 00:00:00', '2027-02-09 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(27, 1, 1, NULL, '', 'school', 'Ugadi', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-04-07 00:00:00', '2027-04-07 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(28, 1, 1, NULL, '', 'school', 'Good Friday', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-03-26 00:00:00', '2027-03-26 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(29, 1, 1, NULL, '', 'school', 'Tamil New Year', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-04-14 00:00:00', '2027-04-14 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(30, 1, 1, NULL, '', 'school', 'Bakrid', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-05-18 00:00:00', '2027-05-18 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(31, 1, 1, NULL, '', 'school', 'Muharram', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-08-06 00:00:00', '2027-08-06 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(32, 1, 1, NULL, '', 'school', 'Krishna Jayanthi', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-08-25 00:00:00', '2027-08-25 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(33, 1, 1, NULL, '', 'school', 'Vinayagar Chaturthi', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-09-02 00:00:00', '2027-09-02 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(34, 1, 1, NULL, '', 'school', 'Gandhi Jayanthi', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-10-02 00:00:00', '2027-10-02 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(35, 1, 1, NULL, '', 'school', 'Ayudha Pooja', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-10-08 00:00:00', '2027-10-08 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(36, 1, 1, NULL, '', 'school', 'Vijaya Dasami', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-10-09 00:00:00', '2027-10-09 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(37, 1, 1, NULL, '', 'school', 'Deepavali', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-10-29 00:00:00', '2027-10-29 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(38, 1, 1, NULL, '', 'school', 'Christmas', NULL, 0, 0, NULL, NULL, 'holidays', NULL, NULL, '', '2027-12-25 00:00:00', '2027-12-25 00:00:00', 1, NULL, 'inactive', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_galleries`
--

CREATE TABLE `event_galleries` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `event_id` int UNSIGNED NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `admin_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_messages`
--

CREATE TABLE `feedback_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `feedback_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` enum('feedback_or_bug_for_app_or_software','student_profile_or_info','complaints','suggestions','others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` enum('0','has_seen','action_taken') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_from_sender` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_receiver` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED DEFAULT NULL,
  `fee_group_id` int UNSIGNED DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_group`
--

CREATE TABLE `fee_group` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_group`
--

INSERT INTO `fee_group` (`id`, `school_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Transport Fee', 'Transport Fee', '2026-08-12 11:30:31', '2026-08-12 11:30:31', NULL),
(2, 1, 'Tuition Fee', 'Monthly Tuition Fee', '2026-08-12 11:30:31', '2026-08-12 11:30:31', NULL),
(3, 1, 'Admission Fee', 'One-time Admission Fee', '2026-08-12 11:30:31', '2026-08-12 11:30:31', NULL),
(4, 1, 'Library Fee', 'Library & Reading Room Fee', '2026-08-12 11:30:32', '2026-08-12 11:30:32', NULL),
(5, 1, 'Lab Fee', 'Science / Computer Lab Fee', '2026-08-12 11:30:32', '2026-08-12 11:30:32', NULL),
(6, 1, 'Sports Fee', 'Sports & Physical Activities', '2026-08-12 11:30:32', '2026-08-12 11:30:32', NULL),
(7, 1, 'Annual Fee', 'Annual Maintenance Fee', '2026-08-12 11:30:32', '2026-08-12 11:30:32', NULL),
(8, 1, 'Exam Fee', 'Examination Fee', '2026-08-12 11:30:32', '2026-08-12 11:30:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fee_payments`
--

CREATE TABLE `fee_payments` (
  `id` int UNSIGNED NOT NULL,
  `fee_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `paid_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `concession_applied` tinyint(1) DEFAULT NULL,
  `paid_on` date DEFAULT NULL,
  `payment_type` enum('cash','bank') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_parent` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED DEFAULT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('global','class') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'class',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` bigint UNSIGNED NOT NULL,
  `group_id` bigint UNSIGNED NOT NULL,
  `member_id` bigint UNSIGNED NOT NULL,
  `member_type` enum('student','teacher','non_teaching') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homeworks`
--

CREATE TABLE `homeworks` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED NOT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `teacher_id` int UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `submission_date` datetime DEFAULT NULL,
  `status` enum('draft','publish') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homework_approvals`
--

CREATE TABLE `homework_approvals` (
  `id` int UNSIGNED NOT NULL,
  `homework_id` bigint UNSIGNED NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approved','pending','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approved_by` int UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"6abb6f0e-01c4-4216-9c89-a600dafae469\",\"displayName\":\"App\\\\Listeners\\\\LogSuccessfulLogin\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:32:\\\"App\\\\Listeners\\\\LogSuccessfulLogin\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:28:\\\"Illuminate\\\\Auth\\\\Events\\\\Login\\\":3:{s:5:\\\"guard\\\";s:3:\\\"web\\\";s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:4:{i:0;s:11:\\\"userprofile\\\";i:1;s:7:\\\"members\\\";i:2;s:8:\\\"children\\\";i:3;s:7:\\\"parents\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"remember\\\";b:0;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1786520440,\"delay\":null}', 0, NULL, 1786520440, 1786520440),
(2, 'default', '{\"uuid\":\"e8f340b3-49c7-4641-8083-590d98552a71\",\"displayName\":\"App\\\\Listeners\\\\LogSuccessfulLogin\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":26:{s:5:\\\"class\\\";s:32:\\\"App\\\\Listeners\\\\LogSuccessfulLogin\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:28:\\\"Illuminate\\\\Auth\\\\Events\\\\Login\\\":3:{s:5:\\\"guard\\\";s:3:\\\"web\\\";s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:4:{i:0;s:11:\\\"userprofile\\\";i:1;s:7:\\\"members\\\";i:2;s:8:\\\"children\\\";i:3;s:7:\\\"parents\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"remember\\\";b:0;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:14:\\\"shouldBeUnique\\\";b:0;s:29:\\\"shouldBeUniqueUntilProcessing\\\";b:0;s:8:\\\"uniqueId\\\";N;s:9:\\\"uniqueFor\\\";N;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:12:\\\"messageGroup\\\";N;s:12:\\\"deduplicator\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\",\"batchId\":null},\"createdAt\":1786531754,\"delay\":null}', 0, NULL, 1786531754, 1786531754);

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'break', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(2, 'clone', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(3, 'die', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(4, 'empty', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(5, 'endswitch', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(6, 'final', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(7, 'global', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(8, 'inlude_once', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(9, 'list', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(10, 'private', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(11, 'return', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(12, 'try', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(13, 'abstract', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(14, 'callable', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(15, 'const', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(16, 'do', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(17, 'enddeclare', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(18, 'endwhile', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(19, 'finally', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(20, 'goto', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(21, 'instanceof', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(22, 'namespace', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(23, 'xor', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(24, 'static', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(25, 'unset', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(26, 'yield', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(27, 'and', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(28, 'case', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(29, 'continue', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(30, 'echo', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(31, 'endfor', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(32, 'eval', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(33, 'for', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(34, 'if', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(35, 'insteadof', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(36, 'new', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(37, 'public', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(38, 'switch', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(39, 'use', '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(40, 'yield from', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(41, 'array', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(42, 'catch', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(43, 'declare', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(44, 'else', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(45, 'endforeach', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(46, 'exit', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(47, 'foreach', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(48, 'implements', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(49, 'interface', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(50, 'or', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(51, 'require', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(52, 'throw', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(53, 'var', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(54, 'as', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(55, 'class', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(56, 'default', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(57, 'elseif', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(58, 'endif', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(59, 'extends', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(60, 'function', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(61, 'include', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(62, 'isset', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(63, 'print', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(64, 'require_once', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(65, 'trait', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(66, 'while', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(67, 'FileZilla', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(68, 'Sublime', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(69, 'Slack', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(70, 'google', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(71, 'gmail', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(72, 'yahoo', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(73, 'Mailtrap', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(74, 'cPanel', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(75, 'Laragon', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(76, 'Postman', '2026-08-12 07:38:37', '2026-08-12 07:38:37'),
(77, 'MySQL', '2026-08-12 07:38:37', '2026-08-12 07:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_no_of_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `school_id`, `academic_year_id`, `name`, `max_no_of_days`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Earned Leave or Privilege Leave', '2', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(2, 1, 1, 'Casual Leave', '1', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(3, 1, 1, 'Sick Leave or Medical Leave', '1', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(4, 1, 1, 'Maternity Leave', '45', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(5, 1, 1, 'Quarantine Leave', '5', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(6, 1, 1, 'Study Leave or Sabbatical Leave', '7', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_plans`
--

CREATE TABLE `lesson_plans` (
  `id` int UNSIGNED NOT NULL,
  `teacher_link_id` int UNSIGNED NOT NULL,
  `unit_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` time NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `objective` longtext COLLATE utf8mb4_unicode_ci,
  `materials_required` longtext COLLATE utf8mb4_unicode_ci,
  `introduction` longtext COLLATE utf8mb4_unicode_ci,
  `procedure` longtext COLLATE utf8mb4_unicode_ci,
  `conclusion` longtext COLLATE utf8mb4_unicode_ci,
  `assessment` longtext COLLATE utf8mb4_unicode_ci,
  `modification` longtext COLLATE utf8mb4_unicode_ci,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('approved','archived','cancel','draft','pending','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `published_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lesson_plan_approvals`
--

CREATE TABLE `lesson_plan_approvals` (
  `id` int UNSIGNED NOT NULL,
  `lesson_plan_id` int UNSIGNED NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_by` int UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `library_card`
--

CREATE TABLE `library_card` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `library_card_no` int NOT NULL,
  `book_limit` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `magazines`
--

CREATE TABLE `magazines` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int DEFAULT NULL,
  `bulletin_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mailtemplates`
--

CREATE TABLE `mailtemplates` (
  `id` int UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `mail_content` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mailtemplates`
--

INSERT INTO `mailtemplates` (`id`, `name`, `subject`, `mail_content`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'login', 'Logged In', 'Hi :name <br> \r\n                                Successful Authorization. <br>\r\n                                You have successfully logged into  your account. <br>\r\n                                Don\"t recognize this activity?  <br>\r\n                                Please  change password  for your email immediately   <br>\r\n                                Thanks & Regards <br>                         \r\n                                Administration Team <br>', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(2, 'new_user_register', 'New User Registration', 'Hello ! <br> \r\n                                New user has registered - :mail. Please login to see details.\r\n                                Thanks & Regards <br>                         \r\n                                Administration Team <br>', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(3, 'reset_password', 'Reset Password', 'Hi :name <br> \r\n                                Please click below link to reset your password. <br>\r\n                                <a href= \" :resetlink\" style=\"border: none;\r\n                                    color: white; padding: 10px 15px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer; background-color: #008CBA;\">Reset Password</a> <br>\r\n                                Thanks & Regards <br> \r\n                                Administration Team <br>', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(4, 'expired_approve_alert', 'New Expired Alert', 'Hi <br>\r\n                            Subscription Expiration Details<br>\r\n\r\n                            School Name - :school_name \r\n                            User Name   - :name \r\n                            End Date    - :end_date \r\n                      \r\n                            New expired has been posted for this school \r\n                            If you want to continue subscription , Please click the below link\r\n                            \r\n                            :url \r\n\r\n                            Thanks & Regards \r\n                            Administration Team', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(5, 'site_expired_mail', 'Site Expired Mail ', 'Hi <br>\r\n                            Subscription Expiration Details<br>\r\n\r\n                            School Name - :school_name \r\n                            User Name   - :name \r\n                            End Date    - :end_date\r\n                      \r\n                            Your site going to expiry within a week \r\n                            Thanks & Regards \r\n                            Administration Team ', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(6, 'contact', 'Contact', 'Hi <br>\r\n                            Contact Details. <br>\r\n                                  \r\n                            Name          - :fullname \r\n                            Email         - :emailid \r\n                            Serve         - :serve_at \r\n                            Role          - :role \r\n                            Phone number  - :contact_no\r\n                            Select        - :select\r\n                                  \r\n                            Contact Details Created \r\n                            Thanks & Regards \r\n                            Administration Team ', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(7, 'send_mail', ' :subject ', 'Hi :name, <br>\r\n            :message <br>\r\n            <a href= \":attachments\" style=\"border:none; color:white; padding:10px 15px; text-align:center; text-decoration:none; display:inline-block;  font-size:16px; margin:4px 2px; cursor: pointer; background-color:#008CBA;\">Click Here</a> <br>\r\n            Thanks & Regards \r\n            Administration Team', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(8, 'calendar_event', 'Calendar Event', 'Hi <br>\r\n                            Event Details. <br>\r\n                                  \r\n                            Title       - :title \r\n                            Location    - :location \r\n                            Category    - :category \r\n                            Start Date  - :start_date \r\n                            End Date    - :end_date\r\n\r\n                            New Event Created \r\n                            Thanks & Regards \r\n                            Administration Team ', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(9, 'event_reminder', 'Event Reminder', 'Hi <br>\r\n                            Event Reminder Details<br>\r\n\r\n                            School Name   - :school_name \r\n                            Title         - :title \r\n                            Description   - :description\r\n                            Location      - :location\r\n                            Start Date    - :start_date \r\n                            End Date      - :end_date\r\n                      \r\n                            New event has been posted for this church. \r\n                           \r\n                            Thanks & Regards \r\n                            Administration Team ', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(10, 'birthday_reminder', 'Birthday Wishes', ':message \r\n\r\n                                Thanks & Regards \r\n                                Administration Team', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(11, 'email_verification', 'Email Verification', 'Hi :name <br>\r\n            To verify your accout. <br>\r\n            <a href= \":url\" style=\"border: none;color: white; padding: 10px 15px;text-align: center; text-decoration: none; display: inline-block; font-size: 16px;margin: 4px 2px; cursor: pointer; background-color: #008CBA;\">Click here to verify</a> <br>\r\n            Thanks & Regards <br> \r\n            Administration Team <br>', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(12, 'new_message', 'Send Mail to User', 'Hi :name, <br> \r\n                                :message\r\n                                Thanks & Regards <br> \r\n                                Administration Team <br>', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(13, 'room_invitation', 'Room Invitation', 'Hi :name, <br> \r\n                                Title - :title <br> \r\n                                Description - :description <br> \r\n                                :message <br> \r\n                                Thanks & Regards <br>\r\n                                Thanks & Regards <br> \r\n                                Administration Team <br>', 'active', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(14, 'change_password', 'Change Password', 'Hi :name <br> \r\n                                Your Password is changed successfully. <br> \r\n                                Thanks & Regards <br> \r\n                                <p>Administration Team <br>', 'active', NULL, NULL, NULL),
(15, 'admission_confirmation', 'Admission Confirmation Mail', 'Hi Sir\\Madam <br> \r\n                                Your Application No. :application_no for the admission in :school_name has been approved. <br> \r\n                                Thanks & Regards <br> \r\n                                <p>Administration Team <br>', 'active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json DEFAULT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `conversation_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_sender` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_receiver` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2019_04_25_173132_create_jobs_table', 1),
(2, '2019_04_25_173250_create_failed_jobs_table', 1),
(3, '2019_09_04_124307_create_activity_log_table', 1),
(4, '2019_10_22_122703_create_keywords_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_02_17_032233_create_countries_table', 1),
(7, '2020_02_17_032304_create_states_table', 1),
(8, '2020_02_17_032401_create_cities_table', 1),
(9, '2020_02_17_045329_create_usergroups_table', 1),
(10, '2020_02_17_045542_create_schools_table', 1),
(11, '2020_02_17_051334_create_academic_years_table', 1),
(12, '2020_02_18_000000_create_users_table', 1),
(13, '2020_02_18_000001_create_password_resets_table', 1),
(14, '2020_02_18_044623_laratrust_setup_tables', 1),
(15, '2020_02_18_044624_create_mailtemplates_table', 1),
(16, '2020_02_18_052000_create_sections_table', 1),
(17, '2020_02_18_052001_create_standards_table', 1),
(18, '2020_02_18_052010_create_standards_link_table', 1),
(19, '2020_02_18_052800_create_qualifications_table', 1),
(20, '2020_02_18_052835_create_userprofiles_table', 1),
(21, '2020_02_18_052840_create_notes_table', 1),
(22, '2020_02_18_053001_create_subjects_table', 1),
(23, '2020_02_18_053405_create_student_academics_table', 1),
(24, '2020_02_18_054619_create_teacherprofile_table', 1),
(25, '2020_02_18_055939_create_class_teacher_links_table', 1),
(26, '2020_02_18_064742_create_events_table', 1),
(27, '2020_02_18_095640_create_sms_templates_table', 1),
(28, '2020_02_18_104801_create_background_images_table', 1),
(29, '2020_02_18_115311_school_details_table', 1),
(30, '2020_02_18_125713_create_plans_table', 1),
(31, '2020_02_18_125813_create_subscriptions_table', 1),
(32, '2020_02_18_131242_create_event_galleries_table', 1),
(33, '2020_02_18_202003_create_settings_table', 1),
(34, '2020_02_27_074930_create_non_sc_grade_table', 1),
(35, '2020_02_27_075041_create_sc_grade_table', 1),
(36, '2020_03_02_073338_create_notice_board_table', 1),
(37, '2020_03_02_073645_create_notification_table', 1),
(38, '2020_03_02_073902_create_magazines_table', 1),
(39, '2020_03_02_074153_create_promotions_table', 1),
(40, '2020_03_02_080136_create_homeworks_table', 1),
(41, '2020_03_02_132232_create_conversations_table', 1),
(42, '2020_03_02_132232_create_feedbacks_table', 1),
(43, '2020_03_02_132627_create_feedback_messages_table', 1),
(44, '2020_03_02_132627_create_messages_table', 1),
(45, '2020_03_02_132820_create_disciplines_table', 1),
(46, '2020_03_02_133456_create_transportations_table', 1),
(47, '2020_03_03_174501_create_student_parent_links_table', 1),
(48, '2020_03_10_105921_create_send_mail_tables', 1),
(49, '2020_04_06_131626_create_absent_reasons_table', 1),
(50, '2020_04_06_131754_create_attendances_table', 1),
(51, '2020_04_09_112349_create_reminders_table', 1),
(52, '2020_04_10_105027_create_books_category_table', 1),
(53, '2020_04_10_105028_create_books_table', 1),
(54, '2020_04_10_105100_create_library_card_table', 1),
(55, '2020_04_10_105105_create_books_lending_table', 1),
(56, '2020_04_16_175713_create_assignments_table', 1),
(57, '2020_04_16_180549_create_student_assignments_table', 1),
(58, '2020_04_30_162036_create_parent_profiles_table', 1),
(59, '2020_05_15_121339_create_leave_types_table', 1),
(60, '2020_05_18_140042_create_teacher_leave_applications_table', 1),
(61, '2020_05_19_070626_create_media_table', 1),
(62, '2020_05_30_172215_create_queries_table', 1),
(63, '2020_06_08_164859_create_chapters_table', 1),
(64, '2020_06_09_101634_create_websockets_statistics_entries_table', 1),
(65, '2020_06_15_111744_create_conversation_chat_table', 1),
(66, '2020_06_15_121306_create_conversation_user_table', 1),
(67, '2020_06_16_054904_create_conversation_messages_table', 1),
(68, '2020_06_22_170340_create_documents_table', 1),
(69, '2020_06_24_170946_create_authentications_table', 1),
(70, '2020_07_08_052959_create_task_table', 1),
(71, '2020_07_11_173059_create_lesson_plans_table', 1),
(72, '2020_07_13_165218_create_lesson_plan_approvals_table', 1),
(73, '2020_07_24_095108_create_visitor_log_table', 1),
(74, '2020_07_28_132424_create_call_log_table', 1),
(75, '2020_07_28_183533_create_postal_record_table', 1),
(76, '2020_08_05_080500_create_class_room_page_categories_table', 1),
(77, '2020_08_05_123442_create_class_room_pages_table', 1),
(78, '2020_08_05_123542_create_class_room_page_attachments_table', 1),
(79, '2020_08_05_124407_create_class_room_page_details_table', 1),
(80, '2020_08_05_124427_create_posts_table', 1),
(81, '2020_08_05_124428_create_tags_table', 1),
(82, '2020_08_05_124454_create_post_tags_table', 1),
(83, '2020_08_05_124755_create_post_details_table', 1),
(84, '2020_08_05_124800_create_post_comments_table', 1),
(85, '2020_08_11_155701_create_post_comment_details_table', 1),
(86, '2020_08_14_145726_create_notifications_table', 1),
(87, '2020_08_15_124253_create_payroll_items_table', 1),
(88, '2020_08_15_181839_create_transaction_types_table', 1),
(89, '2020_08_15_183424_create_transaction_accounts_table', 1),
(90, '2020_08_15_192024_create_pay_categories_table', 1),
(91, '2020_08_16_122833_create_payroll_templates_table', 1),
(92, '2020_08_17_123231_create_template_items_table', 1),
(93, '2020_08_18_170504_create_salaries_table', 1),
(94, '2020_08_19_153305_create_salary_items_table', 1),
(95, '2020_08_20_151928_create_payrolls_table', 1),
(96, '2020_09_01_113634_create_payslip_items_table', 1),
(97, '2020_09_07_182619_create_payroll_transactions_table', 1),
(98, '2020_12_29_101932_create_telephone_directory_table', 1),
(99, '2021_03_31_070442_create_student_history_table', 1),
(100, '2021_03_31_191557_create_student_homework_table', 1),
(101, '2021_04_04_190705_create_groups_table', 1),
(102, '2021_04_05_103936_create_task_assignees_table', 1),
(103, '2021_04_05_143405_create_homework_approvals_table', 1),
(104, '2021_04_05_143441_create_assignment_approvals_table', 1),
(105, '2021_04_26_141845_create_admissions_table', 1),
(106, '2024_01_04_191111_create_address_locations_table', 1),
(107, '2026_05_08_111636_create_group_members_table', 1),
(108, '2026_05_20_112747_create_taggables_table', 1),
(109, '2022_09_29_141913_certificate_table', 2),
(110, '2020_06_01_161747_create_fee_group_table', 3),
(111, '2020_06_06_103204_create_fees_table', 3),
(112, '2020_06_06_104506_create_fee_payments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `non_sc_grade`
--

CREATE TABLE `non_sc_grade` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `grades_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `non_sc_grade`
--

INSERT INTO `non_sc_grade` (`id`, `school_id`, `academic_year_id`, `grade_name`, `keys`, `grades_details`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1-5', '\"art_education\", \"physical_education\", \"work_education\"', '{ \"A\": \"Outstanding\", \"B\": \"Above Average\", \"C\": \"Needs Improvement\"}', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(2, 1, 1, '6-8', '\"thinking_skills\", \"social_skills\", \"emotional_skills\"', '{ \"A\": \"Outstanding\", \"B\": \"Above Average\", \"C\": \"Needs Improvement\"}', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(3, 1, 1, '9-10', '\"attitude_values\", \"wellness_education\", \"service_activities\"', '{ \"A\": \"Outstanding\", \"B\": \"Above Average\", \"C\": \"Needs Improvement\"}', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(4, 1, 1, '11-12', '\"thinking_skills\", \"physical_education\", \"work_education\"', '{ \"A\": \"Outstanding\", \"B\": \"Above Average\", \"C\": \"Needs Improvement\"}', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int NOT NULL,
  `entity_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `updated_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_board`
--

CREATE TABLE `notice_board` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED DEFAULT NULL,
  `background_id` int UNSIGNED DEFAULT NULL,
  `type` enum('class','school','teacher') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `from` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `via` enum('sms','mail','notification') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_status` enum('queue','process','deliver','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'queue',
  `sms_response` longtext COLLATE utf8mb4_unicode_ci,
  `executed_at` date DEFAULT NULL,
  `template_id` int DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_profiles`
--

CREATE TABLE `parent_profiles` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `qualification_id` int UNSIGNED DEFAULT NULL,
  `profession` enum('admin','business','central_government_employee','private','home_maker','state_government_employee','teacher','librarian','others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `official_address` text COLLATE utf8mb4_unicode_ci,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_income` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `payrollno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int UNSIGNED NOT NULL,
  `salary_id` int UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `percentage` int NOT NULL DEFAULT '100',
  `leave` int NOT NULL,
  `late` int DEFAULT NULL,
  `leave_deduction` int NOT NULL,
  `status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_items`
--

CREATE TABLE `payroll_items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('earning','deduction','defined') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_items`
--

INSERT INTO `payroll_items` (`id`, `name`, `key`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Basic Salary', 'BA', 'defined', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(2, 'Addition Allowance', 'AA', 'earning', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(3, 'Deduction', 'DN', 'deduction', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(4, 'Employees State Insurance', 'ESI', 'deduction', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(5, 'Provident Fund', 'PF', 'deduction', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(6, 'Income tax', 'IT', 'deduction', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_templates`
--

CREATE TABLE `payroll_templates` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_transactions`
--

CREATE TABLE `payroll_transactions` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `transaction_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytype_id` int UNSIGNED DEFAULT NULL,
  `account_id` int UNSIGNED DEFAULT NULL,
  `staff_id` int UNSIGNED NOT NULL,
  `payroll_id` int UNSIGNED DEFAULT NULL,
  `transaction_date` date NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('Cash','Cheque','Bank','Others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_detail` text COLLATE utf8mb4_unicode_ci,
  `reference_number` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_items`
--

CREATE TABLE `payslip_items` (
  `id` int UNSIGNED NOT NULL,
  `payroll_id` int UNSIGNED NOT NULL,
  `salary_item_id` int UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_categories`
--

CREATE TABLE `pay_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_categories`
--

INSERT INTO `pay_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Not Applicable', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(2, 'User Defined', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(3, 'On Attendance', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(4, 'Computation', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int UNSIGNED NOT NULL,
  `cycle` int NOT NULL COMMENT 'Do not change',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `amount` double NOT NULL DEFAULT '0',
  `no_of_members` int DEFAULT NULL,
  `no_of_events` int DEFAULT NULL,
  `no_of_folders` int DEFAULT NULL COMMENT 'Gallery',
  `no_of_files` int DEFAULT NULL,
  `no_of_videos` int DEFAULT NULL,
  `no_of_audios` int DEFAULT NULL,
  `no_of_bulletins` int DEFAULT NULL,
  `no_of_groups` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `cycle`, `name`, `display_name`, `order`, `is_active`, `amount`, `no_of_members`, `no_of_events`, `no_of_folders`, `no_of_files`, `no_of_videos`, `no_of_audios`, `no_of_bulletins`, `no_of_groups`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 36500, 'unlimited', 'UNLIMITED', 1, 1, 0, 999999, 999999, 999999, 999999, 999999, NULL, 999999, 999999, '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `postal_record`
--

CREATE TABLE `postal_record` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confidential` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_address` longtext COLLATE utf8mb4_unicode_ci,
  `receiver_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_date` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `entity_id` int NOT NULL,
  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_file` longtext COLLATE utf8mb4_unicode_ci,
  `visibility` enum('all_class','select_class','select_page') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_for` int UNSIGNED DEFAULT NULL,
  `post_created_at` timestamp NULL DEFAULT NULL,
  `is_posted` tinyint(1) NOT NULL DEFAULT '0',
  `posted_at` timestamp NULL DEFAULT NULL,
  `status` enum('drafted','pending','posted','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `entity_id` int NOT NULL,
  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `attachment_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_comment_details`
--

CREATE TABLE `post_comment_details` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `post_comment_id` int UNSIGNED NOT NULL,
  `like` tinyint(1) DEFAULT NULL,
  `unlike` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_details`
--

CREATE TABLE `post_details` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `like` tinyint(1) DEFAULT NULL,
  `unlike` tinyint(1) DEFAULT NULL,
  `save` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int UNSIGNED NOT NULL,
  `tag_id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `current_academic_year_id` int UNSIGNED NOT NULL,
  `current_standard_id` int UNSIGNED NOT NULL,
  `current_section_id` int UNSIGNED DEFAULT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `next_academic_year_id` int UNSIGNED DEFAULT NULL,
  `next_standard_id` int UNSIGNED DEFAULT NULL,
  `next_section_id` int UNSIGNED DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int UNSIGNED NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('others','pg','teacher','ug') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `display_name`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Others', 'others', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(2, 'Basic Training Certificate (BTC)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(3, 'Primary Teachers Certificate (PTC)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(4, 'Elementary Teacher Education (ETE)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(5, 'Nursery Teacher Training (NTT)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(6, 'Diploma in Education (DED)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(7, 'Teachers Training Certificate (TTC)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(8, 'Junior Basic Training (JBT)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(9, 'Nursery Teacher Education Program', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(10, 'Pre-School Teacher Education Program', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(11, 'Physical Education Program (C.P.Ed.)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(12, 'Bachelor of Elementary Education (B.EI.Ed.)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(13, 'Elementary Teacher Education Program', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(14, 'Bachelor of Architecture (B.Arch)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(15, 'Bachelor of Arts (B.A.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(16, 'Bachelor of Ayurvedic Medicine & Surgery (B.A.M.S.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(17, 'Bachelor of Business Administration (B.B.A.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(18, 'Bachelor of Commerce (B.Com.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(19, 'Bachelor of Computer Applications (B.C.A.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(20, 'Bachelor of Dental Surgery (B.D.S.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(21, 'Bachelor of Design (B.Des. / B.D.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(22, 'Bachelor of Education (B.Ed.)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(23, 'Bachelor of Engineering / Bachelor of Technology (B.E./B.Tech.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(24, 'Bachelor of Fine Arts (BFA / BVA)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(25, 'Bachelor of Fisheries Science (B.F.Sc./ B.Sc.[Fisheries])', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(26, 'Bachelor of Homoeopathic Medicine and Surgery (B.H.M.S.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(27, 'Bachelor of Laws (L.L.B.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(28, 'Bachelor of Library Science (B.Lib. / B.Lib.Sc.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(29, 'Bachelor of Mass Communications (B.M.C. / B.M.M.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(30, 'Bachelor of Medicine and Bachelor of Surgery (M.B.B.S.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(31, 'Bachelor of Nursing', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(32, 'Bachelor of Pharmacy (B.Pharm / B.Pharma.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(33, 'Bachelor of Physical Education (B.P.Ed.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(34, 'Bachelor of Physiotherapy (B.P.T.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(35, 'Bachelor of Science (B.Sc.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(36, 'Bachelor of Social Work (BSW / B.A.[SW])', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(37, 'Bachelor of Veterinary Science & Animal Husbandry (B.V.Sc. & A.H. / B.V.Sc)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(38, 'Diploma in Education (D.Ed.)', 'ug', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(39, 'Doctor of Medicine (M.D.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(40, 'Doctor of Medicine in Homoeopathy (M.D.[Homoeopathy])', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(41, 'Doctor of Pharmacy (Pharm.D)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(42, 'Doctor of Philosophy (Ph.D.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(43, 'Doctorate of Medicine (D.M.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(44, 'Master of Architecture (M.Arch.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(45, 'Master of Arts (M.A.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(46, 'Master of Business Administration (M.B.A.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(47, 'Master of Commerce (M.Com.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(48, 'Master of Computer Applications (M.C.A.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(49, 'Master of Dental Surgery (M.D.S.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(50, 'Master of Design (M.Des./ M.Design.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(51, 'Master of Education (M.Ed.)', 'teacher', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(52, 'Master of Engineering / Master of Technology (M.E./ M.Tech.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(53, 'Master of Fine Arts (MFA / MVA)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(54, 'Master of Laws (L.L.M.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(55, 'Master of Library Science (M.Lib./ M.Lib.Sc.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(56, 'Master of Mass Communications / Mass Media (M.M.C / M.M.M.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(57, 'Master of Pharmacy (M.Pharm)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(58, 'Master of Philosophy (M.Phil.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(59, 'Master of Physical Education (M.P.Ed. / M.P.E.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(60, 'Master of Physiotherapy (M.P.T.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(61, 'Master of Science (M.Sc.)', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(62, 'Master of Social Work / Master of Arts in Social Work (M.S.W. / M.A.[SW])', 'pg', 1, '2026-08-12 07:38:37', '2026-08-12 07:38:37', NULL),
(63, 'Master of Surgery (M.S.)', 'pg', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(64, 'Master of Veterinary Science (M.V.Sc.)', 'pg', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(65, 'Master of Education Program (M.Ed.)', 'pg', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(66, 'Montessori Teacher Training Course', 'ug', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `from` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `via` enum('sms','mail','notification','web_notification') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_status` enum('queue','process','deliver','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'queue',
  `sms_response` longtext COLLATE utf8mb4_unicode_ci,
  `executed_at` datetime DEFAULT NULL,
  `template_id` int DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'leave_applier', 'Leave Applier', 'Leave Applier', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(2, 'leave_checker', 'Leave Checker', 'Leave Checker', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(3, 'principal', 'Principal', 'Principal', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(4, 'student_leave_checker', 'Student Leave Checker', 'Student Leave Checker', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(5, 'class_coordinator', 'Class Coordinator', 'Class Coordinator', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(6, 'transport_coordinator', 'Transport Coordinator', 'Transport Coordinator', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(7, 'transport_driver', 'Transport Driver', 'Transport Driver', '2026-08-12 07:38:38', '2026-08-12 07:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `staff_id` int UNSIGNED NOT NULL,
  `template_id` int UNSIGNED NOT NULL,
  `gross_salary` int NOT NULL,
  `effective_date` date NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_items`
--

CREATE TABLE `salary_items` (
  `id` int UNSIGNED NOT NULL,
  `salary_id` int UNSIGNED NOT NULL,
  `template_item_id` int UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `state_id` int UNSIGNED DEFAULT NULL,
  `city_id` int UNSIGNED DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `slug` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `email`, `phone`, `address`, `country_id`, `state_id`, `city_id`, `pincode`, `status`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lions School', 'lionslalgudi1968@gmail.com', '8973848423', NULL, 7, 24, 32, '621601', 1, 'lions-school', '2026-08-12 07:38:38', '2026-08-12 07:46:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school_details`
--

CREATE TABLE `school_details` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_details`
--

INSERT INTO `school_details` (`id`, `school_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'about_us', '-', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(2, 1, 'admission_open', '1', '2026-08-12 07:38:38', '2026-08-12 07:46:13'),
(3, 1, 'admission_close_message', '-', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(4, 1, 'admission_close_on', '-', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(5, 1, 'affiliation_no', '-', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(6, 1, 'affiliated_by', '-', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(7, 1, 'date_of_establishment', '1967-08-05', '2026-08-12 07:38:38', '2026-08-12 07:46:13'),
(8, 1, 'landline_no', '-', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(9, 1, 'moto', '-', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(10, 1, 'website', '-', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(11, 1, 'board', 'matric', '2026-08-12 07:38:38', '2026-08-12 07:38:38'),
(12, 1, 'school_logo', '/uploads/demologo.png', '2026-08-12 07:38:38', '2026-08-12 07:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `sc_grade`
--

CREATE TABLE `sc_grade` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grading_method` enum('cbse','passfail') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sc_grade`
--

INSERT INTO `sc_grade` (`id`, `school_id`, `academic_year_id`, `grade_name`, `grading_method`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'scholastic', 'cbse', '2026-08-12 07:38:52', '2026-08-12 07:38:52'),
(2, 1, 1, 'scholastic', 'passfail', '2026-08-12 07:38:53', '2026-08-12 07:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `school_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'A', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(2, 1, 'B', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `send_mail`
--

CREATE TABLE `send_mail` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `from_address` text COLLATE utf8mb4_unicode_ci,
  `from` text COLLATE utf8mb4_unicode_ci,
  `to` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `attachments` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('queue','delivered','failed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('mail','inbox','sent') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` text COLLATE utf8mb4_unicode_ci,
  `executed_at` timestamp NULL DEFAULT NULL,
  `is_executed` tinyint(1) NOT NULL DEFAULT '0',
  `fired_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `description`, `value`, `field`, `active`, `created_at`, `updated_at`) VALUES
(1, 'sitetitle', 'Site Title', 'Site Title to show in Browser Bar', 'School-Plus', '{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Site Title\" ,\"type\":\"text\"}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(2, 'sitename', 'Site Name', 'This site name is used in emails and copyrights', 'School-Plus', '{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Site Title\" ,\"type\":\"text\"}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(3, 'sitelogo', 'Site Logo', 'Logo of the website. Recommended Size : 220px (w) x 45px (h)', 'images/logo.png', '{\"name\":\"value\",\"label\":\"Value\" ,\"type\":\"browse\"}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(4, 'favicon', 'Favicon', 'Site Favicon', 'images/favicon.png', '{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Site Favicon\" ,\"type\":\"browse\", \"disk\":\"uploads\"}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(5, 'maintenance', 'Maintenance', 'Maintenance', '0', '{\"name\":\"value\",\"label\":\"Maintenance\" ,\"type\":\"radio\", \"options\":{\"1\":\"Active\", \"0\":\"Inactive\"}}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(6, 'login_status', 'login', 'login', '1', '{\"name\":\"value\",\"label\":\"Userlogin\" ,\"type\":\"radio\", \"options\":{\"1\":\"Active\", \"0\":\"Inactive\"}}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(7, 'register_status', 'Register Status', 'Register Status', '1', '{\"name\":\"value\",\"label\":\"Register Status\" ,\"type\":\"radio\", \"options\":{\"1\":\"Active\", \"0\":\"Inactive\"}}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(8, 'assignment_status', 'Assignment Status', 'Assignment Status', '0', '{\"name\":\"value\",\"label\":\"Register Status\" ,\"type\":\"radio\", \"options\":{\"1\":\"Active\", \"0\":\"Inactive\"}}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36'),
(9, 'homework_status', 'Homework Status', 'Homework Status', '0', '{\"name\":\"value\",\"label\":\"Register Status\" ,\"type\":\"radio\", \"options\":{\"1\":\"Active\", \"0\":\"Inactive\"}}', 1, '2026-08-12 07:38:36', '2026-08-12 07:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `template_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `template`, `content`, `status`, `template_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Event', NULL, 'Hi..Your event has been scheduled on :date at :location. For more details log in to church social App. https://churchcms.appsexpress.net', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(2, 'birthday_message', 'Wishing you a happy birthday and a wonderful year.', 'Wishing you a happy birthday and a wonderful year.\r\n                          Thanks & Regards \r\n                          Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(3, 'birthday_message', 'May this special day bring you endless joy and tons of precious memories!Happy birthday.', 'May this special day bring you endless joy and tons of precious memories!Happy birthday.\r\n                          Thanks & Regards \r\n                          Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(4, 'birthday_message', 'Happy birthday! Here’s to a bright, healthy and exciting future!.', 'Happy birthday! Here’s to a bright, healthy and exciting future!\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(5, 'birthday_message', 'Wishing you a wonderful day and all the most amazing things on your Big Day!Happy birthday.', 'Wishing you a wonderful day and all the most amazing things on your Big Day!Happy birthday.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(6, 'birthday_message', 'Happy birthday! May your day be filled with lots of love and happiness.', 'Happy birthday! May your day be filled with lots of love and happiness.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(7, 'birthday_message', 'May this year surprise you with full of joy and happiness! Happy birthday!', 'May this year surprise you with full of joy and happiness! Happy birthday!\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(8, 'birthday_message', 'Sending you a birthday wish wrapped with all my love. Have a very happy birthday!', 'Sending you a birthday wish wrapped with all my love. Have a very happy birthday!\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(9, 'birthday_message', 'Many happy returns on your birthday today from all of us.We hope you have a wonderful day!', 'Many happy returns on your birthday today from all of us.We hope you have a wonderful day!\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(10, 'birthday_message', 'May your birthday be sprinkled with fun and laughter. Have a great day!', 'May your birthday be sprinkled with fun and laughter. Have a great day!\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(11, 'birthday_message', 'Happy Birthday!I hope you have a great day today and the year ahead is full of many blessings.', 'Happy Birthday!I hope you have a great day today and the year ahead is full of many blessings.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(12, 'reset_password', NULL, 'Click this link :url to reset your password.', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(13, 'absent_message', NULL, ':message\r\n            Thanks & Regards\r\n            :school_name', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(14, 'birthday', NULL, ':message\r\n            Thanks & Regards\r\n            :school_name', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(15, 'work_anniversary_message', 'Another year of excellence! Thanks for all the amazing work you do. Your effort and enthusiasm are much needed, and very much appreciated.', 'Another year of excellence! Thanks for all the amazing work you do. Your effort and enthusiasm are much needed, and very much appreciated.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(16, 'work_anniversary_message', 'From all of us… happy anniversary! Thank you for your hard work, your generosity, and your contagious enthusiasm.', 'From all of us… happy anniversary! Thank you for your hard work, your generosity, and your contagious enthusiasm.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(17, 'work_anniversary_message', 'Congratulations on your work anniversary! We appreciate your energy, your kindness, and all the work you do, but most of all, we just appreciate you!', 'Congratulations on your work anniversary! We appreciate your energy, your kindness, and all the work you do, but most of all, we just appreciate you!\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(18, 'work_anniversary_message', 'Congratulations on your work anniversary. Working with a wonderful person like you was always a great experience.', 'Congratulations on your work anniversary. Working with a wonderful person like you was always a great experience.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(19, 'work_anniversary_message', 'Sending heartiest wishes to the nicest employee! We are grateful to you for all the contributions that you afforded to make our company progressed.', 'Sending heartiest wishes to the nicest employee! We are grateful to you for all the contributions that you afforded to make our company progressed.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(20, 'work_anniversary_message', 'Many congratulations on your happy work anniversary! May you accomplish more successful working years with this organization. Wish you good luck.', 'Many congratulations on your happy work anniversary! May you accomplish more successful working years with this organization. Wish you good luck.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(21, 'work_anniversary_message', 'We feel lucky and glad to be a part of your team. Your exceptional leadership is beyond words. Happy work anniversary.', 'We feel lucky and glad to be a part of your team. Your exceptional leadership is beyond words. Happy work anniversary.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(22, 'work_anniversary_message', 'A great employee like you is valuable for both the organization as well as co-workers. Well done and enjoy your happy work anniversary.', 'A great employee like you is valuable for both the organization as well as co-workers. Well done and enjoy your happy work anniversary.\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(23, 'work_anniversary_message', 'This is to remind you that you have come a long way and your contributions have continued to inspire us. Wish you a very Happy Work Anniversary!', 'This is to remind you that you have come a long way and your contributions have continued to inspire us. Wish you a very Happy Work Anniversary!\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(24, 'work_anniversary_message', 'Everyone requires a person with an abundance of positive vibe and confidence to get things done in a flawless manner. Thank you for being that person. Warm wishes on your work anniversary!', 'Everyone requires a person with an abundance of positive vibe and confidence to get things done in a flawless manner. Thank you for being that person. Warm wishes on your work anniversary!\r\n                              Thanks & Regards \r\n                              Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL),
(25, 'admission_confirmation', NULL, 'Hi Sir\\Madam\r\n                            Your Application No. :application_no for the admission in :school_name has been approved.\r\n                            Thanks & Regards\r\n                            Administration Team', 1, '1207167890123456790', '2026-08-12 07:38:36', '2026-08-12 07:38:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standards`
--

CREATE TABLE `standards` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `standards`
--

INSERT INTO `standards` (`id`, `school_id`, `name`, `slug`, `order`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'prekg', 'prekg', 1, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(2, 1, 'lkg', 'lkg', 2, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(3, 1, 'ukg', 'ukg', 3, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(4, 1, '1', '1', 4, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(5, 1, '2', '2', 5, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(6, 1, '3', '3', 6, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(7, 1, '4', '4', 7, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(8, 1, '5', '5', 8, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(9, 1, '6', '6', 9, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(10, 1, '7', '7', 10, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(11, 1, '8', '8', 11, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(12, 1, '9', '9', 12, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(13, 1, '10', '10', 13, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(14, 1, '11', '11', 14, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(15, 1, '12', '12', 15, 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standards_link`
--

CREATE TABLE `standards_link` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `class_teacher_id` int UNSIGNED NOT NULL,
  `standard_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `no_of_students` int DEFAULT NULL,
  `stream` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int UNSIGNED NOT NULL,
  `country_id` int UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 'Andhra Pradesh', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(2, 7, 'Arunachal Pradesh', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(3, 7, 'Assam', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(4, 7, 'Bihar', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(5, 7, 'Chhattisgarh', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(6, 7, 'Goa', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(7, 7, 'Gujarat', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(8, 7, 'Haryana', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(9, 7, 'Himachal Pradesh', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(10, 7, 'Jammu and Kashmir', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(11, 7, 'Jharkhand', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(12, 7, 'Karnataka', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(13, 7, 'Kerala', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(14, 7, 'Madhya Pradesh', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(15, 7, 'Maharashtra', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(16, 7, 'Manipur', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(17, 7, 'Meghalaya', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(18, 7, 'Mizoram', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(19, 7, 'Nagaland', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(20, 7, 'Odisha', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(21, 7, 'Punjab', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(22, 7, 'Rajasthan', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(23, 7, 'Sikkim', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(24, 7, 'Tamilnadu', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(25, 7, 'Telangana', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(26, 7, 'Tripura', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(27, 7, 'Uttar Pradesh', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(28, 7, 'Uttarakhand', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL),
(29, 7, 'West Bengal', 1, '2026-08-12 07:38:35', '2026-08-12 07:38:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_academics`
--

CREATE TABLE `student_academics` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED DEFAULT NULL,
  `roll_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode_of_transport` enum('auto','car','city_bus','cycle','rickshaw','school_bus','taxi','walking') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_details` longtext COLLATE utf8mb4_unicode_ci,
  `siblings` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siblings_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sibling_details` longtext COLLATE utf8mb4_unicode_ci,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `medication_problems` longtext COLLATE utf8mb4_unicode_ci,
  `medication_needs` longtext COLLATE utf8mb4_unicode_ci,
  `medication_allergies` longtext COLLATE utf8mb4_unicode_ci,
  `food_allergies` longtext COLLATE utf8mb4_unicode_ci,
  `other_allergies` longtext COLLATE utf8mb4_unicode_ci,
  `other_medical_information` longtext COLLATE utf8mb4_unicode_ci,
  `academic_status` enum('pass','fail') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_pass` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_assignments`
--

CREATE TABLE `student_assignments` (
  `id` int UNSIGNED NOT NULL,
  `assignment_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `assignment_file` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `obtained_marks` int DEFAULT NULL,
  `submitted_on` date NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `marks_given_by` int UNSIGNED DEFAULT NULL,
  `marks_given_on` date DEFAULT NULL,
  `status` enum('pending','submitted','cancel','completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_certificate`
--

CREATE TABLE `student_certificate` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `program_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `certificate_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `standardLink_id` int UNSIGNED NOT NULL,
  `standard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_history`
--

CREATE TABLE `student_history` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `entity_id` text COLLATE utf8mb4_unicode_ci,
  `entity_type` text COLLATE utf8mb4_unicode_ci,
  `type` enum('image','video','assignment','homework') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_homework`
--

CREATE TABLE `student_homework` (
  `id` int UNSIGNED NOT NULL,
  `homework_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `attachment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submitted_on` date DEFAULT NULL,
  `checked_by` int UNSIGNED DEFAULT NULL,
  `checked_on` date DEFAULT NULL,
  `status` enum('unchecked','checked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unchecked',
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `reply_comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_parent_links`
--

CREATE TABLE `student_parent_links` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `parent_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standard_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('core','elective','exam') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `school_id`, `academic_year_id`, `standard_id`, `section_id`, `name`, `code`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, 'English', 'ENG-A-prekg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(2, 1, 1, 1, 1, 'Mathematics', 'MAT-A-prekg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(3, 1, 1, 1, 1, 'General Awareness', 'GEN-A-prekg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(4, 1, 1, 1, 1, 'Environmental Science', 'ENV-A-prekg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(5, 1, 1, 1, 2, 'English', 'ENG-B-prekg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(6, 1, 1, 1, 2, 'Mathematics', 'MAT-B-prekg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(7, 1, 1, 1, 2, 'General Awareness', 'GEN-B-prekg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(8, 1, 1, 1, 2, 'Environmental Science', 'ENV-B-prekg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(9, 1, 1, 2, 1, 'English', 'ENG-A-lkg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(10, 1, 1, 2, 1, 'Mathematics', 'MAT-A-lkg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(11, 1, 1, 2, 1, 'General Awareness', 'GEN-A-lkg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(12, 1, 1, 2, 1, 'Environmental Science', 'ENV-A-lkg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(13, 1, 1, 2, 2, 'English', 'ENG-B-lkg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(14, 1, 1, 2, 2, 'Mathematics', 'MAT-B-lkg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(15, 1, 1, 2, 2, 'General Awareness', 'GEN-B-lkg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(16, 1, 1, 2, 2, 'Environmental Science', 'ENV-B-lkg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(17, 1, 1, 3, 1, 'English', 'ENG-A-ukg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(18, 1, 1, 3, 1, 'Mathematics', 'MAT-A-ukg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(19, 1, 1, 3, 1, 'General Awareness', 'GEN-A-ukg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(20, 1, 1, 3, 1, 'Environmental Science', 'ENV-A-ukg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(21, 1, 1, 3, 2, 'English', 'ENG-B-ukg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(22, 1, 1, 3, 2, 'Mathematics', 'MAT-B-ukg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(23, 1, 1, 3, 2, 'General Awareness', 'GEN-B-ukg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(24, 1, 1, 3, 2, 'Environmental Science', 'ENV-B-ukg', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(25, 1, 1, 4, 1, 'Skills', 'SKI-A-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(26, 1, 1, 4, 1, 'Tamil', 'TAM-A-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(27, 1, 1, 4, 1, 'English', 'ENG-A-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(28, 1, 1, 4, 1, 'Mathematics', 'MAT-A-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(29, 1, 1, 4, 1, 'Environmental Science', 'ENV-A-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(30, 1, 1, 4, 2, 'Skills', 'SKI-B-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(31, 1, 1, 4, 2, 'Tamil', 'TAM-B-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(32, 1, 1, 4, 2, 'English', 'ENG-B-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(33, 1, 1, 4, 2, 'Mathematics', 'MAT-B-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(34, 1, 1, 4, 2, 'Environmental Science', 'ENV-B-1', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(35, 1, 1, 5, 1, 'Skills', 'SKI-A-2', 'core', 1, '2026-08-12 07:38:38', '2026-08-12 07:38:38', NULL),
(36, 1, 1, 5, 1, 'Tamil', 'TAM-A-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(37, 1, 1, 5, 1, 'English', 'ENG-A-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(38, 1, 1, 5, 1, 'Mathematics', 'MAT-A-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(39, 1, 1, 5, 1, 'Environmental Science', 'ENV-A-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(40, 1, 1, 5, 2, 'Skills', 'SKI-B-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(41, 1, 1, 5, 2, 'Tamil', 'TAM-B-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(42, 1, 1, 5, 2, 'English', 'ENG-B-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(43, 1, 1, 5, 2, 'Mathematics', 'MAT-B-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(44, 1, 1, 5, 2, 'Environmental Science', 'ENV-B-2', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(45, 1, 1, 6, 1, 'Skills', 'SKI-A-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(46, 1, 1, 6, 1, 'Tamil', 'TAM-A-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(47, 1, 1, 6, 1, 'English', 'ENG-A-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(48, 1, 1, 6, 1, 'Mathematics', 'MAT-A-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(49, 1, 1, 6, 1, 'Environmental Science', 'ENV-A-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(50, 1, 1, 6, 2, 'Skills', 'SKI-B-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(51, 1, 1, 6, 2, 'Tamil', 'TAM-B-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(52, 1, 1, 6, 2, 'English', 'ENG-B-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(53, 1, 1, 6, 2, 'Mathematics', 'MAT-B-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(54, 1, 1, 6, 2, 'Environmental Science', 'ENV-B-3', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(55, 1, 1, 7, 1, 'Skills', 'SKI-A-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(56, 1, 1, 7, 1, 'English', 'ENG-A-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(57, 1, 1, 7, 1, 'Mathematics', 'MAT-A-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(58, 1, 1, 7, 1, 'Science', 'SCI-A-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(59, 1, 1, 7, 1, 'Social Science', 'SOC-A-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(60, 1, 1, 7, 1, 'Tamil', 'EL-TAM-A-4', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(61, 1, 1, 7, 2, 'Skills', 'SKI-B-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(62, 1, 1, 7, 2, 'English', 'ENG-B-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(63, 1, 1, 7, 2, 'Mathematics', 'MAT-B-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(64, 1, 1, 7, 2, 'Science', 'SCI-B-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(65, 1, 1, 7, 2, 'Social Science', 'SOC-B-4', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(66, 1, 1, 7, 2, 'Sanskrit', 'EL-SAN-B-4', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(67, 1, 1, 8, 1, 'Skills', 'SKI-A-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(68, 1, 1, 8, 1, 'English', 'ENG-A-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(69, 1, 1, 8, 1, 'Mathematics', 'MAT-A-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(70, 1, 1, 8, 1, 'Science', 'SCI-A-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(71, 1, 1, 8, 1, 'Social Science', 'SOC-A-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(72, 1, 1, 8, 1, 'Tamil', 'EL-TAM-A-5', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(73, 1, 1, 8, 2, 'Skills', 'SKI-B-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(74, 1, 1, 8, 2, 'English', 'ENG-B-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(75, 1, 1, 8, 2, 'Mathematics', 'MAT-B-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(76, 1, 1, 8, 2, 'Science', 'SCI-B-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(77, 1, 1, 8, 2, 'Social Science', 'SOC-B-5', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(78, 1, 1, 8, 2, 'Sanskrit', 'EL-SAN-B-5', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(79, 1, 1, 9, 1, 'English', 'ENG-A-6', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(80, 1, 1, 9, 1, 'Mathematics', 'MAT-A-6', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(81, 1, 1, 9, 1, 'Science', 'SCI-A-6', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(82, 1, 1, 9, 1, 'Social Science', 'SOC-A-6', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(83, 1, 1, 9, 1, 'Tamil', 'EL-TAM-A-6', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(84, 1, 1, 9, 2, 'English', 'ENG-B-6', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(85, 1, 1, 9, 2, 'Mathematics', 'MAT-B-6', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(86, 1, 1, 9, 2, 'Science', 'SCI-B-6', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(87, 1, 1, 9, 2, 'Social Science', 'SOC-B-6', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(88, 1, 1, 9, 2, 'Sanskrit', 'EL-SAN-B-6', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(89, 1, 1, 10, 1, 'English', 'ENG-A-7', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(90, 1, 1, 10, 1, 'Mathematics', 'MAT-A-7', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(91, 1, 1, 10, 1, 'Science', 'SCI-A-7', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(92, 1, 1, 10, 1, 'Social Science', 'SOC-A-7', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(93, 1, 1, 10, 1, 'Tamil', 'EL-TAM-A-7', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(94, 1, 1, 10, 2, 'English', 'ENG-B-7', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(95, 1, 1, 10, 2, 'Mathematics', 'MAT-B-7', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(96, 1, 1, 10, 2, 'Science', 'SCI-B-7', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(97, 1, 1, 10, 2, 'Social Science', 'SOC-B-7', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(98, 1, 1, 10, 2, 'Sanskrit', 'EL-SAN-B-7', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(99, 1, 1, 11, 1, 'English', 'ENG-A-8', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(100, 1, 1, 11, 1, 'Mathematics', 'MAT-A-8', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(101, 1, 1, 11, 1, 'Science', 'SCI-A-8', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(102, 1, 1, 11, 1, 'Social Science', 'SOC-A-8', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(103, 1, 1, 11, 1, 'Tamil', 'EL-TAM-A-8', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(104, 1, 1, 11, 2, 'English', 'ENG-B-8', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(105, 1, 1, 11, 2, 'Mathematics', 'MAT-B-8', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(106, 1, 1, 11, 2, 'Science', 'SCI-B-8', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(107, 1, 1, 11, 2, 'Social Science', 'SOC-B-8', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(108, 1, 1, 11, 2, 'Sanskrit', 'EL-SAN-B-8', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(109, 1, 1, 12, 1, 'English', 'ENG-A-9', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(110, 1, 1, 12, 1, 'Mathematics', 'MAT-A-9', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(111, 1, 1, 12, 1, 'Science', 'SCI-A-9', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(112, 1, 1, 12, 1, 'Social Science', 'SOC-A-9', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(113, 1, 1, 12, 1, 'Tamil', 'EL-TAM-A-9', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(114, 1, 1, 12, 2, 'English', 'ENG-B-9', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(115, 1, 1, 12, 2, 'Mathematics', 'MAT-B-9', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(116, 1, 1, 12, 2, 'Science', 'SCI-B-9', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(117, 1, 1, 12, 2, 'Social Science', 'SOC-B-9', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(118, 1, 1, 12, 2, 'Sanskrit', 'EL-SAN-B-9', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(119, 1, 1, 13, 1, 'English', 'ENG-A-10', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(120, 1, 1, 13, 1, 'Mathematics', 'MAT-A-10', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(121, 1, 1, 13, 1, 'Science', 'SCI-A-10', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(122, 1, 1, 13, 1, 'Social Science', 'SOC-A-10', 'core', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(123, 1, 1, 13, 1, 'Tamil', 'EL-TAM-A-10', 'elective', 1, '2026-08-12 07:38:39', '2026-08-12 07:38:39', NULL),
(124, 1, 1, 13, 2, 'English', 'ENG-B-10', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(125, 1, 1, 13, 2, 'Mathematics', 'MAT-B-10', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(126, 1, 1, 13, 2, 'Science', 'SCI-B-10', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(127, 1, 1, 13, 2, 'Social Science', 'SOC-B-10', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(128, 1, 1, 13, 2, 'Sanskrit', 'EL-SAN-B-10', 'elective', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(129, 1, 1, 14, 1, 'English', 'ENG-A-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(130, 1, 1, 14, 1, 'Tamil', 'EL-TAM-A-11', 'elective', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(131, 1, 1, 14, 1, 'Maths', 'MATHS-A-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(132, 1, 1, 14, 1, 'Physics', 'PHYSI-A-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(133, 1, 1, 14, 1, 'Chemistry', 'CHEMI-A-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(134, 1, 1, 14, 1, 'Biology', 'BIOLO-A-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(135, 1, 1, 14, 2, 'English', 'ENG-B-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(136, 1, 1, 14, 2, 'Sanskrit', 'EL-SAN-B-11', 'elective', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(137, 1, 1, 14, 2, 'Maths', 'MATHS-B-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(138, 1, 1, 14, 2, 'Physics', 'PHYSI-B-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(139, 1, 1, 14, 2, 'Chemistry', 'CHEMI-B-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(140, 1, 1, 14, 2, 'Computer Sceince', 'COMPU-B-11', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(141, 1, 1, 15, 1, 'English', 'ENG-A-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(142, 1, 1, 15, 1, 'Tamil', 'EL-TAM-A-12', 'elective', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(143, 1, 1, 15, 1, 'Maths', 'MATHS-A-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(144, 1, 1, 15, 1, 'Physics', 'PHYSI-A-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(145, 1, 1, 15, 1, 'Chemistry', 'CHEMI-A-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(146, 1, 1, 15, 1, 'Biology', 'BIOLO-A-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(147, 1, 1, 15, 2, 'English', 'ENG-B-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(148, 1, 1, 15, 2, 'Sanskrit', 'EL-SAN-B-12', 'elective', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(149, 1, 1, 15, 2, 'Maths', 'MATHS-B-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(150, 1, 1, 15, 2, 'Physics', 'PHYSI-B-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(151, 1, 1, 15, 2, 'Chemistry', 'CHEMI-B-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(152, 1, 1, 15, 2, 'Computer Sceince', 'COMPU-B-12', 'core', 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `plan_id` int UNSIGNED DEFAULT NULL,
  `status` enum('pending','approve','cancel','expired') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci,
  `plan_details` longtext COLLATE utf8mb4_unicode_ci,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `school_id`, `user_id`, `plan_id`, `status`, `payment_details`, `plan_details`, `end_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'pending', '{\"merchant_key\":\"\",\"txnid\":\"\",\"amount\":\"2000.00\",\"firstname\":\"\",\"email\":\"\",\"phone\":\"\",\"hash\":\"\",\"productinfo\":\"Subscription Amount\",\"status\":\"\",\"mode\":\"\",\"error_Message\":\"No Error\",\"addedon\":\"\"}', NULL, '2026-09-12', '2026-08-12 07:38:41', '2026-08-12 07:38:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int UNSIGNED NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` json DEFAULT NULL,
  `slug` json DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_column` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `name`, `slug`, `type`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'Sports', '{\"en\": \"Sports\"}', '{\"en\": \"sports\"}', 'student', 1, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(2, 'Music', '{\"en\": \"Music\"}', '{\"en\": \"music\"}', 'student', 2, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(3, 'Dance', '{\"en\": \"Dance\"}', '{\"en\": \"dance\"}', 'student', 3, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(4, 'Drawing', '{\"en\": \"Drawing\"}', '{\"en\": \"drawing\"}', 'student', 4, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(5, 'Drama', '{\"en\": \"Drama\"}', '{\"en\": \"drama\"}', 'student', 5, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(6, 'Singing', '{\"en\": \"Singing\"}', '{\"en\": \"singing\"}', 'student', 6, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(7, 'Musical Instrument', '{\"en\": \"Musical Instrument\"}', '{\"en\": \"musical-instrument\"}', 'student', 7, '2026-08-12 07:38:53', '2026-08-12 07:38:53'),
(8, 'Public Speaking', '{\"en\": \"Public Speaking\"}', '{\"en\": \"public-speaking\"}', 'student', 8, '2026-08-12 07:38:54', '2026-08-12 07:38:54'),
(9, 'Debate', '{\"en\": \"Debate\"}', '{\"en\": \"debate\"}', 'student', 9, '2026-08-12 07:38:54', '2026-08-12 07:38:54'),
(10, 'Quiz', '{\"en\": \"Quiz\"}', '{\"en\": \"quiz\"}', 'student', 10, '2026-08-12 07:38:54', '2026-08-12 07:38:54'),
(11, 'Science Club', '{\"en\": \"Science Club\"}', '{\"en\": \"science-club\"}', 'student', 11, '2026-08-12 07:38:54', '2026-08-12 07:38:54'),
(12, 'Math Club', '{\"en\": \"Math Club\"}', '{\"en\": \"math-club\"}', 'student', 12, '2026-08-12 07:38:54', '2026-08-12 07:38:54'),
(13, 'Literary Club', '{\"en\": \"Literary Club\"}', '{\"en\": \"literary-club\"}', 'student', 13, '2026-08-12 07:38:54', '2026-08-12 07:38:54'),
(14, 'NCC', '{\"en\": \"NCC\"}', '{\"en\": \"ncc\"}', 'student', 14, '2026-08-12 07:38:54', '2026-08-12 07:38:54'),
(15, 'Scout', '{\"en\": \"Scout\"}', '{\"en\": \"scout\"}', 'student', 15, '2026-08-12 07:38:54', '2026-08-12 07:38:54'),
(16, 'Guide', '{\"en\": \"Guide\"}', '{\"en\": \"guide\"}', 'student', 16, '2026-08-12 07:38:54', '2026-08-12 07:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('self','student','class','group','teacher','non_teaching') COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_date` datetime NOT NULL,
  `reminder` enum('one_hour_before_the_task','one_day_before_the_task','others','two_days_before_the_task') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminder_date` datetime DEFAULT NULL,
  `to_do_list` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status` tinyint(1) NOT NULL DEFAULT '0',
  `task_flag` int NOT NULL,
  `snooze` tinyint(1) NOT NULL DEFAULT '0',
  `priority` enum('low','normal','high') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `task_type` enum('individual','group_task','open') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'individual',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_assignees`
--

CREATE TABLE `task_assignees` (
  `id` int UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `standardLink_id` int UNSIGNED DEFAULT NULL,
  `group_id` bigint UNSIGNED DEFAULT NULL,
  `claimed_by` bigint UNSIGNED DEFAULT NULL,
  `status` enum('pending','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `assigned_type` enum('user','class','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacherprofile`
--

CREATE TABLE `teacherprofile` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `qualification_id` int UNSIGNED DEFAULT NULL,
  `ug_degree` int UNSIGNED DEFAULT NULL,
  `pg_degree` int UNSIGNED DEFAULT NULL,
  `sub_qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` enum('assistant_teacher','co_ordinator','head_of_the_department','librarian','others','principal','teacher','senior_teacher','vice_principal','accountant','receptionist','lab_assistant','clerk','stock_keeper','peon','driver','helpers','security','physical_education_teacher','transport_coordinator') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` enum('full_time','part_time') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interested_in` longtext COLLATE utf8mb4_unicode_ci,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reporting_to` int UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacherprofile`
--

INSERT INTO `teacherprofile` (`id`, `school_id`, `academic_year_id`, `user_id`, `qualification_id`, `ug_degree`, `pg_degree`, `sub_qualification`, `specialization`, `designation`, `sub_designation`, `job_type`, `interested_in`, `employee_id`, `reporting_to`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 2, 22, 32, 48, NULL, NULL, 'librarian', 'clerk', NULL, NULL, '2', NULL, 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(2, 1, 1, 3, 9, 17, 44, NULL, NULL, 'receptionist', NULL, NULL, NULL, '2', NULL, 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(3, 1, 1, 4, 12, 36, 49, NULL, NULL, 'accountant', NULL, NULL, NULL, '1', NULL, 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(4, 1, 1, 5, 3, 31, 46, NULL, NULL, 'stock_keeper', NULL, NULL, NULL, '2', NULL, 1, '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_leave_applications`
--

CREATE TABLE `teacher_leave_applications` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `standardLink_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `reason_id` int UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `leave_type_id` int UNSIGNED DEFAULT NULL,
  `approved_by` int UNSIGNED DEFAULT NULL,
  `approved_on` date DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `session` enum('forenoon','afternoon','day') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','cancelled','completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telephone_directory`
--

CREATE TABLE `telephone_directory` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template_items`
--

CREATE TABLE `template_items` (
  `id` int UNSIGNED NOT NULL,
  `template_id` int UNSIGNED NOT NULL,
  `item_id` int UNSIGNED NOT NULL,
  `paycategory_id` int UNSIGNED NOT NULL,
  `category_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_accounts`
--

CREATE TABLE `transaction_accounts` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_accounts`
--

INSERT INTO `transaction_accounts` (`id`, `school_id`, `user_id`, `name`, `key`, `account_number`, `ifsc_code`, `branch_name`, `param1`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Cash Account', 'CA', '348738747833', 'CASH123', NULL, NULL, '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_types`
--

CREATE TABLE `transaction_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_types`
--

INSERT INTO `transaction_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Salary', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(2, 'Salary Advance', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(3, 'Salary Return', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL),
(4, 'Other payments', '2026-08-12 07:38:53', '2026-08-12 07:38:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transportations`
--

CREATE TABLE `transportations` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `stops` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usergroups`
--

INSERT INTO `usergroups` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SiteAdmin', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(2, 'SiteSubadmin', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(3, 'SchoolAdmin', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(4, 'SchoolSubadmin', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(5, 'Teacher', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(6, 'Student', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(7, 'Parent', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(8, 'Librarian', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(9, 'OldStudent', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(10, 'Receptionist', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(11, 'Accountant', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(12, 'Stock Keeper', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL),
(13, 'Non Teaching', '2026-08-12 07:38:34', '2026-08-12 07:38:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userprofiles`
--

CREATE TABLE `userprofiles` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `usergroup_id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_group` enum('a+','a1+','b+','b1+','o+','ab+','a1b+','a-','a1-','b-','b1-','o-','ab-','a1b-') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` enum('admin','business','central_government_employee','private','home_maker','state_government_employee','teacher','librarian','others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` enum('divorced','married','single','widowed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place` text COLLATE utf8mb4_unicode_ci,
  `native_place` text COLLATE utf8mb4_unicode_ci,
  `mother_tongue` text COLLATE utf8mb4_unicode_ci,
  `caste` enum('BC','BCM','FC','MBC','OBC','Others','SC','SCA','ST') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_caste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city_id` int UNSIGNED DEFAULT NULL,
  `state_id` int UNSIGNED DEFAULT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_periods` int DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EMIS_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive','exit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userprofiles`
--

INSERT INTO `userprofiles` (`id`, `school_id`, `user_id`, `usergroup_id`, `firstname`, `lastname`, `alternate_no`, `gender`, `date_of_birth`, `blood_group`, `profession`, `marital_status`, `birth_place`, `native_place`, `mother_tongue`, `caste`, `sub_caste`, `address`, `city_id`, `state_id`, `country_id`, `pincode`, `aadhar_number`, `total_periods`, `registration_number`, `EMIS_number`, `joining_date`, `notes`, `avatar`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 3, 'Lions', 'school', '660283845', 'male', '2018-05-18', 'o+', 'admin', NULL, 'Bangalore', 'Bangalore', 'Tamil', 'OBC', NULL, 'Swargaraj Nagar, Tiruchirappalli, Lalgudi,Tamilnadu,India', 31, 24, 7, '625001', NULL, NULL, '990985', '050354', '2023-07-19', NULL, 'uploads/male.png', 'active', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(2, 1, 2, 8, 'librarian', 'librarian', '686484004', 'female', '2009-05-25', 'o+', 'librarian', NULL, 'Hyderabad', 'Hyderabad', 'Hindi', 'Others', NULL, 'Swargaraj Nagar, Tiruchirappalli, Lalgudi,Tamilnadu,India', 31, 24, 7, '625001', NULL, NULL, '894614', '394178', '2024-03-01', NULL, 'uploads/female.png', 'active', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(3, 1, 3, 10, 'receptionist', 'receptionist', '587380788', 'female', '2009-01-04', 'ab+', 'others', NULL, 'Chennai', 'Chennai', 'Tamil', 'MBC', NULL, 'VRFC+W6C, Main Rd, Swargaraj Nagar, Tiruchirappalli, Lalgudi,Tamilnadu,India', 31, 24, 7, '625001', NULL, NULL, '869214', '760150', '2024-07-18', NULL, 'uploads/female.png', 'active', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(4, 1, 4, 11, 'accountant', 'accountant', '147313523', 'female', '2018-09-14', 'o+', 'others', NULL, 'Bangalore', 'Bangalore', 'Malayalam', 'SCA', NULL, 'VRFC+W6C, Main Rd, Swargaraj Nagar, Tiruchirappalli, Lalgudi,Tamilnadu,India', 31, 24, 7, '625001', NULL, NULL, '026741', '458522', '2023-11-26', NULL, 'uploads/female.png', 'active', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(5, 1, 5, 12, 'stock_keeper', 'stock_keeper', '210073062', 'female', '2009-11-21', 'b-', 'others', NULL, 'Chennai', 'Chennai', 'Kannada', 'MBC', NULL, 'VRFC+W6C, Main Rd, Swargaraj Nagar, Tiruchirappalli, Lalgudi,Tamilnadu,India', 31, 24, 7, '625001', NULL, NULL, '626295', '785197', '2024-06-02', NULL, 'uploads/female.png', 'active', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `usergroup_id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED DEFAULT NULL,
  `ref_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive','exit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_verified` tinyint(1) NOT NULL DEFAULT '0',
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `is_reset` tinyint(1) NOT NULL DEFAULT '0',
  `platform_token` text COLLATE utf8mb4_unicode_ci,
  `device_id` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usergroup_id`, `school_id`, `ref_id`, `name`, `email`, `mobile_no`, `registration_number`, `password`, `status`, `email_verification_code`, `email_verified`, `email_verified_at`, `mobile_verification_code`, `mobile_verified`, `mobile_verified_at`, `is_reset`, `platform_token`, `device_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, NULL, 'Lions Matriculation School', 'lionslalgudi1968@gmail.com', '8973848423', '775224', '$2y$10$OdeTIMFaQrde6s2cwepHjus3ZLgSbeFypVYL43UP.qod9.7GIS6uq', 'active', 'cI1jfoUlKVT1fqdHyVMIZvcK2eJ0TPROxawnEdzg', 1, '2026-08-12 07:38:40', NULL, 0, NULL, 0, NULL, NULL, 'hMobR62IDu', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(2, 8, 1, NULL, 'librarian1', 'librarian1@mailinator.com', '2230456701', '309347', '$2y$10$3FAWxzYUUfs9RuVIIAal2uEc6XeOVtzO5tbKdthbpRzwqfYs8DmRK', 'active', 'JY4FGbKQOS4hGokcjqX2Dm7IAkRHm4bhcdGOhWaS', 1, '2026-08-12 07:38:40', NULL, 0, NULL, 0, NULL, NULL, 'zvMde6YP7y', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(3, 10, 1, NULL, 'receptionist1', 'receptionist1@mailinator.com', '2230456702', '201468', '$2y$10$PJZk9VFFlxCy7T5mgI4M..Ut/r0H/b2QBTbwVpPt1qfdf2FjBsxhK', 'active', 'myKcsJR3xzvmoBs9rwYlQ2PiEKYlUKHL8UEWV5gZ', 1, '2026-08-12 07:38:40', NULL, 0, NULL, 0, NULL, NULL, 'peSojszcNa', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(4, 11, 1, NULL, 'accountant1', 'accountant1@mailinator.com', '2230456703', '864663', '$2y$10$93U8eZYFDOimtQ6PlBRHzOi/Ibhflq/O/RXBoYlt1vpuofDYTFpxy', 'active', 'XwDv0Oxfn1LryMp9iWQa3YGhgMM9Z4fw2q9UF86b', 1, '2026-08-12 07:38:40', NULL, 0, NULL, 0, NULL, NULL, 'r0XLhwGgqD', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL),
(5, 12, 1, NULL, 'stock_keeper1', 'stock_keeper1@mailinator.com', '2230456704', '411543', '$2y$10$yPkZZqzWOj2H3E8Wv9FVmOmQfF8Qsk3RFlbrW2ccuswihRXqOFz8a', 'active', 'AFmpEWopzHI43Dr78Xdgi9lQ4rzcWNH5I5lsCcuL', 1, '2026-08-12 07:38:40', NULL, 0, NULL, 0, NULL, NULL, '8SthAhkWGj', '2026-08-12 07:38:40', '2026-08-12 07:38:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `school_id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Fritsch-Bahringer', 'fritsch-bahringer@mailinator.com', '9960721698', '52397 Goodwin Neck Suite 879\nVidalton, FL 04189', 1, '2026-08-12 11:54:04', '2026-08-12 11:54:04', NULL),
(2, 1, 'Koepp PLC', 'koepp plc@mailinator.com', '9206421048', '92844 Paucek Rapids Suite 194\nPort Selmerport, IA 02628-8116', 1, '2026-08-12 11:54:04', '2026-08-12 11:54:04', NULL),
(3, 1, 'Gerhold, Nitzsche and McKenzie', 'gerhold, nitzsche and mckenzie@mailinator.com', '9615009358', '971 Ryann Expressway Suite 524\nEast Grant, NJ 14865-1362', 1, '2026-08-12 11:54:04', '2026-08-12 11:54:04', NULL),
(4, 1, 'Hessel-Schoen', 'hessel-schoen@mailinator.com', '9731094153', '6842 Heath Ridge\nSouth Javonteland, HI 73397', 1, '2026-08-12 11:54:04', '2026-08-12 11:54:04', NULL),
(5, 1, 'Blanda LLC', 'blanda llc@mailinator.com', '9406087747', '543 Caleb Meadow\nKoeppberg, CA 95569-8421', 1, '2026-08-12 11:54:04', '2026-08-12 11:54:04', NULL),
(6, 1, 'Reilly-Oberbrunner', 'reilly-oberbrunner@mailinator.com', '9063089700', '87053 Pfeffer Burgs\nEast Johnathonview, DE 38888-0781', 1, '2026-08-12 11:54:20', '2026-08-12 11:54:20', NULL),
(7, 1, 'Gerhold Inc', 'gerhold inc@mailinator.com', '9901314253', '15686 Hickle Crest\nMargarettefort, OH 61109', 1, '2026-08-12 11:54:20', '2026-08-12 11:54:20', NULL),
(8, 1, 'Quigley-Pagac', 'quigley-pagac@mailinator.com', '9576446046', '229 Mia Vista\nPort Torey, SD 23322-1829', 1, '2026-08-12 11:54:20', '2026-08-12 11:54:20', NULL),
(9, 1, 'Medhurst Inc', 'medhurst inc@mailinator.com', '9577774215', '9847 Sandy Island\nEast Martafurt, IA 58382-2968', 1, '2026-08-12 11:54:20', '2026-08-12 11:54:20', NULL),
(10, 1, 'Schoen and Sons', 'schoen and sons@mailinator.com', '9464573446', '179 Smith Oval\nWest Janick, FL 02134', 1, '2026-08-12 11:54:20', '2026-08-12 11:54:20', NULL),
(11, 1, 'Pfeffer, Wiegand and Aufderhar', 'pfeffer, wiegand and aufderhar@mailinator.com', '9203658093', '68538 Hackett Curve Apt. 864\nLake Kurtis, MA 47761-6895', 1, '2026-08-12 11:54:35', '2026-08-12 11:54:35', NULL),
(12, 1, 'Jacobs-Smitham', 'jacobs-smitham@mailinator.com', '9332098624', '33023 Weissnat Inlet Apt. 793\nEmanuelfurt, CO 88957', 1, '2026-08-12 11:54:35', '2026-08-12 11:54:35', NULL),
(13, 1, 'Watsica-Cremin', 'watsica-cremin@mailinator.com', '9258990195', '5097 Christiana Plaza\nShermanborough, NC 46930-9667', 1, '2026-08-12 11:54:35', '2026-08-12 11:54:35', NULL),
(14, 1, 'Wunsch-Leffler', 'wunsch-leffler@mailinator.com', '9815649744', '80639 Francesco Divide\nNew Clevelandshire, MS 64455-6425', 1, '2026-08-12 11:54:35', '2026-08-12 11:54:35', NULL),
(15, 1, 'Steuber PLC', 'steuber plc@mailinator.com', '9524694690', '4085 Kayley Crossroad\nSchultzmouth, WV 93090-0207', 1, '2026-08-12 11:54:35', '2026-08-12 11:54:35', NULL),
(16, 1, 'Gutmann LLC', 'gutmann llc@mailinator.com', '9310667340', '21625 Stoltenberg Terrace\nRebashire, SD 00440', 1, '2026-08-12 11:54:52', '2026-08-12 11:54:52', NULL),
(17, 1, 'McKenzie Ltd', 'mckenzie ltd@mailinator.com', '9736745908', '8798 Emmerich Forks Suite 103\nNorth Jeremie, MN 33446', 1, '2026-08-12 11:54:52', '2026-08-12 11:54:52', NULL),
(18, 1, 'Jerde-Hoeger', 'jerde-hoeger@mailinator.com', '9097725741', '31564 Blanche Islands Suite 529\nSouth Gailshire, GA 66277-5337', 1, '2026-08-12 11:54:52', '2026-08-12 11:54:52', NULL),
(19, 1, 'Hegmann-Watsica', 'hegmann-watsica@mailinator.com', '9530874556', '3352 Larkin Fork\nArthurton, IA 60674', 1, '2026-08-12 11:54:52', '2026-08-12 11:54:52', NULL),
(20, 1, 'Ullrich Ltd', 'ullrich ltd@mailinator.com', '9866925992', '4386 Smitham Lane\nWolffshire, MA 07380', 1, '2026-08-12 11:54:52', '2026-08-12 11:54:52', NULL),
(21, 1, 'Ferry-Toy', 'ferry-toy@mailinator.com', '9720964049', '2864 Shields Fork Suite 682\nNew Julie, NM 40704-5940', 1, '2026-08-12 11:55:07', '2026-08-12 11:55:07', NULL),
(22, 1, 'Lubowitz Inc', 'lubowitz inc@mailinator.com', '9088921967', '952 Timothy Station Suite 580\nWest Buck, VT 22030-2547', 1, '2026-08-12 11:55:07', '2026-08-12 11:55:07', NULL),
(23, 1, 'Lind LLC', 'lind llc@mailinator.com', '9454632700', '1405 Kovacek Bridge Apt. 196\nIssacburgh, CT 24291-4485', 1, '2026-08-12 11:55:07', '2026-08-12 11:55:07', NULL),
(24, 1, 'Littel, Schuster and Crooks', 'littel, schuster and crooks@mailinator.com', '9497925843', '4543 Mayert Neck Apt. 038\nSouth Emelia, AR 79605-1094', 1, '2026-08-12 11:55:07', '2026-08-12 11:55:07', NULL),
(25, 1, 'Konopelski and Sons', 'konopelski and sons@mailinator.com', '9928008723', '4219 Ludwig Course\nWest Anaport, MT 54298-5007', 1, '2026-08-12 11:55:07', '2026-08-12 11:55:07', NULL),
(26, 1, 'Toy and Sons', 'toy and sons@mailinator.com', '9773159404', '9609 Crist Divide\nRatkeport, CA 67243-3657', 1, '2026-08-12 11:55:22', '2026-08-12 11:55:22', NULL),
(27, 1, 'Prohaska Inc', 'prohaska inc@mailinator.com', '9987581272', '2926 Steuber Common Suite 313\nWest Adaview, MA 49989', 1, '2026-08-12 11:55:22', '2026-08-12 11:55:22', NULL),
(28, 1, 'Moen, Dibbert and Huels', 'moen, dibbert and huels@mailinator.com', '9620388438', '11770 Bart Row Apt. 092\nPort Amberberg, RI 32245', 1, '2026-08-12 11:55:22', '2026-08-12 11:55:22', NULL),
(29, 1, 'Glover-Bailey', 'glover-bailey@mailinator.com', '9462088629', '13679 Davis Port\nOranshire, NM 92065', 1, '2026-08-12 11:55:22', '2026-08-12 11:55:22', NULL),
(30, 1, 'Greenfelder Ltd', 'greenfelder ltd@mailinator.com', '9987029672', '52877 Mosciski Mountains\nTorreytown, WI 21890-5733', 1, '2026-08-12 11:55:22', '2026-08-12 11:55:22', NULL),
(31, 1, 'Kuhlman-Tillman', 'kuhlman-tillman@mailinator.com', '9481088545', '64422 Carter Brook\nTodside, WV 98763-8211', 1, '2026-08-12 11:55:38', '2026-08-12 11:55:38', NULL),
(32, 1, 'Dach-Ziemann', 'dach-ziemann@mailinator.com', '9473793943', '68775 Leannon Square Suite 215\nWaelchiland, ND 52727', 1, '2026-08-12 11:55:38', '2026-08-12 11:55:38', NULL),
(33, 1, 'Cormier, Waters and Feeney', 'cormier, waters and feeney@mailinator.com', '9184680900', '7350 Hackett Rue Suite 038\nNew Joany, TN 43395-6002', 1, '2026-08-12 11:55:38', '2026-08-12 11:55:38', NULL),
(34, 1, 'Swaniawski-Crooks', 'swaniawski-crooks@mailinator.com', '9323962666', '1226 Maggio Parkway Apt. 796\nWest Boris, SC 00677-7401', 1, '2026-08-12 11:55:38', '2026-08-12 11:55:38', NULL),
(35, 1, 'Donnelly-Ritchie', 'donnelly-ritchie@mailinator.com', '9832281154', '8005 Howe Fork Suite 046\nEast Joshuah, SD 07274', 1, '2026-08-12 11:55:38', '2026-08-12 11:55:38', NULL),
(36, 1, 'Cruickshank-Braun', 'cruickshank-braun@mailinator.com', '9245352980', '936 Mariane Fall Suite 751\nNorth Golda, TX 10890-0252', 1, '2026-08-12 11:55:52', '2026-08-12 11:55:52', NULL),
(37, 1, 'Kessler-Bradtke', 'kessler-bradtke@mailinator.com', '9318278898', '422 Reilly Lane\nLiamtown, DC 83133', 1, '2026-08-12 11:55:52', '2026-08-12 11:55:52', NULL),
(38, 1, 'Terry-Feeney', 'terry-feeney@mailinator.com', '9928631518', '63374 King Summit\nNorth Jarrodville, AK 27227-2174', 1, '2026-08-12 11:55:52', '2026-08-12 11:55:52', NULL),
(39, 1, 'Heller LLC', 'heller llc@mailinator.com', '9946997249', '57212 Shane Mountains\nWestburgh, VT 94246-6477', 1, '2026-08-12 11:55:52', '2026-08-12 11:55:52', NULL),
(40, 1, 'Kuvalis, Hudson and O\'Connell', 'kuvalis, hudson and o\'connell@mailinator.com', '9246559536', '6623 Lew Wells Apt. 871\nPort Zolastad, MN 91392-3434', 1, '2026-08-12 11:55:52', '2026-08-12 11:55:52', NULL),
(41, 1, 'Cremin-Crist', 'cremin-crist@mailinator.com', '9434375743', '1955 Stephanie Villages\nLake Thoraville, KY 42383', 1, '2026-08-12 11:56:07', '2026-08-12 11:56:07', NULL),
(42, 1, 'Schmidt, Bechtelar and Leuschke', 'schmidt, bechtelar and leuschke@mailinator.com', '9752254686', '31487 Kovacek Fall Apt. 526\nHettingerton, WY 94275', 1, '2026-08-12 11:56:07', '2026-08-12 11:56:07', NULL),
(43, 1, 'Daniel-Ruecker', 'daniel-ruecker@mailinator.com', '9241799116', '6837 Nikolaus Unions\nNew Francesville, WY 96937', 1, '2026-08-12 11:56:07', '2026-08-12 11:56:07', NULL),
(44, 1, 'Mosciski, Wehner and Paucek', 'mosciski, wehner and paucek@mailinator.com', '9330918335', '906 Marquardt Rue\nMertietown, NE 30451', 1, '2026-08-12 11:56:07', '2026-08-12 11:56:07', NULL),
(45, 1, 'Hirthe-Rempel', 'hirthe-rempel@mailinator.com', '9003246452', '814 Aimee Park Suite 579\nMayertbury, AL 97075', 1, '2026-08-12 11:56:07', '2026-08-12 11:56:07', NULL),
(46, 1, 'Parisian, Hauck and Kuhn', 'parisian, hauck and kuhn@mailinator.com', '9046608097', '7989 Durgan Shoal\nJoeton, OK 45117', 1, '2026-08-12 11:56:22', '2026-08-12 11:56:22', NULL),
(47, 1, 'Bruen, Douglas and Conroy', 'bruen, douglas and conroy@mailinator.com', '9945660939', '22308 Carter Fork\nNorth Rene, OR 04514-9405', 1, '2026-08-12 11:56:22', '2026-08-12 11:56:22', NULL),
(48, 1, 'Stoltenberg Inc', 'stoltenberg inc@mailinator.com', '9421833888', '3927 Adrien Circle Suite 974\nPriceside, LA 74218-5025', 1, '2026-08-12 11:56:22', '2026-08-12 11:56:22', NULL),
(49, 1, 'Tremblay and Sons', 'tremblay and sons@mailinator.com', '9691132609', '5848 Gerlach Orchard Apt. 077\nBodefurt, OH 35849-4643', 1, '2026-08-12 11:56:22', '2026-08-12 11:56:22', NULL),
(50, 1, 'Bartoletti and Sons', 'bartoletti and sons@mailinator.com', '9824088986', '582 Lindsay Plains Apt. 287\nWilliamsonland, MT 56993', 1, '2026-08-12 11:56:22', '2026-08-12 11:56:22', NULL),
(51, 1, 'Olson, Kunde and Will', 'olson, kunde and will@mailinator.com', '9710618930', '56414 Tremblay Circles\nAudieland, NH 35365', 1, '2026-08-12 11:56:38', '2026-08-12 11:56:38', NULL),
(52, 1, 'Haag-Fahey', 'haag-fahey@mailinator.com', '9608361595', '3186 Tabitha Port\nGoodwinview, RI 27639-5139', 1, '2026-08-12 11:56:38', '2026-08-12 11:56:38', NULL),
(53, 1, 'Gerlach-Little', 'gerlach-little@mailinator.com', '9969180208', '87524 Paula Key Suite 450\nTobinville, VT 12623', 1, '2026-08-12 11:56:38', '2026-08-12 11:56:38', NULL),
(54, 1, 'Doyle-Bogisich', 'doyle-bogisich@mailinator.com', '9334045502', '422 Roosevelt Ridge\nJevonview, KS 94296', 1, '2026-08-12 11:56:38', '2026-08-12 11:56:38', NULL),
(55, 1, 'Emmerich, Fay and Beier', 'emmerich, fay and beier@mailinator.com', '9086700846', '67762 Zackery Prairie\nPort Bertaberg, TN 85241', 1, '2026-08-12 11:56:38', '2026-08-12 11:56:38', NULL),
(56, 1, 'VonRueden-Gottlieb', 'vonrueden-gottlieb@mailinator.com', '9598320406', '671 Moore Station\nSouth Lizzie, NC 52518-1912', 1, '2026-08-12 11:56:53', '2026-08-12 11:56:53', NULL),
(57, 1, 'Bruen, Simonis and Bradtke', 'bruen, simonis and bradtke@mailinator.com', '9821241146', '36746 Mayer Pike Apt. 378\nNew Guiseppeville, PA 36100', 1, '2026-08-12 11:56:53', '2026-08-12 11:56:53', NULL),
(58, 1, 'Bins-Konopelski', 'bins-konopelski@mailinator.com', '9172362406', '240 Maximilian Lights Suite 388\nSpinkafort, NH 03677-1923', 1, '2026-08-12 11:56:53', '2026-08-12 11:56:53', NULL),
(59, 1, 'D\'Amore, Pacocha and Gorczany', 'd\'amore, pacocha and gorczany@mailinator.com', '9930835188', '2979 Daniella Turnpike Apt. 037\nWest Ferminmouth, IA 85911', 1, '2026-08-12 11:56:53', '2026-08-12 11:56:53', NULL),
(60, 1, 'Ziemann-Stoltenberg', 'ziemann-stoltenberg@mailinator.com', '9172763314', '98752 Green Coves Apt. 399\nBaumbachburgh, OR 96778-6648', 1, '2026-08-12 11:56:53', '2026-08-12 11:56:53', NULL),
(61, 1, 'Gorczany, Hermiston and Marquardt', 'gorczany, hermiston and marquardt@mailinator.com', '9957123174', '374 Ritchie Lake Apt. 603\nEast Stephany, AL 29037', 1, '2026-08-12 11:57:10', '2026-08-12 11:57:10', NULL),
(62, 1, 'Konopelski-Renner', 'konopelski-renner@mailinator.com', '9401611770', '80214 Baumbach Dam Apt. 087\nWest Ernestina, MO 78882', 1, '2026-08-12 11:57:10', '2026-08-12 11:57:10', NULL),
(63, 1, 'Hegmann-Terry', 'hegmann-terry@mailinator.com', '9641892850', '6076 Welch Gardens\nNew Ransommouth, VA 17898', 1, '2026-08-12 11:57:10', '2026-08-12 11:57:10', NULL),
(64, 1, 'Kulas PLC', 'kulas plc@mailinator.com', '9571445197', '3594 Waldo Camp Apt. 744\nWest Vicky, NC 35428-3305', 1, '2026-08-12 11:57:10', '2026-08-12 11:57:10', NULL),
(65, 1, 'Konopelski, Lowe and Turcotte', 'konopelski, lowe and turcotte@mailinator.com', '9075995428', '3664 Garett Manor\nNew Carmelaview, OR 15779', 1, '2026-08-12 11:57:10', '2026-08-12 11:57:10', NULL),
(66, 1, 'Stark and Sons', 'stark and sons@mailinator.com', '9243110417', '79130 Zemlak Shoal\nEast Ettie, ND 36978', 1, '2026-08-12 11:57:25', '2026-08-12 11:57:25', NULL),
(67, 1, 'Schmidt-Lubowitz', 'schmidt-lubowitz@mailinator.com', '9445553170', '905 Vincenza Fords Apt. 337\nLittelshire, IN 53667', 1, '2026-08-12 11:57:25', '2026-08-12 11:57:25', NULL),
(68, 1, 'Donnelly Group', 'donnelly group@mailinator.com', '9708555320', '30609 Sipes Parks\nLake Yazminborough, SD 95794', 1, '2026-08-12 11:57:25', '2026-08-12 11:57:25', NULL),
(69, 1, 'Kreiger-Mosciski', 'kreiger-mosciski@mailinator.com', '9244946313', '287 Braun Manor\nSouth Marley, FL 35178-1578', 1, '2026-08-12 11:57:25', '2026-08-12 11:57:25', NULL),
(70, 1, 'D\'Amore-Donnelly', 'd\'amore-donnelly@mailinator.com', '9941429766', '17879 Russel Stravenue Suite 018\nNorth Hudsonport, AR 84621-5794', 1, '2026-08-12 11:57:25', '2026-08-12 11:57:25', NULL),
(71, 1, 'Beier Inc', 'beier inc@mailinator.com', '9987331190', '5527 Reese Valleys Apt. 830\nNorth Carlos, SC 84918-0229', 1, '2026-08-12 11:57:40', '2026-08-12 11:57:40', NULL),
(72, 1, 'Bruen, Gibson and Terry', 'bruen, gibson and terry@mailinator.com', '9595161611', '8935 Kshlerin Mill\nNew Abbie, AZ 90747-1131', 1, '2026-08-12 11:57:40', '2026-08-12 11:57:40', NULL),
(73, 1, 'Mayert, Huel and Feest', 'mayert, huel and feest@mailinator.com', '9413686973', '130 Melissa Knolls\nWest Christian, SD 38649-4431', 1, '2026-08-12 11:57:40', '2026-08-12 11:57:40', NULL),
(74, 1, 'Thompson-Hermiston', 'thompson-hermiston@mailinator.com', '9178483006', '777 Stracke Stravenue Suite 729\nErikborough, IA 56837-2404', 1, '2026-08-12 11:57:40', '2026-08-12 11:57:40', NULL),
(75, 1, 'Sanford, Schinner and Senger', 'sanford, schinner and senger@mailinator.com', '9839984791', '3028 Mohr Islands\nPort Ansleyberg, SC 81291-2274', 1, '2026-08-12 11:57:40', '2026-08-12 11:57:40', NULL),
(76, 1, 'Huel-Stokes', 'huel-stokes@mailinator.com', '9777546131', '25320 Connelly Villages\nWest Joyshire, MA 48393-3873', 1, '2026-08-12 11:57:56', '2026-08-12 11:57:56', NULL),
(77, 1, 'Wuckert-Thompson', 'wuckert-thompson@mailinator.com', '9537842344', '701 Baumbach Flats Suite 308\nPort Brooklyn, NJ 02766', 1, '2026-08-12 11:57:56', '2026-08-12 11:57:56', NULL),
(78, 1, 'Dooley, Kunde and Corwin', 'dooley, kunde and corwin@mailinator.com', '9133019235', '346 Kemmer Ford Apt. 750\nHesselview, ID 35286-1143', 1, '2026-08-12 11:57:56', '2026-08-12 11:57:56', NULL),
(79, 1, 'Langworth, Kozey and Thompson', 'langworth, kozey and thompson@mailinator.com', '9528470594', '9692 Halvorson Forges Apt. 357\nWest Cletus, CO 04221', 1, '2026-08-12 11:57:56', '2026-08-12 11:57:56', NULL),
(80, 1, 'Hauck PLC', 'hauck plc@mailinator.com', '9772519811', '75399 Morar Lake Apt. 679\nNew Jazmynville, AL 51012', 1, '2026-08-12 11:57:56', '2026-08-12 11:57:56', NULL),
(81, 1, 'Gaylord, Leffler and Luettgen', 'gaylord, leffler and luettgen@mailinator.com', '9664675254', '319 Cummerata Harbor Suite 426\nEast Susanaberg, DC 19602-0487', 1, '2026-08-12 11:58:11', '2026-08-12 11:58:11', NULL),
(82, 1, 'Kassulke, Grimes and Franecki', 'kassulke, grimes and franecki@mailinator.com', '9356641904', '2891 Swift Lane Apt. 387\nWuckertton, WV 03229-4317', 1, '2026-08-12 11:58:11', '2026-08-12 11:58:11', NULL),
(83, 1, 'Weimann, Hermiston and Stamm', 'weimann, hermiston and stamm@mailinator.com', '9063725206', '80650 Lind Village Suite 803\nCurtiston, SC 68644-4280', 1, '2026-08-12 11:58:11', '2026-08-12 11:58:11', NULL),
(84, 1, 'Hyatt, Murazik and Kessler', 'hyatt, murazik and kessler@mailinator.com', '9085536591', '12929 Viviane Streets\nDorisfort, CO 41040-3662', 1, '2026-08-12 11:58:11', '2026-08-12 11:58:11', NULL),
(85, 1, 'Huels, McCullough and Langosh', 'huels, mccullough and langosh@mailinator.com', '9402609861', '6101 Vesta Motorway\nBaileeville, PA 72173', 1, '2026-08-12 11:58:11', '2026-08-12 11:58:11', NULL),
(86, 1, 'Waelchi-Kuhn', 'waelchi-kuhn@mailinator.com', '9328298562', '7294 Schuster Rapid\nNew Millie, CT 87045', 1, '2026-08-12 11:58:25', '2026-08-12 11:58:25', NULL),
(87, 1, 'Macejkovic LLC', 'macejkovic llc@mailinator.com', '9176042907', '5872 Diana Hill Apt. 097\nLake Alfredo, MN 20423-6559', 1, '2026-08-12 11:58:25', '2026-08-12 11:58:25', NULL),
(88, 1, 'Jacobs Inc', 'jacobs inc@mailinator.com', '9947110777', '84570 Rogahn Ferry\nSouth Bryanafort, ME 51552-5489', 1, '2026-08-12 11:58:25', '2026-08-12 11:58:25', NULL),
(89, 1, 'Yost and Sons', 'yost and sons@mailinator.com', '9626132314', '44956 Graham Junction Suite 149\nRethaville, PA 70421', 1, '2026-08-12 11:58:25', '2026-08-12 11:58:25', NULL),
(90, 1, 'Rosenbaum and Sons', 'rosenbaum and sons@mailinator.com', '9780214579', '13720 Ada Extension Apt. 779\nMoenville, MI 10543', 1, '2026-08-12 11:58:25', '2026-08-12 11:58:25', NULL),
(91, 1, 'Hickle-Prosacco', 'hickle-prosacco@mailinator.com', '9159754892', '7643 Kassulke Haven\nHaleyfurt, OR 70078-4279', 1, '2026-08-12 11:58:41', '2026-08-12 11:58:41', NULL),
(92, 1, 'Johnston-Reinger', 'johnston-reinger@mailinator.com', '9216709057', '875 Stefanie Parkways Suite 616\nNorth Michel, SC 65793-3986', 1, '2026-08-12 11:58:41', '2026-08-12 11:58:41', NULL),
(93, 1, 'Satterfield-Schultz', 'satterfield-schultz@mailinator.com', '9348884125', '334 Treutel Neck Apt. 477\nPort Brucemouth, WI 94930', 1, '2026-08-12 11:58:41', '2026-08-12 11:58:41', NULL),
(94, 1, 'O\'Kon, Rath and Hane', 'o\'kon, rath and hane@mailinator.com', '9331475267', '982 Tyshawn Crossroad Suite 938\nLake Norris, VA 27378-8096', 1, '2026-08-12 11:58:41', '2026-08-12 11:58:41', NULL),
(95, 1, 'Gerhold, Williamson and Casper', 'gerhold, williamson and casper@mailinator.com', '9243995939', '25097 Megane Lakes Suite 503\nFriesenstad, SC 09156-1004', 1, '2026-08-12 11:58:41', '2026-08-12 11:58:41', NULL),
(96, 1, 'Harvey, Padberg and Zieme', 'harvey, padberg and zieme@mailinator.com', '9693687908', '10618 Jerde Inlet\nSouth Asia, RI 39186-6223', 1, '2026-08-12 11:58:57', '2026-08-12 11:58:57', NULL),
(97, 1, 'Hirthe and Sons', 'hirthe and sons@mailinator.com', '9170557068', '547 Ernser Isle Apt. 221\nSouth Wendy, SD 88024', 1, '2026-08-12 11:58:57', '2026-08-12 11:58:57', NULL),
(98, 1, 'Crooks-Steuber', 'crooks-steuber@mailinator.com', '9233263449', '26151 Ritchie Plain Apt. 657\nNorth Elouise, CT 52843-2249', 1, '2026-08-12 11:58:57', '2026-08-12 11:58:57', NULL),
(99, 1, 'Keeling, Terry and Jones', 'keeling, terry and jones@mailinator.com', '9380384271', '2304 Adrianna Tunnel Suite 621\nDavisport, PA 58219-1911', 1, '2026-08-12 11:58:57', '2026-08-12 11:58:57', NULL),
(100, 1, 'Gaylord LLC', 'gaylord llc@mailinator.com', '9535214664', '516 Herman Trace Suite 905\nNew Wardhaven, CO 44881', 1, '2026-08-12 11:58:57', '2026-08-12 11:58:57', NULL),
(101, 1, 'Howe PLC', 'howe plc@mailinator.com', '9545766320', '66394 Elfrieda Ridges\nMarvinview, MO 70289', 1, '2026-08-12 11:59:13', '2026-08-12 11:59:13', NULL),
(102, 1, 'Erdman, Beier and Bode', 'erdman, beier and bode@mailinator.com', '9626141418', '53585 Antwan Estate Apt. 751\nIbrahimshire, MS 93828', 1, '2026-08-12 11:59:13', '2026-08-12 11:59:13', NULL),
(103, 1, 'Wintheiser, Rath and Dickinson', 'wintheiser, rath and dickinson@mailinator.com', '9084836939', '3225 Simeon Fork\nLittelport, RI 81754', 1, '2026-08-12 11:59:13', '2026-08-12 11:59:13', NULL),
(104, 1, 'Stamm, Russel and Greenholt', 'stamm, russel and greenholt@mailinator.com', '9140837725', '1085 Gene Shores Apt. 422\nRoobburgh, WI 49063-0189', 1, '2026-08-12 11:59:13', '2026-08-12 11:59:13', NULL),
(105, 1, 'Gutmann, Heathcote and Powlowski', 'gutmann, heathcote and powlowski@mailinator.com', '9757478399', '433 Muller Plain Suite 835\nLake Cristopher, MT 75134-6621', 1, '2026-08-12 11:59:13', '2026-08-12 11:59:13', NULL),
(106, 1, 'Morar Ltd', 'morar ltd@mailinator.com', '9007324372', '51075 Becker Mountains Suite 217\nDiamondview, KY 43264', 1, '2026-08-12 11:59:29', '2026-08-12 11:59:29', NULL),
(107, 1, 'Roob-Treutel', 'roob-treutel@mailinator.com', '9359803444', '6129 Walter Vista\nVladimirtown, WA 68629-1409', 1, '2026-08-12 11:59:29', '2026-08-12 11:59:29', NULL),
(108, 1, 'Cummerata, Johnson and Reinger', 'cummerata, johnson and reinger@mailinator.com', '9221886390', '9588 Ana Locks\nNew Kimberlyside, OH 24283-6775', 1, '2026-08-12 11:59:29', '2026-08-12 11:59:29', NULL),
(109, 1, 'Satterfield and Sons', 'satterfield and sons@mailinator.com', '9574947683', '2127 Adella Spur\nNorth Imaberg, WY 89107-4358', 1, '2026-08-12 11:59:29', '2026-08-12 11:59:29', NULL),
(110, 1, 'Douglas, Hermiston and Haley', 'douglas, hermiston and haley@mailinator.com', '9727792263', '10281 Kling Viaduct Apt. 857\nWest Dayna, MD 12893-0889', 1, '2026-08-12 11:59:29', '2026-08-12 11:59:29', NULL),
(111, 1, 'Thiel Inc', 'thiel inc@mailinator.com', '9706564209', '2367 Alberto Estates Suite 052\nAubreymouth, TN 76903', 1, '2026-08-12 11:59:44', '2026-08-12 11:59:44', NULL),
(112, 1, 'Simonis, Schroeder and Wunsch', 'simonis, schroeder and wunsch@mailinator.com', '9380108687', '63817 Mateo Skyway Apt. 296\nNorth Eddshire, AK 43525', 1, '2026-08-12 11:59:44', '2026-08-12 11:59:44', NULL),
(113, 1, 'Johnson-Koepp', 'johnson-koepp@mailinator.com', '9740955599', '73230 Krystina Gardens Apt. 178\nWest Al, WV 04978', 1, '2026-08-12 11:59:44', '2026-08-12 11:59:44', NULL),
(114, 1, 'Connelly and Sons', 'connelly and sons@mailinator.com', '9319920577', '82741 Adalberto Mews\nTorphyside, IA 48708', 1, '2026-08-12 11:59:44', '2026-08-12 11:59:44', NULL),
(115, 1, 'Kulas, Homenick and Swaniawski', 'kulas, homenick and swaniawski@mailinator.com', '9691534032', '19102 Hills Court Suite 487\nRunolfsdottirport, OH 17144', 1, '2026-08-12 11:59:44', '2026-08-12 11:59:44', NULL),
(116, 1, 'Donnelly-Rempel', 'donnelly-rempel@mailinator.com', '9868510284', '213 Boyer Plains\nNorth Kallie, VT 41075-1406', 1, '2026-08-12 11:59:59', '2026-08-12 11:59:59', NULL),
(117, 1, 'Schamberger-Fritsch', 'schamberger-fritsch@mailinator.com', '9235837879', '859 Padberg Island Apt. 134\nAbigailfurt, VT 05825-0416', 1, '2026-08-12 11:59:59', '2026-08-12 11:59:59', NULL),
(118, 1, 'Hettinger-Walker', 'hettinger-walker@mailinator.com', '9271237853', '251 Terrill Isle Suite 535\nAnahihaven, CA 72912', 1, '2026-08-12 11:59:59', '2026-08-12 11:59:59', NULL),
(119, 1, 'Windler PLC', 'windler plc@mailinator.com', '9647302449', '2103 Boyle Estate Apt. 446\nRickeyfort, AL 35252', 1, '2026-08-12 11:59:59', '2026-08-12 11:59:59', NULL),
(120, 1, 'Kohler, O\'Reilly and Parker', 'kohler, o\'reilly and parker@mailinator.com', '9021979176', '656 Turner Loop Suite 033\nGrahamburgh, OR 60083', 1, '2026-08-12 11:59:59', '2026-08-12 11:59:59', NULL),
(121, 1, 'O\'Hara-Johnson', 'o\'hara-johnson@mailinator.com', '9288201644', '67176 Lydia Pass\nNew Jessymouth, CA 73666-2962', 1, '2026-08-12 12:00:15', '2026-08-12 12:00:15', NULL),
(122, 1, 'Ward-Shanahan', 'ward-shanahan@mailinator.com', '9849323022', '620 Bette Circles Apt. 405\nNew Vernon, WY 56179', 1, '2026-08-12 12:00:15', '2026-08-12 12:00:15', NULL),
(123, 1, 'Stracke-Cronin', 'stracke-cronin@mailinator.com', '9415332254', '417 Braun Summit Suite 703\nTurnertown, NH 08823', 1, '2026-08-12 12:00:15', '2026-08-12 12:00:15', NULL),
(124, 1, 'Bruen, Ebert and Hirthe', 'bruen, ebert and hirthe@mailinator.com', '9555157214', '32611 Cleveland Burgs\nWest Ellsworth, WI 61095', 1, '2026-08-12 12:00:15', '2026-08-12 12:00:15', NULL),
(125, 1, 'Kuhlman, Feeney and VonRueden', 'kuhlman, feeney and vonrueden@mailinator.com', '9550974140', '500 Heaney Throughway Suite 751\nPort Heaven, OK 24132-4090', 1, '2026-08-12 12:00:15', '2026-08-12 12:00:15', NULL),
(126, 1, 'Shanahan LLC', 'shanahan llc@mailinator.com', '9690229722', '820 Vivien Pine\nGarfieldbury, MS 12611', 1, '2026-08-12 12:00:32', '2026-08-12 12:00:32', NULL),
(127, 1, 'Lueilwitz, Kutch and O\'Kon', 'lueilwitz, kutch and o\'kon@mailinator.com', '9753322372', '33898 Addie Land\nPfefferborough, MD 63448-8056', 1, '2026-08-12 12:00:32', '2026-08-12 12:00:32', NULL),
(128, 1, 'Watsica-Reichel', 'watsica-reichel@mailinator.com', '9073706121', '1969 Marlene Camp\nPort Mortimer, HI 88309', 1, '2026-08-12 12:00:32', '2026-08-12 12:00:32', NULL),
(129, 1, 'Marks, Rowe and Gerlach', 'marks, rowe and gerlach@mailinator.com', '9433740213', '70302 Gaylord Junction Suite 810\nMaximillianburgh, IL 69009', 1, '2026-08-12 12:00:32', '2026-08-12 12:00:32', NULL),
(130, 1, 'Littel Group', 'littel group@mailinator.com', '9114545683', '790 Beer Village Suite 322\nPaucekfurt, VT 41109-3918', 1, '2026-08-12 12:00:32', '2026-08-12 12:00:32', NULL),
(131, 1, 'Sawayn, Dicki and Trantow', 'sawayn, dicki and trantow@mailinator.com', '9582764129', '1760 Elvie Glen\nBednarfort, AZ 67600', 1, '2026-08-12 12:00:47', '2026-08-12 12:00:47', NULL),
(132, 1, 'Medhurst LLC', 'medhurst llc@mailinator.com', '9596948819', '33132 Kohler Via\nEast Rosetta, NE 95493', 1, '2026-08-12 12:00:47', '2026-08-12 12:00:47', NULL),
(133, 1, 'Hessel, Schroeder and Smitham', 'hessel, schroeder and smitham@mailinator.com', '9045854473', '5894 Mallory Glen Suite 546\nNew Gisselleborough, IL 59969-7123', 1, '2026-08-12 12:00:47', '2026-08-12 12:00:47', NULL),
(134, 1, 'Little-Rowe', 'little-rowe@mailinator.com', '9133513811', '284 Hudson Extension Apt. 859\nWest Kaylinshire, NJ 93291-4516', 1, '2026-08-12 12:00:47', '2026-08-12 12:00:47', NULL),
(135, 1, 'Gottlieb, Pfeffer and Stanton', 'gottlieb, pfeffer and stanton@mailinator.com', '9766968291', '3082 Bailey Trace\nPort Arno, NC 43305', 1, '2026-08-12 12:00:47', '2026-08-12 12:00:47', NULL),
(136, 1, 'Keeling, Langosh and Spinka', 'keeling, langosh and spinka@mailinator.com', '9144587061', '306 Zelma Mountain\nLake Cordia, NY 49950-5501', 1, '2026-08-12 12:01:03', '2026-08-12 12:01:03', NULL),
(137, 1, 'Williamson, Abshire and Maggio', 'williamson, abshire and maggio@mailinator.com', '9964840476', '381 Kaleb Light Apt. 402\nWest Fernehaven, MN 94780', 1, '2026-08-12 12:01:03', '2026-08-12 12:01:03', NULL),
(138, 1, 'Price, Willms and Gottlieb', 'price, willms and gottlieb@mailinator.com', '9397918646', '43754 Tremblay Coves\nLake Jedmouth, PA 79253-1579', 1, '2026-08-12 12:01:03', '2026-08-12 12:01:03', NULL),
(139, 1, 'Tillman LLC', 'tillman llc@mailinator.com', '9391544677', '9882 Ciara Stream\nTimmothyhaven, NE 66512', 1, '2026-08-12 12:01:03', '2026-08-12 12:01:03', NULL),
(140, 1, 'Marks and Sons', 'marks and sons@mailinator.com', '9876086977', '87611 Feil Center\nSouth Tad, AK 57850', 1, '2026-08-12 12:01:03', '2026-08-12 12:01:03', NULL),
(141, 1, 'Rohan, Kunze and Hackett', 'rohan, kunze and hackett@mailinator.com', '9119003669', '22587 Ewell Extensions\nAnnabelltown, CO 43298-0818', 1, '2026-08-12 12:01:18', '2026-08-12 12:01:18', NULL),
(142, 1, 'Torp-Abernathy', 'torp-abernathy@mailinator.com', '9064927304', '79130 Emely Hollow\nSouth Ashly, VT 93729', 1, '2026-08-12 12:01:18', '2026-08-12 12:01:18', NULL),
(143, 1, 'Weissnat, Rogahn and Howe', 'weissnat, rogahn and howe@mailinator.com', '9275104051', '8422 McCullough Knolls Apt. 538\nSchultzfort, TN 08987', 1, '2026-08-12 12:01:18', '2026-08-12 12:01:18', NULL),
(144, 1, 'Ward, Will and Greenfelder', 'ward, will and greenfelder@mailinator.com', '9995298753', '1987 Yost Branch Suite 873\nDonnellymouth, MD 45646-9526', 1, '2026-08-12 12:01:18', '2026-08-12 12:01:18', NULL),
(145, 1, 'Cormier and Sons', 'cormier and sons@mailinator.com', '9234040204', '311 Fred Trace Apt. 446\nLake Aurore, TN 09185', 1, '2026-08-12 12:01:18', '2026-08-12 12:01:18', NULL),
(146, 1, 'Simonis, Donnelly and Howe', 'simonis, donnelly and howe@mailinator.com', '9386001842', '762 Halvorson Flats Suite 982\nNorth Melynaview, ND 03125-5371', 1, '2026-08-12 12:01:33', '2026-08-12 12:01:33', NULL),
(147, 1, 'Glover Ltd', 'glover ltd@mailinator.com', '9527794679', '3633 Berneice Mountains\nLake Hillardton, OK 03314', 1, '2026-08-12 12:01:33', '2026-08-12 12:01:33', NULL),
(148, 1, 'Swaniawski-Davis', 'swaniawski-davis@mailinator.com', '9486026592', '2511 Cheyanne Squares Suite 053\nWest Nelsburgh, PA 08885-0354', 1, '2026-08-12 12:01:33', '2026-08-12 12:01:33', NULL),
(149, 1, 'Raynor-Hauck', 'raynor-hauck@mailinator.com', '9723424297', '73406 Metz Mall Suite 831\nLake Andy, KS 22020', 1, '2026-08-12 12:01:33', '2026-08-12 12:01:33', NULL),
(150, 1, 'Kutch, Reichel and Gottlieb', 'kutch, reichel and gottlieb@mailinator.com', '9908278219', '5611 Grimes Camp\nEast Alvinafurt, NE 52910', 1, '2026-08-12 12:01:33', '2026-08-12 12:01:33', NULL),
(151, 1, 'Romaguera PLC', 'romaguera plc@mailinator.com', '9694987444', '4697 Dach Drive Apt. 686\nViolatown, SC 35072-1184', 1, '2026-08-12 12:01:49', '2026-08-12 12:01:49', NULL),
(152, 1, 'Gutkowski-Lindgren', 'gutkowski-lindgren@mailinator.com', '9172469428', '81801 Kuhic Centers\nLake Gregory, WY 48050-2869', 1, '2026-08-12 12:01:49', '2026-08-12 12:01:49', NULL),
(153, 1, 'Gutmann-Greenfelder', 'gutmann-greenfelder@mailinator.com', '9660848140', '361 Bartoletti Corners\nPfannerstillport, LA 97357', 1, '2026-08-12 12:01:49', '2026-08-12 12:01:49', NULL),
(154, 1, 'Shields, Stanton and Beer', 'shields, stanton and beer@mailinator.com', '9839059909', '75199 Elyse Mountains Apt. 731\nLake Emiliano, ID 00715', 1, '2026-08-12 12:01:49', '2026-08-12 12:01:49', NULL),
(155, 1, 'Douglas, Grant and Blanda', 'douglas, grant and blanda@mailinator.com', '9573504341', '71605 Kertzmann Port Apt. 182\nLebsackburgh, NE 48564', 1, '2026-08-12 12:01:49', '2026-08-12 12:01:49', NULL),
(156, 1, 'Connelly and Sons', 'connelly and sons@mailinator.com', '9207478609', '8425 Rau Manor Apt. 765\nNorth Eudorastad, IA 42450', 1, '2026-08-12 12:02:05', '2026-08-12 12:02:05', NULL),
(157, 1, 'Carroll-Corwin', 'carroll-corwin@mailinator.com', '9303913787', '543 Katherine Cape\nTobyville, SD 48905-5142', 1, '2026-08-12 12:02:05', '2026-08-12 12:02:05', NULL),
(158, 1, 'Schuster Group', 'schuster group@mailinator.com', '9541519097', '2293 Zelda Plaza Suite 889\nLake Janet, HI 74336', 1, '2026-08-12 12:02:05', '2026-08-12 12:02:05', NULL),
(159, 1, 'Bruen Inc', 'bruen inc@mailinator.com', '9907783280', '7996 DuBuque Brooks\nAnnabellton, NV 68087-2742', 1, '2026-08-12 12:02:05', '2026-08-12 12:02:05', NULL),
(160, 1, 'White Group', 'white group@mailinator.com', '9307609822', '611 Nannie Lakes\nJaylanborough, CA 71891', 1, '2026-08-12 12:02:05', '2026-08-12 12:02:05', NULL),
(161, 1, 'Hilpert, Walsh and Stoltenberg', 'hilpert, walsh and stoltenberg@mailinator.com', '9534771688', '6479 Howe Spring\nCotymouth, KY 45464', 1, '2026-08-12 12:02:20', '2026-08-12 12:02:20', NULL),
(162, 1, 'Murazik-Hansen', 'murazik-hansen@mailinator.com', '9342471505', '9185 Wilderman Junction\nSeamusside, SC 12496', 1, '2026-08-12 12:02:20', '2026-08-12 12:02:20', NULL),
(163, 1, 'D\'Amore, Langworth and Bradtke', 'd\'amore, langworth and bradtke@mailinator.com', '9296136815', '8932 Lucious Plaza Suite 872\nErickton, TX 59639-3497', 1, '2026-08-12 12:02:20', '2026-08-12 12:02:20', NULL),
(164, 1, 'Ziemann-Reichert', 'ziemann-reichert@mailinator.com', '9147140382', '8797 Iliana Ford Apt. 281\nPort Remington, NH 40675-0199', 1, '2026-08-12 12:02:20', '2026-08-12 12:02:20', NULL),
(165, 1, 'Paucek, Sauer and Hammes', 'paucek, sauer and hammes@mailinator.com', '9230477339', '5535 Ebert Light Apt. 317\nSouth Princess, NV 75835', 1, '2026-08-12 12:02:20', '2026-08-12 12:02:20', NULL),
(166, 1, 'Hand LLC', 'hand llc@mailinator.com', '9932714876', '77333 Cierra Inlet\nKundeview, TX 44452-5038', 1, '2026-08-12 12:02:35', '2026-08-12 12:02:35', NULL),
(167, 1, 'Predovic and Sons', 'predovic and sons@mailinator.com', '9538355999', '443 Bailey Turnpike Apt. 423\nNew Ashley, NH 51696', 1, '2026-08-12 12:02:36', '2026-08-12 12:02:36', NULL),
(168, 1, 'Bailey-Lemke', 'bailey-lemke@mailinator.com', '9280018959', '7043 Leuschke Hill Apt. 049\nRennerstad, ME 97920-7126', 1, '2026-08-12 12:02:36', '2026-08-12 12:02:36', NULL),
(169, 1, 'Hauck-Miller', 'hauck-miller@mailinator.com', '9587471149', '338 Meagan Burgs Apt. 359\nChristianaport, DE 77198-9105', 1, '2026-08-12 12:02:36', '2026-08-12 12:02:36', NULL),
(170, 1, 'Hoppe, Wiegand and Rolfson', 'hoppe, wiegand and rolfson@mailinator.com', '9887439291', '81776 Cummerata Expressway Suite 867\nSalliefort, DE 67760-4327', 1, '2026-08-12 12:02:36', '2026-08-12 12:02:36', NULL),
(171, 1, 'Murphy-Stark', 'murphy-stark@mailinator.com', '9668370549', '70677 Aida Harbor\nWest Edmundside, NC 27962-6035', 1, '2026-08-12 12:02:51', '2026-08-12 12:02:51', NULL),
(172, 1, 'McDermott-Quitzon', 'mcdermott-quitzon@mailinator.com', '9303410083', '288 Nicolas Landing\nWest Charityburgh, NM 87937-4559', 1, '2026-08-12 12:02:51', '2026-08-12 12:02:51', NULL),
(173, 1, 'Zieme, Hoeger and Barrows', 'zieme, hoeger and barrows@mailinator.com', '9356864017', '16645 Gavin View Apt. 262\nLake Giovanny, VA 11925', 1, '2026-08-12 12:02:51', '2026-08-12 12:02:51', NULL),
(174, 1, 'Bechtelar LLC', 'bechtelar llc@mailinator.com', '9060358869', '1182 Jovan Ranch Apt. 709\nEast Ezequiel, UT 16868-3874', 1, '2026-08-12 12:02:51', '2026-08-12 12:02:51', NULL),
(175, 1, 'Strosin and Sons', 'strosin and sons@mailinator.com', '9967339005', '425 Dayna Estate Suite 258\nZolaside, WI 84758', 1, '2026-08-12 12:02:51', '2026-08-12 12:02:51', NULL),
(176, 1, 'Harvey-Rutherford', 'harvey-rutherford@mailinator.com', '9384383555', '7316 Jacinto Green Suite 200\nHermannborough, PA 55351-6910', 1, '2026-08-12 12:03:07', '2026-08-12 12:03:07', NULL),
(177, 1, 'McKenzie PLC', 'mckenzie plc@mailinator.com', '9658831011', '845 Spencer Road\nSouth Branson, CO 86140', 1, '2026-08-12 12:03:07', '2026-08-12 12:03:07', NULL),
(178, 1, 'Murphy, Halvorson and Kohler', 'murphy, halvorson and kohler@mailinator.com', '9072879681', '60674 Pink Brooks\nNorth Joyce, ID 30665-0445', 1, '2026-08-12 12:03:07', '2026-08-12 12:03:07', NULL),
(179, 1, 'Lemke and Sons', 'lemke and sons@mailinator.com', '9596128331', '310 Gibson Village\nNorth Emily, RI 08291', 1, '2026-08-12 12:03:07', '2026-08-12 12:03:07', NULL),
(180, 1, 'Howell LLC', 'howell llc@mailinator.com', '9584332715', '51005 Altenwerth Green\nMercedesland, IA 01445', 1, '2026-08-12 12:03:07', '2026-08-12 12:03:07', NULL),
(181, 1, 'Denesik, Heathcote and Lubowitz', 'denesik, heathcote and lubowitz@mailinator.com', '9929213765', '9402 Clinton Forest\nIkebury, NE 67520', 1, '2026-08-12 12:03:22', '2026-08-12 12:03:22', NULL),
(182, 1, 'Hirthe Group', 'hirthe group@mailinator.com', '9713593580', '21465 Langosh Island\nNew Pearlmouth, WA 24172-3579', 1, '2026-08-12 12:03:22', '2026-08-12 12:03:22', NULL),
(183, 1, 'Padberg Inc', 'padberg inc@mailinator.com', '9287548050', '1088 Lubowitz Coves Suite 335\nLangside, WA 36444-9622', 1, '2026-08-12 12:03:22', '2026-08-12 12:03:22', NULL),
(184, 1, 'Connelly, Beatty and Kutch', 'connelly, beatty and kutch@mailinator.com', '9386284035', '246 Chance Track Suite 060\nNolantown, PA 82756-7165', 1, '2026-08-12 12:03:22', '2026-08-12 12:03:22', NULL),
(185, 1, 'Gerhold-Hammes', 'gerhold-hammes@mailinator.com', '9308728712', '82736 Herman Valleys\nNorth Alexzander, CO 06243-7376', 1, '2026-08-12 12:03:22', '2026-08-12 12:03:22', NULL),
(186, 1, 'Witting, Schultz and Becker', 'witting, schultz and becker@mailinator.com', '9789769309', '21959 Tommie Tunnel Apt. 177\nNitzscheview, CT 38914', 1, '2026-08-12 12:03:37', '2026-08-12 12:03:37', NULL),
(187, 1, 'Doyle-Predovic', 'doyle-predovic@mailinator.com', '9908125998', '892 Abbey Key\nSouth Salvadorport, IL 53047', 1, '2026-08-12 12:03:37', '2026-08-12 12:03:37', NULL),
(188, 1, 'Lind, Franecki and Beatty', 'lind, franecki and beatty@mailinator.com', '9279968620', '73737 Sofia Underpass Suite 523\nLincolnberg, AZ 83763-3522', 1, '2026-08-12 12:03:37', '2026-08-12 12:03:37', NULL),
(189, 1, 'Conroy-Schimmel', 'conroy-schimmel@mailinator.com', '9875039702', '9688 Daphne Isle Suite 464\nDanykafurt, CO 89855-3738', 1, '2026-08-12 12:03:37', '2026-08-12 12:03:37', NULL),
(190, 1, 'VonRueden Group', 'vonrueden group@mailinator.com', '9685159736', '706 Juvenal Mews\nLake Jaydenbury, WV 95662-9661', 1, '2026-08-12 12:03:37', '2026-08-12 12:03:37', NULL),
(191, 1, 'Herzog, Flatley and Klocko', 'herzog, flatley and klocko@mailinator.com', '9040282133', '227 Barton Extensions Suite 251\nNew Efrainville, WI 00921-0875', 1, '2026-08-12 12:03:53', '2026-08-12 12:03:53', NULL),
(192, 1, 'Kuhn-Sipes', 'kuhn-sipes@mailinator.com', '9128906257', '9962 Stroman Manors\nEast Elishaborough, TN 51857-7027', 1, '2026-08-12 12:03:53', '2026-08-12 12:03:53', NULL),
(193, 1, 'Mertz LLC', 'mertz llc@mailinator.com', '9327767253', '63941 Queen Tunnel Suite 877\nSouth Green, WV 20709', 1, '2026-08-12 12:03:53', '2026-08-12 12:03:53', NULL),
(194, 1, 'Stroman-Schaefer', 'stroman-schaefer@mailinator.com', '9352093054', '431 Leda River\nAufderharberg, NM 57915', 1, '2026-08-12 12:03:53', '2026-08-12 12:03:53', NULL),
(195, 1, 'Aufderhar-Franecki', 'aufderhar-franecki@mailinator.com', '9269241362', '32396 Crystel Gateway Apt. 396\nBerniershire, NE 26780', 1, '2026-08-12 12:03:53', '2026-08-12 12:03:53', NULL),
(196, 1, 'Muller PLC', 'muller plc@mailinator.com', '9260542574', '5019 Metz Shoals\nDachton, AL 61990', 1, '2026-08-12 12:04:08', '2026-08-12 12:04:08', NULL),
(197, 1, 'Boyer, McDermott and Cronin', 'boyer, mcdermott and cronin@mailinator.com', '9424626964', '65447 Dickinson Lock Suite 407\nEugeneview, ME 62058-4070', 1, '2026-08-12 12:04:08', '2026-08-12 12:04:08', NULL),
(198, 1, 'Altenwerth Inc', 'altenwerth inc@mailinator.com', '9905983635', '79192 Dessie Meadow Suite 464\nKochchester, NE 49445', 1, '2026-08-12 12:04:08', '2026-08-12 12:04:08', NULL),
(199, 1, 'Rodriguez-Blick', 'rodriguez-blick@mailinator.com', '9817643128', '70384 Cedrick Fort Apt. 768\nLake Joanaborough, ME 30876', 1, '2026-08-12 12:04:08', '2026-08-12 12:04:08', NULL),
(200, 1, 'Kuphal Inc', 'kuphal inc@mailinator.com', '9746919034', '661 Jast Courts Apt. 301\nPort Lavon, IL 24109-8238', 1, '2026-08-12 12:04:08', '2026-08-12 12:04:08', NULL),
(201, 1, 'Tromp, Hickle and Rippin', 'tromp, hickle and rippin@mailinator.com', '9079036803', '58919 Jamey Canyon\nLake Ebony, MD 60911', 1, '2026-08-12 12:04:23', '2026-08-12 12:04:23', NULL),
(202, 1, 'Mosciski Ltd', 'mosciski ltd@mailinator.com', '9978551135', '239 Federico Fords Suite 932\nKihnport, OK 07185', 1, '2026-08-12 12:04:23', '2026-08-12 12:04:23', NULL),
(203, 1, 'Weber, Reinger and Gutkowski', 'weber, reinger and gutkowski@mailinator.com', '9897161825', '3054 Altenwerth Summit Apt. 257\nNorth Russel, MT 89373', 1, '2026-08-12 12:04:23', '2026-08-12 12:04:23', NULL),
(204, 1, 'Torp-Hansen', 'torp-hansen@mailinator.com', '9316076534', '94440 Presley Springs Suite 138\nKington, PA 69945', 1, '2026-08-12 12:04:23', '2026-08-12 12:04:23', NULL),
(205, 1, 'Jenkins LLC', 'jenkins llc@mailinator.com', '9857003229', '2445 Travon Avenue\nNew Jaceberg, TX 85766', 1, '2026-08-12 12:04:23', '2026-08-12 12:04:23', NULL),
(206, 1, 'Conroy and Sons', 'conroy and sons@mailinator.com', '9379448014', '835 Boyer Track Suite 465\nWest Jaren, IA 04629-8116', 1, '2026-08-12 12:04:40', '2026-08-12 12:04:40', NULL),
(207, 1, 'Bogisich-Rosenbaum', 'bogisich-rosenbaum@mailinator.com', '9080013281', '2111 Quitzon Points Suite 294\nLake Frankiefort, CA 64320-3867', 1, '2026-08-12 12:04:40', '2026-08-12 12:04:40', NULL),
(208, 1, 'King LLC', 'king llc@mailinator.com', '9573017061', '6870 Oceane Cape\nSethview, TX 01874-3871', 1, '2026-08-12 12:04:40', '2026-08-12 12:04:40', NULL),
(209, 1, 'Ernser-Cassin', 'ernser-cassin@mailinator.com', '9959238615', '3663 Earnestine Dale\nNew Lemuel, CT 51471-7121', 1, '2026-08-12 12:04:40', '2026-08-12 12:04:40', NULL),
(210, 1, 'Stamm and Sons', 'stamm and sons@mailinator.com', '9603857567', '630 Cristopher Valley\nWest Ronaldohaven, IL 61796-2864', 1, '2026-08-12 12:04:40', '2026-08-12 12:04:40', NULL),
(211, 1, 'Bahringer-Osinski', 'bahringer-osinski@mailinator.com', '9163243572', '95225 Kariane Meadow\nEast Alishabury, KS 60270', 1, '2026-08-12 12:04:55', '2026-08-12 12:04:55', NULL),
(212, 1, 'Paucek Group', 'paucek group@mailinator.com', '9993729028', '2614 Braden Islands Apt. 261\nFelixview, AL 52786-5356', 1, '2026-08-12 12:04:55', '2026-08-12 12:04:55', NULL),
(213, 1, 'Mills Inc', 'mills inc@mailinator.com', '9459694850', '4415 Fadel Squares\nEast Sonya, TX 23617', 1, '2026-08-12 12:04:55', '2026-08-12 12:04:55', NULL),
(214, 1, 'Franecki PLC', 'franecki plc@mailinator.com', '9221256101', '57127 Gardner Rapids Suite 513\nFaytown, IA 62603-3031', 1, '2026-08-12 12:04:55', '2026-08-12 12:04:55', NULL),
(215, 1, 'Herman, Hirthe and Paucek', 'herman, hirthe and paucek@mailinator.com', '9572569510', '329 Wiley Neck Apt. 445\nNew Anitafort, KY 45609', 1, '2026-08-12 12:04:55', '2026-08-12 12:04:55', NULL),
(216, 1, 'Murazik-Harvey', 'murazik-harvey@mailinator.com', '9700767651', '883 Ozella Drive Suite 141\nDawnshire, CO 07405', 1, '2026-08-12 12:05:10', '2026-08-12 12:05:10', NULL),
(217, 1, 'Rogahn Group', 'rogahn group@mailinator.com', '9423109477', '8339 Kiehn Springs\nSouth Linnie, VT 93488', 1, '2026-08-12 12:05:10', '2026-08-12 12:05:10', NULL),
(218, 1, 'Schuppe, Carter and Stark', 'schuppe, carter and stark@mailinator.com', '9544060638', '65905 Werner Plain\nPort Gretchen, PA 46484', 1, '2026-08-12 12:05:10', '2026-08-12 12:05:10', NULL),
(219, 1, 'Kirlin Ltd', 'kirlin ltd@mailinator.com', '9416974676', '6243 Constantin Course\nSouth Leta, NJ 02906-6548', 1, '2026-08-12 12:05:10', '2026-08-12 12:05:10', NULL),
(220, 1, 'Barton Ltd', 'barton ltd@mailinator.com', '9372729667', '56734 Johnston Skyway Apt. 489\nWest Brandi, NY 99331', 1, '2026-08-12 12:05:10', '2026-08-12 12:05:10', NULL),
(221, 1, 'Becker Group', 'becker group@mailinator.com', '9248180596', '49358 Walter Lake Apt. 402\nNorth Michelle, FL 17146', 1, '2026-08-12 12:05:25', '2026-08-12 12:05:25', NULL),
(222, 1, 'Mayert-Kohler', 'mayert-kohler@mailinator.com', '9376150876', '1335 Gulgowski Ville Apt. 285\nMarksshire, VA 53635', 1, '2026-08-12 12:05:25', '2026-08-12 12:05:25', NULL),
(223, 1, 'Feil and Sons', 'feil and sons@mailinator.com', '9168724153', '507 Ernser Fort Apt. 734\nNew Keeley, IN 18379', 1, '2026-08-12 12:05:25', '2026-08-12 12:05:25', NULL),
(224, 1, 'Rempel, Reilly and Predovic', 'rempel, reilly and predovic@mailinator.com', '9415163811', '3856 Roel Roads\nWardmouth, KS 17989-7746', 1, '2026-08-12 12:05:25', '2026-08-12 12:05:25', NULL),
(225, 1, 'Pollich, Glover and Anderson', 'pollich, glover and anderson@mailinator.com', '9626791424', '564 Jast Locks\nNew Cristopher, ID 66182', 1, '2026-08-12 12:05:25', '2026-08-12 12:05:25', NULL),
(226, 1, 'Stanton Inc', 'stanton inc@mailinator.com', '9463871913', '279 Kovacek Way\nHyattbury, NJ 58271', 1, '2026-08-12 12:05:41', '2026-08-12 12:05:41', NULL),
(227, 1, 'Kris-Runolfsson', 'kris-runolfsson@mailinator.com', '9032159686', '315 Kuhic Trace Suite 961\nPredovichaven, PA 10066', 1, '2026-08-12 12:05:41', '2026-08-12 12:05:41', NULL),
(228, 1, 'Nikolaus and Sons', 'nikolaus and sons@mailinator.com', '9006250127', '77273 Hyatt Neck Apt. 894\nNew Elvafurt, OH 34928-4751', 1, '2026-08-12 12:05:41', '2026-08-12 12:05:41', NULL),
(229, 1, 'Lakin-Gusikowski', 'lakin-gusikowski@mailinator.com', '9430425792', '180 Koelpin Extensions Suite 730\nSouth Joaquin, TX 49950', 1, '2026-08-12 12:05:41', '2026-08-12 12:05:41', NULL),
(230, 1, 'Mohr-Feest', 'mohr-feest@mailinator.com', '9291755672', '260 Hyatt Ports\nScotview, AL 61598', 1, '2026-08-12 12:05:41', '2026-08-12 12:05:41', NULL),
(231, 1, 'Schuster PLC', 'schuster plc@mailinator.com', '9462726044', '251 Howe Hollow\nFaytown, NC 41695', 1, '2026-08-12 12:05:58', '2026-08-12 12:05:58', NULL),
(232, 1, 'Daugherty, Welch and Schimmel', 'daugherty, welch and schimmel@mailinator.com', '9985068412', '1723 Raymond Springs Apt. 738\nEast Terrillberg, WA 74158', 1, '2026-08-12 12:05:58', '2026-08-12 12:05:58', NULL),
(233, 1, 'Johns, O\'Connell and Legros', 'johns, o\'connell and legros@mailinator.com', '9981393567', '150 Cleveland Parks\nBlickhaven, ID 93445', 1, '2026-08-12 12:05:58', '2026-08-12 12:05:58', NULL),
(234, 1, 'Weber LLC', 'weber llc@mailinator.com', '9160856783', '6935 Anderson Road\nLake Lornafurt, NV 65480-5218', 1, '2026-08-12 12:05:58', '2026-08-12 12:05:58', NULL),
(235, 1, 'Brown LLC', 'brown llc@mailinator.com', '9266356934', '85827 Tressie Meadows\nPierceshire, NH 66565', 1, '2026-08-12 12:05:58', '2026-08-12 12:05:58', NULL),
(236, 1, 'Kuhn-Schoen', 'kuhn-schoen@mailinator.com', '9417661793', '3852 Evelyn Brooks Suite 587\nRohanborough, KY 11897-5051', 1, '2026-08-12 12:06:12', '2026-08-12 12:06:12', NULL),
(237, 1, 'Yost, Rowe and Wunsch', 'yost, rowe and wunsch@mailinator.com', '9169302754', '7139 Easter Springs\nSouth Ambrose, ID 91103-6676', 1, '2026-08-12 12:06:12', '2026-08-12 12:06:12', NULL),
(238, 1, 'Kessler-Rice', 'kessler-rice@mailinator.com', '9025481760', '68662 Moen Station\nPort Samara, WI 09743', 1, '2026-08-12 12:06:12', '2026-08-12 12:06:12', NULL),
(239, 1, 'Romaguera LLC', 'romaguera llc@mailinator.com', '9606293696', '8594 Baby Flat\nNorth Rubyfurt, IN 73311', 1, '2026-08-12 12:06:12', '2026-08-12 12:06:12', NULL),
(240, 1, 'Labadie, Schaefer and Koelpin', 'labadie, schaefer and koelpin@mailinator.com', '9068695426', '62953 Monahan Tunnel Suite 709\nRitchieburgh, NY 18352', 1, '2026-08-12 12:06:12', '2026-08-12 12:06:12', NULL),
(241, 1, 'Boehm, Kuhic and Wiegand', 'boehm, kuhic and wiegand@mailinator.com', '9101313343', '7415 Beer Court Suite 585\nNorth River, ND 78149', 1, '2026-08-12 12:06:27', '2026-08-12 12:06:27', NULL),
(242, 1, 'Kreiger-Johns', 'kreiger-johns@mailinator.com', '9231200028', '871 Mossie Springs\nHenriettetown, HI 20404', 1, '2026-08-12 12:06:27', '2026-08-12 12:06:27', NULL),
(243, 1, 'Schroeder PLC', 'schroeder plc@mailinator.com', '9770997188', '711 Cristal Islands Apt. 205\nKeelington, WI 90667-8457', 1, '2026-08-12 12:06:27', '2026-08-12 12:06:27', NULL),
(244, 1, 'Walker-Walsh', 'walker-walsh@mailinator.com', '9367565712', '3715 Block Lane\nDarrickfort, OK 29335', 1, '2026-08-12 12:06:27', '2026-08-12 12:06:27', NULL),
(245, 1, 'Stark LLC', 'stark llc@mailinator.com', '9288438948', '563 Cleo Plaza\nSamirmouth, MO 33375-3566', 1, '2026-08-12 12:06:27', '2026-08-12 12:06:27', NULL),
(246, 1, 'Kovacek and Sons', 'kovacek and sons@mailinator.com', '9529618797', '87961 Macie Viaduct Suite 068\nSouth Carolyn, UT 92332-0673', 1, '2026-08-12 12:06:43', '2026-08-12 12:06:43', NULL),
(247, 1, 'Turner, Brekke and Yost', 'turner, brekke and yost@mailinator.com', '9439376901', '76143 Koepp Summit Apt. 389\nSchowalterchester, VA 24866-7867', 1, '2026-08-12 12:06:43', '2026-08-12 12:06:43', NULL),
(248, 1, 'Hettinger, Padberg and Prosacco', 'hettinger, padberg and prosacco@mailinator.com', '9884412187', '9646 Stark Village Apt. 549\nLake Braulio, AL 74849', 1, '2026-08-12 12:06:43', '2026-08-12 12:06:43', NULL),
(249, 1, 'Effertz PLC', 'effertz plc@mailinator.com', '9855989495', '34340 Shawn Mission\nEast Alessandrofort, ND 09202', 1, '2026-08-12 12:06:43', '2026-08-12 12:06:43', NULL),
(250, 1, 'Littel-Olson', 'littel-olson@mailinator.com', '9534025935', '753 Harrison Center\nPort Chaunceyfurt, LA 01344-2902', 1, '2026-08-12 12:06:43', '2026-08-12 12:06:43', NULL),
(251, 1, 'Blick, Gaylord and Beahan', 'blick, gaylord and beahan@mailinator.com', '9359906393', '3783 Levi Course Suite 229\nCeasarton, TN 02627', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(252, 1, 'Rippin LLC', 'rippin llc@mailinator.com', '9146199421', '27174 Kian Stravenue\nNew Glenna, SD 29030-5586', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(253, 1, 'Wiza-Jones', 'wiza-jones@mailinator.com', '9651542814', '554 Bergnaum Station Apt. 619\nLake Gissellefort, CT 14753-2205', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(254, 1, 'Shanahan-McDermott', 'shanahan-mcdermott@mailinator.com', '9455170883', '91203 Ortiz Camp Apt. 075\nRossieview, MI 05810-2315', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(255, 1, 'Murray-Dicki', 'murray-dicki@mailinator.com', '9917017910', '92460 Derrick Summit\nSouth Adelineside, CO 67167', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(256, 1, 'Feest Inc', 'feest inc@mailinator.com', '9711072329', '7408 Leann Mill\nAnselview, CT 52824', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(257, 1, 'Schuppe LLC', 'schuppe llc@mailinator.com', '9919339566', '1377 Murray Estates\nNorth Deshaunhaven, HI 71342-4389', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(258, 1, 'Botsford LLC', 'botsford llc@mailinator.com', '9345461676', '6576 Paucek Place Suite 957\nDietrichhaven, ND 47411-5647', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(259, 1, 'Lebsack PLC', 'lebsack plc@mailinator.com', '9106987457', '9743 Kailyn Haven Suite 332\nReillymouth, CA 61013', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(260, 1, 'Kunze Ltd', 'kunze ltd@mailinator.com', '9952415410', '4237 Aracely Key Suite 327\nPort Angeline, DE 99165', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(261, 1, 'Treutel-Sawayn', 'treutel-sawayn@mailinator.com', '9748433274', '7818 Emmy Summit\nO\'Keefeville, KS 53015-2951', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(262, 1, 'Borer, Rohan and Schowalter', 'borer, rohan and schowalter@mailinator.com', '9783095109', '8525 Geovanny Plains\nHowechester, OR 24076', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(263, 1, 'Stracke, O\'Connell and Hermiston', 'stracke, o\'connell and hermiston@mailinator.com', '9589689286', '3881 Cartwright Manor\nSouth Bianka, ND 27470-5401', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(264, 1, 'Jerde-Graham', 'jerde-graham@mailinator.com', '9415051990', '9424 Hudson Springs Apt. 929\nNew Destiny, RI 89587', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(265, 1, 'Lang, Herman and Bernier', 'lang, herman and bernier@mailinator.com', '9735017804', '29727 Guiseppe Flats\nNorth Paulaburgh, DC 39583-1873', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL);
INSERT INTO `vendors` (`id`, `school_id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(266, 1, 'Kerluke, Konopelski and Herzog', 'kerluke, konopelski and herzog@mailinator.com', '9637393048', '80324 Payton Street\nLake Johannastad, SC 93382', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(267, 1, 'McLaughlin Ltd', 'mclaughlin ltd@mailinator.com', '9530709090', '464 Elvis Knolls\nNorth Kacitown, FL 95975-4167', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(268, 1, 'Bradtke-DuBuque', 'bradtke-dubuque@mailinator.com', '9649027485', '2466 Angela Parkway\nPort Adellaton, NY 40577-2172', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(269, 1, 'Mayer, Block and Hagenes', 'mayer, block and hagenes@mailinator.com', '9207427559', '3806 Christopher Course Suite 489\nJenkinsfurt, HI 03102', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(270, 1, 'Hansen-Bailey', 'hansen-bailey@mailinator.com', '9494396846', '4673 Cletus Brooks Suite 278\nLake Jarvisfurt, HI 44342', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(271, 1, 'Kris, Stoltenberg and Gottlieb', 'kris, stoltenberg and gottlieb@mailinator.com', '9825643949', '171 O\'Hara Drive Apt. 209\nDallaston, DC 13701', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(272, 1, 'Gusikowski-Huels', 'gusikowski-huels@mailinator.com', '9954413878', '7956 Halle Ranch\nSchambergerfurt, NJ 05307', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(273, 1, 'Altenwerth-Parisian', 'altenwerth-parisian@mailinator.com', '9310245430', '382 Lacey Plains Apt. 181\nRatkechester, WY 29671', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(274, 1, 'Will-Larkin', 'will-larkin@mailinator.com', '9649539040', '698 Jeffry Crest Apt. 977\nSouth Tyriqueland, OH 43069', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(275, 1, 'Waters-Robel', 'waters-robel@mailinator.com', '9476735567', '58630 Boyer Course Suite 361\nRuntetown, VA 34479', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(276, 1, 'Bosco Ltd', 'bosco ltd@mailinator.com', '9820648400', '823 Eldred Orchard Apt. 294\nPort Zander, MT 06762-4646', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(277, 1, 'Pollich LLC', 'pollich llc@mailinator.com', '9317101015', '485 Leuschke Wells Apt. 821\nLake Elias, ND 28479-6434', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(278, 1, 'Beier-Carroll', 'beier-carroll@mailinator.com', '9449592539', '60001 Haley Parkway\nJerrodstad, WY 19468-7475', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(279, 1, 'Lemke PLC', 'lemke plc@mailinator.com', '9978404696', '86084 Gaylord Center Suite 384\nBergeshire, CO 43280', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(280, 1, 'Konopelski, Auer and Shields', 'konopelski, auer and shields@mailinator.com', '9159458032', '50489 Bahringer Key Apt. 693\nBrekkehaven, DE 53203-4336', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(281, 1, 'Hessel, Collier and Walsh', 'hessel, collier and walsh@mailinator.com', '9361757602', '7623 Gleichner Extensions\nSammymouth, ID 34816-8788', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(282, 1, 'Heathcote, Jacobs and Wolff', 'heathcote, jacobs and wolff@mailinator.com', '9302645659', '8779 Reichert Views\nPort Araceli, AK 98094', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(283, 1, 'Gerlach and Sons', 'gerlach and sons@mailinator.com', '9440934138', '645 Ziemann Ridges\nWardstad, IL 33623', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(284, 1, 'Rodriguez, Nader and Jerde', 'rodriguez, nader and jerde@mailinator.com', '9014900320', '224 Lockman Port\nMcDermottborough, NC 14479', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(285, 1, 'Hintz-Leannon', 'hintz-leannon@mailinator.com', '9865618606', '90957 Rowe Villages\nPort Jessyca, PA 53203', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(286, 1, 'Nienow, Ondricka and Wolff', 'nienow, ondricka and wolff@mailinator.com', '9430844016', '400 Daugherty Heights\nPort Cullenchester, SC 77109-5870', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(287, 1, 'Lubowitz-O\'Hara', 'lubowitz-o\'hara@mailinator.com', '9829611045', '66795 Cruickshank Crescent\nBradtkeport, IA 63874', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(288, 1, 'Reilly, Bahringer and Nikolaus', 'reilly, bahringer and nikolaus@mailinator.com', '9848386068', '14511 Metz Crescent Apt. 710\nSchuppeborough, NY 36510-3676', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(289, 1, 'Bruen-Kertzmann', 'bruen-kertzmann@mailinator.com', '9510800398', '36285 Larry Fork Apt. 750\nLowellshire, WY 62353-0830', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(290, 1, 'Douglas-Metz', 'douglas-metz@mailinator.com', '9886600385', '6477 Murray Skyway Suite 899\nSouth Brett, DE 55720', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(291, 1, 'Schmeler-Schiller', 'schmeler-schiller@mailinator.com', '9469747177', '135 Beryl Circle\nWest Stewart, NH 84890', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(292, 1, 'McGlynn Group', 'mcglynn group@mailinator.com', '9302536293', '9569 Corkery Camp\nFisherton, AZ 70035-5100', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(293, 1, 'Schinner, Sawayn and Champlin', 'schinner, sawayn and champlin@mailinator.com', '9428094953', '59377 Jones Glen Apt. 907\nNew Mandy, NV 34242', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(294, 1, 'Aufderhar Ltd', 'aufderhar ltd@mailinator.com', '9536469283', '5512 Carole Isle Suite 205\nJoshuahborough, MA 95675-4623', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(295, 1, 'Rolfson and Sons', 'rolfson and sons@mailinator.com', '9378339967', '5484 Heidenreich Row Suite 084\nRollinside, IA 20085', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(296, 1, 'Gerlach, Mayert and Davis', 'gerlach, mayert and davis@mailinator.com', '9935952563', '551 Omari Center\nSierraberg, NJ 29480-1438', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(297, 1, 'Armstrong and Sons', 'armstrong and sons@mailinator.com', '9767550464', '9652 Kariane Fords\nPort Harmonyton, PA 96293-8295', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(298, 1, 'Ortiz-Quigley', 'ortiz-quigley@mailinator.com', '9166746991', '64327 Considine Parkway Suite 010\nNovellabury, NV 66624-8393', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(299, 1, 'Goldner-Champlin', 'goldner-champlin@mailinator.com', '9939941325', '9252 Crona Fork\nConsuelofort, MO 63575-3635', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(300, 1, 'Mayert, Jakubowski and Bailey', 'mayert, jakubowski and bailey@mailinator.com', '9608730305', '37969 Kutch Drives\nEast Edwinburgh, MO 78608', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(301, 1, 'Streich, Kreiger and Wisozk', 'streich, kreiger and wisozk@mailinator.com', '9903826828', '2087 Fadel Shore\nEast Marilou, DE 95215', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(302, 1, 'Welch-Gutmann', 'welch-gutmann@mailinator.com', '9221621481', '650 Kelley Garden Suite 467\nParkerton, KY 03619-8039', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(303, 1, 'Dicki, Gerlach and Parker', 'dicki, gerlach and parker@mailinator.com', '9789205120', '678 Kihn Lakes Apt. 367\nLake Arthur, OH 70761', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(304, 1, 'O\'Conner, Blick and Emard', 'o\'conner, blick and emard@mailinator.com', '9335136131', '43877 Madalyn Trail\nMedhurstberg, TX 20150', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(305, 1, 'Jacobson-Schoen', 'jacobson-schoen@mailinator.com', '9636883024', '28125 Jacobi Mountain Apt. 337\nDestinyville, DE 30850', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(306, 1, 'Barrows-Towne', 'barrows-towne@mailinator.com', '9106586015', '9490 Dickens Estates\nPort Tamara, WY 00238', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(307, 1, 'Blick PLC', 'blick plc@mailinator.com', '9066268700', '6292 Adams Mountain Apt. 510\nNew Jettiehaven, KY 03980-9596', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(308, 1, 'Rau-Veum', 'rau-veum@mailinator.com', '9346226908', '862 Romaine Turnpike Apt. 292\nSouth Florence, MT 15507-3813', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(309, 1, 'Hackett, Pollich and Yundt', 'hackett, pollich and yundt@mailinator.com', '9812553544', '22939 Elaina Terrace\nSouth Kailynville, AZ 42558', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(310, 1, 'Adams Inc', 'adams inc@mailinator.com', '9320132685', '8412 Jacobson Union\nMoniquemouth, CT 47598', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(311, 1, 'Lubowitz-Braun', 'lubowitz-braun@mailinator.com', '9963032587', '207 Carter Roads\nNorth Angelotown, DE 83402-3136', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(312, 1, 'Bahringer-Langosh', 'bahringer-langosh@mailinator.com', '9298195103', '87029 Alexander Circle Suite 585\nLeonetown, IL 45546', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(313, 1, 'Boehm LLC', 'boehm llc@mailinator.com', '9685659021', '238 Garrick Spurs\nPort Joan, NH 87720', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(314, 1, 'DuBuque-Kirlin', 'dubuque-kirlin@mailinator.com', '9991535205', '4309 Mohr Motorway Apt. 820\nKatelynnborough, PA 89927-7518', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(315, 1, 'Hudson-Ebert', 'hudson-ebert@mailinator.com', '9408948888', '406 Shaniya Ports\nNew Jamaalberg, SD 96658-0851', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(316, 1, 'Kuphal-Johnston', 'kuphal-johnston@mailinator.com', '9519668514', '2597 Klocko Divide\nLangoshborough, UT 83649-8159', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(317, 1, 'Crist Group', 'crist group@mailinator.com', '9322942005', '765 Candida Court\nEribertomouth, WI 81038', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(318, 1, 'Swaniawski, Medhurst and Ratke', 'swaniawski, medhurst and ratke@mailinator.com', '9324308920', '5136 Osinski Trafficway\nKochmouth, MA 26720-3502', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(319, 1, 'Maggio, Heathcote and Torp', 'maggio, heathcote and torp@mailinator.com', '9534309133', '566 Conor River Suite 068\nLake Elena, VA 50378', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(320, 1, 'Littel PLC', 'littel plc@mailinator.com', '9369406143', '7942 Hosea Spring Suite 924\nWest Gladysstad, WI 03726-8750', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(321, 1, 'Hayes, Bechtelar and Kuhlman', 'hayes, bechtelar and kuhlman@mailinator.com', '9059884942', '286 Antwon Row Apt. 574\nWest Jefferybury, NE 86380-5731', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(322, 1, 'Murazik Group', 'murazik group@mailinator.com', '9763592591', '190 Schaefer Orchard Suite 066\nPort Ottilie, ND 52677-4590', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(323, 1, 'Marks, Spencer and Conn', 'marks, spencer and conn@mailinator.com', '9926838353', '95072 Gail Ports\nLucianoshire, NV 69746-3949', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(324, 1, 'Schmidt, Hayes and Sporer', 'schmidt, hayes and sporer@mailinator.com', '9354982260', '5974 Camylle Grove\nEast Jaynemouth, FL 73854-7179', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(325, 1, 'Turner Inc', 'turner inc@mailinator.com', '9155734418', '8397 Kulas Stravenue\nBaumbachland, DC 07475-7881', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(326, 1, 'Lemke, Boyer and Gulgowski', 'lemke, boyer and gulgowski@mailinator.com', '9082833494', '5926 Audrey Avenue\nLake Salvatorefurt, NM 47784-0843', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(327, 1, 'Vandervort, Shanahan and Jacobi', 'vandervort, shanahan and jacobi@mailinator.com', '9286796504', '760 Sheridan Valleys\nEast Enahaven, OK 79535-6705', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(328, 1, 'Hermiston-Raynor', 'hermiston-raynor@mailinator.com', '9629994671', '32387 Kenton Mountain Suite 602\nPurdyton, NY 95298', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(329, 1, 'Langosh Ltd', 'langosh ltd@mailinator.com', '9303652795', '234 Ledner Village Apt. 605\nAubreyborough, MD 74407', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(330, 1, 'Glover-Kemmer', 'glover-kemmer@mailinator.com', '9197974688', '20230 Olson Spring Apt. 248\nRosarioborough, NE 16674', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(331, 1, 'Herzog, Ledner and Rohan', 'herzog, ledner and rohan@mailinator.com', '9254069768', '727 Aurore Turnpike Apt. 773\nMariehaven, MI 85301', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(332, 1, 'Kub Ltd', 'kub ltd@mailinator.com', '9013919816', '35654 Nettie Squares\nEast Dewaynefort, NC 18937', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(333, 1, 'Shields-Bernier', 'shields-bernier@mailinator.com', '9533988671', '30238 Jayce Brooks\nGrantfurt, IN 55288-8135', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(334, 1, 'Kautzer-Hahn', 'kautzer-hahn@mailinator.com', '9836224214', '248 Cecile Garden\nLake Nikolas, SC 08973-6930', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(335, 1, 'Ferry Inc', 'ferry inc@mailinator.com', '9820079857', '583 Homenick Island\nAlycestad, TN 98657', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(336, 1, 'Windler PLC', 'windler plc@mailinator.com', '9277446935', '8248 Eusebio Rapids\nNew Ezequielland, NV 98669-4485', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(337, 1, 'Koelpin-Lehner', 'koelpin-lehner@mailinator.com', '9347702942', '448 Brekke Crescent\nKochchester, RI 18290-7721', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(338, 1, 'Olson, Corkery and Glover', 'olson, corkery and glover@mailinator.com', '9503444389', '82893 Catherine Unions\nKilbackmouth, CT 57306-4606', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(339, 1, 'McLaughlin and Sons', 'mclaughlin and sons@mailinator.com', '9826745593', '148 Bins Gardens\nWest Bricefort, RI 68441', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(340, 1, 'Keeling, Koepp and Cassin', 'keeling, koepp and cassin@mailinator.com', '9307711969', '458 Gunnar View Suite 012\nSouth Manley, CT 77576', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(341, 1, 'McClure, Streich and O\'Hara', 'mcclure, streich and o\'hara@mailinator.com', '9292058029', '77968 Zackery Key\nWest Michaelview, IL 26665', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(342, 1, 'Nikolaus Group', 'nikolaus group@mailinator.com', '9416670536', '18407 Hintz Drive\nPort Luciano, UT 74308', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(343, 1, 'Hill-Cole', 'hill-cole@mailinator.com', '9088326000', '390 Gertrude Fords Apt. 964\nNew Donald, KS 19587', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(344, 1, 'Leffler, Hill and Heidenreich', 'leffler, hill and heidenreich@mailinator.com', '9453070457', '347 Howell Flat Apt. 733\nPowlowskiport, WI 00309-2200', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(345, 1, 'Marvin, Yundt and Hessel', 'marvin, yundt and hessel@mailinator.com', '9702482880', '6310 Samanta Lodge Suite 186\nBeahanport, OR 45830', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(346, 1, 'McCullough, Jenkins and Conn', 'mccullough, jenkins and conn@mailinator.com', '9328964653', '3716 Weissnat Groves Suite 243\nTamiashire, MS 36092-1534', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(347, 1, 'Wolf-Murphy', 'wolf-murphy@mailinator.com', '9065594870', '1844 Botsford Wells\nDietrichtown, MN 21768-2923', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(348, 1, 'Schowalter-Becker', 'schowalter-becker@mailinator.com', '9757151993', '4925 Blanda Pass\nNorth Clementina, LA 20443', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(349, 1, 'Jones-Lehner', 'jones-lehner@mailinator.com', '9945434416', '79183 Bernhard Drive Apt. 257\nJohnstonmouth, MD 72034-5673', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(350, 1, 'Walker, Koelpin and Yost', 'walker, koelpin and yost@mailinator.com', '9766365804', '798 Rolfson Stravenue\nEast Bethel, WV 12512-9277', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(351, 1, 'Schneider, Graham and Terry', 'schneider, graham and terry@mailinator.com', '9886353336', '180 Goyette Pass\nGoldnerburgh, IL 23795-4182', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(352, 1, 'Kozey, Keebler and Quigley', 'kozey, keebler and quigley@mailinator.com', '9834576184', '78935 Greenfelder Knolls\nNew Daynaborough, MT 79569-9633', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(353, 1, 'Lubowitz, Cremin and Waters', 'lubowitz, cremin and waters@mailinator.com', '9805711440', '546 Gorczany Isle Apt. 056\nOrtizhaven, OR 20228', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(354, 1, 'Wyman-Rosenbaum', 'wyman-rosenbaum@mailinator.com', '9945413803', '71459 Bosco Knolls\nSouth Camrenborough, MT 59689', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(355, 1, 'Beier-Gibson', 'beier-gibson@mailinator.com', '9384030808', '35616 Berenice Crossroad\nGarryborough, NC 42481-5155', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(356, 1, 'Lang-Kautzer', 'lang-kautzer@mailinator.com', '9932233415', '815 Tillman Harbor\nJarodton, UT 45575-9346', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(357, 1, 'Little PLC', 'little plc@mailinator.com', '9094509549', '68311 Emmitt Track\nRippinview, NC 18605', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(358, 1, 'Schmitt, Dare and Ullrich', 'schmitt, dare and ullrich@mailinator.com', '9829810246', '77828 Wilderman Vista Apt. 967\nGaetanoland, CA 27408-2225', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(359, 1, 'Legros-Volkman', 'legros-volkman@mailinator.com', '9444934363', '9612 Mason Spring Suite 476\nHeathcoteton, HI 85246-7685', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(360, 1, 'Marquardt-Kub', 'marquardt-kub@mailinator.com', '9711082313', '5207 Reynolds Rapids\nCorkeryview, TN 48252', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(361, 1, 'Oberbrunner-Quitzon', 'oberbrunner-quitzon@mailinator.com', '9370619816', '6288 Kohler Mountains Apt. 440\nPort Keaganfort, SD 46397', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(362, 1, 'Quitzon, Wehner and Weissnat', 'quitzon, wehner and weissnat@mailinator.com', '9591017921', '589 Hansen Glen\nQuitzonmouth, MT 08495-1754', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(363, 1, 'Aufderhar, Goodwin and Bruen', 'aufderhar, goodwin and bruen@mailinator.com', '9758349345', '34341 Nelda Plaza Suite 412\nDaytonstad, NH 25218-9967', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(364, 1, 'Jaskolski-Kuphal', 'jaskolski-kuphal@mailinator.com', '9208564613', '1986 Waters Island Suite 135\nNorth Ephraim, HI 72960', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(365, 1, 'O\'Reilly-Kunde', 'o\'reilly-kunde@mailinator.com', '9944198298', '2329 Bailey Hill\nWest Kodyland, UT 85793', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(366, 1, 'Conn Inc', 'conn inc@mailinator.com', '9358147331', '195 Ward Glens Apt. 933\nRaymundoborough, ND 55995-7575', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(367, 1, 'Larkin, Vandervort and Grant', 'larkin, vandervort and grant@mailinator.com', '9841352158', '73887 Vincenza Expressway\nLake Marcelina, VA 37580', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(368, 1, 'Dickinson, Schoen and Breitenberg', 'dickinson, schoen and breitenberg@mailinator.com', '9806263038', '17963 Trever Vista Apt. 523\nSchummstad, MS 41422-1130', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(369, 1, 'Blick, Jast and Quitzon', 'blick, jast and quitzon@mailinator.com', '9527359200', '70034 Paxton Divide Suite 184\nRatkeport, ME 18921', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(370, 1, 'Tremblay Inc', 'tremblay inc@mailinator.com', '9297397186', '881 Santa Station\nGarlandborough, IN 88447-3757', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(371, 1, 'Dare Group', 'dare group@mailinator.com', '9486182504', '8239 Edyth Glen\nLarsonview, NV 82129', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(372, 1, 'Sawayn, Doyle and Bashirian', 'sawayn, doyle and bashirian@mailinator.com', '9183578131', '536 Satterfield Summit\nThielberg, NY 16980', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(373, 1, 'Bergstrom and Sons', 'bergstrom and sons@mailinator.com', '9744615720', '57683 Goyette Via Suite 396\nAlessandrafurt, WV 45693', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(374, 1, 'Jast LLC', 'jast llc@mailinator.com', '9918201913', '4570 Conor Ramp Suite 105\nLake Eloise, WA 61829-7182', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(375, 1, 'Kozey, Schaden and Mraz', 'kozey, schaden and mraz@mailinator.com', '9510761768', '96765 Brennan Loaf\nMarshallfort, IL 64236-4848', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(376, 1, 'Prosacco Group', 'prosacco group@mailinator.com', '9187147254', '8701 Zachery Hill Apt. 713\nLake Lanebury, WY 99549-3818', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(377, 1, 'D\'Amore, Kunze and Donnelly', 'd\'amore, kunze and donnelly@mailinator.com', '9303320657', '9159 Howell Mountain\nWest Brendon, RI 42019-5347', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(378, 1, 'Huel, Purdy and Hayes', 'huel, purdy and hayes@mailinator.com', '9381457931', '790 Keanu Grove Apt. 097\nSouth Pasqualeview, LA 32187-9012', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(379, 1, 'Turner-Konopelski', 'turner-konopelski@mailinator.com', '9993106146', '482 Nathaniel Grove Apt. 809\nWest Cheyanne, IN 61981-0771', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(380, 1, 'Bode Group', 'bode group@mailinator.com', '9804338168', '66769 Norbert Station Suite 046\nRomaineton, ND 27269', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(381, 1, 'Schumm, Mayer and O\'Connell', 'schumm, mayer and o\'connell@mailinator.com', '9735288833', '1739 Belle Unions\nNew Ricardo, LA 24443-3694', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(382, 1, 'Goodwin-Sipes', 'goodwin-sipes@mailinator.com', '9869181338', '1755 Rosenbaum Ridge\nNew Theofort, WV 76007-0841', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(383, 1, 'Ruecker, Pagac and Williamson', 'ruecker, pagac and williamson@mailinator.com', '9937728813', '815 Clara Route\nEast Bellside, MD 87965', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(384, 1, 'Paucek, Gaylord and Wehner', 'paucek, gaylord and wehner@mailinator.com', '9230565227', '141 Juston Station\nHarveyside, UT 56521', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(385, 1, 'Keebler Group', 'keebler group@mailinator.com', '9748978825', '3233 Estel Knoll\nGreenfort, MO 26061-7347', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(386, 1, 'Torp Group', 'torp group@mailinator.com', '9607157417', '99897 Elizabeth Lake Apt. 361\nPort Constantin, MN 29857', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(387, 1, 'Hegmann LLC', 'hegmann llc@mailinator.com', '9499429554', '64203 Eladio View\nGoyettetown, WI 09549-5529', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(388, 1, 'Fahey-Orn', 'fahey-orn@mailinator.com', '9537495423', '892 White Freeway Apt. 944\nLake Simeon, NY 81270', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(389, 1, 'Hahn-Miller', 'hahn-miller@mailinator.com', '9874998447', '7806 Elmore Plaza Suite 990\nNew Brook, HI 20543', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(390, 1, 'Medhurst-Nitzsche', 'medhurst-nitzsche@mailinator.com', '9491616630', '30218 Gusikowski Throughway\nDickinsonmouth, NH 18391', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(391, 1, 'Donnelly, Wiza and Hahn', 'donnelly, wiza and hahn@mailinator.com', '9700025129', '659 Padberg Haven Suite 479\nWest Dustin, MN 00509-7794', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(392, 1, 'Nienow, Runolfsson and McKenzie', 'nienow, runolfsson and mckenzie@mailinator.com', '9174383353', '709 Grayson Brooks Suite 294\nMarksfurt, MT 68252', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(393, 1, 'Heaney LLC', 'heaney llc@mailinator.com', '9165749319', '62080 Friesen Forest Suite 202\nWaelchimouth, MD 11249', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(394, 1, 'Koch-Howell', 'koch-howell@mailinator.com', '9716468506', '96640 Trycia Shoal\nEvefurt, MD 83204', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(395, 1, 'Konopelski, Schuppe and Terry', 'konopelski, schuppe and terry@mailinator.com', '9696380299', '845 Ondricka Via\nNew Madisenchester, FL 28716', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(396, 1, 'Spencer-Volkman', 'spencer-volkman@mailinator.com', '9655024213', '18541 Jacinto Alley Suite 876\nWisokyhaven, NM 39302-6740', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(397, 1, 'Hane-Yundt', 'hane-yundt@mailinator.com', '9991456338', '718 Shannon Landing Suite 166\nPort Juniorborough, RI 74589', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(398, 1, 'Mraz Group', 'mraz group@mailinator.com', '9346225099', '77398 Wehner Fort\nEstamouth, MO 83956', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(399, 1, 'Corwin, McLaughlin and Hauck', 'corwin, mclaughlin and hauck@mailinator.com', '9453729238', '28541 Andreane Path\nEast Onahaven, NY 59313-9882', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(400, 1, 'Schmeler, Fritsch and Reinger', 'schmeler, fritsch and reinger@mailinator.com', '9572559268', '290 Wilmer Pass Suite 192\nCormierburgh, MA 41503', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(401, 1, 'Leannon-Marquardt', 'leannon-marquardt@mailinator.com', '9081716341', '1566 Strosin Port Suite 615\nLake Kallie, NM 48959', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(402, 1, 'Hansen Inc', 'hansen inc@mailinator.com', '9897709977', '890 Collier Stravenue\nJarrelltown, WY 92374', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(403, 1, 'Ferry-Schultz', 'ferry-schultz@mailinator.com', '9492664675', '43266 Marilyne Pike Suite 256\nWest Laylamouth, CA 16128', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(404, 1, 'Kunze, DuBuque and Purdy', 'kunze, dubuque and purdy@mailinator.com', '9354258400', '67707 Kali Manor Apt. 472\nArielleburgh, WI 44338', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(405, 1, 'Bergnaum-Leffler', 'bergnaum-leffler@mailinator.com', '9484171361', '99083 Howell Squares\nReillyport, ID 44425', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(406, 1, 'Cassin PLC', 'cassin plc@mailinator.com', '9404434579', '7146 Hermiston Island\nSchneiderberg, KY 41739-2959', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(407, 1, 'Mante, Treutel and Sawayn', 'mante, treutel and sawayn@mailinator.com', '9469816145', '6717 Maggio Mountain Apt. 362\nWelchberg, NV 27651', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(408, 1, 'Brakus PLC', 'brakus plc@mailinator.com', '9804702806', '845 Darien Fields Suite 169\nNorth Casey, IL 78546-4153', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(409, 1, 'Swift-Kuhlman', 'swift-kuhlman@mailinator.com', '9405704342', '4270 Micaela Grove\nFeestside, WV 76903', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(410, 1, 'Shanahan Ltd', 'shanahan ltd@mailinator.com', '9872035740', '310 Justine Harbor\nMuellerhaven, MA 38773-2357', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(411, 1, 'Aufderhar, Adams and Herzog', 'aufderhar, adams and herzog@mailinator.com', '9407873127', '944 Braxton Club Suite 113\nNew Jett, AK 98105-4085', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(412, 1, 'Brakus-Hermann', 'brakus-hermann@mailinator.com', '9906573631', '2771 Kaylin Loop Suite 833\nItzelshire, OH 14714', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(413, 1, 'Eichmann-Hickle', 'eichmann-hickle@mailinator.com', '9833262173', '97569 Kulas Circles\nWest Ericahaven, MS 27030', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(414, 1, 'Bernier-Osinski', 'bernier-osinski@mailinator.com', '9560077086', '70349 Mayert Spur Suite 276\nKoeppchester, AZ 27540', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(415, 1, 'Brakus LLC', 'brakus llc@mailinator.com', '9795343890', '266 Dibbert Valleys Apt. 511\nMortimerside, FL 36664', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(416, 1, 'Gusikowski, Kling and Kemmer', 'gusikowski, kling and kemmer@mailinator.com', '9095434523', '54446 Eve Track\nSouth Christinaside, CO 65859', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(417, 1, 'Howell, Boyer and Okuneva', 'howell, boyer and okuneva@mailinator.com', '9856859936', '4507 Filiberto Course\nSiennatown, NY 92927', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(418, 1, 'Shields Ltd', 'shields ltd@mailinator.com', '9212238083', '48084 Lindgren Isle Apt. 631\nRubenville, ID 36984', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(419, 1, 'Maggio, Rippin and Kuvalis', 'maggio, rippin and kuvalis@mailinator.com', '9229443722', '46813 Ward Crossing\nFraneckiland, MO 79442-4295', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(420, 1, 'Runolfsdottir, Prosacco and Harris', 'runolfsdottir, prosacco and harris@mailinator.com', '9109667909', '1039 Block Extension\nPort Aronhaven, IA 69342-4022', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(421, 1, 'Sanford Inc', 'sanford inc@mailinator.com', '9109463489', '821 Jamil Manors Suite 834\nWalkerberg, AK 76912', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(422, 1, 'Williamson Group', 'williamson group@mailinator.com', '9488499806', '2092 Lloyd Mountain Suite 560\nKuphalmouth, GA 91908-3973', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(423, 1, 'Rutherford, Kunze and Schultz', 'rutherford, kunze and schultz@mailinator.com', '9321995796', '47169 Amir Fall Suite 023\nWest Kaitlin, IA 64503-9070', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(424, 1, 'Kuvalis, Auer and Hill', 'kuvalis, auer and hill@mailinator.com', '9372259850', '779 Schultz Lake Apt. 184\nQuintonfort, KY 14625', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(425, 1, 'Franecki and Sons', 'franecki and sons@mailinator.com', '9898556898', '6262 Darrin Summit Suite 747\nKemmerborough, NJ 01789-1289', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(426, 1, 'Gleichner-Weber', 'gleichner-weber@mailinator.com', '9380405022', '41427 Zboncak Street\nWest Derekchester, IA 16434', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(427, 1, 'Ankunding-Wilderman', 'ankunding-wilderman@mailinator.com', '9770615587', '5409 Jonas Mews Suite 988\nDoriantown, SC 82938', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(428, 1, 'Stokes, Bauch and Veum', 'stokes, bauch and veum@mailinator.com', '9468217193', '4760 White Shore Suite 296\nLittleshire, WV 71316', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(429, 1, 'McGlynn-O\'Hara', 'mcglynn-o\'hara@mailinator.com', '9769269031', '5800 Stanton Islands\nLourdesmouth, SC 90848', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(430, 1, 'Crona-Marquardt', 'crona-marquardt@mailinator.com', '9230208231', '77028 Clinton Greens Apt. 075\nSouth Romanstad, AK 17706-4500', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(431, 1, 'Harris, Reinger and Friesen', 'harris, reinger and friesen@mailinator.com', '9160493563', '110 Felton Burg Suite 910\nNew Rachel, CO 27693-2635', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(432, 1, 'Denesik, Lebsack and Weber', 'denesik, lebsack and weber@mailinator.com', '9905439278', '97418 Dicki Tunnel Suite 104\nDickensfort, VT 53685-2886', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(433, 1, 'Nikolaus, Fay and Denesik', 'nikolaus, fay and denesik@mailinator.com', '9284479879', '4500 Howell Plaza\nMarcelinoburgh, NH 00331', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(434, 1, 'Mosciski, Weber and Schmidt', 'mosciski, weber and schmidt@mailinator.com', '9827753856', '7954 Christiana Drive Apt. 356\nSouth Elmore, TX 47778', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(435, 1, 'Leannon-Runolfsdottir', 'leannon-runolfsdottir@mailinator.com', '9218149224', '4232 Kertzmann Prairie\nKirkfort, ND 71532-4436', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(436, 1, 'Daugherty, Goldner and Kling', 'daugherty, goldner and kling@mailinator.com', '9878971919', '9122 Ludie Parkway\nMyamouth, TX 22205-1470', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(437, 1, 'Block Group', 'block group@mailinator.com', '9903624976', '6801 Eichmann View Apt. 244\nReillyburgh, AL 89835', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(438, 1, 'Ankunding-Barrows', 'ankunding-barrows@mailinator.com', '9876919278', '88347 Grady Views\nTurcotteborough, WY 94317', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(439, 1, 'Mann, Mosciski and Bins', 'mann, mosciski and bins@mailinator.com', '9790005590', '99904 Keeling Mount\nRonnychester, WV 93457', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(440, 1, 'Abernathy-Dickinson', 'abernathy-dickinson@mailinator.com', '9811354600', '211 Joany Radial Apt. 040\nLake Noah, TX 85189', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(441, 1, 'Hills-Fahey', 'hills-fahey@mailinator.com', '9625175095', '888 Reilly Stream Apt. 974\nLake Kirstin, WY 47069-4314', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(442, 1, 'Hills-Strosin', 'hills-strosin@mailinator.com', '9870394381', '3655 Barney Plaza Suite 029\nZoeybury, WV 46980', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(443, 1, 'Doyle Inc', 'doyle inc@mailinator.com', '9747138171', '89608 Hill Groves\nNorth Jarrettmouth, RI 92492-8681', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(444, 1, 'Weissnat, Harber and Wintheiser', 'weissnat, harber and wintheiser@mailinator.com', '9683091295', '192 Mitchell Flats\nLake Jovanny, MA 95194-0353', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(445, 1, 'Dooley, Quigley and Yundt', 'dooley, quigley and yundt@mailinator.com', '9007218960', '2535 Ferry Motorway Suite 132\nLake Johathan, MO 15323-9628', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(446, 1, 'Kuhlman PLC', 'kuhlman plc@mailinator.com', '9024355844', '38044 O\'Conner Shoal Apt. 116\nNorth Sim, IN 03659', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(447, 1, 'McDermott and Sons', 'mcdermott and sons@mailinator.com', '9934714233', '41175 Nona Fords Apt. 907\nWebermouth, AL 35955-6463', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(448, 1, 'Konopelski-Swaniawski', 'konopelski-swaniawski@mailinator.com', '9953553167', '748 Padberg Meadow\nWest Suzanneport, TN 06174', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(449, 1, 'Kutch, Dickens and Crooks', 'kutch, dickens and crooks@mailinator.com', '9021200107', '21921 Nolan Causeway Apt. 605\nLake Cruz, VA 89882-7497', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(450, 1, 'Hagenes-Blanda', 'hagenes-blanda@mailinator.com', '9052802841', '946 Berge Lane\nWest Deborahborough, OH 93603', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(451, 1, 'Christiansen LLC', 'christiansen llc@mailinator.com', '9519328054', '651 Aurelie Creek\nNew Marielle, CT 28290', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(452, 1, 'Schneider and Sons', 'schneider and sons@mailinator.com', '9462417577', '994 Casandra Run Apt. 757\nEast Cecilchester, TN 81519-9843', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(453, 1, 'Hayes-Kertzmann', 'hayes-kertzmann@mailinator.com', '9153081986', '16668 Abbey Inlet\nMrazstad, AZ 42629-2049', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(454, 1, 'Friesen-Bahringer', 'friesen-bahringer@mailinator.com', '9440801957', '4247 Brekke Plains\nKuhnville, RI 54383', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(455, 1, 'Goyette PLC', 'goyette plc@mailinator.com', '9642332777', '281 Sanford Squares\nNew Leaberg, WI 34761', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(456, 1, 'Gibson and Sons', 'gibson and sons@mailinator.com', '9038982406', '81378 Connie Manor Apt. 916\nWatersborough, AR 97997', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(457, 1, 'Schaefer, Kreiger and Zboncak', 'schaefer, kreiger and zboncak@mailinator.com', '9265830840', '9074 Johnson Creek\nWest Nora, WV 37077', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(458, 1, 'White, Huels and Weissnat', 'white, huels and weissnat@mailinator.com', '9561458863', '421 Kiehn Junctions\nSauerchester, WI 47964', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(459, 1, 'Little, Reynolds and Lindgren', 'little, reynolds and lindgren@mailinator.com', '9313551102', '82375 Ronny Estate\nOlgaville, TN 41777-1793', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(460, 1, 'Crona-Conroy', 'crona-conroy@mailinator.com', '9767674331', '85827 Furman Parks\nD\'angeloport, MN 54328', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(461, 1, 'Langosh LLC', 'langosh llc@mailinator.com', '9332012493', '760 Alysson Crescent Suite 007\nLake Emeryborough, NE 94872', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(462, 1, 'Quigley-McKenzie', 'quigley-mckenzie@mailinator.com', '9690544927', '446 Dorthy Gardens Suite 900\nKozeyhaven, AZ 16583', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(463, 1, 'Kovacek LLC', 'kovacek llc@mailinator.com', '9006689516', '2288 Mante Viaduct Apt. 659\nMitchellstad, HI 66466-1894', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(464, 1, 'Trantow PLC', 'trantow plc@mailinator.com', '9608000218', '33500 Mosciski Spurs Suite 423\nLake Ryan, SD 49656', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(465, 1, 'Larkin, Dooley and Ferry', 'larkin, dooley and ferry@mailinator.com', '9014408050', '1784 Eladio Trace Suite 630\nPort Gabrielchester, NH 40970', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(466, 1, 'Dooley, Gutkowski and Mayer', 'dooley, gutkowski and mayer@mailinator.com', '9376612910', '3778 Richmond Wells\nAltenwerthberg, CO 24680-9591', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(467, 1, 'Yundt-O\'Hara', 'yundt-o\'hara@mailinator.com', '9979102402', '948 Abernathy Hill Apt. 466\nPort Curtis, CT 40539-4329', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(468, 1, 'Kunze-Willms', 'kunze-willms@mailinator.com', '9449485970', '5058 Ludie Drives Suite 280\nNorth Carrollchester, NM 67179-4429', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(469, 1, 'Dickinson Group', 'dickinson group@mailinator.com', '9555180208', '474 Lillian Squares Suite 443\nLake Heathville, MD 65732', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(470, 1, 'Ebert, Miller and Christiansen', 'ebert, miller and christiansen@mailinator.com', '9869324395', '98347 Tremaine River Apt. 584\nMcCulloughside, IA 14821-4988', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(471, 1, 'Dicki-Leffler', 'dicki-leffler@mailinator.com', '9950180041', '7782 Oscar Knolls\nBoyleborough, KS 61049-8839', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(472, 1, 'Waters, Dickinson and Douglas', 'waters, dickinson and douglas@mailinator.com', '9580416714', '2347 Boyer Light\nEmmerichland, OR 58925-0778', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(473, 1, 'Purdy-Brekke', 'purdy-brekke@mailinator.com', '9660084845', '712 Tyra Trace Suite 817\nAniyastad, WY 36921', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(474, 1, 'Stark, Thompson and Moore', 'stark, thompson and moore@mailinator.com', '9510974023', '10866 Lilly Mountain Suite 800\nSchmidtfort, OH 20072', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(475, 1, 'Herzog, Heaney and Greenfelder', 'herzog, heaney and greenfelder@mailinator.com', '9424221235', '6136 Nicola Burgs\nEast Lueport, IN 05344', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(476, 1, 'Ryan-Romaguera', 'ryan-romaguera@mailinator.com', '9063955397', '55754 Yost Lights Suite 890\nShayleeshire, KY 97400', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(477, 1, 'Hessel, Stehr and Bogisich', 'hessel, stehr and bogisich@mailinator.com', '9769311535', '27618 Greenholt Well\nGulgowskiborough, CA 16043', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(478, 1, 'Mertz LLC', 'mertz llc@mailinator.com', '9572401505', '55582 Johnathon Spurs\nNorth Mafalda, MO 08097', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(479, 1, 'Wyman-Wintheiser', 'wyman-wintheiser@mailinator.com', '9711867289', '98527 Goyette Mission\nWalkershire, DC 34279-0538', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(480, 1, 'Cartwright and Sons', 'cartwright and sons@mailinator.com', '9096474146', '34021 Arturo Locks\nFaheyport, ND 78651', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(481, 1, 'Monahan-Hessel', 'monahan-hessel@mailinator.com', '9045154787', '27788 Josiah Village Apt. 232\nBlockberg, AZ 42003', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(482, 1, 'Bruen-Will', 'bruen-will@mailinator.com', '9587758994', '3228 Vandervort Neck\nChristinachester, AR 45005-6169', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(483, 1, 'Gutkowski-Kihn', 'gutkowski-kihn@mailinator.com', '9082864841', '648 Jared Highway Suite 929\nNew Mitcheltown, DE 15656-6489', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(484, 1, 'O\'Keefe-Kris', 'o\'keefe-kris@mailinator.com', '9551787723', '687 Felicita Row\nTurcotteview, IL 57483-1969', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(485, 1, 'Harris-Ernser', 'harris-ernser@mailinator.com', '9257821902', '578 Declan Walks Suite 389\nLake Waylontown, TX 33094', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(486, 1, 'Stiedemann-Muller', 'stiedemann-muller@mailinator.com', '9955216937', '144 Amir Springs Apt. 633\nOrionberg, TN 39978-1637', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(487, 1, 'Monahan-Considine', 'monahan-considine@mailinator.com', '9385878607', '22485 Coy Trail Apt. 242\nKlockoport, UT 48074', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(488, 1, 'Crooks-Hickle', 'crooks-hickle@mailinator.com', '9260439689', '4027 Verda Overpass Apt. 747\nSouth Amparohaven, OK 50606', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(489, 1, 'Nikolaus, Morar and Hill', 'nikolaus, morar and hill@mailinator.com', '9977616582', '199 Angela Trace Suite 253\nPort Gradyberg, NM 36705', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(490, 1, 'Nitzsche-Hyatt', 'nitzsche-hyatt@mailinator.com', '9441449908', '14839 Sincere Isle Apt. 498\nLake Jayton, KY 92679', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(491, 1, 'Batz-Parker', 'batz-parker@mailinator.com', '9505540533', '1341 Ernser Throughway\nStromanport, NC 36547', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(492, 1, 'Runte Ltd', 'runte ltd@mailinator.com', '9676156980', '1218 Littel Forge\nPort Boyd, WY 42278', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(493, 1, 'Waters-Corwin', 'waters-corwin@mailinator.com', '9100048549', '6170 Lockman Mountains\nAnitaberg, NY 28036', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(494, 1, 'Lebsack-Stroman', 'lebsack-stroman@mailinator.com', '9141308506', '42393 Ayana Ways\nSouth Charleschester, MN 82934-5292', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(495, 1, 'Predovic-Johnson', 'predovic-johnson@mailinator.com', '9281451708', '8407 Stephania Manors Suite 137\nVandervortshire, SD 84357-3721', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(496, 1, 'Frami Inc', 'frami inc@mailinator.com', '9503636925', '763 Lowe Heights Suite 821\nKuhnchester, NJ 68944-7051', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(497, 1, 'Oberbrunner, Lebsack and Ernser', 'oberbrunner, lebsack and ernser@mailinator.com', '9805307923', '941 Webster Trail\nPort Kaelashire, MT 57047-5826', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(498, 1, 'Beer LLC', 'beer llc@mailinator.com', '9686781135', '494 Kutch Fork Apt. 773\nSouth Jamesonport, NY 31121', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(499, 1, 'Hermiston, Kilback and Kris', 'hermiston, kilback and kris@mailinator.com', '9811573050', '37839 Roberta Harbors Suite 946\nLeschburgh, OH 10225-3202', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(500, 1, 'Spencer, Roberts and Kuphal', 'spencer, roberts and kuphal@mailinator.com', '9086288268', '858 Jessika Brooks\nNew Rhoda, DC 93080', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(501, 1, 'Lemke-Legros', 'lemke-legros@mailinator.com', '9752940130', '6694 Kendrick Harbor\nPaulhaven, MI 00640-8131', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(502, 1, 'Quitzon-Christiansen', 'quitzon-christiansen@mailinator.com', '9168348063', '547 Lindgren Alley\nJusticemouth, IA 70709', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(503, 1, 'Dicki, Howell and McGlynn', 'dicki, howell and mcglynn@mailinator.com', '9183572290', '145 Wolf Place Suite 043\nSouth Mckennaville, VT 55657-3945', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(504, 1, 'Borer-Ferry', 'borer-ferry@mailinator.com', '9047150520', '8398 Hackett Cape Suite 831\nFarrellborough, OK 37675-1284', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(505, 1, 'Gusikowski-Kutch', 'gusikowski-kutch@mailinator.com', '9757891156', '33267 Kiehn Stream Apt. 968\nNew Kennamouth, DC 62854', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(506, 1, 'Considine, Hegmann and Senger', 'considine, hegmann and senger@mailinator.com', '9983515001', '716 Gennaro Locks Suite 795\nNorth Boris, OH 41346', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(507, 1, 'Doyle LLC', 'doyle llc@mailinator.com', '9236759439', '26583 Brooke Mission\nSkilesmouth, SD 21193', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(508, 1, 'Considine LLC', 'considine llc@mailinator.com', '9016886385', '5706 Adan Prairie\nNikostad, ID 88531-3382', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(509, 1, 'Harvey-Johnston', 'harvey-johnston@mailinator.com', '9716376436', '33165 Colt Terrace Apt. 198\nPort Macie, VT 37316', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(510, 1, 'Walker PLC', 'walker plc@mailinator.com', '9671431981', '74814 Heaney Lodge Apt. 959\nPort Edmondstad, OH 61346-5460', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(511, 1, 'Prohaska-Roob', 'prohaska-roob@mailinator.com', '9799732105', '386 Oceane Curve\nKeeblerland, WI 97336', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(512, 1, 'Buckridge-Legros', 'buckridge-legros@mailinator.com', '9669972611', '641 Kuhlman Pine\nDonnellychester, NY 40246-4696', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(513, 1, 'Hoppe, Monahan and Gibson', 'hoppe, monahan and gibson@mailinator.com', '9255721062', '9096 Mayra Views\nWest Nicholaus, WV 99295', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(514, 1, 'Breitenberg-Bashirian', 'breitenberg-bashirian@mailinator.com', '9635177095', '53081 Feil Inlet Apt. 519\nPort Karina, LA 16756', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(515, 1, 'Klocko and Sons', 'klocko and sons@mailinator.com', '9643603366', '760 Rocky Garden\nGottliebborough, KY 54684-5127', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(516, 1, 'Hahn LLC', 'hahn llc@mailinator.com', '9775095361', '505 Konopelski Way\nO\'Keefeborough, WA 85565-6611', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(517, 1, 'Kozey Group', 'kozey group@mailinator.com', '9346619829', '46712 Georgianna Pass Apt. 572\nHowellhaven, OH 22059', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(518, 1, 'Murray-Johns', 'murray-johns@mailinator.com', '9513171392', '6593 Heaney Valleys\nLake Adela, ND 59573', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(519, 1, 'Boyer-Conn', 'boyer-conn@mailinator.com', '9545446799', '42598 Macey Causeway Suite 532\nIsadoreview, NE 41712', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(520, 1, 'Hettinger PLC', 'hettinger plc@mailinator.com', '9923525301', '180 Khalil Vista Suite 479\nSouth Amyachester, MT 79522-6666', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(521, 1, 'Swift and Sons', 'swift and sons@mailinator.com', '9689421619', '8139 Tiana Vista\nVerniceborough, WY 55183-2920', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(522, 1, 'Mayer, Ratke and Spinka', 'mayer, ratke and spinka@mailinator.com', '9026947728', '46766 Zulauf Rue\nNorth Olin, NH 50682', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(523, 1, 'Zemlak, Blanda and Schuster', 'zemlak, blanda and schuster@mailinator.com', '9729772341', '9912 Murphy Junction Apt. 291\nEast Rolando, VA 16974', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(524, 1, 'Lind-Bauch', 'lind-bauch@mailinator.com', '9389285435', '51068 Laurence Hill Suite 657\nPort Hoytbury, MO 42776-9046', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(525, 1, 'Torp Ltd', 'torp ltd@mailinator.com', '9551498328', '84769 Davis Ports\nRosabury, GA 83090', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(526, 1, 'Rogahn, Boyer and Schmidt', 'rogahn, boyer and schmidt@mailinator.com', '9609771655', '26609 Dortha Coves Apt. 552\nEast Javontestad, KS 46461-2831', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(527, 1, 'Dooley-Nicolas', 'dooley-nicolas@mailinator.com', '9013960631', '29880 Gottlieb Cliff\nNorth Ernieside, NJ 52448-2330', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(528, 1, 'Mueller, Christiansen and West', 'mueller, christiansen and west@mailinator.com', '9059226227', '3042 Herman Mountain\nNew Jovannychester, NY 54361-8095', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL);
INSERT INTO `vendors` (`id`, `school_id`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(529, 1, 'Hayes, Crona and Stracke', 'hayes, crona and stracke@mailinator.com', '9465692511', '5326 Herzog Cliff Apt. 968\nKuhicland, SC 36377', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(530, 1, 'Maggio Inc', 'maggio inc@mailinator.com', '9720554796', '77966 Hazle Walk Suite 325\nBryonland, HI 26998-3566', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(531, 1, 'Bartell-Torp', 'bartell-torp@mailinator.com', '9037636782', '52827 Von River Apt. 829\nNorth Adrienne, MI 19173', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(532, 1, 'Waters LLC', 'waters llc@mailinator.com', '9016674023', '290 Rice Flat Apt. 539\nSouth Destinibury, CO 01241', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(533, 1, 'Okuneva-Shields', 'okuneva-shields@mailinator.com', '9018082699', '986 Luciano View\nSouth Martystad, NY 08852', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(534, 1, 'Windler Ltd', 'windler ltd@mailinator.com', '9830029483', '428 Nichole Fields Suite 520\nEast Lorena, NV 16176-9656', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(535, 1, 'Kuhlman Group', 'kuhlman group@mailinator.com', '9179598251', '3729 Kylie Harbors\nCarterchester, TX 28465', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(536, 1, 'Heathcote, Mertz and Friesen', 'heathcote, mertz and friesen@mailinator.com', '9246863636', '1116 Amber Unions\nPort Martabury, DE 67814-8903', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(537, 1, 'Feil PLC', 'feil plc@mailinator.com', '9168249322', '9348 Charlotte Locks\nSouth Elliott, RI 54320', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(538, 1, 'Kris, Swift and Howell', 'kris, swift and howell@mailinator.com', '9677422285', '25120 Watsica Road Apt. 337\nPort Emelyhaven, CT 95782', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(539, 1, 'Wilderman, Kuhic and Bailey', 'wilderman, kuhic and bailey@mailinator.com', '9256199438', '6548 Eduardo Ranch Apt. 406\nRennermouth, MT 75808-5553', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(540, 1, 'Dickinson-Schuppe', 'dickinson-schuppe@mailinator.com', '9855451822', '9159 Petra Wells\nHirtheport, VT 00638-3201', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(541, 1, 'Lehner-Kub', 'lehner-kub@mailinator.com', '9167617560', '9404 Destini Hills\nWest Melissabury, NY 49284-3486', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(542, 1, 'Quigley Ltd', 'quigley ltd@mailinator.com', '9902365300', '47577 Benjamin Spring Suite 889\nWest Kristina, NC 07677-9081', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(543, 1, 'Boyer Ltd', 'boyer ltd@mailinator.com', '9083196504', '66222 Stark Spurs\nWest Felicita, MT 39040-2427', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(544, 1, 'Shanahan LLC', 'shanahan llc@mailinator.com', '9183079096', '23679 Schumm Route\nLockmantown, CT 06311-9927', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(545, 1, 'Rodriguez and Sons', 'rodriguez and sons@mailinator.com', '9378872933', '53215 Will Way Apt. 679\nClairemouth, OR 71303-7071', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(546, 1, 'Cronin and Sons', 'cronin and sons@mailinator.com', '9089226538', '72299 Ciara Spring Apt. 178\nSouth Rosaville, OH 12447', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(547, 1, 'Huels Ltd', 'huels ltd@mailinator.com', '9983404504', '13940 Thiel Lodge Suite 723\nMorissetteton, WV 80916', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(548, 1, 'Paucek and Sons', 'paucek and sons@mailinator.com', '9619561433', '26822 Evie Cove Suite 017\nNew Bette, NM 36976-6018', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(549, 1, 'Braun and Sons', 'braun and sons@mailinator.com', '9828400127', '31081 Koch Hollow\nHyattborough, NV 30060-9850', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(550, 1, 'Kautzer Group', 'kautzer group@mailinator.com', '9975479066', '9329 Bogan Radial\nJaleelville, LA 77010-6451', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(551, 1, 'Marvin, Weber and Effertz', 'marvin, weber and effertz@mailinator.com', '9631947659', '688 Blanda Summit\nAnnamaeview, MT 00867-2965', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(552, 1, 'Stehr PLC', 'stehr plc@mailinator.com', '9406334886', '94576 Hoppe Common\nNew Christinechester, SC 94228', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(553, 1, 'Heidenreich, Lowe and Stokes', 'heidenreich, lowe and stokes@mailinator.com', '9431645136', '7196 Oberbrunner Stravenue\nPablostad, NV 72667', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(554, 1, 'Bruen-Von', 'bruen-von@mailinator.com', '9031243392', '7819 Kaden Villages\nNorth Zelma, WV 67215-0964', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(555, 1, 'Harris PLC', 'harris plc@mailinator.com', '9659933419', '389 Nolan Path\nPort Kristin, OK 29146-3783', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(556, 1, 'Runolfsson-Hoppe', 'runolfsson-hoppe@mailinator.com', '9556982012', '9235 Kelvin Summit Apt. 282\nNorth Guy, VT 41230', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(557, 1, 'Prohaska Ltd', 'prohaska ltd@mailinator.com', '9863492550', '53150 Reynolds Turnpike\nEast Marilyne, AZ 61080', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(558, 1, 'Wehner and Sons', 'wehner and sons@mailinator.com', '9464826597', '3106 Lenny Village Suite 725\nWittingfort, TX 72178-9338', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(559, 1, 'Swaniawski-Aufderhar', 'swaniawski-aufderhar@mailinator.com', '9262509330', '49419 Chaz Loaf Suite 036\nEast Trishamouth, WY 48254', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(560, 1, 'Cremin, Bogisich and Schmidt', 'cremin, bogisich and schmidt@mailinator.com', '9383797864', '667 Jake Union Suite 106\nNorth Tobyville, AK 53736-8906', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(561, 1, 'Fay-Jacobson', 'fay-jacobson@mailinator.com', '9505032199', '9588 Bethany Street\nFadelburgh, MO 15685', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(562, 1, 'Donnelly-Shields', 'donnelly-shields@mailinator.com', '9637273911', '77347 Bartell Street\nGoldenhaven, NH 79730', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(563, 1, 'Armstrong, Rutherford and Rippin', 'armstrong, rutherford and rippin@mailinator.com', '9699270164', '49855 Lilian Unions Suite 879\nKasandramouth, GA 44670', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(564, 1, 'Grant, Quitzon and Lang', 'grant, quitzon and lang@mailinator.com', '9331222527', '4078 Muller Plains\nKundemouth, OK 81546-6492', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(565, 1, 'Reinger, Shields and Heathcote', 'reinger, shields and heathcote@mailinator.com', '9673393617', '97632 Doyle Ranch Suite 644\nMcDermottborough, IA 70370', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(566, 1, 'Thompson, Howe and Goodwin', 'thompson, howe and goodwin@mailinator.com', '9804081874', '10283 Ryan Street Suite 392\nEast Londonberg, NJ 96320-5046', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(567, 1, 'Abbott, Pollich and Beatty', 'abbott, pollich and beatty@mailinator.com', '9763797450', '55760 Kirlin Grove\nLake Filibertoton, CA 46129', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(568, 1, 'Parisian-Effertz', 'parisian-effertz@mailinator.com', '9695446579', '484 Delphia Views\nMaceyberg, MD 12015', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(569, 1, 'Howell, Parisian and Farrell', 'howell, parisian and farrell@mailinator.com', '9070668276', '7845 Conn Crest Apt. 319\nEulaliamouth, GA 48924', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(570, 1, 'Heller-Hudson', 'heller-hudson@mailinator.com', '9989768222', '981 Alana Inlet\nGraysonville, LA 49505', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(571, 1, 'Hoppe PLC', 'hoppe plc@mailinator.com', '9195887781', '24791 Herman Port\nBlickburgh, DE 37346-6694', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(572, 1, 'Schmidt and Sons', 'schmidt and sons@mailinator.com', '9660573827', '98634 Rebekah Street\nNorth Joshmouth, NH 24232', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(573, 1, 'Beer, Stark and Fahey', 'beer, stark and fahey@mailinator.com', '9188701218', '793 Stella Mountains\nSusanastad, MN 93001-7767', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(574, 1, 'Hegmann-Walter', 'hegmann-walter@mailinator.com', '9886617396', '82677 Laney Fields Apt. 003\nNeldaburgh, OK 85091', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(575, 1, 'Kassulke, Schaefer and Beer', 'kassulke, schaefer and beer@mailinator.com', '9829009744', '7986 Adele Rapids\nBreannaburgh, RI 50290-2155', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(576, 1, 'Corwin LLC', 'corwin llc@mailinator.com', '9717186421', '79180 Effertz Roads Suite 234\nPort Susannamouth, NC 46016', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(577, 1, 'Gislason PLC', 'gislason plc@mailinator.com', '9542491446', '76300 Alta Keys Apt. 314\nOrvilleborough, FL 21775-8350', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(578, 1, 'Morar, Bartell and Wintheiser', 'morar, bartell and wintheiser@mailinator.com', '9350607075', '555 Micheal Shoal\nDawsonborough, NH 30889', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(579, 1, 'O\'Connell, Stroman and Schaefer', 'o\'connell, stroman and schaefer@mailinator.com', '9201883992', '93429 Schulist Meadow Suite 823\nJeannemouth, MN 12243', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(580, 1, 'Kuhlman Ltd', 'kuhlman ltd@mailinator.com', '9247404766', '85754 Murazik Views\nTownefurt, NY 82673-5217', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(581, 1, 'Hauck, Larkin and Barrows', 'hauck, larkin and barrows@mailinator.com', '9970380516', '66458 Morgan Cape\nNew Saige, PA 85948-6507', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(582, 1, 'Lemke Inc', 'lemke inc@mailinator.com', '9001102742', '297 Florencio Causeway Suite 801\nPort Alanna, IN 57654-0544', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(583, 1, 'Beatty Inc', 'beatty inc@mailinator.com', '9612344675', '95444 Dominic Pines Suite 631\nHintzhaven, FL 64582-8534', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(584, 1, 'Rogahn-Keebler', 'rogahn-keebler@mailinator.com', '9611842500', '26191 Ryan Pine\nStevieside, MD 67658-9940', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(585, 1, 'Reichert, Cronin and Haley', 'reichert, cronin and haley@mailinator.com', '9258268268', '34372 Littel Place Apt. 294\nToystad, HI 05916-1640', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(586, 1, 'Rosenbaum-Zboncak', 'rosenbaum-zboncak@mailinator.com', '9043551346', '879 Kevin Summit\nMarisatown, MN 40159-4881', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(587, 1, 'Mosciski-Wilderman', 'mosciski-wilderman@mailinator.com', '9301789917', '47962 Stroman Extensions Suite 633\nLelafort, UT 15347-2536', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(588, 1, 'Stamm-Cremin', 'stamm-cremin@mailinator.com', '9562670634', '23968 Nitzsche Court Apt. 200\nSouth Larryview, IL 17679-0293', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(589, 1, 'Upton, Sipes and Walker', 'upton, sipes and walker@mailinator.com', '9260057554', '6878 Medhurst Stream\nGastonport, AR 26034', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(590, 1, 'Conroy PLC', 'conroy plc@mailinator.com', '9286575505', '91079 O\'Reilly Islands Suite 178\nLisaberg, VA 30482', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(591, 1, 'Effertz PLC', 'effertz plc@mailinator.com', '9841426897', '444 Shields Heights Suite 518\nEast Edgarton, WV 88355', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(592, 1, 'Koss-Will', 'koss-will@mailinator.com', '9752877227', '50540 Joaquin Estate Apt. 265\nNikolausborough, NM 00724', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(593, 1, 'Fahey-Cremin', 'fahey-cremin@mailinator.com', '9504179887', '928 Gregg Plains Suite 927\nNew Ahmad, MI 34581-0898', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(594, 1, 'Gibson PLC', 'gibson plc@mailinator.com', '9072496498', '659 Kyle Roads Suite 252\nPort Michalehaven, ID 73511', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(595, 1, 'Nader, Weber and Herzog', 'nader, weber and herzog@mailinator.com', '9915393865', '458 Dibbert Ranch Suite 463\nMorarton, NE 49710', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(596, 1, 'Hill, Gerlach and Kuvalis', 'hill, gerlach and kuvalis@mailinator.com', '9925998060', '27161 Reggie Trail Apt. 199\nKeenanview, MD 43069-0719', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(597, 1, 'Cronin Ltd', 'cronin ltd@mailinator.com', '9038163582', '11487 Jannie Mountains Suite 863\nPort Cole, CO 64077-3689', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(598, 1, 'Olson Inc', 'olson inc@mailinator.com', '9720073891', '4187 Sunny Mills Apt. 177\nHyattburgh, DE 84897', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(599, 1, 'Funk Group', 'funk group@mailinator.com', '9036136421', '59873 Jerry Corner\nMarianneshire, ID 44785-4261', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(600, 1, 'Kreiger, Hirthe and Spencer', 'kreiger, hirthe and spencer@mailinator.com', '9108391282', '86874 Yadira Cape Apt. 197\nNorth Kelley, IL 22218', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(601, 1, 'Terry PLC', 'terry plc@mailinator.com', '9954645302', '68995 Lindgren Streets Apt. 573\nWittingtown, NH 92998', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(602, 1, 'Wilkinson LLC', 'wilkinson llc@mailinator.com', '9826520975', '8713 Braun Ports Suite 596\nJadeshire, OK 98470', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(603, 1, 'Wilkinson-Bergstrom', 'wilkinson-bergstrom@mailinator.com', '9363257237', '79837 Lynch Canyon\nSouth Bradfordfort, SC 79126-0654', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(604, 1, 'Maggio Group', 'maggio group@mailinator.com', '9576018586', '8015 Franecki Village\nPort Princechester, ME 81517-4333', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(605, 1, 'Langworth, Borer and VonRueden', 'langworth, borer and vonrueden@mailinator.com', '9457284434', '3982 Barrows Canyon Suite 515\nWest Alexaneview, OR 88061-9379', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(606, 1, 'Lakin-Harris', 'lakin-harris@mailinator.com', '9963197863', '87833 Carroll Wall Apt. 697\nPort Ashleighchester, RI 56118-7201', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(607, 1, 'Hane-Rogahn', 'hane-rogahn@mailinator.com', '9709253198', '47794 Crystal Wall Apt. 177\nEast Rustyborough, NH 31842-8723', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(608, 1, 'Howell LLC', 'howell llc@mailinator.com', '9681498049', '22851 Wisozk Springs Suite 273\nWest Oscarborough, OH 44107-3248', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(609, 1, 'O\'Conner-Borer', 'o\'conner-borer@mailinator.com', '9882265599', '471 Dino Oval\nNew Janelle, NH 88045-1636', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(610, 1, 'McClure PLC', 'mcclure plc@mailinator.com', '9753394755', '41335 Turcotte Flats\nNew Sandrinefurt, TX 81221', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(611, 1, 'Torphy and Sons', 'torphy and sons@mailinator.com', '9124816167', '9064 Schumm Forks\nCristalbury, DE 75501', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(612, 1, 'VonRueden-Feil', 'vonrueden-feil@mailinator.com', '9746569008', '853 Wilbert Trafficway Suite 797\nNorth Dante, KY 84306-1646', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(613, 1, 'Dach, Blanda and Weissnat', 'dach, blanda and weissnat@mailinator.com', '9078829793', '2470 Edyth River\nLake Paoloville, WV 92624-0990', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(614, 1, 'Reichel-Padberg', 'reichel-padberg@mailinator.com', '9212571367', '697 Luz Junctions\nMyriamton, NM 37076', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(615, 1, 'Jacobson, King and Tillman', 'jacobson, king and tillman@mailinator.com', '9043095924', '2847 Wolff Hollow\nPort Kielmouth, TN 85893-3956', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(616, 1, 'Lebsack-Schmidt', 'lebsack-schmidt@mailinator.com', '9461044187', '94301 Hackett Walk\nEast Gregg, CA 93606-1584', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(617, 1, 'Homenick, Blick and Waelchi', 'homenick, blick and waelchi@mailinator.com', '9489028405', '294 Mayer Street\nOlsonmouth, NY 72189-6429', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(618, 1, 'Rippin-Keebler', 'rippin-keebler@mailinator.com', '9419574027', '315 Amari Brook Apt. 991\nSouth Harmon, ME 21287', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(619, 1, 'Herman, Daniel and Jerde', 'herman, daniel and jerde@mailinator.com', '9645127856', '5724 Wilhelmine Station Apt. 517\nTownefort, VT 74061', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(620, 1, 'Konopelski, Marks and Tromp', 'konopelski, marks and tromp@mailinator.com', '9517189633', '512 Xzavier Fort Apt. 677\nWest Wilhelmineside, MN 45665-1722', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(621, 1, 'Dach, Sipes and Kutch', 'dach, sipes and kutch@mailinator.com', '9961002350', '31998 Bahringer Plaza Suite 996\nNorth Benedicttown, CA 69611-7020', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(622, 1, 'Swift, Hoppe and Rath', 'swift, hoppe and rath@mailinator.com', '9979757257', '9441 Raphael Forest Apt. 033\nWest Mittiemouth, AR 26276-0068', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(623, 1, 'Lakin Ltd', 'lakin ltd@mailinator.com', '9489765992', '8115 Alek Harbors\nNorth Sashaburgh, MI 02664-3549', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(624, 1, 'Beer, Thompson and Walker', 'beer, thompson and walker@mailinator.com', '9166981471', '42256 Upton Radial\nLake Hassan, ND 10314-4736', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(625, 1, 'Rutherford and Sons', 'rutherford and sons@mailinator.com', '9712581253', '59213 Harber Summit\nRodriguezburgh, KS 41042-9440', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(626, 1, 'O\'Reilly-Schoen', 'o\'reilly-schoen@mailinator.com', '9297124001', '62565 Konopelski Forges\nSouth Cornelius, MI 05460', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(627, 1, 'Hartmann, Schmeler and Dibbert', 'hartmann, schmeler and dibbert@mailinator.com', '9875774023', '6994 Waylon Creek\nWest Melyssaland, MS 41060-2801', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(628, 1, 'Hansen, Corkery and Heidenreich', 'hansen, corkery and heidenreich@mailinator.com', '9095471479', '782 Hamill Fork\nWest Oswald, SC 00480', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(629, 1, 'Ziemann, Becker and Ritchie', 'ziemann, becker and ritchie@mailinator.com', '9530757173', '9108 Shana Underpass\nWest Price, FL 73285', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(630, 1, 'Kassulke, Rice and Rippin', 'kassulke, rice and rippin@mailinator.com', '9535234756', '41564 Lebsack Overpass Suite 763\nNorth Lailashire, RI 89972-7194', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(631, 1, 'Kuhic, Armstrong and Parker', 'kuhic, armstrong and parker@mailinator.com', '9355175273', '401 Luna Lodge\nNew Robertaville, CA 01658', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(632, 1, 'Watsica-Frami', 'watsica-frami@mailinator.com', '9866487256', '996 Albina Knoll\nRogahnport, UT 52962-6971', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(633, 1, 'Terry-Hessel', 'terry-hessel@mailinator.com', '9524284667', '2182 Dolores Gardens Suite 849\nSouth Anabellebury, NC 59256', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(634, 1, 'Schoen Ltd', 'schoen ltd@mailinator.com', '9010394044', '315 Breana Parkway\nNorth Aurelia, CA 37253-3522', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(635, 1, 'Kuhic-McLaughlin', 'kuhic-mclaughlin@mailinator.com', '9722857189', '941 Koelpin Freeway Suite 080\nNew Jeramyborough, AZ 81672-7106', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(636, 1, 'Romaguera, Raynor and Walker', 'romaguera, raynor and walker@mailinator.com', '9324223722', '172 Petra Vista Apt. 095\nEldorahaven, MT 46151-1430', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(637, 1, 'Durgan, Reynolds and Kutch', 'durgan, reynolds and kutch@mailinator.com', '9224332325', '49507 Walter Views\nPort Pansybury, UT 58221-5175', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(638, 1, 'Daugherty-King', 'daugherty-king@mailinator.com', '9864651959', '26908 Gabriel Manors\nGutkowskiville, NH 71507-0006', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(639, 1, 'Turner, Olson and Auer', 'turner, olson and auer@mailinator.com', '9215718372', '82562 Tillman Villages Apt. 676\nWest Elaina, ND 90621-8608', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(640, 1, 'Schroeder Group', 'schroeder group@mailinator.com', '9024726490', '56850 Bernhard River Apt. 547\nPort Jamirshire, NC 68849-9263', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(641, 1, 'Smith Ltd', 'smith ltd@mailinator.com', '9656277681', '146 Nikolaus Crest Suite 011\nPort Maximoport, WV 52593', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(642, 1, 'Hamill-Lynch', 'hamill-lynch@mailinator.com', '9622796389', '91532 Marques Point Apt. 038\nNew Madie, WI 31482-5562', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(643, 1, 'Treutel-McClure', 'treutel-mcclure@mailinator.com', '9510191653', '430 Quinton Isle Suite 955\nLavernville, WA 40628', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(644, 1, 'Weber, Satterfield and Conroy', 'weber, satterfield and conroy@mailinator.com', '9351151095', '271 Howe Fort Apt. 363\nSouth Jaylinburgh, CA 24344-8020', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(645, 1, 'Muller, Aufderhar and Cronin', 'muller, aufderhar and cronin@mailinator.com', '9557850647', '388 Harvey Radial\nLexietown, RI 65835', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(646, 1, 'Goldner Ltd', 'goldner ltd@mailinator.com', '9279130531', '4976 Bahringer Wells\nEast Olinberg, DE 23991', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(647, 1, 'Orn-Nader', 'orn-nader@mailinator.com', '9130802062', '6328 Tromp Summit Apt. 716\nWest Madgestad, HI 53477-9966', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(648, 1, 'Steuber-Franecki', 'steuber-franecki@mailinator.com', '9654822277', '10586 Velda Canyon\nNew Helga, OK 79177', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(649, 1, 'Wilderman-Glover', 'wilderman-glover@mailinator.com', '9229175773', '714 Aisha Union Suite 892\nEast Trevor, HI 95400-3399', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(650, 1, 'Tromp-Champlin', 'tromp-champlin@mailinator.com', '9033069857', '97865 Alexie Place\nSchimmelshire, ND 59761', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(651, 1, 'Beier, Dare and Auer', 'beier, dare and auer@mailinator.com', '9016216840', '535 Conroy Mall Apt. 857\nNew Lynn, NC 56553', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(652, 1, 'Price, Abernathy and Schaden', 'price, abernathy and schaden@mailinator.com', '9586912991', '3998 Alfredo Bypass Apt. 143\nNorth Cecileshire, AZ 48228', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(653, 1, 'Kirlin, Beer and Schuppe', 'kirlin, beer and schuppe@mailinator.com', '9693296978', '93536 Roob Underpass Suite 277\nSarinaberg, MN 93832-7249', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(654, 1, 'Terry PLC', 'terry plc@mailinator.com', '9366101469', '348 Mona Crescent Suite 114\nPort Carmineside, KS 63310', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(655, 1, 'Dickinson, Kris and Cummerata', 'dickinson, kris and cummerata@mailinator.com', '9098220962', '517 Powlowski Brook\nLake Mekhi, WA 91561', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(656, 1, 'Metz Ltd', 'metz ltd@mailinator.com', '9805949710', '34524 Roberts Ramp\nNew Margarettville, NJ 64516', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(657, 1, 'Leannon, Ondricka and Gottlieb', 'leannon, ondricka and gottlieb@mailinator.com', '9635314137', '22928 Goldner Walks\nKuvalismouth, CO 27622', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(658, 1, 'Kessler-Schneider', 'kessler-schneider@mailinator.com', '9624060663', '48046 Ruecker Ville\nCorwinmouth, ND 80034', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(659, 1, 'Lebsack-Ritchie', 'lebsack-ritchie@mailinator.com', '9468187547', '5497 Marvin Neck Suite 437\nRohanstad, MS 33559-9935', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(660, 1, 'Feeney-Berge', 'feeney-berge@mailinator.com', '9142536687', '7601 Hoppe Mill Apt. 929\nWest Linnea, MD 96901', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(661, 1, 'Nader, Nader and Gorczany', 'nader, nader and gorczany@mailinator.com', '9316069506', '174 Marisa Garden Apt. 353\nLake Peggieville, NV 21244-5553', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(662, 1, 'Oberbrunner-Roberts', 'oberbrunner-roberts@mailinator.com', '9791636391', '68380 Maurine Lodge Apt. 773\nPort Rudolph, MS 01926-3046', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(663, 1, 'Turcotte, Reynolds and Konopelski', 'turcotte, reynolds and konopelski@mailinator.com', '9586634512', '37076 Roob Ville Apt. 845\nClydetown, TN 83459', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(664, 1, 'Hahn, Gaylord and Upton', 'hahn, gaylord and upton@mailinator.com', '9259812429', '307 Isaac Freeway Apt. 225\nNew Sherwoodfort, ME 38629', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(665, 1, 'Considine, Denesik and Murazik', 'considine, denesik and murazik@mailinator.com', '9956220191', '138 Aditya Rapids Apt. 232\nNorth Aliyah, KY 50430', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(666, 1, 'Boyer-Auer', 'boyer-auer@mailinator.com', '9028265854', '6779 Clifford Skyway Apt. 905\nSouth Franz, NJ 58102', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(667, 1, 'Flatley Ltd', 'flatley ltd@mailinator.com', '9553631218', '195 Trantow Land\nPort Kade, HI 87365', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(668, 1, 'VonRueden PLC', 'vonrueden plc@mailinator.com', '9711666768', '9704 Meagan Junctions\nSporerside, NY 27577-3214', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(669, 1, 'Labadie Inc', 'labadie inc@mailinator.com', '9274501163', '22765 Stephania Harbors Apt. 305\nLake Flofurt, VT 35077-8691', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(670, 1, 'McLaughlin-Howe', 'mclaughlin-howe@mailinator.com', '9366267730', '34659 Pagac Square\nPort Caleighville, AK 37315', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(671, 1, 'Jaskolski PLC', 'jaskolski plc@mailinator.com', '9773599718', '91188 Ferry Fall\nDomingobury, DE 07198-5278', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(672, 1, 'Altenwerth-Graham', 'altenwerth-graham@mailinator.com', '9926793962', '45890 Shawn Streets Apt. 692\nEbertfort, GA 22767', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(673, 1, 'Ledner-Heidenreich', 'ledner-heidenreich@mailinator.com', '9603290309', '368 Koepp Motorway\nEast Orionbury, MO 81063', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(674, 1, 'Bartell-Kris', 'bartell-kris@mailinator.com', '9701891123', '8661 Bosco Shoal Suite 354\nNew Heavenport, AR 15713', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(675, 1, 'Wuckert, Zemlak and Runolfsson', 'wuckert, zemlak and runolfsson@mailinator.com', '9254549325', '399 Stanton Orchard\nMarvinside, NJ 59097', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(676, 1, 'Moore and Sons', 'moore and sons@mailinator.com', '9799284344', '11890 Deja Freeway Apt. 031\nTorpchester, OK 71416-1647', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(677, 1, 'Hettinger PLC', 'hettinger plc@mailinator.com', '9576631063', '5332 Kathlyn Groves\nWizastad, KS 36009-4271', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(678, 1, 'Kub, West and Schaden', 'kub, west and schaden@mailinator.com', '9434970561', '21776 Lueilwitz Plains Suite 005\nNew Nya, WI 22901', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(679, 1, 'Ruecker Group', 'ruecker group@mailinator.com', '9772522697', '2043 Rowe Falls\nLake Zoila, DC 56614-0255', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(680, 1, 'Simonis-Koch', 'simonis-koch@mailinator.com', '9195436562', '97614 Swaniawski Gateway Apt. 609\nWest Hailee, KY 52711-9317', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(681, 1, 'Heathcote-Dicki', 'heathcote-dicki@mailinator.com', '9064968110', '8313 Pfeffer Hill\nLake Coyberg, WY 08005-0386', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(682, 1, 'Botsford Ltd', 'botsford ltd@mailinator.com', '9143895576', '5143 Myriam Vista Suite 824\nBaronside, VA 44145-8009', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(683, 1, 'Wiegand, O\'Hara and Dicki', 'wiegand, o\'hara and dicki@mailinator.com', '9014597396', '436 Lang Loaf\nImabury, AZ 42205-2277', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(684, 1, 'Graham, Beer and Cummerata', 'graham, beer and cummerata@mailinator.com', '9127718085', '3383 Lesch Crescent\nPort Damionton, RI 98716-4764', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(685, 1, 'Bartoletti LLC', 'bartoletti llc@mailinator.com', '9552913761', '3431 Fiona Isle Suite 376\nEltonhaven, ID 12511', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(686, 1, 'Gleichner-Collier', 'gleichner-collier@mailinator.com', '9573675401', '25515 O\'Kon Shore Apt. 964\nEast Kevonmouth, AZ 67074-3795', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(687, 1, 'Schmidt, Hill and Jacobson', 'schmidt, hill and jacobson@mailinator.com', '9285398276', '8795 Sheldon Trail Suite 705\nSipesfurt, MT 59275-1702', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(688, 1, 'Kirlin, Gibson and Lockman', 'kirlin, gibson and lockman@mailinator.com', '9025716909', '5450 Sienna Mills Suite 581\nSchuppetown, TN 69674-8023', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(689, 1, 'Jacobson, Crooks and Hickle', 'jacobson, crooks and hickle@mailinator.com', '9106647106', '89100 Charity Lakes Suite 455\nSouth Charlottechester, PA 75003', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(690, 1, 'Predovic and Sons', 'predovic and sons@mailinator.com', '9855398829', '90190 John Port\nNorth Karliborough, WI 81450-1893', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(691, 1, 'Schmitt, Bashirian and Schimmel', 'schmitt, bashirian and schimmel@mailinator.com', '9530743131', '1416 Adela Court Apt. 682\nRunolfsdottirhaven, ND 82309', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(692, 1, 'Green, Grimes and Maggio', 'green, grimes and maggio@mailinator.com', '9847066619', '624 Sawayn Grove Apt. 330\nParkertown, MT 44805', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(693, 1, 'Spinka PLC', 'spinka plc@mailinator.com', '9367105132', '568 Howell Drive\nNorth Warrenborough, GA 57315', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(694, 1, 'Johns, Prosacco and Dare', 'johns, prosacco and dare@mailinator.com', '9702057033', '470 Reinger Shores\nAmeliaport, KS 21769-6183', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(695, 1, 'Ruecker-Abernathy', 'ruecker-abernathy@mailinator.com', '9181313118', '673 Kathleen Tunnel\nLynchborough, UT 53698-0201', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(696, 1, 'O\'Conner Group', 'o\'conner group@mailinator.com', '9681390752', '3154 Colleen Coves Suite 421\nBayerstad, HI 31213-8982', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(697, 1, 'Gusikowski-Powlowski', 'gusikowski-powlowski@mailinator.com', '9513509266', '730 Maddison Curve Apt. 350\nNadiaside, IA 41822', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(698, 1, 'Quigley, Kling and D\'Amore', 'quigley, kling and d\'amore@mailinator.com', '9973046194', '2334 Adelia Bypass\nLesliefort, IL 83281-7825', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(699, 1, 'Schuppe, VonRueden and Kovacek', 'schuppe, vonrueden and kovacek@mailinator.com', '9749963623', '521 Isaac Expressway\nPort Dellatown, TN 95459', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(700, 1, 'Huels, Cormier and Kunze', 'huels, cormier and kunze@mailinator.com', '9156636180', '9893 Marina Spring Apt. 058\nMaximefort, MO 31365-6432', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(701, 1, 'Wilkinson, Swaniawski and Lesch', 'wilkinson, swaniawski and lesch@mailinator.com', '9993772757', '66693 Champlin Parkway\nSadiefurt, WA 87371-0703', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(702, 1, 'Sanford-Jerde', 'sanford-jerde@mailinator.com', '9283604043', '31034 Corwin Circles Apt. 643\nNorth Jennyfertown, NV 64762-6466', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(703, 1, 'Paucek and Sons', 'paucek and sons@mailinator.com', '9624672933', '73891 Vivian Divide\nLake Jessie, LA 00625-6816', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(704, 1, 'McGlynn, Gusikowski and Robel', 'mcglynn, gusikowski and robel@mailinator.com', '9598721529', '9788 Russel Haven\nSouth Raeganville, VA 41530-3670', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(705, 1, 'Borer-Kreiger', 'borer-kreiger@mailinator.com', '9382172479', '64435 Adaline Burgs Apt. 762\nEast John, DC 42512', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(706, 1, 'Gaylord-DuBuque', 'gaylord-dubuque@mailinator.com', '9864553293', '33602 Jocelyn Trail Suite 845\nWest Garnetshire, AR 35287-5803', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(707, 1, 'Prohaska PLC', 'prohaska plc@mailinator.com', '9409826070', '3657 Doyle Pass Suite 781\nHahnfurt, NY 77319', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(708, 1, 'Cronin-Durgan', 'cronin-durgan@mailinator.com', '9895970066', '52524 Zane Path Apt. 636\nEfrenmouth, AR 25186', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(709, 1, 'Schowalter, Lind and Gerlach', 'schowalter, lind and gerlach@mailinator.com', '9640004752', '69194 Becker Neck Suite 639\nNorth Erik, NY 87149', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(710, 1, 'Zulauf-Kassulke', 'zulauf-kassulke@mailinator.com', '9931815091', '442 Turcotte Tunnel Apt. 684\nPort Dortha, CO 42891', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(711, 1, 'Toy, Ward and Bailey', 'toy, ward and bailey@mailinator.com', '9570755290', '375 Daugherty Skyway Suite 784\nAlexzanderview, CO 14228', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(712, 1, 'Zboncak PLC', 'zboncak plc@mailinator.com', '9257533942', '4334 Heathcote Club\nNorth Kane, TN 62083', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(713, 1, 'Altenwerth LLC', 'altenwerth llc@mailinator.com', '9919979382', '6477 Isac Lakes\nIsaiasside, WI 74461', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(714, 1, 'Gorczany Ltd', 'gorczany ltd@mailinator.com', '9591792933', '65708 Marianne Pine Apt. 865\nLake Thalialand, VT 58384', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(715, 1, 'Wyman, Purdy and Labadie', 'wyman, purdy and labadie@mailinator.com', '9790913174', '3782 Murazik Well Suite 328\nLeorastad, WV 29009', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(716, 1, 'Johns, Prosacco and Kutch', 'johns, prosacco and kutch@mailinator.com', '9485314491', '608 Robel Place Suite 379\nRaymundoport, SD 23287-7986', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(717, 1, 'Collins-Wiegand', 'collins-wiegand@mailinator.com', '9080019576', '340 Pagac Corner\nLake Bennie, DE 38996-3767', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(718, 1, 'Mills and Sons', 'mills and sons@mailinator.com', '9202831830', '10306 Jerde Estates\nPort Eusebioberg, WA 27479-1172', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(719, 1, 'Jones-Langosh', 'jones-langosh@mailinator.com', '9828641013', '3488 Robin Fort\nFeiltown, FL 26569', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(720, 1, 'Moen, Schamberger and Stokes', 'moen, schamberger and stokes@mailinator.com', '9931649823', '113 Carrie Creek Apt. 472\nSchummfort, TN 02600-5427', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(721, 1, 'Kling Ltd', 'kling ltd@mailinator.com', '9394290968', '58419 Destany Spurs Suite 104\nSisterstad, DE 03162-3815', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(722, 1, 'Goldner-Orn', 'goldner-orn@mailinator.com', '9758493352', '703 Otho Bypass Apt. 433\nPort Biankaland, WV 76214', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(723, 1, 'Nader Inc', 'nader inc@mailinator.com', '9358327519', '9419 Klein Mews\nDominicside, OH 72119', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(724, 1, 'Moore-Kuhlman', 'moore-kuhlman@mailinator.com', '9286681134', '98576 Destany Ramp\nRicebury, TN 66760', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(725, 1, 'Bernier-Schamberger', 'bernier-schamberger@mailinator.com', '9152037774', '81156 Art Burgs\nEast Shirleyport, NY 12157-8562', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(726, 1, 'Nitzsche, McDermott and Bins', 'nitzsche, mcdermott and bins@mailinator.com', '9930409655', '5230 Camylle Dale\nGoyettetown, NY 17864', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(727, 1, 'Wilkinson, Lowe and Brakus', 'wilkinson, lowe and brakus@mailinator.com', '9991132216', '318 Roy Radial Suite 087\nFrancescaport, WA 15825-4388', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(728, 1, 'Raynor, Lehner and Renner', 'raynor, lehner and renner@mailinator.com', '9834240567', '57795 Dominic Corners\nBoscoton, VA 31288', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(729, 1, 'Greenfelder-Friesen', 'greenfelder-friesen@mailinator.com', '9775578862', '6967 Angelina Village\nNew Shanna, MO 26213', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(730, 1, 'Kunze and Sons', 'kunze and sons@mailinator.com', '9982545256', '34328 Schuster Parks\nPort Ryann, VT 37793', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(731, 1, 'O\'Hara, Wintheiser and Swaniawski', 'o\'hara, wintheiser and swaniawski@mailinator.com', '9041528313', '4448 Breitenberg Locks Suite 302\nDamienborough, DE 04730-2288', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(732, 1, 'Ondricka-Goldner', 'ondricka-goldner@mailinator.com', '9302149810', '92274 Vivianne Brook Apt. 741\nForrestchester, KY 52479', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(733, 1, 'Wuckert, Jerde and Russel', 'wuckert, jerde and russel@mailinator.com', '9103644009', '311 Breitenberg Square Suite 046\nLake Chadburgh, OH 19957', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(734, 1, 'Olson Group', 'olson group@mailinator.com', '9914718675', '30634 Stanley Mills Apt. 216\nPagacstad, DE 57290-2859', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(735, 1, 'Heidenreich, Carroll and Schneider', 'heidenreich, carroll and schneider@mailinator.com', '9922778809', '31722 Angelita Spurs Suite 205\nPort Ernest, AK 67712', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(736, 1, 'Parisian, Bogisich and Skiles', 'parisian, bogisich and skiles@mailinator.com', '9690015492', '8197 Christiansen Gardens\nVivaland, WA 89087-7554', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(737, 1, 'Rohan Ltd', 'rohan ltd@mailinator.com', '9601046726', '369 Kiehn Trail Apt. 772\nKobeport, SC 73925-9176', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(738, 1, 'D\'Amore-Donnelly', 'd\'amore-donnelly@mailinator.com', '9409286459', '6591 Morar Fall\nNew Nellaberg, IN 64961-7408', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(739, 1, 'O\'Conner, Veum and Kuphal', 'o\'conner, veum and kuphal@mailinator.com', '9739485487', '7872 Nader Hills Suite 433\nBaumbachberg, KS 52255', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(740, 1, 'Gorczany Ltd', 'gorczany ltd@mailinator.com', '9158836377', '27312 Wiegand Land Suite 970\nDooleyshire, NJ 66394-4527', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(741, 1, 'Cremin-Terry', 'cremin-terry@mailinator.com', '9610394709', '53324 Claudie Trafficway Apt. 588\nLeolaville, DE 94757', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(742, 1, 'Bayer-Daugherty', 'bayer-daugherty@mailinator.com', '9014365823', '505 Eleazar Neck Suite 138\nEast Amelyville, MT 66512-8805', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(743, 1, 'Stokes Inc', 'stokes inc@mailinator.com', '9530028130', '7892 Hickle Green Suite 481\nLake Cristal, ND 54755-7716', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(744, 1, 'Graham, Herzog and Schaden', 'graham, herzog and schaden@mailinator.com', '9378173685', '54378 Kennedi Gardens\nPort Geo, KS 93239-0648', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(745, 1, 'Russel-Stoltenberg', 'russel-stoltenberg@mailinator.com', '9994857362', '9550 Windler Ville Apt. 884\nHermanside, MT 57796', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(746, 1, 'Crona Group', 'crona group@mailinator.com', '9629279139', '6873 Kari Springs Suite 451\nSouth Cadeborough, NM 53075', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(747, 1, 'Reilly, Will and Boyle', 'reilly, will and boyle@mailinator.com', '9652808505', '54249 Stracke Wells\nKunzebury, MT 77237', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(748, 1, 'Tremblay-Boyle', 'tremblay-boyle@mailinator.com', '9007622512', '9571 Schultz Avenue\nNew Rubie, OH 83712', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(749, 1, 'Wolf, Mann and Schultz', 'wolf, mann and schultz@mailinator.com', '9459158998', '4214 Dale Bypass Apt. 429\nKuhnbury, HI 20267', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL),
(750, 1, 'Feeney Ltd', 'feeney ltd@mailinator.com', '9118758285', '456 Prohaska Plaza\nNew Lomastad, NC 36058-2482', 1, '2026-08-12 12:07:00', '2026-08-12 12:07:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitor_log`
--

CREATE TABLE `visitor_log` (
  `id` bigint UNSIGNED NOT NULL,
  `school_id` bigint UNSIGNED NOT NULL,
  `academic_year_id` int UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `student_id` int UNSIGNED DEFAULT NULL,
  `relation_with_student` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_visitors` int DEFAULT NULL,
  `visiting_purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int UNSIGNED DEFAULT NULL,
  `date_of_visit` date NOT NULL,
  `entry_time` time DEFAULT NULL,
  `exit_time` time DEFAULT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absent_reasons`
--
ALTER TABLE `absent_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_years_school_id_foreign` (`school_id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `address_locations`
--
ALTER TABLE `address_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admissions_father_email_unique` (`father_email`),
  ADD UNIQUE KEY `admissions_mother_email_unique` (`mother_email`),
  ADD KEY `admissions_school_id_foreign` (`school_id`),
  ADD KEY `admissions_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `admissions_standard_id_foreign` (`standard_id`),
  ADD KEY `admissions_father_qualification_id_foreign` (`father_qualification_id`),
  ADD KEY `admissions_mother_qualification_id_foreign` (`mother_qualification_id`),
  ADD KEY `admissions_section_id_foreign` (`section_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_school_id_foreign` (`school_id`),
  ADD KEY `assignments_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `assignments_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `assignments_subject_id_foreign` (`subject_id`),
  ADD KEY `assignments_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `assignment_approvals`
--
ALTER TABLE `assignment_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_approvals_assignment_id_foreign` (`assignment_id`),
  ADD KEY `assignment_approvals_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_school_id_foreign` (`school_id`),
  ADD KEY `attendances_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `attendances_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`),
  ADD KEY `attendances_reason_id_foreign` (`reason_id`),
  ADD KEY `attendances_recorded_by_foreign` (`recorded_by`);

--
-- Indexes for table `authentications`
--
ALTER TABLE `authentications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authentications_user_id_foreign` (`user_id`);

--
-- Indexes for table `background_images`
--
ALTER TABLE `background_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `background_images_school_id_foreign` (`school_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_school_id_foreign` (`school_id`),
  ADD KEY `books_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `books_category`
--
ALTER TABLE `books_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_school_id_foreign` (`school_id`);

--
-- Indexes for table `books_lending`
--
ALTER TABLE `books_lending`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_lending_user_id_foreign` (`user_id`),
  ADD KEY `books_lending_issued_by_foreign` (`issued_by`);

--
-- Indexes for table `call_log`
--
ALTER TABLE `call_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `call_log_school_id_foreign` (`school_id`),
  ADD KEY `call_log_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapters_school_id_foreign` (`school_id`),
  ADD KEY `chapters_standard_id_foreign` (`standard_id`),
  ADD KEY `chapters_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `class_room_pages`
--
ALTER TABLE `class_room_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_room_pages_school_id_foreign` (`school_id`),
  ADD KEY `class_room_pages_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `class_room_pages_category_id_foreign` (`category_id`),
  ADD KEY `class_room_pages_created_by_foreign` (`created_by`);

--
-- Indexes for table `class_room_page_attachments`
--
ALTER TABLE `class_room_page_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_room_page_attachments_page_id_foreign` (`page_id`);

--
-- Indexes for table `class_room_page_categories`
--
ALTER TABLE `class_room_page_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_room_page_categories_school_id_foreign` (`school_id`),
  ADD KEY `class_room_page_categories_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `class_room_page_details`
--
ALTER TABLE `class_room_page_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_room_page_details_user_id_foreign` (`user_id`),
  ADD KEY `class_room_page_details_page_id_foreign` (`page_id`);

--
-- Indexes for table `class_teacher_links`
--
ALTER TABLE `class_teacher_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_teacher_links_school_id_foreign` (`school_id`),
  ADD KEY `class_teacher_links_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `class_teacher_links_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `class_teacher_links_subject_id_foreign` (`subject_id`),
  ADD KEY `class_teacher_links_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_school_id_foreign` (`school_id`),
  ADD KEY `conversations_user_one_foreign` (`user_one`),
  ADD KEY `conversations_user_two_foreign` (`user_two`);

--
-- Indexes for table `conversation_chat`
--
ALTER TABLE `conversation_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversation_messages`
--
ALTER TABLE `conversation_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_messages_conversation_id_index` (`conversation_id`),
  ADD KEY `conversation_messages_user_id_index` (`user_id`);

--
-- Indexes for table `conversation_user`
--
ALTER TABLE `conversation_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_user_conversation_id_index` (`conversation_id`),
  ADD KEY `conversation_user_user_id_index` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_short_name_unique` (`short_name`);

--
-- Indexes for table `disciplines`
--
ALTER TABLE `disciplines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disciplines_school_id_foreign` (`school_id`),
  ADD KEY `disciplines_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `disciplines_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `disciplines_user_id_foreign` (`user_id`),
  ADD KEY `disciplines_reported_by_foreign` (`reported_by`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_user_id_name_version_unique` (`user_id`,`name`,`version`),
  ADD KEY `documents_school_id_foreign` (`school_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_school_id_foreign` (`school_id`),
  ADD KEY `events_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `events_standard_id_foreign` (`standard_id`),
  ADD KEY `events_created_by_foreign` (`created_by`),
  ADD KEY `events_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `event_galleries`
--
ALTER TABLE `event_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_galleries_school_id_foreign` (`school_id`),
  ADD KEY `event_galleries_event_id_foreign` (`event_id`),
  ADD KEY `event_galleries_created_by_foreign` (`created_by`),
  ADD KEY `event_galleries_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_school_id_foreign` (`school_id`),
  ADD KEY `feedbacks_parent_id_foreign` (`parent_id`),
  ADD KEY `feedbacks_student_id_foreign` (`student_id`),
  ADD KEY `feedbacks_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `feedback_messages`
--
ALTER TABLE `feedback_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_messages_school_id_foreign` (`school_id`),
  ADD KEY `feedback_messages_user_id_foreign` (`user_id`),
  ADD KEY `feedback_messages_feedback_id_foreign` (`feedback_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fees_school_id_foreign` (`school_id`),
  ADD KEY `fees_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `fees_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `fees_fee_group_id_foreign` (`fee_group_id`);

--
-- Indexes for table `fee_group`
--
ALTER TABLE `fee_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_group_school_id_foreign` (`school_id`);

--
-- Indexes for table `fee_payments`
--
ALTER TABLE `fee_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_payments_fee_id_foreign` (`fee_id`),
  ADD KEY `fee_payments_user_id_foreign` (`user_id`),
  ADD KEY `fee_payments_created_by_foreign` (`created_by`),
  ADD KEY `fee_payments_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_standardlink_id_foreign` (`standardLink_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_members_group_id_foreign` (`group_id`);

--
-- Indexes for table `homeworks`
--
ALTER TABLE `homeworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeworks_school_id_foreign` (`school_id`),
  ADD KEY `homeworks_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `homeworks_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `homeworks_subject_id_foreign` (`subject_id`),
  ADD KEY `homeworks_teacher_id_foreign` (`teacher_id`),
  ADD KEY `homeworks_created_by_foreign` (`created_by`),
  ADD KEY `homeworks_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `homework_approvals`
--
ALTER TABLE `homework_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homework_approvals_homework_id_foreign` (`homework_id`),
  ADD KEY `homework_approvals_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_types_school_id_foreign` (`school_id`),
  ADD KEY `leave_types_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `lesson_plans`
--
ALTER TABLE `lesson_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_plans_teacher_link_id_foreign` (`teacher_link_id`);

--
-- Indexes for table `lesson_plan_approvals`
--
ALTER TABLE `lesson_plan_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_plan_approvals_lesson_plan_id_foreign` (`lesson_plan_id`),
  ADD KEY `lesson_plan_approvals_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `library_card`
--
ALTER TABLE `library_card`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `library_card_library_card_no_unique` (`library_card_no`),
  ADD KEY `library_card_school_id_foreign` (`school_id`),
  ADD KEY `library_card_user_id_foreign` (`user_id`);

--
-- Indexes for table `magazines`
--
ALTER TABLE `magazines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `magazines_school_id_foreign` (`school_id`),
  ADD KEY `magazines_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `mailtemplates`
--
ALTER TABLE `mailtemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_school_id_foreign` (`school_id`),
  ADD KEY `messages_user_id_foreign` (`user_id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_sc_grade`
--
ALTER TABLE `non_sc_grade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `non_sc_grade_school_id_foreign` (`school_id`),
  ADD KEY `non_sc_grade_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_school_id_foreign` (`school_id`),
  ADD KEY `notes_created_by_foreign` (`created_by`),
  ADD KEY `notes_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_board_school_id_foreign` (`school_id`),
  ADD KEY `notice_board_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `notice_board_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `notice_board_background_id_foreign` (`background_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_school_id_foreign` (`school_id`),
  ADD KEY `notification_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `parent_profiles`
--
ALTER TABLE `parent_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_profiles_school_id_foreign` (`school_id`),
  ADD KEY `parent_profiles_user_id_foreign` (`user_id`),
  ADD KEY `parent_profiles_qualification_id_foreign` (`qualification_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payrolls_school_id_foreign` (`school_id`),
  ADD KEY `payrolls_staff_id_foreign` (`staff_id`),
  ADD KEY `payrolls_salary_id_foreign` (`salary_id`);

--
-- Indexes for table `payroll_items`
--
ALTER TABLE `payroll_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_templates`
--
ALTER TABLE `payroll_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_templates_school_id_foreign` (`school_id`),
  ADD KEY `payroll_templates_created_by_foreign` (`created_by`);

--
-- Indexes for table `payroll_transactions`
--
ALTER TABLE `payroll_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_transactions_school_id_foreign` (`school_id`),
  ADD KEY `payroll_transactions_paytype_id_foreign` (`paytype_id`),
  ADD KEY `payroll_transactions_account_id_foreign` (`account_id`),
  ADD KEY `payroll_transactions_staff_id_foreign` (`staff_id`),
  ADD KEY `payroll_transactions_payroll_id_foreign` (`payroll_id`);

--
-- Indexes for table `payslip_items`
--
ALTER TABLE `payslip_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payslip_items_payroll_id_foreign` (`payroll_id`),
  ADD KEY `payslip_items_salary_item_id_foreign` (`salary_item_id`);

--
-- Indexes for table `pay_categories`
--
ALTER TABLE `pay_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postal_record`
--
ALTER TABLE `postal_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_record_school_id_foreign` (`school_id`),
  ADD KEY `postal_record_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_school_id_foreign` (`school_id`),
  ADD KEY `posts_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `posts_visible_for_foreign` (`visible_for`),
  ADD KEY `posts_created_by_foreign` (`created_by`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_comment_details`
--
ALTER TABLE `post_comment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comment_details_user_id_foreign` (`user_id`),
  ADD KEY `post_comment_details_post_comment_id_foreign` (`post_comment_id`);

--
-- Indexes for table `post_details`
--
ALTER TABLE `post_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_details_user_id_foreign` (`user_id`),
  ADD KEY `post_details_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `post_tags_post_id_foreign` (`post_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_school_id_foreign` (`school_id`),
  ADD KEY `promotions_user_id_foreign` (`user_id`),
  ADD KEY `promotions_current_academic_year_id_foreign` (`current_academic_year_id`),
  ADD KEY `promotions_current_standard_id_foreign` (`current_standard_id`),
  ADD KEY `promotions_current_section_id_foreign` (`current_section_id`),
  ADD KEY `promotions_next_academic_year_id_foreign` (`next_academic_year_id`),
  ADD KEY `promotions_next_standard_id_foreign` (`next_standard_id`),
  ADD KEY `promotions_next_section_id_foreign` (`next_section_id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_school_id_foreign` (`school_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_school_id_foreign` (`school_id`),
  ADD KEY `salaries_staff_id_foreign` (`staff_id`),
  ADD KEY `salaries_template_id_foreign` (`template_id`);

--
-- Indexes for table `salary_items`
--
ALTER TABLE `salary_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_items_salary_id_foreign` (`salary_id`),
  ADD KEY `salary_items_template_item_id_foreign` (`template_item_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schools_name_unique` (`name`),
  ADD UNIQUE KEY `schools_email_unique` (`email`),
  ADD UNIQUE KEY `schools_phone_unique` (`phone`),
  ADD KEY `schools_country_id_foreign` (`country_id`),
  ADD KEY `schools_state_id_foreign` (`state_id`),
  ADD KEY `schools_city_id_foreign` (`city_id`);

--
-- Indexes for table `school_details`
--
ALTER TABLE `school_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_details_school_id_foreign` (`school_id`);

--
-- Indexes for table `sc_grade`
--
ALTER TABLE `sc_grade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sc_grade_school_id_foreign` (`school_id`),
  ADD KEY `sc_grade_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_school_id_foreign` (`school_id`);

--
-- Indexes for table `send_mail`
--
ALTER TABLE `send_mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_mail_school_id_foreign` (`school_id`),
  ADD KEY `send_mail_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `send_mail_user_id_foreign` (`user_id`),
  ADD KEY `send_mail_student_id_foreign` (`student_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standards`
--
ALTER TABLE `standards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `standards_slug_unique` (`slug`),
  ADD KEY `standards_school_id_foreign` (`school_id`);

--
-- Indexes for table `standards_link`
--
ALTER TABLE `standards_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `standards_link_school_id_foreign` (`school_id`),
  ADD KEY `standards_link_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `standards_link_class_teacher_id_foreign` (`class_teacher_id`),
  ADD KEY `standards_link_standard_id_foreign` (`standard_id`),
  ADD KEY `standards_link_section_id_foreign` (`section_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `student_academics`
--
ALTER TABLE `student_academics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_academics_school_id_foreign` (`school_id`),
  ADD KEY `student_academics_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `student_academics_user_id_foreign` (`user_id`),
  ADD KEY `student_academics_standardlink_id_foreign` (`standardLink_id`);

--
-- Indexes for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_assignments_assignment_id_foreign` (`assignment_id`),
  ADD KEY `student_assignments_user_id_foreign` (`user_id`),
  ADD KEY `student_assignments_marks_given_by_foreign` (`marks_given_by`);

--
-- Indexes for table `student_certificate`
--
ALTER TABLE `student_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_certificate_school_id_foreign` (`school_id`),
  ADD KEY `student_certificate_student_id_foreign` (`student_id`),
  ADD KEY `student_certificate_standardlink_id_foreign` (`standardLink_id`);

--
-- Indexes for table `student_history`
--
ALTER TABLE `student_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_history_school_id_foreign` (`school_id`),
  ADD KEY `student_history_student_id_foreign` (`student_id`),
  ADD KEY `student_history_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `student_homework`
--
ALTER TABLE `student_homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_homework_homework_id_foreign` (`homework_id`),
  ADD KEY `student_homework_user_id_foreign` (`user_id`),
  ADD KEY `student_homework_checked_by_foreign` (`checked_by`);

--
-- Indexes for table `student_parent_links`
--
ALTER TABLE `student_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_parent_links_school_id_foreign` (`school_id`),
  ADD KEY `student_parent_links_parent_id_foreign` (`parent_id`),
  ADD KEY `student_parent_links_student_id_foreign` (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_school_id_foreign` (`school_id`),
  ADD KEY `subjects_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `subjects_standard_id_foreign` (`standard_id`),
  ADD KEY `subjects_section_id_foreign` (`section_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_school_id_foreign` (`school_id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD UNIQUE KEY `taggables_tag_id_taggable_id_taggable_type_unique` (`tag_id`,`taggable_id`,`taggable_type`),
  ADD KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_name_type_unique` (`tag_name`,`type`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_school_id_foreign` (`school_id`),
  ADD KEY `task_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `task_user_id_foreign` (`user_id`);

--
-- Indexes for table `task_assignees`
--
ALTER TABLE `task_assignees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_assignees_task_id_foreign` (`task_id`),
  ADD KEY `task_assignees_user_id_foreign` (`user_id`),
  ADD KEY `task_assignees_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `task_assignees_group_id_foreign` (`group_id`);

--
-- Indexes for table `teacherprofile`
--
ALTER TABLE `teacherprofile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacherprofile_school_id_foreign` (`school_id`),
  ADD KEY `teacherprofile_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `teacherprofile_user_id_foreign` (`user_id`),
  ADD KEY `teacherprofile_qualification_id_foreign` (`qualification_id`),
  ADD KEY `teacherprofile_ug_degree_foreign` (`ug_degree`),
  ADD KEY `teacherprofile_pg_degree_foreign` (`pg_degree`),
  ADD KEY `teacherprofile_reporting_to_foreign` (`reporting_to`);

--
-- Indexes for table `teacher_leave_applications`
--
ALTER TABLE `teacher_leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_leave_applications_school_id_foreign` (`school_id`),
  ADD KEY `teacher_leave_applications_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `teacher_leave_applications_standardlink_id_foreign` (`standardLink_id`),
  ADD KEY `teacher_leave_applications_user_id_foreign` (`user_id`),
  ADD KEY `teacher_leave_applications_reason_id_foreign` (`reason_id`),
  ADD KEY `teacher_leave_applications_leave_type_id_foreign` (`leave_type_id`),
  ADD KEY `teacher_leave_applications_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `telephone_directory`
--
ALTER TABLE `telephone_directory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `telephone_directory_school_id_foreign` (`school_id`);

--
-- Indexes for table `template_items`
--
ALTER TABLE `template_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_items_template_id_foreign` (`template_id`),
  ADD KEY `template_items_item_id_foreign` (`item_id`),
  ADD KEY `template_items_paycategory_id_foreign` (`paycategory_id`);

--
-- Indexes for table `transaction_accounts`
--
ALTER TABLE `transaction_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_accounts_school_id_foreign` (`school_id`),
  ADD KEY `transaction_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_types`
--
ALTER TABLE `transaction_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportations`
--
ALTER TABLE `transportations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transportations_school_id_foreign` (`school_id`),
  ADD KEY `transportations_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usergroups_name_unique` (`name`);

--
-- Indexes for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userprofiles_school_id_foreign` (`school_id`),
  ADD KEY `userprofiles_user_id_foreign` (`user_id`),
  ADD KEY `userprofiles_usergroup_id_foreign` (`usergroup_id`),
  ADD KEY `userprofiles_city_id_foreign` (`city_id`),
  ADD KEY `userprofiles_state_id_foreign` (`state_id`),
  ADD KEY `userprofiles_country_id_foreign` (`country_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_usergroup_id_foreign` (`usergroup_id`),
  ADD KEY `users_school_id_foreign` (`school_id`),
  ADD KEY `users_ref_id_foreign` (`ref_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendors_school_id_foreign` (`school_id`);

--
-- Indexes for table `visitor_log`
--
ALTER TABLE `visitor_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_log_school_id_foreign` (`school_id`),
  ADD KEY `visitor_log_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `visitor_log_student_id_foreign` (`student_id`),
  ADD KEY `visitor_log_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absent_reasons`
--
ALTER TABLE `absent_reasons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `address_locations`
--
ALTER TABLE `address_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_approvals`
--
ALTER TABLE `assignment_approvals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authentications`
--
ALTER TABLE `authentications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `background_images`
--
ALTER TABLE `background_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `books_category`
--
ALTER TABLE `books_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books_lending`
--
ALTER TABLE `books_lending`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `call_log`
--
ALTER TABLE `call_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `class_room_pages`
--
ALTER TABLE `class_room_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_room_page_attachments`
--
ALTER TABLE `class_room_page_attachments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_room_page_categories`
--
ALTER TABLE `class_room_page_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `class_room_page_details`
--
ALTER TABLE `class_room_page_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_teacher_links`
--
ALTER TABLE `class_teacher_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversation_chat`
--
ALTER TABLE `conversation_chat`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversation_messages`
--
ALTER TABLE `conversation_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversation_user`
--
ALTER TABLE `conversation_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `disciplines`
--
ALTER TABLE `disciplines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `event_galleries`
--
ALTER TABLE `event_galleries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_messages`
--
ALTER TABLE `feedback_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_group`
--
ALTER TABLE `fee_group`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fee_payments`
--
ALTER TABLE `fee_payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeworks`
--
ALTER TABLE `homeworks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homework_approvals`
--
ALTER TABLE `homework_approvals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lesson_plans`
--
ALTER TABLE `lesson_plans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson_plan_approvals`
--
ALTER TABLE `lesson_plan_approvals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `library_card`
--
ALTER TABLE `library_card`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `magazines`
--
ALTER TABLE `magazines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mailtemplates`
--
ALTER TABLE `mailtemplates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `non_sc_grade`
--
ALTER TABLE `non_sc_grade`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_board`
--
ALTER TABLE `notice_board`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_profiles`
--
ALTER TABLE `parent_profiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_items`
--
ALTER TABLE `payroll_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payroll_templates`
--
ALTER TABLE `payroll_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_transactions`
--
ALTER TABLE `payroll_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_items`
--
ALTER TABLE `payslip_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_categories`
--
ALTER TABLE `pay_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `postal_record`
--
ALTER TABLE `postal_record`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_comment_details`
--
ALTER TABLE `post_comment_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_details`
--
ALTER TABLE `post_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_items`
--
ALTER TABLE `salary_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_details`
--
ALTER TABLE `school_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sc_grade`
--
ALTER TABLE `sc_grade`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `send_mail`
--
ALTER TABLE `send_mail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `standards`
--
ALTER TABLE `standards`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `standards_link`
--
ALTER TABLE `standards_link`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `student_academics`
--
ALTER TABLE `student_academics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_assignments`
--
ALTER TABLE `student_assignments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_certificate`
--
ALTER TABLE `student_certificate`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_history`
--
ALTER TABLE `student_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_homework`
--
ALTER TABLE `student_homework`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_parent_links`
--
ALTER TABLE `student_parent_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_assignees`
--
ALTER TABLE `task_assignees`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacherprofile`
--
ALTER TABLE `teacherprofile`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher_leave_applications`
--
ALTER TABLE `teacher_leave_applications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telephone_directory`
--
ALTER TABLE `telephone_directory`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_items`
--
ALTER TABLE `template_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_accounts`
--
ALTER TABLE `transaction_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaction_types`
--
ALTER TABLE `transaction_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transportations`
--
ALTER TABLE `transportations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userprofiles`
--
ALTER TABLE `userprofiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=751;

--
-- AUTO_INCREMENT for table `visitor_log`
--
ALTER TABLE `visitor_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD CONSTRAINT `academic_years_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `admissions`
--
ALTER TABLE `admissions`
  ADD CONSTRAINT `admissions_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `admissions_father_qualification_id_foreign` FOREIGN KEY (`father_qualification_id`) REFERENCES `qualifications` (`id`),
  ADD CONSTRAINT `admissions_mother_qualification_id_foreign` FOREIGN KEY (`mother_qualification_id`) REFERENCES `qualifications` (`id`),
  ADD CONSTRAINT `admissions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `admissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `admissions_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards` (`id`);

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `assignments_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `assignments_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `assignments_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `assignments_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `assignment_approvals`
--
ALTER TABLE `assignment_approvals`
  ADD CONSTRAINT `assignment_approvals_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `assignment_approvals_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`);

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `attendances_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `absent_reasons` (`id`),
  ADD CONSTRAINT `attendances_recorded_by_foreign` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `attendances_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `attendances_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `authentications`
--
ALTER TABLE `authentications`
  ADD CONSTRAINT `authentications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `background_images`
--
ALTER TABLE `background_images`
  ADD CONSTRAINT `background_images_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `books_category` (`id`),
  ADD CONSTRAINT `books_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `books_category`
--
ALTER TABLE `books_category`
  ADD CONSTRAINT `books_category_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `books_lending`
--
ALTER TABLE `books_lending`
  ADD CONSTRAINT `books_lending_issued_by_foreign` FOREIGN KEY (`issued_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `books_lending_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `call_log`
--
ALTER TABLE `call_log`
  ADD CONSTRAINT `call_log_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `call_log_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `chapters_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `chapters_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `class_room_pages`
--
ALTER TABLE `class_room_pages`
  ADD CONSTRAINT `class_room_pages_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `class_room_pages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `class_room_page_categories` (`id`),
  ADD CONSTRAINT `class_room_pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `class_room_pages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `class_room_page_attachments`
--
ALTER TABLE `class_room_page_attachments`
  ADD CONSTRAINT `class_room_page_attachments_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `class_room_pages` (`id`);

--
-- Constraints for table `class_room_page_categories`
--
ALTER TABLE `class_room_page_categories`
  ADD CONSTRAINT `class_room_page_categories_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `class_room_page_categories_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `class_room_page_details`
--
ALTER TABLE `class_room_page_details`
  ADD CONSTRAINT `class_room_page_details_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `class_room_pages` (`id`),
  ADD CONSTRAINT `class_room_page_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `class_teacher_links`
--
ALTER TABLE `class_teacher_links`
  ADD CONSTRAINT `class_teacher_links_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `class_teacher_links_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `class_teacher_links_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `class_teacher_links_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `class_teacher_links_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `conversations_user_one_foreign` FOREIGN KEY (`user_one`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `conversations_user_two_foreign` FOREIGN KEY (`user_two`) REFERENCES `users` (`id`);

--
-- Constraints for table `conversation_messages`
--
ALTER TABLE `conversation_messages`
  ADD CONSTRAINT `conversation_messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversation_chat` (`id`),
  ADD CONSTRAINT `conversation_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `conversation_user`
--
ALTER TABLE `conversation_user`
  ADD CONSTRAINT `conversation_user_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversation_chat` (`id`),
  ADD CONSTRAINT `conversation_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `disciplines`
--
ALTER TABLE `disciplines`
  ADD CONSTRAINT `disciplines_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `disciplines_reported_by_foreign` FOREIGN KEY (`reported_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `disciplines_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `disciplines_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `disciplines_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `events_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `events_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `events_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `events_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `event_galleries`
--
ALTER TABLE `event_galleries`
  ADD CONSTRAINT `event_galleries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `event_galleries_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `event_galleries_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `event_galleries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `feedbacks_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `feedbacks_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `feedbacks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `feedback_messages`
--
ALTER TABLE `feedback_messages`
  ADD CONSTRAINT `feedback_messages_feedback_id_foreign` FOREIGN KEY (`feedback_id`) REFERENCES `feedbacks` (`id`),
  ADD CONSTRAINT `feedback_messages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `feedback_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `fees_fee_group_id_foreign` FOREIGN KEY (`fee_group_id`) REFERENCES `fee_group` (`id`),
  ADD CONSTRAINT `fees_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `fees_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`);

--
-- Constraints for table `fee_group`
--
ALTER TABLE `fee_group`
  ADD CONSTRAINT `fee_group_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `fee_payments`
--
ALTER TABLE `fee_payments`
  ADD CONSTRAINT `fee_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fee_payments_fee_id_foreign` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`),
  ADD CONSTRAINT `fee_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fee_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homeworks`
--
ALTER TABLE `homeworks`
  ADD CONSTRAINT `homeworks_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `homeworks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `homeworks_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `homeworks_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `homeworks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `homeworks_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `homeworks_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `homework_approvals`
--
ALTER TABLE `homework_approvals`
  ADD CONSTRAINT `homework_approvals_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `homework_approvals_homework_id_foreign` FOREIGN KEY (`homework_id`) REFERENCES `homeworks` (`id`);

--
-- Constraints for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD CONSTRAINT `leave_types_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `leave_types_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `lesson_plans`
--
ALTER TABLE `lesson_plans`
  ADD CONSTRAINT `lesson_plans_teacher_link_id_foreign` FOREIGN KEY (`teacher_link_id`) REFERENCES `class_teacher_links` (`id`);

--
-- Constraints for table `lesson_plan_approvals`
--
ALTER TABLE `lesson_plan_approvals`
  ADD CONSTRAINT `lesson_plan_approvals_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `lesson_plan_approvals_lesson_plan_id_foreign` FOREIGN KEY (`lesson_plan_id`) REFERENCES `lesson_plans` (`id`);

--
-- Constraints for table `library_card`
--
ALTER TABLE `library_card`
  ADD CONSTRAINT `library_card_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `library_card_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `magazines`
--
ALTER TABLE `magazines`
  ADD CONSTRAINT `magazines_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `magazines_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`),
  ADD CONSTRAINT `messages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `non_sc_grade`
--
ALTER TABLE `non_sc_grade`
  ADD CONSTRAINT `non_sc_grade_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `non_sc_grade_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `notes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `notice_board`
--
ALTER TABLE `notice_board`
  ADD CONSTRAINT `notice_board_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `notice_board_background_id_foreign` FOREIGN KEY (`background_id`) REFERENCES `background_images` (`id`),
  ADD CONSTRAINT `notice_board_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `notice_board_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `notification_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `parent_profiles`
--
ALTER TABLE `parent_profiles`
  ADD CONSTRAINT `parent_profiles_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`),
  ADD CONSTRAINT `parent_profiles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `parent_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD CONSTRAINT `payrolls_salary_id_foreign` FOREIGN KEY (`salary_id`) REFERENCES `salaries` (`id`),
  ADD CONSTRAINT `payrolls_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `payrolls_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payroll_templates`
--
ALTER TABLE `payroll_templates`
  ADD CONSTRAINT `payroll_templates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payroll_templates_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `payroll_transactions`
--
ALTER TABLE `payroll_transactions`
  ADD CONSTRAINT `payroll_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `transaction_accounts` (`id`),
  ADD CONSTRAINT `payroll_transactions_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payroll_transactions_paytype_id_foreign` FOREIGN KEY (`paytype_id`) REFERENCES `transaction_types` (`id`),
  ADD CONSTRAINT `payroll_transactions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `payroll_transactions_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payslip_items`
--
ALTER TABLE `payslip_items`
  ADD CONSTRAINT `payslip_items_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payslip_items_salary_item_id_foreign` FOREIGN KEY (`salary_item_id`) REFERENCES `salary_items` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `postal_record`
--
ALTER TABLE `postal_record`
  ADD CONSTRAINT `postal_record_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `postal_record_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `posts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `posts_visible_for_foreign` FOREIGN KEY (`visible_for`) REFERENCES `standards_link` (`id`);

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_comment_details`
--
ALTER TABLE `post_comment_details`
  ADD CONSTRAINT `post_comment_details_post_comment_id_foreign` FOREIGN KEY (`post_comment_id`) REFERENCES `post_comments` (`id`),
  ADD CONSTRAINT `post_comment_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_details`
--
ALTER TABLE `post_details`
  ADD CONSTRAINT `post_details_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_current_academic_year_id_foreign` FOREIGN KEY (`current_academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `promotions_current_section_id_foreign` FOREIGN KEY (`current_section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `promotions_current_standard_id_foreign` FOREIGN KEY (`current_standard_id`) REFERENCES `standards` (`id`),
  ADD CONSTRAINT `promotions_next_academic_year_id_foreign` FOREIGN KEY (`next_academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `promotions_next_section_id_foreign` FOREIGN KEY (`next_section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `promotions_next_standard_id_foreign` FOREIGN KEY (`next_standard_id`) REFERENCES `standards` (`id`),
  ADD CONSTRAINT `promotions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `promotions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `salaries_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salaries_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `payroll_templates` (`id`);

--
-- Constraints for table `salary_items`
--
ALTER TABLE `salary_items`
  ADD CONSTRAINT `salary_items_salary_id_foreign` FOREIGN KEY (`salary_id`) REFERENCES `salaries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_items_template_item_id_foreign` FOREIGN KEY (`template_item_id`) REFERENCES `template_items` (`id`);

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `schools_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `schools_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `school_details`
--
ALTER TABLE `school_details`
  ADD CONSTRAINT `school_details_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `sc_grade`
--
ALTER TABLE `sc_grade`
  ADD CONSTRAINT `sc_grade_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `sc_grade_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `send_mail`
--
ALTER TABLE `send_mail`
  ADD CONSTRAINT `send_mail_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `send_mail_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `send_mail_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `send_mail_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `standards`
--
ALTER TABLE `standards`
  ADD CONSTRAINT `standards_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `standards_link`
--
ALTER TABLE `standards_link`
  ADD CONSTRAINT `standards_link_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `standards_link_class_teacher_id_foreign` FOREIGN KEY (`class_teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `standards_link_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `standards_link_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `standards_link_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards` (`id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `student_academics`
--
ALTER TABLE `student_academics`
  ADD CONSTRAINT `student_academics_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `student_academics_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `student_academics_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `student_academics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD CONSTRAINT `student_assignments_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`),
  ADD CONSTRAINT `student_assignments_marks_given_by_foreign` FOREIGN KEY (`marks_given_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_assignments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_certificate`
--
ALTER TABLE `student_certificate`
  ADD CONSTRAINT `student_certificate_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `student_certificate_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `student_certificate_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_history`
--
ALTER TABLE `student_history`
  ADD CONSTRAINT `student_history_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_history_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `student_history_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_homework`
--
ALTER TABLE `student_homework`
  ADD CONSTRAINT `student_homework_checked_by_foreign` FOREIGN KEY (`checked_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_homework_homework_id_foreign` FOREIGN KEY (`homework_id`) REFERENCES `homeworks` (`id`),
  ADD CONSTRAINT `student_homework_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_parent_links`
--
ALTER TABLE `student_parent_links`
  ADD CONSTRAINT `student_parent_links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_parent_links_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `student_parent_links_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `subjects_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `subjects_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `subjects_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards` (`id`);

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `subscriptions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `task_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `task_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `task_assignees`
--
ALTER TABLE `task_assignees`
  ADD CONSTRAINT `task_assignees_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_assignees_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `task_assignees_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  ADD CONSTRAINT `task_assignees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `teacherprofile`
--
ALTER TABLE `teacherprofile`
  ADD CONSTRAINT `teacherprofile_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `teacherprofile_pg_degree_foreign` FOREIGN KEY (`pg_degree`) REFERENCES `qualifications` (`id`),
  ADD CONSTRAINT `teacherprofile_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`),
  ADD CONSTRAINT `teacherprofile_reporting_to_foreign` FOREIGN KEY (`reporting_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `teacherprofile_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `teacherprofile_ug_degree_foreign` FOREIGN KEY (`ug_degree`) REFERENCES `qualifications` (`id`),
  ADD CONSTRAINT `teacherprofile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `teacher_leave_applications`
--
ALTER TABLE `teacher_leave_applications`
  ADD CONSTRAINT `teacher_leave_applications_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `teacher_leave_applications_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `teacher_leave_applications_leave_type_id_foreign` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`),
  ADD CONSTRAINT `teacher_leave_applications_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `absent_reasons` (`id`),
  ADD CONSTRAINT `teacher_leave_applications_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `teacher_leave_applications_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  ADD CONSTRAINT `teacher_leave_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `telephone_directory`
--
ALTER TABLE `telephone_directory`
  ADD CONSTRAINT `telephone_directory_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `template_items`
--
ALTER TABLE `template_items`
  ADD CONSTRAINT `template_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `payroll_items` (`id`),
  ADD CONSTRAINT `template_items_paycategory_id_foreign` FOREIGN KEY (`paycategory_id`) REFERENCES `pay_categories` (`id`),
  ADD CONSTRAINT `template_items_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `payroll_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_accounts`
--
ALTER TABLE `transaction_accounts`
  ADD CONSTRAINT `transaction_accounts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `transaction_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transportations`
--
ALTER TABLE `transportations`
  ADD CONSTRAINT `transportations_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `transportations_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD CONSTRAINT `userprofiles_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `userprofiles_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `userprofiles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `userprofiles_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `userprofiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `userprofiles_usergroup_id_foreign` FOREIGN KEY (`usergroup_id`) REFERENCES `usergroups` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ref_id_foreign` FOREIGN KEY (`ref_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `users_usergroup_id_foreign` FOREIGN KEY (`usergroup_id`) REFERENCES `usergroups` (`id`);

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `visitor_log`
--
ALTER TABLE `visitor_log`
  ADD CONSTRAINT `visitor_log_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `visitor_log_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `visitor_log_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `visitor_log_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
