-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2016 at 02:51 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ysgTask`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE articles (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `article` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO articles (`id`, `Title`, `article`, `created_at`, `updated_at`) VALUES
(5, 'how2', '2', '2016-01-21 05:46:42', '2016-01-21 05:46:42'),
(6, 'Test', 'Hey,there! this is for testing!', '2016-01-21 09:21:53', '2016-01-21 09:21:53'),
(8, 'test', 'This is for testing multiple tags!', '2016-01-21 09:58:28', '2016-01-21 09:58:28'),
(9, 'Teting', 'I''m testing the search tag is working or not', '2016-01-21 14:51:30', '2016-01-21 14:51:30'),
(10, 'Teting', 'I''m testing the search tag is working or not', '2016-01-21 14:53:08', '2016-01-21 14:53:08'),
(11, 'Blog', 'A blog (a truncation of the expression weblog)[1] is a discussion or informational site published on the World Wide Web consisting of discrete entries ("posts") typically displayed in reverse chronological order (the most recent post appears first). Until 2009, blogs were usually the work of a single individual[citation needed], occasionally of a small group, and often covered a single subject. More recently "multi-author blogs" (MABs) have developed, with posts written by large numbers of authors and professionally edited. MABs from newspapers, other media outlets, universities, think tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other "microblogging" systems helps integrate MABs and single-author blogs into societal newstreams. Blog can also be used as a verb, meaning to maintain or add content to a blog.', '2016-01-21 14:54:37', '2016-01-21 14:54:37'),
(12, 'How to Start Your Blog Today', '“How do I start a blog?” TheBlogStarter.com will show you how with our FREE, easy-to-follow step-by-step tutorials. Starting your own blog doesn’t have to be complicated or expensive. In fact, more and more people are starting blogs every day. It seems that just about every person or business has a blog these days. But if you’re like most people, you may not know where to get started. Starting a blog can be intimidating if you don’t have the required technological skills. Not to mention that the number of options available for starting a blog can be just plain confusing. - See more at: http://www.theblogstarter.com/?utm_expid=85277164-28.j4jLWtETQBSntTKvupJhAg.0&utm_referrer=https%3A%2F%2Fwww.google.co.in%2F#sthash.Nsk9B14L.dpuf', '2016-01-21 14:56:44', '2016-01-21 14:56:44'),
(13, 'How to Start Your Blog Today', 'I created this site to give beginners a fast, foolproof guide to starting a blog, without having to learn HTML or waste your time reading long, boring tutorials.\r\n\r\nI also wanted to help you avoid all the expensive mistakes that most people do.\r\n\r\nP.S. This guide is 4,000 words long which means roughly 20 minutes of reading. So grab yourself a tea, coffee or juice (whichever you prefer) and start with STEP 1. If you get stuck, send me an email and I’ll do my best to help you out.', '2016-01-21 15:23:42', '2016-01-21 15:23:42'),
(14, 'hellofoodie', 'ots of food on the table', '2016-01-23 02:55:57', '2016-01-23 02:55:57'),
(15, 'Pulse Rate', 'How to check pulse rate and what should be the normal rate.\r\n', '2016-01-24 10:39:11', '2016-01-24 10:39:11'),
(16, 'redirect', 'This is for testing redirecting pages', '2016-01-26 12:01:55', '2016-01-26 12:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `articletags`
--

CREATE TABLE `articletags` (
  `articles_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articletags`
--

INSERT INTO `articletags` (`articles_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(5, 13, '2016-01-21 11:16:42', '0000-00-00 00:00:00'),
(6, 14, '2016-01-21 14:51:53', '0000-00-00 00:00:00'),
(8, 14, '2016-01-21 15:28:28', '0000-00-00 00:00:00'),
(9, 14, '2016-01-21 20:21:30', '0000-00-00 00:00:00'),
(10, 14, '2016-01-21 20:23:08', '0000-00-00 00:00:00'),
(10, 15, '2016-01-21 20:23:08', '0000-00-00 00:00:00'),
(11, 16, '2016-01-21 20:24:37', '0000-00-00 00:00:00'),
(12, 16, '2016-01-21 20:26:44', '0000-00-00 00:00:00'),
(12, 17, '2016-01-21 20:26:45', '0000-00-00 00:00:00'),
(12, 18, '2016-01-21 20:26:45', '0000-00-00 00:00:00'),
(13, 16, '2016-01-21 20:53:42', '0000-00-00 00:00:00'),
(13, 17, '2016-01-21 20:53:42', '0000-00-00 00:00:00'),
(13, 18, '2016-01-21 20:53:42', '0000-00-00 00:00:00'),
(14, 15, '2016-01-23 08:25:57', '0000-00-00 00:00:00'),
(15, 19, '2016-01-24 16:09:13', '0000-00-00 00:00:00'),
(16, 20, '2016-01-24 16:11:47', '0000-00-00 00:00:00'),
(16, 20, '2016-01-26 17:31:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smsdb`
--

CREATE TABLE `smsdb` (
  `Id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `Text` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smsdb`
--

INSERT INTO `smsdb` (`Id`, `phone`, `Text`) VALUES
(14, '9007349422', 'hi there'),
(15, '9033886688', 'aHHfkcd');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tagsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tagsName`, `created_at`, `updated_at`) VALUES
(13, '2yelo', '2016-01-21 05:46:42', '2016-01-21 05:46:42'),
(14, 'test', '2016-01-21 09:21:53', '2016-01-21 09:21:53'),
(15, 'food', '2016-01-21 14:53:08', '2016-01-21 14:53:08'),
(16, 'blog', '2016-01-21 14:54:37', '2016-01-21 14:54:37'),
(17, 'howto', '2016-01-21 14:56:44', '2016-01-21 14:56:44'),
(18, 'create', '2016-01-21 14:56:45', '2016-01-21 14:56:45'),
(19, 'pulse rate', '2016-01-24 10:39:13', '2016-01-24 10:39:13'),
(20, 'redirect', '2016-01-26 12:01:56', '2016-01-26 12:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articletags`
--
ALTER TABLE `articletags`
  ADD KEY `articletags_articles_id_index` (`articles_id`),
  ADD KEY `articletags_tag_id_index` (`tag_id`);

--
-- Indexes for table `smsdb`
--
ALTER TABLE `smsdb`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `smsdb`
--
ALTER TABLE `smsdb`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
