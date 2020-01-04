-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 04 2020 г., 08:58
-- Версия сервера: 5.7.28
-- Версия PHP: 7.1.33-2+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `victorynox`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_berocket_termmeta`
--

CREATE TABLE `wp_berocket_termmeta` (
  `meta_id` bigint(20) NOT NULL,
  `berocket_term_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_braapf_product_stock_status_parent`
--

CREATE TABLE `wp_braapf_product_stock_status_parent` (
  `post_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `stock_status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_braapf_product_stock_status_parent`
--

INSERT INTO `wp_braapf_product_stock_status_parent` (`post_id`, `parent_id`, `stock_status`) VALUES
(21, 0, 1),
(24, 0, 1),
(25, 0, 1),
(26, 0, 1),
(27, 0, 1),
(28, 0, 1),
(29, 0, 1),
(30, 0, 1),
(31, 0, 1),
(32, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_braapf_product_variation_attributes`
--

CREATE TABLE `wp_braapf_product_variation_attributes` (
  `post_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `meta_key` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_braapf_term_taxonomy_hierarchical`
--

CREATE TABLE `wp_braapf_term_taxonomy_hierarchical` (
  `term_taxonomy_id` bigint(20) NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `term_taxonomy_child_id` bigint(20) NOT NULL,
  `term_child_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_braapf_variation_attributes`
--

CREATE TABLE `wp_braapf_variation_attributes` (
  `post_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-06 11:27:47', '2019-12-06 11:27:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 19, 'ActionScheduler', '', '', '', '2019-12-08 13:20:12', '2019-12-08 13:20:12', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 19, 'ActionScheduler', '', '', '', '2019-12-08 13:21:15', '2019-12-08 13:21:15', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 19, 'ActionScheduler', '', '', '', '2019-12-08 13:21:16', '2019-12-08 13:21:16', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_itsec_distributed_storage`
--

CREATE TABLE `wp_itsec_distributed_storage` (
  `storage_id` bigint(20) UNSIGNED NOT NULL,
  `storage_group` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `storage_key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `storage_chunk` int(11) NOT NULL DEFAULT '0',
  `storage_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `storage_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_itsec_fingerprints`
--

CREATE TABLE `wp_itsec_fingerprints` (
  `fingerprint_id` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_user` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_hash` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_created_at` datetime NOT NULL,
  `fingerprint_approved_at` datetime NOT NULL,
  `fingerprint_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_snapshot` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_last_seen` datetime NOT NULL,
  `fingerprint_uses` int(11) NOT NULL DEFAULT '0',
  `fingerprint_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_uuid` char(36) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_itsec_geolocation_cache`
--

CREATE TABLE `wp_itsec_geolocation_cache` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_host` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_lat` decimal(10,8) NOT NULL,
  `location_long` decimal(11,8) NOT NULL,
  `location_label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_credit` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_itsec_lockouts`
--

CREATE TABLE `wp_itsec_lockouts` (
  `lockout_id` bigint(20) UNSIGNED NOT NULL,
  `lockout_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_user` bigint(20) UNSIGNED DEFAULT NULL,
  `lockout_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT '1',
  `lockout_context` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_itsec_logs`
--

CREATE TABLE `wp_itsec_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'notice',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `init_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memory_current` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `memory_peak` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `remote_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_itsec_logs`
--

INSERT INTO `wp_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(1, 0, 'core', 'itsec-config-file-update-empty::apache', 'O:8:"WP_Error":2:{s:6:"errors";a:1:{s:38:"itsec-config-file-update-empty::apache";a:1:{i:0;s:199:"Empty file encountered when attempting to update <code>.htaccess</code>. Manual configuration for the <code>.htaccess</code> file can be found on the Security > Settings page in the Advanced section.";}}s:10:"error_data";a:0:{}}', 'critical-issue', '2019-12-06 19:40:21', '2019-12-06 19:40:21', 10695888, 10736824, 'http://localhost/wordpress3/wp-admin/plugins.php?action=activate&plugin=better-wp-security%2Fbetter-wp-security.php&plugin_status=inactive&paged=1&s&_wpnonce=9143755e04', 1, 1, '::1'),
(2, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-08 13:11:54', '2019-12-08 13:11:54', 8806040, 8971432, 'wp-cron', 1, 0, '127.0.0.1'),
(3, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-08 13:11:57', '2019-12-08 13:11:56', 9041728, 9077256, 'http://localhost/wordpress3/?wc-ajax=get_refreshed_fragments', 1, 0, '::1'),
(4, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-09 13:28:22', '2019-12-09 13:28:21', 8659848, 8821240, 'wp-cron', 1, 0, '127.0.0.1'),
(5, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-10 13:28:32', '2019-12-10 13:28:32', 8658056, 8699680, 'wp-cron', 1, 0, '127.0.0.1'),
(6, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-12 12:01:02', '2019-12-12 12:01:02', 30576792, 30618416, 'wp-cron', 1, 0, '127.0.0.1'),
(7, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-12 12:01:05', '2019-12-12 12:01:04', 32191656, 32233184, 'http://localhost/wordpress3/?wc-ajax=get_refreshed_fragments', 1, 0, '::1'),
(8, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-13 12:42:03', '2019-12-13 12:42:03', 9466952, 9635648, 'wp-cron', 1, 0, '127.0.0.1'),
(9, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-16 08:28:36', '2019-12-16 08:28:35', 9538384, 9707720, 'wp-cron', 1, 0, '127.0.0.1'),
(10, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-16 08:28:49', '2019-12-16 08:28:48', 10912776, 11008088, 'http://localhost/wordpress3/wp-admin/admin-ajax.php?action=wp_1_wc_privacy_cleanup&nonce=6ba16154e9', 1, 0, '127.0.0.1'),
(11, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-20 09:18:26', '2019-12-20 09:18:26', 54830520, 54872144, 'wp-cron', 1, 0, '127.0.0.1'),
(12, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-21 16:02:18', '2019-12-21 16:02:18', 9527904, 9696600, 'wp-cron', 1, 0, '127.0.0.1'),
(13, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-22 17:33:42', '2019-12-22 17:33:41', 25618568, 25660192, 'wp-cron', 1, 0, '127.0.0.1'),
(14, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-27 10:29:26', '2019-12-27 10:29:26', 31316952, 31358576, 'wp-cron', 1, 0, '127.0.0.1'),
(15, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-27 10:29:29', '2019-12-27 10:29:28', 32931824, 32973352, 'http://localhost/wordpress3/?wc-ajax=get_refreshed_fragments', 1, 0, '::1'),
(16, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2019-12-28 14:52:27', '2019-12-28 14:52:27', 9529624, 9698320, 'wp-cron', 1, 0, '127.0.0.1'),
(17, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2020-01-03 12:36:57', '2020-01-03 12:36:56', 54704976, 54746600, 'wp-cron', 1, 0, '127.0.0.1'),
(18, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:"notifications";a:1:{i:0;s:6:"digest";}s:6:"silent";b:0;}', 'debug', '2020-01-03 12:36:59', '2020-01-03 12:36:57', 61310208, 61351704, 'http://localhost/wordpress3/wp-admin/admin-ajax.php?action=wp_1_wc_privacy_cleanup&nonce=cf92b0425a', 1, 0, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_itsec_opaque_tokens`
--

CREATE TABLE `wp_itsec_opaque_tokens` (
  `token_id` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token_hashed` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token_data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_itsec_temp`
--

CREATE TABLE `wp_itsec_temp` (
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `temp_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `temp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `token` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `status` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'S',
  `id` int(11) NOT NULL,
  `profile` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` int(11) NOT NULL DEFAULT '0',
  `last_activity` int(11) NOT NULL DEFAULT '0',
  `followup_step` tinyint(4) NOT NULL DEFAULT '0',
  `followup_time` bigint(20) NOT NULL DEFAULT '0',
  `followup` tinyint(4) NOT NULL DEFAULT '0',
  `surname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sex` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'n',
  `feed_time` bigint(20) NOT NULL DEFAULT '0',
  `feed` tinyint(4) NOT NULL DEFAULT '0',
  `referrer` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT '0',
  `http_referer` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `geo` tinyint(4) NOT NULL DEFAULT '0',
  `country` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `region` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bounce_type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `bounce_time` int(11) NOT NULL DEFAULT '0',
  `unsub_email_id` int(11) NOT NULL DEFAULT '0',
  `unsub_time` int(11) NOT NULL DEFAULT '0',
  `list_1` tinyint(4) NOT NULL DEFAULT '0',
  `list_2` tinyint(4) NOT NULL DEFAULT '0',
  `list_3` tinyint(4) NOT NULL DEFAULT '0',
  `list_4` tinyint(4) NOT NULL DEFAULT '0',
  `list_5` tinyint(4) NOT NULL DEFAULT '0',
  `list_6` tinyint(4) NOT NULL DEFAULT '0',
  `list_7` tinyint(4) NOT NULL DEFAULT '0',
  `list_8` tinyint(4) NOT NULL DEFAULT '0',
  `list_9` tinyint(4) NOT NULL DEFAULT '0',
  `list_10` tinyint(4) NOT NULL DEFAULT '0',
  `list_11` tinyint(4) NOT NULL DEFAULT '0',
  `list_12` tinyint(4) NOT NULL DEFAULT '0',
  `list_13` tinyint(4) NOT NULL DEFAULT '0',
  `list_14` tinyint(4) NOT NULL DEFAULT '0',
  `list_15` tinyint(4) NOT NULL DEFAULT '0',
  `list_16` tinyint(4) NOT NULL DEFAULT '0',
  `list_17` tinyint(4) NOT NULL DEFAULT '0',
  `list_18` tinyint(4) NOT NULL DEFAULT '0',
  `list_19` tinyint(4) NOT NULL DEFAULT '0',
  `list_20` tinyint(4) NOT NULL DEFAULT '0',
  `list_21` tinyint(4) NOT NULL DEFAULT '0',
  `list_22` tinyint(4) NOT NULL DEFAULT '0',
  `list_23` tinyint(4) NOT NULL DEFAULT '0',
  `list_24` tinyint(4) NOT NULL DEFAULT '0',
  `list_25` tinyint(4) NOT NULL DEFAULT '0',
  `list_26` tinyint(4) NOT NULL DEFAULT '0',
  `list_27` tinyint(4) NOT NULL DEFAULT '0',
  `list_28` tinyint(4) NOT NULL DEFAULT '0',
  `list_29` tinyint(4) NOT NULL DEFAULT '0',
  `list_30` tinyint(4) NOT NULL DEFAULT '0',
  `list_31` tinyint(4) NOT NULL DEFAULT '0',
  `list_32` tinyint(4) NOT NULL DEFAULT '0',
  `list_33` tinyint(4) NOT NULL DEFAULT '0',
  `list_34` tinyint(4) NOT NULL DEFAULT '0',
  `list_35` tinyint(4) NOT NULL DEFAULT '0',
  `list_36` tinyint(4) NOT NULL DEFAULT '0',
  `list_37` tinyint(4) NOT NULL DEFAULT '0',
  `list_38` tinyint(4) NOT NULL DEFAULT '0',
  `list_39` tinyint(4) NOT NULL DEFAULT '0',
  `list_40` tinyint(4) NOT NULL DEFAULT '0',
  `profile_1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_6` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_7` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_8` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_9` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_10` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_11` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_12` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_13` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_14` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_15` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_16` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_17` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_18` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_19` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `profile_20` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_newsletter`
--

INSERT INTO `wp_newsletter` (`name`, `email`, `token`, `language`, `status`, `id`, `profile`, `created`, `updated`, `last_activity`, `followup_step`, `followup_time`, `followup`, `surname`, `sex`, `feed_time`, `feed`, `referrer`, `ip`, `wp_user_id`, `http_referer`, `geo`, `country`, `region`, `city`, `bounce_type`, `bounce_time`, `unsub_email_id`, `unsub_time`, `list_1`, `list_2`, `list_3`, `list_4`, `list_5`, `list_6`, `list_7`, `list_8`, `list_9`, `list_10`, `list_11`, `list_12`, `list_13`, `list_14`, `list_15`, `list_16`, `list_17`, `list_18`, `list_19`, `list_20`, `list_21`, `list_22`, `list_23`, `list_24`, `list_25`, `list_26`, `list_27`, `list_28`, `list_29`, `list_30`, `list_31`, `list_32`, `list_33`, `list_34`, `list_35`, `list_36`, `list_37`, `list_38`, `list_39`, `list_40`, `profile_1`, `profile_2`, `profile_3`, `profile_4`, `profile_5`, `profile_6`, `profile_7`, `profile_8`, `profile_9`, `profile_10`, `profile_11`, `profile_12`, `profile_13`, `profile_14`, `profile_15`, `profile_16`, `profile_17`, `profile_18`, `profile_19`, `profile_20`, `test`) VALUES
('', 'sinevor13@gmail.com', '846e7d753a', '', 'C', 1, NULL, '2019-12-10 13:28:36', 0, 0, 0, 0, 0, '', 'n', 0, 0, '', '', 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
('', 'wedq@werw.com', 'fcde21a4c2', '', 'C', 2, NULL, '2019-12-28 09:20:14', 1577524814, 0, 0, 0, 0, '', 'n', 0, 0, 'minimal', '::1', 0, 'http://localhost/wordpress3/', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_newsletter_emails`
--

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_unicode_520_ci,
  `subject2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message2` longtext COLLATE utf8mb4_unicode_520_ci,
  `name2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT '0',
  `last_id` int(11) NOT NULL DEFAULT '0',
  `sent` int(11) NOT NULL DEFAULT '0',
  `track` int(11) NOT NULL DEFAULT '0',
  `list` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_520_ci,
  `editor` tinyint(4) NOT NULL DEFAULT '0',
  `sex` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message_text` longtext COLLATE utf8mb4_unicode_520_ci,
  `preferences` longtext COLLATE utf8mb4_unicode_520_ci,
  `send_on` int(11) NOT NULL DEFAULT '0',
  `token` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `private` tinyint(1) NOT NULL DEFAULT '0',
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `open_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_newsletter_sent`
--

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `error` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_newsletter_stats`
--

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_id` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_newsletter_user_logs`
--

CREATE TABLE `wp_newsletter_user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `source` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_520_ci,
  `created` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_newsletter_user_logs`
--

INSERT INTO `wp_newsletter_user_logs` (`id`, `user_id`, `ip`, `source`, `data`, `created`) VALUES
(1, 2, '::1', 'subscribe', '{"status":"C"}', 1577524814);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress3', 'yes'),
(2, 'home', 'http://localhost/wordpress3', 'yes'),
(3, 'blogname', 'Victorynox', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sinevor13@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:198:{s:34:"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$";s:40:"index.php?xml_sitemap=params=$matches[2]";s:38:"sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$";s:49:"index.php?xml_sitemap=params=$matches[2];zip=true";s:35:"sitemap(-+([a-zA-Z0-9_-]+))?\\.html$";s:50:"index.php?xml_sitemap=params=$matches[2];html=true";s:38:"sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$";s:59:"index.php?xml_sitemap=params=$matches[2];html=true;zip=true";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:17:"index.php/shop/?$";s:27:"index.php?post_type=product";s:47:"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:42:"index.php/shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:34:"index.php/shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:42:"index.php/category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:39:"index.php/tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:54:"index.php/brand/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pwb-brand=$matches[1]&feed=$matches[2]";s:49:"index.php/brand/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?pwb-brand=$matches[1]&feed=$matches[2]";s:30:"index.php/brand/(.+?)/embed/?$";s:42:"index.php?pwb-brand=$matches[1]&embed=true";s:42:"index.php/brand/(.+?)/page/?([0-9]{1,})/?$";s:49:"index.php?pwb-brand=$matches[1]&paged=$matches[2]";s:49:"index.php/brand/(.+?)/comment-page-([0-9]{1,})/?$";s:49:"index.php?pwb-brand=$matches[1]&cpage=$matches[2]";s:39:"index.php/brand/(.+?)/wc-api(/(.*))?/?$";s:50:"index.php?pwb-brand=$matches[1]&wc-api=$matches[3]";s:24:"index.php/brand/(.+?)/?$";s:31:"index.php?pwb-brand=$matches[1]";s:65:"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:60:"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:41:"index.php/product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:53:"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:35:"index.php/product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:62:"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:57:"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:38:"index.php/product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:50:"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:32:"index.php/product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:45:"index.php/product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"index.php/product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"index.php/product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:38:"index.php/product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:58:"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:53:"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:46:"index.php/product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:53:"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:43:"index.php/product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:49:"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"index.php/product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:34:"index.php/product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"index.php/product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"index.php/product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"index.php/product_brand/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?product_brand=$matches[1]&feed=$matches[2]";s:59:"index.php/product_brand/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?product_brand=$matches[1]&feed=$matches[2]";s:40:"index.php/product_brand/([^/]+)/embed/?$";s:46:"index.php?product_brand=$matches[1]&embed=true";s:52:"index.php/product_brand/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?product_brand=$matches[1]&paged=$matches[2]";s:34:"index.php/product_brand/([^/]+)/?$";s:35:"index.php?product_brand=$matches[1]";s:49:"index.php/woocarousel/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:59:"index.php/woocarousel/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:79:"index.php/woocarousel/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"index.php/woocarousel/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:74:"index.php/woocarousel/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:55:"index.php/woocarousel/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"index.php/woocarousel/([^/]+)/embed/?$";s:44:"index.php?woocarousel=$matches[1]&embed=true";s:42:"index.php/woocarousel/([^/]+)/trackback/?$";s:38:"index.php?woocarousel=$matches[1]&tb=1";s:50:"index.php/woocarousel/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?woocarousel=$matches[1]&paged=$matches[2]";s:57:"index.php/woocarousel/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?woocarousel=$matches[1]&cpage=$matches[2]";s:47:"index.php/woocarousel/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?woocarousel=$matches[1]&wc-api=$matches[3]";s:53:"index.php/woocarousel/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:64:"index.php/woocarousel/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:46:"index.php/woocarousel/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?woocarousel=$matches[1]&page=$matches[2]";s:38:"index.php/woocarousel/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"index.php/woocarousel/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"index.php/woocarousel/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"index.php/woocarousel/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"index.php/woocarousel/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"index.php/woocarousel/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:73:"index.php/berocket_taxonomy_data/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?berocket_taxonomy_data=$matches[1]&feed=$matches[2]";s:68:"index.php/berocket_taxonomy_data/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:61:"index.php?berocket_taxonomy_data=$matches[1]&feed=$matches[2]";s:49:"index.php/berocket_taxonomy_data/([^/]+)/embed/?$";s:55:"index.php?berocket_taxonomy_data=$matches[1]&embed=true";s:61:"index.php/berocket_taxonomy_data/([^/]+)/page/?([0-9]{1,})/?$";s:62:"index.php?berocket_taxonomy_data=$matches[1]&paged=$matches[2]";s:43:"index.php/berocket_taxonomy_data/([^/]+)/?$";s:44:"index.php?berocket_taxonomy_data=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:37:"index.php/comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=10&cpage=$matches[1]";s:27:"index.php/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:36:"index.php/comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:39:"index.php/search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:42:"index.php/author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:64:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:51:"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:38:"index.php/([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:72:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:72:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:83:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:35:"index.php/(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:38:"index.php/(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:43:"index.php/(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:35:"index.php/(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:39:"index.php/(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:38:"index.php/(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:41:"index.php/(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:41:"index.php/(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:44:"index.php/(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:42:"index.php/(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:44:"index.php/(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:47:"index.php/(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:50:"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:55:"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:41:"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:16:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";i:2;s:41:"better-wp-security/better-wp-security.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:25:"duplicator/duplicator.php";i:5;s:53:"facebook-for-woocommerce/facebook-for-woocommerce.php";i:6;s:36:"google-sitemap-generator/sitemap.php";i:7;s:41:"image-title-remove/image-title-remove.php";i:8;s:21:"newsletter/plugin.php";i:9;s:35:"perfect-woocommerce-brands/main.php";i:10;s:49:"premmerce-woocommerce-brands/premmerce-brands.php";i:11;s:53:"product-carousel-slider-for-woocommerce/wpcs-main.php";i:12;s:47:"really-simple-captcha/really-simple-captcha.php";i:13;s:48:"woocommerce-ajax-filters/woocommerce-filters.php";i:14;s:27:"woocommerce/woocommerce.php";i:15;s:27:"wp-super-cache/wp-cache.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'victorynox', 'yes'),
(41, 'stylesheet', 'victorynox', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:4:{s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:16:"handle_uninstall";}s:48:"woocommerce-ajax-filters/woocommerce-filters.php";a:2:{i:0;s:13:"BeRocket_AAPF";i:1;s:12:"deactivation";}s:49:"premmerce-woocommerce-brands/premmerce-brands.php";a:2:{i:0;s:29:"Premmerce\\Brands\\BrandsPlugin";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1591183666', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:144:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:16:"aiosp_manage_seo";b:1;s:15:"manage_berocket";b:1;s:23:"manage_berocket_account";b:1;s:18:"edit_single_filter";b:1;s:18:"read_single_filter";b:1;s:20:"delete_single_filter";b:1;s:19:"edit_single_filters";b:1;s:26:"edit_others_single_filters";b:1;s:22:"publish_single_filters";b:1;s:27:"read_private_single_filters";b:1;s:21:"delete_single_filters";b:1;s:29:"delete_private_single_filters";b:1;s:31:"delete_published_single_filters";b:1;s:28:"delete_others_single_filters";b:1;s:27:"edit_private_single_filters";b:1;s:29:"edit_published_single_filters";b:1;s:18:"edit_group_filters";b:1;s:18:"read_group_filters";b:1;s:20:"delete_group_filters";b:1;s:19:"edit_group_filterss";b:1;s:26:"edit_others_group_filterss";b:1;s:22:"publish_group_filterss";b:1;s:27:"read_private_group_filterss";b:1;s:21:"delete_group_filterss";b:1;s:29:"delete_private_group_filterss";b:1;s:31:"delete_published_group_filterss";b:1;s:28:"delete_others_group_filterss";b:1;s:27:"edit_private_group_filterss";b:1;s:29:"edit_published_group_filterss";b:1;s:20:"manage_berocket_aapf";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:4:{i:0;s:28:"woocommerce_product_search-2";i:1;s:32:"woocommerce_product_categories-2";i:2;s:26:"woocommerce_price_filter-2";i:3;s:31:"woocommerce_product_tag_cloud-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:18:{i:1578055058;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1578055145;a:1:{s:10:"newsletter";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"newsletter";s:4:"args";a:0:{}s:8:"interval";i:300;}}}i:1578055617;a:1:{s:11:"wp_cache_gc";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1578057516;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1578058068;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1578058617;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1578079116;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578079126;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578084006;a:1:{s:13:"sm_ping_daily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578089916;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578094068;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1578096000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578100796;a:1:{s:15:"itsec_cron_test";a:1:{s:32:"bdfd302fa73c0c3401b2a260845cd6fb";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:1578100796;}}}}i:1578137268;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578137439;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578137442;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578355200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'nonce_key', 'FOKQ;.aQu{hNvf3:<%d^X8|r+Q&_4Hz]q#BMTAq~j?[q]c@wH~Y-BSW0>e]qP0X/', 'no'),
(111, 'nonce_salt', 'n&(r!Q+A^/uvE6M~Y[!Jcj#}D70&fCGY|)]eg;z&#sQ[> ~JFQBlr4}~x_1mr#pQ', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1575651988;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(124, 'auth_key', 'd28wTk9bMf XI2?3mFl}JC&4j<#k39dTwh+:&q6we&%{*@Q3ic5U@,o1=3p7@]kU', 'no'),
(125, 'auth_salt', '0yzE@w le|$7J6X[D31.s?iG)YMYbz%VN9C3p;g13t_~}adwnVlH/ipmMld{n{5H', 'no'),
(126, 'logged_in_key', 'VOOWlk!.nU1O]Yic.KQc w#lE%b/DH55BEfE~/Pw~iKp9W-{-8)AQ,vE!f^A;Tdj', 'no'),
(127, 'logged_in_salt', 'xB7U4}j&k%Od65zZD!JNuWdzs$&33!05]PPo]$`c1*jQ81J>xj, n|d(YC_6z1D`', 'no'),
(133, 'can_compress_scripts', '0', 'no'),
(149, 'current_theme', 'Victorynox', 'yes'),
(150, 'theme_mods_victorynox', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:7:{s:11:"header-menu";i:38;s:8:"tag-menu";i:39;s:12:"account-menu";i:40;s:12:"footer-menu1";i:41;s:12:"footer-menu2";i:42;s:11:"mobile-menu";i:0;s:12:"footer-menu3";i:43;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:171;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(162, 'woocommerce_store_address', 'Pobeda45', 'yes'),
(163, 'woocommerce_store_address_2', '', 'yes'),
(164, 'woocommerce_store_city', 'Kiev', 'yes'),
(165, 'woocommerce_default_country', 'UA:*', 'yes'),
(166, 'woocommerce_store_postcode', '01010', 'yes'),
(167, 'woocommerce_allowed_countries', 'all', 'yes'),
(168, 'woocommerce_all_except_countries', '', 'yes'),
(169, 'woocommerce_specific_allowed_countries', '', 'yes'),
(170, 'woocommerce_ship_to_countries', '', 'yes'),
(171, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(172, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(173, 'woocommerce_calc_taxes', 'no', 'yes'),
(174, 'woocommerce_enable_coupons', 'yes', 'yes'),
(175, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(176, 'woocommerce_currency', 'UAH', 'yes'),
(177, 'woocommerce_currency_pos', 'left', 'yes'),
(178, 'woocommerce_price_thousand_sep', ',', 'yes'),
(179, 'woocommerce_price_decimal_sep', '.', 'yes'),
(180, 'woocommerce_price_num_decimals', '2', 'yes'),
(181, 'woocommerce_shop_page_id', '6', 'yes'),
(182, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(183, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(184, 'woocommerce_placeholder_image', '5', 'yes'),
(185, 'woocommerce_weight_unit', 'kg', 'yes'),
(186, 'woocommerce_dimension_unit', 'cm', 'yes'),
(187, 'woocommerce_enable_reviews', 'yes', 'yes'),
(188, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(189, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(190, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(191, 'woocommerce_review_rating_required', 'yes', 'no'),
(192, 'woocommerce_manage_stock', 'yes', 'yes'),
(193, 'woocommerce_hold_stock_minutes', '60', 'no'),
(194, 'woocommerce_notify_low_stock', 'yes', 'no'),
(195, 'woocommerce_notify_no_stock', 'yes', 'no'),
(196, 'woocommerce_stock_email_recipient', 'sinevor13@gmail.com', 'no'),
(197, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(198, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(199, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(200, 'woocommerce_stock_format', '', 'yes'),
(201, 'woocommerce_file_download_method', 'force', 'no'),
(202, 'woocommerce_downloads_require_login', 'no', 'no'),
(203, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(204, 'woocommerce_prices_include_tax', 'no', 'yes'),
(205, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(206, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(207, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(208, 'woocommerce_tax_classes', '', 'yes'),
(209, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(210, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(211, 'woocommerce_price_display_suffix', '', 'yes'),
(212, 'woocommerce_tax_total_display', 'itemized', 'no'),
(213, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(214, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(215, 'woocommerce_ship_to_destination', 'billing', 'no'),
(216, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(217, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(218, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(219, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(221, 'woocommerce_registration_generate_username', 'no', 'no'),
(222, 'woocommerce_registration_generate_password', 'no', 'no'),
(223, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(224, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(225, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(226, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(227, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(228, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(229, 'woocommerce_trash_pending_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(230, 'woocommerce_trash_failed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(231, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(232, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(233, 'woocommerce_email_from_name', 'Victorynox', 'no'),
(234, 'woocommerce_email_from_address', 'sinevor13@gmail.com', 'no'),
(235, 'woocommerce_email_header_image', '', 'no'),
(236, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(237, 'woocommerce_email_base_color', '#96588a', 'no'),
(238, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(239, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(240, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(241, 'woocommerce_cart_page_id', '7', 'no'),
(242, 'woocommerce_checkout_page_id', '8', 'no'),
(243, 'woocommerce_myaccount_page_id', '9', 'no'),
(244, 'woocommerce_terms_page_id', '', 'no'),
(245, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(246, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(247, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(248, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(249, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(250, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(251, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(252, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(253, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(254, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(255, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(256, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(257, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(258, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(259, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(260, 'woocommerce_api_enabled', 'no', 'yes'),
(261, 'woocommerce_allow_tracking', 'no', 'no'),
(262, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(263, 'woocommerce_single_image_width', '600', 'yes'),
(264, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(265, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(266, 'woocommerce_demo_store', 'no', 'no'),
(267, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(268, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(269, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(270, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(272, 'default_product_cat', '15', 'yes'),
(275, 'woocommerce_version', '3.8.1', 'yes'),
(276, 'woocommerce_db_version', '3.8.1', 'yes'),
(277, 'recently_activated', 'a:0:{}', 'yes'),
(278, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(279, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(280, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(283, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:"title";s:15:"Filter by price";}s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:"title";s:18:"Product categories";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;s:9:"max_depth";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'widget_woocommerce_product_search', 'a:2:{i:2;a:1:{s:5:"title";s:14:"Product search";}s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'widget_woocommerce_product_tag_cloud', 'a:2:{i:2;a:1:{s:5:"title";s:12:"Product tags";}s:12:"_multiwidget";i:1;}', 'yes'),
(287, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(288, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(289, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(290, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(291, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(298, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(302, 'woocommerce_product_type', 'both', 'yes'),
(303, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(304, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(305, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(306, '_transient_shipping-transient-version', '1575659958', 'yes'),
(326, 'acf_version', '5.8.7', 'yes'),
(334, 'wp_super_cache_index_detected', '3', 'no'),
(358, 'sm_rewrite_done', '$Id: sitemap-loader.php 937300 2014-06-23 18:04:11Z arnee $', 'yes'),
(372, 'itsec-storage', 'a:2:{s:6:"global";a:33:{s:15:"lockout_message";s:5:"error";s:20:"user_lockout_message";s:64:"You have been locked out due to too many invalid login attempts.";s:25:"community_lockout_message";s:77:"Your IP address has been flagged as a threat by the iThemes Security network.";s:9:"blacklist";b:1;s:15:"blacklist_count";i:3;s:16:"blacklist_period";i:7;s:14:"lockout_period";i:15;s:18:"lockout_white_list";a:0:{}s:12:"log_rotation";i:60;s:17:"file_log_rotation";i:180;s:8:"log_type";s:8:"database";s:12:"log_location";s:65:"/var/www/html/wordpress3/wp-content/uploads/ithemes-security/logs";s:8:"log_info";s:0:"";s:14:"allow_tracking";b:0;s:11:"write_files";b:1;s:10:"nginx_file";s:35:"/var/www/html/wordpress3/nginx.conf";s:24:"infinitewp_compatibility";b:0;s:11:"did_upgrade";b:0;s:9:"lock_file";b:0;s:5:"proxy";s:9:"automatic";s:12:"proxy_header";s:20:"HTTP_X_FORWARDED_FOR";s:14:"hide_admin_bar";b:0;s:16:"show_error_codes";b:0;s:19:"show_security_check";b:1;s:5:"build";i:4115;s:13:"initial_build";i:4115;s:20:"activation_timestamp";i:1575661221;s:11:"cron_status";i:0;s:8:"use_cron";b:0;s:14:"cron_test_time";i:1578100796;s:19:"enable_grade_report";b:0;s:10:"server_ips";a:0:{}s:13:"feature_flags";a:0:{}}s:19:"notification-center";a:8:{s:9:"last_sent";a:1:{s:6:"digest";i:1578055016;}s:9:"resend_at";a:0:{}s:4:"data";a:1:{s:6:"digest";a:0:{}}s:15:"last_mail_error";s:0:"";s:13:"notifications";a:3:{s:6:"digest";a:5:{s:8:"schedule";s:5:"daily";s:7:"enabled";b:1;s:9:"user_list";a:1:{i:0;s:18:"role:administrator";}s:14:"recipient_type";s:7:"default";s:7:"subject";N;}s:7:"lockout";a:4:{s:7:"enabled";b:1;s:9:"user_list";a:1:{i:0;s:18:"role:administrator";}s:14:"recipient_type";s:7:"default";s:7:"subject";N;}s:6:"backup";a:2:{s:10:"email_list";a:1:{i:0;s:19:"sinevor13@gmail.com";}s:7:"subject";N;}}s:12:"admin_emails";a:0:{}s:10:"from_email";s:0:"";s:18:"default_recipients";a:1:{s:9:"user_list";a:1:{i:0;s:18:"role:administrator";}}}}', 'yes'),
(373, 'itsec_temp_whitelist_ip', 'a:1:{s:3:"::1";i:1577035728;}', 'no'),
(374, 'duplicator_settings', 'a:15:{s:7:"version";s:6:"1.3.24";s:18:"uninstall_settings";b:1;s:15:"uninstall_files";b:1;s:16:"uninstall_tables";b:1;s:13:"package_debug";b:0;s:17:"package_mysqldump";b:1;s:22:"package_mysqldump_path";s:0:"";s:24:"package_phpdump_qrylimit";s:3:"100";s:17:"package_zip_flush";b:0;s:20:"storage_htaccess_off";b:0;s:18:"archive_build_mode";i:2;s:17:"skip_archive_scan";b:0;s:21:"unhook_third_party_js";b:0;s:22:"unhook_third_party_css";b:0;s:17:"active_package_id";i:-1;}', 'yes'),
(375, 'duplicator_version_plugin', '1.3.24', 'yes'),
(378, 'aioseop_options', 'a:78:{s:16:"aiosp_home_title";N;s:22:"aiosp_home_description";s:0:"";s:20:"aiosp_togglekeywords";i:1;s:19:"aiosp_home_keywords";N;s:26:"aiosp_use_static_home_info";i:0;s:9:"aiosp_can";i:1;s:30:"aiosp_no_paged_canonical_links";i:0;s:20:"aiosp_force_rewrites";i:1;s:24:"aiosp_use_original_title";i:0;s:28:"aiosp_home_page_title_format";s:12:"%page_title%";s:23:"aiosp_page_title_format";s:27:"%page_title% | %site_title%";s:23:"aiosp_post_title_format";s:27:"%post_title% | %site_title%";s:27:"aiosp_category_title_format";s:31:"%category_title% | %site_title%";s:26:"aiosp_archive_title_format";s:30:"%archive_title% | %site_title%";s:23:"aiosp_date_title_format";s:21:"%date% | %site_title%";s:25:"aiosp_author_title_format";s:23:"%author% | %site_title%";s:22:"aiosp_tag_title_format";s:20:"%tag% | %site_title%";s:25:"aiosp_search_title_format";s:23:"%search% | %site_title%";s:24:"aiosp_description_format";s:13:"%description%";s:22:"aiosp_404_title_format";s:33:"Nothing found for %request_words%";s:18:"aiosp_paged_format";s:14:" - Part %page%";s:17:"aiosp_cpostactive";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:18:"aiosp_cpostnoindex";a:0:{}s:19:"aiosp_cpostnofollow";a:0:{}s:21:"aiosp_posttypecolumns";a:2:{i:0;s:4:"post";i:1;s:4:"page";}s:19:"aiosp_google_verify";s:0:"";s:17:"aiosp_bing_verify";s:0:"";s:22:"aiosp_pinterest_verify";s:0:"";s:19:"aiosp_yandex_verify";s:0:"";s:18:"aiosp_baidu_verify";s:0:"";s:25:"aiosp_google_analytics_id";N;s:25:"aiosp_ga_advanced_options";s:2:"on";s:15:"aiosp_ga_domain";N;s:21:"aiosp_ga_multi_domain";i:0;s:21:"aiosp_ga_addl_domains";N;s:21:"aiosp_ga_anonymize_ip";N;s:28:"aiosp_ga_display_advertising";N;s:22:"aiosp_ga_exclude_users";N;s:29:"aiosp_ga_track_outbound_links";i:0;s:25:"aiosp_ga_link_attribution";i:0;s:27:"aiosp_ga_enhanced_ecommerce";i:0;s:19:"aiosp_schema_markup";s:1:"1";s:32:"aiosp_schema_search_results_page";s:1:"1";s:33:"aiosp_schema_social_profile_links";s:0:"";s:28:"aiosp_schema_site_represents";s:12:"organization";s:30:"aiosp_schema_organization_name";s:0:"";s:30:"aiosp_schema_organization_logo";s:0:"";s:24:"aiosp_schema_person_user";s:1:"1";s:31:"aiosp_schema_person_manual_name";N;s:32:"aiosp_schema_person_manual_image";N;s:25:"aiosp_schema_phone_number";s:0:"";s:25:"aiosp_schema_contact_type";s:4:"none";s:20:"aiosp_use_categories";i:0;s:26:"aiosp_use_tags_as_keywords";i:1;s:32:"aiosp_dynamic_postspage_keywords";i:1;s:22:"aiosp_category_noindex";i:1;s:26:"aiosp_archive_date_noindex";i:1;s:28:"aiosp_archive_author_noindex";i:1;s:18:"aiosp_tags_noindex";i:0;s:20:"aiosp_search_noindex";i:0;s:17:"aiosp_404_noindex";i:0;s:17:"aiosp_tax_noindex";a:0:{}s:23:"aiosp_paginated_noindex";i:0;s:24:"aiosp_paginated_nofollow";i:0;s:27:"aiosp_generate_descriptions";i:0;s:18:"aiosp_skip_excerpt";i:0;s:20:"aiosp_run_shortcodes";i:0;s:33:"aiosp_hide_paginated_descriptions";i:0;s:32:"aiosp_dont_truncate_descriptions";i:0;s:20:"aiosp_unprotect_meta";i:0;s:33:"aiosp_redirect_attachement_parent";i:0;s:14:"aiosp_ex_pages";s:0:"";s:20:"aiosp_post_meta_tags";s:0:"";s:20:"aiosp_page_meta_tags";s:0:"";s:21:"aiosp_front_meta_tags";s:0:"";s:20:"aiosp_home_meta_tags";s:0:"";s:12:"aiosp_do_log";N;s:19:"last_active_version";s:5:"3.3.3";}', 'yes'),
(379, 'aioseop_notices', 'a:2:{s:7:"notices";a:1:{s:20:"woocommerce_detected";a:3:{s:4:"slug";s:20:"woocommerce_detected";s:10:"time_start";i:1575661229;s:8:"time_set";i:1575661230;}}s:14:"active_notices";a:1:{s:20:"woocommerce_detected";i:1575661229;}}', 'no'),
(386, 'wpsupercache_start', '1575661313', 'yes'),
(387, 'wpsupercache_count', '0', 'yes'),
(388, 'wpsupercache_gc_time', '1578055017', 'yes'),
(389, 'supercache_stats', 'a:3:{s:9:"generated";i:1575987035;s:10:"supercache";a:5:{s:7:"expired";i:0;s:6:"cached";i:0;s:5:"fsize";i:0;s:11:"cached_list";a:0:{}s:12:"expired_list";a:0:{}}s:7:"wpcache";a:5:{s:7:"expired";i:0;s:6:"cached";i:0;s:5:"fsize";i:0;s:11:"cached_list";a:0:{}s:12:"expired_list";a:0:{}}}', 'yes'),
(415, 'wpsc_feed_list', 'a:0:{}', 'yes'),
(419, 'sm_options', 'a:52:{s:18:"sm_b_prio_provider";s:41:"GoogleSitemapGeneratorPrioByCountProvider";s:9:"sm_b_ping";b:1;s:10:"sm_b_stats";b:0;s:12:"sm_b_pingmsn";b:1;s:12:"sm_b_autozip";b:1;s:11:"sm_b_memory";s:0:"";s:9:"sm_b_time";i:-1;s:18:"sm_b_style_default";b:1;s:10:"sm_b_style";s:0:"";s:12:"sm_b_baseurl";s:0:"";s:11:"sm_b_robots";b:1;s:9:"sm_b_html";b:1;s:12:"sm_b_exclude";a:0:{}s:17:"sm_b_exclude_cats";a:0:{}s:10:"sm_in_home";b:1;s:11:"sm_in_posts";b:1;s:15:"sm_in_posts_sub";b:0;s:11:"sm_in_pages";b:1;s:10:"sm_in_cats";b:0;s:10:"sm_in_arch";b:0;s:10:"sm_in_auth";b:0;s:10:"sm_in_tags";b:0;s:9:"sm_in_tax";a:0:{}s:17:"sm_in_customtypes";a:0:{}s:13:"sm_in_lastmod";b:1;s:10:"sm_cf_home";s:5:"daily";s:11:"sm_cf_posts";s:7:"monthly";s:11:"sm_cf_pages";s:6:"weekly";s:10:"sm_cf_cats";s:6:"weekly";s:10:"sm_cf_auth";s:6:"weekly";s:15:"sm_cf_arch_curr";s:5:"daily";s:14:"sm_cf_arch_old";s:6:"yearly";s:10:"sm_cf_tags";s:6:"weekly";s:10:"sm_pr_home";d:1;s:11:"sm_pr_posts";d:0.6;s:15:"sm_pr_posts_min";d:0.2;s:11:"sm_pr_pages";d:0.6;s:10:"sm_pr_cats";d:0.3;s:10:"sm_pr_arch";d:0.3;s:10:"sm_pr_auth";d:0.3;s:10:"sm_pr_tags";d:0.3;s:12:"sm_i_donated";b:0;s:17:"sm_i_hide_donated";b:0;s:17:"sm_i_install_date";i:1575664218;s:16:"sm_i_hide_survey";b:0;s:14:"sm_i_hide_note";b:0;s:15:"sm_i_hide_works";b:0;s:16:"sm_i_hide_donors";b:0;s:9:"sm_i_hash";s:20:"054e9862e3cd6e0c530e";s:13:"sm_i_lastping";i:1576949389;s:16:"sm_i_supportfeed";b:1;s:22:"sm_i_supportfeed_cache";i:1578055019;}', 'yes'),
(420, 'sm_status', 'O:28:"GoogleSitemapGeneratorStatus":4:{s:39:"\0GoogleSitemapGeneratorStatus\0startTime";d:1576949388.468751;s:37:"\0GoogleSitemapGeneratorStatus\0endTime";d:1576949389.136616;s:41:"\0GoogleSitemapGeneratorStatus\0pingResults";a:2:{s:6:"google";a:5:{s:9:"startTime";d:1576949388.476223;s:7:"endTime";d:1576949388.815998;s:7:"success";b:0;s:3:"url";s:128:"http://www.google.com/webmasters/sitemaps/ping?sitemap=http%3A%2F%2Flocalhost%2Fwordpress3%2Findex.php%3Fxml_sitemap%3Dparams%3D";s:4:"name";s:6:"Google";}s:4:"bing";a:5:{s:9:"startTime";d:1576949388.821072;s:7:"endTime";d:1576949389.122914;s:7:"success";b:1;s:3:"url";s:121:"http://www.bing.com/webmaster/ping.aspx?siteMap=http%3A%2F%2Flocalhost%2Fwordpress3%2Findex.php%3Fxml_sitemap%3Dparams%3D";s:4:"name";s:4:"Bing";}}s:38:"\0GoogleSitemapGeneratorStatus\0autoSave";b:1;}', 'no'),
(462, 'wc_pwb_admin_tab_brand_single_position', 'after_meta', 'yes'),
(463, 'pwb_activate_on', '1575665654', 'yes'),
(464, 'old_wc_pwb_admin_tab_slug', 'brand', 'yes'),
(465, 'widget_pwb_list_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(466, 'widget_pwb_dropdown_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(467, 'widget_pwb_filter_by_brand_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(468, 'BeRocket_aapf_additional_tables_addon_position_data', 'a:2:{s:6:"status";i:100;s:3:"run";b:0;}', 'yes'),
(469, 'berocket_plugin_error_1', 'a:5:{i:0;a:3:{s:7:"message";s:28:"Additional tables generation";s:4:"data";a:3:{s:5:"query";s:619:"CREATE TABLE wp_braapf_term_taxonomy_hierarchical (\n        term_taxonomy_id bigint(20) NOT NULL,\n        term_id bigint(20) NOT NULL,\n        term_taxonomy_child_id bigint(20) NOT NULL,\n        term_child_id bigint(20) NOT NULL,\n        taxonomy varchar(32) NOT NULL,\n        INDEX term_taxonomy_id (term_taxonomy_id),\n        INDEX term_taxonomy_child_id (term_taxonomy_child_id),\n        INDEX child_parent_id (term_taxonomy_id, term_taxonomy_child_id),\n        UNIQUE uniqueid (term_taxonomy_id, term_id, term_taxonomy_child_id, term_child_id)\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;";s:5:"error";a:1:{s:36:"wp_braapf_term_taxonomy_hierarchical";s:50:"Created table wp_braapf_term_taxonomy_hierarchical";}s:4:"cron";s:7:"ENABLED";}s:4:"time";i:1575665658;}i:1;a:3:{s:7:"message";s:28:"Additional tables generation";s:4:"data";a:3:{s:5:"query";s:306:"CREATE TABLE wp_braapf_product_stock_status_parent (\n        post_id bigint(20) NOT NULL,\n        parent_id bigint(20) NOT NULL,\n        stock_status tinyint(2),\n        PRIMARY KEY (post_id),\n        INDEX stock_status (stock_status)\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;";s:5:"error";a:1:{s:37:"wp_braapf_product_stock_status_parent";s:51:"Created table wp_braapf_product_stock_status_parent";}s:4:"cron";s:7:"ENABLED";}s:4:"time";i:1575665658;}i:2;a:3:{s:7:"message";s:28:"Additional tables generation";s:4:"data";a:3:{s:5:"query";s:136:"SELECT MIN(wp_wc_product_meta_lookup.product_id) as min, MAX(wp_wc_product_meta_lookup.product_id) as max FROM wp_wc_product_meta_lookup";s:5:"error";O:8:"stdClass":2:{s:3:"min";N;s:3:"max";N;}s:4:"cron";s:7:"ENABLED";}s:4:"time";i:1575665658;}i:3;a:3:{s:7:"message";s:28:"Additional tables generation";s:4:"data";a:3:{s:5:"query";s:455:"CREATE TABLE wp_braapf_product_variation_attributes (\n        post_id bigint(20) NOT NULL,\n        parent_id bigint(20) NOT NULL,\n        meta_key varchar(32) NOT NULL,\n        meta_value_id bigint(20) NOT NULL,\n        INDEX post_id (post_id),\n        INDEX meta_key (meta_key),\n        INDEX meta_value_id (meta_value_id),\n        UNIQUE uniqueid (post_id, meta_key, meta_value_id)\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;";s:5:"error";a:1:{s:38:"wp_braapf_product_variation_attributes";s:52:"Created table wp_braapf_product_variation_attributes";}s:4:"cron";s:7:"ENABLED";}s:4:"time";i:1575665660;}i:4;a:3:{s:7:"message";s:28:"Additional tables generation";s:4:"data";a:3:{s:5:"query";s:305:"CREATE TABLE wp_braapf_variation_attributes (\n        post_id bigint(20) NOT NULL,\n        taxonomy varchar(32) NOT NULL,\n        INDEX post_id (post_id),\n        INDEX taxonomy (taxonomy),\n        UNIQUE uniqueid (post_id, taxonomy)\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;";s:5:"error";a:1:{s:30:"wp_braapf_variation_attributes";s:44:"Created table wp_braapf_variation_attributes";}s:4:"cron";s:7:"ENABLED";}s:4:"time";i:1575665668;}}', 'yes'),
(470, 'BeRocket_aapf_additional_tables_addon_position', '9', 'yes'),
(472, 'br_filters_options', 'a:62:{s:10:"plugin_key";s:0:"";s:19:"no_products_message";s:43:"There are no products meeting your criteria";s:12:"pos_relative";s:1:"1";s:17:"no_products_class";s:0:"";s:18:"products_holder_id";s:11:"ul.products";s:30:"woocommerce_result_count_class";s:25:".woocommerce-result-count";s:26:"woocommerce_ordering_class";s:25:"form.woocommerce-ordering";s:28:"woocommerce_pagination_class";s:23:".woocommerce-pagination";s:19:"woocommerce_removes";a:4:{s:12:"result_count";s:0:"";s:8:"ordering";s:0:"";s:10:"pagination";s:0:"";s:15:"pagination_ajax";s:0:"";}s:17:"products_per_page";s:0:"";s:15:"attribute_count";s:0:"";s:15:"control_sorting";s:1:"1";s:17:"seo_friendly_urls";s:1:"1";s:14:"seo_uri_decode";s:1:"1";s:9:"slug_urls";s:0:"";s:14:"seo_meta_title";s:0:"";s:17:"seo_element_title";s:0:"";s:18:"seo_element_header";s:0:"";s:23:"seo_element_description";s:0:"";s:21:"seo_meta_title_visual";s:33:"BeRocket_AAPF_wcseo_title_visual1";s:16:"filters_turn_off";s:0:"";s:15:"show_all_values";s:1:"1";s:10:"hide_value";a:4:{s:1:"o";s:1:"1";s:3:"sel";s:0:"";s:5:"empty";s:1:"1";s:6:"button";s:1:"1";}s:11:"use_select2";s:0:"";s:13:"fixed_select2";s:0:"";s:15:"first_page_jump";s:1:"1";s:15:"scroll_shop_top";s:0:"";s:18:"scroll_shop_top_px";s:4:"-180";s:16:"recount_products";s:1:"1";s:18:"selected_area_show";s:0:"";s:24:"selected_area_hide_empty";s:0:"";s:13:"products_only";s:1:"1";s:21:"out_of_stock_variable";s:0:"";s:28:"out_of_stock_variable_reload";s:0:"";s:28:"out_of_stock_variable_single";s:0:"";s:16:"alternative_load";s:0:"";s:21:"alternative_load_type";s:6:"wpajax";s:19:"page_same_as_filter";s:0:"";s:13:"use_get_query";s:1:"1";s:16:"styles_in_footer";s:0:"";s:15:"product_per_row";s:1:"4";s:12:"styles_input";a:6:{s:8:"checkbox";a:8:{s:6:"bcolor";s:0:"";s:6:"bwidth";s:0:"";s:7:"bradius";s:0:"";s:6:"fcolor";s:0:"";s:9:"backcolor";s:0:"";s:4:"icon";s:0:"";s:8:"fontsize";s:0:"";s:5:"theme";s:0:"";}s:5:"radio";a:8:{s:6:"bcolor";s:0:"";s:6:"bwidth";s:0:"";s:7:"bradius";s:0:"";s:6:"fcolor";s:0:"";s:9:"backcolor";s:0:"";s:4:"icon";s:0:"";s:8:"fontsize";s:0:"";s:5:"theme";s:0:"";}s:6:"slider";a:9:{s:10:"line_color";s:0:"";s:11:"line_height";s:0:"";s:17:"line_border_color";s:0:"";s:17:"line_border_width";s:0:"";s:11:"button_size";s:0:"";s:12:"button_color";s:0:"";s:19:"button_border_color";s:0:"";s:19:"button_border_width";s:0:"";s:20:"button_border_radius";s:0:"";}s:5:"pc_ub";a:10:{s:10:"back_color";s:0:"";s:12:"border_color";s:0:"";s:9:"font_size";s:0:"";s:10:"font_color";s:0:"";s:14:"show_font_size";s:0:"";s:10:"close_size";s:0:"";s:15:"show_font_color";s:0:"";s:21:"show_font_color_hover";s:0:"";s:16:"close_font_color";s:0:"";s:22:"close_font_color_hover";s:0:"";}s:13:"product_count";s:5:"round";s:22:"product_count_position";s:0:"";}s:16:"child_pre_indent";s:0:"";s:14:"ajax_load_icon";s:0:"";s:14:"ajax_load_text";a:4:{s:3:"top";s:0:"";s:6:"bottom";s:0:"";s:4:"left";s:0:"";s:5:"right";s:0:"";}s:11:"description";a:2:{s:4:"show";s:5:"click";s:4:"hide";s:5:"click";}s:9:"user_func";a:3:{s:13:"before_update";s:0:"";s:9:"on_update";s:0:"";s:12:"after_update";s:0:"";}s:10:"custom_css";s:0:"";s:15:"user_custom_css";s:0:"";s:13:"br_opened_tab";s:7:"general";s:11:"tags_custom";s:1:"1";s:9:"ajax_site";s:0:"";s:10:"search_fix";s:1:"1";s:17:"use_tax_for_price";s:0:"";s:20:"disable_font_awesome";s:0:"";s:10:"debug_mode";s:0:"";s:17:"ajax_request_load";s:1:"1";s:23:"ajax_request_load_style";s:6:"jquery";s:28:"fontawesome_frontend_disable";s:0:"";s:28:"fontawesome_frontend_version";s:0:"";s:6:"addons";a:1:{i:0;s:40:"/additional_tables/additional_tables.php";}s:16:"purge_cache_time";i:1575665658;}', 'yes'),
(473, 'br_filters_version', '1.4.0.5', 'yes'),
(474, 'widget_berocket_aapf_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(475, 'widget_berocket_aapf_group', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(476, 'widget_berocket_aapf_single', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(477, 'berocket_filter_open_wizard_on_settings', '1', 'yes'),
(478, 'BeRocket_Framework_plugins_version_check', 'a:1:{s:12:"ajax_filters";s:7:"1.4.0.5";}', 'yes'),
(479, 'berocket_admin_notices', 'a:1:{i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:"subscribe";a:15:{s:5:"start";i:0;s:3:"end";i:0;s:4:"name";s:9:"subscribe";s:4:"html";s:136:"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.";s:9:"righthtml";s:43:"<a class="berocket_no_thanks">No thanks</a>";s:10:"rightwidth";i:80;s:13:"nothankswidth";i:60;s:12:"contentwidth";i:400;s:9:"subscribe";b:1;s:6:"closed";i:2;s:8:"priority";i:20;s:6:"height";i:50;s:6:"repeat";b:0;s:11:"repeatcount";i:1;s:5:"image";a:4:{s:5:"local";s:129:"http://localhost/wordpress3/wp-content/plugins/woocommerce-ajax-filters/berocket/includes/../assets/images/ad_white_on_orange.png";s:5:"width";i:239;s:6:"height";i:118;s:5:"scale";d:0.423728813559322;}}}}}}', 'yes'),
(482, 'berocket_current_displayed_notice', '', 'yes'),
(483, 'berocket_admin_notices_rate_stars', 'a:1:{i:1;a:2:{s:4:"time";i:1576270459;s:5:"count";i:0;}}', 'yes'),
(485, 'berocket_information_notices', 'a:0:{}', 'yes'),
(487, 'fs_active_plugins', 'O:8:"stdClass":3:{s:7:"plugins";a:1:{s:37:"premmerce-woocommerce-brands/freemius";O:8:"stdClass":4:{s:7:"version";s:5:"2.3.0";s:4:"type";s:6:"plugin";s:9:"timestamp";i:1575665700;s:11:"plugin_path";s:49:"premmerce-woocommerce-brands/premmerce-brands.php";}}s:7:"abspath";s:25:"/var/www/html/wordpress3/";s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:49:"premmerce-woocommerce-brands/premmerce-brands.php";s:8:"sdk_path";s:37:"premmerce-woocommerce-brands/freemius";s:7:"version";s:5:"2.3.0";s:13:"in_activation";b:0;s:9:"timestamp";i:1575665700;}}', 'yes'),
(488, 'fs_debug_mode', '', 'yes'),
(489, 'fs_accounts', 'a:5:{s:21:"id_slug_type_path_map";a:1:{i:1492;a:3:{s:4:"slug";s:28:"premmerce-woocommerce-brands";s:4:"type";s:6:"plugin";s:4:"path";s:49:"premmerce-woocommerce-brands/premmerce-brands.php";}}s:11:"plugin_data";a:1:{s:28:"premmerce-woocommerce-brands";a:15:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:49:"premmerce-woocommerce-brands/premmerce-brands.php";}s:20:"is_network_activated";b:0;s:17:"install_timestamp";i:1575665700;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"2.3.0";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:6:"1.2.10";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:9:"localhost";s:9:"server_ip";s:3:"::1";s:9:"is_active";b:1;s:9:"timestamp";i:1575665700;s:7:"version";s:6:"1.2.10";}s:17:"was_plugin_loaded";b:1;s:15:"prev_is_premium";b:0;}}s:13:"file_slug_map";a:1:{s:49:"premmerce-woocommerce-brands/premmerce-brands.php";s:28:"premmerce-woocommerce-brands";}s:7:"plugins";a:1:{s:28:"premmerce-woocommerce-brands";O:9:"FS_Plugin":22:{s:16:"parent_plugin_id";N;s:5:"title";s:32:"Premmerce Brands for WooCommerce";s:4:"slug";s:28:"premmerce-woocommerce-brands";s:12:"premium_slug";s:36:"premmerce-woocommerce-brands-premium";s:4:"type";s:6:"plugin";s:20:"affiliate_moderation";b:0;s:19:"is_wp_org_compliant";b:1;s:22:"premium_releases_count";N;s:4:"file";s:49:"premmerce-woocommerce-brands/premmerce-brands.php";s:7:"version";s:6:"1.2.10";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:14:"premium_suffix";s:9:"(Premium)";s:7:"is_live";b:1;s:9:"bundle_id";N;s:10:"public_key";s:32:"pk_74be3e0a5f62f80fe88dfc1742c94";s:10:"secret_key";N;s:2:"id";s:4:"1492";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;}}s:9:"unique_id";s:32:"8279aac684d63b5e4c19a5a45674e9cd";}', 'yes'),
(490, 'fs_api_cache', 'a:1:{s:30:"get:/v1/plugins/1492/info.json";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":3:{s:4:"path";s:29:":/plugins/plugin_id/info.json";s:5:"error";O:8:"stdClass":5:{s:4:"type";s:12:"ItemNotFound";s:7:"message";s:27:"Plugin_info 1492 not found.";s:4:"code";s:21:"plugin_info_not_found";s:4:"http";i:404;s:9:"timestamp";s:31:"Fri, 06 Dec 2019 20:55:04 +0000";}s:7:"request";O:8:"stdClass":2:{s:11:"sdk_version";s:5:"2.3.0";s:9:"plugin_id";s:4:"1492";}}s:7:"created";i:1575665702;s:9:"timestamp";i:1575968102;}}', 'yes'),
(491, 'fs_gdpr', 'a:1:{s:2:"u1";a:1:{s:8:"required";b:0;}}', 'yes'),
(496, 'widget_premmerce_brands_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(511, 'berocket_key_activated_plugins', 'a:1:{i:1;b:0;}', 'yes'),
(557, 'product_cat_children', 'a:0:{}', 'yes'),
(558, '_transient_product_query-transient-version', '1576949373', 'yes'),
(562, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:"suggestions";a:26:{i:0;a:4:{s:4:"slug";s:28:"product-edit-meta-tab-header";s:7:"context";s:28:"product-edit-meta-tab-header";s:5:"title";s:22:"Recommended extensions";s:13:"allow-dismiss";b:0;}i:1;a:6:{s:4:"slug";s:39:"product-edit-meta-tab-footer-browse-all";s:7:"context";s:28:"product-edit-meta-tab-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:2;a:9:{s:4:"slug";s:46:"product-edit-mailchimp-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-mailchimp";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:117:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg";s:5:"title";s:25:"Mailchimp for Memberships";s:4:"copy";s:79:"Completely automate your email lists by syncing membership changes to Mailchimp";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/mailchimp-woocommerce-memberships/";}i:3;a:9:{s:4:"slug";s:19:"product-edit-addons";s:7:"product";s:26:"woocommerce-product-addons";s:14:"show-if-active";a:2:{i:0;s:25:"woocommerce-subscriptions";i:1;s:20:"woocommerce-bookings";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg";s:5:"title";s:15:"Product Add-Ons";s:4:"copy";s:93:"Offer add-ons like gift wrapping, special messages or other special options for your products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-add-ons/";}i:4;a:9:{s:4:"slug";s:46:"product-edit-woocommerce-subscriptions-gifting";s:7:"product";s:33:"woocommerce-subscriptions-gifting";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:117:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg";s:5:"title";s:25:"Gifting for Subscriptions";s:4:"copy";s:70:"Let customers buy subscriptions for others - they\'re the ultimate gift";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/woocommerce-subscriptions-gifting/";}i:5;a:9:{s:4:"slug";s:42:"product-edit-teams-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-for-teams";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:113:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg";s:5:"title";s:21:"Teams for Memberships";s:4:"copy";s:123:"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/teams-woocommerce-memberships/";}i:6;a:8:{s:4:"slug";s:29:"product-edit-variation-images";s:7:"product";s:39:"woocommerce-additional-variation-images";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:119:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg";s:5:"title";s:27:"Additional Variation Images";s:4:"copy";s:72:"Showcase your products in the best light with a image for each variation";s:11:"button-text";s:10:"Learn More";s:3:"url";s:73:"https://woocommerce.com/products/woocommerce-additional-variation-images/";}i:7;a:9:{s:4:"slug";s:47:"product-edit-woocommerce-subscription-downloads";s:7:"product";s:34:"woocommerce-subscription-downloads";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:114:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg";s:5:"title";s:22:"Subscription Downloads";s:4:"copy";s:57:"Give customers special downloads with their subscriptions";s:11:"button-text";s:10:"Learn More";s:3:"url";s:68:"https://woocommerce.com/products/woocommerce-subscription-downloads/";}i:8;a:8:{s:4:"slug";s:31:"product-edit-min-max-quantities";s:7:"product";s:30:"woocommerce-min-max-quantities";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:110:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg";s:5:"title";s:18:"Min/Max Quantities";s:4:"copy";s:81:"Specify minimum and maximum allowed product quantities for orders to be completed";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/min-max-quantities/";}i:9;a:8:{s:4:"slug";s:28:"product-edit-name-your-price";s:7:"product";s:27:"woocommerce-name-your-price";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg";s:5:"title";s:15:"Name Your Price";s:4:"copy";s:70:"Let customers pay what they want - useful for donations, tips and more";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/name-your-price/";}i:10;a:8:{s:4:"slug";s:42:"product-edit-woocommerce-one-page-checkout";s:7:"product";s:29:"woocommerce-one-page-checkout";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg";s:5:"title";s:17:"One Page Checkout";s:4:"copy";s:92:"Don\'t make customers click around - let them choose products, checkout & pay all on one page";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/woocommerce-one-page-checkout/";}i:11;a:4:{s:4:"slug";s:19:"orders-empty-header";s:7:"context";s:24:"orders-list-empty-header";s:5:"title";s:20:"Tools for your store";s:13:"allow-dismiss";b:0;}i:12;a:6:{s:4:"slug";s:30:"orders-empty-footer-browse-all";s:7:"context";s:24:"orders-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:13;a:8:{s:4:"slug";s:19:"orders-empty-zapier";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:18:"woocommerce-zapier";s:4:"icon";s:98:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg";s:5:"title";s:6:"Zapier";s:4:"copy";s:88:"Save time and increase productivity by connecting your store to more than 1000+ services";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/woocommerce-zapier/";}i:14;a:8:{s:4:"slug";s:30:"orders-empty-shipment-tracking";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:29:"woocommerce-shipment-tracking";s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg";s:5:"title";s:17:"Shipment Tracking";s:4:"copy";s:86:"Let customers know when their orders will arrive by adding shipment tracking to emails";s:11:"button-text";s:10:"Learn More";s:3:"url";s:51:"https://woocommerce.com/products/shipment-tracking/";}i:15;a:8:{s:4:"slug";s:32:"orders-empty-table-rate-shipping";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:31:"woocommerce-table-rate-shipping";s:4:"icon";s:111:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg";s:5:"title";s:19:"Table Rate Shipping";s:4:"copy";s:122:"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/table-rate-shipping/";}i:16;a:8:{s:4:"slug";s:40:"orders-empty-shipping-carrier-extensions";s:7:"context";s:22:"orders-list-empty-body";s:4:"icon";s:119:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg";s:5:"title";s:27:"Shipping Carrier Extensions";s:4:"copy";s:116:"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again";s:11:"button-text";s:13:"Find Carriers";s:8:"promoted";s:26:"category-shipping-carriers";s:3:"url";s:99:"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/";}i:17;a:8:{s:4:"slug";s:32:"orders-empty-google-product-feed";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:25:"woocommerce-product-feeds";s:4:"icon";s:111:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg";s:5:"title";s:19:"Google Product Feed";s:4:"copy";s:76:"Increase sales by letting customers find you when they\'re shopping on Google";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/google-product-feed/";}i:18;a:4:{s:4:"slug";s:35:"products-empty-header-product-types";s:7:"context";s:26:"products-list-empty-header";s:5:"title";s:23:"Other types of products";s:13:"allow-dismiss";b:0;}i:19;a:6:{s:4:"slug";s:32:"products-empty-footer-browse-all";s:7:"context";s:26:"products-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:20;a:8:{s:4:"slug";s:30:"products-empty-product-vendors";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-vendors";s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg";s:5:"title";s:15:"Product Vendors";s:4:"copy";s:47:"Turn your store into a multi-vendor marketplace";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-vendors/";}i:21;a:8:{s:4:"slug";s:26:"products-empty-memberships";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:23:"woocommerce-memberships";s:4:"icon";s:103:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg";s:5:"title";s:11:"Memberships";s:4:"copy";s:76:"Give members access to restricted content or products, for a fee or for free";s:11:"button-text";s:10:"Learn More";s:3:"url";s:57:"https://woocommerce.com/products/woocommerce-memberships/";}i:22;a:9:{s:4:"slug";s:35:"products-empty-woocommerce-deposits";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-deposits";s:14:"show-if-active";a:1:{i:0;s:20:"woocommerce-bookings";}s:4:"icon";s:100:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg";s:5:"title";s:8:"Deposits";s:4:"copy";s:75:"Make it easier for customers to pay by offering a deposit or a payment plan";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-deposits/";}i:23;a:8:{s:4:"slug";s:40:"products-empty-woocommerce-subscriptions";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:25:"woocommerce-subscriptions";s:4:"icon";s:105:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg";s:5:"title";s:13:"Subscriptions";s:4:"copy";s:97:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis";s:11:"button-text";s:10:"Learn More";s:3:"url";s:59:"https://woocommerce.com/products/woocommerce-subscriptions/";}i:24;a:8:{s:4:"slug";s:35:"products-empty-woocommerce-bookings";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-bookings";s:4:"icon";s:100:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg";s:5:"title";s:8:"Bookings";s:4:"copy";s:99:"Allow customers to book appointments, make reservations or rent equipment without leaving your site";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-bookings/";}i:25;a:8:{s:4:"slug";s:30:"products-empty-product-bundles";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-bundles";s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg";s:5:"title";s:15:"Product Bundles";s:4:"copy";s:49:"Offer customizable bundles and assembled products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-bundles/";}}s:7:"updated";i:1575811275;}', 'no'),
(566, 'berocket_last_close_notices_time', '1575811316', 'yes'),
(567, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(568, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(573, '_transient_product-transient-version', '1575988398', 'yes'),
(627, 'category_children', 'a:0:{}', 'yes'),
(628, '_transient_timeout_wc_shipping_method_count_legacy', '1578406768', 'no'),
(629, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:"version";s:10:"1575659958";s:5:"value";i:0;}', 'no'),
(673, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(718, 'pwb-brand_children', 'a:0:{}', 'yes'),
(743, 'recovery_mode_email_last_sent', '1575982801', 'yes'),
(748, 'br_get_taxonomy_hierarchy_product_cat', 'a:5:{s:5:"terms";a:7:{i:15;O:7:"WP_Term":13:{s:7:"term_id";i:15;s:4:"name";s:13:"Uncategorized";s:4:"slug";s:13:"uncategorized";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:15;s:8:"taxonomy";s:11:"product_cat";s:11:"description";s:0:"";s:6:"parent";i:0;s:5:"count";i:0;s:6:"filter";s:3:"raw";s:5:"child";a:0:{}s:10:"child_list";a:0:{}s:11:"parent_list";a:1:{i:15;a:1:{i:0;i:15;}}}i:21;O:7:"WP_Term":13:{s:7:"term_id";i:21;s:4:"name";s:12:"Bowie Knives";s:4:"slug";s:12:"bowie-knives";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:21;s:8:"taxonomy";s:11:"product_cat";s:11:"description";s:0:"";s:6:"parent";i:0;s:5:"count";i:2;s:6:"filter";s:3:"raw";s:5:"child";a:0:{}s:10:"child_list";a:0:{}s:11:"parent_list";a:1:{i:21;a:1:{i:0;i:21;}}}i:22;O:7:"WP_Term":13:{s:7:"term_id";i:22;s:4:"name";s:12:"Gurkha Kukri";s:4:"slug";s:12:"gurkha-kukri";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:22;s:8:"taxonomy";s:11:"product_cat";s:11:"description";s:0:"";s:6:"parent";i:0;s:5:"count";i:3;s:6:"filter";s:3:"raw";s:5:"child";a:0:{}s:10:"child_list";a:0:{}s:11:"parent_list";a:1:{i:22;a:1:{i:0;i:22;}}}i:19;O:7:"WP_Term":13:{s:7:"term_id";i:19;s:4:"name";s:20:"Large Hunting Knives";s:4:"slug";s:20:"large-hunting-knives";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:19;s:8:"taxonomy";s:11:"product_cat";s:11:"description";s:0:"";s:6:"parent";i:0;s:5:"count";i:2;s:6:"filter";s:3:"raw";s:5:"child";a:0:{}s:10:"child_list";a:0:{}s:11:"parent_list";a:1:{i:19;a:1:{i:0;i:19;}}}i:18;O:7:"WP_Term":13:{s:7:"term_id";i:18;s:4:"name";s:23:"Mid-Size Hunting Knives";s:4:"slug";s:23:"mid-size-hunting-knives";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:18;s:8:"taxonomy";s:11:"product_cat";s:11:"description";s:0:"";s:6:"parent";i:0;s:5:"count";i:1;s:6:"filter";s:3:"raw";s:5:"child";a:0:{}s:10:"child_list";a:0:{}s:11:"parent_list";a:1:{i:18;a:1:{i:0;i:18;}}}i:20;O:7:"WP_Term":13:{s:7:"term_id";i:20;s:4:"name";s:29:"Outdoors and Bushcraft Knives";s:4:"slug";s:29:"outdoors-and-bushcraft-knives";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:20;s:8:"taxonomy";s:11:"product_cat";s:11:"description";s:0:"";s:6:"parent";i:0;s:5:"count";i:1;s:6:"filter";s:3:"raw";s:5:"child";a:0:{}s:10:"child_list";a:0:{}s:11:"parent_list";a:1:{i:20;a:1:{i:0;i:20;}}}i:17;O:7:"WP_Term":13:{s:7:"term_id";i:17;s:4:"name";s:20:"Small Hunting Knives";s:4:"slug";s:20:"small-hunting-knives";s:10:"term_group";i:0;s:16:"term_taxonomy_id";i:17;s:8:"taxonomy";s:11:"product_cat";s:11:"description";s:0:"";s:6:"parent";i:0;s:5:"count";i:2;s:6:"filter";s:3:"raw";s:5:"child";a:0:{}s:10:"child_list";a:0:{}s:11:"parent_list";a:1:{i:17;a:1:{i:0;i:17;}}}}s:9:"hierarchy";a:7:{i:15;a:1:{i:0;i:15;}i:21;a:1:{i:0;i:21;}i:22;a:1:{i:0;i:22;}i:19;a:1:{i:0;i:19;}i:18;a:1:{i:0;i:18;}i:20;a:1:{i:0;i:20;}i:17;a:1:{i:0;i:17;}}s:5:"child";a:7:{i:15;a:1:{i:0;i:15;}i:21;a:1:{i:0;i:21;}i:22;a:1:{i:0;i:22;}i:19;a:1:{i:0;i:19;}i:18;a:1:{i:0;i:18;}i:20;a:1:{i:0;i:20;}i:17;a:1:{i:0;i:17;}}s:3:"md5";s:42:"e897f87993851bbdde72c9dd78d3c4c61575665658";s:4:"time";i:1575983004;}', 'yes'),
(753, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(851, 'newsletter_logger_secret', '1d1bad20', 'yes'),
(853, 'newsletter_main_first_install_time', '1575984514', 'no'),
(854, 'newsletter_main', 'a:31:{s:11:"return_path";s:0:"";s:8:"reply_to";s:0:"";s:12:"sender_email";s:20:"newsletter@localhost";s:11:"sender_name";s:10:"Victorynox";s:6:"editor";i:0;s:13:"scheduler_max";i:100;s:9:"phpmailer";i:0;s:5:"debug";i:0;s:5:"track";i:1;s:3:"css";s:0:"";s:12:"css_disabled";i:0;s:2:"ip";s:0:"";s:4:"page";i:133;s:19:"disable_cron_notice";i:0;s:13:"do_shortcodes";i:0;s:11:"header_logo";s:0:"";s:12:"header_title";s:10:"Victorynox";s:10:"header_sub";s:27:"Just another WordPress site";s:12:"footer_title";s:0:"";s:14:"footer_contact";s:0:"";s:12:"footer_legal";s:0:"";s:12:"facebook_url";s:0:"";s:11:"twitter_url";s:0:"";s:13:"instagram_url";s:0:"";s:14:"googleplus_url";s:0:"";s:13:"pinterest_url";s:0:"";s:12:"linkedin_url";s:0:"";s:10:"tumblr_url";s:0:"";s:11:"youtube_url";s:0:"";s:9:"vimeo_url";s:0:"";s:14:"soundcloud_url";s:0:"";}', 'yes'),
(855, 'newsletter_main_info', 'a:16:{s:11:"header_logo";a:1:{s:2:"id";i:0;}s:12:"header_title";s:10:"Victorynox";s:10:"header_sub";s:27:"Just another WordPress site";s:12:"footer_title";s:0:"";s:14:"footer_contact";s:0:"";s:12:"footer_legal";s:0:"";s:12:"facebook_url";s:0:"";s:11:"twitter_url";s:0:"";s:13:"instagram_url";s:0:"";s:14:"googleplus_url";s:0:"";s:13:"pinterest_url";s:0:"";s:12:"linkedin_url";s:0:"";s:10:"tumblr_url";s:0:"";s:11:"youtube_url";s:0:"";s:9:"vimeo_url";s:0:"";s:14:"soundcloud_url";s:0:"";}', 'yes'),
(856, 'newsletter_main_smtp', 'a:7:{s:7:"enabled";i:0;s:4:"host";s:0:"";s:4:"user";s:0:"";s:4:"pass";s:0:"";s:4:"port";i:25;s:6:"secure";s:0:"";s:12:"ssl_insecure";i:0;}', 'yes'),
(857, 'newsletter_main_version', '1.5.2', 'yes'),
(858, 'newsletter_subscription_first_install_time', '1575984514', 'no'),
(859, 'newsletter_subscription_antibot', 'a:6:{s:12:"ip_blacklist";a:0:{}s:17:"address_blacklist";a:0:{}s:9:"antiflood";i:60;s:7:"akismet";i:0;s:7:"captcha";i:0;s:8:"disabled";i:0;}', 'yes'),
(860, 'newsletter', 'a:14:{s:14:"noconfirmation";i:1;s:12:"notify_email";s:19:"sinevor13@gmail.com";s:8:"multiple";i:1;s:6:"notify";i:0;s:10:"error_text";s:102:"<p>You cannot subscribe with the email address you entered, please contact the site administrator.</p>";s:17:"subscription_text";s:19:"{subscription_form}";s:17:"confirmation_text";s:104:"<p>A confirmation email is on the way. Follow the instructions and check the spam folder. Thank you.</p>";s:20:"confirmation_subject";s:32:"Please confirm your subscription";s:21:"confirmation_tracking";s:0:"";s:20:"confirmation_message";s:94:"<p>Please confirm your subscription <a href="{subscription_confirm_url}">clicking here</a></p>";s:14:"confirmed_text";s:43:"<p>Your subscription has been confirmed</p>";s:17:"confirmed_subject";s:7:"Welcome";s:17:"confirmed_message";s:130:"<p>This message confirms your subscription to our newsletter. Thank you!</p><hr><p><a href="{profile_url}">Change your profile</p>";s:18:"confirmed_tracking";s:0:"";}', 'yes'),
(861, 'newsletter_subscription_lists', 'a:160:{s:6:"list_1";s:0:"";s:13:"list_1_status";i:0;s:14:"list_1_checked";i:0;s:13:"list_1_forced";i:0;s:6:"list_2";s:0:"";s:13:"list_2_status";i:0;s:14:"list_2_checked";i:0;s:13:"list_2_forced";i:0;s:6:"list_3";s:0:"";s:13:"list_3_status";i:0;s:14:"list_3_checked";i:0;s:13:"list_3_forced";i:0;s:6:"list_4";s:0:"";s:13:"list_4_status";i:0;s:14:"list_4_checked";i:0;s:13:"list_4_forced";i:0;s:6:"list_5";s:0:"";s:13:"list_5_status";i:0;s:14:"list_5_checked";i:0;s:13:"list_5_forced";i:0;s:6:"list_6";s:0:"";s:13:"list_6_status";i:0;s:14:"list_6_checked";i:0;s:13:"list_6_forced";i:0;s:6:"list_7";s:0:"";s:13:"list_7_status";i:0;s:14:"list_7_checked";i:0;s:13:"list_7_forced";i:0;s:6:"list_8";s:0:"";s:13:"list_8_status";i:0;s:14:"list_8_checked";i:0;s:13:"list_8_forced";i:0;s:6:"list_9";s:0:"";s:13:"list_9_status";i:0;s:14:"list_9_checked";i:0;s:13:"list_9_forced";i:0;s:7:"list_10";s:0:"";s:14:"list_10_status";i:0;s:15:"list_10_checked";i:0;s:14:"list_10_forced";i:0;s:7:"list_11";s:0:"";s:14:"list_11_status";i:0;s:15:"list_11_checked";i:0;s:14:"list_11_forced";i:0;s:7:"list_12";s:0:"";s:14:"list_12_status";i:0;s:15:"list_12_checked";i:0;s:14:"list_12_forced";i:0;s:7:"list_13";s:0:"";s:14:"list_13_status";i:0;s:15:"list_13_checked";i:0;s:14:"list_13_forced";i:0;s:7:"list_14";s:0:"";s:14:"list_14_status";i:0;s:15:"list_14_checked";i:0;s:14:"list_14_forced";i:0;s:7:"list_15";s:0:"";s:14:"list_15_status";i:0;s:15:"list_15_checked";i:0;s:14:"list_15_forced";i:0;s:7:"list_16";s:0:"";s:14:"list_16_status";i:0;s:15:"list_16_checked";i:0;s:14:"list_16_forced";i:0;s:7:"list_17";s:0:"";s:14:"list_17_status";i:0;s:15:"list_17_checked";i:0;s:14:"list_17_forced";i:0;s:7:"list_18";s:0:"";s:14:"list_18_status";i:0;s:15:"list_18_checked";i:0;s:14:"list_18_forced";i:0;s:7:"list_19";s:0:"";s:14:"list_19_status";i:0;s:15:"list_19_checked";i:0;s:14:"list_19_forced";i:0;s:7:"list_20";s:0:"";s:14:"list_20_status";i:0;s:15:"list_20_checked";i:0;s:14:"list_20_forced";i:0;s:7:"list_21";s:0:"";s:14:"list_21_status";i:0;s:15:"list_21_checked";i:0;s:14:"list_21_forced";i:0;s:7:"list_22";s:0:"";s:14:"list_22_status";i:0;s:15:"list_22_checked";i:0;s:14:"list_22_forced";i:0;s:7:"list_23";s:0:"";s:14:"list_23_status";i:0;s:15:"list_23_checked";i:0;s:14:"list_23_forced";i:0;s:7:"list_24";s:0:"";s:14:"list_24_status";i:0;s:15:"list_24_checked";i:0;s:14:"list_24_forced";i:0;s:7:"list_25";s:0:"";s:14:"list_25_status";i:0;s:15:"list_25_checked";i:0;s:14:"list_25_forced";i:0;s:7:"list_26";s:0:"";s:14:"list_26_status";i:0;s:15:"list_26_checked";i:0;s:14:"list_26_forced";i:0;s:7:"list_27";s:0:"";s:14:"list_27_status";i:0;s:15:"list_27_checked";i:0;s:14:"list_27_forced";i:0;s:7:"list_28";s:0:"";s:14:"list_28_status";i:0;s:15:"list_28_checked";i:0;s:14:"list_28_forced";i:0;s:7:"list_29";s:0:"";s:14:"list_29_status";i:0;s:15:"list_29_checked";i:0;s:14:"list_29_forced";i:0;s:7:"list_30";s:0:"";s:14:"list_30_status";i:0;s:15:"list_30_checked";i:0;s:14:"list_30_forced";i:0;s:7:"list_31";s:0:"";s:14:"list_31_status";i:0;s:15:"list_31_checked";i:0;s:14:"list_31_forced";i:0;s:7:"list_32";s:0:"";s:14:"list_32_status";i:0;s:15:"list_32_checked";i:0;s:14:"list_32_forced";i:0;s:7:"list_33";s:0:"";s:14:"list_33_status";i:0;s:15:"list_33_checked";i:0;s:14:"list_33_forced";i:0;s:7:"list_34";s:0:"";s:14:"list_34_status";i:0;s:15:"list_34_checked";i:0;s:14:"list_34_forced";i:0;s:7:"list_35";s:0:"";s:14:"list_35_status";i:0;s:15:"list_35_checked";i:0;s:14:"list_35_forced";i:0;s:7:"list_36";s:0:"";s:14:"list_36_status";i:0;s:15:"list_36_checked";i:0;s:14:"list_36_forced";i:0;s:7:"list_37";s:0:"";s:14:"list_37_status";i:0;s:15:"list_37_checked";i:0;s:14:"list_37_forced";i:0;s:7:"list_38";s:0:"";s:14:"list_38_status";i:0;s:15:"list_38_checked";i:0;s:14:"list_38_forced";i:0;s:7:"list_39";s:0:"";s:14:"list_39_status";i:0;s:15:"list_39_checked";i:0;s:14:"list_39_forced";i:0;s:7:"list_40";s:0:"";s:14:"list_40_status";i:0;s:15:"list_40_checked";i:0;s:14:"list_40_forced";i:0;}', 'yes'),
(862, 'newsletter_subscription_template', 'a:1:{s:8:"template";s:2365:"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type="text/css" media="all">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n            hr {\n                border-top: 1px solid #999;\n            }\n        </style>\n    </head>\n\n    <!-- KEEP THE LAYOUT SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style="margin: 0; padding: 0;">\n\n        <!-- Top title with dark background -->\n        <table style="background-color: #444; width: 100%;" cellspacing="0" cellpadding="0">\n            <tr>\n                <td style="padding: 20px; text-align: center; font-family: sans-serif; color: #fff; font-size: 28px">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style="background-color: #eee; width: 100%;">\n            <tr>\n                <td align="center" style="padding: 15px;">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style="background-color: #fff; max-width: 600px; width: 100%; border: 1px solid #ddd;">\n                        <tr>\n                            <td style="padding: 15px; color: #333; font-size: 16px; font-family: sans-serif">\n                                <!-- The "message" tag below is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n\n                                <hr>\n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n                                <p>\n                                    <small>\n                                        <a href="{blog_url}">{blog_url}</a><br>\n                                        {company_name}<br>\n                                        {company_address}\n                                    </small>\n                                </p>\n                                \n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(863, 'newsletter_profile', 'a:184:{s:5:"email";s:5:"Email";s:11:"email_error";s:28:"Email address is not correct";s:4:"name";s:23:"First name or full name";s:10:"name_error";s:16:"Name is required";s:11:"name_status";i:0;s:10:"name_rules";i:0;s:7:"surname";s:9:"Last name";s:13:"surname_error";s:21:"Last name is required";s:14:"surname_status";i:0;s:10:"sex_status";i:0;s:3:"sex";s:3:"I\'m";s:7:"privacy";s:44:"By continuing, you accept the privacy policy";s:13:"privacy_error";s:34:"You must accept the privacy policy";s:14:"privacy_status";i:0;s:11:"privacy_url";s:0:"";s:18:"privacy_use_wp_url";i:0;s:9:"subscribe";s:9:"Subscribe";s:12:"title_female";s:3:"Ms.";s:10:"title_male";s:3:"Mr.";s:10:"title_none";s:4:"Dear";s:8:"sex_male";s:3:"Man";s:10:"sex_female";s:5:"Woman";s:8:"sex_none";s:13:"Not specified";s:13:"profile_error";s:34:"A mandatory field is not filled in";s:16:"profile_1_status";i:0;s:9:"profile_1";s:0:"";s:14:"profile_1_type";s:4:"text";s:21:"profile_1_placeholder";s:0:"";s:15:"profile_1_rules";i:0;s:17:"profile_1_options";s:0:"";s:16:"profile_2_status";i:0;s:9:"profile_2";s:0:"";s:14:"profile_2_type";s:4:"text";s:21:"profile_2_placeholder";s:0:"";s:15:"profile_2_rules";i:0;s:17:"profile_2_options";s:0:"";s:16:"profile_3_status";i:0;s:9:"profile_3";s:0:"";s:14:"profile_3_type";s:4:"text";s:21:"profile_3_placeholder";s:0:"";s:15:"profile_3_rules";i:0;s:17:"profile_3_options";s:0:"";s:16:"profile_4_status";i:0;s:9:"profile_4";s:0:"";s:14:"profile_4_type";s:4:"text";s:21:"profile_4_placeholder";s:0:"";s:15:"profile_4_rules";i:0;s:17:"profile_4_options";s:0:"";s:16:"profile_5_status";i:0;s:9:"profile_5";s:0:"";s:14:"profile_5_type";s:4:"text";s:21:"profile_5_placeholder";s:0:"";s:15:"profile_5_rules";i:0;s:17:"profile_5_options";s:0:"";s:16:"profile_6_status";i:0;s:9:"profile_6";s:0:"";s:14:"profile_6_type";s:4:"text";s:21:"profile_6_placeholder";s:0:"";s:15:"profile_6_rules";i:0;s:17:"profile_6_options";s:0:"";s:16:"profile_7_status";i:0;s:9:"profile_7";s:0:"";s:14:"profile_7_type";s:4:"text";s:21:"profile_7_placeholder";s:0:"";s:15:"profile_7_rules";i:0;s:17:"profile_7_options";s:0:"";s:16:"profile_8_status";i:0;s:9:"profile_8";s:0:"";s:14:"profile_8_type";s:4:"text";s:21:"profile_8_placeholder";s:0:"";s:15:"profile_8_rules";i:0;s:17:"profile_8_options";s:0:"";s:16:"profile_9_status";i:0;s:9:"profile_9";s:0:"";s:14:"profile_9_type";s:4:"text";s:21:"profile_9_placeholder";s:0:"";s:15:"profile_9_rules";i:0;s:17:"profile_9_options";s:0:"";s:17:"profile_10_status";i:0;s:10:"profile_10";s:0:"";s:15:"profile_10_type";s:4:"text";s:22:"profile_10_placeholder";s:0:"";s:16:"profile_10_rules";i:0;s:18:"profile_10_options";s:0:"";s:17:"profile_11_status";i:0;s:10:"profile_11";s:0:"";s:15:"profile_11_type";s:4:"text";s:22:"profile_11_placeholder";s:0:"";s:16:"profile_11_rules";i:0;s:18:"profile_11_options";s:0:"";s:17:"profile_12_status";i:0;s:10:"profile_12";s:0:"";s:15:"profile_12_type";s:4:"text";s:22:"profile_12_placeholder";s:0:"";s:16:"profile_12_rules";i:0;s:18:"profile_12_options";s:0:"";s:17:"profile_13_status";i:0;s:10:"profile_13";s:0:"";s:15:"profile_13_type";s:4:"text";s:22:"profile_13_placeholder";s:0:"";s:16:"profile_13_rules";i:0;s:18:"profile_13_options";s:0:"";s:17:"profile_14_status";i:0;s:10:"profile_14";s:0:"";s:15:"profile_14_type";s:4:"text";s:22:"profile_14_placeholder";s:0:"";s:16:"profile_14_rules";i:0;s:18:"profile_14_options";s:0:"";s:17:"profile_15_status";i:0;s:10:"profile_15";s:0:"";s:15:"profile_15_type";s:4:"text";s:22:"profile_15_placeholder";s:0:"";s:16:"profile_15_rules";i:0;s:18:"profile_15_options";s:0:"";s:17:"profile_16_status";i:0;s:10:"profile_16";s:0:"";s:15:"profile_16_type";s:4:"text";s:22:"profile_16_placeholder";s:0:"";s:16:"profile_16_rules";i:0;s:18:"profile_16_options";s:0:"";s:17:"profile_17_status";i:0;s:10:"profile_17";s:0:"";s:15:"profile_17_type";s:4:"text";s:22:"profile_17_placeholder";s:0:"";s:16:"profile_17_rules";i:0;s:18:"profile_17_options";s:0:"";s:17:"profile_18_status";i:0;s:10:"profile_18";s:0:"";s:15:"profile_18_type";s:4:"text";s:22:"profile_18_placeholder";s:0:"";s:16:"profile_18_rules";i:0;s:18:"profile_18_options";s:0:"";s:17:"profile_19_status";i:0;s:10:"profile_19";s:0:"";s:15:"profile_19_type";s:4:"text";s:22:"profile_19_placeholder";s:0:"";s:16:"profile_19_rules";i:0;s:18:"profile_19_options";s:0:"";s:17:"profile_20_status";i:0;s:10:"profile_20";s:0:"";s:15:"profile_20_type";s:4:"text";s:22:"profile_20_placeholder";s:0:"";s:16:"profile_20_rules";i:0;s:18:"profile_20_options";s:0:"";s:13:"list_1_forced";i:0;s:13:"list_2_forced";i:0;s:13:"list_3_forced";i:0;s:13:"list_4_forced";i:0;s:13:"list_5_forced";i:0;s:13:"list_6_forced";i:0;s:13:"list_7_forced";i:0;s:13:"list_8_forced";i:0;s:13:"list_9_forced";i:0;s:14:"list_10_forced";i:0;s:14:"list_11_forced";i:0;s:14:"list_12_forced";i:0;s:14:"list_13_forced";i:0;s:14:"list_14_forced";i:0;s:14:"list_15_forced";i:0;s:14:"list_16_forced";i:0;s:14:"list_17_forced";i:0;s:14:"list_18_forced";i:0;s:14:"list_19_forced";i:0;s:14:"list_20_forced";i:0;s:14:"list_21_forced";i:0;s:14:"list_22_forced";i:0;s:14:"list_23_forced";i:0;s:14:"list_24_forced";i:0;s:14:"list_25_forced";i:0;s:14:"list_26_forced";i:0;s:14:"list_27_forced";i:0;s:14:"list_28_forced";i:0;s:14:"list_29_forced";i:0;s:14:"list_30_forced";i:0;s:14:"list_31_forced";i:0;s:14:"list_32_forced";i:0;s:14:"list_33_forced";i:0;s:14:"list_34_forced";i:0;s:14:"list_35_forced";i:0;s:14:"list_36_forced";i:0;s:14:"list_37_forced";i:0;s:14:"list_38_forced";i:0;s:14:"list_39_forced";i:0;s:14:"list_40_forced";i:0;}', 'yes'),
(864, 'newsletter_subscription_version', '2.2.7', 'yes'),
(865, 'newsletter_unsubscription_first_install_time', '1575984515', 'no'),
(866, 'newsletter_unsubscription', 'a:6:{s:16:"unsubscribe_text";s:103:"<p>Please confirm you want to unsubscribe <a href="{unsubscription_confirm_url}">clicking here</a>.</p>";s:10:"error_text";s:99:"<p>Subscriber not found, it probably has already been removed. No further actions are required.</p>";s:17:"unsubscribed_text";s:124:"<p>Your subscription has been deleted. If that was an error you can <a href="{reactivate_url}">subscribe again here</a>.</p>";s:20:"unsubscribed_subject";s:7:"Goodbye";s:20:"unsubscribed_message";s:87:"<p>This message confirms that you have unsubscribed from our newsletter. Thank you.</p>";s:16:"reactivated_text";s:46:"<p>Your subscription has been reactivated.</p>";}', 'yes'),
(867, 'newsletter_unsubscription_version', '1.0.0', 'yes'),
(868, 'newsletter_profile_first_install_time', '1575984515', 'no'),
(869, 'newsletter_profile_main', 'a:8:{s:4:"text";s:188:"{profile_form}\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    <p><a href="{unsubscription_confirm_url}">Cancel your subscription</a></p>";s:13:"email_changed";s:81:"Your email has been changed, an activation email has been sent with instructions.";s:5:"error";s:42:"Your email is not valid or already in use.";s:10:"save_label";s:4:"Save";s:13:"privacy_label";s:21:"Read our privacy note";s:5:"saved";s:14:"Profile saved.";s:18:"export_newsletters";i:0;s:3:"url";s:0:"";}', 'yes'),
(870, 'newsletter_profile_version', '1.1.0', 'yes'),
(871, 'newsletter_emails_first_install_time', '1575984515', 'no'),
(872, 'newsletter_emails', 'a:1:{s:5:"theme";s:7:"default";}', 'yes'),
(873, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(874, 'newsletter_emails_version', '1.1.5', 'yes'),
(875, 'newsletter_users_first_install_time', '1575984515', 'no'),
(876, 'newsletter_users', 'a:0:{}', 'yes'),
(877, 'newsletter_users_version', '1.3.0', 'yes'),
(878, 'newsletter_statistics_first_install_time', '1575984515', 'no'),
(879, 'newsletter_statistics', 'a:1:{s:3:"key";s:32:"b0ce09cb1c171f927bfa72caf8a4b291";}', 'yes'),
(880, 'newsletter_statistics_version', '1.1.8', 'yes'),
(881, 'newsletter_install_time', '1575984515', 'no'),
(882, 'widget_newsletterwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(883, 'widget_newsletterwidgetminimal', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(885, 'newsletter_diagnostic_cron_calls', 'a:100:{i:0;i:1576947506;i:1;i:1576947566;i:2;i:1576947586;i:3;i:1576947643;i:4;i:1576947739;i:5;i:1576947762;i:6;i:1576947886;i:7;i:1576947930;i:8;i:1576947965;i:9;i:1576947999;i:10;i:1576948081;i:11;i:1576948174;i:12;i:1576948223;i:13;i:1576948267;i:14;i:1576948317;i:15;i:1576948376;i:16;i:1576948418;i:17;i:1576948458;i:18;i:1576948486;i:19;i:1576948536;i:20;i:1576948547;i:21;i:1576948598;i:22;i:1576948668;i:23;i:1576948804;i:24;i:1576948845;i:25;i:1576948909;i:26;i:1576948980;i:27;i:1576949024;i:28;i:1576949074;i:29;i:1576949095;i:30;i:1576949149;i:31;i:1576949220;i:32;i:1576949267;i:33;i:1576949328;i:34;i:1576949345;i:35;i:1576949353;i:36;i:1576949388;i:37;i:1576949451;i:38;i:1576949572;i:39;i:1576949634;i:40;i:1576949659;i:41;i:1576949694;i:42;i:1576949738;i:43;i:1576949778;i:44;i:1576949813;i:45;i:1576949874;i:46;i:1576949945;i:47;i:1576950013;i:48;i:1576950039;i:49;i:1576950121;i:50;i:1576950164;i:51;i:1576950235;i:52;i:1576950334;i:53;i:1576950340;i:54;i:1576950382;i:55;i:1576950400;i:56;i:1576950522;i:57;i:1576950556;i:58;i:1576950669;i:59;i:1576950705;i:60;i:1576950768;i:61;i:1576950818;i:62;i:1576950861;i:63;i:1576950920;i:64;i:1576952873;i:65;i:1576952927;i:66;i:1577002245;i:67;i:1577002302;i:68;i:1577003056;i:69;i:1577003079;i:70;i:1577003147;i:71;i:1577003511;i:72;i:1577004034;i:73;i:1577004083;i:74;i:1577004167;i:75;i:1577004257;i:76;i:1577004310;i:77;i:1577036021;i:78;i:1577036133;i:79;i:1577036145;i:80;i:1577037451;i:81;i:1577038182;i:82;i:1577442566;i:83;i:1577442583;i:84;i:1577524795;i:85;i:1577524813;i:86;i:1577524976;i:87;i:1577525019;i:88;i:1577525052;i:89;i:1577525106;i:90;i:1577525179;i:91;i:1577525200;i:92;i:1577525628;i:93;i:1577525647;i:94;i:1577526225;i:95;i:1577526263;i:96;i:1577526280;i:97;i:1577544747;i:98;i:1578055016;i:99;i:1578120364;}', 'no'),
(886, 'newsletter_diagnostic_cron_data', 'a:3:{s:4:"mean";d:11727.58;s:3:"max";i:510269;s:3:"min";i:6;}', 'no'),
(893, 'newsletter_page', '133', 'no'),
(1010, '_transient_timeout_wc_product_loop_e856a6f92860b80a533563b3196e9cc1', '1579544927', 'no'),
(1011, '_transient_wc_product_loop_e856a6f92860b80a533563b3196e9cc1', 'a:2:{s:7:"version";s:10:"1576949373";s:5:"value";O:8:"stdClass":5:{s:3:"ids";a:3:{i:0;i:24;i:1;i:21;i:2;i:25;}s:5:"total";i:3;s:11:"total_pages";i:1;s:8:"per_page";i:3;s:12:"current_page";i:1;}}', 'no'),
(1066, '_transient_timeout_wc_product_loop_843daf8fdfc519a2ab75860fef9ff901', '1579542920', 'no'),
(1067, '_transient_wc_product_loop_843daf8fdfc519a2ab75860fef9ff901', 'a:2:{s:7:"version";s:10:"1576949373";s:5:"value";O:8:"stdClass":5:{s:3:"ids";a:4:{i:0;i:24;i:1;i:21;i:2;i:25;i:3;i:26;}s:5:"total";i:4;s:11:"total_pages";i:1;s:8:"per_page";i:4;s:12:"current_page";i:1;}}', 'no'),
(1071, '_transient_timeout_wc_term_counts', '1578865384', 'no'),
(1072, '_transient_wc_term_counts', 'a:15:{i:26;s:1:"1";i:29;s:1:"1";i:28;s:1:"1";i:21;s:1:"2";i:22;s:1:"3";i:19;s:1:"2";i:18;s:1:"1";i:20;s:1:"1";i:17;s:1:"2";i:27;s:1:"1";i:30;s:1:"1";i:23;s:1:"3";i:24;s:1:"1";i:15;s:0:"";i:25;s:1:"1";}', 'no'),
(1126, '_transient_timeout_wc_low_stock_count', '1578744226', 'no'),
(1127, '_transient_wc_low_stock_count', '0', 'no'),
(1128, '_transient_timeout_wc_outofstock_count', '1578744226', 'no'),
(1129, '_transient_wc_outofstock_count', '0', 'no'),
(1163, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1576153251;s:7:"version";s:5:"5.1.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(1204, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:19:"sinevor13@gmail.com";s:7:"version";s:5:"5.3.2";s:9:"timestamp";i:1576833519;}', 'no'),
(1324, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1578055020;s:15:"version_checked";s:5:"5.3.2";s:12:"translations";a:0:{}}', 'no'),
(1611, '_site_transient_timeout_itsec_wp_upload_dir', '1578141414', 'no'),
(1612, '_site_transient_itsec_wp_upload_dir', 'a:6:{s:4:"path";s:51:"/var/www/html/wordpress3/wp-content/uploads/2020/01";s:3:"url";s:54:"http://localhost/wordpress3/wp-content/uploads/2020/01";s:6:"subdir";s:8:"/2020/01";s:7:"basedir";s:43:"/var/www/html/wordpress3/wp-content/uploads";s:7:"baseurl";s:46:"http://localhost/wordpress3/wp-content/uploads";s:5:"error";b:0;}', 'no'),
(1615, '_transient_timeout_external_ip_address_::1', '1578659815', 'no'),
(1616, '_transient_external_ip_address_::1', '178.133.227.209', 'no'),
(1625, '_transient_timeout_external_ip_address_127.0.0.1', '1578659818', 'no'),
(1626, '_transient_external_ip_address_127.0.0.1', '178.133.227.209', 'no'),
(1629, '_transient_timeout_feed_d21d2a68bac70d38fb7f9a7bd3d1725e', '1578659819', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1630, '_transient_feed_d21d2a68bac70d38fb7f9a7bd3d1725e', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:5:"\n\n	\n	";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:370:"\n\n		\n		\n		\n				\n		\n		\n\n		\n		\n			\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n				\n				\n\n							\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress.org Forums » All Topics";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/support/plugin/google-sitemap-generator/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 03 Jan 2020 12:34:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:36:"https://bbpress.org/?v=2.7.0-alpha-1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:93:"https://wordpress.org/support/topic/via-nextend-social-login-is-not-displayed-in-the-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"via “Nextend Social login” is not displayed in the sitemap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"https://wordpress.org/support/topic/via-nextend-social-login-is-not-displayed-in-the-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 26 Dec 2019 09:05:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:529:"\n						\n						<p>Replies: 0</p>\n						<p>Sitemaps are created using the “XML-sitemaps” plugin.<br />\nBut this sitemap has only 50 users<br />\n<a href="https://trip-qa.com/sitemap-authors.xml" rel="nofollow">https://trip-qa.com/sitemap-authors.xml</a></p>\n<p>Now that the total number of users is 94, 44 users are not registered as site maps.</p>\n<p>Probably the user registered via “Nextend Social login” is not displayed in the sitemap.</p>\n<p>Is there a solution to make everyone appear on the sitemap?</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"wacool";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/support/topic/xml-declaration-error-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"XML Declaration Error";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/support/topic/xml-declaration-error-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 22 Dec 2019 05:44:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:939:"\n						\n						<p>Replies: 0</p>\n						<p>Hi,<br />\nI&#8217;m getting the following error:</p>\n<pre><code>This page contains the following errors:\nerror on line 2 at column 6: XML declaration allowed only at the start of the document\nBelow is a rendering of the page up to the first error.</code></pre>\n<p>When I view the source of the page there is indeed a blank line on line &#8220;1&#8221;.<br />\nThe below starts on line &#8220;2&#8221;.</p>\n<pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&lt;?xml-stylesheet type=&quot;text/xsl&quot; href=&quot;https://example.com/wp/wp-content/plugins/google-sitemap-generator/sitemap.xsl&quot;?&gt;&lt;!-- sitemap-generator-url=&quot;http://www.arnebrachhold.de&quot; sitemap-generator-version=&quot;4.1.0&quot; --&gt;\n&lt;!-- generated-on=&quot;December 22, 2019 5:40 AM&quot; --&gt;</code></pre>\n<p>How can this be corrected?<br />\nThanks,<br />\npeter</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Peter";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/support/topic/multilanguage-sitemap-generator/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Multilanguage Sitemap Generator ?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/support/topic/multilanguage-sitemap-generator/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 21 Dec 2019 10:02:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:313:"\n						\n						<p>Replies: 0</p>\n						<p>Dear support,</p>\n<p>This pluggin have the function of XML Multilanguage Sitemap Generator ?. I mean I have my web in several languajes. And i need sitemap for all of 5 languajes. Spain, english, french, italian and portuguese.</p>\n<p>thanks<br />\nJoaquin</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"joaquin2019";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/support/topic/please-fix-localization-issues-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Please Fix Localization Issues";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/support/topic/please-fix-localization-issues-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Dec 2019 17:34:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1386:"\n						\n						<p>Replies: 0</p>\n						<p>Hi Developer,</p>\n<p>I already localized this awesome plugin to zh_TW completely, but I found several L10N issues.</p>\n<ul>\n<li>This plugin&#8217;s <a href="https://translate.wordpress.org/projects/wp-plugins/google-sitemap-generator/" target="_blank" rel="noopener noreferrer nofollow">translation project</a> is out-of-date. Please update it according to the newest code.</li>\n<li>One message is missing localization, it is &#8220;Notify Search Engines about your sitemap or your main sitemap and all sub-sitemaps now.&#8221;.</li>\n<li>Please fix the links existing in this plugin, most of them don&#8217;t work.</li>\n<li>Please remove old zh_TW translations from plugin install file, all translations are not qualified. When the above are done, I&#8217;ll update all translations to plugin translation project so that zh_TW translation files are pushed to sites automatically.</li>\n</ul>\n<p>Regards,</p>\n<p>Alex Lion</p>\n\n\n<ul id="bbp-topic-revision-log-12243746" class="bbp-topic-revision-log">\n\n	<li id="bbp-topic-revision-log-12243746-item-12243749" class="bbp-topic-revision-log-item">\n		This topic was modified 2 weeks, 3 days ago by <a href="https://wordpress.org/support/users/alexclassroom/" title="View Alex Lion&#039;s profile" class="bbp-author-link"><span  class="bbp-author-name">Alex Lion</span></a>.\n	</li>\n\n</ul>\n\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Lion";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/support/topic/xml-parsing-error-38/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"XML Parsing Error";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/support/topic/xml-parsing-error-38/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 Dec 2019 19:55:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:405:"\n						\n						<p>Replies: 1</p>\n						<p>Added to a 3rd site and am getting this error when I try to view the sitemap url from the plug in settings page.</p>\n<p>XML Parsing Error: XML or text declaration not at start of entity<br />\nLocation: <a href="https://backyardpollinator.com/sitemap.xml" rel="nofollow">https://backyardpollinator.com/sitemap.xml</a><br />\nLine Number 2, Column 1:</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"FireFlyWebs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/support/topic/static-pages-not-included-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Static pages not included";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/support/topic/static-pages-not-included-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 12 Dec 2019 18:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:324:"\n						\n						<p>Replies: 1</p>\n						<p>I added this plug in to one site and see all the site pages listed in the file, but when I added it to this one, I see none of the static pages except the index.  There are a few posts in the list and that is all.<br />\nPlease let me know what to do to correct this.</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"FireFlyWebs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/support/topic/tmp-files-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:". tmp files";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/support/topic/tmp-files-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Dec 2019 22:09:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:544:"\n						\n						<p>Replies: 0</p>\n						<p>I have a BoldGrid website and on my server/Home Directory I found three large .tmp files and I&#8217;m trying to figure out how they were generated. Boldgrid support told me none of their plugins generate .tmp files. Do you know if Google XML Sitemaps would generate .tmp files.<br />\n325M /home/mydirctory/mywebsite/pclzip-5d707292565f4.tmp<br />\n703M /home/mydirctory/mywebsite/wp-admin/pclzip-5dea1b5b523bd.tmp<br />\n311M /home/mydirctory/mywebsite/wp-admin/pclzip-5c9896936c3d4.tmp </p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"jg100";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:96:"https://wordpress.org/support/topic/xml-declaration-allowed-only-at-the-start-of-the-document-8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"XML declaration allowed only at the start of the document";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"https://wordpress.org/support/topic/xml-declaration-allowed-only-at-the-start-of-the-document-8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 07 Dec 2019 13:45:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:378:"\n						\n						<p>Replies: 1</p>\n						<p>I have problem ..</p>\n<p>In my <a href="https://website/sitemap.xml" rel="nofollow">https://website/sitemap.xml</a></p>\n<p>This page contains the following errors:<br />\nerror on line 501 at column 6: XML declaration allowed only at the start of the document<br />\nBelow is a rendering of the page up to the first error.</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"elsoar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wordpress.org/support/topic/google-errors-on-multiple-wp-content-uploads-pags/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"Google Errors on multiple wp-content/uploads pags";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wordpress.org/support/topic/google-errors-on-multiple-wp-content-uploads-pags/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 Dec 2019 20:56:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:831:"\n						\n						<p>Replies: 0</p>\n						<p>I have begun to receive multiple Mobile Usability errors on my wp-content/uploads pages. Apparently, I need to do something to exclude these pages from being indexed but I do not know what.</p>\n<p>I have entered the main page <a href="https://lisadorenfest.com/wp-content/uploads" rel="nofollow">https://lisadorenfest.com/wp-content/uploads</a> into the &#8216;Exclude the following posts or pages&#8217; section of settings, but I don&#8217;t think that will address the subdirectories that are also having usability issues.</p>\n<p>Is there a way to exclude all wp-content/uploads related pages with one entry into the &#8216;Exclude the following posts or pages&#8217; section of settings or do I have to exclude them one by one every time I receive an error from Google?</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"ldorenfest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/support/topic/google-news-sitemap-8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google News Sitemap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/support/topic/google-news-sitemap-8/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 03 Dec 2019 11:23:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"\n						\n						<p>Replies: 2</p>\n						<p>Hello,<br />\nwe have Google XML Sitemaps plugin running on our website.<br />\nWe need to generate Google News sitemap in order to add the website in Google News.<br />\nIs it possible to generate this kind of sitemap with this plugin or there is a good complementary plugin you could suggest?<br />\nThanks in advance</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"globelife";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/support/topic/noindex-in-sitemap-html-and-sitemap-xml/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:39:"Noindex in sitemap.html and sitemap.xml";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/support/topic/noindex-in-sitemap-html-and-sitemap-xml/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 21 Nov 2019 09:13:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:499:"\n						\n						<p>Replies: 11</p>\n						<p>after some few days i installed xml sitemap, I checked my google webmaster tools, and find out my coverage has an error from this plugin, and it was boldly stated that the both sitemap extension sitemap.html and sitemap.xml has robot no-index in it, and which google had problem with, anyway i have edited the plugin an remove all the no-index on it, my site url is <a href="https://naijgreen.com/" rel="nofollow">https://naijgreen.com/</a></p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"obunabali";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:83:"https://wordpress.org/support/topic/missing-xml-tag-error-in-google-search-console/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:189:"&lt;span class=&quot;resolved&quot; aria-label=&quot;Resolved&quot; title=&quot;Topic is resolved.&quot;&gt;&lt;/span&gt;&amp;#8220;Missing XML Tag&amp;#8221; Error in Google Search Console";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"https://wordpress.org/support/topic/missing-xml-tag-error-in-google-search-console/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 20 Nov 2019 17:13:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:535:"\n						\n						<p>Replies: 3</p>\n						<p>Google Search Console is showing an error for part of my sitemap (the WooCommerce Products section, which in the plugin settings is called &#8220;custom post type products&#8221;). The other sections of my sitemap for normal pages are fine.</p>\n<p>The error says &#8220;Missing XML tag&#8221; followed by<br />\nThis required tag is missing. Please add it and resubmit.<br />\nExamples<br />\nLine 3<br />\nParent tag: urlset<br />\nTag: url</p>\n<p>Does anyone know how to fix this?</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"adaydreambeliever";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:80:"https://wordpress.org/support/topic/stop-htaccess-file-from-blocking-my-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Stop htaccess file from blocking my sitemap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://wordpress.org/support/topic/stop-htaccess-file-from-blocking-my-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 19 Nov 2019 15:49:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1429:"\n						\n						<p>Replies: 5</p>\n						<p>I have code added an htaccess file into my wp-content folder to help protect it for security reasons, but it is blocking my xml sitemap.  Below is the code, I&#8217;m sure that it prob has something to do with the xml or css directives in this code; however I would like to keep this security measure in place. </p>\n<p>** I&#8217;m also confused but it seems that maybe Google can still see my sitemap, I&#8217;m not getting any error &#8216;codes&#8217;  but I am getting the Error loading stylesheet: Parsing an XSLT stylesheet failed in FireFox.</p>\n<p>How would I rework this code to meet both needs?  View the sitemap and have the security of that htaccess file??</p>\n<pre><code>order deny,allow\ndeny from all\n&lt;files ~ &quot;.(xml|css|jpe?g|png|gif|js|pdf|svg|ttf)$&quot;&gt;\nallow from all\n&lt;/files&gt;</code></pre>\n<p>** I tried removin the css portion of code block above but still had the same issue</p>\n<p>THANK YOU!</p>\n\n\n<ul id="bbp-topic-revision-log-12151247" class="bbp-topic-revision-log">\n\n	<li id="bbp-topic-revision-log-12151247-item-12151261" class="bbp-topic-revision-log-item">\n		This topic was modified 1 month, 2 weeks ago by <a href="https://wordpress.org/support/users/fourwhitesocks/" title="View fourwhitesocks&#039;s profile" class="bbp-author-link"><span  class="bbp-author-name">fourwhitesocks</span></a>. Reason: More clear\n	</li>\n\n</ul>\n\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"fourwhitesocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:115:"https://wordpress.org/support/topic/your-sitemap-contains-too-many-urls-please-create-multiple-sitemaps-with-up-to/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"Your Sitemap contains too many URLs. Please create multiple Sitemaps with up to";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:115:"https://wordpress.org/support/topic/your-sitemap-contains-too-many-urls-please-create-multiple-sitemaps-with-up-to/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 17 Nov 2019 03:21:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:256:"\n						\n						<p>Replies: 0</p>\n						<p>Sitemap can be read but has errors<br />\nToo many URLs<br />\n1 instance<br />\nYour Sitemap contains too many URLs. Please create multiple Sitemaps with up to 50000 URLs each and submit all Sitemaps.</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"ucanbehack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/support/topic/exclude-a-whole-subdirectory/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"Exclude a whole subdirectory";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"https://wordpress.org/support/topic/exclude-a-whole-subdirectory/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 16 Nov 2019 17:27:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:303:"\n						\n						<p>Replies: 0</p>\n						<p>Hi<br />\nThe contents of Autoptimize&#8217;s cache folder is shown to google.<br />\nAs the same folder is blocked with Robots.txt Google shows a lot of error messages.<br />\nDoes it really make sense to distribute the contents of a cache folder?</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"LSBK";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wordpress.org/support/topic/duplicate-entry-in-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Duplicate entry in sitemap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wordpress.org/support/topic/duplicate-entry-in-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Nov 2019 16:13:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:256:"\n						\n						<p>Replies: 1</p>\n						<p>Hej there,<br />\nas you can see under the url, we have duplicate entries in a part of our sitemap.</p>\n<p>Can you tell me what the problem is and how to clear it?</p>\n<p>Thanks in advance,<br />\nTim</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"blanq GmbH";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/support/topic/undefined-constant-ddsg_language-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"undefined constant ddsg_language";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/support/topic/undefined-constant-ddsg_language-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 31 Oct 2019 21:40:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:567:"\n						\n						<p>Replies: 0</p>\n						<p>The site cannot be edited by administrator due to this error:<br />\nUse of undefined constant ddsg_language – assumed ‘ddsg_language’ (this will throw an Error in a future version of PHP) in /home/careers/public_html/wp-content/plugins/sitemap-generator/sitemap-generator.php on line 45</p>\n<p>THis appears as a warning, but no editing of the site can occur.</p>\n<p>I am not the site developer and, because I can&#8217;t login as admin, I&#8217;m not sure which sitemap generator plugin is being used.  </p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"skcombs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:106:"https://wordpress.org/support/topic/google-search-results-shows-date-in-breakdcrumb-instead-of-categories/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"Google Search Results shows date in breakdcrumb instead of categories";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"https://wordpress.org/support/topic/google-search-results-shows-date-in-breakdcrumb-instead-of-categories/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 27 Oct 2019 15:30:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:187:"\n						\n						<p>Replies: 0</p>\n						<p>All my google search results now show dates instead of categories in breadcrumb. Let me know what changes i need to make for this</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"hisureshkumar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/support/topic/media-blocked-by-robots-txt/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Media blocked by robots.txt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/support/topic/media-blocked-by-robots-txt/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 26 Oct 2019 08:59:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:377:"\n						\n						<p>Replies: 2</p>\n						<p>When i am trying to fetch any media file in Google Search Console it showing me the errors like &#8220;Blocked by robots.txt&#8221;.</p>\n<p>It is not indexing any media file like image, pdf and others. I already allowed wp -content/uploads in the robots.txt but still not works.</p>\n<p>Hoping to get solution from here.</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Mohsin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wordpress.org/support/topic/urls-changed-to-page-id-after-installation/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"URLs changed to page id after installation";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wordpress.org/support/topic/urls-changed-to-page-id-after-installation/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 24 Oct 2019 09:31:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:297:"\n						\n						<p>Replies: 0</p>\n						<p>Hi there,</p>\n<p>After installing google xml sitemap plugin I noticed that all the page URLs have changed to page IDs &#8211; I&#8217;ve double-checked all the settings but can&#8217;t see where I can revert back?</p>\n<p>Thanks in advance.</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"charlixcx";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wordpress.org/support/topic/most-links-in-a-weird-file/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Most links in a weird file!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wordpress.org/support/topic/most-links-in-a-weird-file/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 23 Oct 2019 09:42:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:764:"\n						\n						<p>Replies: 0</p>\n						<p>Hi,</p>\n<p>I have a very small brochure site with 4 pages, in English, super simple: /contact /privacy etc.</p>\n<p>On sitemap.xml it just includes a link to one file:</p>\n<p>sitemap-pt-page-2018-04.xml</p>\n<p>And then, on that file, it lists the 4 pages perfectly.</p>\n<p>So, there is no &#8220;error&#8221; in the sense that, everything works. But, for the life of me, I can&#8217;t figure out why it&#8217;s putting all the links onto a &#8220;pt&#8221; page nor a page with that month timestamp. There&#8217;s no Portuguese, there are no blog posts nor articles nor categories from then!</p>\n<p>Why could this happen? And is there a way around it, like to force a filename or something?</p>\n<p>Thank you</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"citywanderer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/support/topic/homepage-to-be-included-in-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Homepage to be included in sitemap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/support/topic/homepage-to-be-included-in-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 23 Oct 2019 06:04:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:271:"\n						\n						<p>Replies: 0</p>\n						<p>Hello, how do i include my homepage in sitemap. Each time i tried to index my homepage on google sitemap, this is the respond i get under Coverage &#8220;Indexed, not submitted in sitemap&#8221; Please help me out</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"tchange";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wordpress.org/support/topic/google-sitemap-entries-limit-per-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"google sitemap ENTRIES LIMIT per sitemap";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wordpress.org/support/topic/google-sitemap-entries-limit-per-sitemap/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 20 Oct 2019 11:45:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:389:"\n						\n						<p>Replies: 0</p>\n						<p>Hello, </p>\n<p>so Yoast has this function:<br />\n<em>function max_entries_per_sitemap() { return 100;}<br />\nadd_filter( &#8216;wpseo_sitemap_entries_per_page&#8217;, &#8216;max_entries_per_sitemap&#8217; );</em></p>\n<p>How can I solve &#8220;Google XML sitemap&#8221; entry limit problem, need reduce to 100 entries per sitemap???</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"appmarsh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/support/topic/sitemap-homepage-url/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"Sitemap homepage URL";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/support/topic/sitemap-homepage-url/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Oct 2019 13:53:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:549:"\n						\n						<p>Replies: 0</p>\n						<p>Hello &#8211; </p>\n<p>Within my sitemap, the homepage is displaying some sort of &#8220;name&#8221; (sitemap-pt-page-2019-10):</p>\n<p><a href="https://sitename.com/testsite/sitemap-pt-page-2019-10.xml" rel="nofollow">https://sitename.com/testsite/sitemap-pt-page-2019-10.xml</a></p>\n<p>But, I would prefer it to just list the root directory (/) since its the homepage:</p>\n<p><a href="https://sitename.com/testsite/" rel="nofollow">https://sitename.com/testsite/</a></p>\n<p>Is that possible?</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"mcvetyty";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/support/topic/404-on-nginx-server/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"404 on NGINX SERVER";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/support/topic/404-on-nginx-server/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Oct 2019 21:59:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:929:"\n						\n						<p>Replies: 6</p>\n						<p>I&#8217;m getting 404 error, since my website uses NGINX. So It shows the message:</p>\n<p>&#8220;Since you are using Nginx as your web-server, please configure the following rewrite rules in case you get 404 Not Found errors for your sitemap:&#8221;</p>\n<blockquote><p>\nrewrite ^/sitemap(-+([a-zA-Z0-9_-]+))?\\.xml$ &#8220;/index.php?xml_sitemap=params=$2&#8221; last;<br />\nrewrite ^/sitemap(-+([a-zA-Z0-9_-]+))?\\.xml\\.gz$ &#8220;/index.php?xml_sitemap=params=$2;zip=true&#8221; last;<br />\nrewrite ^/sitemap(-+([a-zA-Z0-9_-]+))?\\.html$ &#8220;/index.php?xml_sitemap=params=$2;html=true&#8221; last;<br />\nrewrite ^/sitemap(-+([a-zA-Z0-9_-]+))?\\.html.gz$ &#8220;/index.php?xml_sitemap=params=$2;html=true;zip=true&#8221; last;\n</p></blockquote>\n<p>But I dont even know where to insert all that stuff, what file? Where is that file located? Can you help me on this please?</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"hdeveza";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:88:"https://wordpress.org/support/topic/coverage-issue-detected-in-google-webmaster-console/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"Coverage Issue Detected in Google Webmaster Console";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"https://wordpress.org/support/topic/coverage-issue-detected-in-google-webmaster-console/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 13 Oct 2019 08:02:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1463:"\n						\n						<p>Replies: 7</p>\n						<p>Hi,</p>\n<p>Urgent issue. </p>\n<p>When will this plugin be updated? Apparently, my sites using this plugin that have been submitted into Google Webmaster Console are having a &#8220;Coverage Issue&#8221;, and the URL that Google shows me as having a &#8220;Noindex&#8221; tag is the&#8230;&#8230;</p>\n<p>Sitemap.html</p>\n<p>And apparently, this was first detected back in April 27, 2019.</p>\n<p>Which corresponds to the last update of this plugin. And since then, it has not been updated, and probably this is the reason why this new error is being shown by Google.</p>\n<p>Can the author respond to this and address the &#8220;NoIndex&#8221; issue?</p>\n<p>If I look at the first line of the sitemap that the plugin generates, it shows this line: </p>\n<p><code>&lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot; xmlns:html=&quot;http://www.w3.org/TR/REC-html40&quot; xmlns:sitemap=&quot;http://www.sitemaps.org/schemas/sitemap/0.9&quot;&gt;&lt;head&gt;&lt;title&gt;XML Sitemap&lt;/title&gt;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;/&gt;&lt;meta name=&quot;robots&quot; content=&quot;noindex,follow&quot;/&gt;&lt;style type=&quot;text/css&quot;&gt;</code></p>\n<p>Notice the &#8220;noindex&#8221; in there? I think Google has maybe changed their understanding of &#8220;noindex&#8221; and therefore, the plugin should remove this &#8220;noindex&#8221; tag.</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"Bliss7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:99:"https://wordpress.org/support/topic/how-to-input-new-url-into-search-console-after-plugin-download/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"How to Input new URL into Search console after plugin download";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:99:"https://wordpress.org/support/topic/how-to-input-new-url-into-search-console-after-plugin-download/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 11 Oct 2019 14:13:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:444:"\n						\n						<p>Replies: 1</p>\n						<p>Hello, I just downloaded the Google sitemaps plugin because I had an HTML error when I tried inputting my URL into google search console site maps page. Now, I have the plugin so I should be covered, but what URL should I input into the google search console now so I can keep up with my site dynamics? Hopefully that makes sense, if not please let me know!</p>\n<p>Thanks</p>\n<p>Michael</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"murdy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/support/topic/image-sitemap-5/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Image sitemap?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/support/topic/image-sitemap-5/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 11 Oct 2019 00:13:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:157:"\n						\n						<p>Replies: 0</p>\n						<p>Hi<br />\nThanks for such great plugin!<br />\nDoes it allow to create an image sitemap?<br />\nthanks</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"teacdan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/support/topic/bug-google-xml-sitemaps-sitemap-pt-page/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:40:"bug Google XML Sitemaps sitemap-pt-page-";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wordpress.org/support/topic/bug-google-xml-sitemaps-sitemap-pt-page/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Oct 2019 08:18:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:206:"\n						\n						<p>Replies: 1</p>\n						<p>Google ignores these sitemap-pt-post-2019.xml on the sitemap. Why?<br />\nerror &#8220;Couldn&#8217;t fetch&#8221;  why not register these extensions</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"cmsnegar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:67:"\n					\n					\n					\n					\n					\n\n					\n					\n\n					\n					\n					\n				";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:90:"https://wordpress.org/support/topic/sitemap-xml-google-search-console-error-couldnt-fetch/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"sitemap.xml Google Search console error &amp;#8220;couldnt fetch&amp;#8221;";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:90:"https://wordpress.org/support/topic/sitemap-xml-google-search-console-error-couldnt-fetch/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 03 Oct 2019 20:05:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:777:"\n						\n						<p>Replies: 2</p>\n						<p>When I installed the XML Sitemap Generator plugin and clicked on the &#8220;Notify Search Engines&#8221; link it seemed to work and now after a couple of weeks the plugin says &#8220;Google was successfully notified about changes.&#8221; but when I check the Google Search Console under Sitemaps it shows sitemap.xml with the status message &#8220;Couldn&#8217;t fetch&#8221;. </p>\n<p>If I check the file structure for the website I don&#8217;t see any file named &#8220;sitemap.xml&#8221; at the root of the domain where the WordPress files are. Does the plugin actually create a physical file named &#8220;sitemap.xml&#8221; at the root of the domain or is it hidden in some other folder?</p>\n<p>Thanks,<br />\nRichard</p>\n						\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"fimage";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:67:"https://wordpress.org/support/plugin/google-sitemap-generator/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:8:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 03 Jan 2020 12:36:59 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:12:"x-robots-tag";s:15:"noindex, follow";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:9:"HIT ord 2";}}s:5:"build";s:14:"20130911010210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1631, '_transient_timeout_feed_mod_d21d2a68bac70d38fb7f9a7bd3d1725e', '1578659819', 'no'),
(1632, '_transient_feed_mod_d21d2a68bac70d38fb7f9a7bd3d1725e', '1578055019', 'no'),
(1633, '_transient_timeout_berocket_1_paid_info', '1578659819', 'no'),
(1634, '_transient_berocket_1_paid_info', 'a:13:{s:2:"id";s:1:"1";s:4:"name";s:32:"WooCommerce AJAX Products Filter";s:4:"slug";s:32:"woocommerce-ajax-products-filter";s:10:"plugin_url";s:61:"https://berocket.com/product/woocommerce-ajax-products-filter";s:7:"version";s:7:"2.4.1.3";s:5:"about";s:113:"Take a look at this fantastic AJAX products filter plugin for WooCommerce. Add unlimited filters with one widget.";s:10:"difference";a:15:{i:0;s:27:"Filter by Custom Taxonomies";i:1;s:31:"Nice URLs for SEO Friendly URLs";i:2;s:17:"Search box widget";i:3;s:17:"Cache for Widgets";i:4;s:39:"Count of Products with Attribute Values";i:5;s:37:"Show amount of products before update";i:6;s:41:"Price as checkbox with min and max values";i:7;s:38:"Display only selected attribute values";i:8;s:32:"Remove selected attribute values";i:9;s:42:"Widget to filter products by modified date";i:10;s:40:"Widget to filter products by sale status";i:11;s:34:"Widget option to hide child values";i:12;s:57:"Limitation for specific users(Logged In or Not Logged In)";i:13;s:73:"Product sub-category option to show child categories for current category";i:14;s:62:"Up to 4 colors for attributes values in widget with type color";}s:7:"related";a:3:{i:0;s:1:"3";i:1;s:1:"8";i:2;s:2:"19";}s:5:"image";s:61:"https://berocket.com/img/b15144f7012aa6e6badd844905dec34f.png";s:10:"mini_image";s:61:"https://berocket.com/img/fef38793de09251e3d7dd4520965cc16.png";s:10:"shop_image";s:61:"https://berocket.com/img/163ffebae875ac349d4430b2e388ca99.png";s:5:"price";s:2:"35";s:7:"buy_url";s:34:"https://berocket.com/add_to_cart/1";}', 'no'),
(1640, '_transient_timeout_tnp_extensions_json', '1578314220', 'no'),
(1641, '_transient_tnp_extensions_json', '[\n    {\n        "id": "85",\n        "parent_fileid": "",\n        "version": "1.1.2",\n        "title": "Addons Manager",\n        "description": "",\n        "slug": "newsletter-extensions",\n        "type": "manager",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "",\n        "status": "4",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=85",\n        "wp_slug": "newsletter-extensions\\/extensions.php"\n    },\n    {\n        "id": "61",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.1.4",\n        "title": "Contact Form 7",\n        "description": "Adds the newsletter subscription feature to your Contact Form 7 forms.",\n        "slug": "newsletter-cf7",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/contact-form-7-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/users-32px-outline_badge-13.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=61",\n        "wp_slug": "newsletter-cf7\\/cf7.php"\n    },\n    {\n        "id": "83",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.0.3",\n        "title": "Ninja Forms Integration",\n        "description": "Integrate Ninja Forms with Newsletter collecting subscription from your contact form.",\n        "slug": "newsletter-ninjaforms",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/10\\/forms-integration.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=83",\n        "wp_slug": "newsletter-ninjaforms\\/ninjaforms.php"\n    },\n    {\n        "id": "84",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.0.2",\n        "title": "WP Forms Integration",\n        "description": "Integration with WP-Forms plugin. You can add a subscription option to your contact forms.",\n        "slug": "newsletter-wpforms",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/10\\/forms-integration.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=84",\n        "wp_slug": "newsletter-wpforms\\/wpforms.php"\n    },\n    {\n        "id": "50",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.2.3",\n        "title": "Reports",\n        "description": "Shows tables and diagrams of the collected data (opens, clicks, ...).",\n        "slug": "newsletter-reports",\n        "type": "extension",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/reports",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/business-32px-outline_chart-bar-33.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=50",\n        "wp_slug": "newsletter-reports\\/reports.php"\n    },\n    {\n        "id": "62",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.4.2",\n        "title": "Automated",\n        "description": "Automatically creates periodic newsletters with your blog contents. Multichannel.",\n        "slug": "newsletter-automated",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/automated",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-2_time-countdown.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=62",\n        "wp_slug": "newsletter-automated\\/automated.php"\n    },\n    {\n        "id": "63",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.4.2",\n        "title": "WooCommerce",\n        "description": "The Newsletter Plugin integration for WooCommerce\\u2122. Unleash your marketing powers.",\n        "slug": "newsletter-woocommerce",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/woocommerce-extension",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/03\\/woocommerce-extension-icon.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=63",\n        "wp_slug": "newsletter-woocommerce\\/woocommerce.php"\n    },\n    {\n        "id": "67",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.1.4",\n        "title": "Leads",\n        "description": "Add a popup or a fixed subscription bar to your website and offer your visitors a simple way to subscribe.",\n        "slug": "newsletter-leads",\n        "type": "extension",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/leads-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_widget.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=67",\n        "wp_slug": "newsletter-leads\\/leads.php"\n    },\n    {\n        "id": "68",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.1.1",\n        "title": "Google Analytics",\n        "description": "Automatically add Google Analytics UTM campaign tracking to links",\n        "slug": "newsletter-analytics",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": " https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/analytics.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=68",\n        "wp_slug": "newsletter-analytics\\/analytics.php"\n    },\n    {\n        "id": "70",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.0.6",\n        "title": "Subscribe on Comment",\n        "description": "Adds the subscription option to your blog comment form",\n        "slug": "newsletter-comments",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/02\\/comment-notification.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=70",\n        "wp_slug": "newsletter-comments\\/comments.php"\n    },\n    {\n        "id": "72",\n        "parent_fileid": "8,3",\n        "version": "1.1.4",\n        "title": "Autoresponder",\n        "description": "Create unlimited email series to follow-up your subscribers. Lessons, up-sells, conversations.",\n        "slug": "newsletter-autoresponder",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/autoresponder",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/emoticons-32px-outline_robot.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=72",\n        "wp_slug": "newsletter-autoresponder\\/autoresponder.php"\n    },\n    {\n        "id": "74",\n        "parent_fileid": "8,3",\n        "version": "1.2.0",\n        "title": "Extended Composer Blocks",\n        "description": "Adds new blocks to the newsletter composer: list, video, gallery, full post.",\n        "slug": "newsletter-blocks",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/ui-32px-outline-3_widget.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=74",\n        "wp_slug": "newsletter-blocks\\/blocks.php"\n    },\n    {\n        "id": "75",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.1.0",\n        "title": "Geolocation",\n        "description": "Geolocate the subscribers and target them by geolocation in your campaign.",\n        "slug": "newsletter-geo",\n        "type": "extension",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/03\\/geo-extension-icon.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=75",\n        "wp_slug": "newsletter-geo\\/geo.php"\n    },\n    {\n        "id": "77",\n        "parent_fileid": "",\n        "version": "2.0.2",\n        "title": "Newsletter API",\n        "description": "Compatibility package for customers using the old API calls.",\n        "slug": "newsletter-api",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/10\\/bold-direction@2x-1.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=77",\n        "wp_slug": "newsletter-api\\/api.php"\n    },\n    {\n        "id": "55",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.0.9",\n        "title": "Facebook",\n        "description": "One click subscription and confirmation with Facebook Connect.",\n        "slug": "newsletter-facebook",\n        "type": "integration",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/facebook-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/Facebook.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=55",\n        "wp_slug": "newsletter-facebook\\/facebook.php"\n    },\n    {\n        "id": "76",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.0.9",\n        "title": "Bounce Management",\n        "description": "This experimental extension manages the bounces and keeps the list clean of invalid addresses.",\n        "slug": "newsletter-bounce",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/10\\/ic_settings_backup_restore_32px.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=76",\n        "wp_slug": "newsletter-bounce\\/bounce.php"\n    },\n    {\n        "id": "79",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.0.6",\n        "title": "Events Manager Integration",\n        "description": "Integrates with Events Manager plugin to add events in your regular and automated newsletters.",\n        "slug": "newsletter-events",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2019\\/02\\/events-manager-icon.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=79",\n        "wp_slug": "newsletter-events\\/events.php"\n    },\n    {\n        "id": "82",\n        "parent_fileid": "",\n        "version": "1.0.0",\n        "title": "Translatepress Bridge",\n        "description": "Enables few multilanguage Newsletter features for who is using Translatepress.",\n        "slug": "newsletter-translatepress",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/09\\/translatepress.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=82",\n        "wp_slug": "newsletter-translatepress\\/translatepress.php"\n    },\n    {\n        "id": "86",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.0.2",\n        "title": "Advanced Import (BETA!)",\n        "description": "An advanced import system with extended profile fields and mapping (beta version).",\n        "slug": "newsletter-import",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/file-upload-88.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=86",\n        "wp_slug": "newsletter-import\\/import.php"\n    },\n    {\n        "id": "88",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.0.7",\n        "title": "The Events Calendar (by Tribe)",\n        "description": "Adds a composer block which extracts the events managed by The Events Calendar plugin.",\n        "slug": "newsletter-tribeevents",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/documentation\\/tribeevents-extension",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2019\\/02\\/tribe-event-calendar-icon.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=88",\n        "wp_slug": "newsletter-tribeevents\\/tribeevents.php"\n    },\n    {\n        "id": "58",\n        "parent_fileid": "",\n        "version": "4.0.3",\n        "title": "Archive",\n        "description": "Generates a public archive of the sent newsletters for your blog.",\n        "slug": "newsletter-archive",\n        "type": "extension",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/newsletter-archive-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/files-32px-outline_archive-3d-content.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=58",\n        "wp_slug": "newsletter-archive\\/archive.php"\n    },\n    {\n        "id": "71",\n        "parent_fileid": "",\n        "version": "1.0.5",\n        "title": "Locked Content",\n        "description": "Boost your subscription rate locking out your premium contents with a subscription form.",\n        "slug": "newsletter-lock",\n        "type": "extension",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/ui-32px-outline-1_lock-open.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=71",\n        "wp_slug": "newsletter-lock\\/lock.php"\n    },\n    {\n        "id": "73",\n        "parent_fileid": "",\n        "version": "1.2.0",\n        "title": "WP Users Integration",\n        "description": "Connects the WordPress user registration with Newsletter subscription. Optionally imports all WP users as subscribers.",\n        "slug": "newsletter-wpusers",\n        "type": "integration",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/account",\n        "image": "https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/media-32px-outline-2_speaker-01.png",\n        "status": "3",\n        "free": true,\n        "downloadable": true,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=73",\n        "wp_slug": "newsletter-wpusers\\/wpusers.php"\n    },\n    {\n        "id": "51",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.1.1",\n        "title": "Feed by Mail",\n        "description": "Automatically creates and sends newsletters with the latest blog posts.",\n        "slug": "newsletter-feed",\n        "type": "legacy",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/feed-by-mail-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_playlist.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=51",\n        "wp_slug": "newsletter-feed\\/feed.php"\n    },\n    {\n        "id": "53",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "2.2.0",\n        "title": "Popup",\n        "description": "Configurable popup system to increase the subscription rate.",\n        "slug": "newsletter-popup",\n        "type": "legacy",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/popup-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_widget.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=53",\n        "wp_slug": "newsletter-popup\\/popup.php"\n    },\n    {\n        "id": "54",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.1.1",\n        "title": "Followup",\n        "description": "Automated email series sent upon subscription at defined intervals.",\n        "slug": "newsletter-followup",\n        "type": "legacy",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/follow-up-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-2_time-countdown.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=54",\n        "wp_slug": "newsletter-followup\\/followup.php"\n    },\n    {\n        "id": "48",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.1.5",\n        "title": "SendGrid",\n        "description": "Integrates the SendGrid delivery system and bounce detection.",\n        "slug": "newsletter-sendgrid",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/sendgrid-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=48",\n        "wp_slug": "newsletter-sendgrid\\/sendgrid.php"\n    },\n    {\n        "id": "52",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.0.7",\n        "title": "Mailjet",\n        "description": "Integrates the Mailjet delivery system and bounce detection.",\n        "slug": "newsletter-mailjet",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mailjet-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=52",\n        "wp_slug": "newsletter-mailjet\\/mailjet.php"\n    },\n    {\n        "id": "60",\n        "parent_fileid": "8,3",\n        "version": "1.2.3",\n        "title": "Amazon SES",\n        "description": "Integrates Newsletter with Amazon SES service for sending emails and processing bounces.",\n        "slug": "newsletter-amazon",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/amazon-ses-extension",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=60",\n        "wp_slug": "newsletter-amazon\\/amazon.php"\n    },\n    {\n        "id": "65",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "4.0.9",\n        "title": "Mailgun",\n        "description": "Integrates the Mailgun delivery system and bounce detection.",\n        "slug": "newsletter-mailgun",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mailgun-module",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=65",\n        "wp_slug": "newsletter-mailgun\\/mailgun.php"\n    },\n    {\n        "id": "66",\n        "parent_fileid": "8,3",\n        "version": "1.0.6",\n        "title": "ElasticEmail",\n        "description": "ElasticEmail integration",\n        "slug": "newsletter-elasticemail",\n        "type": "delivery",\n        "url": "http:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=66",\n        "wp_slug": "newsletter-elasticemail\\/elasticemail.php"\n    },\n    {\n        "id": "69",\n        "parent_fileid": "8,3,3,8,3,8",\n        "version": "1.1.5",\n        "title": "SparkPost",\n        "description": "Integrates Newsletter with the SparkPost mail delivery service and bounce detection.",\n        "slug": "newsletter-sparkpost",\n        "type": "delivery",\n        "url": "https:\\/\\/www.thenewsletterplugin.com\\/premium",\n        "image": "https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png",\n        "status": "2",\n        "free": false,\n        "downloadable": false,\n        "download_url": "http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=69",\n        "wp_slug": "newsletter-sparkpost\\/sparkpost.php"\n    }\n]', 'no'),
(1642, '_transient_timeout__woocommerce_helper_subscriptions', '1578055920', 'no'),
(1643, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1644, '_site_transient_timeout_theme_roots', '1578056820', 'no'),
(1645, '_site_transient_theme_roots', 'a:5:{s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:10:"victorynox";s:7:"/themes";}', 'no'),
(1646, '_transient_timeout__woocommerce_helper_updates', '1578098220', 'no'),
(1647, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"358c40eaa335ac0d027f3e9faa3c726e";s:7:"updated";i:1578055020;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(1648, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1578055024;s:7:"checked";a:5:{s:14:"twentynineteen";s:3:"1.4";s:15:"twentyseventeen";s:3:"2.2";s:13:"twentysixteen";s:3:"2.0";s:12:"twentytwenty";s:3:"1.0";s:10:"victorynox";s:5:"1.0.0";}s:8:"response";a:1:{s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.1";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.1.zip";s:8:"requires";b:0;s:12:"requires_php";b:0;}}s:12:"translations";a:0:{}}', 'no'),
(1649, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1578055025;s:7:"checked";a:16:{s:48:"woocommerce-ajax-filters/woocommerce-filters.php";s:7:"1.4.0.5";s:30:"advanced-custom-fields/acf.php";s:5:"5.8.7";s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";s:5:"3.3.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.6";s:25:"duplicator/duplicator.php";s:6:"1.3.24";s:53:"facebook-for-woocommerce/facebook-for-woocommerce.php";s:6:"1.9.15";s:36:"google-sitemap-generator/sitemap.php";s:5:"4.1.0";s:41:"image-title-remove/image-title-remove.php";s:3:"1.0";s:41:"better-wp-security/better-wp-security.php";s:5:"7.5.0";s:21:"newsletter/plugin.php";s:5:"6.4.0";s:35:"perfect-woocommerce-brands/main.php";s:5:"1.7.7";s:49:"premmerce-woocommerce-brands/premmerce-brands.php";s:6:"1.2.10";s:47:"really-simple-captcha/really-simple-captcha.php";s:5:"2.0.2";s:27:"woocommerce/woocommerce.php";s:5:"3.8.1";s:53:"product-carousel-slider-for-woocommerce/wpcs-main.php";s:5:"3.3.2";s:27:"wp-super-cache/wp-cache.php";s:5:"1.7.0";}s:8:"response";a:4:{s:48:"woocommerce-ajax-filters/woocommerce-filters.php";O:8:"stdClass":12:{s:2:"id";s:38:"w.org/plugins/woocommerce-ajax-filters";s:4:"slug";s:24:"woocommerce-ajax-filters";s:6:"plugin";s:48:"woocommerce-ajax-filters/woocommerce-filters.php";s:11:"new_version";s:7:"1.4.1.3";s:3:"url";s:55:"https://wordpress.org/plugins/woocommerce-ajax-filters/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/woocommerce-ajax-filters.1.4.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:77:"https://ps.w.org/woocommerce-ajax-filters/assets/icon-256x256.png?rev=1720711";s:2:"1x";s:77:"https://ps.w.org/woocommerce-ajax-filters/assets/icon-128x128.png?rev=1720711";}s:7:"banners";a:1:{s:2:"1x";s:79:"https://ps.w.org/woocommerce-ajax-filters/assets/banner-772x250.png?rev=1720711";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";O:8:"stdClass":12:{s:2:"id";s:33:"w.org/plugins/all-in-one-seo-pack";s:4:"slug";s:19:"all-in-one-seo-pack";s:6:"plugin";s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";s:11:"new_version";s:5:"3.3.4";s:3:"url";s:50:"https://wordpress.org/plugins/all-in-one-seo-pack/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/all-in-one-seo-pack.3.3.4.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/all-in-one-seo-pack/assets/icon-256x256.png?rev=2075006";s:2:"1x";s:72:"https://ps.w.org/all-in-one-seo-pack/assets/icon-128x128.png?rev=2075006";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/all-in-one-seo-pack/assets/banner-1544x500.png?rev=1354894";s:2:"1x";s:74:"https://ps.w.org/all-in-one-seo-pack/assets/banner-772x250.png?rev=1354894";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:41:"better-wp-security/better-wp-security.php";O:8:"stdClass":13:{s:2:"id";s:32:"w.org/plugins/better-wp-security";s:4:"slug";s:18:"better-wp-security";s:6:"plugin";s:41:"better-wp-security/better-wp-security.php";s:11:"new_version";s:5:"7.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/better-wp-security/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/better-wp-security.7.6.1.zip";s:5:"icons";a:3:{s:2:"2x";s:70:"https://ps.w.org/better-wp-security/assets/icon-256x256.jpg?rev=969999";s:2:"1x";s:62:"https://ps.w.org/better-wp-security/assets/icon.svg?rev=970042";s:3:"svg";s:62:"https://ps.w.org/better-wp-security/assets/icon.svg?rev=970042";}s:7:"banners";a:1:{s:2:"1x";s:72:"https://ps.w.org/better-wp-security/assets/banner-772x250.png?rev=881897";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:90:"<p>Version 7.6.1 contains new features and bug fixes. It is recommended for all users.</p>";s:6:"tested";s:5:"5.3.0";s:12:"requires_php";s:3:"5.5";s:13:"compatibility";O:8:"stdClass":0:{}}s:21:"newsletter/plugin.php";O:8:"stdClass":12:{s:2:"id";s:24:"w.org/plugins/newsletter";s:4:"slug";s:10:"newsletter";s:6:"plugin";s:21:"newsletter/plugin.php";s:11:"new_version";s:5:"6.4.1";s:3:"url";s:41:"https://wordpress.org/plugins/newsletter/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/newsletter.6.4.1.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/newsletter/assets/icon-256x256.png?rev=1052028";s:2:"1x";s:63:"https://ps.w.org/newsletter/assets/icon-128x128.png?rev=1160467";}s:7:"banners";a:2:{s:2:"2x";s:66:"https://ps.w.org/newsletter/assets/banner-1544x500.png?rev=1052027";s:2:"1x";s:65:"https://ps.w.org/newsletter/assets/banner-772x250.png?rev=1052027";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";s:3:"5.6";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:12:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.8.7";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.6";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:25:"duplicator/duplicator.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/duplicator";s:4:"slug";s:10:"duplicator";s:6:"plugin";s:25:"duplicator/duplicator.php";s:11:"new_version";s:6:"1.3.24";s:3:"url";s:41:"https://wordpress.org/plugins/duplicator/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/duplicator.1.3.24.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2083921";s:2:"1x";s:63:"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2083921";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472";}s:11:"banners_rtl";a:0:{}}s:53:"facebook-for-woocommerce/facebook-for-woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:38:"w.org/plugins/facebook-for-woocommerce";s:4:"slug";s:24:"facebook-for-woocommerce";s:6:"plugin";s:53:"facebook-for-woocommerce/facebook-for-woocommerce.php";s:11:"new_version";s:6:"1.9.15";s:3:"url";s:55:"https://wordpress.org/plugins/facebook-for-woocommerce/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.9.15.zip";s:5:"icons";a:3:{s:2:"2x";s:77:"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223";s:2:"1x";s:69:"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223";s:3:"svg";s:69:"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:36:"google-sitemap-generator/sitemap.php";O:8:"stdClass":9:{s:2:"id";s:38:"w.org/plugins/google-sitemap-generator";s:4:"slug";s:24:"google-sitemap-generator";s:6:"plugin";s:36:"google-sitemap-generator/sitemap.php";s:11:"new_version";s:5:"4.1.0";s:3:"url";s:55:"https://wordpress.org/plugins/google-sitemap-generator/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/google-sitemap-generator.4.1.0.zip";s:5:"icons";a:2:{s:2:"2x";s:77:"https://ps.w.org/google-sitemap-generator/assets/icon-256x256.png?rev=1701944";s:2:"1x";s:77:"https://ps.w.org/google-sitemap-generator/assets/icon-128x128.png?rev=1701944";}s:7:"banners";a:1:{s:2:"1x";s:79:"https://ps.w.org/google-sitemap-generator/assets/banner-772x250.png?rev=1701944";}s:11:"banners_rtl";a:0:{}}s:41:"image-title-remove/image-title-remove.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/image-title-remove";s:4:"slug";s:18:"image-title-remove";s:6:"plugin";s:41:"image-title-remove/image-title-remove.php";s:11:"new_version";s:3:"1.0";s:3:"url";s:49:"https://wordpress.org/plugins/image-title-remove/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/image-title-remove.zip";s:5:"icons";a:1:{s:7:"default";s:69:"https://s.w.org/plugins/geopattern-icon/image-title-remove_989898.svg";}s:7:"banners";a:1:{s:2:"1x";s:73:"https://ps.w.org/image-title-remove/assets/banner-772x250.png?rev=1556999";}s:11:"banners_rtl";a:0:{}}s:35:"perfect-woocommerce-brands/main.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/perfect-woocommerce-brands";s:4:"slug";s:26:"perfect-woocommerce-brands";s:6:"plugin";s:35:"perfect-woocommerce-brands/main.php";s:11:"new_version";s:5:"1.7.7";s:3:"url";s:57:"https://wordpress.org/plugins/perfect-woocommerce-brands/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/perfect-woocommerce-brands.1.7.7.zip";s:5:"icons";a:1:{s:2:"1x";s:79:"https://ps.w.org/perfect-woocommerce-brands/assets/icon-128x128.png?rev=1838232";}s:7:"banners";a:1:{s:2:"1x";s:81:"https://ps.w.org/perfect-woocommerce-brands/assets/banner-772x250.png?rev=2029384";}s:11:"banners_rtl";a:0:{}}s:49:"premmerce-woocommerce-brands/premmerce-brands.php";O:8:"stdClass":9:{s:2:"id";s:42:"w.org/plugins/premmerce-woocommerce-brands";s:4:"slug";s:28:"premmerce-woocommerce-brands";s:6:"plugin";s:49:"premmerce-woocommerce-brands/premmerce-brands.php";s:11:"new_version";s:6:"1.2.10";s:3:"url";s:59:"https://wordpress.org/plugins/premmerce-woocommerce-brands/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/premmerce-woocommerce-brands.1.2.10.zip";s:5:"icons";a:2:{s:2:"2x";s:81:"https://ps.w.org/premmerce-woocommerce-brands/assets/icon-256x256.png?rev=1840678";s:2:"1x";s:81:"https://ps.w.org/premmerce-woocommerce-brands/assets/icon-128x128.png?rev=1840678";}s:7:"banners";a:2:{s:2:"2x";s:84:"https://ps.w.org/premmerce-woocommerce-brands/assets/banner-1544x500.png?rev=2073162";s:2:"1x";s:83:"https://ps.w.org/premmerce-woocommerce-brands/assets/banner-772x250.png?rev=2073162";}s:11:"banners_rtl";a:0:{}}s:47:"really-simple-captcha/really-simple-captcha.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/really-simple-captcha";s:4:"slug";s:21:"really-simple-captcha";s:6:"plugin";s:47:"really-simple-captcha/really-simple-captcha.php";s:11:"new_version";s:5:"2.0.2";s:3:"url";s:52:"https://wordpress.org/plugins/really-simple-captcha/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/really-simple-captcha.zip";s:5:"icons";a:2:{s:2:"2x";s:74:"https://ps.w.org/really-simple-captcha/assets/icon-256x256.png?rev=1047241";s:2:"1x";s:74:"https://ps.w.org/really-simple-captcha/assets/icon-128x128.png?rev=1047241";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/really-simple-captcha/assets/banner-1544x500.png?rev=880406";s:2:"1x";s:75:"https://ps.w.org/really-simple-captcha/assets/banner-772x250.png?rev=880406";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.8.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035";}s:11:"banners_rtl";a:0:{}}s:53:"product-carousel-slider-for-woocommerce/wpcs-main.php";O:8:"stdClass":9:{s:2:"id";s:53:"w.org/plugins/product-carousel-slider-for-woocommerce";s:4:"slug";s:39:"product-carousel-slider-for-woocommerce";s:6:"plugin";s:53:"product-carousel-slider-for-woocommerce/wpcs-main.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:70:"https://wordpress.org/plugins/product-carousel-slider-for-woocommerce/";s:7:"package";s:82:"https://downloads.wordpress.org/plugin/product-carousel-slider-for-woocommerce.zip";s:5:"icons";a:1:{s:2:"1x";s:92:"https://ps.w.org/product-carousel-slider-for-woocommerce/assets/icon-128x128.jpg?rev=1484311";}s:7:"banners";a:1:{s:2:"1x";s:94:"https://ps.w.org/product-carousel-slider-for-woocommerce/assets/banner-772x250.jpg?rev=1489327";}s:11:"banners_rtl";a:0:{}}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/wp-super-cache";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.7.0";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.7.0.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-256x256.png?rev=1095422";s:2:"1x";s:67:"https://ps.w.org/wp-super-cache/assets/icon-128x128.png?rev=1095422";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/wp-super-cache/assets/banner-1544x500.png?rev=1082414";s:2:"1x";s:69:"https://ps.w.org/wp-super-cache/assets/banner-772x250.png?rev=1082414";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(1650, '_site_transient_timeout_aioseop_update_check_time', '1578141964', 'no'),
(1651, '_site_transient_aioseop_update_check_time', '1578120364', 'no'),
(1652, '_transient_doing_cron', '1578120364.5672841072082519531250', 'yes'),
(1653, '_transient_timeout_wc_related_24', '1578206786', 'no'),
(1654, '_transient_wc_related_24', 'a:1:{s:50:"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=24";a:3:{i:0;s:2:"25";i:1;s:2:"21";i:2;s:2:"28";}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:18:"woocommerce_single";a:4:{s:4:"file";s:35:"woocommerce-placeholder-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 10, '_edit_lock', '1575987228:1'),
(6, 10, '_edit_last', '1'),
(7, 12, '_edit_lock', '1575665073:1'),
(8, 12, '_edit_last', '1'),
(9, 10, '_wp_page_template', 'front-page.php'),
(10, 12, '_wp_trash_meta_status', 'publish'),
(11, 12, '_wp_trash_meta_time', '1575665113'),
(12, 12, '_wp_desired_post_slug', 'contact'),
(13, 15, '_edit_lock', '1575665205:1'),
(14, 15, '_wp_page_template', 'contact.php'),
(15, 15, '_edit_last', '1'),
(16, 19, '_action_manager_schedule', 'O:30:"ActionScheduler_SimpleSchedule":1:{s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1575811212;}'),
(17, 21, '_edit_last', '1'),
(18, 21, '_edit_lock', '1575988398:1'),
(19, 22, '_wp_attached_file', '2019/12/1.jpg'),
(20, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:13:"2019/12/1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:13:"1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:13:"1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:13:"1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 23, '_wp_attached_file', '2019/12/1-1.jpg'),
(22, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:320;s:4:"file";s:15:"2019/12/1-1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:15:"1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"1-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 21, '_thumbnail_id', '23'),
(24, 21, '_regular_price', '31.00'),
(25, 21, 'total_sales', '0'),
(26, 21, '_tax_status', 'taxable'),
(27, 21, '_tax_class', ''),
(28, 21, '_manage_stock', 'no'),
(29, 21, '_backorders', 'no'),
(30, 21, '_sold_individually', 'no'),
(31, 21, '_virtual', 'no'),
(32, 21, '_downloadable', 'no'),
(33, 21, '_download_limit', '-1'),
(34, 21, '_download_expiry', '-1'),
(35, 21, '_stock', NULL),
(36, 21, '_stock_status', 'instock'),
(37, 21, '_wc_average_rating', '0'),
(38, 21, '_wc_review_count', '0'),
(39, 21, '_product_version', '3.8.1'),
(40, 21, '_price', '31.00'),
(41, 24, '_edit_last', '1'),
(42, 24, '_edit_lock', '1575814191:1'),
(43, 33, '_wp_attached_file', '2019/12/1-2.jpg'),
(44, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:15:"2019/12/1-2.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"1-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"1-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-2-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:15:"1-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"1-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 24, '_thumbnail_id', '33'),
(46, 24, '_regular_price', '123'),
(47, 24, 'total_sales', '0'),
(48, 24, '_tax_status', 'taxable'),
(49, 24, '_tax_class', ''),
(50, 24, '_manage_stock', 'no'),
(51, 24, '_backorders', 'no'),
(52, 24, '_sold_individually', 'no'),
(53, 24, '_virtual', 'no'),
(54, 24, '_downloadable', 'no'),
(55, 24, '_download_limit', '-1'),
(56, 24, '_download_expiry', '-1'),
(57, 24, '_stock', NULL),
(58, 24, '_stock_status', 'instock'),
(59, 24, '_wc_average_rating', '0'),
(60, 24, '_wc_review_count', '0'),
(61, 24, '_product_version', '3.8.1'),
(62, 24, '_price', '123'),
(63, 25, '_edit_last', '1'),
(64, 25, '_edit_lock', '1575988215:1'),
(65, 34, '_wp_attached_file', '2019/12/SAK_1_6791_63__S1.jpg'),
(66, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:29:"2019/12/SAK_1_6791_63__S1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"SAK_1_6791_63__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"SAK_1_6791_63__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"SAK_1_6791_63__S1-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"SAK_1_6791_63__S1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:29:"SAK_1_6791_63__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"SAK_1_6791_63__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(67, 32, '_edit_last', '1'),
(68, 32, '_edit_lock', '1575988271:1'),
(69, 26, '_edit_last', '1'),
(70, 26, '_edit_lock', '1575988223:1'),
(71, 27, '_edit_last', '1'),
(72, 27, '_edit_lock', '1575988231:1'),
(73, 28, '_edit_last', '1'),
(74, 28, '_edit_lock', '1575988239:1'),
(75, 29, '_edit_last', '1'),
(76, 29, '_edit_lock', '1575988248:1'),
(77, 30, '_edit_last', '1'),
(78, 30, '_edit_lock', '1575988254:1'),
(79, 31, '_edit_last', '1'),
(80, 31, '_edit_lock', '1575988264:1'),
(81, 35, '_wp_attached_file', '2019/12/SAK_2_5393_SE__S1.jpg'),
(82, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:29:"2019/12/SAK_2_5393_SE__S1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"SAK_2_5393_SE__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"SAK_2_5393_SE__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"SAK_2_5393_SE__S1-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"SAK_2_5393_SE__S1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:29:"SAK_2_5393_SE__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"SAK_2_5393_SE__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(83, 32, '_thumbnail_id', '35'),
(84, 32, '_regular_price', '80.00'),
(85, 32, 'total_sales', '0'),
(86, 32, '_tax_status', 'taxable'),
(87, 32, '_tax_class', ''),
(88, 32, '_manage_stock', 'no'),
(89, 32, '_backorders', 'no'),
(90, 32, '_sold_individually', 'no'),
(91, 32, '_virtual', 'no'),
(92, 32, '_downloadable', 'no'),
(93, 32, '_download_limit', '-1'),
(94, 32, '_download_expiry', '-1'),
(95, 32, '_stock', NULL),
(96, 32, '_stock_status', 'instock'),
(97, 32, '_wc_average_rating', '0'),
(98, 32, '_wc_review_count', '0'),
(99, 32, '_product_version', '3.8.1'),
(100, 32, '_price', '80.00'),
(101, 36, '_wp_attached_file', '2019/12/SAK_2_5223_SE__S1.jpg'),
(102, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:29:"2019/12/SAK_2_5223_SE__S1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"SAK_2_5223_SE__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"SAK_2_5223_SE__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"SAK_2_5223_SE__S1-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"SAK_2_5223_SE__S1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:29:"SAK_2_5223_SE__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"SAK_2_5223_SE__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(103, 31, '_thumbnail_id', '36'),
(104, 31, '_regular_price', '133'),
(105, 31, '_sale_price', '111'),
(106, 31, 'total_sales', '0'),
(107, 31, '_tax_status', 'taxable'),
(108, 31, '_tax_class', ''),
(109, 31, '_manage_stock', 'no'),
(110, 31, '_backorders', 'no'),
(111, 31, '_sold_individually', 'no'),
(112, 31, '_virtual', 'no'),
(113, 31, '_downloadable', 'no'),
(114, 31, '_download_limit', '-1'),
(115, 31, '_download_expiry', '-1'),
(116, 31, '_stock', NULL),
(117, 31, '_stock_status', 'instock'),
(118, 31, '_wc_average_rating', '0'),
(119, 31, '_wc_review_count', '0'),
(120, 31, '_product_version', '3.8.1'),
(121, 31, '_price', '111'),
(122, 37, '_wp_attached_file', '2019/12/SAK_2_3913_SKE__S1.jpg'),
(123, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:30:"2019/12/SAK_2_3913_SKE__S1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"SAK_2_3913_SKE__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"SAK_2_3913_SKE__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"SAK_2_3913_SKE__S1-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"SAK_2_3913_SKE__S1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:30:"SAK_2_3913_SKE__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"SAK_2_3913_SKE__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 30, '_thumbnail_id', '37'),
(125, 30, '_regular_price', '56'),
(126, 30, '_sale_price', '45'),
(127, 30, 'total_sales', '0'),
(128, 30, '_tax_status', 'taxable'),
(129, 30, '_tax_class', ''),
(130, 30, '_manage_stock', 'no'),
(131, 30, '_backorders', 'no'),
(132, 30, '_sold_individually', 'no'),
(133, 30, '_virtual', 'no'),
(134, 30, '_downloadable', 'no'),
(135, 30, '_download_limit', '-1'),
(136, 30, '_download_expiry', '-1'),
(137, 30, '_stock', NULL),
(138, 30, '_stock_status', 'instock'),
(139, 30, '_wc_average_rating', '0'),
(140, 30, '_wc_review_count', '0'),
(141, 30, '_product_version', '3.8.1'),
(142, 30, '_price', '45'),
(143, 38, '_wp_attached_file', '2019/12/SAK_2_3913_SE__S1.jpg'),
(144, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:29:"2019/12/SAK_2_3913_SE__S1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:29:"SAK_2_3913_SE__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:29:"SAK_2_3913_SE__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"SAK_2_3913_SE__S1-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:29:"SAK_2_3913_SE__S1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:29:"SAK_2_3913_SE__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"SAK_2_3913_SE__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(145, 29, '_thumbnail_id', '38'),
(146, 29, '_regular_price', '78'),
(147, 29, '_sale_price', '67'),
(148, 29, 'total_sales', '0'),
(149, 29, '_tax_status', 'taxable'),
(150, 29, '_tax_class', ''),
(151, 29, '_manage_stock', 'no'),
(152, 29, '_backorders', 'no'),
(153, 29, '_sold_individually', 'no'),
(154, 29, '_virtual', 'no'),
(155, 29, '_downloadable', 'no'),
(156, 29, '_download_limit', '-1'),
(157, 29, '_download_expiry', '-1'),
(158, 29, '_stock', NULL),
(159, 29, '_stock_status', 'instock'),
(160, 29, '_wc_average_rating', '0'),
(161, 29, '_wc_review_count', '0'),
(162, 29, '_product_version', '3.8.1'),
(163, 29, '_price', '67'),
(164, 39, '_wp_attached_file', '2019/12/SAK_2_3803_C__S1.jpg'),
(165, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:28:"2019/12/SAK_2_3803_C__S1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"SAK_2_3803_C__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"SAK_2_3803_C__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"SAK_2_3803_C__S1-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"SAK_2_3803_C__S1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:28:"SAK_2_3803_C__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"SAK_2_3803_C__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(166, 28, '_thumbnail_id', '39'),
(167, 28, '_regular_price', '89'),
(168, 28, 'total_sales', '0'),
(169, 28, '_tax_status', 'taxable'),
(170, 28, '_tax_class', ''),
(171, 28, '_manage_stock', 'no'),
(172, 28, '_backorders', 'no'),
(173, 28, '_sold_individually', 'no'),
(174, 28, '_virtual', 'no'),
(175, 28, '_downloadable', 'no'),
(176, 28, '_download_limit', '-1'),
(177, 28, '_download_expiry', '-1'),
(178, 28, '_stock', NULL),
(179, 28, '_stock_status', 'instock'),
(180, 28, '_wc_average_rating', '0'),
(181, 28, '_wc_review_count', '0'),
(182, 28, '_product_version', '3.8.1'),
(183, 28, '_price', '89'),
(184, 40, '_wp_attached_file', '2019/12/SAK_1_7775_T__S1.jpg'),
(185, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:28:"2019/12/SAK_1_7775_T__S1.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:28:"SAK_1_7775_T__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"SAK_1_7775_T__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"SAK_1_7775_T__S1-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"SAK_1_7775_T__S1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:28:"SAK_1_7775_T__S1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"SAK_1_7775_T__S1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(186, 27, '_thumbnail_id', '40'),
(187, 27, '_regular_price', '122'),
(188, 27, '_sale_price', '98'),
(189, 27, 'total_sales', '0'),
(190, 27, '_tax_status', 'taxable'),
(191, 27, '_tax_class', ''),
(192, 27, '_manage_stock', 'no'),
(193, 27, '_backorders', 'no'),
(194, 27, '_sold_individually', 'no'),
(195, 27, '_virtual', 'no'),
(196, 27, '_downloadable', 'no'),
(197, 27, '_download_limit', '-1'),
(198, 27, '_download_expiry', '-1'),
(199, 27, '_stock', NULL),
(200, 27, '_stock_status', 'instock'),
(201, 27, '_wc_average_rating', '0'),
(202, 27, '_wc_review_count', '0'),
(203, 27, '_product_version', '3.8.1'),
(204, 27, '_price', '98'),
(205, 41, '_wp_attached_file', '2019/12/SAK_1_6795_XLT__S2.jpg'),
(206, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:560;s:6:"height";i:490;s:4:"file";s:30:"2019/12/SAK_1_6795_XLT__S2.jpg";s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"SAK_1_6795_XLT__S2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"SAK_1_6795_XLT__S2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"SAK_1_6795_XLT__S2-300x263.jpg";s:5:"width";i:300;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:30:"SAK_1_6795_XLT__S2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:30:"SAK_1_6795_XLT__S2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"SAK_1_6795_XLT__S2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 26, '_thumbnail_id', '41'),
(208, 26, '_regular_price', '134'),
(209, 26, 'total_sales', '0'),
(210, 26, '_tax_status', 'taxable'),
(211, 26, '_tax_class', ''),
(212, 26, '_manage_stock', 'no'),
(213, 26, '_backorders', 'no'),
(214, 26, '_sold_individually', 'no'),
(215, 26, '_virtual', 'no'),
(216, 26, '_downloadable', 'no'),
(217, 26, '_download_limit', '-1'),
(218, 26, '_download_expiry', '-1'),
(219, 26, '_stock', NULL),
(220, 26, '_stock_status', 'instock'),
(221, 26, '_wc_average_rating', '0'),
(222, 26, '_wc_review_count', '0'),
(223, 26, '_product_version', '3.8.1'),
(224, 26, '_price', '134'),
(225, 25, '_thumbnail_id', '34'),
(226, 25, '_regular_price', '123'),
(227, 25, 'total_sales', '0'),
(228, 25, '_tax_status', 'taxable'),
(229, 25, '_tax_class', ''),
(230, 25, '_manage_stock', 'no'),
(231, 25, '_backorders', 'no'),
(232, 25, '_sold_individually', 'no'),
(233, 25, '_virtual', 'no'),
(234, 25, '_downloadable', 'no'),
(235, 25, '_download_limit', '-1'),
(236, 25, '_download_expiry', '-1'),
(237, 25, '_stock', NULL),
(238, 25, '_stock_status', 'instock'),
(239, 25, '_wc_average_rating', '0'),
(240, 25, '_wc_review_count', '0'),
(241, 25, '_product_version', '3.8.1'),
(242, 25, '_price', '123'),
(414, 61, '_menu_item_type', 'post_type'),
(415, 61, '_menu_item_menu_item_parent', '0'),
(416, 61, '_menu_item_object_id', '17'),
(417, 61, '_menu_item_object', 'page'),
(418, 61, '_menu_item_target', ''),
(419, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(420, 61, '_menu_item_xfn', ''),
(421, 61, '_menu_item_url', ''),
(422, 61, '_menu_item_orphaned', '1575898536'),
(468, 67, '_menu_item_type', 'taxonomy'),
(469, 67, '_menu_item_menu_item_parent', '0'),
(470, 67, '_menu_item_object_id', '22'),
(471, 67, '_menu_item_object', 'product_cat'),
(472, 67, '_menu_item_target', ''),
(473, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(474, 67, '_menu_item_xfn', ''),
(475, 67, '_menu_item_url', ''),
(476, 67, '_menu_item_orphaned', '1575898569'),
(477, 68, '_menu_item_type', 'taxonomy'),
(478, 68, '_menu_item_menu_item_parent', '0'),
(479, 68, '_menu_item_object_id', '17'),
(480, 68, '_menu_item_object', 'product_cat'),
(481, 68, '_menu_item_target', ''),
(482, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(483, 68, '_menu_item_xfn', ''),
(484, 68, '_menu_item_url', ''),
(485, 68, '_menu_item_orphaned', '1575898569'),
(486, 69, '_menu_item_type', 'taxonomy'),
(487, 69, '_menu_item_menu_item_parent', '0'),
(488, 69, '_menu_item_object_id', '19'),
(489, 69, '_menu_item_object', 'product_cat'),
(490, 69, '_menu_item_target', ''),
(491, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(492, 69, '_menu_item_xfn', ''),
(493, 69, '_menu_item_url', ''),
(494, 69, '_menu_item_orphaned', '1575898569'),
(495, 70, '_menu_item_type', 'taxonomy'),
(496, 70, '_menu_item_menu_item_parent', '0'),
(497, 70, '_menu_item_object_id', '21'),
(498, 70, '_menu_item_object', 'product_cat'),
(499, 70, '_menu_item_target', ''),
(500, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(501, 70, '_menu_item_xfn', ''),
(502, 70, '_menu_item_url', ''),
(503, 70, '_menu_item_orphaned', '1575898570'),
(504, 71, '_menu_item_type', 'taxonomy'),
(505, 71, '_menu_item_menu_item_parent', '0'),
(506, 71, '_menu_item_object_id', '18'),
(507, 71, '_menu_item_object', 'product_cat'),
(508, 71, '_menu_item_target', ''),
(509, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(510, 71, '_menu_item_xfn', ''),
(511, 71, '_menu_item_url', ''),
(512, 71, '_menu_item_orphaned', '1575898570'),
(513, 72, '_menu_item_type', 'taxonomy'),
(514, 72, '_menu_item_menu_item_parent', '0'),
(515, 72, '_menu_item_object_id', '20'),
(516, 72, '_menu_item_object', 'product_cat'),
(517, 72, '_menu_item_target', ''),
(518, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(519, 72, '_menu_item_xfn', ''),
(520, 72, '_menu_item_url', ''),
(521, 72, '_menu_item_orphaned', '1575898570'),
(594, 81, '_menu_item_type', 'taxonomy'),
(595, 81, '_menu_item_menu_item_parent', '0'),
(596, 81, '_menu_item_object_id', '25'),
(597, 81, '_menu_item_object', 'product_tag'),
(598, 81, '_menu_item_target', ''),
(599, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(600, 81, '_menu_item_xfn', ''),
(601, 81, '_menu_item_url', ''),
(602, 81, '_menu_item_orphaned', '1575898635'),
(639, 86, '_menu_item_type', 'taxonomy'),
(640, 86, '_menu_item_menu_item_parent', '0'),
(641, 86, '_menu_item_object_id', '30'),
(642, 86, '_menu_item_object', 'product_tag'),
(643, 86, '_menu_item_target', ''),
(644, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(645, 86, '_menu_item_xfn', ''),
(646, 86, '_menu_item_url', ''),
(647, 86, '_menu_item_orphaned', '1575898636'),
(666, 89, '_menu_item_type', 'post_type'),
(667, 89, '_menu_item_menu_item_parent', '0'),
(668, 89, '_menu_item_object_id', '9'),
(669, 89, '_menu_item_object', 'page'),
(670, 89, '_menu_item_target', ''),
(671, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(672, 89, '_menu_item_xfn', ''),
(673, 89, '_menu_item_url', ''),
(674, 89, '_menu_item_orphaned', '1575974756'),
(719, 95, '_menu_item_type', 'taxonomy'),
(720, 95, '_menu_item_menu_item_parent', '0'),
(721, 95, '_menu_item_object_id', '22'),
(722, 95, '_menu_item_object', 'product_cat'),
(723, 95, '_menu_item_target', ''),
(724, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(725, 95, '_menu_item_xfn', ''),
(726, 95, '_menu_item_url', ''),
(728, 96, '_menu_item_type', 'taxonomy'),
(729, 96, '_menu_item_menu_item_parent', '0'),
(730, 96, '_menu_item_object_id', '17'),
(731, 96, '_menu_item_object', 'product_cat'),
(732, 96, '_menu_item_target', ''),
(733, 96, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(734, 96, '_menu_item_xfn', ''),
(735, 96, '_menu_item_url', ''),
(737, 97, '_menu_item_type', 'taxonomy'),
(738, 97, '_menu_item_menu_item_parent', '0'),
(739, 97, '_menu_item_object_id', '19'),
(740, 97, '_menu_item_object', 'product_cat'),
(741, 97, '_menu_item_target', ''),
(742, 97, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(743, 97, '_menu_item_xfn', ''),
(744, 97, '_menu_item_url', ''),
(746, 98, '_menu_item_type', 'taxonomy'),
(747, 98, '_menu_item_menu_item_parent', '0'),
(748, 98, '_menu_item_object_id', '21'),
(749, 98, '_menu_item_object', 'product_cat'),
(750, 98, '_menu_item_target', ''),
(751, 98, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(752, 98, '_menu_item_xfn', ''),
(753, 98, '_menu_item_url', ''),
(755, 99, '_menu_item_type', 'taxonomy'),
(756, 99, '_menu_item_menu_item_parent', '0'),
(757, 99, '_menu_item_object_id', '18'),
(758, 99, '_menu_item_object', 'product_cat'),
(759, 99, '_menu_item_target', ''),
(760, 99, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(761, 99, '_menu_item_xfn', ''),
(762, 99, '_menu_item_url', ''),
(764, 100, '_menu_item_type', 'taxonomy'),
(765, 100, '_menu_item_menu_item_parent', '0'),
(766, 100, '_menu_item_object_id', '20'),
(767, 100, '_menu_item_object', 'product_cat'),
(768, 100, '_menu_item_target', ''),
(769, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(770, 100, '_menu_item_xfn', ''),
(771, 100, '_menu_item_url', ''),
(773, 101, '_menu_item_type', 'taxonomy'),
(774, 101, '_menu_item_menu_item_parent', '0'),
(775, 101, '_menu_item_object_id', '26'),
(776, 101, '_menu_item_object', 'product_tag'),
(777, 101, '_menu_item_target', ''),
(778, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(779, 101, '_menu_item_xfn', ''),
(780, 101, '_menu_item_url', ''),
(782, 102, '_menu_item_type', 'taxonomy'),
(783, 102, '_menu_item_menu_item_parent', '0'),
(784, 102, '_menu_item_object_id', '28'),
(785, 102, '_menu_item_object', 'product_tag'),
(786, 102, '_menu_item_target', ''),
(787, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(788, 102, '_menu_item_xfn', ''),
(789, 102, '_menu_item_url', ''),
(791, 103, '_menu_item_type', 'taxonomy'),
(792, 103, '_menu_item_menu_item_parent', '0'),
(793, 103, '_menu_item_object_id', '29'),
(794, 103, '_menu_item_object', 'product_tag'),
(795, 103, '_menu_item_target', ''),
(796, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(797, 103, '_menu_item_xfn', ''),
(798, 103, '_menu_item_url', ''),
(800, 104, '_menu_item_type', 'post_type'),
(801, 104, '_menu_item_menu_item_parent', '0'),
(802, 104, '_menu_item_object_id', '9'),
(803, 104, '_menu_item_object', 'page'),
(804, 104, '_menu_item_target', ''),
(805, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(806, 104, '_menu_item_xfn', ''),
(807, 104, '_menu_item_url', ''),
(818, 106, '_menu_item_type', 'post_type'),
(819, 106, '_menu_item_menu_item_parent', '0'),
(820, 106, '_menu_item_object_id', '7'),
(821, 106, '_menu_item_object', 'page'),
(822, 106, '_menu_item_target', ''),
(823, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(824, 106, '_menu_item_xfn', ''),
(825, 106, '_menu_item_url', ''),
(827, 107, '_wp_attached_file', '2019/12/Victorynox.jpg'),
(828, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:783;s:6:"height";i:612;s:4:"file";s:22:"2019/12/Victorynox.jpg";s:5:"sizes";a:9:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"Victorynox-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"Victorynox-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"Victorynox-600x469.jpg";s:5:"width";i:600;s:6:"height";i:469;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Victorynox-300x234.jpg";s:5:"width";i:300;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:22:"Victorynox-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Victorynox-768x600.jpg";s:5:"width";i:768;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:22:"Victorynox-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:11:"shop_single";a:4:{s:4:"file";s:22:"Victorynox-600x469.jpg";s:5:"width";i:600;s:6:"height";i:469;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"Victorynox-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(829, 108, '_wp_attached_file', '2019/12/Victorynox-1.jpg'),
(830, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:94;s:4:"file";s:24:"2019/12/Victorynox-1.jpg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"Victorynox-1-100x94.jpg";s:5:"width";i:100;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Victorynox-1-100x94.jpg";s:5:"width";i:100;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(831, 109, '_wp_attached_file', '2019/12/cropped-Victorynox-1.jpg'),
(832, 109, '_wp_attachment_context', 'custom-logo'),
(833, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:94;s:4:"file";s:32:"2019/12/cropped-Victorynox-1.jpg";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"cropped-Victorynox-1-100x94.jpg";s:5:"width";i:100;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"cropped-Victorynox-1-100x94.jpg";s:5:"width";i:100;s:6:"height";i:94;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(834, 110, '_wp_trash_meta_status', 'publish'),
(835, 110, '_wp_trash_meta_time', '1575983101'),
(836, 111, '_menu_item_type', 'post_type'),
(837, 111, '_menu_item_menu_item_parent', '0'),
(838, 111, '_menu_item_object_id', '6'),
(839, 111, '_menu_item_object', 'page'),
(840, 111, '_menu_item_target', ''),
(841, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(842, 111, '_menu_item_xfn', ''),
(843, 111, '_menu_item_url', ''),
(845, 112, '_menu_item_type', 'post_type'),
(846, 112, '_menu_item_menu_item_parent', '0'),
(847, 112, '_menu_item_object_id', '10'),
(848, 112, '_menu_item_object', 'page'),
(849, 112, '_menu_item_target', ''),
(850, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(851, 112, '_menu_item_xfn', ''),
(852, 112, '_menu_item_url', ''),
(854, 113, '_menu_item_type', 'post_type'),
(855, 113, '_menu_item_menu_item_parent', '0'),
(856, 113, '_menu_item_object_id', '17'),
(857, 113, '_menu_item_object', 'page'),
(858, 113, '_menu_item_target', ''),
(859, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(860, 113, '_menu_item_xfn', ''),
(861, 113, '_menu_item_url', ''),
(862, 113, '_menu_item_orphaned', '1575983681'),
(863, 114, '_menu_item_type', 'post_type'),
(864, 114, '_menu_item_menu_item_parent', '0'),
(865, 114, '_menu_item_object_id', '7'),
(866, 114, '_menu_item_object', 'page'),
(867, 114, '_menu_item_target', ''),
(868, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(869, 114, '_menu_item_xfn', ''),
(870, 114, '_menu_item_url', ''),
(872, 115, '_menu_item_type', 'post_type'),
(873, 115, '_menu_item_menu_item_parent', '0'),
(874, 115, '_menu_item_object_id', '8'),
(875, 115, '_menu_item_object', 'page'),
(876, 115, '_menu_item_target', ''),
(877, 115, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(878, 115, '_menu_item_xfn', ''),
(879, 115, '_menu_item_url', ''),
(881, 116, '_menu_item_type', 'post_type'),
(882, 116, '_menu_item_menu_item_parent', '0'),
(883, 116, '_menu_item_object_id', '15'),
(884, 116, '_menu_item_object', 'page'),
(885, 116, '_menu_item_target', ''),
(886, 116, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(887, 116, '_menu_item_xfn', ''),
(888, 116, '_menu_item_url', ''),
(890, 117, '_menu_item_type', 'post_type'),
(891, 117, '_menu_item_menu_item_parent', '0'),
(892, 117, '_menu_item_object_id', '9'),
(893, 117, '_menu_item_object', 'page'),
(894, 117, '_menu_item_target', ''),
(895, 117, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(896, 117, '_menu_item_xfn', ''),
(897, 117, '_menu_item_url', ''),
(899, 118, '_menu_item_type', 'post_type'),
(900, 118, '_menu_item_menu_item_parent', '0'),
(901, 118, '_menu_item_object_id', '2'),
(902, 118, '_menu_item_object', 'page'),
(903, 118, '_menu_item_target', ''),
(904, 118, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(905, 118, '_menu_item_xfn', ''),
(906, 118, '_menu_item_url', ''),
(907, 118, '_menu_item_orphaned', '1575983681'),
(908, 119, '_menu_item_type', 'post_type'),
(909, 119, '_menu_item_menu_item_parent', '0'),
(910, 119, '_menu_item_object_id', '6'),
(911, 119, '_menu_item_object', 'page'),
(912, 119, '_menu_item_target', ''),
(913, 119, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(914, 119, '_menu_item_xfn', ''),
(915, 119, '_menu_item_url', ''),
(917, 120, '_menu_item_type', 'taxonomy'),
(918, 120, '_menu_item_menu_item_parent', '0'),
(919, 120, '_menu_item_object_id', '23'),
(920, 120, '_menu_item_object', 'product_tag'),
(921, 120, '_menu_item_target', ''),
(922, 120, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(923, 120, '_menu_item_xfn', ''),
(924, 120, '_menu_item_url', ''),
(926, 121, '_menu_item_type', 'taxonomy'),
(927, 121, '_menu_item_menu_item_parent', '0'),
(928, 121, '_menu_item_object_id', '26'),
(929, 121, '_menu_item_object', 'product_tag'),
(930, 121, '_menu_item_target', ''),
(931, 121, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(932, 121, '_menu_item_xfn', ''),
(933, 121, '_menu_item_url', ''),
(935, 122, '_menu_item_type', 'taxonomy'),
(936, 122, '_menu_item_menu_item_parent', '0'),
(937, 122, '_menu_item_object_id', '27'),
(938, 122, '_menu_item_object', 'product_tag'),
(939, 122, '_menu_item_target', ''),
(940, 122, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(941, 122, '_menu_item_xfn', ''),
(942, 122, '_menu_item_url', ''),
(944, 123, '_menu_item_type', 'taxonomy'),
(945, 123, '_menu_item_menu_item_parent', '0'),
(946, 123, '_menu_item_object_id', '28'),
(947, 123, '_menu_item_object', 'product_tag'),
(948, 123, '_menu_item_target', ''),
(949, 123, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(950, 123, '_menu_item_xfn', ''),
(951, 123, '_menu_item_url', ''),
(953, 124, '_menu_item_type', 'taxonomy'),
(954, 124, '_menu_item_menu_item_parent', '0'),
(955, 124, '_menu_item_object_id', '29'),
(956, 124, '_menu_item_object', 'product_tag'),
(957, 124, '_menu_item_target', ''),
(958, 124, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(959, 124, '_menu_item_xfn', ''),
(960, 124, '_menu_item_url', ''),
(962, 125, '_menu_item_type', 'taxonomy'),
(963, 125, '_menu_item_menu_item_parent', '0'),
(964, 125, '_menu_item_object_id', '30'),
(965, 125, '_menu_item_object', 'product_tag'),
(966, 125, '_menu_item_target', ''),
(967, 125, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(968, 125, '_menu_item_xfn', ''),
(969, 125, '_menu_item_url', ''),
(971, 126, '_menu_item_type', 'taxonomy'),
(972, 126, '_menu_item_menu_item_parent', '0'),
(973, 126, '_menu_item_object_id', '22'),
(974, 126, '_menu_item_object', 'product_cat'),
(975, 126, '_menu_item_target', ''),
(976, 126, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(977, 126, '_menu_item_xfn', ''),
(978, 126, '_menu_item_url', ''),
(980, 127, '_menu_item_type', 'taxonomy'),
(981, 127, '_menu_item_menu_item_parent', '0'),
(982, 127, '_menu_item_object_id', '17'),
(983, 127, '_menu_item_object', 'product_cat'),
(984, 127, '_menu_item_target', ''),
(985, 127, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(986, 127, '_menu_item_xfn', ''),
(987, 127, '_menu_item_url', ''),
(989, 128, '_menu_item_type', 'taxonomy'),
(990, 128, '_menu_item_menu_item_parent', '0'),
(991, 128, '_menu_item_object_id', '19'),
(992, 128, '_menu_item_object', 'product_cat'),
(993, 128, '_menu_item_target', ''),
(994, 128, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(995, 128, '_menu_item_xfn', ''),
(996, 128, '_menu_item_url', ''),
(998, 129, '_menu_item_type', 'taxonomy'),
(999, 129, '_menu_item_menu_item_parent', '0'),
(1000, 129, '_menu_item_object_id', '21'),
(1001, 129, '_menu_item_object', 'product_cat'),
(1002, 129, '_menu_item_target', ''),
(1003, 129, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1004, 129, '_menu_item_xfn', ''),
(1005, 129, '_menu_item_url', ''),
(1007, 130, '_menu_item_type', 'taxonomy'),
(1008, 130, '_menu_item_menu_item_parent', '0'),
(1009, 130, '_menu_item_object_id', '18'),
(1010, 130, '_menu_item_object', 'product_cat'),
(1011, 130, '_menu_item_target', ''),
(1012, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1013, 130, '_menu_item_xfn', ''),
(1014, 130, '_menu_item_url', ''),
(1016, 131, '_menu_item_type', 'taxonomy'),
(1017, 131, '_menu_item_menu_item_parent', '0'),
(1018, 131, '_menu_item_object_id', '20'),
(1019, 131, '_menu_item_object', 'product_cat'),
(1020, 131, '_menu_item_target', ''),
(1021, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1022, 131, '_menu_item_xfn', ''),
(1023, 131, '_menu_item_url', ''),
(1025, 132, '_edit_last', '1'),
(1026, 132, '_edit_lock', '1575987057:1'),
(1027, 143, '_wp_attached_file', '2019/12/banner1-scaled.jpg'),
(1028, 143, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2560;s:6:"height";i:740;s:4:"file";s:26:"2019/12/banner1-scaled.jpg";s:5:"sizes";a:12:{s:6:"medium";a:4:{s:4:"file";s:18:"banner1-300x87.jpg";s:5:"width";i:300;s:6:"height";i:87;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"banner1-1024x296.jpg";s:5:"width";i:1024;s:6:"height";i:296;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"banner1-768x222.jpg";s:5:"width";i:768;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:20:"banner1-1536x444.jpg";s:5:"width";i:1536;s:6:"height";i:444;s:9:"mime-type";s:10:"image/jpeg";}s:9:"2048x2048";a:4:{s:4:"file";s:20:"banner1-2048x592.jpg";s:5:"width";i:2048;s:6:"height";i:592;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"banner1-600x173.jpg";s:5:"width";i:600;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"banner1-600x173.jpg";s:5:"width";i:600;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:11:"banner1.jpg";}'),
(1029, 10, 'home_banner1', '143'),
(1030, 10, '_home_banner1', 'field_5defa1336e9d9'),
(1031, 10, 'home_banner2', '145'),
(1032, 10, '_home_banner2', 'field_5defa1556e9da'),
(1033, 10, 'home_banner3', '147'),
(1034, 10, '_home_banner3', 'field_5defa1606e9db'),
(1035, 10, 'home_banner4', '149'),
(1036, 10, '_home_banner4', 'field_5defa16c6e9dc'),
(1037, 10, 'home_banner5', '151'),
(1038, 10, '_home_banner5', 'field_5defa1776e9dd'),
(1039, 10, 'home_banner6', '153'),
(1040, 10, '_home_banner6', 'field_5defa1856e9de'),
(1041, 10, 'home_banner7', '155'),
(1042, 10, '_home_banner7', 'field_5defa1946e9df'),
(1043, 10, 'home_banner8', '157'),
(1044, 10, '_home_banner8', 'field_5defa19f6e9e0'),
(1045, 10, 'home_banner9', '158'),
(1046, 10, '_home_banner9', 'field_5defa1ab6e9e1'),
(1047, 144, 'home_banner1', '143'),
(1048, 144, '_home_banner1', 'field_5defa1336e9d9'),
(1049, 144, 'home_banner2', ''),
(1050, 144, '_home_banner2', 'field_5defa1556e9da'),
(1051, 144, 'home_banner3', ''),
(1052, 144, '_home_banner3', 'field_5defa1606e9db'),
(1053, 144, 'home_banner4', ''),
(1054, 144, '_home_banner4', 'field_5defa16c6e9dc'),
(1055, 144, 'home_banner5', ''),
(1056, 144, '_home_banner5', 'field_5defa1776e9dd'),
(1057, 144, 'home_banner6', ''),
(1058, 144, '_home_banner6', 'field_5defa1856e9de'),
(1059, 144, 'home_banner7', ''),
(1060, 144, '_home_banner7', 'field_5defa1946e9df'),
(1061, 144, 'home_banner8', ''),
(1062, 144, '_home_banner8', 'field_5defa19f6e9e0'),
(1063, 144, 'home_banner9', ''),
(1064, 144, '_home_banner9', 'field_5defa1ab6e9e1'),
(1065, 145, '_wp_attached_file', '2019/12/banner2.jpg'),
(1066, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:800;s:4:"file";s:19:"2019/12/banner2.jpg";s:5:"sizes";a:10:{s:6:"medium";a:4:{s:4:"file";s:19:"banner2-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"banner2-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"banner2-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"banner2-600x375.jpg";s:5:"width";i:600;s:6:"height";i:375;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"banner2-600x375.jpg";s:5:"width";i:600;s:6:"height";i:375;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1067, 146, 'home_banner1', '143'),
(1068, 146, '_home_banner1', 'field_5defa1336e9d9'),
(1069, 146, 'home_banner2', '145'),
(1070, 146, '_home_banner2', 'field_5defa1556e9da'),
(1071, 146, 'home_banner3', ''),
(1072, 146, '_home_banner3', 'field_5defa1606e9db'),
(1073, 146, 'home_banner4', ''),
(1074, 146, '_home_banner4', 'field_5defa16c6e9dc'),
(1075, 146, 'home_banner5', ''),
(1076, 146, '_home_banner5', 'field_5defa1776e9dd'),
(1077, 146, 'home_banner6', ''),
(1078, 146, '_home_banner6', 'field_5defa1856e9de'),
(1079, 146, 'home_banner7', ''),
(1080, 146, '_home_banner7', 'field_5defa1946e9df'),
(1081, 146, 'home_banner8', ''),
(1082, 146, '_home_banner8', 'field_5defa19f6e9e0'),
(1083, 146, 'home_banner9', ''),
(1084, 146, '_home_banner9', 'field_5defa1ab6e9e1'),
(1085, 147, '_wp_attached_file', '2019/12/banner4.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1086, 147, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:402;s:4:"file";s:19:"2019/12/banner4.jpg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:19:"banner4-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"banner4-768x386.jpg";s:5:"width";i:768;s:6:"height";i:386;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"banner4-600x302.jpg";s:5:"width";i:600;s:6:"height";i:302;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner4-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"banner4-600x302.jpg";s:5:"width";i:600;s:6:"height";i:302;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner4-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1087, 148, 'home_banner1', '143'),
(1088, 148, '_home_banner1', 'field_5defa1336e9d9'),
(1089, 148, 'home_banner2', '145'),
(1090, 148, '_home_banner2', 'field_5defa1556e9da'),
(1091, 148, 'home_banner3', '147'),
(1092, 148, '_home_banner3', 'field_5defa1606e9db'),
(1093, 148, 'home_banner4', ''),
(1094, 148, '_home_banner4', 'field_5defa16c6e9dc'),
(1095, 148, 'home_banner5', ''),
(1096, 148, '_home_banner5', 'field_5defa1776e9dd'),
(1097, 148, 'home_banner6', ''),
(1098, 148, '_home_banner6', 'field_5defa1856e9de'),
(1099, 148, 'home_banner7', ''),
(1100, 148, '_home_banner7', 'field_5defa1946e9df'),
(1101, 148, 'home_banner8', ''),
(1102, 148, '_home_banner8', 'field_5defa19f6e9e0'),
(1103, 148, 'home_banner9', ''),
(1104, 148, '_home_banner9', 'field_5defa1ab6e9e1'),
(1105, 149, '_wp_attached_file', '2019/12/banner3.jpg'),
(1106, 149, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:177;s:4:"file";s:19:"2019/12/banner3.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:18:"banner3-300x89.jpg";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner3-300x177.jpg";s:5:"width";i:300;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner3-300x177.jpg";s:5:"width";i:300;s:6:"height";i:177;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1107, 150, 'home_banner1', '143'),
(1108, 150, '_home_banner1', 'field_5defa1336e9d9'),
(1109, 150, 'home_banner2', '145'),
(1110, 150, '_home_banner2', 'field_5defa1556e9da'),
(1111, 150, 'home_banner3', '147'),
(1112, 150, '_home_banner3', 'field_5defa1606e9db'),
(1113, 150, 'home_banner4', '149'),
(1114, 150, '_home_banner4', 'field_5defa16c6e9dc'),
(1115, 150, 'home_banner5', ''),
(1116, 150, '_home_banner5', 'field_5defa1776e9dd'),
(1117, 150, 'home_banner6', ''),
(1118, 150, '_home_banner6', 'field_5defa1856e9de'),
(1119, 150, 'home_banner7', ''),
(1120, 150, '_home_banner7', 'field_5defa1946e9df'),
(1121, 150, 'home_banner8', ''),
(1122, 150, '_home_banner8', 'field_5defa19f6e9e0'),
(1123, 150, 'home_banner9', ''),
(1124, 150, '_home_banner9', 'field_5defa1ab6e9e1'),
(1125, 151, '_wp_attached_file', '2019/12/banner5.jpg'),
(1126, 151, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:350;s:4:"file";s:19:"2019/12/banner5.jpg";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:19:"banner5-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"banner5-600x328.jpg";s:5:"width";i:600;s:6:"height";i:328;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner5-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"banner5-600x328.jpg";s:5:"width";i:600;s:6:"height";i:328;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner5-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1127, 152, 'home_banner1', '143'),
(1128, 152, '_home_banner1', 'field_5defa1336e9d9'),
(1129, 152, 'home_banner2', '145'),
(1130, 152, '_home_banner2', 'field_5defa1556e9da'),
(1131, 152, 'home_banner3', '147'),
(1132, 152, '_home_banner3', 'field_5defa1606e9db'),
(1133, 152, 'home_banner4', '149'),
(1134, 152, '_home_banner4', 'field_5defa16c6e9dc'),
(1135, 152, 'home_banner5', '151'),
(1136, 152, '_home_banner5', 'field_5defa1776e9dd'),
(1137, 152, 'home_banner6', ''),
(1138, 152, '_home_banner6', 'field_5defa1856e9de'),
(1139, 152, 'home_banner7', ''),
(1140, 152, '_home_banner7', 'field_5defa1946e9df'),
(1141, 152, 'home_banner8', ''),
(1142, 152, '_home_banner8', 'field_5defa19f6e9e0'),
(1143, 152, 'home_banner9', ''),
(1144, 152, '_home_banner9', 'field_5defa1ab6e9e1'),
(1145, 153, '_wp_attached_file', '2019/12/banner8.jpg'),
(1146, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:333;s:4:"file";s:19:"2019/12/banner8.jpg";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:19:"banner8-300x161.jpg";s:5:"width";i:300;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner8-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"banner8-600x322.jpg";s:5:"width";i:600;s:6:"height";i:322;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner8-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner8-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"banner8-600x322.jpg";s:5:"width";i:600;s:6:"height";i:322;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner8-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1147, 154, 'home_banner1', '143'),
(1148, 154, '_home_banner1', 'field_5defa1336e9d9'),
(1149, 154, 'home_banner2', '145'),
(1150, 154, '_home_banner2', 'field_5defa1556e9da'),
(1151, 154, 'home_banner3', '147'),
(1152, 154, '_home_banner3', 'field_5defa1606e9db'),
(1153, 154, 'home_banner4', '149'),
(1154, 154, '_home_banner4', 'field_5defa16c6e9dc'),
(1155, 154, 'home_banner5', '151'),
(1156, 154, '_home_banner5', 'field_5defa1776e9dd'),
(1157, 154, 'home_banner6', '153'),
(1158, 154, '_home_banner6', 'field_5defa1856e9de'),
(1159, 154, 'home_banner7', ''),
(1160, 154, '_home_banner7', 'field_5defa1946e9df'),
(1161, 154, 'home_banner8', ''),
(1162, 154, '_home_banner8', 'field_5defa19f6e9e0'),
(1163, 154, 'home_banner9', ''),
(1164, 154, '_home_banner9', 'field_5defa1ab6e9e1'),
(1165, 155, '_wp_attached_file', '2019/12/banner7.jpg'),
(1166, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:638;s:6:"height";i:906;s:4:"file";s:19:"2019/12/banner7.jpg";s:5:"sizes";a:8:{s:6:"medium";a:4:{s:4:"file";s:19:"banner7-211x300.jpg";s:5:"width";i:211;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner7-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"banner7-600x852.jpg";s:5:"width";i:600;s:6:"height";i:852;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner7-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner7-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"banner7-600x852.jpg";s:5:"width";i:600;s:6:"height";i:852;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner7-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1167, 156, 'home_banner1', '143'),
(1168, 156, '_home_banner1', 'field_5defa1336e9d9'),
(1169, 156, 'home_banner2', '145'),
(1170, 156, '_home_banner2', 'field_5defa1556e9da'),
(1171, 156, 'home_banner3', '147'),
(1172, 156, '_home_banner3', 'field_5defa1606e9db'),
(1173, 156, 'home_banner4', '149'),
(1174, 156, '_home_banner4', 'field_5defa16c6e9dc'),
(1175, 156, 'home_banner5', '151'),
(1176, 156, '_home_banner5', 'field_5defa1776e9dd'),
(1177, 156, 'home_banner6', '153'),
(1178, 156, '_home_banner6', 'field_5defa1856e9de'),
(1179, 156, 'home_banner7', '155'),
(1180, 156, '_home_banner7', 'field_5defa1946e9df'),
(1181, 156, 'home_banner8', ''),
(1182, 156, '_home_banner8', 'field_5defa19f6e9e0'),
(1183, 156, 'home_banner9', ''),
(1184, 156, '_home_banner9', 'field_5defa1ab6e9e1'),
(1185, 157, '_wp_attached_file', '2019/12/banner6.jpg'),
(1186, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:942;s:6:"height";i:855;s:4:"file";s:19:"2019/12/banner6.jpg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:19:"banner6-300x272.jpg";s:5:"width";i:300;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"banner6-768x697.jpg";s:5:"width";i:768;s:6:"height";i:697;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"banner6-600x545.jpg";s:5:"width";i:600;s:6:"height";i:545;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner6-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"banner6-600x545.jpg";s:5:"width";i:600;s:6:"height";i:545;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner6-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1187, 158, '_wp_attached_file', '2019/12/banner9.jpg'),
(1188, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1007;s:6:"height";i:552;s:4:"file";s:19:"2019/12/banner9.jpg";s:5:"sizes";a:9:{s:6:"medium";a:4:{s:4:"file";s:19:"banner9-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner9-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"banner9-768x421.jpg";s:5:"width";i:768;s:6:"height";i:421;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"banner9-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"banner9-600x329.jpg";s:5:"width";i:600;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"banner9-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"banner9-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"banner9-600x329.jpg";s:5:"width";i:600;s:6:"height";i:329;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"banner9-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1189, 159, 'home_banner1', '143'),
(1190, 159, '_home_banner1', 'field_5defa1336e9d9'),
(1191, 159, 'home_banner2', '145'),
(1192, 159, '_home_banner2', 'field_5defa1556e9da'),
(1193, 159, 'home_banner3', '147'),
(1194, 159, '_home_banner3', 'field_5defa1606e9db'),
(1195, 159, 'home_banner4', '149'),
(1196, 159, '_home_banner4', 'field_5defa16c6e9dc'),
(1197, 159, 'home_banner5', '151'),
(1198, 159, '_home_banner5', 'field_5defa1776e9dd'),
(1199, 159, 'home_banner6', '153'),
(1200, 159, '_home_banner6', 'field_5defa1856e9de'),
(1201, 159, 'home_banner7', '155'),
(1202, 159, '_home_banner7', 'field_5defa1946e9df'),
(1203, 159, 'home_banner8', '157'),
(1204, 159, '_home_banner8', 'field_5defa19f6e9e0'),
(1205, 159, 'home_banner9', '158'),
(1206, 159, '_home_banner9', 'field_5defa1ab6e9e1'),
(1207, 161, '_wp_attached_file', '2019/12/banner10.jpg'),
(1208, 161, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:720;s:4:"file";s:20:"2019/12/banner10.jpg";s:5:"sizes";a:10:{s:6:"medium";a:4:{s:4:"file";s:20:"banner10-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"banner10-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"banner10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"banner10-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"banner10-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"banner10-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"banner10-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"banner10-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"banner10-600x338.jpg";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"banner10-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1209, 10, 'home_banner10', '161'),
(1210, 10, '_home_banner10', 'field_5defa7c077a34'),
(1211, 162, 'home_banner1', '143'),
(1212, 162, '_home_banner1', 'field_5defa1336e9d9'),
(1213, 162, 'home_banner2', '145'),
(1214, 162, '_home_banner2', 'field_5defa1556e9da'),
(1215, 162, 'home_banner3', '147'),
(1216, 162, '_home_banner3', 'field_5defa1606e9db'),
(1217, 162, 'home_banner4', '149'),
(1218, 162, '_home_banner4', 'field_5defa16c6e9dc'),
(1219, 162, 'home_banner5', '151'),
(1220, 162, '_home_banner5', 'field_5defa1776e9dd'),
(1221, 162, 'home_banner6', '153'),
(1222, 162, '_home_banner6', 'field_5defa1856e9de'),
(1223, 162, 'home_banner7', '155'),
(1224, 162, '_home_banner7', 'field_5defa1946e9df'),
(1225, 162, 'home_banner8', '157'),
(1226, 162, '_home_banner8', 'field_5defa19f6e9e0'),
(1227, 162, 'home_banner9', '158'),
(1228, 162, '_home_banner9', 'field_5defa1ab6e9e1'),
(1229, 162, 'home_banner10', '161'),
(1230, 162, '_home_banner10', 'field_5defa7c077a34'),
(1231, 164, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(1232, 164, '_mail', 'a:8:{s:7:"subject";s:27:"Victorynox "[your-subject]"";s:6:"sender";s:32:"Victorynox <sinevor13@gmail.com>";s:4:"body";s:176:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Victorynox (http://localhost/wordpress3)";s:9:"recipient";s:19:"sinevor13@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(1233, 164, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:27:"Victorynox "[your-subject]"";s:6:"sender";s:32:"Victorynox <sinevor13@gmail.com>";s:4:"body";s:118:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Victorynox (http://localhost/wordpress3)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: sinevor13@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(1234, 164, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(1235, 164, '_additional_settings', NULL),
(1236, 164, '_locale', 'en_US'),
(1237, 165, '_form', '<div class="row no-gutters">\n  <div class="col-lg-6 col-sm-12 p-3">\n    [text* first-name class:form-control placeholder"First Name"]\n  </div>\n  <div class="col-lg-6 col-sm-12 p-3">\n    [text* last-name class:form-control placeholder"Last Name"]\n  </div>\n  <div class="col-lg-6 col-sm-12 p-3 ">\n   [email* your-email class:form-control placeholder"Your Email"]\n  </div>\n  <div class="col-lg-6 col-sm-12 p-3">\n   [text* phone number class:form-control placeholder"Your telephone 123-456-7890"]\n  </div>\n  <div class="col-lg-6 col-sm-12 p-3">\n   [text* Address class:form-control placeholder "Address  - street Pobeda12"]\n  </div>\n  <div class="col-lg-6 col-sm-12 p-3">\n   [text* Postcode / ZIP * class:form-control placeholder" Postcode / ZIP 69999"]\n  </div>\n  <div class="col-lg-6 col-sm-12 p-3">\n   [text your-subject class:form-control placeholder"Subject"]\n  </div>\n</div>\n[submit  class:main-button "Send Message"]'),
(1238, 165, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:27:"Victorynox "[your-subject]"";s:6:"sender";s:32:"Victorynox <sinevor13@gmail.com>";s:9:"recipient";s:19:"sinevor13@gmail.com";s:4:"body";s:176:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Victorynox (http://localhost/wordpress3)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1239, 165, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:27:"Victorynox "[your-subject]"";s:6:"sender";s:32:"Victorynox <sinevor13@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:118:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Victorynox (http://localhost/wordpress3)";s:18:"additional_headers";s:29:"Reply-To: sinevor13@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1240, 165, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(1241, 165, '_additional_settings', ''),
(1242, 165, '_locale', 'en_US'),
(1243, 167, '_wp_attached_file', '2019/12/AJbANua3_400x400.jpg'),
(1244, 167, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:28:"2019/12/AJbANua3_400x400.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"AJbANua3_400x400-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:28:"AJbANua3_400x400-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:28:"AJbANua3_400x400-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1245, 168, '_wp_attached_file', '2019/12/cropped-AJbANua3_400x400.jpg'),
(1246, 168, '_wp_attachment_context', 'custom-logo'),
(1247, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:256;s:6:"height";i:256;s:4:"file";s:36:"2019/12/cropped-AJbANua3_400x400.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"cropped-AJbANua3_400x400-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:36:"cropped-AJbANua3_400x400-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"cropped-AJbANua3_400x400-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1248, 169, '_wp_trash_meta_status', 'publish'),
(1249, 169, '_wp_trash_meta_time', '1576272958'),
(1250, 170, '_wp_attached_file', '2019/12/Victorinox-Logo.png'),
(1251, 170, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:161;s:6:"height";i:203;s:4:"file";s:27:"2019/12/Victorinox-Logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"Victorinox-Logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"Victorinox-Logo-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"Victorinox-Logo-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1252, 171, '_wp_attached_file', '2019/12/cropped-Victorinox-Logo.png'),
(1253, 171, '_wp_attachment_context', 'custom-logo'),
(1254, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:161;s:6:"height";i:167;s:4:"file";s:35:"2019/12/cropped-Victorinox-Logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"cropped-Victorinox-Logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"cropped-Victorinox-Logo-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"cropped-Victorinox-Logo-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1255, 172, '_wp_trash_meta_status', 'publish'),
(1256, 172, '_wp_trash_meta_time', '1576273053'),
(1257, 174, '_menu_item_type', 'post_type'),
(1258, 174, '_menu_item_menu_item_parent', '0'),
(1259, 174, '_menu_item_object_id', '6'),
(1260, 174, '_menu_item_object', 'page'),
(1261, 174, '_menu_item_target', ''),
(1262, 174, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1263, 174, '_menu_item_xfn', ''),
(1264, 174, '_menu_item_url', ''),
(1266, 175, '_menu_item_type', 'post_type'),
(1267, 175, '_menu_item_menu_item_parent', '0'),
(1268, 175, '_menu_item_object_id', '6'),
(1269, 175, '_menu_item_object', 'page'),
(1270, 175, '_menu_item_target', ''),
(1271, 175, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1272, 175, '_menu_item_xfn', ''),
(1273, 175, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-06 11:27:47', '2019-12-06 11:27:47', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-12-06 11:27:47', '2019-12-06 11:27:47', '', 0, 'http://localhost/wordpress3/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-06 11:27:47', '2019-12-06 11:27:47', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/wordpress3/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-12-06 11:27:47', '2019-12-06 11:27:47', '', 0, 'http://localhost/wordpress3/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-06 11:27:47', '2019-12-06 11:27:47', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress3.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-12-06 11:27:47', '2019-12-06 11:27:47', '', 0, 'http://localhost/wordpress3/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-12-06 19:18:37', '2019-12-06 19:18:37', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-12-06 19:18:37', '2019-12-06 19:18:37', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2019/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2019-12-06 19:19:03', '2019-12-06 19:19:03', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-12-06 19:19:03', '2019-12-06 19:19:03', '', 0, 'http://localhost/wordpress3/index.php/shop/', 0, 'page', '', 0),
(7, 1, '2019-12-06 19:19:03', '2019-12-06 19:19:03', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-12-06 19:19:03', '2019-12-06 19:19:03', '', 0, 'http://localhost/wordpress3/index.php/cart/', 0, 'page', '', 0),
(8, 1, '2019-12-06 19:19:03', '2019-12-06 19:19:03', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-12-06 19:19:03', '2019-12-06 19:19:03', '', 0, 'http://localhost/wordpress3/index.php/checkout/', 0, 'page', '', 0),
(9, 1, '2019-12-06 19:19:03', '2019-12-06 19:19:03', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-12-06 19:19:03', '2019-12-06 19:19:03', '', 0, 'http://localhost/wordpress3/index.php/my-account/', 0, 'page', '', 0),
(10, 1, '2019-12-06 20:30:13', '2019-12-06 20:30:13', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-12-10 14:13:47', '2019-12-10 14:13:47', '', 0, 'http://localhost/wordpress3/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-12-06 20:30:13', '2019-12-06 20:30:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-06 20:30:13', '2019-12-06 20:30:13', '', 10, 'http://localhost/wordpress3/index.php/2019/12/06/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-12-06 20:30:30', '2019-12-06 20:30:30', '', 'Contact', '', 'trash', 'closed', 'closed', '', 'contact__trashed', '', '', '2019-12-06 20:45:13', '2019-12-06 20:45:13', '', 2, 'http://localhost/wordpress3/?page_id=12', 0, 'page', '', 0),
(13, 1, '2019-12-06 20:30:30', '2019-12-06 20:30:30', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-12-06 20:30:30', '2019-12-06 20:30:30', '', 12, 'http://localhost/wordpress3/index.php/2019/12/06/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-12-06 20:45:50', '2019-12-06 20:45:50', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-06 20:45:51', '2019-12-06 20:45:51', '', 0, 'http://localhost/wordpress3/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-12-06 20:45:50', '2019-12-06 20:45:50', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-12-06 20:45:50', '2019-12-06 20:45:50', '', 15, 'http://localhost/wordpress3/index.php/2019/12/06/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-12-06 20:55:01', '2019-12-06 20:55:01', '[brands_page]', 'Brands', '', 'publish', 'closed', 'closed', '', 'brands', '', '', '2019-12-06 20:55:01', '2019-12-06 20:55:01', '', 0, 'http://localhost/wordpress3/index.php/brands/', 0, 'page', '', 0),
(19, 0, '2019-12-08 13:20:12', '2019-12-08 13:20:12', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5decf8cc709cd1.71134777-utZDCD84dgJVPuyE45BkAVR8UWQ1P6PM', '', '', '2019-12-08 13:21:16', '2019-12-08 13:21:16', '', 0, 'http://localhost/wordpress3/?post_type=scheduled-action&#038;p=19', 0, 'scheduled-action', '', 3),
(21, 1, '2019-12-08 13:23:57', '2019-12-08 13:23:57', '<div id="product-page-body"><form action="https://www.blades.co.uk/cgi-bin/ca000001.pl" method="post">\r\n<div class="bab-az-prodcontent">\r\n<div class="product-tabs">\r\n<div class="product-tab product-description clearme active">\r\n<div class="product-text">The Old Hickory knife is made with fully heat treated and tempered 1095 carbon steel. Fitted with attractive hardwood handles secured with brass compression rivets. After assembly, these knives go through a sharpening process to guarantee a sharp edge to meet all needs. Old Hickory has stood the test of time and proved to be the best carbon steel kitchen cutlery sold today.</div>\r\n</div>\r\n</div>\r\n<div id="idVarsOK-7025"></div>\r\n</div>\r\n</form></div>', 'OKC 7  Knife Butcher', '<div id="product-page-body"><form action="https://www.blades.co.uk/cgi-bin/ca000001.pl" method="post">\r\n<div class="bab-az-prodcontent">\r\n<div class="product-tabs">\r\n<div class="product-tab product-description clearme active">\r\n<div class="product-text">The Old Hickory knife is made with fully heat treated and tempered 1095 carbon steel. Fitted with attractive hardwood handles secured with brass compression rivets. After assembly, these knives go through a sharpening process to guarantee a sharp edge to meet all needs. Old Hickory has stood the test of time and proved to be the best carbon steel kitchen cutlery sold today.</div>\r\n</div>\r\n</div>\r\n<div id="idVarsOK-7025"></div>\r\n</div>\r\n</form></div>', 'publish', 'open', 'closed', '', 'okc-7-7-butcher-knife', '', '', '2019-12-10 14:33:17', '2019-12-10 14:33:17', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2019-12-08 13:22:48', '2019-12-08 13:22:48', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-12-08 13:22:48', '2019-12-08 13:22:48', '', 21, 'http://localhost/wordpress3/wp-content/uploads/2019/12/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-12-08 13:23:28', '2019-12-08 13:23:28', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-12-08 13:23:28', '2019-12-08 13:23:28', '', 21, 'http://localhost/wordpress3/wp-content/uploads/2019/12/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2019-12-08 14:12:08', '2019-12-08 14:12:08', '<h2 class="title e-h2">Elegant Pocket Knife with Walnut Scales</h2>\r\n<div class="group-richtext">\r\n\r\nThere’s a quiet confidence that comes with knowing you’re fully prepared for whatever life might bring. This means having the right tools and equipment, and knowing they won’t let you down. The Classic SD Wood offers optimal performance and classic style with a twist. Crafted from elegant, sustainable European walnut wood, each knife is unique, thanks to the rich natural patina of the wood. With 5 functions it’s perfect for lovers of understated yet considered design who also demand great functionality.\r\n\r\n</div>', 'Classic SD Wood', '<h2 class="title e-h2">Elegant Pocket Knife with Walnut Scales</h2>', 'publish', 'open', 'closed', '', 'classic-sd-wood', '', '', '2019-12-08 14:12:08', '2019-12-08 14:12:08', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=24', 0, 'product', '', 0),
(25, 1, '2019-12-08 14:18:33', '2019-12-08 14:18:33', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'Small Pocket Knife', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'publish', 'open', 'closed', '', 'small-pocket-knife-with-scissors-and-screwdriver-8', '', '', '2019-12-10 14:30:15', '2019-12-10 14:30:15', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=25', 0, 'product', '', 0),
(26, 1, '2019-12-08 14:18:16', '2019-12-08 14:18:16', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'Small Pocket Knife', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'publish', 'open', 'closed', '', 'small-pocket-knife-with-scissors-and-screwdriver-7', '', '', '2019-12-10 14:30:23', '2019-12-10 14:30:23', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=26', 0, 'product', '', 0),
(27, 1, '2019-12-08 14:17:33', '2019-12-08 14:17:33', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'Small Pocket Knife', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'publish', 'open', 'closed', '', 'small-pocket-knife-with-scissors-and-screwdriver-6', '', '', '2019-12-10 14:30:31', '2019-12-10 14:30:31', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=27', 0, 'product', '', 0),
(28, 1, '2019-12-08 14:16:50', '2019-12-08 14:16:50', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'Small Pocket Knife', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'publish', 'open', 'closed', '', 'small-pocket-knife-with-scissors-and-screwdriver-5', '', '', '2019-12-10 14:30:39', '2019-12-10 14:30:39', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2019-12-08 14:16:12', '2019-12-08 14:16:12', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'Small Pocket Knife', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'publish', 'open', 'closed', '', 'small-pocket-knife-with-scissors-and-screwdriver-4', '', '', '2019-12-10 14:30:48', '2019-12-10 14:30:48', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2019-12-08 14:15:43', '2019-12-08 14:15:43', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'Small Pocket Knife', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'publish', 'open', 'closed', '', 'small-pocket-knife-with-scissors-and-screwdriver-3', '', '', '2019-12-10 14:30:54', '2019-12-10 14:30:54', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=30', 0, 'product', '', 0),
(31, 1, '2019-12-08 14:15:03', '2019-12-08 14:15:03', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'Small Pocket Knife', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'publish', 'open', 'closed', '', 'small-pocket-knife-with-scissors-and-screwdriver-2', '', '', '2019-12-10 14:31:04', '2019-12-10 14:31:04', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=31', 0, 'product', '', 0),
(32, 1, '2019-12-08 14:14:29', '2019-12-08 14:14:29', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'Small Pocket Knife', 'It all started with the Swiss Officer’s Knife – and more than a century later, the Swiss Army Knife is still an icon of sleek functionality. Each one is built to last a lifetime and in the Classic you\'ll find all the functionality you need for your everyday adventures – in a package you\'ll want to keep with you always. It\'s the easiest lifetime commitment you\'ll ever make.', 'publish', 'open', 'closed', '', 'small-pocket-knife-with-scissors-and-screwdriver', '', '', '2019-12-10 14:31:11', '2019-12-10 14:31:11', '', 0, 'http://localhost/wordpress3/?post_type=product&#038;p=32', 0, 'product', '', 0),
(33, 1, '2019-12-08 14:12:02', '2019-12-08 14:12:02', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2019-12-08 14:12:02', '2019-12-08 14:12:02', '', 24, 'http://localhost/wordpress3/wp-content/uploads/2019/12/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-12-08 14:12:52', '2019-12-08 14:12:52', '', 'SAK_1_6791_63__S1', '', 'inherit', 'open', 'closed', '', 'sak_1_6791_63__s1', '', '', '2019-12-08 14:12:52', '2019-12-08 14:12:52', '', 25, 'http://localhost/wordpress3/wp-content/uploads/2019/12/SAK_1_6791_63__S1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-12-08 14:14:15', '2019-12-08 14:14:15', '', 'SAK_2_5393_SE__S1', '', 'inherit', 'open', 'closed', '', 'sak_2_5393_se__s1', '', '', '2019-12-08 14:14:15', '2019-12-08 14:14:15', '', 32, 'http://localhost/wordpress3/wp-content/uploads/2019/12/SAK_2_5393_SE__S1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-12-08 14:14:43', '2019-12-08 14:14:43', '', 'SAK_2_5223_SE__S1', '', 'inherit', 'open', 'closed', '', 'sak_2_5223_se__s1', '', '', '2019-12-08 14:14:43', '2019-12-08 14:14:43', '', 31, 'http://localhost/wordpress3/wp-content/uploads/2019/12/SAK_2_5223_SE__S1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-12-08 14:15:25', '2019-12-08 14:15:25', '', 'SAK_2_3913_SKE__S1', '', 'inherit', 'open', 'closed', '', 'sak_2_3913_ske__s1', '', '', '2019-12-08 14:15:25', '2019-12-08 14:15:25', '', 30, 'http://localhost/wordpress3/wp-content/uploads/2019/12/SAK_2_3913_SKE__S1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-12-08 14:15:53', '2019-12-08 14:15:53', '', 'SAK_2_3913_SE__S1', '', 'inherit', 'open', 'closed', '', 'sak_2_3913_se__s1', '', '', '2019-12-08 14:15:53', '2019-12-08 14:15:53', '', 29, 'http://localhost/wordpress3/wp-content/uploads/2019/12/SAK_2_3913_SE__S1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-12-08 14:16:41', '2019-12-08 14:16:41', '', 'SAK_2_3803_C__S1', '', 'inherit', 'open', 'closed', '', 'sak_2_3803_c__s1', '', '', '2019-12-08 14:16:41', '2019-12-08 14:16:41', '', 28, 'http://localhost/wordpress3/wp-content/uploads/2019/12/SAK_2_3803_C__S1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-12-08 14:17:10', '2019-12-08 14:17:10', '', 'SAK_1_7775_T__S1', '', 'inherit', 'open', 'closed', '', 'sak_1_7775_t__s1', '', '', '2019-12-08 14:17:10', '2019-12-08 14:17:10', '', 27, 'http://localhost/wordpress3/wp-content/uploads/2019/12/SAK_1_7775_T__S1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-12-08 14:17:58', '2019-12-08 14:17:58', '', 'SAK_1_6795_XLT__S2', '', 'inherit', 'open', 'closed', '', 'sak_1_6795_xlt__s2', '', '', '2019-12-08 14:17:58', '2019-12-08 14:17:58', '', 26, 'http://localhost/wordpress3/wp-content/uploads/2019/12/SAK_1_6795_XLT__S2.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-12-09 13:35:36', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:35:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=61', 1, 'nav_menu_item', '', 0),
(67, 1, '2019-12-09 13:36:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:36:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=67', 1, 'nav_menu_item', '', 0),
(68, 1, '2019-12-09 13:36:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:36:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=68', 1, 'nav_menu_item', '', 0),
(69, 1, '2019-12-09 13:36:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:36:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2019-12-09 13:36:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:36:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=70', 1, 'nav_menu_item', '', 0),
(71, 1, '2019-12-09 13:36:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:36:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2019-12-09 13:36:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:36:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=72', 1, 'nav_menu_item', '', 0),
(81, 1, '2019-12-09 13:37:15', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:37:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=81', 1, 'nav_menu_item', '', 0),
(86, 1, '2019-12-09 13:37:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-09 13:37:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=86', 1, 'nav_menu_item', '', 0),
(89, 1, '2019-12-10 10:45:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-10 10:45:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=89', 1, 'nav_menu_item', '', 0),
(95, 1, '2019-12-10 12:52:46', '2019-12-10 12:52:46', '', 'Gurkha', '', 'publish', 'closed', 'closed', '', 'gurkha', '', '', '2019-12-21 17:29:33', '2019-12-21 17:29:33', '', 0, 'http://localhost/wordpress3/?p=95', 2, 'nav_menu_item', '', 0),
(96, 1, '2019-12-10 12:52:46', '2019-12-10 12:52:46', '', 'Small Knives', '', 'publish', 'closed', 'closed', '', 'small-knives', '', '', '2019-12-21 17:29:33', '2019-12-21 17:29:33', '', 0, 'http://localhost/wordpress3/?p=96', 3, 'nav_menu_item', '', 0),
(97, 1, '2019-12-10 12:52:46', '2019-12-10 12:52:46', '', 'Large Knives', '', 'publish', 'closed', 'closed', '', 'large-knives', '', '', '2019-12-21 17:29:33', '2019-12-21 17:29:33', '', 0, 'http://localhost/wordpress3/?p=97', 4, 'nav_menu_item', '', 0),
(98, 1, '2019-12-10 12:52:46', '2019-12-10 12:52:46', '', 'Bowie', '', 'publish', 'closed', 'closed', '', '98', '', '', '2019-12-21 17:29:33', '2019-12-21 17:29:33', '', 0, 'http://localhost/wordpress3/?p=98', 5, 'nav_menu_item', '', 0),
(99, 1, '2019-12-10 12:52:46', '2019-12-10 12:52:46', '', 'Mid-Size', '', 'publish', 'closed', 'closed', '', 'mid-size-knives', '', '', '2019-12-21 17:29:33', '2019-12-21 17:29:33', '', 0, 'http://localhost/wordpress3/?p=99', 6, 'nav_menu_item', '', 0),
(100, 1, '2019-12-10 12:52:47', '2019-12-10 12:52:47', '', 'Bushcraft', '', 'publish', 'closed', 'closed', '', 'bushcraft-knives', '', '', '2019-12-21 17:29:33', '2019-12-21 17:29:33', '', 0, 'http://localhost/wordpress3/?p=100', 7, 'nav_menu_item', '', 0),
(101, 1, '2019-12-10 12:53:47', '2019-12-10 12:53:47', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2019-12-10 12:54:15', '2019-12-10 12:54:15', '', 0, 'http://localhost/wordpress3/?p=101', 1, 'nav_menu_item', '', 0),
(102, 1, '2019-12-10 12:53:47', '2019-12-10 12:53:47', '', 'Ultimate edition', '', 'publish', 'closed', 'closed', '', '102', '', '', '2019-12-10 12:54:15', '2019-12-10 12:54:15', '', 0, 'http://localhost/wordpress3/?p=102', 2, 'nav_menu_item', '', 0),
(103, 1, '2019-12-10 12:53:47', '2019-12-10 12:53:47', '', 'Mobility', '', 'publish', 'closed', 'closed', '', '103', '', '', '2019-12-10 12:54:15', '2019-12-10 12:54:15', '', 0, 'http://localhost/wordpress3/?p=103', 3, 'nav_menu_item', '', 0),
(104, 1, '2019-12-10 12:54:57', '2019-12-10 12:54:57', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2019-12-10 13:13:12', '2019-12-10 13:13:12', '', 0, 'http://localhost/wordpress3/?p=104', 1, 'nav_menu_item', '', 0),
(106, 1, '2019-12-10 12:54:57', '2019-12-10 12:54:57', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2019-12-10 13:13:12', '2019-12-10 13:13:12', '', 0, 'http://localhost/wordpress3/?p=106', 3, 'nav_menu_item', '', 0),
(107, 1, '2019-12-10 13:03:56', '2019-12-10 13:03:56', '', 'Victorynox', '', 'inherit', 'open', 'closed', '', 'victorynox', '', '', '2019-12-10 13:03:56', '2019-12-10 13:03:56', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2019/12/Victorynox.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-12-10 13:04:47', '2019-12-10 13:04:47', '', 'Victorynox', '', 'inherit', 'open', 'closed', '', 'victorynox-2', '', '', '2019-12-10 13:04:47', '2019-12-10 13:04:47', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2019/12/Victorynox-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-12-10 13:04:54', '2019-12-10 13:04:54', 'http://localhost/wordpress3/wp-content/uploads/2019/12/cropped-Victorynox-1.jpg', 'cropped-Victorynox-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-victorynox-1-jpg', '', '', '2019-12-10 13:04:54', '2019-12-10 13:04:54', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2019/12/cropped-Victorynox-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2019-12-10 13:05:00', '2019-12-10 13:05:00', '{\n    "victorynox::custom_logo": {\n        "value": 109,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-12-10 13:05:00"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '341ab91b-8cde-4386-b0c9-4df82447a6d1', '', '', '2019-12-10 13:05:00', '2019-12-10 13:05:00', '', 0, 'http://localhost/wordpress3/index.php/2019/12/10/341ab91b-8cde-4386-b0c9-4df82447a6d1/', 0, 'customize_changeset', '', 0),
(111, 1, '2019-12-10 13:12:08', '2019-12-10 13:12:08', '', 'Welcome to  Shop', '', 'publish', 'closed', 'closed', '', '111', '', '', '2019-12-10 13:13:12', '2019-12-10 13:13:12', '', 0, 'http://localhost/wordpress3/?p=111', 2, 'nav_menu_item', '', 0),
(112, 1, '2019-12-10 13:15:00', '2019-12-10 13:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2019-12-10 13:15:00', '2019-12-10 13:15:00', '', 0, 'http://localhost/wordpress3/?p=112', 1, 'nav_menu_item', '', 0),
(113, 1, '2019-12-10 13:14:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-10 13:14:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=113', 1, 'nav_menu_item', '', 0),
(114, 1, '2019-12-10 13:15:00', '2019-12-10 13:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2019-12-10 13:15:00', '2019-12-10 13:15:00', '', 0, 'http://localhost/wordpress3/?p=114', 3, 'nav_menu_item', '', 0),
(115, 1, '2019-12-10 13:15:00', '2019-12-10 13:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2019-12-10 13:15:00', '2019-12-10 13:15:00', '', 0, 'http://localhost/wordpress3/?p=115', 4, 'nav_menu_item', '', 0),
(116, 1, '2019-12-10 13:15:00', '2019-12-10 13:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2019-12-10 13:15:00', '2019-12-10 13:15:00', '', 0, 'http://localhost/wordpress3/?p=116', 6, 'nav_menu_item', '', 0),
(117, 1, '2019-12-10 13:15:00', '2019-12-10 13:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2019-12-10 13:15:00', '2019-12-10 13:15:00', '', 0, 'http://localhost/wordpress3/?p=117', 5, 'nav_menu_item', '', 0),
(118, 1, '2019-12-10 13:14:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-10 13:14:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress3/?p=118', 1, 'nav_menu_item', '', 0),
(119, 1, '2019-12-10 13:15:00', '2019-12-10 13:15:00', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2019-12-10 13:15:00', '2019-12-10 13:15:00', '', 0, 'http://localhost/wordpress3/?p=119', 2, 'nav_menu_item', '', 0),
(120, 1, '2019-12-10 13:16:02', '2019-12-10 13:16:02', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 0, 'http://localhost/wordpress3/?p=120', 1, 'nav_menu_item', '', 0),
(121, 1, '2019-12-10 13:16:02', '2019-12-10 13:16:02', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 0, 'http://localhost/wordpress3/?p=121', 2, 'nav_menu_item', '', 0),
(122, 1, '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 'Metallic', '', 'publish', 'closed', 'closed', '', 'metallic', '', '', '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 0, 'http://localhost/wordpress3/?p=122', 3, 'nav_menu_item', '', 0),
(123, 1, '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 'Ultimate edition', '', 'publish', 'closed', 'closed', '', 'ultimate-edition', '', '', '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 0, 'http://localhost/wordpress3/?p=123', 4, 'nav_menu_item', '', 0),
(124, 1, '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 'Mobility', '', 'publish', 'closed', 'closed', '', 'mobility', '', '', '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 0, 'http://localhost/wordpress3/?p=124', 5, 'nav_menu_item', '', 0),
(125, 1, '2019-12-10 13:16:02', '2019-12-10 13:16:02', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2019-12-10 13:16:02', '2019-12-10 13:16:02', '', 0, 'http://localhost/wordpress3/?p=125', 6, 'nav_menu_item', '', 0),
(126, 1, '2019-12-10 13:17:02', '2019-12-10 13:17:02', ' ', '', '', 'publish', 'closed', 'closed', '', '126', '', '', '2019-12-21 17:29:08', '2019-12-21 17:29:08', '', 0, 'http://localhost/wordpress3/?p=126', 2, 'nav_menu_item', '', 0),
(127, 1, '2019-12-10 13:17:03', '2019-12-10 13:17:03', '', 'Hunting Knives', '', 'publish', 'closed', 'closed', '', '127', '', '', '2019-12-21 17:29:09', '2019-12-21 17:29:09', '', 0, 'http://localhost/wordpress3/?p=127', 3, 'nav_menu_item', '', 0),
(128, 1, '2019-12-10 13:17:03', '2019-12-10 13:17:03', '', 'Large  Knives', '', 'publish', 'closed', 'closed', '', '128', '', '', '2019-12-21 17:29:09', '2019-12-21 17:29:09', '', 0, 'http://localhost/wordpress3/?p=128', 4, 'nav_menu_item', '', 0),
(129, 1, '2019-12-10 13:17:03', '2019-12-10 13:17:03', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2019-12-21 17:29:09', '2019-12-21 17:29:09', '', 0, 'http://localhost/wordpress3/?p=129', 5, 'nav_menu_item', '', 0),
(130, 1, '2019-12-10 13:17:03', '2019-12-10 13:17:03', '', 'Mid-Size  Knives', '', 'publish', 'closed', 'closed', '', '130', '', '', '2019-12-21 17:29:09', '2019-12-21 17:29:09', '', 0, 'http://localhost/wordpress3/?p=130', 6, 'nav_menu_item', '', 0),
(131, 1, '2019-12-10 13:17:03', '2019-12-10 13:17:03', '', 'Outdoors  Knives', '', 'publish', 'closed', 'closed', '', '131', '', '', '2019-12-21 17:29:09', '2019-12-21 17:29:09', '', 0, 'http://localhost/wordpress3/?p=131', 7, 'nav_menu_item', '', 0),
(132, 1, '2019-12-10 13:24:26', '2019-12-10 13:24:26', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"10";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5def9c726975c', '', '', '2019-12-10 14:13:07', '2019-12-10 14:13:07', '', 0, 'http://localhost/wordpress3/?post_type=acf-field-group&#038;p=132', 0, 'acf-field-group', '', 0),
(133, 1, '2019-12-10 13:28:36', '2019-12-10 13:28:36', '[newsletter]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2019-12-10 13:28:36', '2019-12-10 13:28:36', '', 0, 'http://localhost/wordpress3/index.php/newsletter/', 0, 'page', '', 0),
(134, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner1', 'home_banner1', 'publish', 'closed', 'closed', '', 'field_5defa1336e9d9', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=134', 0, 'acf-field', '', 0),
(135, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner2', 'home_banner2', 'publish', 'closed', 'closed', '', 'field_5defa1556e9da', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=135', 1, 'acf-field', '', 0),
(136, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner3', 'home_banner3', 'publish', 'closed', 'closed', '', 'field_5defa1606e9db', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=136', 2, 'acf-field', '', 0),
(137, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner4', 'home_banner4', 'publish', 'closed', 'closed', '', 'field_5defa16c6e9dc', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=137', 3, 'acf-field', '', 0),
(138, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner5', 'home_banner5', 'publish', 'closed', 'closed', '', 'field_5defa1776e9dd', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=138', 4, 'acf-field', '', 0),
(139, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner6', 'home_banner6', 'publish', 'closed', 'closed', '', 'field_5defa1856e9de', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=139', 5, 'acf-field', '', 0),
(140, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner7', 'home_banner7', 'publish', 'closed', 'closed', '', 'field_5defa1946e9df', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=140', 6, 'acf-field', '', 0),
(141, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner8', 'home_banner8', 'publish', 'closed', 'closed', '', 'field_5defa19f6e9e0', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=141', 7, 'acf-field', '', 0),
(142, 1, '2019-12-10 13:46:32', '2019-12-10 13:46:32', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner9', 'home_banner9', 'publish', 'closed', 'closed', '', 'field_5defa1ab6e9e1', '', '', '2019-12-10 13:46:32', '2019-12-10 13:46:32', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&p=142', 8, 'acf-field', '', 0),
(143, 1, '2019-12-10 14:06:42', '2019-12-10 14:06:42', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1', '', '', '2019-12-10 14:06:42', '2019-12-10 14:06:42', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2019-12-10 14:06:48', '2019-12-10 14:06:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:06:48', '2019-12-10 14:06:48', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-12-10 14:07:19', '2019-12-10 14:07:19', '', 'banner2', '', 'inherit', 'open', 'closed', '', 'banner2', '', '', '2019-12-10 14:07:19', '2019-12-10 14:07:19', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner2.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2019-12-10 14:07:23', '2019-12-10 14:07:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:07:23', '2019-12-10 14:07:23', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-12-10 14:07:52', '2019-12-10 14:07:52', '', 'banner4', '', 'inherit', 'open', 'closed', '', 'banner4', '', '', '2019-12-10 14:07:52', '2019-12-10 14:07:52', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner4.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2019-12-10 14:07:56', '2019-12-10 14:07:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:07:56', '2019-12-10 14:07:56', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2019-12-10 14:08:19', '2019-12-10 14:08:19', '', 'banner3', '', 'inherit', 'open', 'closed', '', 'banner3', '', '', '2019-12-10 14:08:19', '2019-12-10 14:08:19', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner3.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2019-12-10 14:08:24', '2019-12-10 14:08:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:08:24', '2019-12-10 14:08:24', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-12-10 14:08:44', '2019-12-10 14:08:44', '', 'banner5', '', 'inherit', 'open', 'closed', '', 'banner5', '', '', '2019-12-10 14:08:44', '2019-12-10 14:08:44', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner5.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2019-12-10 14:08:48', '2019-12-10 14:08:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:08:48', '2019-12-10 14:08:48', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-12-10 14:09:13', '2019-12-10 14:09:13', '', 'banner8', '', 'inherit', 'open', 'closed', '', 'banner8', '', '', '2019-12-10 14:09:13', '2019-12-10 14:09:13', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner8.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2019-12-10 14:09:16', '2019-12-10 14:09:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:09:16', '2019-12-10 14:09:16', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-12-10 14:11:33', '2019-12-10 14:11:33', '', 'banner7', '', 'inherit', 'open', 'closed', '', 'banner7', '', '', '2019-12-10 14:11:33', '2019-12-10 14:11:33', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner7.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2019-12-10 14:11:38', '2019-12-10 14:11:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:11:38', '2019-12-10 14:11:38', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2019-12-10 14:11:49', '2019-12-10 14:11:49', '', 'banner6', '', 'inherit', 'open', 'closed', '', 'banner6', '', '', '2019-12-10 14:11:49', '2019-12-10 14:11:49', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner6.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2019-12-10 14:12:04', '2019-12-10 14:12:04', '', 'banner9', '', 'inherit', 'open', 'closed', '', 'banner9', '', '', '2019-12-10 14:12:04', '2019-12-10 14:12:04', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner9.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2019-12-10 14:12:08', '2019-12-10 14:12:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:12:08', '2019-12-10 14:12:08', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(160, 1, '2019-12-10 14:12:25', '2019-12-10 14:12:25', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Banner10', 'home_banner10', 'publish', 'closed', 'closed', '', 'field_5defa7c077a34', '', '', '2019-12-10 14:13:07', '2019-12-10 14:13:07', '', 132, 'http://localhost/wordpress3/?post_type=acf-field&#038;p=160', 9, 'acf-field', '', 0),
(161, 1, '2019-12-10 14:13:43', '2019-12-10 14:13:43', '', 'banner10', '', 'inherit', 'open', 'closed', '', 'banner10', '', '', '2019-12-10 14:13:43', '2019-12-10 14:13:43', '', 10, 'http://localhost/wordpress3/wp-content/uploads/2019/12/banner10.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2019-12-10 14:13:47', '2019-12-10 14:13:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-10 14:13:47', '2019-12-10 14:13:47', '', 10, 'http://localhost/wordpress3/index.php/2019/12/10/10-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2019-12-12 12:20:51', '2019-12-12 12:20:51', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nVictorynox "[your-subject]"\nVictorynox <sinevor13@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Victorynox (http://localhost/wordpress3)\nsinevor13@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nVictorynox "[your-subject]"\nVictorynox <sinevor13@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Victorynox (http://localhost/wordpress3)\n[your-email]\nReply-To: sinevor13@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-12-12 12:20:51', '2019-12-12 12:20:51', '', 0, 'http://localhost/wordpress3/?post_type=wpcf7_contact_form&p=164', 0, 'wpcf7_contact_form', '', 0),
(165, 1, '2019-12-12 13:29:16', '2019-12-12 13:29:16', '<div class="row no-gutters">\r\n  <div class="col-lg-6 col-sm-12 p-3">\r\n    [text* first-name class:form-control placeholder"First Name"]\r\n  </div>\r\n  <div class="col-lg-6 col-sm-12 p-3">\r\n    [text* last-name class:form-control placeholder"Last Name"]\r\n  </div>\r\n  <div class="col-lg-6 col-sm-12 p-3 ">\r\n   [email* your-email class:form-control placeholder"Your Email"]\r\n  </div>\r\n  <div class="col-lg-6 col-sm-12 p-3">\r\n   [text* phone number class:form-control placeholder"Your telephone 123-456-7890"]\r\n  </div>\r\n  <div class="col-lg-6 col-sm-12 p-3">\r\n   [text* Address class:form-control placeholder "Address  - street Pobeda12"]\r\n  </div>\r\n  <div class="col-lg-6 col-sm-12 p-3">\r\n   [text* Postcode / ZIP * class:form-control placeholder" Postcode / ZIP 69999"]\r\n  </div>\r\n  <div class="col-lg-6 col-sm-12 p-3">\r\n   [text your-subject class:form-control placeholder"Subject"]\r\n  </div>\r\n</div>\r\n[submit  class:main-button "Send Message"]\n1\nVictorynox "[your-subject]"\nVictorynox <sinevor13@gmail.com>\nsinevor13@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Victorynox (http://localhost/wordpress3)\nReply-To: [your-email]\n\n\n\n\nVictorynox "[your-subject]"\nVictorynox <sinevor13@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Victorynox (http://localhost/wordpress3)\nReply-To: sinevor13@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form', '', 'publish', 'closed', 'closed', '', 'untitled', '', '', '2019-12-12 13:34:33', '2019-12-12 13:34:33', '', 0, 'http://localhost/wordpress3/?post_type=wpcf7_contact_form&#038;p=165', 0, 'wpcf7_contact_form', '', 0),
(167, 1, '2019-12-13 21:35:52', '2019-12-13 21:35:52', '', 'AJbANua3_400x400', '', 'inherit', 'open', 'closed', '', 'ajbanua3_400x400', '', '', '2019-12-13 21:35:52', '2019-12-13 21:35:52', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2019/12/AJbANua3_400x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2019-12-13 21:35:55', '2019-12-13 21:35:55', 'http://localhost/wordpress3/wp-content/uploads/2019/12/cropped-AJbANua3_400x400.jpg', 'cropped-AJbANua3_400x400.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-ajbanua3_400x400-jpg', '', '', '2019-12-13 21:35:55', '2019-12-13 21:35:55', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2019/12/cropped-AJbANua3_400x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2019-12-13 21:35:58', '2019-12-13 21:35:58', '{\n    "victorynox::custom_logo": {\n        "value": 168,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-12-13 21:35:58"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd5bd4ef8-fb19-4ea8-b34c-ff2420e2deee', '', '', '2019-12-13 21:35:58', '2019-12-13 21:35:58', '', 0, 'http://localhost/wordpress3/index.php/2019/12/13/d5bd4ef8-fb19-4ea8-b34c-ff2420e2deee/', 0, 'customize_changeset', '', 0),
(170, 1, '2019-12-13 21:37:19', '2019-12-13 21:37:19', '', 'Victorinox-Logo', '', 'inherit', 'open', 'closed', '', 'victorinox-logo', '', '', '2019-12-13 21:37:19', '2019-12-13 21:37:19', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2019/12/Victorinox-Logo.png', 0, 'attachment', 'image/png', 0),
(171, 1, '2019-12-13 21:37:29', '2019-12-13 21:37:29', 'http://localhost/wordpress3/wp-content/uploads/2019/12/cropped-Victorinox-Logo.png', 'cropped-Victorinox-Logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-victorinox-logo-png', '', '', '2019-12-13 21:37:29', '2019-12-13 21:37:29', '', 0, 'http://localhost/wordpress3/wp-content/uploads/2019/12/cropped-Victorinox-Logo.png', 0, 'attachment', 'image/png', 0),
(172, 1, '2019-12-13 21:37:33', '2019-12-13 21:37:33', '{\n    "victorynox::custom_logo": {\n        "value": 171,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-12-13 21:37:33"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '41e06c4d-4dbf-482c-b47b-4aca193d8b9a', '', '', '2019-12-13 21:37:33', '2019-12-13 21:37:33', '', 0, 'http://localhost/wordpress3/index.php/2019/12/13/41e06c4d-4dbf-482c-b47b-4aca193d8b9a/', 0, 'customize_changeset', '', 0),
(174, 1, '2019-12-21 17:29:08', '2019-12-21 17:29:08', ' ', '', '', 'publish', 'closed', 'closed', '', '174', '', '', '2019-12-21 17:29:08', '2019-12-21 17:29:08', '', 0, 'http://localhost/wordpress3/?p=174', 1, 'nav_menu_item', '', 0),
(175, 1, '2019-12-21 17:29:33', '2019-12-21 17:29:33', ' ', '', '', 'publish', 'closed', 'closed', '', '175', '', '', '2019-12-21 17:29:33', '2019-12-21 17:29:33', '', 0, 'http://localhost/wordpress3/?p=175', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 17, 'display_type', ''),
(3, 17, 'thumbnail_id', '0'),
(4, 18, 'order', '0'),
(5, 18, 'display_type', ''),
(6, 18, 'thumbnail_id', '0'),
(7, 19, 'order', '0'),
(8, 19, 'display_type', ''),
(9, 19, 'thumbnail_id', '0'),
(10, 20, 'order', '0'),
(11, 20, 'display_type', ''),
(12, 20, 'thumbnail_id', '0'),
(13, 21, 'order', '0'),
(14, 21, 'display_type', ''),
(15, 21, 'thumbnail_id', '0'),
(16, 22, 'order', '0'),
(17, 22, 'display_type', ''),
(18, 22, 'thumbnail_id', '0'),
(19, 17, 'product_count_product_cat', '2'),
(20, 23, 'product_count_product_tag', '3'),
(21, 21, 'product_count_product_cat', '2'),
(22, 24, 'product_count_product_tag', '1'),
(23, 20, 'product_count_product_cat', '1'),
(24, 25, 'product_count_product_tag', '1'),
(25, 18, 'product_count_product_cat', '1'),
(26, 26, 'product_count_product_tag', '1'),
(27, 19, 'product_count_product_cat', '2'),
(28, 27, 'product_count_product_tag', '1'),
(29, 22, 'product_count_product_cat', '3'),
(30, 28, 'product_count_product_tag', '1'),
(31, 29, 'product_count_product_tag', '1'),
(32, 30, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'isdisabled', 'isdisabled', 0),
(17, 'Small Hunting Knives', 'small-hunting-knives', 0),
(18, 'Mid-Size Hunting Knives', 'mid-size-hunting-knives', 0),
(19, 'Large Hunting Knives', 'large-hunting-knives', 0),
(20, 'Outdoors and Bushcraft Knives', 'outdoors-and-bushcraft-knives', 0),
(21, 'Bowie Knives', 'bowie-knives', 0),
(22, 'Gurkha Kukri', 'gurkha-kukri', 0),
(23, 'Wood', 'wood', 0),
(24, 'red', 'red', 0),
(25, 'knife', 'knife', 0),
(26, 'High quality', 'high-quality', 0),
(27, 'metallic', 'metallic', 0),
(28, 'ultimate edition', 'ultimate-edition', 0),
(29, 'mobility', 'mobility', 0),
(30, 'Scissors', 'scissors', 0),
(38, 'Header Menu', 'header-menu', 0),
(39, 'Tag Menu', 'tag-menu', 0),
(40, 'Account Menu', 'account-menu', 0),
(41, 'Footer1', 'footer1', 0),
(42, 'Footer2', 'footer2', 0),
(43, 'Footer3', 'footer3', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(21, 17, 0),
(21, 23, 0),
(24, 2, 0),
(24, 21, 0),
(24, 23, 0),
(25, 2, 0),
(25, 21, 0),
(25, 22, 0),
(25, 30, 0),
(26, 2, 0),
(26, 22, 0),
(26, 29, 0),
(27, 2, 0),
(27, 22, 0),
(27, 28, 0),
(28, 2, 0),
(28, 19, 0),
(28, 23, 0),
(29, 2, 0),
(29, 19, 0),
(29, 27, 0),
(30, 2, 0),
(30, 18, 0),
(30, 26, 0),
(31, 2, 0),
(31, 20, 0),
(31, 25, 0),
(32, 2, 0),
(32, 17, 0),
(32, 24, 0),
(95, 38, 0),
(96, 38, 0),
(97, 38, 0),
(98, 38, 0),
(99, 38, 0),
(100, 38, 0),
(101, 39, 0),
(102, 39, 0),
(103, 39, 0),
(104, 40, 0),
(106, 40, 0),
(111, 40, 0),
(112, 41, 0),
(114, 41, 0),
(115, 41, 0),
(116, 41, 0),
(117, 41, 0),
(119, 41, 0),
(120, 42, 0),
(121, 42, 0),
(122, 42, 0),
(123, 42, 0),
(124, 42, 0),
(125, 42, 0),
(126, 43, 0),
(127, 43, 0),
(128, 43, 0),
(129, 43, 0),
(130, 43, 0),
(131, 43, 0),
(174, 43, 0),
(175, 38, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 10),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'berocket_taxonomy_data', '', 0, 0),
(17, 17, 'product_cat', '', 0, 2),
(18, 18, 'product_cat', '', 0, 1),
(19, 19, 'product_cat', '', 0, 2),
(20, 20, 'product_cat', '', 0, 1),
(21, 21, 'product_cat', '', 0, 2),
(22, 22, 'product_cat', '', 0, 3),
(23, 23, 'product_tag', '', 0, 3),
(24, 24, 'product_tag', '', 0, 1),
(25, 25, 'product_tag', '', 0, 1),
(26, 26, 'product_tag', '', 0, 1),
(27, 27, 'product_tag', '', 0, 1),
(28, 28, 'product_tag', '', 0, 1),
(29, 29, 'product_tag', '', 0, 1),
(30, 30, 'product_tag', '', 0, 1),
(38, 38, 'nav_menu', '', 0, 7),
(39, 39, 'nav_menu', '', 0, 3),
(40, 40, 'nav_menu', '', 0, 3),
(41, 41, 'nav_menu', '', 0, 6),
(42, 42, 'nav_menu', '', 0, 6),
(43, 43, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"685b29f83c1ea8c2109b29cbbfc42bfba08c0c9daf206b75a0d56a9484192e22";a:4:{s:10:"expiration";i:1577122128;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36";s:5:"login";i:1576949328;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '173'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:91XFz7xfbYslF0O/+RemUpSL'),
(19, 1, 'itsec_user_activity_last_seen', '1576949334'),
(20, 1, 'aioseop_seen_about_page', '3.3.3'),
(21, 1, 'wc_last_active', '1576886400'),
(22, 1, 'itsec-password-strength', '0'),
(23, 1, '_itsec_password_requirements', 'a:1:{s:16:"evaluation_times";a:1:{s:8:"strength";i:1575810731;}}'),
(25, 1, '_itsec_has_logged_in', '1575810731'),
(26, 1, 'dismissed_no_secure_connection_notice', '1'),
(27, 1, 'dismissed_wc_admin_notice', '1'),
(28, 1, 'wp_user-settings', 'libraryContent=browse'),
(29, 1, 'wp_user-settings-time', '1575811432'),
(30, 1, 'closedpostboxes_product', 'a:0:{}'),
(31, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:"slugdiv";}'),
(32, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"8e296a067a37563370ded05f5a3bf3ec";a:6:{s:3:"key";s:32:"8e296a067a37563370ded05f5a3bf3ec";s:10:"product_id";i:25;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";}}}'),
(34, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(35, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:13:"add-pwb-brand";}'),
(36, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(37, 1, 'nav_menu_recently_edited', '38');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$Bqve9Bg/jKq9ainmvMrwz2L.4qbMaC.', 'root', 'sinevor13@gmail.com', '', '2019-12-06 11:27:47', '', 0, 'root');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(21, '', 0, 0, '31.00', '31.00', 0, NULL, 'instock', 0, '0.00', 0),
(24, '', 0, 0, '123.00', '123.00', 0, NULL, 'instock', 0, '0.00', 0),
(25, '', 0, 0, '123.00', '123.00', 0, NULL, 'instock', 0, '0.00', 0),
(26, '', 0, 0, '134.00', '134.00', 0, NULL, 'instock', 0, '0.00', 0),
(27, '', 0, 0, '98.00', '98.00', 1, NULL, 'instock', 0, '0.00', 0),
(28, '', 0, 0, '89.00', '89.00', 0, NULL, 'instock', 0, '0.00', 0),
(29, '', 0, 0, '67.00', '67.00', 1, NULL, 'instock', 0, '0.00', 0),
(30, '', 0, 0, '45.00', '45.00', 1, NULL, 'instock', 0, '0.00', 0),
(31, '', 0, 0, '111.00', '111.00', 1, NULL, 'instock', 0, '0.00', 0),
(32, '', 0, 0, '80.00', '80.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Ukraine', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'UA', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_berocket_termmeta`
--
ALTER TABLE `wp_berocket_termmeta`
  ADD UNIQUE KEY `meta_id` (`meta_id`);

--
-- Индексы таблицы `wp_braapf_product_stock_status_parent`
--
ALTER TABLE `wp_braapf_product_stock_status_parent`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `stock_status` (`stock_status`);

--
-- Индексы таблицы `wp_braapf_product_variation_attributes`
--
ALTER TABLE `wp_braapf_product_variation_attributes`
  ADD UNIQUE KEY `uniqueid` (`post_id`,`meta_key`,`meta_value_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`),
  ADD KEY `meta_value_id` (`meta_value_id`);

--
-- Индексы таблицы `wp_braapf_term_taxonomy_hierarchical`
--
ALTER TABLE `wp_braapf_term_taxonomy_hierarchical`
  ADD UNIQUE KEY `uniqueid` (`term_taxonomy_id`,`term_id`,`term_taxonomy_child_id`,`term_child_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`),
  ADD KEY `term_taxonomy_child_id` (`term_taxonomy_child_id`),
  ADD KEY `child_parent_id` (`term_taxonomy_id`,`term_taxonomy_child_id`);

--
-- Индексы таблицы `wp_braapf_variation_attributes`
--
ALTER TABLE `wp_braapf_variation_attributes`
  ADD UNIQUE KEY `uniqueid` (`post_id`,`taxonomy`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Индексы таблицы `wp_itsec_distributed_storage`
--
ALTER TABLE `wp_itsec_distributed_storage`
  ADD PRIMARY KEY (`storage_id`),
  ADD UNIQUE KEY `storage_group__key__chunk` (`storage_group`,`storage_key`,`storage_chunk`);

--
-- Индексы таблицы `wp_itsec_fingerprints`
--
ALTER TABLE `wp_itsec_fingerprints`
  ADD PRIMARY KEY (`fingerprint_id`),
  ADD UNIQUE KEY `fingerprint_user__hash` (`fingerprint_user`,`fingerprint_hash`),
  ADD UNIQUE KEY `fingerprint_uuid` (`fingerprint_uuid`);

--
-- Индексы таблицы `wp_itsec_geolocation_cache`
--
ALTER TABLE `wp_itsec_geolocation_cache`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_host` (`location_host`),
  ADD KEY `location_time` (`location_time`);

--
-- Индексы таблицы `wp_itsec_lockouts`
--
ALTER TABLE `wp_itsec_lockouts`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  ADD KEY `lockout_host` (`lockout_host`),
  ADD KEY `lockout_user` (`lockout_user`),
  ADD KEY `lockout_username` (`lockout_username`),
  ADD KEY `lockout_active` (`lockout_active`);

--
-- Индексы таблицы `wp_itsec_logs`
--
ALTER TABLE `wp_itsec_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `code` (`code`),
  ADD KEY `type` (`type`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Индексы таблицы `wp_itsec_opaque_tokens`
--
ALTER TABLE `wp_itsec_opaque_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `token_hashed` (`token_hashed`);

--
-- Индексы таблицы `wp_itsec_temp`
--
ALTER TABLE `wp_itsec_temp`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `temp_date_gmt` (`temp_date_gmt`),
  ADD KEY `temp_host` (`temp_host`),
  ADD KEY `temp_user` (`temp_user`),
  ADD KEY `temp_username` (`temp_username`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `wp_user_id` (`wp_user_id`);

--
-- Индексы таблицы `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Индексы таблицы `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Индексы таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_berocket_termmeta`
--
ALTER TABLE `wp_berocket_termmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_itsec_distributed_storage`
--
ALTER TABLE `wp_itsec_distributed_storage`
  MODIFY `storage_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_itsec_fingerprints`
--
ALTER TABLE `wp_itsec_fingerprints`
  MODIFY `fingerprint_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_itsec_geolocation_cache`
--
ALTER TABLE `wp_itsec_geolocation_cache`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_itsec_lockouts`
--
ALTER TABLE `wp_itsec_lockouts`
  MODIFY `lockout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_itsec_logs`
--
ALTER TABLE `wp_itsec_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `wp_itsec_temp`
--
ALTER TABLE `wp_itsec_temp`
  MODIFY `temp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1655;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1274;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
