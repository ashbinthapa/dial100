-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2019 at 08:27 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dial100news`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-30 09:33:08', '2019-08-30 09:33:08', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dial100.test', 'yes'),
(2, 'home', 'http://dial100.test', 'yes'),
(3, 'blogname', 'Dial 100 News – Inspecting every news', 'yes'),
(4, 'blogdescription', 'Dial 100 News – Inspecting every news', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sukarat@eservicesnepal.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(28, 'permalink_structure', '/%post_id%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:28:\"[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:17:\"([0-9]+)/embed/?$\";s:34:\"index.php?p=$matches[1]&embed=true\";s:21:\"([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:41:\"([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:36:\"([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:29:\"([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:36:\"([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:25:\"([0-9]+)(?:/([0-9]+))?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:17:\"[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:27:\"[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:47:\"[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:42:\"[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:42:\"[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:23:\"[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '5.75', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'dial-100-news', 'yes'),
(41, 'stylesheet', 'dial-100-news', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-2\";a:6:{i:0;s:18:\"esn_breaker_news-3\";i:1;s:18:\"esn_breaker_news-4\";i:2;s:16:\"card_side_news-2\";i:3;s:19:\"three_column_news-3\";i:4;s:17:\"horizontal_news-2\";i:5;s:12:\"video_news-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1567578801;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1567589599;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567589601;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1567589604;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567589607;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1567577687;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(116, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1567577696;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1567577696;s:7:\"checked\";a:5:{s:13:\"dial-100-news\";s:5:\"1.0.0\";s:2:\"sd\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_timeout_browser_471e4b86e3560c6feb474def098169b6', '1567762406', 'no'),
(121, '_site_transient_browser_471e4b86e3560c6feb474def098169b6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(122, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1567762407', 'no'),
(123, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(127, 'can_compress_scripts', '1', 'no'),
(140, 'WPLANG', '', 'yes'),
(141, 'new_admin_email', 'sukarat@eservicesnepal.com', 'yes'),
(147, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567162083;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(148, 'current_theme', 'Dial 100 News', 'yes'),
(149, 'theme_mods_dial-100-news', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:38;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'recovery_mode_email_last_sent', '1567332386', 'yes'),
(154, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(156, 'widget_esn_breaker_news', 'a:3:{i:3;a:5:{s:5:\"title\";s:24:\"काठमाडौँ\";s:10:\"news_count\";s:1:\"1\";s:7:\"esn_cat\";s:1:\"3\";s:10:\"hide_image\";s:0:\"\";s:14:\"hide_highlight\";s:0:\"\";}i:4;a:5:{s:5:\"title\";s:21:\"टिप्पणी\";s:10:\"news_count\";s:1:\"1\";s:7:\"esn_cat\";s:1:\"5\";s:10:\"hide_image\";s:2:\"on\";s:14:\"hide_highlight\";s:2:\"on\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'category_children', 'a:0:{}', 'yes'),
(204, 'widget_card_side_news', 'a:2:{i:2;a:6:{s:5:\"title\";s:31:\"काठमाडौँ आज\";s:10:\"news_count\";s:1:\"5\";s:7:\"esn_cat\";s:1:\"4\";s:6:\"title1\";s:31:\"बिशेष न्युज\";s:11:\"news_count1\";s:1:\"6\";s:8:\"esn_cat1\";s:1:\"4\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(213, 'widget_four_column_news', 'a:2:{i:2;a:9:{s:10:\"news_count\";s:1:\"7\";s:5:\"title\";s:34:\"अपराध समाचार\";s:7:\"esn_cat\";s:1:\"4\";s:6:\"title1\";s:53:\"नेपाल प्रहरी समाचार\";s:8:\"esn_cat1\";s:1:\"4\";s:6:\"title2\";s:59:\"ससस्त्र प्रहरी समाचार\";s:8:\"esn_cat2\";s:1:\"4\";s:6:\"title3\";s:50:\"नेपाली सेना समाचार\";s:8:\"esn_cat3\";s:1:\"4\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(215, 'widget_three_column_news', 'a:2:{i:3;a:7:{s:10:\"news_count\";s:1:\"5\";s:5:\"title\";s:38:\"डायल १०० बिशेष\";s:7:\"esn_cat\";s:1:\"4\";s:6:\"title1\";s:50:\"नेपाली सेना समाचार\";s:8:\"esn_cat1\";s:1:\"4\";s:6:\"title2\";s:59:\"ससस्त्र प्रहरी समाचार\";s:8:\"esn_cat2\";s:1:\"4\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(224, 'widget_video_news', 'a:2:{i:2;a:3:{s:10:\"news_count\";s:1:\"5\";s:5:\"title\";s:40:\"भिडियो रिपोर्ट\";s:7:\"esn_cat\";s:1:\"4\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'widget_horizontal_news', 'a:2:{i:2;a:3:{s:10:\"news_count\";s:1:\"5\";s:5:\"title\";s:38:\"डायल १०० बिशेष\";s:7:\"esn_cat\";s:1:\"4\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, '_site_transient_timeout_theme_roots', '1567579495', 'no'),
(252, '_site_transient_theme_roots', 'a:5:{s:13:\"dial-100-news\";s:7:\"/themes\";s:2:\"sd\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2019/08/logo_dial.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:140;s:4:\"file\";s:21:\"2019/08/logo_dial.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_dial-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_wp_attachment_image_alt', 'Dial 100 News Logo'),
(6, 6, '_wp_trash_meta_status', 'publish'),
(7, 6, '_wp_trash_meta_time', '1567163606'),
(8, 7, '_edit_lock', '1567164202:1'),
(9, 8, '_menu_item_type', 'custom'),
(10, 8, '_menu_item_menu_item_parent', '0'),
(11, 8, '_menu_item_object_id', '8'),
(12, 8, '_menu_item_object', 'custom'),
(13, 8, '_menu_item_target', ''),
(14, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 8, '_menu_item_xfn', ''),
(16, 8, '_menu_item_url', '#'),
(17, 9, '_menu_item_type', 'custom'),
(18, 9, '_menu_item_menu_item_parent', '0'),
(19, 9, '_menu_item_object_id', '9'),
(20, 9, '_menu_item_object', 'custom'),
(21, 9, '_menu_item_target', ''),
(22, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(23, 9, '_menu_item_xfn', ''),
(24, 9, '_menu_item_url', '#'),
(25, 10, '_menu_item_type', 'custom'),
(26, 10, '_menu_item_menu_item_parent', '0'),
(27, 10, '_menu_item_object_id', '10'),
(28, 10, '_menu_item_object', 'custom'),
(29, 10, '_menu_item_target', ''),
(30, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(31, 10, '_menu_item_xfn', ''),
(32, 10, '_menu_item_url', '#'),
(33, 11, '_menu_item_type', 'custom'),
(34, 11, '_menu_item_menu_item_parent', '0'),
(35, 11, '_menu_item_object_id', '11'),
(36, 11, '_menu_item_object', 'custom'),
(37, 11, '_menu_item_target', ''),
(38, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 11, '_menu_item_xfn', ''),
(40, 11, '_menu_item_url', '#'),
(41, 12, '_menu_item_type', 'custom'),
(42, 12, '_menu_item_menu_item_parent', '0'),
(43, 12, '_menu_item_object_id', '12'),
(44, 12, '_menu_item_object', 'custom'),
(45, 12, '_menu_item_target', ''),
(46, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 12, '_menu_item_xfn', ''),
(48, 12, '_menu_item_url', '#'),
(49, 13, '_menu_item_type', 'custom'),
(50, 13, '_menu_item_menu_item_parent', '0'),
(51, 13, '_menu_item_object_id', '13'),
(52, 13, '_menu_item_object', 'custom'),
(53, 13, '_menu_item_target', ''),
(54, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(55, 13, '_menu_item_xfn', ''),
(56, 13, '_menu_item_url', '#'),
(57, 14, '_menu_item_type', 'custom'),
(58, 14, '_menu_item_menu_item_parent', '0'),
(59, 14, '_menu_item_object_id', '14'),
(60, 14, '_menu_item_object', 'custom'),
(61, 14, '_menu_item_target', ''),
(62, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 14, '_menu_item_xfn', ''),
(64, 14, '_menu_item_url', '#'),
(65, 15, '_menu_item_type', 'custom'),
(66, 15, '_menu_item_menu_item_parent', '0'),
(67, 15, '_menu_item_object_id', '15'),
(68, 15, '_menu_item_object', 'custom'),
(69, 15, '_menu_item_target', ''),
(70, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 15, '_menu_item_xfn', ''),
(72, 15, '_menu_item_url', '#'),
(73, 16, '_menu_item_type', 'custom'),
(74, 16, '_menu_item_menu_item_parent', '0'),
(75, 16, '_menu_item_object_id', '16'),
(76, 16, '_menu_item_object', 'custom'),
(77, 16, '_menu_item_target', ''),
(78, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 16, '_menu_item_xfn', ''),
(80, 16, '_menu_item_url', '#'),
(81, 7, '_wp_trash_meta_status', 'publish'),
(82, 7, '_wp_trash_meta_time', '1567164221'),
(83, 17, '_edit_lock', '1567190227:1'),
(84, 18, '_wp_attached_file', '2019/08/1566355162jilla_prahari_karyalay_dhanush.jpg'),
(85, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:789;s:6:\"height\";i:436;s:4:\"file\";s:52:\"2019/08/1566355162jilla_prahari_karyalay_dhanush.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"1566355162jilla_prahari_karyalay_dhanush-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"1566355162jilla_prahari_karyalay_dhanush-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"1566355162jilla_prahari_karyalay_dhanush-768x424.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1566342891\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(88, 17, '_thumbnail_id', '20'),
(91, 20, '_wp_attached_file', '2019/08/1566355162jilla_prahari_karyalay_dhanush.jpg'),
(92, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:789;s:6:\"height\";i:436;s:4:\"file\";s:52:\"2019/08/1566355162jilla_prahari_karyalay_dhanush.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"1566355162jilla_prahari_karyalay_dhanush-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"1566355162jilla_prahari_karyalay_dhanush-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"1566355162jilla_prahari_karyalay_dhanush-768x424.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1566342891\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(95, 21, '_edit_lock', '1567191209:1'),
(96, 22, '_wp_attached_file', '2019/08/jj1.jpg'),
(97, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:460;s:6:\"height\";i:207;s:4:\"file\";s:15:\"2019/08/jj1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"jj1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"jj1-300x135.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1566342022\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(100, 21, '_thumbnail_id', '22'),
(103, 24, '_edit_lock', '1567191278:1'),
(104, 25, '_wp_attached_file', '2019/08/Screenshot_20190806-083857__01-1080x5701.jpg'),
(105, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:570;s:4:\"file\";s:52:\"2019/08/Screenshot_20190806-083857__01-1080x5701.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Screenshot_20190806-083857__01-1080x5701-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Screenshot_20190806-083857__01-1080x5701-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"Screenshot_20190806-083857__01-1080x5701-768x405.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"Screenshot_20190806-083857__01-1080x5701-1024x540.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 24, '_thumbnail_id', '25'),
(109, 27, '_edit_lock', '1567191323:1'),
(110, 28, '_wp_attached_file', '2019/08/DSP_Govinda_Puri-fill-376x4121.jpg'),
(111, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:376;s:6:\"height\";i:412;s:4:\"file\";s:42:\"2019/08/DSP_Govinda_Puri-fill-376x4121.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"DSP_Govinda_Puri-fill-376x4121-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"DSP_Govinda_Puri-fill-376x4121-274x300.jpg\";s:5:\"width\";i:274;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 27, '_thumbnail_id', '28'),
(115, 30, '_edit_lock', '1567191363:1'),
(118, 32, '_edit_lock', '1567191523:1'),
(119, 33, '_wp_attached_file', '2019/08/59834865_334634964097264_3094884890114523136_n1.jpg'),
(120, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:59:\"2019/08/59834865_334634964097264_3094884890114523136_n1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"59834865_334634964097264_3094884890114523136_n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"59834865_334634964097264_3094884890114523136_n1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"59834865_334634964097264_3094884890114523136_n1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 32, '_thumbnail_id', '33'),
(124, 35, '_edit_lock', '1567191689:1'),
(125, 36, '_wp_attached_file', '2019/08/received_373815649870153-1080x5701.jpg'),
(126, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:570;s:4:\"file\";s:46:\"2019/08/received_373815649870153-1080x5701.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"received_373815649870153-1080x5701-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"received_373815649870153-1080x5701-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"received_373815649870153-1080x5701-768x405.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"received_373815649870153-1080x5701-1024x540.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 35, '_thumbnail_id', '36'),
(130, 38, '_wp_attached_file', '2019/08/logo_dial.png'),
(131, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:257;s:6:\"height\";i:140;s:4:\"file\";s:21:\"2019/08/logo_dial.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_dial-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 39, '_wp_trash_meta_status', 'publish'),
(133, 39, '_wp_trash_meta_time', '1567191795'),
(134, 40, '_edit_lock', '1567191773:1'),
(135, 41, '_wp_attached_file', '2019/08/81.jpg'),
(136, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:875;s:6:\"height\";i:465;s:4:\"file\";s:14:\"2019/08/81.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"81-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"81-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"81-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 40, '_thumbnail_id', '41'),
(140, 43, '_edit_lock', '1567191826:1'),
(141, 44, '_wp_attached_file', '2019/08/mrityu1.jpg'),
(142, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:875;s:6:\"height\";i:465;s:4:\"file\";s:19:\"2019/08/mrityu1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"mrityu1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"mrityu1-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"mrityu1-768x408.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:408;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 43, '_thumbnail_id', '44'),
(146, 46, '_edit_lock', '1567191886:1'),
(147, 47, '_wp_attached_file', '2019/08/manoj-pun_1-5a8cc73b6e5991.548026371.jpg'),
(148, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:479;s:4:\"file\";s:48:\"2019/08/manoj-pun_1-5a8cc73b6e5991.548026371.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"manoj-pun_1-5a8cc73b6e5991.548026371-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"manoj-pun_1-5a8cc73b6e5991.548026371-300x144.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"manoj-pun_1-5a8cc73b6e5991.548026371-768x368.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:368;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 46, '_thumbnail_id', '47'),
(152, 49, '_edit_lock', '1567191996:1'),
(153, 50, '_wp_attached_file', '2019/08/hatya1.jpg'),
(154, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:696;s:6:\"height\";i:384;s:4:\"file\";s:18:\"2019/08/hatya1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hatya1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hatya1-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 49, '_thumbnail_id', '50'),
(158, 52, '_edit_lock', '1567192203:1'),
(159, 53, '_wp_attached_file', '2019/08/samir_11.jpg'),
(160, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:497;s:6:\"height\";i:333;s:4:\"file\";s:20:\"2019/08/samir_11.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"samir_11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"samir_11-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(163, 52, '_thumbnail_id', '53'),
(164, 55, '_edit_lock', '1567192191:1'),
(165, 56, '_wp_attached_file', '2019/08/1566351602Maina_Sunuwar-1024x5701.jpg'),
(166, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:570;s:4:\"file\";s:45:\"2019/08/1566351602Maina_Sunuwar-1024x5701.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"1566351602Maina_Sunuwar-1024x5701-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"1566351602Maina_Sunuwar-1024x5701-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"1566351602Maina_Sunuwar-1024x5701-768x428.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:428;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"1566351602Maina_Sunuwar-1024x5701-1024x570.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:570;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 55, '_thumbnail_id', '56'),
(170, 58, '_edit_lock', '1567192249:1'),
(171, 59, '_wp_attached_file', '2019/08/nepal-army_0n3eRbMAn71.png'),
(172, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:34:\"2019/08/nepal-army_0n3eRbMAn71.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"nepal-army_0n3eRbMAn71-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"nepal-army_0n3eRbMAn71-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 58, '_thumbnail_id', '59'),
(176, 61, '_wp_attached_file', '2019/09/icon.png'),
(177, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:88;s:6:\"height\";i:101;s:4:\"file\";s:16:\"2019/09/icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-30 09:33:08', '2019-08-30 09:33:08', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-08-30 09:33:08', '2019-08-30 09:33:08', '', 0, 'https://dial100news.test/?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-30 09:33:08', '2019-08-30 09:33:08', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://dial100news.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-08-30 09:33:08', '2019-08-30 09:33:08', '', 0, 'https://dial100news.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-30 09:33:08', '2019-08-30 09:33:08', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://dial100news.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-30 09:33:08', '2019-08-30 09:33:08', '', 0, 'https://dial100news.test/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-08-30 09:33:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-30 09:33:27', '0000-00-00 00:00:00', '', 0, 'https://dial100news.test/?p=4', 0, 'post', '', 0),
(5, 1, '2019-08-30 16:58:08', '2019-08-30 11:13:08', 'Dial 100 News Logo', 'Dial 100 News Logo', 'Dial 100 News Logo', 'inherit', 'open', 'closed', '', 'logo_dial', '', '', '2019-08-30 16:58:22', '2019-08-30 11:13:22', '', 0, 'https://dial100news.test/wp-content/uploads/2019/08/logo_dial.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2019-08-30 16:58:25', '2019-08-30 11:13:25', '{\n    \"dial-100-news::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:13:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e82555d8-d79a-40aa-809e-cc76c4f79cbb', '', '', '2019-08-30 16:58:25', '2019-08-30 11:13:25', '', 0, 'https://dial100news.test/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2019-08-30 17:08:34', '2019-08-30 11:23:34', '{\n    \"dial-100-news::nav_menu_locations[menu-1]\": {\n        \"value\": -5840490218330552000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:22:04\"\n    },\n    \"nav_menu[-5840490218330552000]\": {\n        \"value\": {\n            \"name\": \"Main Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:22:04\"\n    },\n    \"nav_menu_item[-720920973352441900]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"\\u0938\\u092e\\u093e\\u091a\\u093e\\u0930\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0938\\u092e\\u093e\\u091a\\u093e\\u0930\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:22:22\"\n    },\n    \"nav_menu_item[-2568705393664610300]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"\\u0905\\u092a\\u0930\\u093e\\u0927 \\u0938\\u092e\\u093e\\u091a\\u093e\\u0930\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0905\\u092a\\u0930\\u093e\\u0927 \\u0938\\u092e\\u093e\\u091a\\u093e\\u0930\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:22:33\"\n    },\n    \"nav_menu_item[-2741943540191588400]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"\\u0928\\u0947\\u092a\\u093e\\u0932 \\u092a\\u094d\\u0930\\u0939\\u0930\\u0940\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0928\\u0947\\u092a\\u093e\\u0932 \\u092a\\u094d\\u0930\\u0939\\u0930\\u0940\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:22:44\"\n    },\n    \"nav_menu_item[-1349575954481297400]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"\\u0938\\u0936\\u0938\\u094d\\u0924\\u094d\\u0930 \\u092a\\u094d\\u0930\\u0939\\u0930\\u0940\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0938\\u0936\\u0938\\u094d\\u0924\\u094d\\u0930 \\u092a\\u094d\\u0930\\u0939\\u0930\\u0940\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:22:52\"\n    },\n    \"nav_menu_item[-4000476328134627300]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"custom\",\n            \"title\": \"\\u0928\\u0947\\u092a\\u093e\\u0932\\u0940 \\u0938\\u0947\\u0928\\u093e\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0928\\u0947\\u092a\\u093e\\u0932\\u0940 \\u0938\\u0947\\u0928\\u093e\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:23:01\"\n    },\n    \"nav_menu_item[-6085034771894284000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"custom\",\n            \"title\": \"\\u092c\\u093f\\u0936\\u0947\\u0937\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u092c\\u093f\\u0936\\u0947\\u0937\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:23:09\"\n    },\n    \"nav_menu_item[-73127169377146880]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"custom\",\n            \"title\": \"\\u092b\\u094b\\u091f\\u094b \\u092b\\u093f\\u091a\\u0930\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u092b\\u094b\\u091f\\u094b \\u092b\\u093f\\u091a\\u0930\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:23:15\"\n    },\n    \"nav_menu_item[-7166033413138538000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"custom\",\n            \"title\": \"\\u092d\\u093f\\u0921\\u093f\\u092f\\u094b\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u092d\\u093f\\u0921\\u093f\\u092f\\u094b\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:23:22\"\n    },\n    \"nav_menu_item[-6495724965254918000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 9,\n            \"type\": \"custom\",\n            \"title\": \"\\u0905\\u0928\\u094d\\u092f\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0905\\u0928\\u094d\\u092f\",\n            \"nav_menu_term_id\": -5840490218330552000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 11:23:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7b663515-ca7c-44df-beb1-a119b4f5d2c4', '', '', '2019-08-30 17:08:34', '2019-08-30 11:23:34', '', 0, 'https://dial100news.test/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2019-08-30 17:08:35', '2019-08-30 11:23:35', '', 'समाचार', '', 'publish', 'closed', 'closed', '', '%e0%a4%b8%e0%a4%ae%e0%a4%be%e0%a4%9a%e0%a4%be%e0%a4%b0', '', '', '2019-08-30 17:08:35', '2019-08-30 11:23:35', '', 0, 'https://dial100news.test/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2019-08-30 17:08:35', '2019-08-30 11:23:35', '', 'अपराध समाचार', '', 'publish', 'closed', 'closed', '', '%e0%a4%85%e0%a4%aa%e0%a4%b0%e0%a4%be%e0%a4%a7-%e0%a4%b8%e0%a4%ae%e0%a4%be%e0%a4%9a%e0%a4%be%e0%a4%b0', '', '', '2019-08-30 17:08:35', '2019-08-30 11:23:35', '', 0, 'https://dial100news.test/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2019-08-30 17:08:36', '2019-08-30 11:23:36', '', 'नेपाल प्रहरी', '', 'publish', 'closed', 'closed', '', '%e0%a4%a8%e0%a5%87%e0%a4%aa%e0%a4%be%e0%a4%b2-%e0%a4%aa%e0%a5%8d%e0%a4%b0%e0%a4%b9%e0%a4%b0%e0%a5%80', '', '', '2019-08-30 17:08:36', '2019-08-30 11:23:36', '', 0, 'https://dial100news.test/?p=10', 3, 'nav_menu_item', '', 0),
(11, 1, '2019-08-30 17:08:37', '2019-08-30 11:23:37', '', 'सशस्त्र प्रहरी', '', 'publish', 'closed', 'closed', '', '%e0%a4%b8%e0%a4%b6%e0%a4%b8%e0%a5%8d%e0%a4%a4%e0%a5%8d%e0%a4%b0-%e0%a4%aa%e0%a5%8d%e0%a4%b0%e0%a4%b9%e0%a4%b0%e0%a5%80', '', '', '2019-08-30 17:08:37', '2019-08-30 11:23:37', '', 0, 'https://dial100news.test/?p=11', 4, 'nav_menu_item', '', 0),
(12, 1, '2019-08-30 17:08:37', '2019-08-30 11:23:37', '', 'नेपाली सेना', '', 'publish', 'closed', 'closed', '', '%e0%a4%a8%e0%a5%87%e0%a4%aa%e0%a4%be%e0%a4%b2%e0%a5%80-%e0%a4%b8%e0%a5%87%e0%a4%a8%e0%a4%be', '', '', '2019-08-30 17:08:37', '2019-08-30 11:23:37', '', 0, 'https://dial100news.test/?p=12', 5, 'nav_menu_item', '', 0),
(13, 1, '2019-08-30 17:08:38', '2019-08-30 11:23:38', '', 'बिशेष', '', 'publish', 'closed', 'closed', '', '%e0%a4%ac%e0%a4%bf%e0%a4%b6%e0%a5%87%e0%a4%b7', '', '', '2019-08-30 17:08:38', '2019-08-30 11:23:38', '', 0, 'https://dial100news.test/?p=13', 6, 'nav_menu_item', '', 0),
(14, 1, '2019-08-30 17:08:39', '2019-08-30 11:23:39', '', 'फोटो फिचर', '', 'publish', 'closed', 'closed', '', '%e0%a4%ab%e0%a5%8b%e0%a4%9f%e0%a5%8b-%e0%a4%ab%e0%a4%bf%e0%a4%9a%e0%a4%b0', '', '', '2019-08-30 17:08:39', '2019-08-30 11:23:39', '', 0, 'https://dial100news.test/?p=14', 7, 'nav_menu_item', '', 0),
(15, 1, '2019-08-30 17:08:39', '2019-08-30 11:23:39', '', 'भिडियो', '', 'publish', 'closed', 'closed', '', '%e0%a4%ad%e0%a4%bf%e0%a4%a1%e0%a4%bf%e0%a4%af%e0%a5%8b', '', '', '2019-08-30 17:08:39', '2019-08-30 11:23:39', '', 0, 'https://dial100news.test/?p=15', 8, 'nav_menu_item', '', 0),
(16, 1, '2019-08-30 17:08:40', '2019-08-30 11:23:40', '', 'अन्य', '', 'publish', 'closed', 'closed', '', '%e0%a4%85%e0%a4%a8%e0%a5%8d%e0%a4%af', '', '', '2019-08-30 17:08:40', '2019-08-30 11:23:40', '', 0, 'https://dial100news.test/?p=16', 9, 'nav_menu_item', '', 0),
(17, 1, '2019-08-30 18:20:09', '2019-08-30 12:35:09', '<!-- wp:paragraph -->\n<p>धनुषा। गत बिहिबार जिल्ला प्रहरी कार्यालय धनुषाबाट फरार भएका जबरजस्ती करणी मुद्दाका एक अभियुक्तसहित ४ विद्यार्थीलाई प्रहरीले पक्राउ गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीले मंगलबार राति साढे ९ बजे सिरहा माडरको भारतीय सीमाबाट राममणि यादवसहित चार विद्यार्थीलाई पक्राउ गरेको हो । यादव बयान लिने क्रममा जिल्ला प्रहरी कार्यालयको अपराध अनुसन्धान शाखाबाट फरार भएका थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीका अनुसार पक्राउ पर्नेमा सिरहा औरहीका प्रमेश यादव, ठैगहीका सूर्यनारायण यादव, अर्नमाका रामप्रकाश यादव र बसपिट्टाका राजकुमार यादव छन् । चारै जना जनकपुरस्थित एक कलेजमा ओभरसियर अध्ययनरत विद्यार्थी हुन् । उनीहरुले राममणिलाई भगाउन सघाएका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पक्राउ परेका ५ जनामाथि अनुसन्धान भइरहेको प्रहरीले बताएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जनकपुरधाम उपमहानगरपालिका–८ बलवा टोलमा डेरा लिई बस्दै गरेका सिरहाका २० वर्षीय राममणि यादवले बालिकालाई जर्बजस्ती करणी गरेको आरोपमा पक्राउ परेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीको हिरासतबाटै यादव फरार भएपछि अपराध अनुसन्धान शाखाका असई राजकुमार भण्डारीलाई जिल्ला प्रहरी कार्यालय धनुषाले निलम्बित गरेको छ भने प्रहरी नायब उपरीक्षक रामेश्वोर कार्कीको संयोजकत्वमा ५ सदस्यीय छानबिन टोली नै गठन गरेर फरार अभियुक्तको खोजी तीव्र पारेको थियो ।</p>\n<!-- /wp:paragraph -->', 'फरार अभियुक्त सहित चार विद्यार्थी पक्राउ', '', 'publish', 'open', 'open', '', '%e0%a4%ab%e0%a4%b0%e0%a4%be%e0%a4%b0-%e0%a4%85%e0%a4%ad%e0%a4%bf%e0%a4%af%e0%a5%81%e0%a4%95%e0%a5%8d%e0%a4%a4-%e0%a4%b8%e0%a4%b9%e0%a4%bf%e0%a4%a4-%e0%a4%9a%e0%a4%be%e0%a4%b0-%e0%a4%b5%e0%a4%bf', '', '', '2019-08-31 00:24:23', '2019-08-30 18:39:23', '', 0, 'https://dial100news.test/?p=17', 0, 'post', '', 0),
(18, 1, '2019-08-30 18:19:56', '2019-08-30 12:34:56', '', '1566355162jilla_prahari_karyalay_dhanush', '', 'inherit', 'open', 'closed', '', '1566355162jilla_prahari_karyalay_dhanush', '', '', '2019-08-30 18:19:56', '2019-08-30 12:34:56', '', 17, 'https://dial100news.test/wp-content/uploads/2019/08/1566355162jilla_prahari_karyalay_dhanush.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2019-08-30 18:20:09', '2019-08-30 12:35:09', '<!-- wp:paragraph -->\n<p>धनुषा। गत बिहिबार जिल्ला प्रहरी कार्यालय धनुषाबाट फरार भएका जबरजस्ती करणी मुद्दाका एक अभियुक्तसहित ४ विद्यार्थीलाई प्रहरीले पक्राउ गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीले मंगलबार राति साढे ९ बजे सिरहा माडरको भारतीय सीमाबाट राममणि यादवसहित चार विद्यार्थीलाई पक्राउ गरेको हो । यादव बयान लिने क्रममा जिल्ला प्रहरी कार्यालयको अपराध अनुसन्धान शाखाबाट फरार भएका थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीका अनुसार पक्राउ पर्नेमा सिरहा औरहीका प्रमेश यादव, ठैगहीका सूर्यनारायण यादव, अर्नमाका रामप्रकाश यादव र बसपिट्टाका राजकुमार यादव छन् । चारै जना जनकपुरस्थित एक कलेजमा ओभरसियर अध्ययनरत विद्यार्थी हुन् । उनीहरुले राममणिलाई भगाउन सघाएका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पक्राउ परेका ५ जनामाथि अनुसन्धान भइरहेको प्रहरीले बताएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जनकपुरधाम उपमहानगरपालिका–८ बलवा टोलमा डेरा लिई बस्दै गरेका सिरहाका २० वर्षीय राममणि यादवले बालिकालाई जर्बजस्ती करणी गरेको आरोपमा पक्राउ परेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीको हिरासतबाटै यादव फरार भएपछि अपराध अनुसन्धान शाखाका असई राजकुमार भण्डारीलाई जिल्ला प्रहरी कार्यालय धनुषाले निलम्बित गरेको छ भने प्रहरी नायब उपरीक्षक रामेश्वोर कार्कीको संयोजकत्वमा ५ सदस्यीय छानबिन टोली नै गठन गरेर फरार अभियुक्तको खोजी तीव्र पारेको थियो ।</p>\n<!-- /wp:paragraph -->', 'फरार अभियुक्त सहित चार विद्यार्थी पक्राउ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-08-30 18:20:09', '2019-08-30 12:35:09', '', 17, 'https://dial100news.test/?p=19', 0, 'revision', '', 0),
(20, 1, '2019-08-31 00:24:16', '2019-08-30 18:39:16', '', '1566355162jilla_prahari_karyalay_dhanush', '', 'inherit', 'open', 'closed', '', '1566355162jilla_prahari_karyalay_dhanush-2', '', '', '2019-08-31 00:24:16', '2019-08-30 18:39:16', '', 17, 'http://dial100.test/wp-content/uploads/2019/08/1566355162jilla_prahari_karyalay_dhanush.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-08-31 00:40:16', '2019-08-30 18:55:16', '<!-- wp:paragraph -->\n<p>महानगरीय प्रहरी वृत्त लैनचौरले प्रतिबन्धित वनस्पति रक्तचन्दनको तेलसहित तीन जनालाई पक्राउ गरेको छ । विशेष सूचनाका आधारमा काठमाडौँ महानगरपालिका–१६ नयाँबजारबाट रक्तचन्दनको तेलसहित &nbsp;धादिङका ५३ वर्षीय अच्युत केसी, सिन्धुपाल्चोकका ४३ वर्षीय जीत लामा र नुवाकोटका २६ वर्षीय सुजन पौडेललाई मङ्गलबार साँझ प्रहरीले पक्राउ गरेको हो ।<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महानगरीय प्रहरी परिषर काठमाडौँका प्रवक्ता प्रहरी नायब उपरीक्षक होबिन्द्र बोगटीका अनुसार लामा बस्ने कोठामा प्लाष्टिकको बोराले छोपेर राखेको अवस्थामा सिल्भरको गाग्रोमा ४५ लिटर रक्तचन्दनको तेल फेला परेको हो । यस बिषयमा थप अनुसन्धान भईरहेको उनले बताएका छन्।</p>\n<!-- /wp:paragraph -->', 'रक्तचन्दनको तेल सहित तीन जना पक्राउ', '', 'publish', 'open', 'open', '', '%e0%a4%b0%e0%a4%95%e0%a5%8d%e0%a4%a4%e0%a4%9a%e0%a4%a8%e0%a5%8d%e0%a4%a6%e0%a4%a8%e0%a4%95%e0%a5%8b-%e0%a4%a4%e0%a5%87%e0%a4%b2-%e0%a4%b8%e0%a4%b9%e0%a4%bf%e0%a4%a4-%e0%a4%a4%e0%a5%80%e0%a4%a8', '', '', '2019-08-31 00:40:44', '2019-08-30 18:55:44', '', 0, 'http://dial100.test/?p=21', 0, 'post', '', 0),
(22, 1, '2019-08-31 00:40:10', '2019-08-30 18:55:10', '', 'jj[1]', '', 'inherit', 'open', 'closed', '', 'jj1', '', '', '2019-08-31 00:40:10', '2019-08-30 18:55:10', '', 21, 'http://dial100.test/wp-content/uploads/2019/08/jj1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-08-31 00:40:16', '2019-08-30 18:55:16', '<!-- wp:paragraph -->\n<p>महानगरीय प्रहरी वृत्त लैनचौरले प्रतिबन्धित वनस्पति रक्तचन्दनको तेलसहित तीन जनालाई पक्राउ गरेको छ । विशेष सूचनाका आधारमा काठमाडौँ महानगरपालिका–१६ नयाँबजारबाट रक्तचन्दनको तेलसहित &nbsp;धादिङका ५३ वर्षीय अच्युत केसी, सिन्धुपाल्चोकका ४३ वर्षीय जीत लामा र नुवाकोटका २६ वर्षीय सुजन पौडेललाई मङ्गलबार साँझ प्रहरीले पक्राउ गरेको हो ।<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महानगरीय प्रहरी परिषर काठमाडौँका प्रवक्ता प्रहरी नायब उपरीक्षक होबिन्द्र बोगटीका अनुसार लामा बस्ने कोठामा प्लाष्टिकको बोराले छोपेर राखेको अवस्थामा सिल्भरको गाग्रोमा ४५ लिटर रक्तचन्दनको तेल फेला परेको हो । यस बिषयमा थप अनुसन्धान भईरहेको उनले बताएका छन्।</p>\n<!-- /wp:paragraph -->', 'रक्तचन्दनको तेल सहित तीन जना पक्राउ', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-08-31 00:40:16', '2019-08-30 18:55:16', '', 21, 'http://dial100.test/23/', 0, 'revision', '', 0),
(24, 1, '2019-08-31 00:41:49', '2019-08-30 18:56:49', '<!-- wp:paragraph -->\n<p>काठमाडौं । ‘सुकुटे विच’को नामले चर्चित सिन्धुपाल्चोको रिसोर्र्टमा लागूऔषधे कारोबार हुने गरेको खुलेको छ । शुक्रबार र शनिवार भिडभाड रहने उक्त रिसोर्टमा सञ्चालककै मिलोमतोमा लागूऔषधको कारोबार हुने गरेको हो । काठमाडौं उपत्यकालगायत देशका बिभिन्न जिल्लाबाट मनोरन्जनका साथै बिदाको सदुपयोग गर्न आन्तरिक र केही बाह्य पर्यटक सुकुटे पुग्छन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यहि भिड मध्यबाट केही लागूऔषधमा फसेका दुव्र्यसनीलाई रिसोर्टका कर्मचारीले नै लागूऔषध उपलब्ध गराउँदै आएको स्रोत बताउँछ । बिषेशगरी उक्त रिसोर्टमा लोकल गाँजा र चरेशको कारोबार हुने गर्छ । यो बिषयमा उक्त रिसोर्टका केही कर्मचारीलाई ग्राहकले जानकारी गराउँदा समेत सामान्य रुपमा लिएका थिए । रिसोर्ट सञ्चालक र कर्मचारीकै मिलोमतोमा उक्त रिसोर्टमा गाँजाको कारोबार हुने गरेपछि ग्राहकको आग्रह पनि नजरअन्दाज गरिएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ठमेलमा सम्पर्क कार्यालय खोलेर दुई दशक अगाडिदेखि सुकुटे रिसोर्ट चल्दै आएको छ । स्रोतका अनुसार उक्त रिसोर्टले कहिले काँही विदेशीलाई मात्र प्रवेश गराएर ‘ट्रान्स पार्टी’ समेत गर्छ । । ‘ट्रान्स पार्टी’ विश्वमै अबैध मानिन्छ । तर प्रहरी प्रशासनको आँखामा छारो हालेर पैसाको लागि सुकुटे संचालकले अबैध लागूऔषधको कारोबार सोही पार्टीमा गर्दै आएका छन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>लागूऔषधको धन्दाका साथै यो समूहले दैनिक लाखौ रुपैंयाँको कारोबार गरे पनि भ्याट बिल भने कुनै ग्राहकलाई पनि दिँदैन । प्रतिव्यक्ति २५ सय रुपैंया लिएर एक रात बस्न तथा सामान्य खानाको व्यवस्था सुकुटेले गरेको छ । शुक्रबार तीन सय र शनिबार दुई सयको हाराहारीमा उक्त रिसोर्टमा ग्राहकको भिड लाग्ने गर्छ । तर कुनै एक जनालाई पनि बिल भने रिसोर्टले दिँदैन । जसबाट दैनिक ३० देखि एक लाखसम्म राजश्व समेत यो रिसोर्टले छल्दै आएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>नेकपाका अध्यक्ष पुष्पकमल दाहल प्रचण्डसमेत यो रिसोर्टमा स–परिवार आरम गर्न पुग्छन् । प्रचण्डमात्र होईन नाम चलेका जिल्लाका नेता देखि बिभिन्न दलका प्रभावशाली नेता समेत यो रिशोर्टमा पुग्ने हुनाले ति रिसोर्ट सञ्चालकले त्यसको फाईदा उठाउँदै रिसोर्टमा लागूऔषधको कारोबार देखि राजश्वछली समेत गर्दै आएको छ । सञ्चालकले प्रचण्ड बसेकै दबाबका आधारमा लागूऔषधको व्यापार गरेको बताइन्छ ।</p>\n<!-- /wp:paragraph -->', 'सुकुटे ‘विच’मा लागूऔषध कारोबार !', '', 'publish', 'open', 'open', '', '%e0%a4%b8%e0%a5%81%e0%a4%95%e0%a5%81%e0%a4%9f%e0%a5%87-%e0%a4%b5%e0%a4%bf%e0%a4%9a%e0%a4%ae%e0%a4%be-%e0%a4%b2%e0%a4%be%e0%a4%97%e0%a5%82%e0%a4%94%e0%a4%b7%e0%a4%a7-%e0%a4%95', '', '', '2019-08-31 00:41:49', '2019-08-30 18:56:49', '', 0, 'http://dial100.test/?p=24', 0, 'post', '', 0),
(25, 1, '2019-08-31 00:41:44', '2019-08-30 18:56:44', '', 'Screenshot_20190806-083857__01-1080x570[1]', '', 'inherit', 'open', 'closed', '', 'screenshot_20190806-083857__01-1080x5701', '', '', '2019-08-31 00:41:44', '2019-08-30 18:56:44', '', 24, 'http://dial100.test/wp-content/uploads/2019/08/Screenshot_20190806-083857__01-1080x5701.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-08-31 00:41:49', '2019-08-30 18:56:49', '<!-- wp:paragraph -->\n<p>काठमाडौं । ‘सुकुटे विच’को नामले चर्चित सिन्धुपाल्चोको रिसोर्र्टमा लागूऔषधे कारोबार हुने गरेको खुलेको छ । शुक्रबार र शनिवार भिडभाड रहने उक्त रिसोर्टमा सञ्चालककै मिलोमतोमा लागूऔषधको कारोबार हुने गरेको हो । काठमाडौं उपत्यकालगायत देशका बिभिन्न जिल्लाबाट मनोरन्जनका साथै बिदाको सदुपयोग गर्न आन्तरिक र केही बाह्य पर्यटक सुकुटे पुग्छन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यहि भिड मध्यबाट केही लागूऔषधमा फसेका दुव्र्यसनीलाई रिसोर्टका कर्मचारीले नै लागूऔषध उपलब्ध गराउँदै आएको स्रोत बताउँछ । बिषेशगरी उक्त रिसोर्टमा लोकल गाँजा र चरेशको कारोबार हुने गर्छ । यो बिषयमा उक्त रिसोर्टका केही कर्मचारीलाई ग्राहकले जानकारी गराउँदा समेत सामान्य रुपमा लिएका थिए । रिसोर्ट सञ्चालक र कर्मचारीकै मिलोमतोमा उक्त रिसोर्टमा गाँजाको कारोबार हुने गरेपछि ग्राहकको आग्रह पनि नजरअन्दाज गरिएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ठमेलमा सम्पर्क कार्यालय खोलेर दुई दशक अगाडिदेखि सुकुटे रिसोर्ट चल्दै आएको छ । स्रोतका अनुसार उक्त रिसोर्टले कहिले काँही विदेशीलाई मात्र प्रवेश गराएर ‘ट्रान्स पार्टी’ समेत गर्छ । । ‘ट्रान्स पार्टी’ विश्वमै अबैध मानिन्छ । तर प्रहरी प्रशासनको आँखामा छारो हालेर पैसाको लागि सुकुटे संचालकले अबैध लागूऔषधको कारोबार सोही पार्टीमा गर्दै आएका छन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>लागूऔषधको धन्दाका साथै यो समूहले दैनिक लाखौ रुपैंयाँको कारोबार गरे पनि भ्याट बिल भने कुनै ग्राहकलाई पनि दिँदैन । प्रतिव्यक्ति २५ सय रुपैंया लिएर एक रात बस्न तथा सामान्य खानाको व्यवस्था सुकुटेले गरेको छ । शुक्रबार तीन सय र शनिबार दुई सयको हाराहारीमा उक्त रिसोर्टमा ग्राहकको भिड लाग्ने गर्छ । तर कुनै एक जनालाई पनि बिल भने रिसोर्टले दिँदैन । जसबाट दैनिक ३० देखि एक लाखसम्म राजश्व समेत यो रिसोर्टले छल्दै आएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>नेकपाका अध्यक्ष पुष्पकमल दाहल प्रचण्डसमेत यो रिसोर्टमा स–परिवार आरम गर्न पुग्छन् । प्रचण्डमात्र होईन नाम चलेका जिल्लाका नेता देखि बिभिन्न दलका प्रभावशाली नेता समेत यो रिशोर्टमा पुग्ने हुनाले ति रिसोर्ट सञ्चालकले त्यसको फाईदा उठाउँदै रिसोर्टमा लागूऔषधको कारोबार देखि राजश्वछली समेत गर्दै आएको छ । सञ्चालकले प्रचण्ड बसेकै दबाबका आधारमा लागूऔषधको व्यापार गरेको बताइन्छ ।</p>\n<!-- /wp:paragraph -->', 'सुकुटे ‘विच’मा लागूऔषध कारोबार !', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-08-31 00:41:49', '2019-08-30 18:56:49', '', 24, 'http://dial100.test/26/', 0, 'revision', '', 0),
(27, 1, '2019-08-31 00:42:52', '2019-08-30 18:57:52', '<!-- wp:paragraph -->\n<p>नेपाल प्रहरीले ८ जना काज सरुवा गरेको छ। यसअघि प्रहरी निरीक्षक ईन्चार्ज रहने ७ वटा ईलाका प्रहरी कार्यालयमा अब प्रहरी नायब उपरीक्षक खटिने भएका छन्।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>बारा जिल्लाको अति चुनौतिपूर्ण ठाउँको रुपमा हेरिएको ईलाका प्रहरी कार्यालय सिमरामा प्रहरी नायव उपरीक्षक गोविन्द पुरी जाने भएका छन्।उनले यसअघि महानगरीय प्रहरी वृत्त महाराजगन्ज ,ईलाका प्रहरी कार्यालय लेखनाथ जस्ता स्थानको सफल कमाण्ड गरिसकेका छन्। उनले आफ्नो कार्यकालमा महाराजगन्जमा र लेखनाथमा अहिले प्रहरी बसिरहेको भवन निर्माण गर्नुका साथै जनस्थरमा समेत उल्लेखनिय कार्य गरेका थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यस्तै डिएसपी मकेन्द्र कुमार मिश्रको ईप्रका महेन्द्रनगर (सप्तरी), डिएसपी लक्ष्मीराज अधिकारीको ईप्रका बेलबारी मोरङ्ग ,डिएसपी ज्ञान बहादुर बिष्टको ईप्रका मालाखेती ,डिएसपी खगेन्द्र बहादुर खड्काको ईप्रका गजुरी, डिएसपी तुलसीराम अर्यालको ईप्रका गरुडा ,डिएसपी बेद प्रसाद गौतमको वडा प्रहरी कार्यालय (क) बिराटनगर ,डिएसपी गणेश बहादुर बमको जिल्ला प्रहरी कार्यालय कन्चनपुरमा काज सरुवा भएको छ।</p>\n<!-- /wp:paragraph -->', 'आठ डिएसपीको काज सरुवा सिमरामा गोविन्द पुरी', '', 'publish', 'open', 'open', '', '%e0%a4%86%e0%a4%a0-%e0%a4%a1%e0%a4%bf%e0%a4%8f%e0%a4%b8%e0%a4%aa%e0%a5%80%e0%a4%95%e0%a5%8b-%e0%a4%95%e0%a4%be%e0%a4%9c-%e0%a4%b8%e0%a4%b0%e0%a5%81%e0%a4%b5%e0%a4%be-%e0%a4%b8%e0%a4%bf%e0%a4%ae', '', '', '2019-08-31 00:42:52', '2019-08-30 18:57:52', '', 0, 'http://dial100.test/?p=27', 0, 'post', '', 0),
(28, 1, '2019-08-31 00:42:30', '2019-08-30 18:57:30', '', 'DSP_Govinda_Puri-fill-376x412[1]', '', 'inherit', 'open', 'closed', '', 'dsp_govinda_puri-fill-376x4121', '', '', '2019-08-31 00:42:30', '2019-08-30 18:57:30', '', 27, 'http://dial100.test/wp-content/uploads/2019/08/DSP_Govinda_Puri-fill-376x4121.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-08-31 00:42:52', '2019-08-30 18:57:52', '<!-- wp:paragraph -->\n<p>नेपाल प्रहरीले ८ जना काज सरुवा गरेको छ। यसअघि प्रहरी निरीक्षक ईन्चार्ज रहने ७ वटा ईलाका प्रहरी कार्यालयमा अब प्रहरी नायब उपरीक्षक खटिने भएका छन्।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>बारा जिल्लाको अति चुनौतिपूर्ण ठाउँको रुपमा हेरिएको ईलाका प्रहरी कार्यालय सिमरामा प्रहरी नायव उपरीक्षक गोविन्द पुरी जाने भएका छन्।उनले यसअघि महानगरीय प्रहरी वृत्त महाराजगन्ज ,ईलाका प्रहरी कार्यालय लेखनाथ जस्ता स्थानको सफल कमाण्ड गरिसकेका छन्। उनले आफ्नो कार्यकालमा महाराजगन्जमा र लेखनाथमा अहिले प्रहरी बसिरहेको भवन निर्माण गर्नुका साथै जनस्थरमा समेत उल्लेखनिय कार्य गरेका थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यस्तै डिएसपी मकेन्द्र कुमार मिश्रको ईप्रका महेन्द्रनगर (सप्तरी), डिएसपी लक्ष्मीराज अधिकारीको ईप्रका बेलबारी मोरङ्ग ,डिएसपी ज्ञान बहादुर बिष्टको ईप्रका मालाखेती ,डिएसपी खगेन्द्र बहादुर खड्काको ईप्रका गजुरी, डिएसपी तुलसीराम अर्यालको ईप्रका गरुडा ,डिएसपी बेद प्रसाद गौतमको वडा प्रहरी कार्यालय (क) बिराटनगर ,डिएसपी गणेश बहादुर बमको जिल्ला प्रहरी कार्यालय कन्चनपुरमा काज सरुवा भएको छ।</p>\n<!-- /wp:paragraph -->', 'आठ डिएसपीको काज सरुवा सिमरामा गोविन्द पुरी', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-08-31 00:42:52', '2019-08-30 18:57:52', '', 27, 'http://dial100.test/29/', 0, 'revision', '', 0),
(30, 1, '2019-08-31 00:43:14', '2019-08-30 18:58:14', '<!-- wp:paragraph -->\n<p>काठमाडौँ। महानगरीय प्रहरी परिषर टेकु र महानगरीय अपराध महाशाखाले “गुण्डा सफाई ” अभियान सुरु गरेका छन्। प्रहरीले गुण्डाको सूचीनै बनाएर खोजि कार्य सुरु गरेसँगै ठुला तथा टोले गुण्डाहरुको भागाभाग सुरु भएको छ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पछिल्लो समय ठमेल क्षेत्रमा हप्ता अशुली गर्दै हिड्ने टोले गुण्डा भोजे भनिने भोज लामालाई महानगरीय प्रहरी प्रहरी वृत्त लैनचौरले गए राती पक्राउ गरेको छ। प्रहरीको गुण्डा सुचिमा समेत रहेका भोजे ठमेलमा बिशाल लामाको गाडी तोडफोड गरेको केसमा फरार थिए। केहि दिनदेखि ठमेल क्षेत्रमा उनले आफुलाई मासिक रुपमै पैसा चाहिने भन्दै व्यवसायी धम्काउँदै आएको मौखिक उजुरी प्रहरीमा परेको थियो। उनले केहि रात्रीकालिन व्यवसायीलाई मासिक रुपमा ३० हजार देखि ५० हजार सम्म चाहियो भन्दै रेस्टुरेन्टमै गएर टेबुल ठोक्ने गरेको एक रेस्टुरेन्ट संचालकले बताएका छन्।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महानगरीय प्रहरी परिषर टेकुका प्रबक्ता होबिन्द्र बोगटीले यस्ताखाले अपराधीहरुको सफाया हुने बताएका छन्। भोजेले आफुलाई कांग्रेस नेता तिर्थलामाको भाई तथा दिपक मनाङ्गेको उत्तराधिकारी बताउने गरेको पिडितहरुले बताएका छन्।</p>\n<!-- /wp:paragraph -->', 'फरार टोले गुण्डा ‘भोजे’ ठमेलबाट पक्राउ', '', 'publish', 'open', 'open', '', '%e0%a4%ab%e0%a4%b0%e0%a4%be%e0%a4%b0-%e0%a4%9f%e0%a5%8b%e0%a4%b2%e0%a5%87-%e0%a4%97%e0%a5%81%e0%a4%a3%e0%a5%8d%e0%a4%a1%e0%a4%be-%e0%a4%ad%e0%a5%8b%e0%a4%9c%e0%a5%87-%e0%a4%a0', '', '', '2019-08-31 00:43:14', '2019-08-30 18:58:14', '', 0, 'http://dial100.test/?p=30', 0, 'post', '', 0),
(31, 1, '2019-08-31 00:43:14', '2019-08-30 18:58:14', '<!-- wp:paragraph -->\n<p>काठमाडौँ। महानगरीय प्रहरी परिषर टेकु र महानगरीय अपराध महाशाखाले “गुण्डा सफाई ” अभियान सुरु गरेका छन्। प्रहरीले गुण्डाको सूचीनै बनाएर खोजि कार्य सुरु गरेसँगै ठुला तथा टोले गुण्डाहरुको भागाभाग सुरु भएको छ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पछिल्लो समय ठमेल क्षेत्रमा हप्ता अशुली गर्दै हिड्ने टोले गुण्डा भोजे भनिने भोज लामालाई महानगरीय प्रहरी प्रहरी वृत्त लैनचौरले गए राती पक्राउ गरेको छ। प्रहरीको गुण्डा सुचिमा समेत रहेका भोजे ठमेलमा बिशाल लामाको गाडी तोडफोड गरेको केसमा फरार थिए। केहि दिनदेखि ठमेल क्षेत्रमा उनले आफुलाई मासिक रुपमै पैसा चाहिने भन्दै व्यवसायी धम्काउँदै आएको मौखिक उजुरी प्रहरीमा परेको थियो। उनले केहि रात्रीकालिन व्यवसायीलाई मासिक रुपमा ३० हजार देखि ५० हजार सम्म चाहियो भन्दै रेस्टुरेन्टमै गएर टेबुल ठोक्ने गरेको एक रेस्टुरेन्ट संचालकले बताएका छन्।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महानगरीय प्रहरी परिषर टेकुका प्रबक्ता होबिन्द्र बोगटीले यस्ताखाले अपराधीहरुको सफाया हुने बताएका छन्। भोजेले आफुलाई कांग्रेस नेता तिर्थलामाको भाई तथा दिपक मनाङ्गेको उत्तराधिकारी बताउने गरेको पिडितहरुले बताएका छन्।</p>\n<!-- /wp:paragraph -->', 'फरार टोले गुण्डा ‘भोजे’ ठमेलबाट पक्राउ', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-08-31 00:43:14', '2019-08-30 18:58:14', '', 30, 'http://dial100.test/31/', 0, 'revision', '', 0),
(32, 1, '2019-08-31 00:44:14', '2019-08-30 18:59:14', '<!-- wp:paragraph -->\n<p>काठमाडौँ। बैशाख १९ गते अर्थात् शुशिल भण्डारीको दुर्घटनामा परेर निधन भएपछि प्रहरीमा रिक्त रहेको एक डिआइजी पदमा एसएसपी विश्वराज पोखरेललाई बढुवा सिफारिस गरेको दिन। बढुवा हुने लाईनमा थुप्रै एसएसपी थिए। बढुवामा छुटेका अधिकांस एसएसपीको फोन दिउसोबाटनै बन्द थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मसँगै बसिरहेका महानगरीय प्रहरी अपराध महाशाखा टेकुमा कार्यरत एक प्रहरी अधिकारी को मोवाईलमा ‘इण्डिया वान ‘ नाममा सेभ गरिएको एउटा फोन आयो। सधैँ कसैको मोवाईलमा ‘इण्डिया वान’ को फोन आउँदा सामान्य रुपमा लिने मलाई त्यसदिन त्यो फोनको घण्टिले राम्रैसंग तान्यो। कारण थियो त्यसमा फोन गर्ने व्यक्ति थिए महानगरीय अपराध महाशाखाका प्रमुख प्रहरी बरिष्ठ उपरीक्षक धिरज प्रताप सिंह। जो त्यसदिनको बढुवामा छुटेका थिए। मैले सोचेँको थिए भावी आइजिकै रुपमा हेरिएका सिंह त्यसदिन मोवाईल बन्द गरेर तनाबमा बसिरहेका थिए होलान।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मसँगै बसिरहेका साथी सानेपामा घटना घट्यो जानुपर्ने भयो भन्दै निस्किएपछि थाहा पाएँ सानेपामा ग्याङ्ग फाईट हुँदा एकजनाको छुरा प्रहार गरेर हत्या भएको रहेछ। एसएसपी सिंह सो घटनाको अनुसन्धानको लागि आवश्यक निर्देशन दिँदै थिए। त्यसको एक घण्टामै अन्सल शाक्यको हत्यामा संग्लग्न २ जना पक्राउ परे।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यसदिन मलाई महशुस भयो मैले बुझेँको ‘धिरज’ र धिरजमा फरक रहेछ। चेक सर्ट ,लुज पाइन्ट र क्याजुअल लेदर सुजमा देखिने धिरज र एसएसपी धिरजमा फरक रहेछ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>२०४९ साल चैत्र ११ गते प्रहरी निरीक्षकको बर्दी लगाउँदै गर्दा देखेको सपना टुट्दा उनि बिचलित थिएनन।कार्यक्षेत्रमा आफ्नो बाक्लो उपस्थिति देखाईरहेका थिए। बढुवामा छुट्दाको ताजा पिडा उनले एसपी नरेन्द्र उप्रेतीको राजिनामामा देखेका छन्। जो राजिनामा अघि उनकै मातहतमा कार्यरत थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जुन समयमा एसएसपी धिरज प्रताप सिंहले अपराध महाशाखाको कमाण्ड सम्हाले त्यतिबेला महाशाखामा काम गर्न त्यति सजिलो थिएन। तत्कालिन एसएसपी दिनेश अमात्यले महाशाखाको सामान्य कमाण्ड गरेका थिए। महाशाखाले जुन गतिमा काम गर्नुपर्ने थियो त्यो गतिमा काम भईरहेको थिएन। उनिपछि कमाण्ड सम्हालेका दिवेश लोहनी ३३ किलो सुन प्रकरणमा निलम्बन भए । लोहनी सँगै महाशाखामै कार्यरत अन्य दुई प्रहरी अधिकारि पनि निलम्बनमै परे । त्यसपछि महाशाखा हाजिर भएका थिए एसएसपी धिरज प्रताप सिंह। महाशाखामा कार्यरत धेरै प्रहरीको मनोबल घटेको बेलामा उनीहरुको मनोबल उच्च राख्दै काम गराउँनु सिंहको पहिलो चुनौती थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>घैंटे इन्काउण्टर पछि शान्त रहेका गुण्डा सलबलाउन थालिसकेका थिए। उपत्यकामा बढ्दो अपराधलाई नियन्त्रणमा ल्याउन ठुलै चुनौती थियो। त्यसमाथि राजनीतिक आवरणमा गरिने अपराध झन भयावह थियो। केहि समय अगाडिमात्र निर्माण व्यवसायी महासंघका अध्यक्ष शरद कुमार गौचनमाथि दिनदहाडै गोलि हानि हत्या गरिएको थियो। जुन घटनाले व्यवसायी र सर्वसाधारण त्रसित थिए। त्यस्तो समयमा महाशाखालाई पुरानै पोजिसनमा उभ्याउनु राम्रै चुनौती थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong><em>४ इन्काउण्टर</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>धिरज प्रताप सिंहको कार्यकालमा अपराध महाशाखाले ४ इन्काउण्टर गर्यो। जसमा २ जना घाइते भए भने २ जना प्रहरी सँगको मुठभेट मारिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>२०७५ साल जेष्ठ २८ गते ललितपुरमा महाशाखाको टोलीले विभिन्न अपराधिक क्रियाकलापमा संलग्न अशोक लामामाथि प्रहरीले गोली प्रहार गरि नियन्त्रणमा लियो । उनको साथबाट दुई राउन्ड गोलीसहितको एउटा पेस्तोल बरामद भएको थियो। लामाले ललिलपुरका घरजग्गा ब्यावसायीलाई धम्काउने, क्रसर उद्योगबाट चन्दा उठाउने गरेका थिए । अशोक लामा गुण्डानाइके दावा लामाको सहयोगीसमेत रहेका थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>२०७५ साल असार ७ गते महानगरीय अपराध महाशाखाको टोलीले लुटपाटमा संलग्न खुडे भनिने सिन्धुपाल्चोक, बाह्रबीसेका अमरबहादुर तामाङलाई नियन्त्रणमा लिने क्रममा गोलि प्रहार गर्यो। प्रहरीले उनको साथबाट एक थान कटुवा पेस्तोल र त्यसमा लाग्ने दुई राउण्ड गोली र एक हजार २०० अमेरिकी डलर र आठ बिटा नक्कली नोटको आकारको कागजसमेत बरामद गरेको थियो । अमरले २०७५ जेठ २४ गते भक्तपुरमा ताप्लेजुङका वीरेन तामाङलाई डलर साटिदिन्छु भनी बोलाएर रु १९ लाख ६० हजार लुटेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यस्तै २०७५ साल साउन २० गते जिल्ला सिन्धुपाल्चोक मेलम्ची न.पा. वडा नं. ९ ज्यामिरे घर भई काठमाण्डौ जिल्ला का.म.न.पा. वडा नं. ३२ काँडाघारी बस्ने चमेली खड्काको छोरा वर्ष ११ को निशान खड्कालाई अपहरण गरी हत्या गर्ने कार्यमा संलग्न रहेका नुवाकोट जिल्ला घर भएका गोपाल तामाङ र सिन्धुपाल्चोक कर्थली घर भएका अजय तामाङको मिती २०७५।०४।२१ गते जिल्ला भक्तपुर सुर्य्विनायक न.पा. ८ पाईलट बाबाको आश्रम जाने बाटो स्थित सुर्य्विनायक सामुदायिक जंगलमा प्रहरीसँग मुठभेड हुँदा मृत्यु भएको ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यस्तै २०७५।०८।२१ गते दिउँसो काठमाडौँको कालोपुलमा बिभिन्न डाँका, लुटपाटका घटनामा संलग्न रही फरार रहेका जिल्ला सुनसरी ईटहरी न.पा. वडा नं. ५ घर भई का.म.न.पा. वडा नं. २९ अनामनगर बस्ने बर्ष ४६ को राजन लिम्बूलाई फेला पारी नियन्त्रणमा लिने क्रममा लिम्बुले प्रहरी टोलीतर्फ लक्षित गरी साथमा रहेको हतियार (पेस्तोल) देखाई प्रहार गर्न खोज्दा प्रहरी टोलीले आत्मरक्षाको लागि जबाफी फाईरिङ गर्दा लिम्बुको बायाँ खुट्टाको तिघ्रामा गोली प्रहर भएको थियो। निजको साथमा टाईप ५४ पेस्तोल थान–१, ऐ. को म्याग्जिन लोड भएको अबस्थामा रहेको ४ राउण्ड गोली फेला परी बरामद भएको थियो।&nbsp;<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>गौचन हत्यामा संलग्न र कनकमणि दीक्षितको हत्या गर्न खोज्ने पक्राउ</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महाशाखाको टोलीले २०७४।०६।२३ गते दिउँसो नेपाल निर्माण व्यवसायी महासँघका अध्यक्ष शरद कुमार गौचन वा. १३ च. ४९४८ नं. को गाडीमा सवार रहेको अवस्थामा खरिबोटमा गोली प्रहार गरी हत्या गरेको घटनामा सलग्न रहेका काले भन्ने अम्वर बहादुर राना, लोप्साङ्ग लामा भन्ने सोम तामाङ्ग, काले दाह्री भन्ने रोशन वुढाथोकी मिति २०७५।०७।१२ गते विहान झापाको मेचिनगर नगरपालिका वडा नं. ६ काकडभिट्टाबाट पक्राउ गरिएको थियो । उक्त घटनामा हतियार र गोली समिरमान सिंह बस्नेतको श्रीमती माया शेरचन बस्नेतले दिएको भनि निजहरुले अदालतमा बयान दिएको थप खुल्न आएकोले मिति २०७५।०७।१८ गते काठमाडौँको दुईधाराबाट माया शेरचन बस्नेतलाई समेत पक्राउ गरेको थियो। पक्राउ परेका सबै व्यक्तिहरु मिलेर हाइप्रोफ़ाइल कनकमणि दीक्षितको समेत हत्या योजना बनाएका थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>सट्टेबाजिका नाइके पक्राउ</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जनकपुर नगरपालिका वडा नं. ३ घर भई का.म.न.पा. वडा नं. ४ पानीपोखरी बस्ने अमृत भन्ने नथमल अग्रवालले भारतमा चलेको IPL क्रिकेटमा सट्टावाजीमा रकम राख्दा ३ महिनामा तेव्वर हुन्छ, रकम हारेमा रकम मैले फिर्ता दिन्छ भनि प्रलोभन देखाई विश्वासमा पारी राकेश कुमार सिंह समेत ६ जना व्यक्तिहरुलाई जम्मा रु. २,४०,००,०००।– (दुई करोड चालिस लाख) ठगी गरेको महाशाखामा जाहेरी दरखास्त परेपछि महाशाखाको टोलीले अमृत भन्ने नथमल अग्रवाललाई मिति २०७५।०३।००९ गते वेलुका काठमाण्डौका पानीपोखरीबाट नगद रु. ४,८०,०००।–, विभिन्न बैंकको ATM कार्डहरु सहित पक्राउ गरी सम्पती सुद्धिकरण समेको कसूरमा आवश्यक अनुसन्धानक कारवाहीको लागि पठाईएको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>साथै</strong>…..</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महाशाखाले असार १२ गते ललितपुरका महेशबहादुर सिंह, विरेन्द्रलाल श्रेष्ठलगायतबाट हतियार जफत गरेको थियो । काठमाडौं र ललितपुर जिल्ला प्रशासन कार्यालयबाट हतियार राख्ने अनुमति लिएर महेशबहादुर सिंहले मिटर ब्याजको धन्दा चलाउँदै आएका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;ललितपुरको नख्खुस्थित एनसेलको कार्यालयमा बम विष्फोट गराउने नेत्रविक्रम चन्द ‘विप्लव’ नेतृत्वको नेकपाका शिव धिमाल र डिकेन्द्र राईलाई पनि एसएसपी सिंहकै टोलीले पक्राउ गरेर कारबाही गरेको थियो । साथै काठमाण्डौको बसुन्धरा स्थित रोहन गुरुङको घरमा बम बिष्फोट गर्ने बिष्फोट गराउने बिशाल तामाङ भन्ने राजिब तामाङ, नुम बहादुर बि.क. लाई समेत पक्राउ गरेको थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>चैत्र २६ गते रानीबारीस्थित लालेन्द्र शेरचनको घरमा लुटपाट गर्ने समिरमान समूहका नवराज तामाङ, दिपेश भन्ने सन्त बहादुर तामाङ, बिक्रम श्रेष्ठ र दिपक रन्जितकार र रवि कुमार तामाङ्गलाई डाँका चोरी समेतको कसूरमा महाशाखाले पक्राउ गरी अनुसन्धान गरेको थियो । एसएसपी सिंहकै सक्रियतामा भएको यो घटनाको अनुसन्धानमा पश्च्यात यो घटनामा मुछिएका एक डिएसपी पनि निलम्बनमा परेका छन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महाशाखाले ज्यान मार्ने उद्योग मुद्दामा २ वर्ष कैद भुक्तान गरी छुटेका गुण्डा नाइके राजु गोर्खालीलाई काठमाडौं मलमा ठगी गरेको आरोपमा पक्राउ गरी मुद्दा चलाएको थियो । १९ भदौ २०७५ मा गुण्डा नाइके सत्यमान लामालाई ठमेलबाट पक्राउ गरी ,बिभिन्न राजनैतिक दबाबमा समेत छोड्न मानेका थिएनन । गुण्डा नाइके लामालाई छुटाउन पुगेकी नेकपाकी सांसद नवीना लामालाई एसएसपी सिंहले हप्काएर पठाएको कुराले चौतर्फी प्रसंसा बटुलेको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अपराध महाशाखाको टोलीले गोंगबुस्थित त्रिबेणी गेष्ट हाउसका सञ्चालक प्रबिण कुँवरको छोरा बर्ष ८ को प्रयास कुँवरलाई अपहरण गरी हत्या गर्ने कार्यमा संलग्न महेन्द्र एस.के. (सार्की) लाई २४ घण्टा भित्र पक्राउ गर्न सफल भएको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>एसएसपी धिरज प्रताप सिंहले अपराध महाशाखाको जिम्मेवारी सम्हालेपछि महाशाखाबाट ४४८ वटा मुद्दा चलेको थियो भने ६६८ जना मानिस पक्राउ परेका थिए।</p>\n<!-- /wp:paragraph -->', '‘केरकार’का धिरज', '', 'publish', 'open', 'open', '', '%e0%a4%95%e0%a5%87%e0%a4%b0%e0%a4%95%e0%a4%be%e0%a4%b0%e0%a4%95%e0%a4%be-%e0%a4%a7%e0%a4%bf%e0%a4%b0%e0%a4%9c', '', '', '2019-08-31 00:44:14', '2019-08-30 18:59:14', '', 0, 'http://dial100.test/?p=32', 0, 'post', '', 0),
(33, 1, '2019-08-31 00:44:02', '2019-08-30 18:59:02', '', '59834865_334634964097264_3094884890114523136_n[1]', '', 'inherit', 'open', 'closed', '', '59834865_334634964097264_3094884890114523136_n1', '', '', '2019-08-31 00:44:02', '2019-08-30 18:59:02', '', 32, 'http://dial100.test/wp-content/uploads/2019/08/59834865_334634964097264_3094884890114523136_n1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(34, 1, '2019-08-31 00:44:14', '2019-08-30 18:59:14', '<!-- wp:paragraph -->\n<p>काठमाडौँ। बैशाख १९ गते अर्थात् शुशिल भण्डारीको दुर्घटनामा परेर निधन भएपछि प्रहरीमा रिक्त रहेको एक डिआइजी पदमा एसएसपी विश्वराज पोखरेललाई बढुवा सिफारिस गरेको दिन। बढुवा हुने लाईनमा थुप्रै एसएसपी थिए। बढुवामा छुटेका अधिकांस एसएसपीको फोन दिउसोबाटनै बन्द थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मसँगै बसिरहेका महानगरीय प्रहरी अपराध महाशाखा टेकुमा कार्यरत एक प्रहरी अधिकारी को मोवाईलमा ‘इण्डिया वान ‘ नाममा सेभ गरिएको एउटा फोन आयो। सधैँ कसैको मोवाईलमा ‘इण्डिया वान’ को फोन आउँदा सामान्य रुपमा लिने मलाई त्यसदिन त्यो फोनको घण्टिले राम्रैसंग तान्यो। कारण थियो त्यसमा फोन गर्ने व्यक्ति थिए महानगरीय अपराध महाशाखाका प्रमुख प्रहरी बरिष्ठ उपरीक्षक धिरज प्रताप सिंह। जो त्यसदिनको बढुवामा छुटेका थिए। मैले सोचेँको थिए भावी आइजिकै रुपमा हेरिएका सिंह त्यसदिन मोवाईल बन्द गरेर तनाबमा बसिरहेका थिए होलान।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मसँगै बसिरहेका साथी सानेपामा घटना घट्यो जानुपर्ने भयो भन्दै निस्किएपछि थाहा पाएँ सानेपामा ग्याङ्ग फाईट हुँदा एकजनाको छुरा प्रहार गरेर हत्या भएको रहेछ। एसएसपी सिंह सो घटनाको अनुसन्धानको लागि आवश्यक निर्देशन दिँदै थिए। त्यसको एक घण्टामै अन्सल शाक्यको हत्यामा संग्लग्न २ जना पक्राउ परे।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यसदिन मलाई महशुस भयो मैले बुझेँको ‘धिरज’ र धिरजमा फरक रहेछ। चेक सर्ट ,लुज पाइन्ट र क्याजुअल लेदर सुजमा देखिने धिरज र एसएसपी धिरजमा फरक रहेछ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>२०४९ साल चैत्र ११ गते प्रहरी निरीक्षकको बर्दी लगाउँदै गर्दा देखेको सपना टुट्दा उनि बिचलित थिएनन।कार्यक्षेत्रमा आफ्नो बाक्लो उपस्थिति देखाईरहेका थिए। बढुवामा छुट्दाको ताजा पिडा उनले एसपी नरेन्द्र उप्रेतीको राजिनामामा देखेका छन्। जो राजिनामा अघि उनकै मातहतमा कार्यरत थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जुन समयमा एसएसपी धिरज प्रताप सिंहले अपराध महाशाखाको कमाण्ड सम्हाले त्यतिबेला महाशाखामा काम गर्न त्यति सजिलो थिएन। तत्कालिन एसएसपी दिनेश अमात्यले महाशाखाको सामान्य कमाण्ड गरेका थिए। महाशाखाले जुन गतिमा काम गर्नुपर्ने थियो त्यो गतिमा काम भईरहेको थिएन। उनिपछि कमाण्ड सम्हालेका दिवेश लोहनी ३३ किलो सुन प्रकरणमा निलम्बन भए । लोहनी सँगै महाशाखामै कार्यरत अन्य दुई प्रहरी अधिकारि पनि निलम्बनमै परे । त्यसपछि महाशाखा हाजिर भएका थिए एसएसपी धिरज प्रताप सिंह। महाशाखामा कार्यरत धेरै प्रहरीको मनोबल घटेको बेलामा उनीहरुको मनोबल उच्च राख्दै काम गराउँनु सिंहको पहिलो चुनौती थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>घैंटे इन्काउण्टर पछि शान्त रहेका गुण्डा सलबलाउन थालिसकेका थिए। उपत्यकामा बढ्दो अपराधलाई नियन्त्रणमा ल्याउन ठुलै चुनौती थियो। त्यसमाथि राजनीतिक आवरणमा गरिने अपराध झन भयावह थियो। केहि समय अगाडिमात्र निर्माण व्यवसायी महासंघका अध्यक्ष शरद कुमार गौचनमाथि दिनदहाडै गोलि हानि हत्या गरिएको थियो। जुन घटनाले व्यवसायी र सर्वसाधारण त्रसित थिए। त्यस्तो समयमा महाशाखालाई पुरानै पोजिसनमा उभ्याउनु राम्रै चुनौती थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong><em>४ इन्काउण्टर</em></strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>धिरज प्रताप सिंहको कार्यकालमा अपराध महाशाखाले ४ इन्काउण्टर गर्यो। जसमा २ जना घाइते भए भने २ जना प्रहरी सँगको मुठभेट मारिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>२०७५ साल जेष्ठ २८ गते ललितपुरमा महाशाखाको टोलीले विभिन्न अपराधिक क्रियाकलापमा संलग्न अशोक लामामाथि प्रहरीले गोली प्रहार गरि नियन्त्रणमा लियो । उनको साथबाट दुई राउन्ड गोलीसहितको एउटा पेस्तोल बरामद भएको थियो। लामाले ललिलपुरका घरजग्गा ब्यावसायीलाई धम्काउने, क्रसर उद्योगबाट चन्दा उठाउने गरेका थिए । अशोक लामा गुण्डानाइके दावा लामाको सहयोगीसमेत रहेका थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>२०७५ साल असार ७ गते महानगरीय अपराध महाशाखाको टोलीले लुटपाटमा संलग्न खुडे भनिने सिन्धुपाल्चोक, बाह्रबीसेका अमरबहादुर तामाङलाई नियन्त्रणमा लिने क्रममा गोलि प्रहार गर्यो। प्रहरीले उनको साथबाट एक थान कटुवा पेस्तोल र त्यसमा लाग्ने दुई राउण्ड गोली र एक हजार २०० अमेरिकी डलर र आठ बिटा नक्कली नोटको आकारको कागजसमेत बरामद गरेको थियो । अमरले २०७५ जेठ २४ गते भक्तपुरमा ताप्लेजुङका वीरेन तामाङलाई डलर साटिदिन्छु भनी बोलाएर रु १९ लाख ६० हजार लुटेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यस्तै २०७५ साल साउन २० गते जिल्ला सिन्धुपाल्चोक मेलम्ची न.पा. वडा नं. ९ ज्यामिरे घर भई काठमाण्डौ जिल्ला का.म.न.पा. वडा नं. ३२ काँडाघारी बस्ने चमेली खड्काको छोरा वर्ष ११ को निशान खड्कालाई अपहरण गरी हत्या गर्ने कार्यमा संलग्न रहेका नुवाकोट जिल्ला घर भएका गोपाल तामाङ र सिन्धुपाल्चोक कर्थली घर भएका अजय तामाङको मिती २०७५।०४।२१ गते जिल्ला भक्तपुर सुर्य्विनायक न.पा. ८ पाईलट बाबाको आश्रम जाने बाटो स्थित सुर्य्विनायक सामुदायिक जंगलमा प्रहरीसँग मुठभेड हुँदा मृत्यु भएको ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यस्तै २०७५।०८।२१ गते दिउँसो काठमाडौँको कालोपुलमा बिभिन्न डाँका, लुटपाटका घटनामा संलग्न रही फरार रहेका जिल्ला सुनसरी ईटहरी न.पा. वडा नं. ५ घर भई का.म.न.पा. वडा नं. २९ अनामनगर बस्ने बर्ष ४६ को राजन लिम्बूलाई फेला पारी नियन्त्रणमा लिने क्रममा लिम्बुले प्रहरी टोलीतर्फ लक्षित गरी साथमा रहेको हतियार (पेस्तोल) देखाई प्रहार गर्न खोज्दा प्रहरी टोलीले आत्मरक्षाको लागि जबाफी फाईरिङ गर्दा लिम्बुको बायाँ खुट्टाको तिघ्रामा गोली प्रहर भएको थियो। निजको साथमा टाईप ५४ पेस्तोल थान–१, ऐ. को म्याग्जिन लोड भएको अबस्थामा रहेको ४ राउण्ड गोली फेला परी बरामद भएको थियो।&nbsp;<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>गौचन हत्यामा संलग्न र कनकमणि दीक्षितको हत्या गर्न खोज्ने पक्राउ</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महाशाखाको टोलीले २०७४।०६।२३ गते दिउँसो नेपाल निर्माण व्यवसायी महासँघका अध्यक्ष शरद कुमार गौचन वा. १३ च. ४९४८ नं. को गाडीमा सवार रहेको अवस्थामा खरिबोटमा गोली प्रहार गरी हत्या गरेको घटनामा सलग्न रहेका काले भन्ने अम्वर बहादुर राना, लोप्साङ्ग लामा भन्ने सोम तामाङ्ग, काले दाह्री भन्ने रोशन वुढाथोकी मिति २०७५।०७।१२ गते विहान झापाको मेचिनगर नगरपालिका वडा नं. ६ काकडभिट्टाबाट पक्राउ गरिएको थियो । उक्त घटनामा हतियार र गोली समिरमान सिंह बस्नेतको श्रीमती माया शेरचन बस्नेतले दिएको भनि निजहरुले अदालतमा बयान दिएको थप खुल्न आएकोले मिति २०७५।०७।१८ गते काठमाडौँको दुईधाराबाट माया शेरचन बस्नेतलाई समेत पक्राउ गरेको थियो। पक्राउ परेका सबै व्यक्तिहरु मिलेर हाइप्रोफ़ाइल कनकमणि दीक्षितको समेत हत्या योजना बनाएका थिए।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>सट्टेबाजिका नाइके पक्राउ</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जनकपुर नगरपालिका वडा नं. ३ घर भई का.म.न.पा. वडा नं. ४ पानीपोखरी बस्ने अमृत भन्ने नथमल अग्रवालले भारतमा चलेको IPL क्रिकेटमा सट्टावाजीमा रकम राख्दा ३ महिनामा तेव्वर हुन्छ, रकम हारेमा रकम मैले फिर्ता दिन्छ भनि प्रलोभन देखाई विश्वासमा पारी राकेश कुमार सिंह समेत ६ जना व्यक्तिहरुलाई जम्मा रु. २,४०,००,०००।– (दुई करोड चालिस लाख) ठगी गरेको महाशाखामा जाहेरी दरखास्त परेपछि महाशाखाको टोलीले अमृत भन्ने नथमल अग्रवाललाई मिति २०७५।०३।००९ गते वेलुका काठमाण्डौका पानीपोखरीबाट नगद रु. ४,८०,०००।–, विभिन्न बैंकको ATM कार्डहरु सहित पक्राउ गरी सम्पती सुद्धिकरण समेको कसूरमा आवश्यक अनुसन्धानक कारवाहीको लागि पठाईएको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>साथै</strong>…..</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महाशाखाले असार १२ गते ललितपुरका महेशबहादुर सिंह, विरेन्द्रलाल श्रेष्ठलगायतबाट हतियार जफत गरेको थियो । काठमाडौं र ललितपुर जिल्ला प्रशासन कार्यालयबाट हतियार राख्ने अनुमति लिएर महेशबहादुर सिंहले मिटर ब्याजको धन्दा चलाउँदै आएका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;ललितपुरको नख्खुस्थित एनसेलको कार्यालयमा बम विष्फोट गराउने नेत्रविक्रम चन्द ‘विप्लव’ नेतृत्वको नेकपाका शिव धिमाल र डिकेन्द्र राईलाई पनि एसएसपी सिंहकै टोलीले पक्राउ गरेर कारबाही गरेको थियो । साथै काठमाण्डौको बसुन्धरा स्थित रोहन गुरुङको घरमा बम बिष्फोट गर्ने बिष्फोट गराउने बिशाल तामाङ भन्ने राजिब तामाङ, नुम बहादुर बि.क. लाई समेत पक्राउ गरेको थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>चैत्र २६ गते रानीबारीस्थित लालेन्द्र शेरचनको घरमा लुटपाट गर्ने समिरमान समूहका नवराज तामाङ, दिपेश भन्ने सन्त बहादुर तामाङ, बिक्रम श्रेष्ठ र दिपक रन्जितकार र रवि कुमार तामाङ्गलाई डाँका चोरी समेतको कसूरमा महाशाखाले पक्राउ गरी अनुसन्धान गरेको थियो । एसएसपी सिंहकै सक्रियतामा भएको यो घटनाको अनुसन्धानमा पश्च्यात यो घटनामा मुछिएका एक डिएसपी पनि निलम्बनमा परेका छन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>महाशाखाले ज्यान मार्ने उद्योग मुद्दामा २ वर्ष कैद भुक्तान गरी छुटेका गुण्डा नाइके राजु गोर्खालीलाई काठमाडौं मलमा ठगी गरेको आरोपमा पक्राउ गरी मुद्दा चलाएको थियो । १९ भदौ २०७५ मा गुण्डा नाइके सत्यमान लामालाई ठमेलबाट पक्राउ गरी ,बिभिन्न राजनैतिक दबाबमा समेत छोड्न मानेका थिएनन । गुण्डा नाइके लामालाई छुटाउन पुगेकी नेकपाकी सांसद नवीना लामालाई एसएसपी सिंहले हप्काएर पठाएको कुराले चौतर्फी प्रसंसा बटुलेको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अपराध महाशाखाको टोलीले गोंगबुस्थित त्रिबेणी गेष्ट हाउसका सञ्चालक प्रबिण कुँवरको छोरा बर्ष ८ को प्रयास कुँवरलाई अपहरण गरी हत्या गर्ने कार्यमा संलग्न महेन्द्र एस.के. (सार्की) लाई २४ घण्टा भित्र पक्राउ गर्न सफल भएको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>एसएसपी धिरज प्रताप सिंहले अपराध महाशाखाको जिम्मेवारी सम्हालेपछि महाशाखाबाट ४४८ वटा मुद्दा चलेको थियो भने ६६८ जना मानिस पक्राउ परेका थिए।</p>\n<!-- /wp:paragraph -->', '‘केरकार’का धिरज', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-08-31 00:44:14', '2019-08-30 18:59:14', '', 32, 'http://dial100.test/34/', 0, 'revision', '', 0),
(35, 1, '2019-08-31 00:47:22', '2019-08-30 19:02:22', '<!-- wp:paragraph -->\n<p>काठमाडौँ। गत शुक्रबार होटल ब्यबसायी सुमित मैनालीको घरमा काम गर्न बसेकी १४ बर्षीय सुनिता थामी मृत अवस्थामा फेला परेकी थिइन्। प्रहरीले हिजो मात्र सार्वजनिक गरेको सो घटनाको प्रकृति हेर्दा उनको मृत्यु शंकास्पद रहेको प्रत्यक्षदर्शीले बताएका छन्। उनको मृत शरीर घरको पानी ट्यांकीको मुनि झुण्डिएको अवस्थामा भेटिएको थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>चार वर्ष अगाडी दोलखा जिल्ला भीमेश्वर नगरपालिका घर भएकी सुनिता थामीलाई कमला मैनालीको सहयोगमा काठमाडौँ ल्याई सुमित मैनालीको घरमा काम गर्न राखिएको थियो। मृतक परिवारका अनुसार सुनितालाई ४ बर्षसम्म अत्यन्त न्युन पारिश्रमिकमा परिवारलाई समेत भेट्न नदिई बन्दक बनाएर राखेका थिए। बालशोषण गरेको मैनालीले उनलाई बर्षमा ३ पटक मात्र पारिश्रमिक दिएको परिवारले बताएको छ। मृतक सुनिताको परिवारले उनलाई बलात्कार पछि हत्या गरीएको बताउंदै आएको छ। उनका एक आफन्त भन्छन।,” अपराधिक तरिकाले चरम यातना दिई सुनितालाई बलात्कार गरेर मारेका हुन् ,उनको शरिरलाई पानीट्यांकीमा झुण्डाएर आत्महत्या देखाउन खोजिएको मात्र हो। “</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रत्यक्षदर्शीका अनुसार प्रहरीले लासलाई झुण्डिएको ठाउँबाट ४ मिटर जति पर सारी हतार हतार मुजुल्का तयार पारेर परिवारको सहमति बिनै रातारात पोष्टमार्टम गर्ने भन्दै टिचिङ्ग हस्पिटल लगेको थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>सुनिता झुण्डिएको भनिएको ठाउँ रगताम्मे थियो र त्यहाँ कुनै मिडियालाई प्रवेश दिईएको थिएन।घटना शंकास्पद छ भन्दाभन्दै हतार हतार किन शव उठाईयो ,किन अपराधीलाई खोज्न आनाकानी गर्यो भन्दै पिडित परिवारले महानगरीय प्रहरी वृत्तका प्रमुख डिएसपी फणिन्द्र प्रसाईंको भूमिका माथिनै शंका गरेका छन्।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यस क्षेत्रका सबैजसो होटलहरुमा चरम बालशोषण हुने गरेको भएपनि होटल ब्यबसायी संघका केहि पदाधिकारीसँग उनको राम्रै उठबस भएकाले कुनैपनि होटलवालाई कारवाही गर्न सकेका छैनन्। पछिल्लो समय उनले बालुवा एक बालुवा तस्करको ओलिभ रेस्टुरेन्ट नजिकै रहेको अफिसमा बसेर सेटिंग मिलाउने गरेको नाम नबताउने शर्तमा एक प्रहरीले बताएका छन्। आफुलाई आईजी मान्छे हुँ भन्दै हिड्ने बालुवा तस्करको अफिसमा विवादित मान्छेहरुलाई उनले पटक पटक भेट्दै आएको कुरा श्रोतले बताएको छ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पछिलो समय निक्कै विवादमा आएका बृतका डिएसपी फणिन्द्र प्रसाइँको कमजोर कमाण्डका कारण महाराजगन्ज वृत्तमा पटक पटक यस्ता घटना भईरहेका छन् । यसअघि हत्या घटना मिलाउन सेटिङ मिलाएको अभियोगमा वृत्त महाराजगंजमा कार्यरत एक इन्सपेक्टर निलम्बनमा परेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>सेटिङमा मुछिएका डिएसपी प्रसाईंले भने शक्तिको आडमा उन्मुक्ति पाएका थिए । केहि सर्बसाधारणले अनुसन्धानमा ल्याइएको व्यक्ति फरार भएपछि डिएसपी प्रसाइँको सेटिङमा भगाइएको हुनसक्ने आशंका समेत गरेका थिए । उक्त क्षेत्रमा लूटपाट र चोरीका घटना दैनिक जसो बढिरहे पनि नेकपा निकट केहि नेताको दबाबका कारण महाराजगंज वृत्तको प्रमुख भएका प्रसाईंलाई तालुक कार्यालयले समेत कारवाही गर्न सकेको छैन।</p>\n<!-- /wp:paragraph -->', 'बसुन्धरामा १४ बर्षीय बालिकाको शंकास्पद मृत्यु, पिडित भन्छन डिएसपी प्रसाईंले अपराधी जोगाए', '', 'publish', 'open', 'open', '', '%e0%a4%ac%e0%a4%b8%e0%a5%81%e0%a4%a8%e0%a5%8d%e0%a4%a7%e0%a4%b0%e0%a4%be%e0%a4%ae%e0%a4%be-%e0%a5%a7%e0%a5%aa-%e0%a4%ac%e0%a4%b0%e0%a5%8d%e0%a4%b7%e0%a5%80%e0%a4%af-%e0%a4%ac%e0%a4%be%e0%a4%b2', '', '', '2019-08-31 00:47:22', '2019-08-30 19:02:22', '', 0, 'http://dial100.test/?p=35', 0, 'post', '', 0),
(36, 1, '2019-08-31 00:47:14', '2019-08-30 19:02:14', '', 'received_373815649870153-1080x570[1]', '', 'inherit', 'open', 'closed', '', 'received_373815649870153-1080x5701', '', '', '2019-08-31 00:47:14', '2019-08-30 19:02:14', '', 35, 'http://dial100.test/wp-content/uploads/2019/08/received_373815649870153-1080x5701.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-08-31 00:47:22', '2019-08-30 19:02:22', '<!-- wp:paragraph -->\n<p>काठमाडौँ। गत शुक्रबार होटल ब्यबसायी सुमित मैनालीको घरमा काम गर्न बसेकी १४ बर्षीय सुनिता थामी मृत अवस्थामा फेला परेकी थिइन्। प्रहरीले हिजो मात्र सार्वजनिक गरेको सो घटनाको प्रकृति हेर्दा उनको मृत्यु शंकास्पद रहेको प्रत्यक्षदर्शीले बताएका छन्। उनको मृत शरीर घरको पानी ट्यांकीको मुनि झुण्डिएको अवस्थामा भेटिएको थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>चार वर्ष अगाडी दोलखा जिल्ला भीमेश्वर नगरपालिका घर भएकी सुनिता थामीलाई कमला मैनालीको सहयोगमा काठमाडौँ ल्याई सुमित मैनालीको घरमा काम गर्न राखिएको थियो। मृतक परिवारका अनुसार सुनितालाई ४ बर्षसम्म अत्यन्त न्युन पारिश्रमिकमा परिवारलाई समेत भेट्न नदिई बन्दक बनाएर राखेका थिए। बालशोषण गरेको मैनालीले उनलाई बर्षमा ३ पटक मात्र पारिश्रमिक दिएको परिवारले बताएको छ। मृतक सुनिताको परिवारले उनलाई बलात्कार पछि हत्या गरीएको बताउंदै आएको छ। उनका एक आफन्त भन्छन।,” अपराधिक तरिकाले चरम यातना दिई सुनितालाई बलात्कार गरेर मारेका हुन् ,उनको शरिरलाई पानीट्यांकीमा झुण्डाएर आत्महत्या देखाउन खोजिएको मात्र हो। “</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रत्यक्षदर्शीका अनुसार प्रहरीले लासलाई झुण्डिएको ठाउँबाट ४ मिटर जति पर सारी हतार हतार मुजुल्का तयार पारेर परिवारको सहमति बिनै रातारात पोष्टमार्टम गर्ने भन्दै टिचिङ्ग हस्पिटल लगेको थियो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>सुनिता झुण्डिएको भनिएको ठाउँ रगताम्मे थियो र त्यहाँ कुनै मिडियालाई प्रवेश दिईएको थिएन।घटना शंकास्पद छ भन्दाभन्दै हतार हतार किन शव उठाईयो ,किन अपराधीलाई खोज्न आनाकानी गर्यो भन्दै पिडित परिवारले महानगरीय प्रहरी वृत्तका प्रमुख डिएसपी फणिन्द्र प्रसाईंको भूमिका माथिनै शंका गरेका छन्।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>त्यस क्षेत्रका सबैजसो होटलहरुमा चरम बालशोषण हुने गरेको भएपनि होटल ब्यबसायी संघका केहि पदाधिकारीसँग उनको राम्रै उठबस भएकाले कुनैपनि होटलवालाई कारवाही गर्न सकेका छैनन्। पछिल्लो समय उनले बालुवा एक बालुवा तस्करको ओलिभ रेस्टुरेन्ट नजिकै रहेको अफिसमा बसेर सेटिंग मिलाउने गरेको नाम नबताउने शर्तमा एक प्रहरीले बताएका छन्। आफुलाई आईजी मान्छे हुँ भन्दै हिड्ने बालुवा तस्करको अफिसमा विवादित मान्छेहरुलाई उनले पटक पटक भेट्दै आएको कुरा श्रोतले बताएको छ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पछिलो समय निक्कै विवादमा आएका बृतका डिएसपी फणिन्द्र प्रसाइँको कमजोर कमाण्डका कारण महाराजगन्ज वृत्तमा पटक पटक यस्ता घटना भईरहेका छन् । यसअघि हत्या घटना मिलाउन सेटिङ मिलाएको अभियोगमा वृत्त महाराजगंजमा कार्यरत एक इन्सपेक्टर निलम्बनमा परेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>सेटिङमा मुछिएका डिएसपी प्रसाईंले भने शक्तिको आडमा उन्मुक्ति पाएका थिए । केहि सर्बसाधारणले अनुसन्धानमा ल्याइएको व्यक्ति फरार भएपछि डिएसपी प्रसाइँको सेटिङमा भगाइएको हुनसक्ने आशंका समेत गरेका थिए । उक्त क्षेत्रमा लूटपाट र चोरीका घटना दैनिक जसो बढिरहे पनि नेकपा निकट केहि नेताको दबाबका कारण महाराजगंज वृत्तको प्रमुख भएका प्रसाईंलाई तालुक कार्यालयले समेत कारवाही गर्न सकेको छैन।</p>\n<!-- /wp:paragraph -->', 'बसुन्धरामा १४ बर्षीय बालिकाको शंकास्पद मृत्यु, पिडित भन्छन डिएसपी प्रसाईंले अपराधी जोगाए', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2019-08-31 00:47:22', '2019-08-30 19:02:22', '', 35, 'http://dial100.test/37/', 0, 'revision', '', 0),
(38, 1, '2019-08-31 00:48:10', '2019-08-30 19:03:10', '', 'logo_dial', '', 'inherit', 'open', 'closed', '', 'logo_dial-2', '', '', '2019-08-31 00:48:10', '2019-08-30 19:03:10', '', 0, 'http://dial100.test/wp-content/uploads/2019/08/logo_dial.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2019-08-31 00:48:15', '2019-08-30 19:03:15', '{\n    \"dial-100-news::custom_logo\": {\n        \"value\": 38,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-30 19:03:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '027a69c8-7c0c-4193-9208-9dae07a31a96', '', '', '2019-08-31 00:48:15', '2019-08-30 19:03:15', '', 0, 'http://dial100.test/39/', 0, 'customize_changeset', '', 0),
(40, 1, '2019-08-31 00:49:47', '2019-08-30 19:04:47', '<!-- wp:paragraph -->\n<p>जिल्ला प्रहरी कार्यालय दोलखाले जुवा तास, मदिरा, गुण्डागर्दी जस्ता गैर कानुनी गतिविधि नियन्त्रण गर्न विशेष अभियान चलाई रहेको छ । दशै, तिहार जस्ता चाँडपर्वमा अपराधिक घट्ना बढी हुने भएकोले दशै तिहारको सुरक्षाको लागि समेत विशेष योजना बनाई प्रहरीको हरेक यूनिटले प्रहरी परिचालन गरेको जनाएको छ । यसै सेरोफेरोमा दोलखाका प्रहरी प्रमुख प्रहरी नायव उपरीक्षक रामेश्वर कार्कीसंग गरिएको कुराकानि ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>विभिन्न चाँडपर्वमा अपराधिक घट्ना हुने गरेका छन् । दशैको सुरक्षा व्यवस्था कसरी मिलाउनु भएको छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>दशै तिहार जस्ता पर्वमा गाँउ तहसम्म बिभिन्न अपराधिक घट्ना हुने गर्छ । दशैमा बिभिन्न ठाँउमा रहेका बिभिन्न स्वभावका मानिसहरु आउने भएकोले पनि यस्तो सम्भावना बढी हुने गरेका हुन् । त्यसैले प्रहरीले दशै तिहारको लागि विशेष सुरक्षा योजना बनाएको छ । जिल्लामा रहेका प्रहरीको हरेक युनिटमा तत्काल उद्धार गर्ने समूह (क्युआरटी) टिम बनाएको छ, बजारमा गस्ति बढाएको छ, राजमार्ग तथा सडक आसपास गस्ति बढाएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दशै तिहारमा प्रहरीको निगरानिमा रहेको अपराधिक घट्नामा संलग्न व्यक्तिहरु आउने र बिभिन्न गतिविधि गर्ने गर्दछन्, यसमा प्रहरीको ध्यान पुग्ला त ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीले त्यस्तो कुरामा पनि निगरानि गरिरहेको छ । दोलखाको कुनै पनि ठाँउमा प्रहरीको निगरानिमा रहेको अपराधिक घट्नामा संलग्न व्यक्तिहरु(गुण्डा) आएको जानकारी पाए तत्कालै पक्राउ गरी कानुनी प्रकृया सुरु गरिने छ । दोलखा जिल्लामा एक महिनाको अवधिमा अदालतबाट कैद तथा जरीवाना तोकिएका ७४ जनालाई पनि पक्राउ गरी अदालतमा बुझाईएको छ । जिल्लामा कुनै पनि प्रकारको गुण्डागर्दी हुन दिईने छैन ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>अपराधिक व्यक्ति र समुहलाई राजनीतिक संरक्षण हुन्छ, त्यस्ता कोहि पक्राउ परीहाले छोड्नको लागि राजनीतिक दवाव आउछ भनिन्छ नी ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>दोलखा जिल्लामा अहिलेसम्म राजनीतिक रुपमा कुनै पनि अभियुक्त या अपराधिक घट्नामा संलग्नलाई छोड्न दवाव आएको छैन । कुनै नेताले व्यक्तिगत रुपमा पक्राउ परेका कसैको बारेमा जानकारी लिनु फरक हो तर छोड्नको लागि कसैले पनि दवाव दिने गरेका छैनन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दशै तिहार जस्ता चाँडमा मदिराको कारण बिभिन्न हिंसात्मक घट्ना हुने गरेका छन् । चाँडवाडमा हुने मदिराको अस्वभाविक प्रयोग रोक्न के योजना छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मदिराकै कारण बिभिन्न अपराधिक घट्नामा बृद्धि भएको, महिला हिंसा, घरेलु हिंसा जस्ता गतिविधिहरु बढेको र कानुन अनुसार अवैधानिक समेत भएकोले हामीले दोलखा जिल्लालाई घरेलु मदिरा मुक्त जिल्ला बनाउने बिशेष अभियान चलाई रहेका छौ । र दशै तिहार जस्ता चाँडवाडमा यसको प्रयोग अस्वभाविक हुने भएकोले जिल्ला प्रशासन कार्यालय, जिल्ला प्रहरी कार्यालय र कोष तथा लेखा नियन्त्रण कार्यालयको विशेष टोलि बनाएर होटलहरु सर्च गर्ने, शंकास्पद ठाँउमा खानतलासि गर्ने जस्ता कामहरु भै रहेका छन् । साथै सिल प्याक मदिराहरु पनि कानुनी रुपमा अनुमति लिएर बिक्रि वितरण भएको छ की छैन भन्ने पनि अनुगमन भै रहेको छ । तीन महिनाको अवधिमा दोलखा प्रहरीले ३० सेट घरेलु मदिरा बनाउने भाँडा, १५ हजार केजी कच्चा पर्दाथ र १० हजार लिटर मदिरा नष्ट गरिसकेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>घरेलु मदिराका कारण कस्ता कस्ता घट्नालाई बल पुगेको पाउनु भएको छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जिल्ला प्रहरी कार्यालयमा आउने उजुरी र प्रहरीले गस्तीको क्रममा भेटेको घट्नाहरुलाई हेर्दा घरेलु मदिराका कारण घरेलु हिंसा, बालबालिका माथि हुने हिंसा, जर्वजस्ति करणी, बालबालिका कुलतमा लाग्ने जस्ता अपराधिक गतिविधि हुनुमा घरेलु मदिरा मुख्य कारक पाईएको छ । त्यसैले पनि यसको पूर्ण नियन्त्रण आवश्यक छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दोलखा प्रहरीमा दर्ता भएका अपराधिक घट्नाहरुमा बढी कस्ता खालका घट्नाहरु छन् ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जिल्ला प्रहरी कार्यालयमा दर्ता भएका अपराधिक घट्नाहरुमा जर्वजस्ति करणी, जर्वजस्ति करणी उद्योग, अनुसूचि १ अनुसारको बिभिन्न फौजदारी प्रकृतिका अपराधिक घट्नाहरु बढी पाईएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दोलखा जिल्लामा आत्महत्याका घट्नाहरु पनि निक्कै हुने गरेको प्रहरीको तथ्याङ्कले देखाएको छ । यसको कारण के पाउनु भएको छ ? अनि आत्महत्या गर्नेमा महिला या पुरुष को बढी पाउनु भएको छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अन्य जिल्लाको तुलनामा दोलखा जिल्लामा आत्महत्या गर्नेको संख्या निक्कै बढी छ । र आत्महत्या गर्नेमा महिलाहरुनै बढी पाईएको छ । उमेरको हिसाबले हेर्दा सबै उमेर समूहको पाईन्छ । आत्महत्या गर्नुको तथ्यगत कारण त पाउन मुश्किल छ किनभने मर्नेले त्यस्तो केहि खुलाएर गएको हुदैन तर सामान्यत घरायशी विवादकै कारण आत्महत्या गरेको धेरै पाईन्छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दशै तिहार जस्ता चाँडपर्वमा जुवा तासको चर्चा पनि निक्कै हुने गर्छ, दोलखामा जुवातास नियन्त्रणको प्रयास कस्तो छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जुवा तासका कारण धेरैको परिवार भाँडिएको छ, घरेलु हिंसाको कारण पनि जुवा तास हुने गरेको छ र यो गैर कानुनी पनि छ त्यसैले हामीले यसको नियन्त्रणको लागि अभियान चलाएका छौ । चाँडपर्व वा अन्य कुनै वहानामा जुवा तासले छुट पाउन सक्दैन । कसैले जुवातास खेलेको पाईएमा मुद्धा चलाएर कार्वाहि प्रकृया अगाडि बढाउछौ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em><strong>प्रस्तुती– चिरञ्जीवी मास्के</strong></em></p>\n<!-- /wp:paragraph -->', 'गुण्डागर्दीले कुनै हालतमा छुट पाउदैन – रामेश्वर कार्की, प्रहरी नायव उपरीक्षक', '', 'publish', 'open', 'open', '', '%e0%a4%97%e0%a5%81%e0%a4%a3%e0%a5%8d%e0%a4%a1%e0%a4%be%e0%a4%97%e0%a4%b0%e0%a5%8d%e0%a4%a6%e0%a5%80%e0%a4%b2%e0%a5%87-%e0%a4%95%e0%a5%81%e0%a4%a8%e0%a5%88-%e0%a4%b9%e0%a4%be%e0%a4%b2%e0%a4%a4%e0%a4%ae', '', '', '2019-08-31 00:49:47', '2019-08-30 19:04:47', '', 0, 'http://dial100.test/?p=40', 0, 'post', '', 0),
(41, 1, '2019-08-31 00:49:42', '2019-08-30 19:04:42', '', '8[1]', '', 'inherit', 'open', 'closed', '', '81', '', '', '2019-08-31 00:49:42', '2019-08-30 19:04:42', '', 40, 'http://dial100.test/wp-content/uploads/2019/08/81.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-08-31 00:49:47', '2019-08-30 19:04:47', '<!-- wp:paragraph -->\n<p>जिल्ला प्रहरी कार्यालय दोलखाले जुवा तास, मदिरा, गुण्डागर्दी जस्ता गैर कानुनी गतिविधि नियन्त्रण गर्न विशेष अभियान चलाई रहेको छ । दशै, तिहार जस्ता चाँडपर्वमा अपराधिक घट्ना बढी हुने भएकोले दशै तिहारको सुरक्षाको लागि समेत विशेष योजना बनाई प्रहरीको हरेक यूनिटले प्रहरी परिचालन गरेको जनाएको छ । यसै सेरोफेरोमा दोलखाका प्रहरी प्रमुख प्रहरी नायव उपरीक्षक रामेश्वर कार्कीसंग गरिएको कुराकानि ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>विभिन्न चाँडपर्वमा अपराधिक घट्ना हुने गरेका छन् । दशैको सुरक्षा व्यवस्था कसरी मिलाउनु भएको छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>दशै तिहार जस्ता पर्वमा गाँउ तहसम्म बिभिन्न अपराधिक घट्ना हुने गर्छ । दशैमा बिभिन्न ठाँउमा रहेका बिभिन्न स्वभावका मानिसहरु आउने भएकोले पनि यस्तो सम्भावना बढी हुने गरेका हुन् । त्यसैले प्रहरीले दशै तिहारको लागि विशेष सुरक्षा योजना बनाएको छ । जिल्लामा रहेका प्रहरीको हरेक युनिटमा तत्काल उद्धार गर्ने समूह (क्युआरटी) टिम बनाएको छ, बजारमा गस्ति बढाएको छ, राजमार्ग तथा सडक आसपास गस्ति बढाएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दशै तिहारमा प्रहरीको निगरानिमा रहेको अपराधिक घट्नामा संलग्न व्यक्तिहरु आउने र बिभिन्न गतिविधि गर्ने गर्दछन्, यसमा प्रहरीको ध्यान पुग्ला त ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीले त्यस्तो कुरामा पनि निगरानि गरिरहेको छ । दोलखाको कुनै पनि ठाँउमा प्रहरीको निगरानिमा रहेको अपराधिक घट्नामा संलग्न व्यक्तिहरु(गुण्डा) आएको जानकारी पाए तत्कालै पक्राउ गरी कानुनी प्रकृया सुरु गरिने छ । दोलखा जिल्लामा एक महिनाको अवधिमा अदालतबाट कैद तथा जरीवाना तोकिएका ७४ जनालाई पनि पक्राउ गरी अदालतमा बुझाईएको छ । जिल्लामा कुनै पनि प्रकारको गुण्डागर्दी हुन दिईने छैन ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>अपराधिक व्यक्ति र समुहलाई राजनीतिक संरक्षण हुन्छ, त्यस्ता कोहि पक्राउ परीहाले छोड्नको लागि राजनीतिक दवाव आउछ भनिन्छ नी ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>दोलखा जिल्लामा अहिलेसम्म राजनीतिक रुपमा कुनै पनि अभियुक्त या अपराधिक घट्नामा संलग्नलाई छोड्न दवाव आएको छैन । कुनै नेताले व्यक्तिगत रुपमा पक्राउ परेका कसैको बारेमा जानकारी लिनु फरक हो तर छोड्नको लागि कसैले पनि दवाव दिने गरेका छैनन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दशै तिहार जस्ता चाँडमा मदिराको कारण बिभिन्न हिंसात्मक घट्ना हुने गरेका छन् । चाँडवाडमा हुने मदिराको अस्वभाविक प्रयोग रोक्न के योजना छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मदिराकै कारण बिभिन्न अपराधिक घट्नामा बृद्धि भएको, महिला हिंसा, घरेलु हिंसा जस्ता गतिविधिहरु बढेको र कानुन अनुसार अवैधानिक समेत भएकोले हामीले दोलखा जिल्लालाई घरेलु मदिरा मुक्त जिल्ला बनाउने बिशेष अभियान चलाई रहेका छौ । र दशै तिहार जस्ता चाँडवाडमा यसको प्रयोग अस्वभाविक हुने भएकोले जिल्ला प्रशासन कार्यालय, जिल्ला प्रहरी कार्यालय र कोष तथा लेखा नियन्त्रण कार्यालयको विशेष टोलि बनाएर होटलहरु सर्च गर्ने, शंकास्पद ठाँउमा खानतलासि गर्ने जस्ता कामहरु भै रहेका छन् । साथै सिल प्याक मदिराहरु पनि कानुनी रुपमा अनुमति लिएर बिक्रि वितरण भएको छ की छैन भन्ने पनि अनुगमन भै रहेको छ । तीन महिनाको अवधिमा दोलखा प्रहरीले ३० सेट घरेलु मदिरा बनाउने भाँडा, १५ हजार केजी कच्चा पर्दाथ र १० हजार लिटर मदिरा नष्ट गरिसकेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>घरेलु मदिराका कारण कस्ता कस्ता घट्नालाई बल पुगेको पाउनु भएको छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जिल्ला प्रहरी कार्यालयमा आउने उजुरी र प्रहरीले गस्तीको क्रममा भेटेको घट्नाहरुलाई हेर्दा घरेलु मदिराका कारण घरेलु हिंसा, बालबालिका माथि हुने हिंसा, जर्वजस्ति करणी, बालबालिका कुलतमा लाग्ने जस्ता अपराधिक गतिविधि हुनुमा घरेलु मदिरा मुख्य कारक पाईएको छ । त्यसैले पनि यसको पूर्ण नियन्त्रण आवश्यक छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दोलखा प्रहरीमा दर्ता भएका अपराधिक घट्नाहरुमा बढी कस्ता खालका घट्नाहरु छन् ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जिल्ला प्रहरी कार्यालयमा दर्ता भएका अपराधिक घट्नाहरुमा जर्वजस्ति करणी, जर्वजस्ति करणी उद्योग, अनुसूचि १ अनुसारको बिभिन्न फौजदारी प्रकृतिका अपराधिक घट्नाहरु बढी पाईएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दोलखा जिल्लामा आत्महत्याका घट्नाहरु पनि निक्कै हुने गरेको प्रहरीको तथ्याङ्कले देखाएको छ । यसको कारण के पाउनु भएको छ ? अनि आत्महत्या गर्नेमा महिला या पुरुष को बढी पाउनु भएको छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अन्य जिल्लाको तुलनामा दोलखा जिल्लामा आत्महत्या गर्नेको संख्या निक्कै बढी छ । र आत्महत्या गर्नेमा महिलाहरुनै बढी पाईएको छ । उमेरको हिसाबले हेर्दा सबै उमेर समूहको पाईन्छ । आत्महत्या गर्नुको तथ्यगत कारण त पाउन मुश्किल छ किनभने मर्नेले त्यस्तो केहि खुलाएर गएको हुदैन तर सामान्यत घरायशी विवादकै कारण आत्महत्या गरेको धेरै पाईन्छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दशै तिहार जस्ता चाँडपर्वमा जुवा तासको चर्चा पनि निक्कै हुने गर्छ, दोलखामा जुवातास नियन्त्रणको प्रयास कस्तो छ ?</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>जुवा तासका कारण धेरैको परिवार भाँडिएको छ, घरेलु हिंसाको कारण पनि जुवा तास हुने गरेको छ र यो गैर कानुनी पनि छ त्यसैले हामीले यसको नियन्त्रणको लागि अभियान चलाएका छौ । चाँडपर्व वा अन्य कुनै वहानामा जुवा तासले छुट पाउन सक्दैन । कसैले जुवातास खेलेको पाईएमा मुद्धा चलाएर कार्वाहि प्रकृया अगाडि बढाउछौ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em><strong>प्रस्तुती– चिरञ्जीवी मास्के</strong></em></p>\n<!-- /wp:paragraph -->', 'गुण्डागर्दीले कुनै हालतमा छुट पाउदैन – रामेश्वर कार्की, प्रहरी नायव उपरीक्षक', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-08-31 00:49:47', '2019-08-30 19:04:47', '', 40, 'http://dial100.test/42/', 0, 'revision', '', 0),
(43, 1, '2019-08-31 00:50:53', '2019-08-30 19:05:53', '<!-- wp:paragraph -->\n<p>चोरीको अभियोगमा प्रहरी हिरासतमा रहेका दोलखा भीमेश्वर नगरपालिका वडा नम्बर ५ किरातिछापका रवि केसीको मृत्यु भएपछि आफन्तले छानविनको माग गरेका छन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>भोजपुर घर भै बुबा ध्रुब केसी र आमा रीता केसीसंग किरातिछाँप स्थित मामा घरमा बस्दै आएका केसीको विहिवार मृत्यु भएको थियो । जिल्ला प्रहरी कार्यालय दोलखाका प्रहरी निरीक्षक रमेश प्रधानले पेटमा समस्या आएपछि उपचारको लागि काठमाडौँ लाने क्रममा रविको बाटोमै मृत्यु भएको बताए । प्रहरी निरीक्षक प्रधानका अनुसार रविलाई आफन्त सहित सुरुमा चरिकोट प्राथामीक उपचार केन्द्रमा लगिएको र त्यहाँ ठिन नभएपछि थप उपचारको लागि काठमाडौँ लाने क्रममा बाटोमै मृत्यु भएको हो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मृतकको परिवारले रवि १४ बर्षकोमात्र भएको र उनलाई प्रहरीले कानुन विपरित हिरासतमा राखेको आरोप लगाएको छ । आफन्तले मृत्युबारे छानविन गर्न र घट्नामा संलग्नलाई कार्वाहि गर्न माग सहित जिल्ला प्रशासन कार्यालय दोलखामा निवेदन दिएका छन् । मृतक रविलाई सार्वजनिक अपराधको मुद्दा दर्ता गरी चार दिन देखि हिरासतमा राखिएको थियो । प्रहरीले रविलाई आफन्तको जिम्मा लगाई सकेपछि मृत्यु भएको बताएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मृतक रविले अघिल्लो बर्षसम्म अध्यन गरेको विद्यालयको तथ्याङ्क अनुसार पनि उनको उमेर १४ बर्ष भएको आफन्तहरुको भनाई छ । प्रहरीले भने रविको उमेर १८ बर्ष भएको दावि गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>रविको मृत्यु रहस्यमय रहेको भन्दै आफन्तले शव बुझ्न समेत अस्वीकार गरेका छन् । मृतकको हजुर बुबा चन्द्रबहादुर कार्की नातिलाई कस्को उजुरीमा किन ल्याईएको हो त्यसबारे स्पष्ट गर्नु पर्ने बताउछन् । प्रहरीले विहिवारमात्र विरामी भएको भनि आफुहरुलाई जानकारी गराएको चन्द्रबहादुरको भनाई छ । मृतक रवि सुस्त मनस्थितिको भएको पनि चन्द्रबहादुरले बताए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रमुख जिल्ला अधिकारी लक्ष्मण बिक्रम थापाले घट्नाबारे छानविन गर्न सहायक प्रमुख जिल्ला अधिकारी यज्ञराज भट्टको संयोजकत्वमा जिल्ला न्यायधिवक्ताको कार्यालयको अधिकृत र डक्टर सदस्य रहेको तीन सदसिय छानविन समिति बनाएको जानकारी दिनु भयो । प्रमुख जिल्ला अधिकारी थापाले आफन्तले मृतकको शव पोष्मार्टम गर्न सहयोग गनुृ पर्ने बताउनु भयो । घट्नाको निष्पक्ष छानविन हुन्छ, त्यसैले मृतकको परिवारले पनि पोष्मार्टम गरी छानविन गर्न सहयोग गनुृ पर्छ – प्रजिअ थापाले भन्नु भयो ।</p>\n<!-- /wp:paragraph -->', 'दोलखाको त्यो घटना सम्झनुहुन्छ ? प्रहरी हिरासतमा रहेको रविको यसरी भएको थियो मृत्यु', '', 'publish', 'open', 'open', '', '%e0%a4%a6%e0%a5%8b%e0%a4%b2%e0%a4%96%e0%a4%be%e0%a4%95%e0%a5%8b-%e0%a4%a4%e0%a5%8d%e0%a4%af%e0%a5%8b-%e0%a4%98%e0%a4%9f%e0%a4%a8%e0%a4%be-%e0%a4%b8%e0%a4%ae%e0%a5%8d%e0%a4%9d%e0%a4%a8%e0%a5%81', '', '', '2019-08-31 00:50:53', '2019-08-30 19:05:53', '', 0, 'http://dial100.test/?p=43', 0, 'post', '', 0),
(44, 1, '2019-08-31 00:50:46', '2019-08-30 19:05:46', '', 'mrityu[1]', '', 'inherit', 'open', 'closed', '', 'mrityu1', '', '', '2019-08-31 00:50:46', '2019-08-30 19:05:46', '', 43, 'http://dial100.test/wp-content/uploads/2019/08/mrityu1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-08-31 00:50:53', '2019-08-30 19:05:53', '<!-- wp:paragraph -->\n<p>चोरीको अभियोगमा प्रहरी हिरासतमा रहेका दोलखा भीमेश्वर नगरपालिका वडा नम्बर ५ किरातिछापका रवि केसीको मृत्यु भएपछि आफन्तले छानविनको माग गरेका छन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>भोजपुर घर भै बुबा ध्रुब केसी र आमा रीता केसीसंग किरातिछाँप स्थित मामा घरमा बस्दै आएका केसीको विहिवार मृत्यु भएको थियो । जिल्ला प्रहरी कार्यालय दोलखाका प्रहरी निरीक्षक रमेश प्रधानले पेटमा समस्या आएपछि उपचारको लागि काठमाडौँ लाने क्रममा रविको बाटोमै मृत्यु भएको बताए । प्रहरी निरीक्षक प्रधानका अनुसार रविलाई आफन्त सहित सुरुमा चरिकोट प्राथामीक उपचार केन्द्रमा लगिएको र त्यहाँ ठिन नभएपछि थप उपचारको लागि काठमाडौँ लाने क्रममा बाटोमै मृत्यु भएको हो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मृतकको परिवारले रवि १४ बर्षकोमात्र भएको र उनलाई प्रहरीले कानुन विपरित हिरासतमा राखेको आरोप लगाएको छ । आफन्तले मृत्युबारे छानविन गर्न र घट्नामा संलग्नलाई कार्वाहि गर्न माग सहित जिल्ला प्रशासन कार्यालय दोलखामा निवेदन दिएका छन् । मृतक रविलाई सार्वजनिक अपराधको मुद्दा दर्ता गरी चार दिन देखि हिरासतमा राखिएको थियो । प्रहरीले रविलाई आफन्तको जिम्मा लगाई सकेपछि मृत्यु भएको बताएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मृतक रविले अघिल्लो बर्षसम्म अध्यन गरेको विद्यालयको तथ्याङ्क अनुसार पनि उनको उमेर १४ बर्ष भएको आफन्तहरुको भनाई छ । प्रहरीले भने रविको उमेर १८ बर्ष भएको दावि गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>रविको मृत्यु रहस्यमय रहेको भन्दै आफन्तले शव बुझ्न समेत अस्वीकार गरेका छन् । मृतकको हजुर बुबा चन्द्रबहादुर कार्की नातिलाई कस्को उजुरीमा किन ल्याईएको हो त्यसबारे स्पष्ट गर्नु पर्ने बताउछन् । प्रहरीले विहिवारमात्र विरामी भएको भनि आफुहरुलाई जानकारी गराएको चन्द्रबहादुरको भनाई छ । मृतक रवि सुस्त मनस्थितिको भएको पनि चन्द्रबहादुरले बताए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रमुख जिल्ला अधिकारी लक्ष्मण बिक्रम थापाले घट्नाबारे छानविन गर्न सहायक प्रमुख जिल्ला अधिकारी यज्ञराज भट्टको संयोजकत्वमा जिल्ला न्यायधिवक्ताको कार्यालयको अधिकृत र डक्टर सदस्य रहेको तीन सदसिय छानविन समिति बनाएको जानकारी दिनु भयो । प्रमुख जिल्ला अधिकारी थापाले आफन्तले मृतकको शव पोष्मार्टम गर्न सहयोग गनुृ पर्ने बताउनु भयो । घट्नाको निष्पक्ष छानविन हुन्छ, त्यसैले मृतकको परिवारले पनि पोष्मार्टम गरी छानविन गर्न सहयोग गनुृ पर्छ – प्रजिअ थापाले भन्नु भयो ।</p>\n<!-- /wp:paragraph -->', 'दोलखाको त्यो घटना सम्झनुहुन्छ ? प्रहरी हिरासतमा रहेको रविको यसरी भएको थियो मृत्यु', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-08-31 00:50:53', '2019-08-30 19:05:53', '', 43, 'http://dial100.test/45/', 0, 'revision', '', 0),
(46, 1, '2019-08-31 00:51:49', '2019-08-30 19:06:49', '<!-- wp:paragraph -->\n<p>काठमाडौं– केपी ओली सरकारमा पुगेसँगै प्रहरीले बिग अप्रेशन गरेको छ । यहि बीचमा प्रहरी इन्काउन्टरमा परी गुण्डा नाईके मनोज पुन र उनका सहयोगी सोम आले मारिएका छन् । बुधवार बिहान रुपन्देहीको देवदहमा प्रहरीसँगको मुडभेडमा मनोज र उनका सहयोगीमाथि प्रहरीले गोली चलाएको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>गोली चलाएपछि अस्पताल पुर्याइएका उनीहरुलाई अस्पतालले मितक घोषणा गरिसकेको जिल्ला प्रहरी कार्यालय रुपन्देहीका प्रमुख (एसपी) श्याम ज्ञवालीले बताए । प्रहरीले मनोज पुनको साथबाट एउटा पेस्तोल बरादम गरेको छ । –<a href=\"https://www.arthasarokar.com/2018/02/manoj-.html\"><strong>अर्थ सरोकार डटकमबाट साभार</strong></a></p>\n<!-- /wp:paragraph -->', 'ओली सरकारमा गएपछि प्रहरीको ‘बिग अप्रेशन’ : इन्काउन्टरमा गुण्डानाइके मनोज पुन मारिए', '', 'publish', 'open', 'open', '', '%e0%a4%93%e0%a4%b2%e0%a5%80-%e0%a4%b8%e0%a4%b0%e0%a4%95%e0%a4%be%e0%a4%b0%e0%a4%ae%e0%a4%be-%e0%a4%97%e0%a4%8f%e0%a4%aa%e0%a4%9b%e0%a4%bf-%e0%a4%aa%e0%a5%8d%e0%a4%b0%e0%a4%b9%e0%a4%b0%e0%a5%80', '', '', '2019-08-31 00:51:49', '2019-08-30 19:06:49', '', 0, 'http://dial100.test/?p=46', 0, 'post', '', 0),
(47, 1, '2019-08-31 00:51:44', '2019-08-30 19:06:44', '', 'manoj-pun_1-5a8cc73b6e5991.54802637[1]', '', 'inherit', 'open', 'closed', '', 'manoj-pun_1-5a8cc73b6e5991-548026371', '', '', '2019-08-31 00:51:44', '2019-08-30 19:06:44', '', 46, 'http://dial100.test/wp-content/uploads/2019/08/manoj-pun_1-5a8cc73b6e5991.548026371.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-08-31 00:51:49', '2019-08-30 19:06:49', '<!-- wp:paragraph -->\n<p>काठमाडौं– केपी ओली सरकारमा पुगेसँगै प्रहरीले बिग अप्रेशन गरेको छ । यहि बीचमा प्रहरी इन्काउन्टरमा परी गुण्डा नाईके मनोज पुन र उनका सहयोगी सोम आले मारिएका छन् । बुधवार बिहान रुपन्देहीको देवदहमा प्रहरीसँगको मुडभेडमा मनोज र उनका सहयोगीमाथि प्रहरीले गोली चलाएको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>गोली चलाएपछि अस्पताल पुर्याइएका उनीहरुलाई अस्पतालले मितक घोषणा गरिसकेको जिल्ला प्रहरी कार्यालय रुपन्देहीका प्रमुख (एसपी) श्याम ज्ञवालीले बताए । प्रहरीले मनोज पुनको साथबाट एउटा पेस्तोल बरादम गरेको छ । –<a href=\"https://www.arthasarokar.com/2018/02/manoj-.html\"><strong>अर्थ सरोकार डटकमबाट साभार</strong></a></p>\n<!-- /wp:paragraph -->', 'ओली सरकारमा गएपछि प्रहरीको ‘बिग अप्रेशन’ : इन्काउन्टरमा गुण्डानाइके मनोज पुन मारिए', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-08-31 00:51:49', '2019-08-30 19:06:49', '', 46, 'http://dial100.test/48/', 0, 'revision', '', 0),
(49, 1, '2019-08-31 00:53:06', '2019-08-30 19:08:06', '<!-- wp:paragraph -->\n<p>काठमाडौँ- गृहमन्त्रीसँग निकट सम्बन्ध रहेका कारण काबिल प्रहरी अफिसरलाई पछी पार्दै महानगरीय प्रहरी परिसर टेकुको नेतृत्व सम्हालेका बरिष्ट प्रहरी उपरीक्षक रविन्द्र धानुकको चरम लावार्वाहीका कारण सोमबार बानेश्वरमा निर्माण व्यवसायी महासंघका अध्यक्षको दिन दहाडै हत्या भएको तथ्य बाहिर आएको छ । घटनाको पूर्व सुचना पाउँदासमेत निरिह बनेका धानुकले समयमै उक्त सूचनालाई गम्भीर रुपमा नलिंदा सोमबार निर्माण व्यवसायी महासंघका अध्यक्षको हत्या भएको तथ्य बाहिर आएको हो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>यस्तो छ धानुकको ‘इतिहास’<br>यसो त एसएसपी धानुक सोमबारको प्रकरणमा मात्र असफल भएका होइनन् । धानुक, तीनै प्रहरी अफिसर हुन्, जो प्रहरी निरिक्षक रहँदा निलम्बनमा परेका थिए । पटक पटक प्रहरी संगठन भित्रै खराब रेकर्ड रहेका उनी जिल्ला प्रहरी कार्यालय रुपन्देहीको इन्चार्ज रहँदा समेत उक्त समय युवा संघका नेता दुर्गा तिवारीको गत पुषमा गोली हानी हत्या भएको थियो । उक्त समयमा उक्त हत्याको जिम्मा मनोज पुन समूहले लिएका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>तत्कालीन समयमा पनि मनोज पुन समूहले आफुहरु काठमाडौँ छिर्ने चेतावनी दिएका थिए भने सोमबारको घटना अघि पनि उक्त समूह काठमाडौँमा यस्तो घटना गराउन लागि परेको सुचना धानुकले पाएका थिए । यस्तै सोमबारको घटनाको पूर्व सुचना पुनका सहयोगीहरुले धानुकलाई दिएको भएपनि उनको कमजोर व्यवस्थापन र गम्भीर लापरवाहीका कारण उक्त सुचनालाई प्रहरीले सदुपयोग गर्न सकेन । अन्तत: सोमबारको घटना भयो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>यसो त माओवादी केन्द्रसँग निकै निकट रहेका कारण धानुक प्रहरी संगठनभित्रै पनि कसैले भनेको नमान्ने, हाकिमलाई पनि टेर्न छाडेको भन्दै विवादित थिए । उनको यो स्वभावको चर्चा महानगरीय प्रहरीको कार्यालयदेखि आइजीपीको सचिवालयसम्म चल्ने गरेको छ ।&nbsp;<a href=\"https://www.arthasarokar.com/2017/10/ssp-dhanuk.html\"><strong>अर्थ सरोकार डटकमबाट साभार&nbsp;</strong></a></p>\n<!-- /wp:paragraph -->', 'एसएसपी धानुकको लापरवाहीले गौचनको हत्या, सुचना पाउँदा पनि निरिह बने एसएसपी !', '', 'publish', 'open', 'open', '', '%e0%a4%8f%e0%a4%b8%e0%a4%8f%e0%a4%b8%e0%a4%aa%e0%a5%80-%e0%a4%a7%e0%a4%be%e0%a4%a8%e0%a5%81%e0%a4%95%e0%a4%95%e0%a5%8b-%e0%a4%b2%e0%a4%be%e0%a4%aa%e0%a4%b0%e0%a4%b5%e0%a4%be%e0%a4%b9%e0%a5%80%e0%a4%b2', '', '', '2019-08-31 00:53:06', '2019-08-30 19:08:06', '', 0, 'http://dial100.test/?p=49', 0, 'post', '', 0),
(50, 1, '2019-08-31 00:53:00', '2019-08-30 19:08:00', '', 'hatya[1]', '', 'inherit', 'open', 'closed', '', 'hatya1', '', '', '2019-08-31 00:53:00', '2019-08-30 19:08:00', '', 49, 'http://dial100.test/wp-content/uploads/2019/08/hatya1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-08-31 00:53:06', '2019-08-30 19:08:06', '<!-- wp:paragraph -->\n<p>काठमाडौँ- गृहमन्त्रीसँग निकट सम्बन्ध रहेका कारण काबिल प्रहरी अफिसरलाई पछी पार्दै महानगरीय प्रहरी परिसर टेकुको नेतृत्व सम्हालेका बरिष्ट प्रहरी उपरीक्षक रविन्द्र धानुकको चरम लावार्वाहीका कारण सोमबार बानेश्वरमा निर्माण व्यवसायी महासंघका अध्यक्षको दिन दहाडै हत्या भएको तथ्य बाहिर आएको छ । घटनाको पूर्व सुचना पाउँदासमेत निरिह बनेका धानुकले समयमै उक्त सूचनालाई गम्भीर रुपमा नलिंदा सोमबार निर्माण व्यवसायी महासंघका अध्यक्षको हत्या भएको तथ्य बाहिर आएको हो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>यस्तो छ धानुकको ‘इतिहास’<br>यसो त एसएसपी धानुक सोमबारको प्रकरणमा मात्र असफल भएका होइनन् । धानुक, तीनै प्रहरी अफिसर हुन्, जो प्रहरी निरिक्षक रहँदा निलम्बनमा परेका थिए । पटक पटक प्रहरी संगठन भित्रै खराब रेकर्ड रहेका उनी जिल्ला प्रहरी कार्यालय रुपन्देहीको इन्चार्ज रहँदा समेत उक्त समय युवा संघका नेता दुर्गा तिवारीको गत पुषमा गोली हानी हत्या भएको थियो । उक्त समयमा उक्त हत्याको जिम्मा मनोज पुन समूहले लिएका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>तत्कालीन समयमा पनि मनोज पुन समूहले आफुहरु काठमाडौँ छिर्ने चेतावनी दिएका थिए भने सोमबारको घटना अघि पनि उक्त समूह काठमाडौँमा यस्तो घटना गराउन लागि परेको सुचना धानुकले पाएका थिए । यस्तै सोमबारको घटनाको पूर्व सुचना पुनका सहयोगीहरुले धानुकलाई दिएको भएपनि उनको कमजोर व्यवस्थापन र गम्भीर लापरवाहीका कारण उक्त सुचनालाई प्रहरीले सदुपयोग गर्न सकेन । अन्तत: सोमबारको घटना भयो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>यसो त माओवादी केन्द्रसँग निकै निकट रहेका कारण धानुक प्रहरी संगठनभित्रै पनि कसैले भनेको नमान्ने, हाकिमलाई पनि टेर्न छाडेको भन्दै विवादित थिए । उनको यो स्वभावको चर्चा महानगरीय प्रहरीको कार्यालयदेखि आइजीपीको सचिवालयसम्म चल्ने गरेको छ ।&nbsp;<a href=\"https://www.arthasarokar.com/2017/10/ssp-dhanuk.html\"><strong>अर्थ सरोकार डटकमबाट साभार&nbsp;</strong></a></p>\n<!-- /wp:paragraph -->', 'एसएसपी धानुकको लापरवाहीले गौचनको हत्या, सुचना पाउँदा पनि निरिह बने एसएसपी !', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-08-31 00:53:06', '2019-08-30 19:08:06', '', 49, 'http://dial100.test/51/', 0, 'revision', '', 0),
(52, 1, '2019-08-31 00:54:35', '2019-08-30 19:09:35', '<!-- wp:paragraph -->\n<p>&nbsp;काठमाडौं । प्रहरीले देब विकाश बैंकको १७ करोड रुपैयाँ आर्थिक हिनामिना गरेको अभियोगमा नारायणपुर शाखाका म्यानेजरलाई पक्राउ गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पक्राउ परेका बुढाथोकीमाथि बैंकको १७ करोड रकम घोटाला गरेको अभियोग लागेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीले बैंकका म्यानेजर समिर बुढाथोकीलाई गएराति घोराही उपमहानगरपालिका वडा नं. १० बाट पक्राउ गरेको हो । यस बारेमा प्रहरीले आज पत्रकार सम्मेलन गरी जानकारी गराउने जनाएको छ ।</p>\n<!-- /wp:paragraph -->', '१७ करोड अपचलन गरेको अभियोगमा देव बैंकका ब्रान्च म्यानेजर समिर पक्राउ', '', 'publish', 'open', 'open', '', '%e0%a5%a7%e0%a5%ad-%e0%a4%95%e0%a4%b0%e0%a5%8b%e0%a4%a1-%e0%a4%85%e0%a4%aa%e0%a4%9a%e0%a4%b2%e0%a4%a8-%e0%a4%97%e0%a4%b0%e0%a5%87%e0%a4%95%e0%a5%8b-%e0%a4%85%e0%a4%ad%e0%a4%bf%e0%a4%af%e0%a5%8b', '', '', '2019-08-31 00:54:35', '2019-08-30 19:09:35', '', 0, 'http://dial100.test/?p=52', 0, 'post', '', 0),
(53, 1, '2019-08-31 00:54:30', '2019-08-30 19:09:30', '', 'samir_1[1]', '', 'inherit', 'open', 'closed', '', 'samir_11', '', '', '2019-08-31 00:54:30', '2019-08-30 19:09:30', '', 52, 'http://dial100.test/wp-content/uploads/2019/08/samir_11.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-08-31 00:54:35', '2019-08-30 19:09:35', '<!-- wp:paragraph -->\n<p>&nbsp;काठमाडौं । प्रहरीले देब विकाश बैंकको १७ करोड रुपैयाँ आर्थिक हिनामिना गरेको अभियोगमा नारायणपुर शाखाका म्यानेजरलाई पक्राउ गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पक्राउ परेका बुढाथोकीमाथि बैंकको १७ करोड रकम घोटाला गरेको अभियोग लागेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रहरीले बैंकका म्यानेजर समिर बुढाथोकीलाई गएराति घोराही उपमहानगरपालिका वडा नं. १० बाट पक्राउ गरेको हो । यस बारेमा प्रहरीले आज पत्रकार सम्मेलन गरी जानकारी गराउने जनाएको छ ।</p>\n<!-- /wp:paragraph -->', '१७ करोड अपचलन गरेको अभियोगमा देव बैंकका ब्रान्च म्यानेजर समिर पक्राउ', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-08-31 00:54:35', '2019-08-30 19:09:35', '', 52, 'http://dial100.test/54/', 0, 'revision', '', 0),
(55, 1, '2019-08-31 00:55:40', '2019-08-30 19:10:40', '<!-- wp:paragraph -->\n<p>बहुचर्चित मैना सुनार हत्या प्रकरणमा नेपाली सेनाले राखेको मेलमिलाप प्रस्तावलाई उनका परिवारले अस्वीकार गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>१६ वर्षअघि नेपाली सेनाले चरम यातना दिएर हत्या गरिएकी काभ्रेकी मैना सुनारको परिवारलाई नेपाली सेनाले मेलमिलापका लागि राखेको प्रस्ताव परिवारले अस्वीकार गरेका हुन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पहिलोपटक मैनाकी आमा देवी सुनारलाई ४ असारमा नेपाली सेनाले आफूहरूसँग मिल्न प्र्रस्ताव राखेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पहिलो प्रस्ताव अस्वीकार भएपछि नेपाली सेनाले भद्रकाली बोलाएर दोस्रोपटक प्र्रस्ताव राखेको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पहिलोपटक काठमाडौँ को तीनकुनेको एक क्याफेमा नेपाली सेनाको कर्णेलले मैनाकी आमा देवी सुनारलाई अहिलेको अवस्था हेरेर मेलमिलाप गर्नुपर्ने प्र्रस्ताव गरेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मैनाले अध्ययन गरेको काभ्रेको भगवती उच्च माविमा अक्षय कोष खडा गर्ने र मृत्यु भएको नेपाली सेनाको सालिकसँगै उनको शालिक निर्माण गरिदिने प्रस्ताव गरेको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>तर, मैनाकी आमा देवीले सो प्रस्ताव आफूले अस्वीकार गरेको बताइन् । बहिनी गीतासँग तीनकुने पुगेकी देवीसँग नेपाली सेनाले चार घण्टा कुराकानी भएको उनको भनाइ छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>देवीले न्यायका लागि भइरहेको संघर्ष कमजोर हुने ठानेर सो प्रस्ताव अस्वीकार गरेको बताइन् ।भेटमा सहभागी सेनाका अधिकारीहरूले उक्त भेट प्रधानसेनापति पूर्णचन्द्र थापाको आग्रहमा गरिएको बताएका थिए ।&nbsp;<strong>आजको राजधानी दैनिकबाट</strong>&nbsp;</p>\n<!-- /wp:paragraph -->', 'सेनाको मेलमिलाप प्रस्ताव मैना सुनुवार परिवारबाट अस्वीकार', '', 'publish', 'open', 'open', '', '%e0%a4%b8%e0%a5%87%e0%a4%a8%e0%a4%be%e0%a4%95%e0%a5%8b-%e0%a4%ae%e0%a5%87%e0%a4%b2%e0%a4%ae%e0%a4%bf%e0%a4%b2%e0%a4%be%e0%a4%aa-%e0%a4%aa%e0%a5%8d%e0%a4%b0%e0%a4%b8%e0%a5%8d%e0%a4%a4%e0%a4%be%e0%a4%b5', '', '', '2019-08-31 00:55:40', '2019-08-30 19:10:40', '', 0, 'http://dial100.test/?p=55', 0, 'post', '', 0),
(56, 1, '2019-08-31 00:55:33', '2019-08-30 19:10:33', '', '1566351602Maina_Sunuwar-1024x570[1]', '', 'inherit', 'open', 'closed', '', '1566351602maina_sunuwar-1024x5701', '', '', '2019-08-31 00:55:33', '2019-08-30 19:10:33', '', 55, 'http://dial100.test/wp-content/uploads/2019/08/1566351602Maina_Sunuwar-1024x5701.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-08-31 00:55:40', '2019-08-30 19:10:40', '<!-- wp:paragraph -->\n<p>बहुचर्चित मैना सुनार हत्या प्रकरणमा नेपाली सेनाले राखेको मेलमिलाप प्रस्तावलाई उनका परिवारले अस्वीकार गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>१६ वर्षअघि नेपाली सेनाले चरम यातना दिएर हत्या गरिएकी काभ्रेकी मैना सुनारको परिवारलाई नेपाली सेनाले मेलमिलापका लागि राखेको प्रस्ताव परिवारले अस्वीकार गरेका हुन् ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पहिलोपटक मैनाकी आमा देवी सुनारलाई ४ असारमा नेपाली सेनाले आफूहरूसँग मिल्न प्र्रस्ताव राखेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पहिलो प्रस्ताव अस्वीकार भएपछि नेपाली सेनाले भद्रकाली बोलाएर दोस्रोपटक प्र्रस्ताव राखेको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>पहिलोपटक काठमाडौँ को तीनकुनेको एक क्याफेमा नेपाली सेनाको कर्णेलले मैनाकी आमा देवी सुनारलाई अहिलेको अवस्था हेरेर मेलमिलाप गर्नुपर्ने प्र्रस्ताव गरेका थिए ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>मैनाले अध्ययन गरेको काभ्रेको भगवती उच्च माविमा अक्षय कोष खडा गर्ने र मृत्यु भएको नेपाली सेनाको सालिकसँगै उनको शालिक निर्माण गरिदिने प्रस्ताव गरेको थियो ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>तर, मैनाकी आमा देवीले सो प्रस्ताव आफूले अस्वीकार गरेको बताइन् । बहिनी गीतासँग तीनकुने पुगेकी देवीसँग नेपाली सेनाले चार घण्टा कुराकानी भएको उनको भनाइ छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>देवीले न्यायका लागि भइरहेको संघर्ष कमजोर हुने ठानेर सो प्रस्ताव अस्वीकार गरेको बताइन् ।भेटमा सहभागी सेनाका अधिकारीहरूले उक्त भेट प्रधानसेनापति पूर्णचन्द्र थापाको आग्रहमा गरिएको बताएका थिए ।&nbsp;<strong>आजको राजधानी दैनिकबाट</strong>&nbsp;</p>\n<!-- /wp:paragraph -->', 'सेनाको मेलमिलाप प्रस्ताव मैना सुनुवार परिवारबाट अस्वीकार', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-08-31 00:55:40', '2019-08-30 19:10:40', '', 55, 'http://dial100.test/57/', 0, 'revision', '', 0),
(58, 1, '2019-08-31 00:58:02', '2019-08-30 19:13:02', '<!-- wp:paragraph -->\n<p>काठमाडौं । नेपाली सेनाले राष्ट्रिय प्रतिरक्षा महाविश्वविद्यालयका लागि सम्पर्क कार्यालय स्थापना गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br>नेपाली सेनाको जनसम्पर्क तथा सूचना निर्देशनालयले दिएको जानकारी अनुसार विश्वविद्यालय स्थापना कार्यलाई अगाडि बढाउने योजनाअनुसार सैनिक मुख्यालयमा आवश्यक जनशक्तिसहित राष्ट्रिय प्रतिरक्षा महाविश्वविद्यालयको सम्पर्क कार्यालय स्थापना गरिएको हो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>नेपालको राष्ट्रिय सुरक्षा र प्रतिरक्षा सम्बन्धमा आवश्यक नीति तथा रणनीति निर्माण गरी त्यसको सहज कार्यान्वयनको सुनिश्चित गर्न राज्यलाई आवश्यक दक्ष जनशक्ति तयार गरी सो सम्बन्धी नीति निर्माण गर्न सहयोग गर्ने गरी महाविश्वविद्यालय स्थापना गर्न लागिएको नेपाली सेनाको बताएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>सरकारले आर्थिक वर्ष २०७६/७७ को बजेटमा समेत राष्ट्रिय प्रतिरक्षा महाविश्वविद्यालय स्थापना गर्ने विषय समावेश गरेको छ ।</p>\n<!-- /wp:paragraph -->', 'सेनाले खोल्यो राष्ट्रिय प्रतिरक्षा विश्वविद्यालयको सम्पर्क कार्यालय', '', 'publish', 'open', 'open', '', '%e0%a4%b8%e0%a5%87%e0%a4%a8%e0%a4%be%e0%a4%b2%e0%a5%87-%e0%a4%96%e0%a5%8b%e0%a4%b2%e0%a5%8d%e0%a4%af%e0%a5%8b-%e0%a4%b0%e0%a4%be%e0%a4%b7%e0%a5%8d%e0%a4%9f%e0%a5%8d%e0%a4%b0%e0%a4%bf%e0%a4%af', '', '', '2019-08-31 00:58:02', '2019-08-30 19:13:02', '', 0, 'http://dial100.test/?p=58', 0, 'post', '', 0),
(59, 1, '2019-08-31 00:57:54', '2019-08-30 19:12:54', '', 'nepal-army_0n3eRbMAn7[1]', '', 'inherit', 'open', 'closed', '', 'nepal-army_0n3erbman71', '', '', '2019-08-31 00:57:54', '2019-08-30 19:12:54', '', 58, 'http://dial100.test/wp-content/uploads/2019/08/nepal-army_0n3eRbMAn71.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(60, 1, '2019-08-31 00:58:02', '2019-08-30 19:13:02', '<!-- wp:paragraph -->\n<p>काठमाडौं । नेपाली सेनाले राष्ट्रिय प्रतिरक्षा महाविश्वविद्यालयका लागि सम्पर्क कार्यालय स्थापना गरेको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><br>नेपाली सेनाको जनसम्पर्क तथा सूचना निर्देशनालयले दिएको जानकारी अनुसार विश्वविद्यालय स्थापना कार्यलाई अगाडि बढाउने योजनाअनुसार सैनिक मुख्यालयमा आवश्यक जनशक्तिसहित राष्ट्रिय प्रतिरक्षा महाविश्वविद्यालयको सम्पर्क कार्यालय स्थापना गरिएको हो।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>नेपालको राष्ट्रिय सुरक्षा र प्रतिरक्षा सम्बन्धमा आवश्यक नीति तथा रणनीति निर्माण गरी त्यसको सहज कार्यान्वयनको सुनिश्चित गर्न राज्यलाई आवश्यक दक्ष जनशक्ति तयार गरी सो सम्बन्धी नीति निर्माण गर्न सहयोग गर्ने गरी महाविश्वविद्यालय स्थापना गर्न लागिएको नेपाली सेनाको बताएको छ ।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>सरकारले आर्थिक वर्ष २०७६/७७ को बजेटमा समेत राष्ट्रिय प्रतिरक्षा महाविश्वविद्यालय स्थापना गर्ने विषय समावेश गरेको छ ।</p>\n<!-- /wp:paragraph -->', 'सेनाले खोल्यो राष्ट्रिय प्रतिरक्षा विश्वविद्यालयको सम्पर्क कार्यालय', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2019-08-31 00:58:02', '2019-08-30 19:13:02', '', 58, 'http://dial100.test/60/', 0, 'revision', '', 0),
(61, 1, '2019-09-01 15:39:16', '2019-09-01 09:54:16', '', 'icon', '', 'inherit', 'open', 'closed', '', 'icon', '', '', '2019-09-01 15:39:16', '2019-09-01 09:54:16', '', 0, 'http://dial100.test/wp-content/uploads/2019/09/icon.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'breaker', 'breaker', 0),
(4, 'news', 'news', 0),
(5, 'tippani', 'tippani', 0),
(6, 'bishesh', 'bishesh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 1, 0),
(17, 3, 0),
(21, 1, 0),
(21, 4, 0),
(24, 4, 0),
(27, 4, 0),
(30, 4, 0),
(32, 4, 0),
(35, 4, 0),
(40, 5, 0),
(43, 5, 0),
(46, 5, 0),
(49, 5, 0),
(52, 4, 0),
(55, 4, 0),
(58, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 8),
(5, 5, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'dial100news'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"191f93baeee637ff870b522ff35aef287ef7f6f6b608fce42da7e0fc6366b271\";a:4:{s:10:\"expiration\";i:1568390447;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567180847;}s:64:\"b88baa6e734558ca9e7e6f927e6f5dc4dd636f1c0d3a072ec291de292fe59f7a\";a:4:{s:10:\"expiration\";i:1568391379;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567181779;}s:64:\"afac69d0648ef1bb81d4f9774e80ed2e0967074939efaf866dd849c7d02e5d00\";a:4:{s:10:\"expiration\";i:1567491593;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567318793;}s:64:\"a9183c27bc7c36c01d2ce7a19b148cb3ebcbed51dd7aae900c69d0f3347c7563\";a:4:{s:10:\"expiration\";i:1567586123;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1567413323;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1567167595');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'dial100news', '$P$BVsRVjaR.BsfsHFDu67.UzuQbit0pq.', 'dial100news', 'sukarat@eservicesnepal.com', '', '2019-08-30 09:33:07', '', 0, 'dial100news');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
