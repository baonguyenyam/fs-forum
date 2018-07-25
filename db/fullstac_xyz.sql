-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2018 at 08:11 AM
-- Server version: 10.1.31-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fullstac_xyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `fvf_access_tokens`
--

CREATE TABLE `fvf_access_tokens` (
  `id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_activity` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_access_tokens`
--

INSERT INTO `fvf_access_tokens` (`id`, `user_id`, `last_activity`, `lifetime`) VALUES
('1f98iGDDgKZeyElvWUVDOKP6uRR5bD3UtKBmCtBO', 14, 1532422033, 157680000),
('a6rGTwWlGrB75WAfwZFQBMpIHuVkK5UBcVhSp9xf', 15, 1532422422, 157680000),
('AbheVihTp2C9iTV7GZSO2NlHhk3WOhtuLf2OYlCT', 11, 1532418884, 157680000),
('F9EVW0zicKDFmvK6S8RKzomndij8xM9BIf6ywG7Q', 6, 1532416242, 157680000),
('fXiCuXaUxDl2tvNXLbOH4y1cuTS5JEfK9QoWla4d', 13, 1532419238, 157680000),
('GZm63zYNw1ADJlMyzuO0aMQyy9pPNWB57jd8HBIl', 5, 1532446805, 157680000),
('IDxAu0dqbrkwA0fL8HXByyQfKEHnLXh9peD41cHS', 1, 1532480261, 157680000),
('iE0eR8R13K8ojYrhYIYkXIPGhiWtASH7H2EThhh1', 12, 1532419079, 157680000),
('jkuRvHW8yK1NaSCYkPWmH8vNzY2XBHUCauu5Xg9w', 10, 1532417624, 157680000),
('NRyhYcyqMZs87pMCafiJF57dPnziDeqwSebJsbNH', 4, 1532415918, 157680000),
('Nxhv6S2U14qcHaX815fc8PB8bYzS0NrE1B3UIHaI', 5, 1532416388, 157680000),
('q8DGFk5IRZtub9R5AQ06JufQ9ZDEFMgPIrmVpPQn', 3, 1532415963, 157680000),
('qVZahyy5VfW3W54lpIWsqqU1oACSk4ia2Tsylqy7', 2, 1532415756, 157680000),
('VsOnyNNHIFeMm74m1D8LeghZMI73SANmKQkSOkWb', 9, 1532417063, 157680000),
('yW9lvVAQPpyRSncWE4Jwety9dGoVzI5Lrui4DRd1', 8, 1532478880, 157680000),
('zevKN6juHipDhZoqwPIu8YbU3Rzt9BQEYBHZoLo9', 1, 1532417028, 157680000),
('ztUlyKP2iNxnCbVacqj7GYuE3tK6pnqdCnIoI6Bu', 7, 1532425041, 157680000);

-- --------------------------------------------------------

--
-- Table structure for table `fvf_api_keys`
--

CREATE TABLE `fvf_api_keys` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_auth_tokens`
--

CREATE TABLE `fvf_auth_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_auth_tokens`
--

INSERT INTO `fvf_auth_tokens` (`id`, `payload`, `created_at`) VALUES
('RBVtjO4tqSIuNd3yQtuSrH5SQ0AmxnxzrjXiQMXY', '{\"email\":\"kaikudo1999@gmail.com\"}', '2018-07-24 00:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `fvf_discussions`
--

CREATE TABLE `fvf_discussions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `participants_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_index` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL,
  `start_user_id` int(10) UNSIGNED DEFAULT NULL,
  `start_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `last_user_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_id` int(10) UNSIGNED DEFAULT NULL,
  `last_post_number` int(10) UNSIGNED DEFAULT NULL,
  `hide_time` datetime DEFAULT NULL,
  `hide_user_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `best_answer_post_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_discussions_tags`
--

CREATE TABLE `fvf_discussions_tags` (
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_discussions_tags`
--

INSERT INTO `fvf_discussions_tags` (`discussion_id`, `tag_id`) VALUES
(1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `fvf_email_tokens`
--

CREATE TABLE `fvf_email_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_email_tokens`
--

INSERT INTO `fvf_email_tokens` (`id`, `email`, `user_id`, `created_at`) VALUES
('fPn1sSHigjbi3hMvbL2xJOPzCtY0qcWVum7UP2Ho', 'quyentlps07598@fpt.edu.vn', 13, '2018-07-24 00:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `fvf_flagrow_files`
--

CREATE TABLE `fvf_flagrow_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED DEFAULT NULL,
  `discussion_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `base_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `upload_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remote_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_flagrow_files`
--

INSERT INTO `fvf_flagrow_files` (`id`, `actor_id`, `discussion_id`, `post_id`, `base_name`, `path`, `url`, `type`, `size`, `upload_method`, `created_at`, `remote_id`, `uuid`, `tag`) VALUES
(1, 1, NULL, NULL, '6.jpeg', '2018-07-25/1532480246-832005-6.jpeg', 'https://fullstackvietnam.xyz/assets/files/2018-07-25/1532480246-832005-6.jpeg', 'image/jpeg', 70886, 'local', '0000-00-00 00:00:00', NULL, 'dea2f203-bb6d-40ce-b919-fec28961b1c3', 'image-preview');

-- --------------------------------------------------------

--
-- Table structure for table `fvf_flagrow_file_downloads`
--

CREATE TABLE `fvf_flagrow_file_downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `actor_id` int(10) UNSIGNED DEFAULT NULL,
  `downloaded_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_flags`
--

CREATE TABLE `fvf_flags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_groups`
--

CREATE TABLE `fvf_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_singular` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_plural` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_groups`
--

INSERT INTO `fvf_groups` (`id`, `name_singular`, `name_plural`, `color`, `icon`) VALUES
(1, 'Admin', 'Admins', '#B72A2A', 'wrench'),
(2, 'Guest', 'Guests', NULL, NULL),
(3, 'Member', 'Members', NULL, NULL),
(4, 'Mod', 'Mods', '#80349E', 'bolt');

-- --------------------------------------------------------

--
-- Table structure for table `fvf_mentions_posts`
--

CREATE TABLE `fvf_mentions_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_mentions_users`
--

CREATE TABLE `fvf_mentions_users` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `mentions_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_migrations`
--

CREATE TABLE `fvf_migrations` (
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_migrations`
--

INSERT INTO `fvf_migrations` (`migration`, `extension`) VALUES
('2015_02_24_000000_create_access_tokens_table', NULL),
('2015_02_24_000000_create_api_keys_table', NULL),
('2015_02_24_000000_create_config_table', NULL),
('2015_02_24_000000_create_discussions_table', NULL),
('2015_02_24_000000_create_email_tokens_table', NULL),
('2015_02_24_000000_create_groups_table', NULL),
('2015_02_24_000000_create_notifications_table', NULL),
('2015_02_24_000000_create_password_tokens_table', NULL),
('2015_02_24_000000_create_permissions_table', NULL),
('2015_02_24_000000_create_posts_table', NULL),
('2015_02_24_000000_create_users_discussions_table', NULL),
('2015_02_24_000000_create_users_groups_table', NULL),
('2015_02_24_000000_create_users_table', NULL),
('2015_09_15_000000_create_auth_tokens_table', NULL),
('2015_09_20_224327_add_hide_to_discussions', NULL),
('2015_09_22_030432_rename_notification_read_time', NULL),
('2015_10_07_130531_rename_config_to_settings', NULL),
('2015_10_24_194000_add_ip_address_to_posts', NULL),
('2015_12_05_042721_change_access_tokens_columns', NULL),
('2015_12_17_194247_change_settings_value_column_to_text', NULL),
('2016_02_04_095452_add_slug_to_discussions', NULL),
('2017_04_07_114138_add_is_private_to_discussions', NULL),
('2017_04_07_114138_add_is_private_to_posts', NULL),
('2017_04_09_152230_change_posts_content_column_to_mediumtext', NULL),
('2015_09_21_011527_add_is_approved_to_discussions', 'flarum-approval'),
('2015_09_21_011706_add_is_approved_to_posts', 'flarum-approval'),
('2017_07_22_000000_add_default_permissions', 'flarum-approval'),
('2015_09_02_000000_add_flags_read_time_to_users_table', 'flarum-flags'),
('2015_09_02_000000_create_flags_table', 'flarum-flags'),
('2017_07_22_000000_add_default_permissions', 'flarum-flags'),
('2015_05_11_000000_create_posts_likes_table', 'flarum-likes'),
('2015_09_04_000000_add_default_like_permissions', 'flarum-likes'),
('2015_02_24_000000_add_locked_to_discussions', 'flarum-lock'),
('2017_07_22_000000_add_default_permissions', 'flarum-lock'),
('2015_05_11_000000_create_mentions_posts_table', 'flarum-mentions'),
('2015_05_11_000000_create_mentions_users_table', 'flarum-mentions'),
('2015_02_24_000000_add_sticky_to_discussions', 'flarum-sticky'),
('2017_07_22_000000_add_default_permissions', 'flarum-sticky'),
('2015_05_11_000000_add_subscription_to_users_discussions_table', 'flarum-subscriptions'),
('2015_05_11_000000_add_suspended_until_to_users_table', 'flarum-suspend'),
('2015_09_14_000000_rename_suspended_until_column', 'flarum-suspend'),
('2017_07_22_000000_add_default_permissions', 'flarum-suspend'),
('2015_02_24_000000_create_discussions_tags_table', 'flarum-tags'),
('2015_02_24_000000_create_tags_table', 'flarum-tags'),
('2015_02_24_000000_create_users_tags_table', 'flarum-tags'),
('2015_02_24_000000_set_default_settings', 'flarum-tags'),
('2015_10_19_061223_make_slug_unique', 'flarum-tags'),
('2017_07_22_000000_add_default_permissions', 'flarum-tags'),
('2015_10_31_040129_add_is_spam_to_posts', 'flarum-akismet'),
('2016_10_06_203438_add_default_best_answer_permissions', 'wiwatsrt-best-answer'),
('2016_10_07_202338_add_best_answer_post_id_to_discussions_table', 'wiwatsrt-best-answer'),
('2016_11_03_000000_create_flagrow_files', 'flagrow-upload'),
('2016_11_07_000000_add_remote_id', 'flagrow-upload'),
('2016_11_11_000000_add_markdown_string', 'flagrow-upload'),
('2017_04_14_000000_uuid', 'flagrow-upload'),
('2017_04_14_000001_downloads_table', 'flagrow-upload'),
('2017_04_19_000000_remove_markdown_string', 'flagrow-upload'),
('2017_04_19_000001_add_tag', 'flagrow-upload'),
('2017_04_19_000002_add_relations', 'flagrow-upload');

-- --------------------------------------------------------

--
-- Table structure for table `fvf_notifications`
--

CREATE TABLE `fvf_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `data` blob,
  `time` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_password_tokens`
--

CREATE TABLE `fvf_password_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_permissions`
--

CREATE TABLE `fvf_permissions` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_permissions`
--

INSERT INTO `fvf_permissions` (`group_id`, `permission`) VALUES
(2, 'viewDiscussions'),
(3, 'discussion.flagPosts'),
(3, 'discussion.likePosts'),
(3, 'discussion.reply'),
(3, 'discussion.replyWithoutApproval'),
(3, 'discussion.selectBestAnswer'),
(3, 'discussion.startWithoutApproval'),
(3, 'startDiscussion'),
(3, 'viewUserList'),
(4, 'discussion.approvePosts'),
(4, 'discussion.editPosts'),
(4, 'discussion.hide'),
(4, 'discussion.lock'),
(4, 'discussion.rename'),
(4, 'discussion.sticky'),
(4, 'discussion.tag'),
(4, 'discussion.viewFlags'),
(4, 'discussion.viewIpsPosts'),
(4, 'user.suspend');

-- --------------------------------------------------------

--
-- Table structure for table `fvf_posts`
--

CREATE TABLE `fvf_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED DEFAULT NULL,
  `time` datetime NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` datetime DEFAULT NULL,
  `edit_user_id` int(10) UNSIGNED DEFAULT NULL,
  `hide_time` datetime DEFAULT NULL,
  `hide_user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_posts_likes`
--

CREATE TABLE `fvf_posts_likes` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_settings`
--

CREATE TABLE `fvf_settings` (
  `key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_settings`
--

INSERT INTO `fvf_settings` (`key`, `value`) VALUES
('allow_post_editing', 'reply'),
('allow_renaming', '10'),
('allow_sign_up', '1'),
('custom_less', ''),
('default_locale', 'vi'),
('default_route', '/all'),
('extensions_enabled', '[\"flarum-approval\",\"flarum-bbcode\",\"flarum-emoji\",\"flarum-english\",\"flarum-flags\",\"flarum-likes\",\"flarum-lock\",\"flarum-markdown\",\"flarum-mentions\",\"flarum-sticky\",\"flarum-subscriptions\",\"flarum-suspend\",\"flarum-tags\",\"flarum-akismet\",\"wiwatsrt-best-answer\",\"clarkwinkelmann-emojionearea\",\"flarum-auth-github\",\"s9e-mediaembed\",\"tri-duong-dena-vietnamese\",\"avatar4eg-transliterator\",\"s9e-autoimage\",\"terabin-sitemap\",\"flagrow-upload\",\"flagrow-user-directory\",\"flagrow-users-list\",\"flarum-pusher\"]'),
('favicon_path', 'favicon-oq4nxggs.png'),
('flarum-akismet.api_key', 'e7dcc3b0ad8f'),
('flarum-auth-github.client_id', 'd37f173518e8074c13ed'),
('flarum-auth-github.client_secret', '4c8c14c5d995adbefa48e789bc212a7854b8fd5a'),
('flarum-tags.max_primary_tags', '12'),
('flarum-tags.max_secondary_tags', '12'),
('flarum-tags.min_primary_tags', '0'),
('flarum-tags.min_secondary_tags', '0'),
('forum_description', 'Diễn đàn thảo luận lập trình viên, thiết kế chuyên nghiệp'),
('forum_title', 'FullStack Vietnam'),
('logo_path', 'logo-nsushmxq.png'),
('mail_driver', 'smtp'),
('mail_from', 'admin@fullstackvietnam.xyz'),
('mail_host', 'mail.fullstackvietnam.xyz'),
('mail_password', 'Thanhnguyen@2015'),
('mail_port', '25'),
('mail_username', 'admin@fullstackvietnam.xyz'),
('show_language_selector', '1'),
('theme_colored_header', '0'),
('theme_dark_mode', '0'),
('theme_primary_color', '#00a9ff'),
('theme_secondary_color', '#4D698E'),
('version', '0.1.0-beta.7'),
('welcome_message', 'Diễn đàn thảo luận lập trình viên, thiết kế chuyên nghiệp'),
('welcome_title', 'Welcome to FullStack Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `fvf_tags`
--

CREATE TABLE `fvf_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_mode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `default_sort` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_restricted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `discussions_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` datetime DEFAULT NULL,
  `last_discussion_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_tags`
--

INSERT INTO `fvf_tags` (`id`, `name`, `slug`, `description`, `color`, `background_path`, `background_mode`, `position`, `parent_id`, `default_sort`, `is_restricted`, `is_hidden`, `discussions_count`, `last_time`, `last_discussion_id`) VALUES
(1, 'NodeJS', 'nodejs', 'Thảo luận các vấn về NODEJS, Express, MEAN, các giải pháp CMS...', '#4CAF50', NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL),
(2, 'Angular', 'angular', 'Mọi thứ về AngularJS và Angular sẽ được thảo luận tại đây', '#F44336', NULL, NULL, 2, NULL, NULL, 0, 0, 0, NULL, NULL),
(3, 'React', 'react', 'Nơi để học tập, thảo luận mọi thứ về React ', '#03A9F4', NULL, NULL, 3, NULL, NULL, 0, 0, 0, NULL, NULL),
(4, 'jQuery', 'jquery', 'jQuery là thư viện được viết trên nền JavaScript giúp đơn giản hoá việc viết mã lệnh, đây chính là nơi thảo luận các vấn đề, bug, plugins khi bạn sử dụng jQuery', '#3F51B5', NULL, NULL, 1, NULL, NULL, 0, 0, 0, NULL, NULL),
(5, 'SASS', 'sass', '', '#f96698', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL),
(6, 'PUG', 'pug', '', '#9a7a70', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL),
(7, 'HTML', 'html', '', '#FFC107', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL),
(8, 'CSS', 'css', '', '#00BCD4', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL),
(9, 'Photoshop', 'photoshop', 'Tất tần tật mọi thứ về Photoshop như xử lý ảnh, dàn layout, thiết kế bộ nhận dạng thương hiệu...', '#673AB7', NULL, NULL, 4, NULL, NULL, 0, 0, 0, NULL, NULL),
(10, 'Illustrator', 'illustrator', 'Nếu bạn là một designer thì Illustrator là phần mềm không thể bỏ qua, tại đây sẽ lưu trữ tất cả bài thảo luận về Ai', '#FF9800', NULL, NULL, 5, NULL, NULL, 0, 0, 0, NULL, NULL),
(11, 'Mobile', 'mobile', '', '#607D8B', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL),
(12, 'Khác...', 'khac', '', '#c7d2e1', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '2018-07-24 06:51:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fvf_users`
--

CREATE TABLE `fvf_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar_path` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` blob,
  `join_time` datetime DEFAULT NULL,
  `last_seen_time` datetime DEFAULT NULL,
  `read_time` datetime DEFAULT NULL,
  `notifications_read_time` datetime DEFAULT NULL,
  `discussions_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `comments_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `flags_read_time` datetime DEFAULT NULL,
  `suspend_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_users`
--

INSERT INTO `fvf_users` (`id`, `username`, `email`, `is_activated`, `password`, `bio`, `avatar_path`, `preferences`, `join_time`, `last_seen_time`, `read_time`, `notifications_read_time`, `discussions_count`, `comments_count`, `flags_read_time`, `suspend_until`) VALUES
(1, 'admin', 'baonguyenyam@gmail.com', 1, '$2y$10$71.hxatfDMH07AS39lj2Lu.anNMmAF2IU1T6U3sfv2jS7lD023Mpi', 'Tôi đã từng khóc khi không có giày để mang và đã thôi không khóc nữa khi thấy một người không có chân để mang giày\n', '60gaxy0coni4imsy.png', NULL, '2018-07-23 14:54:19', '2018-07-25 00:57:41', '2018-07-24 09:19:29', '2018-07-24 15:02:00', 0, 0, '2018-07-24 15:01:59', NULL),
(2, 'dinhlong241', 'dinhlong241@gmail.com', 1, '$2y$10$SMIvxs0dgeIa9k7PyDTFgOoB96FfwHiqkrGANhC/SnzUyJDDCDyHe', NULL, '0zus3pcpad0rlizj.png', NULL, '2018-07-24 07:02:35', '2018-07-24 07:02:36', NULL, NULL, 0, 0, NULL, NULL),
(3, 'ZodiaC', 'nnsang24@gmail.com', 1, '$2y$10$OPNoccj3NjOiTyihlpgRO.00YSiOixvzhq3sCuFqn6QuXqBzOpOly', NULL, 'pv4sdmygth371j50.png', NULL, '2018-07-24 07:04:56', '2018-07-24 07:06:03', NULL, NULL, 0, 0, NULL, NULL),
(4, 'StbSoftware', 'ngocsonytb2016@gmail.com', 1, '$2y$10$V.LU5vdHKSs7earo5NZZEO3cBuFvf8glRus8J8UntYJtYMalp5Zgi', NULL, 'zuidlqzdxpf0vz4a.png', NULL, '2018-07-24 07:05:17', '2018-07-24 07:05:18', NULL, NULL, 0, 0, NULL, NULL),
(5, 'tinhpv1999', 'mrkolikz@gmail.com', 1, '$2y$10$NqUwKqKbjzi2f93vPiFJ5.JWMS4juBjsXwV/DfD7Yr2WHdCxSgyoC', NULL, 'yqkuwzz9xwmhf3f7.png', NULL, '2018-07-24 07:06:13', '2018-07-24 15:40:05', '2018-07-24 07:13:08', NULL, 0, 0, NULL, NULL),
(6, 'interstar0406', 'interstar0406@gmail.com', 1, '$2y$10$gQolI8.lFZRAKeD4wHCIC.xID98ZntJdA8J.uvHXPffo54evKcw9G', NULL, 'n2obojv5w47ncyjc.png', NULL, '2018-07-24 07:10:25', '2018-07-24 07:10:42', NULL, NULL, 0, 0, NULL, NULL),
(7, 'huynhminhnhan', 'huynhminhnhan69@gmail.com', 1, '$2y$10$PK2S2xSnbiZzqFQ6lD4g2uaL5hHlSvwaT3HQ8yiAbDMPzlVhzXO92', NULL, 'ykccfdlgd1edvmxq.png', NULL, '2018-07-24 07:14:35', '2018-07-24 09:37:21', NULL, NULL, 0, 0, NULL, NULL),
(8, 'Si_tran', 'silps06738@fpt.edu.vn', 1, '$2y$10$9.gXn1sBZKwS6oG.wFVs4uPy5v4RlfDL3e1bn.FDJRT6qAykyHtXu', NULL, '9avfrn2eboksvymp.png', NULL, '2018-07-24 07:17:27', '2018-07-25 00:34:40', NULL, NULL, 0, 0, NULL, NULL),
(9, 'phuongbt-it-dev', 'phuong.it.dev@gmail.com', 1, '$2y$10$w85z8dKTdNpPLzDJytuaiuQDESYM2SeRM7lKlE.ZPC1Z5jia3bmmK', NULL, 'qexypzr4y5iusgzb.png', NULL, '2018-07-24 07:17:39', '2018-07-24 07:24:23', NULL, '2018-07-24 07:24:23', 0, 0, NULL, NULL),
(10, 'vubang18', 'vubang18@gmail.com', 1, '$2y$10$B5RijE4.vjdCGiFxrYNekOUQa5ZG6Mjd5FAjb4uFE6gdqHcBOaFiq', 'Nguyễn Vũ Bằng', '3vjwlqfilhg4cxyy.png', NULL, '2018-07-24 07:31:14', '2018-07-24 07:33:44', NULL, NULL, 0, 0, NULL, NULL),
(11, 'minhtbjava1112', 'minhtbjava1112@gmail.com', 1, '$2y$10$l31IeVMDAzGzvQbtVSspJO9hgRE.rJEh5TlHn31LKIca5MDBAG1x.', NULL, 'nqjubrmszohs6vn5.png', NULL, '2018-07-24 07:54:43', '2018-07-24 07:54:44', NULL, NULL, 0, 0, NULL, NULL),
(12, 'VoDucManh', 'kaikudo1999@gmail.com', 1, '$2y$10$/9jO294KpcyU.78fqmcKHeO3IpVCid8V9DA56TWYBo.F12yvRGMea', NULL, 'e3flynzubdrlkxzm.png', NULL, '2018-07-24 07:57:34', '2018-07-24 07:57:59', NULL, NULL, 0, 0, NULL, NULL),
(13, 'TranLuanQuyen', 'quyentlps07598@fpt.edu.vn', 1, '$2y$10$8qFrqdl.mXdbJkMzolV.9.AEpgn.4BfbYOhbsaV0zKTwe7S7o0qAW', NULL, NULL, NULL, '2018-07-24 07:59:44', '2018-07-24 08:00:38', NULL, NULL, 0, 0, NULL, NULL),
(14, 'NguyenTruongDang', 'nguyentruongdang1010@gmail.com', 1, '$2y$10$.yrnofQz7bOXXTTVPu5kSuNyB4Sk77o502.zCJ62KVXNU/7LDZEZm', NULL, 'rt2s0qrowyv1w0lc.png', 0x7b226e6f746966795f64697363757373696f6e52656e616d65645f616c657274223a747275652c226e6f746966795f706f73744c696b65645f616c657274223a747275652c226e6f746966795f64697363757373696f6e4c6f636b65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f616c657274223a747275652c226e6f746966795f706f73744d656e74696f6e65645f656d61696c223a747275652c226e6f746966795f757365724d656e74696f6e65645f616c657274223a747275652c226e6f746966795f757365724d656e74696f6e65645f656d61696c223a747275652c226e6f746966795f6e6577506f73745f616c657274223a747275652c226e6f746966795f6e6577506f73745f656d61696c223a747275652c22666f6c6c6f7741667465725265706c79223a747275652c22646973636c6f73654f6e6c696e65223a747275652c22696e64657850726f66696c65223a747275652c226c6f63616c65223a6e756c6c7d, '2018-07-24 08:46:49', '2018-07-24 08:47:13', NULL, NULL, 0, 0, NULL, NULL),
(15, '0909755892', 'phamquangthien.it@gmail.com', 1, '$2y$10$NgYCYzdvILag2p2nOhRzp.qHKUBgc.MBNOIIf1GXDAtB4M5AuiKP.', NULL, NULL, NULL, '2018-07-24 08:53:42', '2018-07-24 08:55:35', NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fvf_users_discussions`
--

CREATE TABLE `fvf_users_discussions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `discussion_id` int(10) UNSIGNED NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `read_number` int(10) UNSIGNED DEFAULT NULL,
  `subscription` enum('follow','ignore') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fvf_users_groups`
--

CREATE TABLE `fvf_users_groups` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fvf_users_groups`
--

INSERT INTO `fvf_users_groups` (`user_id`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fvf_users_tags`
--

CREATE TABLE `fvf_users_tags` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fvf_access_tokens`
--
ALTER TABLE `fvf_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_api_keys`
--
ALTER TABLE `fvf_api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_auth_tokens`
--
ALTER TABLE `fvf_auth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_discussions`
--
ALTER TABLE `fvf_discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_discussions_tags`
--
ALTER TABLE `fvf_discussions_tags`
  ADD PRIMARY KEY (`discussion_id`,`tag_id`);

--
-- Indexes for table `fvf_email_tokens`
--
ALTER TABLE `fvf_email_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_flagrow_files`
--
ALTER TABLE `fvf_flagrow_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_flagrow_file_downloads`
--
ALTER TABLE `fvf_flagrow_file_downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flagrow_file_downloads_file_id_foreign` (`file_id`),
  ADD KEY `flagrow_file_downloads_discussion_id_foreign` (`discussion_id`),
  ADD KEY `flagrow_file_downloads_actor_id_foreign` (`actor_id`);

--
-- Indexes for table `fvf_flags`
--
ALTER TABLE `fvf_flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_groups`
--
ALTER TABLE `fvf_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_mentions_posts`
--
ALTER TABLE `fvf_mentions_posts`
  ADD PRIMARY KEY (`post_id`,`mentions_id`);

--
-- Indexes for table `fvf_mentions_users`
--
ALTER TABLE `fvf_mentions_users`
  ADD PRIMARY KEY (`post_id`,`mentions_id`);

--
-- Indexes for table `fvf_notifications`
--
ALTER TABLE `fvf_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_password_tokens`
--
ALTER TABLE `fvf_password_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fvf_permissions`
--
ALTER TABLE `fvf_permissions`
  ADD PRIMARY KEY (`group_id`,`permission`);

--
-- Indexes for table `fvf_posts`
--
ALTER TABLE `fvf_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_discussion_id_number_unique` (`discussion_id`,`number`);
ALTER TABLE `fvf_posts` ADD FULLTEXT KEY `content` (`content`);

--
-- Indexes for table `fvf_posts_likes`
--
ALTER TABLE `fvf_posts_likes`
  ADD PRIMARY KEY (`post_id`,`user_id`);

--
-- Indexes for table `fvf_settings`
--
ALTER TABLE `fvf_settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `fvf_tags`
--
ALTER TABLE `fvf_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `fvf_users`
--
ALTER TABLE `fvf_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `fvf_users_discussions`
--
ALTER TABLE `fvf_users_discussions`
  ADD PRIMARY KEY (`user_id`,`discussion_id`);

--
-- Indexes for table `fvf_users_groups`
--
ALTER TABLE `fvf_users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `fvf_users_tags`
--
ALTER TABLE `fvf_users_tags`
  ADD PRIMARY KEY (`user_id`,`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fvf_discussions`
--
ALTER TABLE `fvf_discussions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fvf_flagrow_files`
--
ALTER TABLE `fvf_flagrow_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fvf_flagrow_file_downloads`
--
ALTER TABLE `fvf_flagrow_file_downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fvf_flags`
--
ALTER TABLE `fvf_flags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fvf_groups`
--
ALTER TABLE `fvf_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fvf_notifications`
--
ALTER TABLE `fvf_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fvf_posts`
--
ALTER TABLE `fvf_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fvf_tags`
--
ALTER TABLE `fvf_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fvf_users`
--
ALTER TABLE `fvf_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fvf_flagrow_file_downloads`
--
ALTER TABLE `fvf_flagrow_file_downloads`
  ADD CONSTRAINT `flagrow_file_downloads_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `fvf_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `flagrow_file_downloads_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `fvf_discussions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `flagrow_file_downloads_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `fvf_flagrow_files` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
