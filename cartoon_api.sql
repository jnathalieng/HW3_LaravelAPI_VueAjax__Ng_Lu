-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 02, 2026 at 05:51 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartoon_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_id` bigint DEFAULT NULL,
  `character_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `type`, `description`, `show_id`, `character_image`, `created_at`, `updated_at`) VALUES
(1, 'Finn the Human', 'hero', 'A brave human boy who loves adventure and helping others.', 1, 'images/characters/Finn.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(2, 'Jake the Dog', 'hero', 'A magical dog with the ability to stretch and shape-shift.', 1, 'images/characters/Jakethedog.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(3, 'Princess Bubblegum', 'side', 'The ruler of the Candy Kingdom and a brilliant scientist.', 1, 'images/characters/PrinBG.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(4, 'Ice King', 'villain', 'A lonely wizard who kidnaps princesses using his ice powers.', 1, 'images/characters/Iceking.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(5, 'Grizzly Bear', 'hero', 'The oldest bear brother, outgoing and enthusiastic.', 2, 'images/characters/GrizzlyBear.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(6, 'Panda Bear', 'hero', 'The middle brother, sensitive and obsessed with his phone.', 2, 'images/characters/PandaBear.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(7, 'Ice Bear', 'hero', 'The youngest brother, quiet and surprisingly skilled at everything.', 2, 'images/characters/IceBear.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(8, 'Chloe Park', 'side', 'A child prodigy and close friend of the bear brothers.', 2, 'images/characters/ChloePark.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(9, 'Blossom', 'hero', 'The leader of the Powerpuff Girls, smart and composed.', 3, 'images/characters/Blossom.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(10, 'Bubbles', 'hero', 'The sweet and sensitive Powerpuff Girl who loves animals.', 3, 'images/characters/Bubbles.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(11, 'Buttercup', 'hero', 'The toughest Powerpuff Girl, aggressive and fearless.', 3, 'images/characters/Buttercup.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(12, 'Mojo Jojo', 'villain', 'An evil genius chimpanzee and the main enemy of the Powerpuff Girls.', 3, 'images/characters/MojoJojo.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(13, 'Hiccup', 'hero', 'A young Viking who forms a bond with a dragon named Toothless.', 4, 'images/characters/Hiccup.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(14, 'Toothless', 'hero', 'A rare Night Fury dragon and Hiccups loyal companion.', 4, 'images/characters/Toothless.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(15, 'Astrid', 'hero', 'A fierce Viking warrior and Hiccups closest ally.', 4, 'images/characters/Astrid.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(16, 'Gobber', 'side', 'The village blacksmith and Hiccups mentor.', 4, 'images/characters/Gobber.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(17, 'Sonic', 'hero', 'The fastest hedgehog alive who protects his island from Eggman.', 5, 'images/characters/Sonic.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(18, 'Tails', 'hero', 'A two-tailed fox genius inventor and Sonics best friend.', 5, 'images/characters/Tails.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(19, 'Amy Rose', 'side', 'An enthusiastic hedgehog who is part of Sonics team.', 5, 'images/characters/AmyRose.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(20, 'Knuckles', 'hero', 'A strong echidna who guards the Master Emerald.', 5, 'images/characters/Knuckles.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(21, 'Charlie Brown', 'hero', 'A lovable, good-natured boy who always tries his best despite bad luck.', 6, 'images/characters/CharlieBrown.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(22, 'Snoopy', 'hero', 'Charlies imaginative beagle with a rich fantasy life.', 6, 'images/characters/Snoopy.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(23, 'Lucy van Pelt', 'side', 'A bossy and opinionated girl who runs a psychiatric booth.', 6, 'images/characters/Lucy.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(24, 'Linus van Pelt', 'side', 'Lucys younger brother, philosophical and inseparable from his blanket.', 6, 'images/characters/Linus.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(25, 'Zak Saturday', 'hero', 'A boy with the ability to control cryptids using his special claw weapon.', 7, 'images/characters/ZakSaturday.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(26, 'Doc Saturday', 'hero', 'Zaks father and a brilliant cryptozoologist.', 7, 'images/characters/DocSaturday.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(27, 'Drew Saturday', 'hero', 'Zaks mother, an expert fighter and cryptid researcher.', 7, 'images/characters/DrewSaturday.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(28, 'V.V. Argost', 'villain', 'A sinister TV host who seeks to control all cryptids.', 7, 'images/characters/V.V.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(29, 'Pink Panther', 'hero', 'A cool and stylish pink panther who always outsmarts his rivals.', 8, 'images/characters/PinkPanther.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(30, 'Big Nose', 'side', 'A bumbling inspector who often clashes with the Pink Panther.', 8, 'images/characters/BigNose.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(31, 'Aardvark', 'villain', 'An aardvark who constantly tries to catch and eat Ant.', 8, 'images/characters/Aardvark.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(32, 'Ant', 'side', 'A tiny ant who uses his wits to outsmart the Aardvark.', 8, 'images/characters/Ant.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(33, 'Lucas', 'hero', 'An adorable jumping spider who is curious and friendly.', 9, 'images/characters/Lucas.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(34, 'Maizie', 'side', 'A cheerful bee who is one of Lucas friends.', 9, 'images/characters/Maizie.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(35, 'Findley', 'side', 'A friendly fly who is one of Lucas companions.', 9, 'images/characters/Findley.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(36, 'Arlo', 'side', 'A curious creature who interacts with Lucas.', 9, 'images/characters/Arlo.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(37, 'Mordecai', 'hero', 'A blue jay who works as a groundskeeper and often causes surreal chaos.', 10, 'images/characters/Mordecai.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(38, 'Rigby', 'hero', 'A raccoon and Mordecais best friend, lazy but lovable.', 10, 'images/characters/Rigby.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(39, 'Benson', 'side', 'The park manager, a gumball machine who is always stressed.', 10, 'images/characters/Benson.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(40, 'Pops', 'side', 'A gentle and naive man who loves the park and its workers.', 10, 'images/characters/Pops.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_04_02_005911_create_personal_access_tokens_table', 1),
(5, '2026_04_02_010132_create_shows_table', 1),
(6, '2026_04_02_010147_create_characters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('PxvzA9hKpwzTlEHnnusxQZVhkQIfrSwh2tHmOyCo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXQySnNra3ZRZ1E5a29CYXhBNjRaakZTVmFPek1aR3VtYWlkQXVFYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1775102016);

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
CREATE TABLE IF NOT EXISTS `shows` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `name`, `year`, `description`, `slug`, `poster_image`, `created_at`, `updated_at`) VALUES
(1, 'Adventure Time', 2010, 'A boy and his magical dog go on adventures in the post-apocalyptic Land of Ooo.', 'adventure-time', 'images/shows/AdventureTime_Wallpaper.jpeg', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(2, 'We Bare Bears', 2015, 'Three bear brothers try to fit in with modern human society in San Francisco.', 'we-bare-bears', 'images/shows/WeBareBears.jpg', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(3, 'The Powerpuff Girls', 1998, 'Three super-powered little girls fight crime and protect Townsville.', 'powerpuff-girls', 'images/shows/PowerpuffGirls.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(4, 'DreamWorks Dragons', 2012, 'Hiccup and Toothless defend their Viking village from threats on the island of Berk.', 'dreamworks-dragons', 'images/shows/Dreamworks_Dragons.jpeg', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(5, 'Sonic Boom', 2014, 'Sonic and his friends protect their island village from the villainous Dr. Eggman.', 'sonic-boom', 'images/shows/SonicBoom.jpeg', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(6, 'Peanuts by Schulz', 1965, 'Charlie Brown and his friends navigate everyday life with humor and heart.', 'peanuts', 'images/shows/PeanutsBySchulz.jpg', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(7, 'The Secret Saturdays', 2008, 'A family of cryptozoologists work to keep dangerous cryptid secrets from the world.', 'secret-saturdays', 'images/shows/thesecretsaturdaysposter.jpg', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(8, 'Pink Panther and Pals', 2010, 'The iconic Pink Panther stars in a series of comedic animated shorts.', 'pink-panther-and-pals', 'images/shows/PinkPantherPoster.jpg', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(9, 'Lucas the Spider', 2018, 'A tiny jumping spider named Lucas explores the world with curiosity and wonder.', 'lucas-the-spider', 'images/shows/Lucasthespider.jpg', '2026-04-02 06:10:53', '2026-04-02 06:10:53'),
(10, 'Regular Show', 2010, 'Two slacker groundskeepers at a park constantly find themselves in surreal situations.', 'regular-show', 'images/shows/RegularShow.png', '2026-04-02 06:10:53', '2026-04-02 06:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
